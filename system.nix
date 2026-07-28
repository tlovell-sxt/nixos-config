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

  virtualisation.docker.enable = true;
  users.users.nixos.extraGroups = ["docker"];

  nixpkgs.config.allowUnfree = true;

  # Needed for compiling blitzar :(
  programs.nix-ld.enable = true;

  time.timeZone = "America/Denver";

  system.stateVersion = "25.11";
}
