--
-- cr_postgres_table.sql
--

-- This is a simple demo of create table in Postgres

-- Demo:
-- psql -f cr_postgres_table.sql

create table if not exists tkrdates
(tkr   varchar
,cdate date
,cp    numeric
)
;

-- An alternative syntax
drop   table tkrdates;
create table tkrdates
(tkr   varchar
,cdate date
,cp    numeric
)
;
