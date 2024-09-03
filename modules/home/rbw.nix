{ lib, config, ... }: {

  options.rbw = {
    enable = lib.mkEnableOption "enable rbw module";
    email = lib.mkOption {
      description = ''
        rbw email
      '';
    };
  };

  config = lib.mkIf config.rbw.enable {
    programs.rbw.settings.enable = true;
    programs.rbw.settings.email = config.rbw.email;
  };

}
