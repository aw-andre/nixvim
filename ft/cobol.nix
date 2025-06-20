{ pkgs, ... }: {
  plugins.lsp.servers.cobol_ls.enable = true;
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
}
