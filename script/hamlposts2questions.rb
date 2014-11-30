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

# Next, I should look for a 3rd HAML file in 
# ~/x611/app/views/questions/
# which has the same name as the 2nd HAML file in /tmp/.

# If I find this 3rd file, I should cat the 2nd file at the end.
# If this 3rd file does not exist, 
# I should copy the 2nd file into 
# ~/x611/app/views/questions/
# and now this 3rd file should exist.

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
        byebug
        rpath = fn.sub(/.haml$/,'')
        # I should make a note of the anchor content:
        acont = line.sub(/\.q2/,'')
        # Then, in /tmp/, I should make a 2nd HAML file with the question in it.
        # The question should be inside an anchor pointing to the post.
        # The name of this 2nd HAML file should be built from the question.
        fn2 = "how#{acont[0,79].gsub(/ /,'_').gsub(/\?/,'').gsub(/\n/,'')}.haml"
        tfile = Tempfile.new(fn2)
        tfile.puts("href='#{rpath}'")
        tfile.puts(acont)
        tfile.close
        FileUtils.mv(tfile.path, "/tmp/#{fn2}")
      end

    } # afile.each_line
  end

} # adir.each



