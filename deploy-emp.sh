#!/bin/bash



cd emp-backend
sh ./backend-deploy.sh
cd ..

cd emp-frontend
sh ./frontend-deploy.sh
cd ..

cd mysql
sh ./mysql-deploy.sh
cd ..
