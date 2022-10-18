USE mysql;
Select * from user;

-- Crear Usuario creado
CREATE USER "matias.quiero"@"localhost" IDENTIFIED BY "matias.1234";
CREATE USER "baltazar_quiero"@"localhost" IDENTIFIED BY "baltazar.1234";
CREATE USER "laura.avalos"@"localhost" IDENTIFIED BY "laura_1234";
CREATE USER "diego.quiero"@"localhost" IDENTIFIED BY "diego.1234";
CREATE USER "benjamin.quiero"@"localhost" IDENTIFIED BY "benjamin.1234";
CREATE USER "jeef"@"localhos" IDENTIFIED BY "JEF123";

-- Corrige errores intencionales en Pass y nombre de usuario
ALTER USER "laura.avalos"@"localhost" IDENTIFIED BY "laura.1234";
RENAME USER "baltazar_quiero"@"localhost" TO "baltazar.quiero"@"localhost";

-- A continuación se otorgaran los permisos de admin y user del proyecto
-- Si bien se determina admin alquien con cierto poder sobre los datos de la aplicación futura, en la base, yo soy Dios.

-- Usuario Matias Quiero es el user encargado de crear las ordenes en sistema y realizar modificaciones. 
-- Además, es quien registra los reclamos en el sistema, por lo que tiene permiso de ingreso y modifición a data_process y documents
GRANT INSERT, SELECT, UPDATE ON sgesfinal.orders TO "matias.quiero"@"localhost";
GRANT INSERT, SELECT, UPDATE ON sgesfinal.data_process TO "matias.quiero"@"localhost";
GRANT INSERT, SELECT, UPDATE ON sgesfinal.documents TO "matias.quiero"@"localhost";

-- Usuario Diego Quiero
-- Es quien tiene acceso total a los procesos del sistema, pero no tiene permitido efectuar cambios a la base, como alter, drop, etc.
-- Es el unico usuario que tiene acceso a registrar un user y un origen
GRANT INSERT, DELETE,  UPDATE, SELECT ON sgesfinal.* TO "diego.quiero"@"localhost";
-- Stored procedure
GRANT ALL ON sgesfinal.sp_crear_usuarios TO "diego.quiero"@"localhost";

-- Usuario Laura Avalos
-- Es quien tiene permiso de visualización o consulta sobre diversas tablas de proceso
-- Tiene acceso a consultar algunas de las vistas
GRANT SELECT ON sgesfinal.carriers TO "laura.avalos"@"localhost";
GRANT SELECT ON sgesfinal.origins TO "laura.avalos"@"localhost";
GRANT SELECT ON sgesfinal.orders TO "laura.avalos"@"localhost";
GRANT SELECT ON sgesfinal.customer TO "laura.avalos"@"localhost";
GRANT SELECT ON sgesfinal.products TO "laura.avalos"@"localhost";
-- VISTAS
GRANT SELECT ON sgesfinal.fifo TO "laura.avalos"@"localhost";
GRANT SELECT ON sgesfinal.fifo_expiracion TO "laura.avalos"@"localhost";

-- Usuario Baltazar Quiero
-- Este usuario es el que esta autorizado a poblar las tablas con nuevos cliente, containers, productos, transportes y sus vehiculos
GRANT INSERT, DELETE,  UPDATE, SELECT ON sgesfinal.carriers TO "baltazar.quiero"@"localhost";
GRANT INSERT, DELETE,  UPDATE, SELECT ON sgesfinal.vehicles TO "baltazar.quiero"@"localhost";
GRANT INSERT, DELETE,  UPDATE, SELECT ON sgesfinal.containers TO "baltazar.quiero"@"localhost";
GRANT INSERT, DELETE,  UPDATE, SELECT ON sgesfinal.customers TO "baltazar.quiero"@"localhost";
GRANT INSERT, DELETE,  UPDATE, SELECT ON sgesfinal.products TO "baltazar.quiero"@"localhost";

-- Usuario Benjamin Quiero
-- Asistente de Baltazar tiene permitida la modificion de las patentes de los vehiculos, ademas de vincular los productos a un origen e ingresar productos
-- Solo cuenta con permiso para insertar y visualizar, puesto que cualquier peticion de borrar y actualizar productos u order_has_product debe pasar por medio del supervisor.
GRANT UPDATE (plates) ON sgesfinal.vehicles TO "benjamin.quiero"@"localhost";
GRANT INSERT, SELECT ON sgesfinal.origin_has_products TO "baltazar.quiero"@"localhost";
GRANT INSERT, SELECT ON sgesfinal.products TO "baltazar.quiero"@"localhost";

-- Trabajador despedido
DROP USER "jeef"@"localhost";