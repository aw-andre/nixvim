{
  plugins = {
    lsp.servers = {
      html.enable = true;
      htmx.enable = true;
      jsonls.enable = true;
      ts_ls.enable = true;
    };
    none-ls.sources.formatting.prettier = {
      enable = true;
      disableTsServerFormatter = true;
    };
  };
}
