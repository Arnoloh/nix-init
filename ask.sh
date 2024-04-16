#/bin/sh

read -r -p "Do you want install your config?[Y/n] " response
  response=${response,,} # tolower
  if [[ $response =~ ^(yes|y| ) ]] || [[ -z $response ]]; then
	  sh ~/afs/nix-init/start.sh
  else
	exit 0
  fi
