{pkgs, ...}: {
  home.packages = with pkgs; [
    (callPackage ./rancher-cli.nix {})
    kubectl
    unixtools.xxd
    tree
    (azure-cli.withExtensions [azure-cli-extensions.resource-graph])
    kubelogin
  ];
}
