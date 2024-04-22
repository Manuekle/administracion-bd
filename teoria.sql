SET SERVEROUTPUT ON;

DECLARE
    mensaje constant varchar2(30):='buenos dias a todos';
    numero constant number(6):=30000;
BEGIN
    mensaje:='adios a todos';
    dbms_output.put_line(mensaje);
    dbms_output.put_line(numero);
END;



