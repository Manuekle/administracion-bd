select *
  from jobs
 order by job_id;

-- describe la tabla jobs
describe jobs;

-- muestra todos los campos y registros de jobs
select *
  from jobs;

select job_id
  from jobs;

-- muestra 2 columnas de jobs
select job_id,
       min_salary
  from jobs;

select job_id as trabajo,
       min_salary as salario_minimo
  from jobs;

select job_id as "Trabajo",
       min_salary as salario_minimo
  from jobs;

select job_id as "Trabajo",
       min_salary as "Salario minimo"
  from jobs;

-- expresiones aritmeticas
select job_id,
       min_salary,
       min_salary * 12 as "Salario anual"
  from jobs;

describe employees;

select last_name,
       salary,
       12 * salary + 100,
       12 * ( salary + 100 )
  from employees;

-- concatenacion: ||
describe employees;
select first_name || last_name as "Name",
       department_id
  from employees;
select first_name
       || ' '
       || last_name as "Name",
       department_id
  from employees;

-- literal
select first_name
       || ' '
       || 'gana'
       || ' '
       || salary as "Salario por empleado"
  from employees;

-- distinct
select department_id
  from employees;

select distinct department_id
  from employees;

select distinct department_id,
                job_id
  from employees;

-- sentencia where
select department_name
  from departments
 where department_id = 90;

desc job_history;

select *
  from job_history;

select *
  from job_history
 where job_id = 'AC_ACCOUNT';

select *
  from countries
 where region_id = 4;

desc regions;

select region_name
  from regions
 where region_id = 4;

select first_name
       || ' '
       || last_name as "Name",
       commission_pct
  from employees
 where commission_pct >= 0.35;

select first_name
       || ' '
       || last_name as "Name",
       department_id
  from employees
 where department_id in ( 10,20,50 );

select employee_id,
       email,
       department_id
  from employees
 where department_id <> 80;

select employee_id,
       salary
  from employees
 where salary between 10500 and 11000;

-- like
select employee_id,
       manager_id
  from employees
 where first_name like 'K%';

select first_name,
       employee_id,
       manager_id
  from employees
 where first_name like 'K%';

select last_name,
       job_id
  from employees
 where job_id like '%_T';

select last_name,
       job_id
  from employees
 where job_id like 'AD_%';

-- and
select employee_id,
       last_name,
       job_id
  from employees
 where salary >= 10000
   and job_id like '%MAN%';

-- or
select employee_id,
       last_name,
       job_id
  from employees
 where salary >= 10000
    or job_id like '%MAN%';

-- not
select employee_id,
       last_name,
       job_id
  from employees
 where salary >= 10000
    or job_id not like '%MAN%';

select last_name,
       job_id
  from employees
 where job_id not in ( 'PR_REP','PU_CLERK','PU_MAN' );

-- order by
select last_name,
       job_id,
       department_id,
       hire_date
  from employees
 order by hire_date desc;

select employee_id,
       last_name,
       salary * 12 anualsalario
  from employees
 order by anualsalario;

-- variables de sustitucion
select employee_id,
       last_name,
       salary,
       department_id
  from employees;

select employee_id,
       last_name,
       salary,
       department_id
  from employees
 where employee_id = &employee_num;

select employee_id,
       last_name,
       job_id,
       &column_name
  from employees
 order by &order_column;

select employee_id,
       &&column_name
  from employees
 where salary > &amount;

undefine column_name;

-- dual
select *
  from dual;

select 3 * 4
  from dual;

select 'Hola Mundo'
  from dual;

select 'Esta es una cadena'
       || ' '
       || 'de verdad'
  from dual;

select sysdate
  from dual;

select employee_id,
       last_name,
       department_id
  from employees
 where lower(last_name) = 'higgins';

-- por defecto
select 'El codigo de puesto del empleado '
       || last_name
       || ' es '
       || job_id as "Employee details"
  from employees;

select lower(
	'El codigo de puesto del empleado '
)
       || upper(last_name)
       || ' es '
       || initcap(job_id) as "Employee details"
  from employees;

select concat(
	'Primera cadena*','Segunda cadena'
)
  from dual;
select substr(
	'Retorna esto!',9,5
)
  from dual;
select length(email)
  from employees employees
 where employee_id = 205;
select instr(
	'Posicion letra K!!!','K'
)
  from dual;
select lpad(
	first_name,10,'$'
)
  from employees
 where employee_id = 205;
select rpad(
	first_name,10,'@'
)
  from employees
 where employee_id = 205;
