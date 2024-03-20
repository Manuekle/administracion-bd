select * from jobs order by job_id;

-- describe la tabla jobs
describe jobs;

-- muestra todos los campos y registros de jobs
select * from jobs;

select job_id from jobs;

-- muestra 2 columnas de jobs
select job_id, min_salary from jobs;

select job_id as trabajo, min_salary as salario_minimo from jobs;

select job_id as "Trabajo", min_salary as salario_minimo from jobs;

select job_id as "Trabajo", min_salary as "Salario minimo" from jobs where min_salary > 5000;