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

-- combinaciones externas

-- full outer join
-- devuelve todas las filas de ambas tablas,
-- si hay una fila que no tiene correspondencia en la otra tabla,
-- se rellena con null
select *
  from estudiantes e
  full outer join cursos c
    on e.id = c.id;

-- left outer join
-- devuelve todas las filas de la tabla de la izquierda
-- y las filas de la tabla de la derecha que tienen correspondencia
-- si no hay correspondencia, se rellena con null
select *
  from estudiantes e
  left outer join cursos c
    on e.id = c.id;

-- right outer join
-- devuelve todas las filas de la tabla de la derecha
-- y las filas de la tabla de la izquierda que tienen correspondencia
-- si no hay correspondencia, se rellena con null
select *
  from estudiantes e
  right outer join cursos c
    on e.id = c.id;

-- full outer join
-- devuelve todas las filas de ambas tablas,
-- si hay una fila que no tiene correspondencia en la otra tabla,
-- se rellena con null
select *
  from estudiantes e
  full outer join cursos c
    on e.id = c.id;

-- opreadores set

-- union, union all, intersect, minus

-- set union
-- devuelve todas las filas de ambas tablas
-- no se repiten los registros
select nombre
  from estudiantes
union
select nombre
  from cursos;

-- set union all
-- devuelve todas las filas de ambas tablas
-- se repiten los registros
select nombre
  from estudiantes
union all
select nombre
  from cursos;


-- set intersect
-- devuelve los registros que se encuentran en ambas tablas
select id
  from estudiantes
intersect
select id
  from cursos;

-- set minus
-- devuelve los registros que se encuentran en la tabla de la izquierda
-- pero no en la tabla de la derecha
select nombre
  from estudiantes
minus
select nombre
  from cursos;

-- subconsultas
select *
  from estudiantes
  where id in (select id from cursos);

-- subconsultas de una sola fila
select *
  from estudiantes
  where id = (select id from cursos where id = 1);

-- subconsultas de varias filas
select *
  from estudiantes
  where id in (select id from cursos where id in (1,2,3));


