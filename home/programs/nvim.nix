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
        lsp.enable = true;
      };

      globals = {
        rustfmt_command = "rustfmt --config imports_granularity=Module,group_imports=StdExternalCrate,imports_layout=HorizontalVertical";
        rustfmt_autosave = 1;
      };

      keymaps = [
        {
          key = "<leader>lge";
          mode = "n";
          silent = true;
          action = ":RustLsp expandMacro<CR>";
        }
      ];

      comments.comment-nvim.enable = true;

      utility.surround.enable = true;
    };
  };
}
