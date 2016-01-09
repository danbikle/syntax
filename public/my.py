# genf_demo_talib.py

import numpy  as np
import talib
import pdb

# Here is some data:
d_cp0_a = [
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
d_cp_a = [row for row in reversed(d_cp0_a)]

# I should get the column of prices:
cp   = [row[1] for row in d_cp_a]
cp_a = np.array(cp)
# I should calculate Bollinger Bands

upper_a, middle_a, lower_a = talib.BBANDS(cp_a,timeperiod=5, nbdevup=2, nbdevdn=2, matype=0)

# Now that I have 3 Bollinger Bands,
# I combine them with current price to get 3 features:

upper_o_cp  = upper_a  / cp_a
middle_o_cp = middle_a / cp_a
cp_o_lower  = cp_a / lower_a

# I should now have 3 more features:
# upper_o_cp
# middle_o_cp
# cp_o_lower

'done'
