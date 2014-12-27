#!/bin/bash

# ~/x611/script/wget_syntax.bash

set -x
mkdir -p /tmp/wget_syntax/
cd       /tmp/wget_syntax/

wget www.syntax611.com
wget www.syntax611.com/blog
wget www.syntax611.com/contact
wget www.syntax611.com/posts
wget www.syntax611.com/questions
wget www.syntax611.com/tags

mkdir -p /tmp/wget_syntax_us/
cd       /tmp/wget_syntax_us/

wget www.syntax.us
wget www.syntax.us/blog
wget www.syntax.us/contact
wget www.syntax.us/posts
wget www.syntax.us/questions
wget www.syntax.us/tags

exit