select replace(
	'Conito Arnito','nito','mando'
)
  from dual;
select trim(leading '0' from '0012300') as function_trim1
  from dual;
select trim(trailing '0' from '0012300') as function_trim2
  from dual;
select trim(both '0' from '0012300') as function_trim3
  from dual;

-- todo
select concat(
	'Primera_cadena*','Segunda_cadena'
) as funcion_concat,
       substr(
	       'Retorna ESTO!',9,5
       ) as funcion_substr,
       length(email) as funcion_length,
       instr(
	       'Posición letra K!!!','K'
       ) as funcion_instr,
       lpad(
	       first_name,10,'$'
       ) as funcion_lpad,
       rpad(
	       salary,10,'@'
       ) as funcion_rpad,
       replace(
	       'Conito Arnito','nito','mando'
       ) as funcion_replace,
       trim(leading '0' from '0012300') as funcion_trim1,
       trim(trailing 0 from '0012300') as funcion_trim2,
       trim(both 0 from 0012300) as funcion_trim3
  from employees
 where employee_id = 205;

-- matematicas

select round(
	45.923,2
) as round1,
       round(
	       45.923,0
       ) as round2,
       round(
	       45.923,- 1
       ) as round3
  from dual;

select trunc(
	45.923,2
) as trunc1,
       trunc(
	       45.923,0
       ) as trunc2,
       trunc(
	       45.923,- 1
       ) as trunc3
  from dual;

select last_name,
       salary,
       mod(
	       salary,5000
       )
  from employees
 where job_id = 'SA_REP';

select months_between(
	sysdate,'13/JUN/2019'
)
  from dual;
select add_months(
	'16/ABR/2019',4
)
  from dual;
select next_day(
	'11/MAY/2019',‘jue’
)
  from dual;
select last_day(
	'01/JUN/2019'
)
  from dual;
select extract(day from sysdate)
  from dual;
select extract(month from sysdate)
  from dual;
select extract(year from sysdate)
  from dual;
select last_name,
       ( sysdate - hire_date ) / 7 as "Semanas Trabajadas",
       sysdate + 3 "Fecha mas 3 Dias",
       sysdate - 3 "Fecha menos 3 Dias"
  from employees
 where department_id = 60;
select employee_id,
       first_name,
       last_name,
       hire_date,
       months_between(
	       sysdate,hire_date
       )
  from employees
 where months_between(
	sysdate,hire_date
) < 140;
select round(
	sysdate,'MONTH'
)
  from dual;
select trunc(
	sysdate,'YEAR'
)
  from dual;

select last_name,
       upper(
	       concat(
		       (substr(
			       last_name,1,3
		       )),(substr(
			       job_id,instr(
				       job_id,'_'
			       ),5
		       ))
	       )
       )
  from employees;


-- crear 2 tablas, estudiantes que contangas los campos id, nombre, apellido, edad, direccion, telefono
-- y otra tabla cursos que contenga los campos id, nombre, descripcion, duracion, costo
-- insertar 5 registros en cada tabla
-- y hacer los slects anteriores

create table estudiantes(
  id number,
  nombre varchar2(50),
  apellido varchar2(50),
  edad number,
  direccion varchar2(100),
  telefono varchar2(20)
);

create table cursos(
  id number,
  nombre varchar2(50),
  descripcion varchar2(100),
  duracion number,
  costo number
);

insert into estudiantes values(1,'Juan','Perez',20,'Calle 1','1234567');
insert into estudiantes values(2,'Maria','Lopez',25,'Calle 2','1234568');
insert into estudiantes values(3,'Pedro','Gomez',30,'Calle 3','1234569');
insert into estudiantes values(4,'Ana','Garcia',35,'Calle 4','1234570');
insert into estudiantes values(5,'Luis','Rodriguez',40,'Calle 5','1234571');

insert into cursos values(1,'Matematicas','Curso de matematicas',10,100);
insert into cursos values(2,'Fisica','Curso de fisica',20,200);
insert into cursos values(3,'Quimica','Curso de quimica',30,300);
insert into cursos values(4,'Biologia','Curso de biologia',40,400);
insert into cursos values(5,'Programacion','Curso de programacion',50,500);

select *
  from estudiantes;

select *
  from cursos;

select id,
       nombre,
       apellido,
       edad,
       direccion,
       telefono
  from estudiantes
  where edad > 30;

select id,
       nombre,
       apellido,
       edad,
       direccion,
       telefono
  from estudiantes
  where id = 3;