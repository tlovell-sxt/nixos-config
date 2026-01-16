{
  imports = [
    ./programs
  ];

  home.username = "nixos";
  home.homeDirectory = "/home/nixos";

  home.sessionVariables.EDITOR = "nvim";

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "25.05";
}
