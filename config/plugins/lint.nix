{ pkgs, lib, ... }:
{
  plugins.lint = {
    enable = true;
    lintersByFt = {
      bash = [ "shellcheck" ];
      lua = [ "luacheck" ];
      nix = [ "statix" ];
    };
  };
  extraPackages = with pkgs; [
    shellcheck
    luajitPackages.luacheck
    statix
  ];
}
