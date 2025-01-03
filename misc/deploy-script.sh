\#! /bin/bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519_jenkins
ssh -vT git@github.com

cd emp-frontend
git reset --hard
git pull origin main

docker build -t khanster/emp-frontend:latest .
docker push khanster/emp-frontend:latest

# docker builder  prune -f
# docker compose stop -t 1 emp-frontend
# docker compose rm -f emp-frontend
# docker compose up -d --no-deps --build emp-frontend