#!/bin/bash

# ~/sites/x611/script/postem.bash

# I should run this script after I write a new post.
# It enhances the post and generates some links.
# Then it deploys to heroku.

set -x
cd ~/sites/x611/
script/runem.bash
git add .
git commit -am mo
git pull heroku master
git pull bit    master
git commit -am mo
git push heroku master
git push bit    master

cd ~/sites/staxus/
git pull
git commit -am mo
git pull heroku master
git commit -am mo
git push heroku master
