#!/bin/bash

# ~/sites/x2611/script/postem.bash

# I should run this script after I write a new post.
# It enhances the post and generates some links.
# Then it deploys to heroku.


set -x
cd ~/sites/x2611/
script/runem.bash
git add .
git commit -am mo
git pull heroku master
git pull bit    master
git push heroku master
git push bit    master
exit
# I should remove above exit after I upgrade  ~/sites/staxus/
cd ~/sites/staxus/
git pull
git pull heroku master
git push heroku master
