#!/bin/bash
pg_dump -cC --inserts -U freecodecamp bikes > bikes.sql

yes | sudo apt-get install rsync
rsync -a --exclude={'.*','bikerental'} ./ ./bikerental

cd bikerental
git add .
git commit -m "$(date)"
git push -u origin main