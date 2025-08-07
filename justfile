shell:
    nix --experimental-features 'nix-command flakes' develop

code:
    nix --experimental-features 'nix-command flakes' develop --command sh -c 'code .'