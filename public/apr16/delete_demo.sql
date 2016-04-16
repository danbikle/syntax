--
-- delete_demo.sql
--

-- This script is a demo of the verb delete and the nouns table and rows
-- Demo:
-- psql -a -P pager=no -f delete_demo.sql

-- To implement the delete idea on rows, I use the 'delete' SQL command:
delete from dropme where cp > 2130.00;

-- To implement the delete idea on a table, I use the 'drop' SQL command:
drop table dropme;


