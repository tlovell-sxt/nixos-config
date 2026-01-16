{
  imports = [
    ./bash.nix
    ./git.nix
    ./nvim.nix
  ];

  programs.ripgrep.enable = true;

  programs.gh.enable = true;
}
