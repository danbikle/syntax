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
# I should put it in a NumPy Array.

# I should initialize the Array.
pdb.set_trace()
number_of_rows    = len(df3)
number_of_columns = len(['pctlag1','pctlag2','pctlag4','pctlag8','pred'])

# I should declare some integers to help me navigate the Array:
pctlag1_i = 0
pctlag2_i = 1
pctlag4_i = 2
pctlag8_i = 3
pred_i    = 4

# Done
