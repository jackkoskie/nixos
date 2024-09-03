{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    neovim
    clang-tools
    alacritty
    discord
    davinci-resolve
  ];

  # Davinci Resolve Intel Support
  hardware.opengl = {
    enable = true;
    driSupport32Bit = true;
    extraPackages = with pkgs; [
      intel-compute-runtime
      rocmPackages.clr.icd
    ];
  };
}
