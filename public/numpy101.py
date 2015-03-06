# ~ann/numpy101.py

# This script should help you learn enough Python to interact with some of the scikit-learn API.
# If you see a question in this script,
# your homework is to type it into Google and study the search results.
# Some of the questions ask you about the data so Google cannot help you with that.

# Ref:
# http://www.meetup.com/Palo-Alto-Data-Science-Association/events/220901594/
# http://continuum.io/downloads#py34

# Demo:
# cd ~ann
# vi numpy101.py
# ~ann/anaconda3/bin/python numpy101.py

import pdb

# I should set 2 vars which help me get dates, prices of GSPC from Yahoo:
tkr ='GSPC'
tkrh='%5E'+tkr

import subprocess
subprocess.call(["/bin/rm", "-f", tkr+'.csv'])

# I should call call a shell command like this:
# /usr/bin/wget --output-document=${TKR}.csv  http://ichart.finance.yahoo.com/table.csv?s=${TKRH}
cmd  = "/usr/bin/wget"
arg1 = "--output-document="+tkr+".csv"
arg2 = "http://ichart.finance.yahoo.com/table.csv?s="+tkrh

# If I comment this out:
subprocess.call([cmd, arg1, arg2])
# also remem to comment out the above rm command.

subprocess.call(["/usr/bin/head", tkr+'.csv'])

import pandas as pd

df1 = pd.read_csv(tkr+'.csv')

# I only want two columns:
df2 = df1[['Date','Close']]
df2.columns = ['cdate','cp']
# I should check my data:
print(df2.head())
print(df2.tail())

import numpy as np
# I should use convention,
# variable_a is a NumPy Array:
cp_a = df2[['cp']].values

# I should convert cp_a into a List
cp = [elm[0] for elm in cp_a]

# I should create neighbor lists which are shifted in time.
# Visualize each list as a column in a spread-sheet.
# The Yahoo CSV has newer prices at the top.

# Key Idea, build a neighbor from cp, push neighbor up or down.
# If I push a neighbor-list down,
# I push future prices next to current prices.

# If I push a neighbor-list up,
# I push past prices next to current prices.

# I should build each row so I have this:
# cdate, cp, leadprice, 1daylagprice, 2daylagprice, 4daylagprice, 8daylagprice

# I should start pushing.
# I push neighbor down:
cplead = [cp[0]] + cp
# I push neighbors up:
cplag1 = cp +     [cp[-1]]
cplag2 = cp +     [cp[-1]] + [cp[-1]]
cplag4 = cp +     [cp[-1]] + [cp[-1]] + [cp[-1]] + [cp[-1]]
cplag8 = cplag4 + [cp[-1]] + [cp[-1]] + [cp[-1]] + [cp[-1]]
# I should snip off ends so new columns as long as cp:
cplead = cplead[:-1]
cplag1 = cplag1[1:]
cplag2 = cplag2[2:]
cplag4 = cplag4[4:]
cplag8 = cplag8[8:]
# I should check new columns as long as cp:
len(cp) == len(cplead)
len(cp) == len(cplag4)

# NumPy allows me to do arithmetic on its Arrays.
# I should convert my lists to Arrays:
cp_a     = np.array(cp)
cplead_a = np.array(cplead)
cplag1_a = np.array(cplag1)
cplag2_a = np.array(cplag2)
cplag4_a = np.array(cplag4)
cplag8_a = np.array(cplag8)

# I should calculate pct-deltas:
pctlead_a = 100.0 * (cplead_a - cp_a)/cp_a
pctlag1_a = 100.0 * (cp_a - cplag1_a)/cplag1_a
pctlag2_a = 100.0 * (cp_a - cplag2_a)/cplag2_a
pctlag4_a = 100.0 * (cp_a - cplag4_a)/cplag4_a
pctlag8_a = 100.0 * (cp_a - cplag8_a)/cplag8_a

# I am done doing calculations.
# I should put my 5 new columns into my DataFrame.

df2['pctlead'] = pctlead_a
df2['pctlag1'] = pctlag1_a
df2['pctlag2'] = pctlag2_a
df2['pctlag4'] = pctlag4_a
df2['pctlag8'] = pctlag8_a
pdb.set_trace()
# I should save my work into a CSV file:
df2.to_csv('numpy101.csv', float_format='%4.3f', index=False)

# Next step: numpy102.py
# Done
