-- 1
alter session set "_oracle_script"=true;

-- crear usuario coordinador
create user coordinador identified by cordi123;

grant create session to coordinador;

grant create user to coordinador;
grant create table to coordinador;
grant create session to coordinador;

grant connect, resource to coordinador;
grant unlimited tablespace to coordinador;

revoke create table from coordinador;
revoke create user from coordinador;


-- a. desde coordinador
create user docenterrr identified by docente123;
grant create session to docente;
create user estudiante identified by estudiante123;
grant create session to estudiante;

-- b. desde coordinador
create table notas(
    texto varchar2(255),
    numero float
);

insert into notas values('Camilo', 4.1);
insert into notas values('Maria', 2.2);
insert into notas values('Yenny', 3.1);
insert into notas values('Juan', 3.4);

select * from notas;

update notas set numero = 3.9 where texto = 'Maria';

-- c. desde coordinador
grant select, insert, update on notas to docente;
revoke select, insert, update on coordinador.notas from docente;

-- d. desde docente
update notas set numero = 3.5 where texto = 'Maria';
select * from coordinador.notas;

-- e. desde coordinador
grant select on coordinador.notas to estudiante;
revoke select on coordinador.notas from estudiante;

-- f. desde estudiante
select * from coordinador.notas;

-- 3. 
-- a
alter session set "_oracle_script"=true;
create user nuevo identified by newuser;
-- solucion:
grant create session to nuevo;
