{ pkgs, ... }:

{
    enable = true;

    settings = {
        colors = import ./colors.nix {};
         
        font = {
            size = 12.0;
        };

        shell = {
            program = "${pkgs.zsh}/bin/zsh";
        };
    };
}
