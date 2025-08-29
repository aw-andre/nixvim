{ pkgs, ... }: {
  # plugins.lualine = {
  #   enable = true;
  #   settings.options.theme = "gruvbox_dark";
  # };

  globals = { tpipeline_statusline = "%!tpipeline#stl#line()"; };
  extraPlugins = with pkgs.vimPlugins; [ vim-tpipeline ];
}
