select * from employees;
/*
 command+return
 */

 -- display all columns from department
select * from DEPARTMENTS;
select FIRST_NAME from EMPLOYEES;
select STREET_ADDRESS from LOCATIONS;
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES;
select COUNTRY_NAME, REGION_ID from COUNTRIES;
select JOB_ID, JOB_TITLE from JOBS;
select STREET_ADDRESS, POSTAL_CODE from LOCATIONS;

select * from JOBS where JOB_TITLE IN ('President','Sales Manager');

select * from DEPARTMENTS where MANAGER_ID is null;

select * from EMPLOYEES order by SALARY asc;
select * from EMPLOYEES order by SALARY desc ;

select * from EMPLOYEES order by 8 ; -- column #

select * from EMPLOYEES where EMPLOYEE_ID<120 order by FIRST_NAME desc ;

