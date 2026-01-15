{ config, pkgs, ... }:
{
  home.username = "nixos";
  home.homeDirectory = "/home/nixos";

  programs.bash = {
    enable = true;
    bashrcExtra = ''
      set -o vi
	export EDITOR=nvim
    '';
  };

  programs.git = let me = import ./me.nix; in
  {
    enable = true;
    settings.user.name = me.gitUserName;
    settings.user.email = me.gitUserEmail;
  };

  programs.ripgrep.enable = true;

  programs.gh.enable = true;

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "25.05";
}
