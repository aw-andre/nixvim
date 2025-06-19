{ pkgs, ... }: {
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    performance = {
      byteCompileLua = {
        enable = true;
        configs = true;
        initLua = true;
        nvimRuntime = true;
        plugins = true;
      };
      combinePlugins = {
        enable = true;
        standalonePlugins = [ "copilot.lua" "blink.cmp" ];
      };
    };
    extraPlugins = [
      (pkgs.vimUtils.buildVimPlugin {
        name = "cobol.vim";
        src = pkgs.fetchFromGitHub {
          owner = "Jorenar";
          repo = "COBOL.vim";
          rev = "47cb2460f3cb902a5e9d2b1a0fa36a3c075660af";
          hash = "sha256-nhB0F2G7sDNDwKcMDcgL7v3o5z2NJXIpNZqHGmA24oE=";
        };
      })
    ];
    luaLoader.enable = true;
    colorschemes.vscode.enable = true;
    highlightOverride.Folded = {
      fg = "#D4D4D4";
      bg = "#1F1F1F";
    };
    clipboard = {
      providers.wl-copy.enable = true; # Wayland
      register = "unnamedplus";
    };
    globals = {
      mapleader = " ";
      maplocalleader = " ";
      have_nerd_font = true;
    };
    imports = [ ./keymaps.nix ./options.nix ./autocmd.nix ./plugins ./ft ];
  };
}
