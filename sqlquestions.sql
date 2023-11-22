-- Questions
use hr_analysis;

select * from employee;
-- 1. what is the race /ethnicity of employees in the company
select race,
       count(*)  as count
from employee
where age >= 18 and termdate = ''
group by race
order by count desc;

-- 2. What is the gender breakdown of employees in the company
  select gender,
         count(*) as count
  from employee
  where age >= 18 and termdate = ''
  group by gender
  order by count desc;
-- 3. what is the age distribution of employees in the company
select
min(age) as youngest,
max(age) as oldest
from employee
where age >= 18 and termdate = '';

select 
case 
when age >= 18 and age <= 24 then '18 - 24'
when age >= 25 and age <= 34 then '25 - 34'
when age >= 35 and age <= 44 then '35 - 44'
when age >= 45 and age <= 54 then '45 - 54'
when age >= 55 and age <= 64 then '55 - 64'
else '65+'
end as age_group, gender,
count(*) as count
from employee
where age >= 18 and termdate = ''
group by age_group, gender
order by age_group;
-- 4. how many employees work at headquarters vs remote location
select location,
       count(*) as count
from employee
where age >= 18 and termdate = ''
group by location;

-- 5. What is the distribution of jobs across the company

select * from employee;

select department,
       count(*) as count
from employee
where age >= 18 and termdate = ''
group by department
order by department;

-- departments by gender

select department,
       gender,
       count(*) as count
from employee
where age >= 18 and termdate = ''
group by department, gender
order by department;
-- 6. which department has highest turnover
-- 7 what is distribution of employees across locations by city and state
select * from employee;

select location_city,
       location_state,
       count(*) as count
from employee
where age >= 18 and termdate = ''
group by location_city, location_state
order by count desc;
-- 8. how has the company employee count changed over time based on hire and term dates
-- 9. what is the tenure distribution for each department