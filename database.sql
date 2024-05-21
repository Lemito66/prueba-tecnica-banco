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
