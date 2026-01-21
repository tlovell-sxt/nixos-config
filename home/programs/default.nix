{
  imports = [
    ./bash.nix
    ./git.nix
    ./nvim.nix
    ./direnv.nix
  ];

  programs.ripgrep.enable = true;

  programs.gh.enable = true;

  programs.k9s.enable = true;

  programs.password-store.enable = true;
}
