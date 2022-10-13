{ config
, options
, lib
, pkgs
, ...
}:
with lib;
with lib.my; {
  options.modules.hardware.bluetooth = {
    enable = mkBoolOpt false;
  };

  config = mkIf config.modules.hardware.bluetooth.enable {
    user.packages = with pkgs; [ blueman ];

    hardware.bluetooth = {
      enable = true;
      package = pkgs.bluez;
      powerOnBoot = false;
      hsphfpd.enable = true;
      disabledPlugins = [ "sap" ];
      settings = {
        # Xbox X Controller Settings:
        General = {
          Class = "0x000100";
          FastConnectable = true;
          JustWorksRepairing = "always";
          Privacy = "device";
        };
      };
    };

    services.pipewire.media-session.config.bluez-monitor.rules = [
      {
        # Matches all cards
        matches = [{ "device.name" = "~bluez_card.*"; }];
        actions = {
          "update-props" = {
            "bluez5.reconnect-profiles" = [ "hfp_hf" "hsp_hs" "a2dp_sink" ];
            # mSBC is not expected to work on all headset + adapter combinations.
            "bluez5.msbc-support" = true;
          };
        };
      }
      {
        matches = [
          # Matches all sources
          {
            "node.name" = "~bluez_input.*";
          }
          # Matches all outputs
          { "node.name" = "~bluez_output.*"; }
        ];
        actions = { "node.pause-on-idle" = false; };
      }
    ];
  };
}
