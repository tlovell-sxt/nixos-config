{
  imports = [
    ./bash.nix
    ./git.nix
    ./nvf.nix
  ];

  programs.ripgrep.enable = true;

  programs.gh.enable = true;
}
