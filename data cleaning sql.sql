create database hr_analysis;
###---To use the database you have now created
use hr_analysis;
##-- Load all the data from employee table
select * from employee;

alter table employee
modify column birthdate date;

alter table employee
change column ï»¿id emp_id varchar(20)null;
# --show all data types in your table column
describe employee;
# -- disables the security feature
set sql_safe_updates = 0;

update employee set birthdate = case
when birthdate like '%/%' then date_format(str_to_date(birthdate, '%m/%d/%Y'), '%Y-%m-%d')
when birthdate like '%-%' then date_format(str_to_date(birthdate, '%m-%d-%Y'), '%Y-%m-%d')
else null
end;

select date from employee;

select termdate from employee;

alter table employee
rename column birthdate to date;

update employee
set termdate = date(str_to_date(termdate, '%Y-%m-%d %H:%i:%s UTC'))
where termdate is not null and termdate != '';

alter table employee
modify column termdate date;

update employee
set termdate = date(str_to_date(termdate, '%Y-%m-%d'))
where termdate is null and termdate = '';