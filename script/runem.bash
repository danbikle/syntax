#!/bin/bash

# ~/sites/x611/script/runem.bash

# I should run this script after I write a new post.
# It enhances the post and generates some links.

set -x
cd ~/sites/x611/
rm ~/sites/x611/app/views/posts/_tags.haml
rm ~/sites/x611/app/views/posts/_index.haml
rm ~/sites/x611/app/views/questions/_index.haml
rm ~/sites/x611/app/views/tags/_*.haml

bin/rails r script/hamlposts2questions.rb
bin/rails r script/hamlposts2tags.rb
bin/rails r script/dirposts2haml.rb
bin/rails r script/dirtags2haml.rb


