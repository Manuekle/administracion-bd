-- EJERCICIO PRACTICO
-- 1. Crear un usuario que ortoga privilegio y uno que los recibe
ALTER SESSION SET "_oracle_script"=true;

CREATE USER propietario IDENTIFIED BY xyz;
CREATE USER limitado IDENTIFIED BY abc;

-- 2. Otorgar permisos
GRANT connect, resource TO propietario;

-- A partir de aqui las tareas se pueden hacer desdel el usuario "propietario"

-- Privilegios de tamaño limitado
GRANT UNLIMITED TABLESPACE TO propietario;

-- 4. Permiso mas basico para el usuario limitado(iniciar sesion)
GRANT CREATE SESSION TO limitado;