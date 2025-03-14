{
  viAlias = true;
  vimAlias = true;
  performance.combinePlugins = {
    enable = true;
    standalonePlugins = [
      "copilot.lua"
    ];
  };
  colorschemes.vscode.enable = true;
  globals = {
    mapleader = " ";
    maplocalleader = " ";
    have_nerd_font = true;
  };
  imports = [
    ./keymaps.nix
    ./options.nix
    ./autocmd.nix
    ./plugins
    ./ft
  ];
}
