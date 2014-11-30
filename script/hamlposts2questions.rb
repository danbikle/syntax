# ~/x611/script/hamlposts2questions.rb

# This script should loop through 
# ~/x611/app/views/posts/
# and look for a question in each HAML file.

# If I find a question,
# I should make note of the HAML file name.
# Then I should make note of the question.
# Then, in /tmp/, I should make a 2nd HAML file with the question in it.
# The question will be a link to the 1st HAML file.
# The name of this 2nd HAML file should be built from the question.

# Next, I should append the question-link to
# ~/x611/app/views/questions/index.haml


require 'tempfile'

adir = Dir['/home/dan/x611/app/views/posts/*.haml']
adir.each{ |fn|
  # I should look for a question in this file
  File.open(fn, 'r') do |afile|
    afile.each_line{ |line| 
      # A question should look like this:
      # .q2 In Rails how do I implement a wildcard route?
      if line =~ /^.q2 /
        # If I find a question, I should make a note of the post:
        rpath = fn.sub(/^.*\/posts\//,'/posts/').sub(/.haml$/,'')
        # I should make a note of the anchor content:
        acont = line.sub(/\.q2/,'')
        # Then, in /tmp/, I should make a 2nd HAML file with the question in it.
        # The question should be inside an anchor pointing to the post.
        # The name of this 2nd HAML file should be built from the question.
        fn2 = "#{Rails.root}/app/views/questions/index.haml"
        fh = File.open(fn2, 'a')
        fh.puts("%a(href='#{rpath}') #{acont}")
        fh.close
      end

    } # afile.each_line
  end

} # adir.each
