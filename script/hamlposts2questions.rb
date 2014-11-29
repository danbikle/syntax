# ~/x611/script/hamlposts2questions.rb

# This script should loop through 
# ~/x611/app/views/posts/
# and look for a question in each HAML file.

# If I find a question,
# I should make note of the HAML file name.
# Then I should make note of the question.
# Then, in /tmp/, I should make a 2nd HAML file with the question in it.
# The question will be a link to the 1st HAML file.

# Next, I should look for a 3rd HAML file in 
# ~/x611/app/views/questions/
# which has the same name as the 2nd HAML file in /tmp/.

# If I find this 3rd file, I should cat the 2nd file at the end.
# If this 3rd file does not exist, 
# I should copy the 2nd file into 
# ~/x611/app/views/questions/
# and now this 3rd file should exist.

