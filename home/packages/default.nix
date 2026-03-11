{pkgs, ...}: {
  home.packages = with pkgs; [
    kubectl
    unixtools.xxd
    tree
    (azure-cli.withExtensions [azure-cli-extensions.resource-graph])
    kubelogin
  ];
}
