create table productos1 (
	producto_id     number,
	producto_name   varchar2(25),
	precio_producto integer,
	marca           varchar2(25)
);
create table productos2 (
	producto2_id     number,
	producto_name2   varchar2(25),
	precio_producto2 integer,
	marca2           varchar2(25)
);

insert into "SYSTEM"."PRODUCTOS2" (
	producto2_id,
	producto_name2,
	precio_producto2,
	marca2
) values (
	'1',
	'AROMATISANTE',
	'2000',
	'ARIEL'
);

insert into "SYSTEM"."PRODUCTOS2" (
	producto2_id,
	producto_name2,
	precio_producto2,
	marca2
) values (
	'2',
	'DETEGENTE',
	'1000',
	'BANISH'
);

insert into "SYSTEM"."PRODUCTOS2" (
	producto2_id,
	producto_name2,
	precio_producto2,
	marca2
) values (
	'3',
	'JABON',
	'2100',
	'TOP TERRA'
);

insert into "SYSTEM"."PRODUCTOS2" (
	producto2_id,
	producto_name2,
	precio_producto2,
	marca2
) values (
	'4',
	'JABON EN POLVO',
	'3000',
	'AROMAX DUO'
);

insert into "SYSTEM"."PRODUCTOS2" (
	producto2_id,
	producto_name2,
	precio_producto2,
	marca2
) values (
	'5',
	'JABON DE MANOS',
	'5000',
	'ARIEL'
);

select *
  from productos2;

select carro_name
  from parqueadero
  join parqueadero
using ( carro_name );

select e.carro_name,
       z.zapato_name
  from parqueadero e,
       zapateria z;

select *
  from productos
  join productos2
on ( producto_name = producto_name2 );



describe productos;
describe ZAPATERIA;
select *
  from zapateria;

create table zapateria (
	zapato_id     number,
	zapato_name   varchar2(25),
	precio_zapato integer,
	marca_zapatos varchar2(25),
	tallas        integer
);

select *
  from zapateria;

insert into "SYSTEM"."ZAPATERIA" (
	zapato_id,
	zapato_name,
	precio_zapato,
	marca_zapatos
) values (
	'1',
	'JORDAN RETRO 4',
	'180000',
	'JORDAN',
	'37-42'
);

insert into "SYSTEM"."ZAPATERIA" (
	zapato_id,
	zapato_name,
	precio_zapato,
	marca_zapatos
) values (
	'2',
	'FOR ONE',
	'160000',
	'NIKE',
	'35-42'
);

create table parqueadero (
	carro_id     number,
	carro_name   varchar2(25),
	placa_carro  integer,
	marca        varchar2(25),
	fechallegada varchar2(20)
);

select *
  from parqueadero
natural join productos;

describe parqueadero;
describe productos;

insert into "SYSTEM"."PARQUEADERO" (
	carro_id,
	carro_name,
	placa_carro,
	marca,
	fechallegada
) values (
	'1',
	'NISSAN FRONTIER ',
	'MKS 231',
	'NISSAN',
	'7/04/2024'
);

insert into "SYSTEM"."PARQUEADERO" (
	carro_id,
	carro_name,
	placa_carro,
	marca,
	fechallegada
) values (
	'2',
	'BMW 2024',
	'MKJ 0298',
	'BMW',
	'7/01/2024'
);

insert into "SYSTEM"."PARQUEADERO" (
	carro_id,
	carro_name,
	placa_carro,
	marca,
	fechallegada
) values (
	'3',
	'RX 100',
	'DMW 3512',
	'YAMAHA',
	'7/02/2024'
);


select producto2_id, producto_name2 from productos2;

select * from parqueadero cross join zapateria;