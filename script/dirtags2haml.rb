# ~/x611/script/dirtags2haml.rb

# I use this script to copy filenames from 
# app/views/tags into app/views/posts/tags.haml

require 'tempfile'

tfh = Tempfile.new('tmp.haml')
tagdir = "#{Rails.root}/app/views/tags"
adir = Dir["#{tagdir}/_*.haml"]
adir.each{ |fn|
  p fn
  acont = fn.sub(/\/.*tags\/_/,'').sub(/.haml$/,'')
  hrefp = "/tags/#{acont}"
  tfh.puts "%a(href='#{hrefp}') #{acont}"
}

tfh.close
