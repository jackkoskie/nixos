{ lib, config, ... }: {

  options.git = {
    enable = lib.mkEnableOption "enable git module";
    userName = lib.mkOption {
      description = ''
        git username
      '';
    };
    userEmail = lib.mkOption {
      description = ''
        git email
      '';
    };
  };

  config = lib.mkIf config.git.enable {
    programs.git.enable = true;
    programs.git.userName = config.git.userName;
    programs.git.userEmail = config.git.userEmail;
  };

}
