{pkgs, ...}: {
  services = {
    gpg-agent = {
      enable = true;
      enableBashIntegration = true;

      pinentry.package = pkgs.pinentry-curses;
    };
  };

  home.packages = [pkgs.gnupg];

  programs.gpg.enable = true;
}
