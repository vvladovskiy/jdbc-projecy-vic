/*
 were keyword to filter result
 */

select first_name, LAST_NAME, SALARY from EMPLOYEES where FIRST_NAME='David';
select first_name, LAST_NAME, SALARY from EMPLOYEES where FIRST_NAME='David' and LAST_NAME='Lee';
select first_name, LAST_NAME, SALARY from EMPLOYEES where SALARY>5000 and SALARY<7000;
