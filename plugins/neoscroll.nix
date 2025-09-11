{
  plugins.neoscroll = {
    enable = true;
    luaConfig.pre = "require('neoscroll').setup({ duration_multiplier = 0.2 })";
    settings = {
      easing_function = "sine";
      hide_cursor = false;
      mappings =
        [ "<C-u>" "<C-d>" "<C-b>" "<C-f>" "<C-y>" "<C-e>" "zt" "zz" "zb" ];
      respect_scrolloff = false;
      stop_eof = true;
    };
  };
  extraConfigLuaPost = ''
    if vim.g.neovide then
      require('neoscroll').setup({
        mappings = {}
      })
    end
  '';
}
