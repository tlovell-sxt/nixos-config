{
  imports = [
    ./programs
    ./packages
    ./gpg.nix
  ];

  home.username = "nixos";
  home.homeDirectory = "/home/nixos";

  home.sessionVariables = {
    EDITOR = "nvim";
    WINDOWS_USERNAME = (import ../me.nix).windowsUserName;
  };

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "25.11";
}
