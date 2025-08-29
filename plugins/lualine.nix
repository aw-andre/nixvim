{ pkgs, ... }: {
  # plugins.lualine = {
  #   enable = true;
  #   settings.options.theme = "gruvbox_dark";
  # };

  extraPlugins = with pkgs.vimPlugins; [ vim-tpipeline ];
}
