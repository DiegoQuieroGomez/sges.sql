
-- Primera Instrucción
START TRANSACTION;
-- Inserta un data_process
INSERT INTO data_process (process_type,`description`,cost, start_date, fluig_number, id_order) 
VALUES ("notificacion","Temperatura fuera de rango",0, "2022-10-07",1338458,5);

-- Guarda el punto de insercion
SAVEPOINT insert_notificación;

-- Daniel, por favor modificar el id_data_process a uno existente durante la prueba
UPDATE data_process set conclusion = ("cerrar sin costo") where id_data_process = 3;

-- Guarda el punto de actualizacion de la conclusion
SAVEPOINT update_conclusion;

-- Volvemos al periodo previo a la insercion de la conclusion
ROLLBACK TO SAVEPOINT insert_notificación; 

-- Volvemos todo antes de cualquier cambio en la tabla
ROLLBACK;

-- Confirmamos los cambios para hacerlos definitivos
COMMIT;
-- Podemos rectificar con DELETE pero eso ya es otra historia

-- No hay problema con el uso de esta tabla, no la tengo poblada, pues la dejé casi vacía en caso de algun otro tipo de prueba

-- Segunda Instruccion

START TRANSACTION;

-- Insertamos 3 registros en la tabla orders
INSERT INTO orders (order_number, order_price, id_origin, id_user, id_customer,id_carrier) 
VALUES ("58482FR", 24500, 1,"12184159-8",1,1);
INSERT INTO orders (order_number, order_price, id_origin, id_user, id_customer,id_carrier) 
VALUES ("453984WER", 28246, 2,"13258858-8",3,2);
INSERT INTO orders (order_number, order_price, id_origin, id_user, id_customer,id_carrier) 
VALUES ("543634FV", 28552, 3,"16855158-8",5,4);

-- Guardamos el avance
SAVEPOINT tercer_registro;

-- Insertamos 2 registros finales
INSERT INTO orders (order_number, order_price, id_origin, id_user, id_customer,id_carrier) 
VALUES ("JHMEIM134", 26356, 2,"16855158-8",13,11);
INSERT INTO orders (order_number, order_price, id_origin, id_user, id_customer,id_carrier) 
VALUES ("4758938526", 18004, 1,"13258858-8",11,3);

-- Guardamos el avance con estos ultimos 2 registro
SAVEPOINT quinto_registro;

-- Eliminamos el savepoint especifico, por lo que con un rollback solo podremos regresar el que existen los 5 ingresos.
RELEASE SAVEPOINT tercer_registro;

COMMIT;
