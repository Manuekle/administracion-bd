declare
    v_boleta integer(1) := 2;
    v_combo_1 varchar2(10) := ('palomitas');
    v_combo_2 varchar2(10) := ('gaseosa');
    v_pelicula varchar2(10) := ('blade runner');
    v_factura varchar2 := ('#123456789');
    v_fecha date := ('2021-10-10');
    v_valor float := (100.000);
begin
    dbms_output.put_line('# de Boletas: ' || v_boleta);
    dbms_output.put_line('Combo 1: ' || v_combo_1);
    dbms_output.put_line('Combo 2: ' || v_combo_2);
    dbms_output.put_line('Pelicula: ' || v_pelicula);
    dbms_output.put_line('Valor a pagar: ' || v_factura);
    dbms_output.put_line('Fecha: ' || v_fecha);
    dbms_output.put_line('Valor: ' || v_valor);
    dbms_output.put_line('Gracias por su compra');
end;