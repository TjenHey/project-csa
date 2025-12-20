#!/bin/bash
cd $HOME
if [ ! -d "project-csa" ]; then
    git clone https://github.com/TjenHey/project-csa.git
    cd project-csa
else
    cd project-csa
    git pull
    docker compose down
fi
docker compose up --build -d