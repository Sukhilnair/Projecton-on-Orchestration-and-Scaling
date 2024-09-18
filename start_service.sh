#!/bin/bash
process=$1
if [ "$process" = "helloService" ]; then  
    echo "Starting hello Service"
    cd backend/helloService
    npm install
    node index.js
elif [ "$process" = "profileService" ]; then
    echo "Starting profile Service"
    cd backend/profileService
    npm install
    node index.js
elif [ "$process" = "frontend" ]; then
    echo "Starting frontend"
    cd frontend
    npm install
    npm start
else
    echo "The argument you passed is wrong, Exiting"
fi