CREATE TABLE IF NOT EXISTS  `sgesfinal`.`log_auditoria` (
  `id_log` INT NOT NULL AUTO_INCREMENT,
  `tabla` VARCHAR(45) NOT NULL,
  `accion` VARCHAR(15) NOT NULL,
  `mensaje` VARCHAR(400) NOT NULL,
  `usuario` VARCHAR(45) NOT NULL,
  `fecha` DATE NOT NULL,
  PRIMARY KEY (`id_log`));
  
  DELIMITER $$
CREATE DEFINER=`root`@`localhost` TRIGGER `data_process_registro_reclamo` AFTER INSERT ON `data_process` FOR EACH ROW 
BEGIN
INSERT INTO `sgesfinal`.`log_auditoria`(tabla, accion, mensaje, usuario, fecha)
        VALUES ('data_process', 
				'registro', 
                concat('Se registró el caso ', NEW.id_data_process,' de tipo ',NEW.process_type),
                user(),
                curdate());
END$$
  
  -- Se ingresa reclamo el cual activa el trigger que registra la start date.
INSERT INTO data_process(process_type,`description`,cost,start_date,id_order) VALUES ('reclamo','producto en mal estado con coloración atípica','1500',curdate(),1)
  
DELIMITER $$
CREATE DEFINER=`root`@`localhost` TRIGGER `data_process_finalizar_reclamo` AFTER UPDATE ON `data_process` FOR EACH ROW BEGIN
	INSERt INTO `sgesfinal`.`log_auditoria`(tabla, accion, mensaje, usuario, fecha)
        VALUES ('data_process', 
				'Actualizacion', 
                concat('Se añadió  conclusión al caso ', NEW.id_data_process,' de tipo ',NEW.process_type),
                user(),
                curdate());
END$$
	-- Registra el cierre de un reclamo por medio de la actualizacion de la conclusion
UPDATE data_process SET conclusion = "Se retira mercadería de las dependencias del cliente y se solicita factura" WHERE id_data_process = 1;


