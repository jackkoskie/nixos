{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    neovim
    alacritty
    discord
  ];
}
