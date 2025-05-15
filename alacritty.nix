{ pkgs, ... }:

{
    enable = true;

    settings = {
        colors = import ./colors.nix {};
         
        font = {
            size = 12.0;
        };

        terminal.shell = {
            program = "${pkgs.zsh}/bin/zsh";
        };
    };
}
