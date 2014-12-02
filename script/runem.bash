#!/bin/bash

# ~/x611/script/runem.bash

# I should run this script after I write a new post.
# It enhances the post and generates some links.

set -x
cd ~/x611/

bin/rails r script/dirposts2haml.rb
bin/rails r script/dirtags2haml.rb
bin/rails r script/hamlposts2questions.rb
bin/rails r script/hamlposts2tags.rb
