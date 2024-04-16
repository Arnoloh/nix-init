{ pkgs, ... }:

{
    enable = true;

    settings = {
        colors = import ./colors.nix {};
         
        font = {
            size = 12.0;
            family = "FiraCode";
            style = "Regular";
        };

        shell = {
            program = "${pkgs.zsh}/bin/zsh";
        };
    };
}
