{
  plugins.copilot-chat = {
    enable = true;
    settings.model = "gpt-3.5-turbo";
  };
  keymaps = [{
    mode = "n";
    key = "<leader>c";
    action.__raw = "require('CopilotChat').toggle";
    options.desc = "Toggle Copilot [C]hat";
  }];
}
