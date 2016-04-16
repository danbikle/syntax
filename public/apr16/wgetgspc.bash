#!/bin/bash

# wgetgspc.bash

# This script should get prices from yahoo.
cd /tmp

TKRH='%5EGSPC'
TKR='GSPC'
rm -f ${TKR}.csv

wget --output-document=${TKR}.csv http://ichart.finance.yahoo.com/table.csv?s=${TKRH}
echo 'tkr,cdate,cp'                                                      > ${TKR}2.csv
grep -v Date ${TKR}.csv|awk -F, -v tkr=$TKR '{print tkr "," $1 "," $5}' >> ${TKR}2.csv

TKR='SPY'
rm -f ${TKR}.csv

wget --output-document=${TKR}.csv http://ichart.finance.yahoo.com/table.csv?s=${TKR}
echo 'tkr,cdate,cp'                                                      > ${TKR}2.csv
grep -v Date ${TKR}.csv|awk -F, -v tkr=$TKR '{print tkr "," $1 "," $5}' >> ${TKR}2.csv

cat GSPC2.csv SPY2.csv|grep -v cdate > tkrdates.csv

exit
