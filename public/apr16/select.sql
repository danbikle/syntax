--
-- select.sql
--

-- This script is a demo of some select statements.
-- Demo:
-- psql -a -P pager=no -f select.sql

select count(tkr)      from tkrdates;
select count(tkr)      from tkrdates where tkr = 'GSPC';
select tkr, count(tkr) from tkrdates group by tkr;

select tkr
,count(tkr)
,min(cdate)
,max(cdate)
from tkrdates group by tkr
;

select
a.cdate
,a.cp cp_spy
,b.cp cp_gspc
from tkrdates a, tkrdates b
where a.cdate = b.cdate
and   a.tkr   = 'SPY'
and   b.tkr   = 'GSPC'
and   a.cdate between '2015-12-01' and '2015-12-31'
order by a.cdate
;
