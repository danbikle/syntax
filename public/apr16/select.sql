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
