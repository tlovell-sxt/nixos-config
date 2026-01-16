{inputs, ...}: {
  imports = [inputs.nvf.homeManagerModules.default];

  programs.nvf = {
    enable = true;
    settings.vim = {
      theme = {
        enable = true;
        name = "dracula";
      };

      spellcheck.enable = true;

      lsp = {
        enable = true;
        formatOnSave = true;
      };

      languages.nix = {
        enable = true;
        format.enable = true;
        lsp.enable = true;
      };

      languages.rust = {
        enable = true;
        format.enable = true;
        lsp.enable = true;
      };
    };
  };
}
