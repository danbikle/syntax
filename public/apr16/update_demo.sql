--
-- update_demo.sql
--

-- This script is a demo of the verb update and the noun rows
-- Demo:
-- psql -a -P pager=no -f update_demo.sql

-- I should see what I have before I update:
select tkr,cdate,cp from dropme;

-- select tkr,cdate,round(cp,2) from dropme;

update dropme set cp = round(cp,2);

select tkr,cdate,cp from dropme;


