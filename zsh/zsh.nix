{...}:

let
  unstable = import <nixos-unstable> {config = {allowUnfree = true; }; };
in
  {
    enable = true;
    oh-my-zsh = import ~/afs/nix-init/zsh/oh-my-zsh.nix {};
  }
