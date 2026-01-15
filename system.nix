{ config, pkgs, inputs, ... }:
{
  wsl.enable = true;
  wsl.defaultUser = "nixos";

  environment.systemPackages = with pkgs; [
    git
    neovim
    xclip
  ];

  system.stateVersion = "25.11";
}
