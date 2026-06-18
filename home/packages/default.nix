{pkgs, ...}: {
  home.packages = with pkgs; [
    kubectl
    unixtools.xxd
    tree
    (azure-cli.withExtensions (with azure-cli-extensions; [resource-graph ssh]))
    kubelogin
    jfrog-cli
  ];
}
