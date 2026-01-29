{
  programs.bash = {
    enable = true;
    bashrcExtra = ''
      set -o vi
    '';
    shellAliases = {
      windows-terminal-config = "cd /mnt/c/Users/$WINDOWS_USERNAME/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState";
      rkb = "rancher kubectl";
    };
  };
}
