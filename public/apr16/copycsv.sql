--
-- copycsv.sql
--

-- This script should copy CSV data into tkrdates table.
-- I should run wgetgspc.bash before I run this script so that I will have CSV data.

-- Demo:
-- psql -f copycsv.sql

drop   table tkrdates;
create table tkrdates
(tkr   varchar
,cdate date
,cp    numeric
)
;

COPY tkrdates
(
tkr
,cdate
,cp
) FROM '/tmp/tkrdates.csv' WITH csv
;
