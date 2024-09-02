{ lib, config, ... }: {

  options.gh = {
    enable = lib.mkEnableOption "enable gh module";
    editor = lib.mkOption {
      default = "nano";
      description = ''
        gh default editor
      '';
    };
  };

  config = lib.mkIf config.gh.enable {
    programs.gh.enable = true;
    programs.gh.settings.editor = config.gh.editor;
  };

}
