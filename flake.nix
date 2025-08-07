{
  description = "Dev environment for Vue.js + FastAPI project";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    flake-utils.url = "github:numtide/flake-utils";
    poetry.url = "github:nix-community/poetry2nix";
  };

  outputs = { self, nixpkgs, flake-utils, poetry }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };

        pythonEnv = pkgs.python311.withPackages (ps: with ps; [
          fastapi
          uvicorn
          httpx
          black
          isort
          # add more Python packages as needed
        ]);
      in {
        devShell = pkgs.mkShell {
          buildInputs = [
            pythonEnv
            pkgs.nodejs_20
            pkgs.yarn
            pkgs.git
            pkgs.poetry
          ];

          shellHook = ''
            echo "✨ Welcome to the Vue.js + FastAPI dev shell"
            echo "🔧 Python: $(python --version)"
            echo "🌐 Node: $(node --version)"
          '';
        };
      });
}
