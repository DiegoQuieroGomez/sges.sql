-- Busca el numero asociado al responsable deseado, sea transporte, cliente, origen proveniente o usuario creador.
DELIMITER $$
CREATE PROCEDURE `sp_orders_por`(IN p_criterio varchar(50), IN p_orden varchar(30))
BEGIN

	CASE lcase(trim(p_criterio))
    WHEN "users" THEN
		IF p_orden != "" THEN
			SET @clausula = concat("SELECT concat(firstname,' ', lastname) AS `user`, order_number
			FROM users inner join orders on(users.id_user =orders.id_user)
			ORDER BY ", p_orden);
        ELSE
			SET @clausula = "SELECT concat(firstname," ",lastname) AS `user`, order_number
			FROM users inner join orders on(users.id_user =orders.id_user)";
		END IF;
	
	WHEN "origins" THEN
		IF p_orden != "" THEN
			SET @clausula = concat("SELECT industry_name, country, order_number
			FROM origins inner join orders on(origins.id_origin =orders.id_origin)
			ORDER BY ", p_orden);
        ELSE
			SET @clausula = "SELECT industry_name, country, order_number
			FROM origins inner join orders on(origins.id_origin =orders.id_origin)";
		END IF;
        
	WHEN "customers" THEN
		IF p_orden != "" THEN
			SET @clausula = concat("SELECT customer_name, customer_identification, order_number
			FROM customers inner join orders on(customers.id_customer =orders.id_customer)
			ORDER BY ", p_orden);
        ELSE
			SET @clausula = "SELECT customer_name, customer_identification, order_number
			FROM customers inner join orders on(customers.id_customer =orders.id_customer)";
		END IF;
	
    WHEN "carriers" THEN
		IF p_orden != "" THEN
			SET @clausula = concat("SELECT carrier_name, carrier_identification_number, order_number
			FROM carriers inner join orders on(carriers.id_carrier =orders.id_carrier)
			ORDER BY ", p_orden);
        ELSE
			SET @clausula = "SELECT carrier_name, carrier_identification_number, order_number
			FROM carriers inner join orders on(carriers.id_carrier =orders.id_carrier)";
		END IF;
        
	ELSE 
		SELECT "Criterio incorrecto" AS msg_error;
	END CASE;

	-- Prepara ejecutar_query  el contenido del string Clausula
	PREPARE ejecutar_query FROM @clausula;
	-- Ejecuta el query
	EXECUTE ejecutar_query;
	-- Libera la memoria
	DEALLOCATE PREPARE ejecutar_query;
END $$

CALL sp_orders_por("users", "firstname");
CALL sp_orders_por("origins", "industry_name");
CALL sp_orders_por("customers", "customer_name");
CALL sp_orders_por("carriers", "carrier_name");

-- Crear Usuarios
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_crear_usuarios`(IN p_campo_id VARCHAR(20),IN p_id_user VARCHAR(45),IN p_firstname VARCHAR(45),IN p_lastname VARCHAR(45), IN p_user_name VARCHAR(45), 
IN p_user_password VARCHAR(45), IN p_email VARCHAR(45), IN p_user_type VARCHAR(45))
BEGIN
	
    DECLARE v_existe_id BOOL;
	SET v_existe_id = 0;
    SELECT v_existe_id as primer_existe_id; -- control
    
	SET @cadena_sql= concat("SELECT 1 INTO v_existe_id FROM users WHERE ",p_campo_id ," = " ,p_id_user); 
    SELECT v_existe_id as segundo_control;
    
	SET @cadena_sql= concat("insert into users  (id_user, firstname, lastname, user_name, user_password, email, user_type) 
	values ('" ,p_id_user, "','" ,p_firstname, "','" ,p_lastname, "','" ,p_user_name, "','" ,p_user_password, "','" ,p_email, "','" ,p_user_type, "')");
    SELECT @cadena_sql as consulta; -- control
	
	-- prepara en ejecutar_query el contenido del string clausula
    PREPARE ejecutar_query FROM @cadena_sql;
    -- ejcuta el query
    EXECUTE ejecutar_query;
    -- sacalo de la memoria
    DEALLOCATE PREPARE ejecutar_query;
    -- por una razon que no logré entender nunca me devuelve el tercer control
	SELECT v_existe_id as tercer_control;

END$$

CALL sp_crear_usuarios("id_user","1","jorge","Leiva", "jorege123","leiva1234","jorge.leiva@laempresa.com", "user");
