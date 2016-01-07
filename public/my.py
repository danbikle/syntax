# cp_o5dmvg_avg.py

# This script should demo how to create a list of observations of cp over 5day mvg avg.

import pdb

# Here is some data:
cp0_a = [
['2015-12-31',2043.94]
,['2015-12-30',2063.36]
,['2015-12-29',2078.36]
,['2015-12-28',2056.50]
,['2015-12-24',2060.98]
,['2015-12-23',2064.29]
,['2015-12-22',2038.96]
,['2015-12-21',2021.15]
,['2015-12-18',2005.55]
,['2015-12-17',2041.89]
,['2015-12-16',2073.07]
,['2015-12-15',2043.41]
,['2015-12-14',2021.93]
,['2015-12-11',2012.36]
,['2015-12-10',2052.22]
,['2015-12-09',2047.61]
,['2015-12-08',2063.59]
,['2015-12-07',2077.07]
,['2015-12-04',2091.68]
,['2015-12-03',2049.62]
,['2015-12-02',2079.51]
,['2015-12-01',2102.62]
]


# I should reverse the order of the data so it ascends by date:
d_cp_a = [row for row in reversed(cp0_a)]

# I should get the column of prices:
cp_a = [row[1] for row in d_cp_a]

# I should collect a moving avg:
mvgavg5 = []
for rn in range(1,len(d_cp_a)):
  rn0 = rn-5
  if rn0 < 0:
    rn0 = 0
  pdb.set_trace()
  mvgavg5.append(sum(cp_a[rn0:rn])/len(cp_a[rn0:rn]))

len(mvgavg5)

'done'
