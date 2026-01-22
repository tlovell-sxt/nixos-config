{
  programs.git = let
    me = import ../../me.nix;
  in {
    enable = true;
    settings.user.name = me.gitUserName;
    settings.user.email = me.gitUserEmail;
  };

  programs.delta = {
    enable = true;
    enableGitIntegration = true;
  };
}
