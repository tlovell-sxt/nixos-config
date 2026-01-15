{
  imports = [
    ./bash.nix
    ./git.nix
  ];

  programs.ripgrep.enable = true;

  programs.gh.enable = true;
}
