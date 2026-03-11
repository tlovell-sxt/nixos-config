{
  programs.bash = {
    enable = true;
    bashrcExtra = ''
      set -o vi
    '';
    shellAliases = {
      windows-terminal-config = "cd /mnt/c/Users/$WINDOWS_USERNAME/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState";
      glaze-wm-config = "cd /mnt/c/Users/$WINDOWS_USERNAME/.glzr/glazewm";
      rkb = "rancher kubectl";

      # shouldn't need to be run often, just when clusters are added/removed
      azure-load-kubeconfigs = ''
        az graph query -q "
            Resources
            | where type == 'microsoft.containerservice/managedclusters'
            | project name, resourceGroup, subscriptionId
            " --output json | jq -r '.data[] | "az aks get-credentials --overwrite-existing --name \(.name) -g \(.resourceGroup) --subscription \(.subscriptionId)"' | bash && kubelogin convert-kubeconfig -l azurecli
      '';
    };
  };
}
