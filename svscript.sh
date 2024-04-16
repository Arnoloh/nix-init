echo "Creating / updating needed channel and preparing nvim config"
feh --bg-fill ~/afs/nix-init/Loading.png

nix-channel --add https://nixos.org/channels/nixos-22.05 nixos-stable
nix-channel --add https://nixos.org/channels/nixos-unstable nixos-unstable
nix-channel --update

nix-env -iA nixos-stable.home-manager


git clone git@github.com:Arnoloh/nvim-config.git ~/.config/nvim

cp ~/afs/nix-init/home.nix ~/.config/nixpkgs/

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

cp ~/afs/nix-init/.zshrc ~/

home-manager switch

feh --bg-fill ~/afs/nix-init/bg.png
