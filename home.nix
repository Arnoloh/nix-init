{ config, pkgs, ... }:
{
    fonts.fontconfig.enable = true;
    home = {
        username = "arnaud.corcione";
        homeDirectory = "/home/arnaud.corcione";
        packages = with pkgs; [bat lolcat neofetch alacritty rofi zsh neovim tldr i3lock-color 
            (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })];
        stateVersion = "23.11";
    };
    programs = {
        home-manager.enable = true;
#    command-not-found.enable = true;
        alacritty = import ./alacritty.nix { inherit pkgs; };
    };
  }
