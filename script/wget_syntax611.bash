#!/bin/bash

# ~/x611/script/wget_syntax.bash

set -x
mkdir -p /tmp/wget_syntax/
cd       /tmp/wget_syntax/
wget www.syntax611.com
wget www.syntax611.com/blog
wget www.syntax611.com/posts
wget www.syntax611.com/contact

exit
