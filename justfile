shell:
    nix --experimental-features 'nix-command flakes' develop

code:
    nix --experimental-features 'nix-command flakes' develop --command sh -c 'code .'



install:
    cd server && poetry install
    cd webapp && yarn install
    # Remember to activate the venv in ./server/.venv

start-server:
    cd server && \
    poetry env activate && \
    poetry run uvicorn server.main:app --host 0.0.0.0 --port 8000 --reload


start-webapp:
    cd webapp && yarn dev

dev:
    just start-server & \
    just start-webapp