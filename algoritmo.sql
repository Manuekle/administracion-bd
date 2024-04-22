   SET SERVEROUTPUT ON;

-- sentenica if-elsif
declare
	v_a number(2) := 50;
	v_b number(2) := 70;
begin
	if v_a > v_b then
		dbms_output.put_line(v_a
		                     || ' es mayor que '
		                     || v_b);
	else
		dbms_output.put_line(v_b
		                     || ' es mayor que '
		                     || v_a);
	end if;
end;


-- Path: algoritmo.sql
declare
	v_num number(3) := 500;
begin
	if v_num = 10 then
		dbms_output.put_line('El valor del numero es 10');
	elsif v_num = 20 then
		dbms_output.put_line('El valor del numero es 20');
	elsif v_num = 30 then
		dbms_output.put_line('El valor del numero es 30');
	else
		dbms_output.put_line('El valor no fue encontrado');
	end if;
	dbms_output.put_line('El valor del numero es: ' || v_num);
end;

-- ejemplos de if-elsif
declare
	color varchar2(10) := 'verde';
begin
	if color = 'rojo' then
		dbms_output.put_line('El color es rojo');
	elsif color = 'verde' then
		dbms_output.put_line('El color es verde');
	elsif color = 'azul' then
		dbms_output.put_line('El color es azul');
	else
		dbms_output.put_line('El color no fue encontrado');
	end if;
end;

declare
	altura number(3) := 180;
begin
	if altura < 150 then
		dbms_output.put_line('Eres una persona de baja estatura');
	elsif
		altura >= 150
		and altura < 180
	then
		dbms_output.put_line('Eres una persona de estatura media');
	else
		dbms_output.put_line('Eres una persona de alta estatura');
	end if;
end;

declare
	taller   number(2) := 3;
	quiz     number(2) := 2;
	parcial  number(2) := 4;
	promedio number(2);
begin
	promedio := ( taller + quiz + parcial ) / 3;
	if promedio >= 5 then
		dbms_output.put_line('Aprobado');
	elsif
		promedio >= 3
		and promedio < 4
	then
		dbms_output.put_line('Aprobado con nota regular');
	else
		dbms_output.put_line('Desaprobado');
	end if;
	dbms_output.put_line('El promedio es: ' || promedio);
end;

select column_name,
       case
       when condition then
       result
       end as new_column
  from your_table;

-- ejemplos

select first_name,
       case
       when department_id = 10 then
       'Administration'
       when department_id = 20 then
       'Marketing'
       when department_id = 30 then
       'Purchasing'
       else
       'Others'
       end as department
  from employees;


select color,
       case
       when color = 'rojo'  then
       'El color es rojo'
       when color = 'verde' then
       'El color es verde'
       when color = 'azul'  then
       'El color es azul'
       else
       'El color no fue encontrado'
       end as mensaje
  from colores;

-- loop
declare
	v_contador number(2) := 1;
begin
	loop
		dbms_output.put_line('Iteracion: ' || v_contador);
		v_contador := v_contador + 1;
		exit when v_contador > 5;
	end loop;
end;

-- loop de colores
declare
	v_color varchar2(10) := 'rojo';
begin
	loop
		dbms_output.put_line('Color: ' || v_color);
		if v_color = 'rojo' then
			v_color := 'verde';
		elsif v_color = 'verde' then
			v_color := 'azul';
		elsif v_color = 'azul' then
			v_color := 'rojo';
		end if;
		exit when v_color = 'rojo';
	end loop;
end;

-- while loop
declare
	v_contador number(2) := 1;
begin
	while v_contador <= 5 loop
		dbms_output.put_line('Iteracion: ' || v_contador);
		v_contador := v_contador + 1;
	end loop;
end;

-- while loop de marcas
declare
	v_marca varchar2(10) := 'nike';
begin
	while v_marca != 'adidas' loop
		dbms_output.put_line('Marca: ' || v_marca);
		if v_marca = 'nike' then
			v_marca := 'puma';
		elsif v_marca = 'puma' then
			v_marca := 'adidas';
		end if;
	end loop;
end;

-- explica este codigo
declare
    -- inicializa la variable numero con el valor 0
	numero    number := 0; 
    -- declara la variable resultado
	resultado number;
begin
    -- mientras numero sea menor a 10
	while numero < 10 loop 
        -- resultado es igual a numero multiplicado por 3
		resultado := numero * 3;
        -- imprime el resultado 
		dbms_output.put_line('3x'
		                     || numero
		                     || ' = '
		                     || resultado); 
                             
        -- incrementa el valor de numero en 1
		numero    := numero + 1;
	end loop;
end;


-- loop numeros primos
declare
	v_numero   number(2) := 1;
	v_contador number(2);
	v_primo    number(2);
begin
	while v_numero <= 10 loop
		v_contador := 0;
		v_primo    := 0;
		while v_contador <= v_numero loop
			if mod(
			      v_numero,
			      v_contador
			   ) = 0 then
				v_primo := v_primo + 1;
			end if;
			v_contador := v_contador + 1;
		end loop;
		if v_primo = 2 then
			dbms_output.put_line(v_numero || ' es un numero primo');
		end if;
		v_numero   := v_numero + 1;
	end loop;
end;


-- parcial hasta aqui

-- esto no entra

-- vaiable bind 

