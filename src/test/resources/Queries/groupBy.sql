-- how many employees working for each manager
select MANAGER_ID,count(*) from EMPLOYEES
where MANAGER_ID is not null
group by MANAGER_ID
having count(*)>5;



