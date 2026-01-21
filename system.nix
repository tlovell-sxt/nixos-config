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

  system.stateVersion = "25.11";
}
