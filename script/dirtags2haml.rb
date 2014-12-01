# ~/x611/script/dirtags2haml.rb

# I use this script to copy filenames from 
# app/views/tags into app/views/posts/tags.haml

require 'tempfile'

tagdir   = "#{Rails.root}/app/views/tags"
adir = Dir["#{tagdir}/_*.haml"]
adir.each{ |fn|
  p fn
}
