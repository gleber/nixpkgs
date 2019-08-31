{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.deluge;
  cfg_web = config.services.deluge.web;

  openFilesLimit = 4096;
  listenPortsDefault = [ 6881 6889 ];

  listToRange = x: { from = elemAt x 0; to = elemAt x 1; };

  configDir = "${cfg.dataDir}/.config/deluge";
  configFile = pkgs.writeText "core.conf" (builtins.toJSON cfg.config);
  declarativeLockFile = "${configDir}/.declarative";

  mkDelugeDir = dir: ''
    mkdir -p '${dir}'
    chmod 0770 '${dir}' || true
    chown ${cfg.user}:${cfg.group} '${dir}' || true
  '';

  preStart = if cfg.declarative then ''
    mkdir -p '${configDir}'
    chmod 0770 '${configDir}'
    chown ${cfg.user}:${cfg.group} '${configDir}'

    ${optionalString (cfg.config ? "download_location") (mkDelugeDir cfg.config.download_location)}
    ${optionalString (cfg.config ? "torrentfiles_location") (mkDelugeDir cfg.config.torrentfiles_location)}
    ${optionalString (cfg.config ? "move_completed_path") (mkDelugeDir cfg.config.move_completed_path)}

    if [ -e ${declarativeLockFile} ]; then
      # Was declarative before, no need to back up anything
      ln -sf ${configFile} ${configDir}/core.conf
      ln -sf ${cfg.authFile} ${configDir}/auth
    else
      # Declarative for the first time, backup stateful files
      ln -sb --suffix=.stateful ${configFile} ${configDir}/core.conf
      ln -sb --suffix=.stateful ${cfg.authFile} ${configDir}/auth
      echo "Autogenerated file that signifies that this server configuration is managed declaratively by NixOS" \
        > ${declarativeLockFile}
    fi
  '' else ''
    if [ -e ${declarativeLockFile} ]; then
      rm ${declarativeLockFile}
    fi
  '';
in {
  options = {
    services = {
      deluge = {
        enable = mkEnableOption "Deluge daemon";

        openFilesLimit = mkOption {
          default = openFilesLimit;
          description = ''
            Number of files to allow deluged to open.
          '';
        };

        config = mkOption {
          type = types.attrs;
          default = {};
          example = literalExample ''
            {
              download_location = "/srv/torrents/";
              max_upload_speed = "1000.0";
              share_ratio_limit = "2.0";
              allow_remote = true;
              daemon_port = 58846;
              listen_ports = [ ${toString listenPortsDefault} ];
            }
          '';
          description = ''
            Deluge core configuration for the core.conf file. Only has an effect
            when <option>services.deluge.declarative</option> is set to
            <literal>true</literal>. String values must be quoted, integer and
            boolean values must not. See
            <link xlink:href="https://git.deluge-torrent.org/deluge/tree/deluge/core/preferencesmanager.py#n41"/>
            for the availaible options.
          '';
        };

        declarative = mkOption {
          type = types.bool;
          default = false;
          description = ''
            Whether to use a declarative deluge configuration.
            Only if set to <literal>true</literal>, the options
            <option>services.deluge.config</option>,
            <option>services.deluge.openFirewall</option> and
            <option>services.deluge.authFile</option> will be
            applied.
          '';
        };

        openFirewall = mkOption {
          default = false;
          type = types.bool;
          description = ''
            Whether to open the firewall for the ports in
            <option>services.deluge.config.listen_ports</option>. It only takes effet if
            <option>services.deluge.declarative</option> is set to
            <literal>true</literal>.

            It does NOT apply to the daemon port nor the web UI port. To access those
            ports secuerly check the documentation
            <link xlink:href="https://dev.deluge-torrent.org/wiki/UserGuide/ThinClient#CreateSSHTunnel"/>
            or use a VPN or configure certificates for deluge.
          '';
        };

        dataDir = mkOption {
          type = types.path;
          default = "/var/lib/deluge";
          description = ''
            The directory where deluge will create files.
          '';
        };

        authFile = mkOption {
          type = types.path;
          example = "/run/keys/deluge-auth";
          description = ''
            The file managing the authentication for deluge, the format of this
            file is straightforward, each line contains a
            username:password:level tuple in plaintext. It only has an effect
            when <option>services.deluge.declarative</option> is set to
            <literal>true</literal>.
            See <link xlink:href="https://dev.deluge-torrent.org/wiki/UserGuide/Authentication"/> for
            more informations.
          '';
        };

        user = mkOption {
          type = types.str;
          default = "deluge";
          description = ''
            User account under which deluge runs.
          '';
        };

        group = mkOption {
          type = types.str;
          default = "deluge";
          description = ''
            Group under which deluge runs.
          '';
        };

        extraPackages = mkOption {
          type = types.listOf types.package;
          default = [];
          description = ''
            Extra packages available at runtime to enable Deluge's plugins. For example,
            extraction utilities are required for the built-in "Extractor" plugin.
            This always contains unzip, gnutar, xz, p7zip and bzip2.
          '';
        };
      };

      deluge.web = {
        enable = mkEnableOption "Deluge Web daemon";

        port = mkOption {
          type = types.port;
          default = 8112;
          description = ''
            Deluge web UI port.
          '';
        };

        openFirewall = mkOption {
          type = types.bool;
          default = false;
          description = ''
            Open ports in the firewall for deluge web daemon
          '';
        };
      };
    };
  };

  config = mkIf cfg.enable {

    # Provide a default set of `extraPackages`.
    services.deluge.extraPackages = with pkgs; [ unzip gnutar xz p7zip bzip2 ];

    systemd.services.deluged = {
      after = [ "network.target" ];
      description = "Deluge BitTorrent Daemon";
      wantedBy = [ "multi-user.target" ];
      path = [ pkgs.deluge ] ++ cfg.extraPackages;
      serviceConfig = {
        ExecStart = ''
          ${pkgs.deluge}/bin/deluged \
            --do-not-daemonize \
            --config ${configDir}
        '';
        # To prevent "Quit & shutdown daemon" from working; we want systemd to
        # manage it!
        Restart = "on-success";
        User = cfg.user;
        Group = cfg.group;
        UMask = "0002";
        LimitNOFILE = cfg.openFilesLimit;
      };
      preStart = preStart;
    };

    systemd.services.delugeweb = mkIf cfg_web.enable {
      after = [ "network.target" "deluged.service"];
      requires = [ "deluged.service" ];
      description = "Deluge BitTorrent WebUI";
      wantedBy = [ "multi-user.target" ];
      path = [ pkgs.deluge ];
      serviceConfig = {
        ExecStart = ''
          ${pkgs.deluge}/bin/deluge-web \
            --config ${configDir} \
            --port ${toString cfg.web.port}
        '';
        User = cfg.user;
        Group = cfg.group;
      };
    };

    networking.firewall = mkMerge [
      (mkIf (cfg.declarative && cfg.openFirewall && !(cfg.config.random_port or true)) {
        allowedTCPPortRanges = singleton (listToRange (cfg.config.listen_ports or listenPortsDefault));
        allowedUDPPortRanges = singleton (listToRange (cfg.config.listen_ports or listenPortsDefault));
      })
      (mkIf (cfg.web.openFirewall) {
        allowedTCPPorts = [ cfg.web.port ];
      })
    ];

    environment.systemPackages = [ pkgs.deluge ];

    users.users = mkIf (cfg.user == "deluge") {
      deluge = {
        group = cfg.group;
        uid = config.ids.uids.deluge;
        home = cfg.dataDir;
        createHome = true;
        description = "Deluge Daemon user";
      };
    };

    users.groups = mkIf (cfg.group == "deluge") {
      deluge = {
        gid = config.ids.gids.deluge;
      };
    };
  };
}
