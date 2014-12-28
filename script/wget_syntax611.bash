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

mkdir -p /tmp/wget_bot4_us/
cd       /tmp/wget_bot4_us/

wget www.bot4.us
wget www.bot4.us/blog
wget www.bot4.us/contact
wget www.bot4.us/about
wget www.bot4.us/predictions
wget www.bot4.us/us_stk_past

mkdir -p /tmp/wget_syntax_us/
cd       /tmp/wget_syntax_us/

wget www.syntax.us
wget www.syntax.us/blog
wget www.syntax.us/contact
wget www.syntax.us/posts
wget www.syntax.us/questions
wget www.syntax.us/tags

mkdir -p /tmp/wget_bikle_com
cd       /tmp/wget_bikle_com

wget www.bikle.com
wget www.bikle.com/techtips
wget www.bikle.com/contact
wget www.bikle.com/hireme

mkdir -p /tmp/wget_spy611_com
cd       /tmp/wget_spy611_com

wget www.spy611.com
wget www.spy611.com/contact
wget www.spy611.com/blog
wget www.spy611.com/pred
wget www.spy611.com/btc

mkdir -p /tmp/wget_stockbeaver_com
cd       /tmp/wget_stockbeaver_com

wget www.stockbeaver.com
wget www.stockbeaver.com/hst
wget www.stockbeaver.com/blog

mkdir -p /tmp/wget_bvrz_co
cd       /tmp/wget_bvrz_co

wget www.bvrz.co
wget www.bvrz.co/osold
wget www.bvrz.co/obght

mkdir -p /tmp/wget_downbounce_com
cd       /tmp/wget_downbounce_com

wget www.downbounce.com
wget www.downbounce.com/contact
wget www.downbounce.com/blog
wget www.downbounce.com/current

mkdir -p /tmp/wget_wepitch_us
cd       /tmp/wget_wepitch_us

wget www.wepitch.us
wget https://wepitch.herokuapp.com/pitches
wget https://wepitch.herokuapp.com/blog

mkdir -p /tmp/wget_scrape4_us
cd       /tmp/wget_scrape4_us

wget www.scrape4.us
https://scrape4us.herokuapp.com/blog
https://scrape4us.herokuapp.com/adv
https://scrape4us.herokuapp.com/contact
https://scrape4us.herokuapp.com/users/signup

mkdir -p /tmp/wget_noko4_us
cd       /tmp/wget_noko4_us

wget www.noko4.us
wget https://noko4us.herokuapp.com/blog
wget https://noko4us.herokuapp.com/demos
wget https://noko4us.herokuapp.com/contact

wget https://www.noko4.us/blog
wget https://www.noko4.us/links
wget https://www.noko4.us/demos
wget https://www.noko4.us/contact


exit
