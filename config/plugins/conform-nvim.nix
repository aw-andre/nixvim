{ pkgs, lib, ... }:
{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      default_format_opts.quiet = true;
      formatters_by_ft = {
        bash = [ "shfmt" ];
        lua = [ "stylua" ];
        nix = [ "nixfmt" ];
        "_" = [ "trim_whitespace" ];
      };
      format_after_save = # Lua
        ''
          function(bufnr)
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
              return
            end

            return { lsp_fallback = true }
          end
        '';
    };
  };
  extraPackages = with pkgs; [
    shfmt
    stylua
    nixfmt-rfc-style
  ];
  keymaps = [
    {
      mode = "n";
      key = "=";
      action.__raw = "function() require('conform').format({ async = true, lsp_fallback = true }) end";
      options.desc = "Format buffer";
    }
  ];
}
