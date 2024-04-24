-- 1. cuales son las palabras resevadas de oracle server?

-- ACCESS - ELSE - MODIFY - START
-- ADD  -  EXCLUSIVE  -  NOAUDIT -  SELECT
-- ALL - EXISTS - NOCOMPRESS - SESSION
-- ALTER - FILE - NOT - SET
-- AND - FLOAT - NOTFOUND - SHARE
-- ANY - FOR - NOWAIT - SIZE
-- ARRAYLEN - FROM - NULL - SMALLINT
-- AS - GRANT - NUMBER - SQLBUF
-- ASC - GROUP - OF - SUCCESSFUL
-- AUDIT - HAVING - OFFLINE - SYNONYM
-- BETWEEN - IDENTIFIED - ON - SYSDATE
-- BY - IMMEDIATE - ONLINE - TABLE
-- CHAR - IN - OPTION - THEN
-- CHECK - INCREMENT - OR - TO
-- CLUSTER - INDEX - ORDER - TRIGGER
-- COLUMN - INITIAL - PCTFREE - UID
-- COMMENT - INSERT - PRIOR - UNION
-- COMPRESS - INTEGER - PRIVILEGES - UNIQUE
-- CONNECT - INTERSECT - PUBLIC - UPDATE
-- CREATE - INTO - RAW - USER
-- CURRENT - IS - RENAME - VALIDATE
-- DATE - LEVEL - RESOURCE - VALUES
-- DECIMAL - LIKE - REVOKE - VARCHAR
-- DEFAULT - LOCK - ROW - VARCHAR2
-- DELETE - LONG - ROWID - VIEW
-- DESC - MAXEXTENTS - ROWLABEL - WHENEVER
-- DISTINCT - MINUS - ROWNUM - WHERE
-- DROP - MODE - ROWS - WITH

-- referenecia: https://docs.oracle.com/cd/A97630_01/appdev.920/a42525/apb.htm


-- 2. cual es la sintaxis de ALTER TABLE y DROP TABLE?
-- La sintaxis de ALTER TABLE es: ALTER TABLE table_name ADD column_name
ALTER TABLE table_name ADD column_name; 
-- La sintaxis de DROP TABLE es: DROP TABLE table_name
DROP TABLE table_name;

-- 3. que tanto se pude modificar con ALTER TABLE?

-- Se puede modificar el nombre de la tabla, agregar columnas, 
-- eliminar columnas, cambiar el tipo de datos de una columna, 
-- cambiar el nombre de una columna, agregar restricciones y
-- eliminar restricciones.

-- 4.cual es la diferencia entre DROP TABLE y TRUNCATE TABLE?.

-- DROP TABLE: elimina la tabla y todos los datos, índices,
-- restricciones y permisos asociados con la tabla.

-- TRUNCATE TABLE: elimina todos los datos de la tabla, pero no elimina la tabla
-- en sí misma, ni los índices, restricciones y permisos asociados
-- con la tabla.

-- referencias: https://docs.aws.amazon.com/es_es/redshift/latest/dg/r_ALTER_TABLE_examples_basic.html

-- 5. un ejemplo con cada opcion de ALTER TABLE ADD | MODIFY | DROP

CREATE TABLE estudiantesHR (
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    edad INT
);

SELECT * FROM estudiantesHR;

-- ALTER TABLE ADD:
ALTER TABLE estudiantesHR ADD nota INT;

-- ALTER TABLE MODIFY:
ALTER TABLE estudiantesHR MODIFY nota FLOAT;

-- ALTER TABLE DROP:
ALTER TABLE estudiantesHR DROP (nota);
ALTER TABLE estudiantesHR DROP (peso);

-- agregar DATOS a la tabla estudiantesHR
INSERT INTO estudiantesHR (nombre, apellido, edad) VALUES ('Jose', 'Andres', 12);

-- 6. cual es la sintaxis correcta para ejecutar DEFAULT en una tabla?

-- La sintaxis correcta para ejecutar DEFAULT en un la tabla estudianteHR es:
ALTER TABLE estudiantesHR ADD nota INT DEFAULT 0;
ALTER TABLE estudiantesHR ADD peso VARCHAR(50) DEFAULT 'desconocido';

-- 7. como se elimina un DEFAULT

-- Para eliminar un DEFAULT se debe usar la siguiente sintaxis:
    ALTER TABLE estudiantesHR ALTER [COLUMN] nota DROP DEFAULT;
