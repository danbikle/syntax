# ~ann/numpy102.py

# This script should help you learn enough Python to interact with some of the scikit-learn API.
# If you see a question in this script,
# your homework is to type it into Google and study the search results.
# Some of the questions ask you about the data so Google cannot help you with that.

# Ref:
# http://www.meetup.com/Palo-Alto-Data-Science-Association/events/220901594/
# http://continuum.io/downloads#py34

# Demo:
# cd ~ann
# vi numpy102.py
# ~ann/anaconda3/bin/python numpy102.py

import pdb
import pandas as pd
import numpy  as np

df3 = pd.read_csv('numpy101.csv')
# I should check my data:
print(df3.head())
print(df3.tail())

# I should get some training data from df3.
# I should put it in NumPy Arrays.

# I should initialize the x-Array.

number_of_rows    = len(df3)
number_of_columns = len(['pctlag1','pctlag2','pctlag4','pctlag8'])

# I should declare some integers to help me navigate the Arrays:
pctlead_i = 0
pctlag1_i = 0
pctlag2_i = 1
pctlag4_i = 2
pctlag8_i = 3

# I should create Array of correct size:
x_a = np.zeros((number_of_rows, number_of_columns))

# Homework:
# I should memorize this expression:
# nparray[a:b, c:d]
# Then, Translate above expression to English.
# These also:
# myarray[:b, c:d]
# myarray[a:, c:d]
# myarray[: , c:d]
# myarray[: ,  : ]
# Memorize: Rows on Left
# Memorize: Cols on Right
# Memorize: colon-comma-colon

# Pandas is OPPOSITE!
# Pandas: Cols on Left
# Pandas: Rows on Right
# Demo:
# pdb.set_trace()
# (Pdb) row_predicate = df3['cp'] > 2111.11
# (Pdb) df3[['cdate','cp']][row_predicate]
#         cdate       cp
# 4  2015-03-02  2117.39
# 7  2015-02-25  2113.86
# 8  2015-02-24  2115.48
# (Pdb) 
# Memorize: Does Pandas use colon-comma-colon?
# No!

# Back to NumPy...
# I should fill Array:
x_a[:,pctlag1_i] = [elm[0] for elm in df3[['pctlag1']].values]
x_a[:,pctlag2_i] = [elm[0] for elm in df3[['pctlag2']].values]
x_a[:,pctlag4_i] = [elm[0] for elm in df3[['pctlag4']].values]
x_a[:,pctlag8_i] = [elm[0] for elm in df3[['pctlag8']].values]
# I should have x-Array now

# I should initialize y-Array.
# I want two columns:
# response-variable (which for us is: pctlead)
# predictions (which should get filled later)
y_a = np.zeros((number_of_rows, 2))
y_a[:,pctlead_i] = [elm[0] for elm in df3[['pctlead']].values]

# For this demo, my Out-Of-Sample data is the most recent observation.
# Recent Market close data appears at Yahoo M-F, after 6pm-ish.
prediction_count = 1
train_idx_start  = prediction_count + 1
x_oos = x_a[prediction_count-1,:]

# To predict the single observation above,
# I want 10 years of training data:
yr10 = 10 * 252
x_train = x_a[train_idx_start:(train_idx_start + yr10),:]
y_train = y_a[train_idx_start:(train_idx_start + yr10),pctlead_i]
yr10 == len(x_train)
yr10 == len(y_train)

pdb.set_trace()
x_train[:4]
y_train[:4]

# Done
