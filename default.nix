{
  xdg = {
    desktopEntries.nvim = {
      name = "Neovim";
      exec = "kitty -e nvim %f";
      terminal = true;
      type = "Application";
      mimeType = [ "text/plain" ];
      categories = [ "Utility" "TextEditor" ];
    };
    mimeApps.enable = true;
    mimeApps.defaultApplications = {
      "text/plain" = "nvim.desktop";
      "text/x-shellscript" = "nvim.desktop";
      "text/markdown" = "nvim.desktop";
      "application/x-shellscript" = "nvim.desktop";
    };
  };
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
    luaLoader.enable = true;
    clipboard = {
      providers.wl-copy.enable = true; # Wayland
      register = "unnamedplus";
    };
    globals = {
      mapleader = " ";
      maplocalleader = " ";
      have_nerd_font = true;
    };
    extraConfigLuaPost = ''
      vim.ui.open = function(path)
        vim.fn.jobstart({ "kitty", "-e", "nvim", path }, { detach = true })
      end
    '';
    imports = [ ./keymaps.nix ./options.nix ./autocmd.nix ./plugins ./ft ];
  };
}
