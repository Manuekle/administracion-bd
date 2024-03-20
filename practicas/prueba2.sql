-- en el usuario admin parcial
alter session set "_oracle_script"=true;
create user juan identified by juan123;
create user andres identified by andres123;
grant create session to juan;
grant create session to andres;
grant connect, resource to juan;
grant unlimited tablespace to juan;
--

-- en el usuario juan
create table datos (
    texto varchar2(255),
    numero integer
);

insert into datos values ('hola', 1);

select * from datos;

grant select on datos to andres;
--

-- en el usuario andres
select * from juan.datos;
--

-- en el usuario juan
update juan.datos set texto = 'chau' where numero = 1;
select * from juan.datos;
grant update (numero) on datos to andres;
--

-- en el usuario andres
update juan.datos set numero = 35 where numero = 1;
select * from juan.datos;
--