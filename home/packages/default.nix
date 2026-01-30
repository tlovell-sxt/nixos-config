{pkgs, ...}: {
  home.packages = with pkgs; [
    (callPackage ./rancher-cli.nix {})
    kubectl
    unixtools.xxd
  ];
}
