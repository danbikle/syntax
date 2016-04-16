--
-- create_type2.sql
--

-- This script is a demo of the verb create and the noun table
-- Demo:
-- psql -a -P pager=no -f create_type2.sql


drop   table dropme;
create table dropme as
select tkr,cdate,cp from tkrdates where cp > 2121.00
;
