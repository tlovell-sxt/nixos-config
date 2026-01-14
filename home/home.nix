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

    programs.git = let me = import ../me.nix; in
    {
      enable = true;
      userName = me.gitUserName;
      userEmail = me.gitUserEmail;
    };

    programs.ripgrep.enable = true;

    programs.gh.enable = true;

    # The state version is required and should stay at the version you
    # originally installed.
    home.stateVersion = "25.05";
  };
}
