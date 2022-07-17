/*
 were keyword to filter result
 */

select first_name, LAST_NAME, SALARY from EMPLOYEES where FIRST_NAME='David';

select first_name, LAST_NAME, SALARY from EMPLOYEES
where FIRST_NAME='David' and LAST_NAME='Lee';

select first_name, LAST_NAME, SALARY from EMPLOYEES
where SALARY>5000 and SALARY<=7000 and DEPARTMENT_ID=80;

select first_name, LAST_NAME, SALARY from EMPLOYEES
where SALARY between 6100 and 7000 and DEPARTMENT_ID=80;

select * from EMPLOYEES where
JOB_ID='IT_PROG' or JOB_ID='SA_REP';

select * from EMPLOYEES where JOB_ID IN('IT_PROG', 'SA_REP', 'FI_MGR');
select * from EMPLOYEES where JOB_ID not IN('SA_REP', 'FI_MGR');

select * from LOCATIONS where CITY in('Roma', 'Tokyo');

select * from EMPLOYEES where DEPARTMENT_ID is null;
select * from EMPLOYEES where DEPARTMENT_ID is not null;


