{ config, pkgs, lib, ... }:

let
  home-manager = builtins.fetchTarball https://github.com/nix-community/home-manager/archive/release-25.05.tar.gz;
in
{
  imports =
    [
      (import "${home-manager}/nixos")
    ];

  users.users.nixos.isNormalUser = true;
  home-manager.users.nixos = { pkgs, ... }: {
    programs.bash = {
      enable = true;
      bashrcExtra = ''
        set -o vi
      '';
    };

    programs.git = {
      enable = true;
      userName = "Trevor Lovell";
      userEmail = "trevor.lovell@makeinfinite.com";
    };

    programs.ripgrep.enable = true;

    programs.gh.enable = true;

    # The state version is required and should stay at the version you
    # originally installed.
    home.stateVersion = "25.05";
  };
}
