
DELIMITER $$
CREATE FUNCTION `fn_precio_final`(order_price FLOAT) RETURNS float
    NO SQL

BEGIN
	DECLARE resultado_iva FLOAT;
    DECLARE resultado_internacion FLOAT;
    DECLARE total FLOAT;
    
    SET resultado_iva = precio * 0.19;
    SET resultado_internacion = precio * 0.03;
    SET total = precio + resultado_iva + resultado_internacion;
    
RETURN total;
END $$

-- EX muestra precio de la orden con internacion al país e iva agregado
select order_number, fn_precio_final(order_price) precio_con_internacion_e_IVA from orders;

DELIMITER $$
CREATE FUNCTION `fn_dias_por_vencer`(expiration_date DATE) RETURNS varchar(20) 
    NO SQL
BEGIN
	DECLARE dias_restantes VARCHAR(20);
    DECLARE vencimiento DATE;
    
    SET vencimiento = expiration_date;
    SET dias_restantes = datediff(curdate(),vencimiento);

RETURN if(dias_restantes < 1, "producto expirado", dias_restantes);
END $$

-- EX Muestra los dias por vencer y los productos que ya expiraron.
select product_name, product_code, batch, fn_dias_por_vencer(expiration_date), id_origin from products;


