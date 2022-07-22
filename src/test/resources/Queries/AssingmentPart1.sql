
-- SQL Assignements Practice Part 1

-- Select - Distinct - Where - Order By - Like - Group By - Having
-- 1. List all the employees first and last name with their salary in employees
-- table
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES;  -- 107

-- 2. How many employees have salary less than 5000?
select * from EMPLOYEES
where SALARY<5000; -- 49

-- 3. How many employees have salary between 6000 and 7000?
select * from EMPLOYEES
where SALARY between 6000 and 7000; --  13

-- 4. List all the different region_ids in countries table
select REGION_ID,count(*) from COUNTRIES
group by REGION_ID
order by REGION_ID;


-- 5. display the salary of the employee Grant Douglas (lastName: Grant,
-- firstName: Douglas)
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES where FIRST_NAME='Douglas' and LAST_NAME='Grant';

-- 6. display all department information from departments table
-- if the department name values are as below
-- IT , Public Relations , Sales , Executive
select * from DEPARTMENTS where DEPARTMENT_NAME=ANY ('IT','Public Relations' , 'Sales' , 'Executive');

-- 7. display the maximum salary in employees table
select max(SALARY) from EMPLOYEES;

-- 8. display the minimum salary in employees table
select min(SALARY), max(SALARY), avg(SALARY) from EMPLOYEES;

-- 9. display the average salary of the employees;
-- 10. count the total numbers of the departments in departs table
select count(*) from DEPARTMENTS;

select DEPARTMENT_NAME, count(*) from DEPARTMENTS
group by DEPARTMENT_NAME;

-- 11. sort the start_date in ascending order in job_history's table
select START_DATE from JOB_HISTORY
order by START_DATE asc;

-- 12. sort the start_date in descending order in job_history's table
select START_DATE from JOB_HISTORY
order by START_DATE desc ;

-- 13. display all records whose last name contains 2 lowercase 'a's
select LAST_NAME from EMPLOYEES
where LAST_NAME like '%a%a%'
group by LAST_NAME;


-- 14. display all the employees whose first name starts with 'A'
select FIRST_NAME,count(*) from EMPLOYEES
where FIRST_NAME like 'A%'
group by FIRST_NAME;

-- 15. display all the employees whose job_ID contains 'IT'
select FIRST_NAME, LAST_NAME,JOB_ID from EMPLOYEES
where JOB_ID like '%IT%'
group by FIRST_NAME, LAST_NAME,JOB_ID;

-- 16. display all  unique job_id that end with CLERK in employee table
select JOB_ID,count(*) from EMPLOYEES
where JOB_ID like '%CLERK'
group by JOB_ID;

-- 17.display all  employees first name starts with A and have exactly 4 characters Total
select FIRST_NAME from EMPLOYEES
where FIRST_NAME like 'A___';

-- 18. display all the employees whose department id in 50, 80, 100
select DEPARTMENT_ID, FIRST_NAME,LAST_NAME from EMPLOYEES
where DEPARTMENT_ID in ('50','80','100')
order by DEPARTMENT_ID asc;

-- 19. display all employees who does not work in any one of these department id 90, 60,  100, 130, 120
select * from EMPLOYEES;
--select DEPARTMENT_ID, FIRST_NAME,LAST_NAME from EMPLOYEES
select * from EMPLOYEES
where DEPARTMENT_ID not in ('90','60','100','130','120')
order by DEPARTMENT_ID asc;

-- 20. divide employees into groups by using thier job id
-- 1 display the maximum salaries in each groups
-- 2 display the minium salaries in each groups
-- 3 display the average salary of each group
-- 4 how many employees are there in each group that have minimum
-- salary of 5000 ?
-- 5 display the total budgests of each groups


-- 21. display all job_id and average salary who work as any of these jobs IT_PROG,
-- SA_REP, FI_ACCOUNT, AD_VP
-- 22.display max salary  for each department
-- 23. display total salary for each department except department_id 50, and where
-- total salary >30000