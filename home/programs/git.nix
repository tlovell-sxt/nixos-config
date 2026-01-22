{
  programs.git = let
    me = import ../../me.nix;
  in {
    enable = true;
    settings.user.name = me.gitUserName;
    settings.user.email = me.gitUserEmail;

    # direnv files, don't want to commit these
    ignores = [".envrc" ".direnv"];
  };

  # diffs that look more like github
  programs.delta = {
    enable = true;
    enableGitIntegration = true;
  };
}
