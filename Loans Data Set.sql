create database loans_dataset;

select *
from loans_data;

alter table loans_data
add column appdate date;

update loans_data
set appdate = str_to_date(applicationdate, "%d-%c-%Y");



