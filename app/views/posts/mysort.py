
import pandas as pd
import pdb
csv1 = pd.read_csv('/tmp/spydata.csv')
pdb.set_trace()
csv1.head()
csv2 = csv1.sort(['ydate'])
csv2.head()
