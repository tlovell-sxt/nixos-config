{
  imports = [
    ./bash.nix
    ./git.nix
    ./nvim.nix
    ./direnv.nix
    ./gh.nix
  ];

  programs.ripgrep.enable = true;

  programs.k9s.enable = true;

  programs.password-store.enable = true;

  programs.jq.enable = true;
}
