-- 6. Probar los permisos de "limitado"
SELECT * FROM propietario.datos;
SELECT * FROM propietario.regions;
SELECT * FROM propietario.estudiantes;

-- 9. Probar nuevamente el permiso de actualización de "limitado"
UPDATE propietario.datos SET numero = 35;

UPDATE propietario.regions SET region_name = 'Pacifico' WHERE region_id = 1;
UPDATE propietario.regions SET region_name = 'Caribe' WHERE region_id = 2;
UPDATE propietario.regions SET region_name = 'Amazonia' WHERE region_id = 3;
UPDATE propietario.regions SET region_name = 'Andina' WHERE region_id = 4;

-- actualizar notas
UPDATE propietario.estudiantes SET nota = 3 WHERE id = 4;
-- actualizar nombre
UPDATE propietario.estudiantes SET nombre = 'Anita' WHERE id = 4;