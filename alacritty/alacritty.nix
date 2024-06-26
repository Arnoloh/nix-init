{ pkgs, ... }:

{
  enable = true;

  settings = {
    window = {
      title = "Terminal";
      padding = {
        x = 16;
        y = 16;
      };

      position = {
        x = 900;
        y = 350;
      };
      dimensions = {
        lines = 40;
        columns = 125;
      };
      opacity = 0.8;
    };

    font = {
      size = 12.0;
      family = "FiraCode Nerd Font Mono";
      style = "Regular";
    };

    shell = {
      program = "${pkgs.zsh}/bin/zsh";
    };

    colors = {
      primary = {
        background = "0x000000";
        foreground = "0xEBEBEB";
      };
      cursor = {
        text   = "0x000000";
        cursor = "0x888888";
      };
      normal = {
        black   = "0x0D0D0D";
        red     = "0xFF301B";
        green   = "0xA0E521";
        yellow  = "0xFFC620";
        blue    = "0x1BA6FA";
        magenta = "0x8763B8";
        cyan    = "0x21DEEF";
        white   = "0xEBEBEB";
      };
      bright = {
        black   = "0x6D7070";
        red     = "0xFF4352";
        green   = "0xB8E466";
        yellow  = "0xFFD750";
        blue    = "0x1BA6FA";
        magenta = "0xA578EA";
        cyan    = "0x73FBF1";
        white   = "0xFEFEF8";
      };
    };
  };
}
