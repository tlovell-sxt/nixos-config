# This is a minimal configuration.nix for..
# - use in wsl
# - transitioning from configuration.nix to flake.nix immediately
#
# This file should never need to be changed.

{ config, lib, pkgs, ... }:

{
  wsl.enable = true;
  wsl.defaultUser = "nixos";

  environment.systemPackages = with pkgs; [
    git
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It's perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?
}
