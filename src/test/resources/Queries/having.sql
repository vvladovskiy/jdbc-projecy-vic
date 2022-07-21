select * from EMPLOYEES;

select JOB_ID,avg(SALARY),count(*) from EMPLOYEES
group by JOB_ID
having avg(SALARY)>5000;

