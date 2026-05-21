{pkgs, ...}: {
  wsl.enable = true;
  wsl.defaultUser = "nixos";

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  environment.systemPackages = with pkgs; [
    git
    neovim
    xclip
    wl-clipboard
  ];

  nixpkgs.config.allowUnfree = true;

  # Needed for compiling blitzar :(
  programs.nix-ld.enable = true;

  system.stateVersion = "25.11";
}
