--
-- list_rows.sql
--

-- This script is a demo of the verb list and the noun rows
-- Demo:
-- psql -a -P pager=no -f list_rows.sql

select tkr,cdate,cp from tkrdates where cp > 2121.00;
