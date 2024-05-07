declare
	v_codigopedido pedidos.codigopedido%type := &codigo;
	v_pedido       pedidos%rowtype;
begin
	select *
	  into v_pedido
	  from pedidos
	 where codigopedido = v_codigopedido;

	dbms_output.put_line('La fecha del pedido es '
	                     || v_pedido.fechapedido
	                     || ', la fecha esperada es '
	                     || v_pedido.fechaesperada
	                     || ', la fecha de entrega es '
	                     || v_pedido.fechaentrega
	                     || ' y el estado es '
	                     || v_pedido.estado
	                     || ' y comentarios son '
	                     || v_pedido.comentarios);
end;

-- cree una tabla libros que contenga al menos tres libros con las columnas, titulo, autor y precio
-- Path: practica_3corte.sql
create table libros (
	codigolibro number(5) primary key,
	titulo      varchar2(50),
	autor       varchar2(50),
	precio      number(10,2)
);

insert into libros values (
	1,
	'El principito',
	'Antoine de Saint-Exupéry',
	400
);
insert into libros values (
	2,
	'El arte de la guerra',
	'Sun Tzu',
	500
);
insert into libros values (
	3,
	'El señor de los anillos',
	'J.R.R. Tolkien',
	600
);

select *
  from libros;

create or replace function f_costo (
	valor number
) return varchar is
	costo varchar(20);
begin
	costo := '';
	if valor <= 500 then
		costo := 'Económico';
	else
		costo := 'Costoso';
	end if;
	return costo;
end;

select titulo,
       autor,
       precio,
       f_costo(precio) as costo
  from libros;

set serveroutput on;
create or replace function pagos_cliente (
	v_codigocliente clientes.codigocliente%type
) return number as
	v_sumapagos pagos.cantidad%type := 0;
begin
	select sum(cantidad)
	  into v_sumapagos
	  from pagos
	 where codigocliente = v_codigocliente;
	return v_sumapagos;
end;

declare
	v_codigocliente clientes.codigocliente%type := &codigo;
	v_sumapagos     pagos.cantidad%type;
begin
	v_sumapagos := pagos_cliente(v_codigocliente);
	dbms_output.put_line('La suma de pagos del cliente '
	                     || v_codigocliente
	                     || ' es '
	                     || v_sumapagos);
end;