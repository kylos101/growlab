#!/bin/bash

rm ./growlab-live/docs/preview.jpg -f
python3 app.py

export GIT_SSH_COMMAND="ssh -i `pwd`/.ssh/id_rsa"

cp ${HOME}/growlab/app/html/* ${HOME}/growlab/docs/

sudo pi

git add .

git commit -s -m "Update images at `date`"
git pull origin master
git push
