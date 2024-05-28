create database pruebaTecnica

use pruebaTecnica

create table clientes(
	id int primary key identity,
	name varchar(50),
	salary decimal(10,2)
)



-- añade una columna que contenga el salario anual 

alter table clientes
add annual_salary decimal(10,2) 


alter table clientes
drop column annual_salary


select * from clientes

delete from clientes

select salary, case when salary > 4500 then 'alto' 

-- añade una columna que contenga el salario anual
alter table clientes
add annual_salary as salary * 12

-- añade una columna que contenga el rango salarial (BAJO, MEDIO, ALTO)
alter table clientes
add salary_range 
as case 
	when salary * 12 between 0 and 10000 then 'BAJO'
	when salary * 12 between 10001 and 30000 then 'MEDIO'
	when salary * 12 > 30000 then 'ALTO'
end

-- Obtener la cantidad de clientes por rango salarial
select count(*) as cantidad, salary_range
from clientes
group by salary_range


-- Obtener el salario anual más alto
select top 1 annual_salary, id 
from clientes
group by  annual_salary, id
order by annual_salary desc
