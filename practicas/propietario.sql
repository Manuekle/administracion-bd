-- 3. Crear tabla "datos" en el usuario "propietario"
CREATE TABLE datos (
    texto VARCHAR2(255),
    numero INTEGER
);        

INSERT INTO datos VALUES (1, 1);
INSERT INTO datos VALUES (1, 2);
INSERT INTO datos VALUES (3, 1);
INSERT INTO datos VALUES (1, 4);

SELECT * FROM datos;

-- 5. Otorgrar permisos al usuario "limitado" para que pueda leer la tabla "datos"
GRANT SELECT ON datos TO limitado;

-- 7. Actualizar dato number
UPDATE propietario.datos SET numero = 3;

-- 8.Ortogar permiso para que pueda modificar el campo "numero" de la tabla "datos"
GRANT UPDATE (numero) ON datos TO limitado;
-- GRANT UPDATE (texto) ON datos TO limitado;


-- Crear tabla regions
CREATE TABLE regions (
    region_id NUMBER(2),
    region_name VARCHAR2(25)
);

CREATE UNIQUE INDEX reg_id_pk ON regions (region_id);

ALTER TABLE regions ADD CONSTRAINT reg_id_pk PRIMARY KEY (region_id);

INSERT INTO regions VALUES (1, 'Europe');
INSERT INTO regions VALUES (2, 'Americas');
INSERT INTO regions VALUES (3, 'Asia');
INSERT INTO regions VALUES (4, 'Middle East and Africa');

SELECT * FROM regions;

-- 10. Otorgar permisos al usuario "limitado" para que pueda leer la tabla "regions"
GRANT SELECT ON regions TO limitado;

-- 12. Otorgar permiso de actualizar el dato region_name
GRANT UPDATE (region_name) ON regions TO limitado;

-- 13. Quitar permiso de actualizar el dato region_name
REVOKE UPDATE ON regions FROM limitado;

-- Ejercicio:
-- 1. Crear tabla "estudiantes" en el usuario "propietario"
CREATE TABLE estudiantes (
    id NUMBER(2),
    nombre VARCHAR2(25),
    nota NUMBER(2)
);

CREATE UNIQUE INDEX id_pk ON estudiantes (id);
ALTER TABLE estudiantes ADD CONSTRAINT id_pk PRIMARY KEY (id);
-- 2.Crear 4 o 5 estudiantes
INSERT INTO estudiantes VALUES (1, 'Juan', 2);
INSERT INTO estudiantes VALUES (2, 'Pedro', 4);
INSERT INTO estudiantes VALUES (3, 'Maria', 3);
INSERT INTO estudiantes VALUES (4, 'Ana', 5);
INSERT INTO estudiantes VALUES (5, 'Luis', 5);

SELECT * FROM estudiantes;

-- 3. Otorgar permisos al usuario "limitado" para que pueda leer la tabla "estudiantes"
GRANT SELECT ON estudiantes TO limitado;

-- 4. Otorgar permiso de actualizar el dato "nota"
GRANT UPDATE (nota) ON estudiantes TO limitado;

REVOKE UPDATE ON estudiantes FROM limitado;

GRANT UPDATE (nombre) ON estudiantes TO limitado;

