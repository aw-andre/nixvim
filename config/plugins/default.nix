{
  imports = [
    ./luasnip.nix
    ./rainbow-delimiters.nix
    ./treesitter-context.nix
    ./nvim-surround.nix
    ./conform-nvim.nix
    ./neoscroll.nix
    ./dap.nix
    ./lint.nix
    ./lsp.nix
    ./telescope.nix
    ./nvim-ufo.nix
    ./lualine.nix
    ./blink-cmp.nix
  ];
  plugins = {
    copilot-lua.enable = true;
    copilot-chat.enable = true;
    web-devicons.enable = true;
    which-key.enable = true;
    comment.enable = true;
    treesitter.enable = true;
    markdown-preview.enable = true;
  };
}
