   SET SERVEROUTPUT ON;

-- SELECT INTO:
-- Este comando se utiliza para recuperar datos de una base de datos y almacenarlos en variables

create table colores (
	id     number,
	nombre varchar2(20)
);

insert into colores values (
	1,
	'rojo'
);
insert into colores values (
	2,
	'verde'
);
insert into colores values (
	3,
	'azul'
);

declare
	v_color colores.nombre%type;
begin
	select nombre
	  into v_color
	  from colores
	 where id = 1;
	dbms_output.put_line('Color: ' || v_color);
end;



-- CASE:
-- Se utiliza para realizar evaluaciones condicionales basadas en múltiples condiciones.

declare
	v_rating number := 3;
begin
	case v_rating
		when 1 then
			dbms_output.put_line('Poor');
		when 2 then
			dbms_output.put_line('Fair');
		when 3 then
			dbms_output.put_line('Good');
		else
			dbms_output.put_line('Excellent');
	end case;
end;

-- IF-ELSIF:
-- Este comando se utiliza para ejecutar bloques de código basados en condiciones específicas.

declare
	v_salary number := 5000;
begin
	if v_salary < 3000 then
		dbms_output.put_line('Low salary');
	elsif
		v_salary >= 3000
		and v_salary < 6000
	then
		dbms_output.put_line('Medium salary');
	else
		dbms_output.put_line('High salary');
	end if;
end;

-- Loops anidados:
-- Se utilizan para ejecutar un conjunto de instrucciones repetidamente.

declare
	i number := 1;
	j number := 1;
begin
	while i <= 3 loop
		j := 1;
		while j <= 3 loop
			dbms_output.put_line('i: '
			                     || i
			                     || ', j: '
			                     || j);
			j := j + 1;
		end loop;
		i := i + 1;
	end loop;
end;

-- Loop básico:
-- Es un bucle simple que repite un bloque de código hasta que se cumple una condición.

declare
	i number := 1;
begin
	loop
		exit when i > 5;
		dbms_output.put_line('Count: ' || i);
		i := i + 1;
	end loop;
end;

-- Loop FOR:
-- Se utiliza para ejecutar un conjunto de instrucciones un número específico de veces.

declare
	v_total number := 0;
begin
	for i in 1..5 loop
		v_total := v_total + i;
	end loop;
	dbms_output.put_line('Total: ' || v_total);
end;

-- Loop WHILE:
-- Repite un bloque de código mientras se cumple una condición específica.

declare
	i number := 1;
begin
	while i <= 5 loop
		dbms_output.put_line('Count: ' || i);
		i := i + 1;
	end loop;
end;

-- REVERSE:
-- Este comando se utiliza para invertir el orden de los elementos en una cadena o una lista.

declare
	v_str varchar2(20) := 'hello';
begin
	dbms_output.put_line('Original string: ' || v_str);
	dbms_output.put_line('Reversed string: ' || reverse(v_str));
end;

begin
	for indx in reverse 1..5 loop
		dbms_output.put_line(indx);
	end loop;
end;

-- GOTO:
-- Se utiliza para transferir el control del programa a una etiqueta específica dentro del mismo bloque o procedimiento.

declare
	v_num number := 5;
begin
	if v_num < 10 then
		goto low_number;
	end if;
	dbms_output.put_line('Number is greater than or equal to 10');
	<< low_number >> dbms_output.put_line('Number is less than 10');
end;

-- NULL:
-- Representa un valor nulo, es decir, la ausencia de un valor.

declare
	v_value varchar2(20);
begin
	if v_value is null then
		dbms_output.put_line('Value is NULL');
	else
		dbms_output.put_line('Value is not NULL');
	end if;
end;