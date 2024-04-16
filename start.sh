#!/bin/sh
#
ilock()
{
    killall i3lock
    i3lock -i "$1"
}
read -r -p "Do you want install your config?[Y/n] " response
  response=${response,,} # tolower
  if [[ $response =~ ^(yes|y| ) ]] || [[ -z $response ]]; then
	  echo "Starting script"
  else
	exit 0
  fi
#ilock ~/afs/nix-init/lod-1.png

nix-channel --add https://github.com/nix-community/home-manager/archive/release-23.11.tar.gz home-manager
nix-channel --update

git clone git@github.com:Arnoloh/nvim-config.git ~/.config/nvim
export NIX_PATH=$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels${NIX_PATH:+:$NIX_PATH}

#ilock ~/afs/nix-init/lod-2.png
export PATH="$HOME/afs/nix-init/command:$PATH"
cp ~/afs/nix-init/home.nix ~/.config/home-manager/
nix-shell '<home-manager>' -A install
#ilock ~/afs/nix-init/lod-3.png


yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 

cp ~/afs/nix-init/mytheme.zsh-theme ~/.oh-my-zsh/themes/
cp ~/afs/nix-init/.zshrc ~/

#ilock ~/afs/nix-init/lod-4.png
nvim --headless "+Lazy! sync" +qa


feh --bg-fill ~/afs/nix-init/bg.png
#ilock ~/afs/nix-init/lock.png
cp ./.clang-format ~/
sh ~/afs/.confs/config/i3/dodo.sh
