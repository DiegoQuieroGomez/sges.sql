-- Listado de productos por vencimiento
CREATE OR REPLACE VIEW fifo as
select product_name, batch, production_date, expiration_date, industry_name, country from products inner join origins 
order by expiration_date asc;
-- EX: primeros en ser producidos
select * from fifo where industry_name = "frigomerc" order by production_date asc;

-- Monto comprado por cliente a cada origen - Tambien indica de que procedencia compra
CREATE OR REPLACE VIEW total_compra_clientes_por_origen as
select customers.id_customer, customer_name, sum(order_price) as total_compras, id_origin from orders 
inner join customers on(customers.id_customer = orders.id_customer) group by customers.id_customer, id_origin;
-- EX: que clientes y cuanto han comprado a un origen especifico
select*from total_compra_clientes_por_origen where id_origin = 1;

-- Muestra ordenes creadas por cada usuario
CREATE OR REPLACE VIEW ordenes_creadas_x_usuario AS
select firstname, lastname, users.id_user, order_number, id_origin from users inner join orders on(users.id_user = orders.id_user) 
order by users.id_user, id_origin;
-- EX: Verficar errores de registros en la base, identificamos quien fue el responsable
select * from ordenes_creadas_x_usuario where order_number = "36987-3180";

-- Muesta quien transportó la orden, en que vehiculo y en que container.
CREATE OR REPLACE VIEW asignaciones_transporte AS
select carriers.id_carrier ,carrier_name, carrier_identification_number as rut, vehicles.id_vehicle, plates, container_number, order_number
from carriers inner join orders on(carriers.id_carrier = orders.id_carrier)
inner join vehicles on (carriers.id_carrier = vehicles.id_carrier) 
inner join containers on (vehicles.id_vehicle = containers.id_vehicle) order by carrier_name, plates;
-- EX: Verificar que ordenes has sido transportadas por un carrier especifico
select * from asignaciones_transporte where id_carrier = 1;

-- Muestra los productos a menos de un mes de vencer
CREATE OR REPLACE VIEW fifo_expiration as
select product_name, batch, production_date, expiration_date, industry_name, country from products inner join origins 
where expiration_date < date(now()) - interval 1 month order by expiration_date asc;
-- EX: primeros en ser expirar por origen//debo cargar solo fechas de expiracion futuras
select * from fifo_expiration where industry_name = "frigomerc" order by expiration_date asc;
