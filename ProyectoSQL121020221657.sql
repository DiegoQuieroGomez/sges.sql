CREATE DATABASE  IF NOT EXISTS `sgesfinal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sgesfinal`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: sgesfinal
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `asignaciones_transporte`
--

DROP TABLE IF EXISTS `asignaciones_transporte`;
/*!50001 DROP VIEW IF EXISTS `asignaciones_transporte`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `asignaciones_transporte` AS SELECT 
 1 AS `id_carrier`,
 1 AS `carrier_name`,
 1 AS `rut`,
 1 AS `id_vehicle`,
 1 AS `plates`,
 1 AS `container_number`,
 1 AS `order_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `carriers`
--

DROP TABLE IF EXISTS `carriers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carriers` (
  `id_carrier` int NOT NULL AUTO_INCREMENT,
  `carrier_name` varchar(100) NOT NULL,
  `carrier_identification_number` varchar(45) NOT NULL,
  `comercial_address` varchar(100) DEFAULT NULL,
  `carrier_contact` varchar(100) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_carrier`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carriers`
--

LOCK TABLES `carriers` WRITE;
/*!40000 ALTER TABLE `carriers` DISABLE KEYS */;
INSERT INTO `carriers` VALUES (1,'Falero','11587159-8','Avenida Lo Pinto 345, Cerro Navia','Juan Verdugo','+56983784','juanverdugo@laempresa.com'),(2,'Costa Azul','845154586-3','Almirante Troncoso, La Bahía','Elmer Arenque','+569855218','el.arenque@laempresa.com'),(3,'Rio Claro','57841875-2','La Montaña S/N, Concepción','Carlos Montero','+569745784','carlosmontero@laempresa.com'),(4,'NorteaSur','52487585-7','Panamericana 1587, Ciudad Empresarial','Matías Jorquera','+515851521','matiaasj@laempresa.com'),(5,'Nortern','215281331-k','La conquista, Maipú','Bernardo Castañeda','+5695524784','elcasta@laempresa.com'),(6,'Eorzea','55481524-k','Western Thanahlan','Thancred Waters','+56983784','thanwaters@laempresa.com'),(7,'Lowe Inc','708072799-5','94230 Warbler Parkway','Garald Roylance','185-146-4269','groylance0@eepurl.com'),(8,'Beer-Lynch','954307026-1','9 Eggendart Park','Sigismundo Hurich','977-379-9882','shurich1@twitpic.com'),(9,'Jakubowski LLC','094870328-8','5791 Debra Point','Melisandra Llewellin','355-347-5679','mllewellin2@comsenz.com'),(10,'Lesch and Sons','721108157-0','039 Arkansas Court','Waldemar Schellig','282-724-0604','wschellig3@1688.com'),(11,'Luettgen Inc','160982144-0','24479 Portage Plaza','Abey Bugg','255-707-6624','abugg4@drupal.org'),(12,'Torphy Group','074136884-6','357 Toban Terrace','Helen Dreschler','399-937-6690','hdreschler5@php.net'),(13,'Flatley-Hammes','251411525-6','65 Beilfuss Place','Debbi Niave','407-506-1707','dniave6@spotify.com'),(14,'Williamson, Ullrich and Mante','912793089-0','16498 Hooker Circle','Freda Mosen','978-622-4799','fmosen7@fotki.com'),(15,'Feest-Rutherford','094648406-6','001 Susan Road','Gustav Playle','728-359-6809','gplayle8@nydailynews.com');
/*!40000 ALTER TABLE `carriers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `containers`
--

DROP TABLE IF EXISTS `containers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `containers` (
  `id_container` int NOT NULL AUTO_INCREMENT,
  `container_number` varchar(50) NOT NULL,
  `seals` varchar(45) NOT NULL,
  `id_vehicle` int NOT NULL,
  PRIMARY KEY (`id_container`),
  KEY `containers_vehicle_idx` (`id_vehicle`),
  CONSTRAINT `containers_vehicle` FOREIGN KEY (`id_vehicle`) REFERENCES `vehicles` (`id_vehicle`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `containers`
--

LOCK TABLES `containers` WRITE;
/*!40000 ALTER TABLE `containers` DISABLE KEYS */;
INSERT INTO `containers` VALUES (1,'15124','JHGHDA23',5),(2,'45262','AHSDAU45',6),(3,'587814','QWRAHAWQEQU45',5),(4,'werwer548885','UYHNID34',6),(5,'5874324','QWEAWEHAWQEQU45',4),(6,'5rwer85','UYHNID34',6),(7,'823514','WERQQEQU45',3),(8,'werwe885','UYHNID34',6),(9,'645','ACNRRU45',1),(10,'r85','UYHNID34',6),(11,'76','CVBCNQEQU45',4),(12,'5wer885','UYSDFSDFD34',6),(13,'98814','AHQWASDQEQU45',2),(14,'r885','UYHFSDIGSDF26',6),(15,'234814','AHTYQEQU4KTU5',4),(16,'548885','UYHNIDG34YKU',6),(17,'5534814','AHAWQEQU45',4),(18,'rtert8885','UYHNID34',6),(19,'77814','AHAWQEQU45',5),(20,'re548885','UYHNID34',6),(21,'5677814','WEHAWQEQU45',5),(22,'dsgd885','UYHNID34',6),(23,'dfg55420','76HHAWQEQU45',4),(24,'548885','ZVX34',6),(25,'999678787814','VVAHAWQEQU45',4),(26,'789789885','CVZCVRWNID34',2),(27,'7788997814','TVFAWQEQU45',5),(28,'8797848885','BHNID34',3),(29,'8686987814','QAERWQEQU45',5),(30,'7977948885','XCBHNID34',3),(31,'57867887814','AHAWQEQU45',3),(32,'89808885','HKHJNID34',3);
/*!40000 ALTER TABLE `containers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id_customer` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) NOT NULL,
  `customer_identification` varchar(45) NOT NULL,
  `customer_comercial_address` varchar(100) DEFAULT NULL,
  `customer_contact` varchar(100) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `customer_email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Herzog-Legros','744-26-5078','58336 Parkside Point','Elane Barten','(949) 8241271','ebarten0@ibm.com'),(2,'Littel-Romaguera','231-68-8281','18665 Northwestern Court','Virge Shevels','(542) 8740496','vshevels1@mayoclinic.com'),(3,'Jacobson and Sons','441-20-6305','810 Sloan Terrace','Isador Gierardi','(602) 3922852','igierardi2@blogspot.com'),(4,'Block Group','212-75-9739','07 Maple Wood Junction','Kristy Kleinstub','(232) 9458363','kkleinstub3@dropbox.com'),(5,'Roberts, Gerlach and Runolfsdottir','121-99-6999','636 Fairview Way','Caryl Aloway','(456) 1053171','caloway4@tumblr.com'),(6,'Macejkovic, Dickinson and Gleichner','209-03-5565','4692 Anthes Circle','Billi Whyard','(241) 9057702','bwhyard5@utexas.edu'),(7,'Hirthe, Von and Schmeler','677-20-1673','7397 Fieldstone Point','Luelle Roderick','(791) 3910645','lroderick6@miitbeian.gov.cn'),(8,'Satterfield LLC','444-65-1254','1 Mesta Parkway','Michail Shippey','(276) 2380820','mshippey7@kickstarter.com'),(9,'Rice, Sauer and Bednar','275-55-7626','2 Coolidge Pass','Ramsay Sargeant','(120) 4504592','rsargeant8@biglobe.ne.jp'),(10,'Ankunding Group','391-84-4765','668 Sunnyside Crossing','Skipp Cadding','(950) 7510311','scadding9@ihg.com'),(11,'Tromp, Fahey and Anderson','726-16-8914','425 Ridge Oak Junction','Micheline O\'Shavlan','(438) 9774518','moshavlana@cpanel.net'),(12,'Feest, Thompson and Ondricka','691-32-7473','3520 Jenna Place','Josie Grono','(702) 7856029','jgronob@sakura.ne.jp'),(13,'Strosin-Ryan','134-69-8685','0 Paget Court','Diane-marie Prime','(144) 3764064','dprimec@ocn.ne.jp'),(14,'Mitchell, Simonis and Baumbach','710-53-7983','341 Nelson Crossing','Shawna Folomkin','(360) 4655715','sfolomkind@ezinearticles.com'),(15,'Harvey Inc','534-01-8011','376 Lindbergh Parkway','Kathryne Dow','(870) 7828600','kdowe@usgs.gov'),(16,'Vandervort, Kuhlman and Gerhold','203-92-2422','3643 Ramsey Street','Cloris Fidgin','(279) 6594184','cfidginf@jugem.jp'),(17,'Wilkinson Group','694-53-7436','98 Clarendon Hill','Masha Wenzel','(697) 9274585','mwenzelg@washingtonpost.com'),(18,'Gottlieb-Littel','122-48-0099','99106 West Pass','Vida Aylin','(248) 5668862','vaylinh@house.gov'),(19,'O\'Hara and Sons','382-68-7211','16 Longview Crossing','Constantin Gatecliffe','(732) 6601417','cgatecliffei@oracle.com'),(20,'Bailey and Sons','360-29-8639','0271 Darwin Place','Bethany Cudbird','(400) 6850362','bcudbirdj@github.io'),(21,'Kuhn-Harvey','131-07-0530','87267 Village Green Drive','Fletch Goldsby','(521) 2236494','fgoldsbyk@va.gov'),(22,'Mayert, Cormier and Bogan','392-93-0869','495 Granby Terrace','Winnie Nyland','(500) 9279621','wnylandl@oracle.com'),(23,'Waters-Balistreri','597-90-6502','254 Macpherson Place','Juliane Ravens','(874) 2511951','jravensm@symantec.com'),(24,'Mann and Sons','414-55-7391','35 East Drive','Shane MacNess','(433) 1642192','smacnessn@live.com'),(25,'Jacobs and Sons','124-64-8892','3563 Manley Lane','Abbe Pidgen','(869) 4264127','apidgeno@mail.ru'),(26,'Lindgren LLC','850-55-4470','40593 Rieder Terrace','Ugo Guihen','(123) 4037217','uguihenp@xing.com'),(27,'Walsh, Hickle and Keeling','128-44-4549','57 Talisman Terrace','Franklyn Sibbet','(653) 1593378','fsibbetq@dailymotion.com'),(28,'Kovacek Group','135-58-0067','2908 Gulseth Parkway','Viole Pellitt','(665) 4650773','vpellittr@webmd.com'),(29,'Ratke and Sons','719-32-6436','07 Maywood Alley','Abey Boman','(756) 7567461','abomans@latimes.com'),(30,'Emmerich, Quigley and Swaniawski','502-74-5323','67402 Meadow Vale Court','Ame Birrel','(476) 5834753','abirrelt@uiuc.edu'),(31,'Bailey and Sons','613-42-1141','85364 Pine View Trail','Amber Mordue','(479) 8719255','amordueu@comsenz.com'),(32,'Schneider-Satterfield','879-98-8755','47 Golf Street','Karoline Spenley','(801) 1635577','kspenleyv@unesco.org'),(33,'Powlowski, Weissnat and Gulgowski','737-95-1287','91 Sauthoff Court','Fara Maddern','(392) 5999093','fmaddernw@dmoz.org'),(34,'Hagenes, Ruecker and Champlin','485-29-8444','3971 Fairview Terrace','Jayme Cattle','(766) 7494866','jcattlex@etsy.com'),(35,'Erdman Group','142-57-4022','32 Crowley Avenue','Blanche Sayre','(338) 3369624','bsayrey@webnode.com'),(36,'Ruecker and Sons','565-71-1327','569 Lakewood Gardens Crossing','Norean Kingcott','(855) 8928523','nkingcottz@cisco.com'),(37,'Kilback, Frami and Senger','807-86-0469','7297 Sutteridge Pass','Sherrie McGoon','(553) 5815105','smcgoon10@mtv.com'),(38,'Mosciski and Sons','893-94-4550','2472 Hanover Lane','Darbee Sidnell','(214) 9224920','dsidnell11@google.com'),(39,'Cruickshank, Osinski and Lockman','128-41-5550','2713 Troy Circle','Talbert McGrirl','(543) 5889326','tmcgrirl12@sohu.com'),(40,'Borer, Hirthe and Crooks','405-01-7387','34 Rowland Park','Kassie Gullivent','(101) 1122174','kgullivent13@slate.com'),(41,'Luettgen, Kessler and Wiegand','789-66-9326','47999 Sunbrook Circle','Romain Pohl','(223) 6621963','rpohl14@de.vu'),(42,'Wehner and Sons','115-35-2374','86 Acker Way','Gage Birkinshaw','(724) 5603061','gbirkinshaw15@berkeley.edu'),(43,'Trantow, Grimes and Crooks','606-57-4920','28059 Pankratz Center','Kaia Oakley','(278) 5007197','koakley16@meetup.com'),(44,'Cummerata Group','756-38-1079','284 Donald Center','Charmain Pinnocke','(782) 9488313','cpinnocke17@wikispaces.com'),(45,'Huels, Armstrong and Kuhn','467-25-2460','48242 Hermina Alley','Guilbert Fayter','(195) 8542991','gfayter18@cnet.com'),(46,'Hayes-Heathcote','574-96-2387','008 Eastwood Drive','Myron Rapsey','(149) 1434602','mrapsey19@latimes.com'),(47,'Gulgowski and Sons','462-60-5500','93 Lillian Hill','Dasha Hawson','(844) 1441908','dhawson1a@google.com'),(48,'Schimmel, Collier and Mueller','672-48-1247','64 Dwight Drive','Hermine Dimitru','(484) 3774245','hdimitru1b@state.tx.us'),(49,'Kutch-Cole','180-63-0936','38659 Loomis Street','Melli Burgett','(135) 7552043','mburgett1c@bloglovin.com'),(50,'Rosenbaum Inc','743-21-1902','1338 Anniversary Avenue','Jacinta Criple','(162) 4471121','jcriple1d@ocn.ne.jp');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_process`
--

DROP TABLE IF EXISTS `data_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_process` (
  `id_data_process` int NOT NULL AUTO_INCREMENT,
  `process_type` varchar(20) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `cost` float DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `fluig_number` varchar(100) DEFAULT NULL,
  `conclusion` varchar(300) DEFAULT NULL,
  `id_order` int NOT NULL,
  PRIMARY KEY (`id_data_process`),
  KEY `data_process_order_idx` (`id_order`),
  CONSTRAINT `data_process_order` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_process`
--

LOCK TABLES `data_process` WRITE;
/*!40000 ALTER TABLE `data_process` DISABLE KEYS */;
INSERT INTO `data_process` VALUES (1,'reclamo','producto en mal estado',24000,'2022-09-28',NULL,NULL,'ASDASDASDASDASDASDASDASDASsdasdasddaasdDASDASDD',1),(2,'reclamo','producto en mal estado con coloración atípica',1500,'2022-09-29',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `data_process` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `data_process_registro_reclamo` AFTER INSERT ON `data_process` FOR EACH ROW BEGIN
INSERT INTO `sgesfinal`.`log_auditoria`(tabla, accion, mensaje, usuario, fecha)
        VALUES ('data_process', 
				'registro', 
                concat('Se registró el caso ', NEW.id_data_process,' de tipo ',NEW.process_type),
                user(),
                curdate());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `data_process_finalizar_reclamo` AFTER UPDATE ON `data_process` FOR EACH ROW BEGIN
	INSERt INTO `sgesfinal`.`log_auditoria`(tabla, accion, mensaje, usuario, fecha)
        VALUES ('data_process', 
				'Actualizacion', 
                concat('Se añadió  conclusión al caso ', NEW.id_data_process,' de tipo ',NEW.process_type),
                user(),
                curdate());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `id_document` int NOT NULL AUTO_INCREMENT,
  `document_type` varchar(50) NOT NULL,
  `document_number` varchar(50) NOT NULL,
  `document` blob NOT NULL,
  `upload_date` date NOT NULL,
  `id_data_process` int NOT NULL,
  PRIMARY KEY (`id_document`),
  KEY `documents_data_process_idx` (`id_data_process`),
  CONSTRAINT `documents_data_process` FOREIGN KEY (`id_data_process`) REFERENCES `data_process` (`id_data_process`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `fifo`
--

DROP TABLE IF EXISTS `fifo`;
/*!50001 DROP VIEW IF EXISTS `fifo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fifo` AS SELECT 
 1 AS `product_name`,
 1 AS `batch`,
 1 AS `production_date`,
 1 AS `expiration_date`,
 1 AS `industry_name`,
 1 AS `country`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fifo_expiration`
--

DROP TABLE IF EXISTS `fifo_expiration`;
/*!50001 DROP VIEW IF EXISTS `fifo_expiration`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fifo_expiration` AS SELECT 
 1 AS `product_name`,
 1 AS `batch`,
 1 AS `production_date`,
 1 AS `expiration_date`,
 1 AS `industry_name`,
 1 AS `country`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `log_auditoria`
--

DROP TABLE IF EXISTS `log_auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_auditoria` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `tabla` varchar(45) NOT NULL,
  `accion` varchar(15) NOT NULL,
  `mensaje` varchar(400) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_auditoria`
--

LOCK TABLES `log_auditoria` WRITE;
/*!40000 ALTER TABLE `log_auditoria` DISABLE KEYS */;
INSERT INTO `log_auditoria` VALUES (1,'data_process','Actualizacion','Se añadió  conclusión al caso 1 de tipo reclamo','root@localhost','2022-09-29'),(2,'data_process','Actualizacion','Se añadió  conclusión al caso 1 de tipo reclamo','root@localhost','2022-09-29'),(3,'data_process','registro','Se registró el caso 2 de tipo reclamo','root@localhost','2022-09-29');
/*!40000 ALTER TABLE `log_auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ordenes_creadas_x_usuario`
--

DROP TABLE IF EXISTS `ordenes_creadas_x_usuario`;
/*!50001 DROP VIEW IF EXISTS `ordenes_creadas_x_usuario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ordenes_creadas_x_usuario` AS SELECT 
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `id_user`,
 1 AS `order_number`,
 1 AS `id_origin`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id_order` int NOT NULL AUTO_INCREMENT,
  `order_number` varchar(20) NOT NULL,
  `order_price` float DEFAULT NULL,
  `id_origin` int NOT NULL,
  `id_user` varchar(45) NOT NULL,
  `id_customer` int NOT NULL,
  `id_carrier` int NOT NULL,
  PRIMARY KEY (`id_order`),
  KEY `orders_origin_idx` (`id_origin`),
  KEY `orders_user_idx` (`id_user`),
  KEY `orders_customer_idx` (`id_customer`),
  KEY `orders_carrier_idx` (`id_carrier`),
  CONSTRAINT `orders_carrier` FOREIGN KEY (`id_carrier`) REFERENCES `carriers` (`id_carrier`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_customer` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id_customer`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_origin` FOREIGN KEY (`id_origin`) REFERENCES `origins` (`id_origin`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=365 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'51346-187',16343,2,'16855158-8',10,15),(2,'55513-032',25553,3,'13258858-8',47,3),(3,'24385-542',20046,5,'15184158-8',43,5),(4,'68345-908',16492,5,'13258858-8',1,7),(5,'49873-065',22681,2,'16855158-8',25,3),(6,'14783-468',22959,1,'19184158-8',1,5),(7,'67475-313',16977,5,'13258858-8',10,8),(8,'63354-960',26156,1,'12184159-8',19,8),(9,'21130-373',23655,4,'16855158-8',6,11),(10,'55154-5534',22667,4,'19184158-8',42,10),(11,'59667-0078',19582,6,'15184158-8',38,9),(12,'60905-0026',19816,5,'15184158-8',40,1),(13,'0955-1045',22341,6,'13258858-8',8,10),(14,'63214-100',18023,1,'12184159-8',17,9),(15,'10096-0138',20351,6,'19184158-8',37,9),(16,'47202-1502',28479,4,'12184159-8',33,11),(17,'68927-3063',18215,6,'13258858-8',29,13),(18,'58118-6241',19149,4,'12184159-8',27,3),(19,'63323-161',16041,1,'13258858-8',20,11),(20,'10056-897',24471,1,'19184158-8',35,7),(21,'52731-7008',20351,1,'12184159-8',19,8),(22,'68987-023',28046,3,'19184158-8',40,15),(23,'50302-300',21435,5,'12184159-8',11,4),(24,'0703-7023',18436,3,'15184158-8',28,13),(25,'64376-138',28276,5,'12184159-8',31,5),(26,'68105-004',17078,4,'13258858-8',27,8),(27,'45802-950',20694,1,'13258858-8',9,2),(28,'41163-346',16952,3,'15184158-8',6,11),(29,'53808-0344',24449,6,'19184158-8',27,5),(30,'0517-0032',28788,1,'12184159-8',21,13),(31,'41190-281',25305,4,'13258858-8',12,12),(32,'76053-001',23906,5,'12184159-8',30,9),(33,'53942-299',29462,5,'19184158-8',8,4),(34,'54868-5290',27711,4,'19184158-8',38,5),(35,'36987-1612',20659,2,'15184158-8',2,13),(36,'42283-006',22072,6,'19184158-8',13,14),(37,'50991-320',20220,6,'19184158-8',26,4),(38,'13734-129',16200,5,'13258858-8',9,7),(39,'51991-334',29184,4,'12184159-8',48,1),(40,'49288-0930',22592,4,'15184158-8',19,14),(41,'50474-597',15014,3,'13258858-8',11,15),(42,'47682-221',24248,5,'12184159-8',13,11),(43,'65785-034',15191,5,'16855158-8',22,8),(44,'41250-004',23813,5,'13258858-8',10,12),(45,'0615-5589',22102,1,'19184158-8',21,2),(46,'65862-054',15258,5,'13258858-8',31,10),(47,'50845-0034',20626,2,'19184158-8',29,15),(48,'55316-852',21501,5,'16855158-8',39,14),(49,'12634-171',25745,3,'13258858-8',13,15),(50,'0615-7705',23871,4,'13258858-8',5,10),(51,'0006-0005',16231,1,'16855158-8',31,9),(52,'50804-620',18607,5,'15184158-8',28,5),(53,'42406-001',16699,2,'19184158-8',48,9),(54,'36800-903',19676,5,'13258858-8',31,12),(55,'65224-700',24159,4,'19184158-8',34,14),(56,'0378-1051',27678,1,'19184158-8',14,2),(57,'0904-5963',27269,3,'15184158-8',43,1),(58,'68084-549',17428,3,'15184158-8',8,15),(59,'48951-1115',22348,4,'13258858-8',6,10),(60,'57243-016',28386,6,'19184158-8',44,8),(61,'68180-886',24454,2,'13258858-8',35,4),(62,'37808-038',28975,1,'16855158-8',7,6),(63,'15751-2286',18841,3,'15184158-8',5,4),(64,'44924-016',15770,6,'13258858-8',22,2),(65,'59535-9801',28534,5,'19184158-8',17,5),(66,'67296-0315',19803,5,'12184159-8',14,1),(67,'0121-0727',24324,3,'19184158-8',7,6),(68,'55150-117',23527,3,'13258858-8',33,5),(69,'0268-6647',28261,4,'13258858-8',30,6),(70,'27293-012',19096,2,'19184158-8',16,10),(71,'61601-1137',22569,6,'13258858-8',7,14),(72,'51134-0062',24316,5,'15184158-8',14,2),(73,'55154-8387',25772,4,'12184159-8',49,6),(74,'20276-155',16303,1,'16855158-8',2,5),(75,'14783-434',24687,2,'12184159-8',28,4),(76,'66215-302',22012,1,'13258858-8',18,4),(77,'56062-335',22663,5,'12184159-8',8,14),(78,'0338-0685',24588,6,'13258858-8',7,5),(79,'49349-947',18605,5,'16855158-8',40,5),(80,'12488-1300',17597,1,'13258858-8',14,2),(81,'0407-1412',23690,2,'16855158-8',49,8),(82,'55926-0012',16296,1,'12184159-8',20,5),(83,'0713-0224',18957,1,'13258858-8',26,13),(84,'36987-2711',28742,6,'13258858-8',7,6),(85,'68084-583',27117,2,'15184158-8',2,5),(86,'0074-3165',25407,3,'16855158-8',32,12),(87,'52125-378',16584,5,'12184159-8',22,9),(88,'67467-623',19837,4,'16855158-8',49,11),(89,'21130-768',27170,1,'13258858-8',23,13),(90,'55154-6986',22073,1,'12184159-8',22,3),(91,'54868-5309',29903,2,'13258858-8',13,12),(92,'21695-850',23516,2,'12184159-8',31,2),(93,'64942-0902',21412,2,'19184158-8',29,4),(94,'49288-0355',15440,5,'19184158-8',15,7),(95,'61919-401',28478,6,'15184158-8',32,9),(96,'21695-113',24824,6,'13258858-8',30,9),(97,'64246-0001',23582,5,'16855158-8',48,8),(98,'76237-262',29519,6,'13258858-8',15,1),(99,'67143-3102',27763,1,'15184158-8',16,6),(100,'59779-912',28563,2,'12184159-8',34,14),(101,'68745-2027',22728,3,'12184159-8',43,14),(102,'0603-2217',19198,1,'16855158-8',5,9),(103,'55312-236',19176,6,'19184158-8',26,6),(104,'54575-318',16690,2,'12184159-8',23,10),(105,'60899-010',29318,4,'13258858-8',36,2),(106,'63736-001',21683,5,'19184158-8',17,4),(107,'76329-6300',17887,5,'12184159-8',16,14),(108,'60505-0191',23937,6,'15184158-8',13,8),(109,'0378-1001',21180,5,'16855158-8',15,6),(110,'68788-9837',25093,6,'19184158-8',29,14),(111,'11822-0900',28783,3,'16855158-8',46,11),(112,'0115-5213',26965,4,'15184158-8',27,11),(113,'49884-235',17065,3,'16855158-8',16,1),(114,'45802-952',29665,4,'12184159-8',41,15),(115,'35356-848',16104,3,'15184158-8',39,2),(116,'52123-010',24006,1,'19184158-8',18,7),(117,'63148-556',19810,5,'16855158-8',3,15),(118,'43269-645',15277,2,'13258858-8',2,13),(119,'51079-375',29982,5,'15184158-8',35,6),(120,'10096-0315',29166,4,'12184159-8',15,1),(121,'68047-252',19243,6,'12184159-8',38,1),(122,'51346-227',16815,3,'16855158-8',10,3),(123,'76070-130',23624,5,'13258858-8',37,1),(124,'16571-213',26241,5,'19184158-8',46,8),(125,'17312-024',15530,1,'15184158-8',19,13),(126,'13668-150',20874,5,'19184158-8',49,1),(127,'54868-5750',15849,2,'13258858-8',24,4),(128,'51545-110',29529,1,'13258858-8',37,3),(129,'52841-010',23742,3,'19184158-8',48,1),(130,'57520-0708',21764,3,'15184158-8',10,5),(131,'10337-815',29220,5,'16855158-8',23,13),(132,'0591-5325',21426,1,'12184159-8',17,8),(133,'24794-224',15982,3,'16855158-8',39,12),(134,'50383-233',15479,4,'12184159-8',3,10),(135,'36987-1543',21778,6,'13258858-8',27,3),(136,'27808-037',19540,4,'15184158-8',41,10),(137,'65923-977',21197,2,'13258858-8',16,14),(138,'21130-332',18444,6,'16855158-8',11,5),(139,'53808-0604',19010,2,'19184158-8',26,7),(140,'54838-511',15057,2,'16855158-8',23,5),(141,'33261-955',28651,5,'19184158-8',3,5),(142,'52125-214',22392,6,'13258858-8',25,7),(143,'0187-5200',27603,4,'15184158-8',46,5),(144,'64679-412',21076,1,'19184158-8',24,11),(145,'68084-430',25153,2,'15184158-8',34,4),(146,'0781-2201',29419,5,'13258858-8',17,14),(147,'55316-544',15397,1,'13258858-8',30,7),(148,'0904-5415',25640,3,'12184159-8',35,6),(149,'30142-397',15046,2,'16855158-8',24,6),(150,'55154-2735',29142,2,'13258858-8',20,1),(151,'52584-389',17142,4,'13258858-8',4,5),(152,'61727-305',23598,2,'15184158-8',35,15),(153,'37808-430',22798,5,'16855158-8',50,12),(154,'59762-1300',26917,1,'16855158-8',11,4),(155,'68180-385',18811,6,'16855158-8',3,7),(156,'0378-0873',28250,1,'12184159-8',18,10),(157,'62584-331',19650,3,'15184158-8',41,3),(158,'56062-160',26458,3,'16855158-8',48,5),(159,'43063-340',28527,6,'12184159-8',16,8),(160,'49348-155',29380,5,'12184159-8',46,2),(161,'16590-606',24291,6,'19184158-8',28,1),(162,'68737-240',25549,5,'13258858-8',16,7),(163,'55714-4625',19926,1,'15184158-8',36,14),(164,'46708-031',23567,1,'12184159-8',25,8),(165,'76485-1014',21635,4,'13258858-8',41,6),(166,'49035-452',20541,5,'19184158-8',45,14),(167,'53807-129',23160,2,'19184158-8',5,10),(168,'29784-100',19837,3,'19184158-8',12,10),(169,'0536-3756',28287,4,'13258858-8',14,12),(170,'24236-389',24162,2,'19184158-8',34,13),(171,'35192-010',29901,6,'12184159-8',42,8),(172,'49349-004',16281,2,'16855158-8',11,1),(173,'51672-1352',15396,1,'15184158-8',1,8),(174,'65342-1009',19385,2,'16855158-8',14,15),(175,'49404-203',21667,6,'12184159-8',10,2),(176,'68084-743',21046,5,'13258858-8',32,1),(177,'0172-4960',20960,1,'13258858-8',42,2),(178,'0904-5781',16419,4,'12184159-8',22,3),(179,'54868-5239',15028,3,'12184159-8',7,8),(180,'57520-0098',29153,3,'15184158-8',31,10),(181,'52125-320',24404,1,'12184159-8',6,9),(182,'50523-546',28083,6,'13258858-8',46,11),(183,'0378-0353',16523,6,'19184158-8',13,2),(184,'13668-034',28055,1,'15184158-8',43,3),(185,'37000-049',21596,6,'16855158-8',25,5),(186,'67253-391',16712,3,'15184158-8',26,1),(187,'36800-424',16532,5,'15184158-8',17,12),(188,'52125-931',25238,5,'13258858-8',25,8),(189,'55154-8389',29105,1,'13258858-8',48,12),(190,'66424-030',15641,6,'16855158-8',11,14),(191,'46581-870',23835,6,'19184158-8',27,12),(192,'59762-1005',27303,5,'15184158-8',28,13),(193,'40046-0034',18923,1,'12184159-8',45,12),(194,'42508-265',25167,4,'12184159-8',34,10),(195,'58668-2131',28188,5,'16855158-8',3,10),(196,'55312-003',23466,5,'15184158-8',34,11),(197,'65649-211',20395,1,'16855158-8',9,13),(198,'66336-843',23823,5,'16855158-8',11,8),(199,'58593-826',23948,5,'19184158-8',22,14),(200,'54868-5990',27833,4,'13258858-8',42,14),(201,'42023-126',29780,1,'16855158-8',27,10),(202,'42254-303',15067,6,'12184159-8',13,4),(203,'63730-220',16257,1,'16855158-8',1,14),(204,'55118-460',18433,6,'13258858-8',9,9),(205,'10237-832',21938,5,'13258858-8',36,15),(206,'12634-987',28506,1,'13258858-8',39,11),(207,'33992-4949',17899,3,'13258858-8',11,1),(208,'21695-832',15343,4,'13258858-8',16,15),(209,'10210-0011',27904,3,'12184159-8',35,10),(210,'0703-2191',25132,6,'13258858-8',25,5),(211,'13734-026',26537,6,'15184158-8',15,8),(212,'33261-458',29805,6,'15184158-8',27,2),(213,'55628-9204',16988,5,'19184158-8',10,6),(214,'67850-013',28607,2,'19184158-8',15,10),(215,'55319-132',25335,6,'12184159-8',12,8),(216,'52305-200',16691,2,'16855158-8',20,1),(217,'70253-104',26882,2,'19184158-8',17,14),(218,'61919-047',26642,2,'13258858-8',24,11),(219,'58118-1520',21928,3,'15184158-8',11,8),(220,'23155-218',23287,5,'16855158-8',2,15),(221,'43269-840',18249,3,'19184158-8',37,5),(222,'36987-1792',17246,6,'19184158-8',10,7),(223,'55910-308',28185,2,'13258858-8',40,8),(224,'51346-172',28033,4,'16855158-8',34,15),(225,'0338-0351',24921,5,'16855158-8',8,13),(226,'19515-891',26513,6,'15184158-8',9,12),(227,'0067-5070',21208,6,'13258858-8',41,10),(228,'49580-0383',21935,1,'13258858-8',44,9),(229,'12634-687',17571,4,'15184158-8',31,15),(230,'21695-173',22169,5,'16855158-8',18,3),(231,'10481-3012',22438,3,'12184159-8',37,14),(232,'49349-550',28183,5,'12184159-8',26,5),(233,'63776-033',19388,1,'12184159-8',8,3),(234,'36987-1468',15100,3,'12184159-8',33,4),(235,'52125-937',15296,6,'13258858-8',50,12),(236,'66435-105',23581,3,'19184158-8',45,2),(237,'48951-7040',21420,6,'13258858-8',47,12),(238,'49999-832',26795,3,'13258858-8',49,5),(239,'42254-069',28142,2,'19184158-8',45,2),(240,'0025-1451',21941,4,'16855158-8',5,5),(241,'63941-189',24824,6,'12184159-8',48,8),(242,'54569-0434',18557,3,'15184158-8',26,12),(243,'50600-002',29800,6,'13258858-8',5,7),(244,'55910-041',19355,2,'12184159-8',23,11),(245,'52125-935',28509,5,'13258858-8',7,9),(246,'0002-7512',21938,6,'13258858-8',33,5),(247,'49999-886',28913,1,'13258858-8',35,4),(248,'61010-5500',27200,1,'15184158-8',29,10),(249,'68016-140',26604,2,'12184159-8',21,3),(250,'51668-402',21554,3,'13258858-8',4,12),(251,'49035-242',29531,2,'19184158-8',16,6),(252,'61041-212',22158,6,'15184158-8',8,3),(253,'47335-330',22558,4,'16855158-8',17,10),(254,'37000-358',15042,6,'16855158-8',37,4),(255,'54868-5907',23175,6,'12184159-8',45,4),(256,'52125-756',28494,1,'12184159-8',27,3),(257,'58503-034',16523,2,'19184158-8',12,13),(258,'0615-3589',22349,5,'19184158-8',40,10),(259,'65643-416',25140,1,'15184158-8',50,2),(260,'24236-577',21886,2,'13258858-8',17,2),(261,'68788-0504',29504,3,'16855158-8',45,5),(262,'21695-304',24176,4,'12184159-8',9,11),(263,'76439-125',27830,4,'12184159-8',29,13),(264,'43269-687',29673,3,'12184159-8',39,10),(265,'52233-005',23579,4,'15184158-8',35,7),(266,'30142-550',25892,6,'12184159-8',27,3),(267,'63940-226',22054,6,'12184159-8',2,8),(268,'52959-728',21718,6,'12184159-8',48,6),(269,'62032-130',21690,1,'19184158-8',47,9),(270,'59021-004',20498,2,'12184159-8',50,2),(271,'0869-0693',24148,1,'19184158-8',15,10),(272,'53345-018',16225,1,'13258858-8',26,11),(273,'16590-326',15129,3,'16855158-8',35,9),(274,'54838-107',26791,4,'19184158-8',19,10),(275,'60512-6613',26847,6,'15184158-8',40,4),(276,'60793-430',16507,5,'19184158-8',38,6),(277,'49035-187',16507,6,'12184159-8',24,2),(278,'66715-9727',27554,6,'16855158-8',49,7),(279,'64205-541',28963,4,'12184159-8',12,8),(280,'49035-346',15115,2,'16855158-8',13,1),(281,'54569-1970',26262,2,'16855158-8',48,5),(282,'36987-1018',21163,3,'16855158-8',5,3),(283,'55749-300',17008,5,'15184158-8',35,12),(284,'0187-5102',28714,4,'12184159-8',43,7),(285,'55670-133',28529,3,'16855158-8',28,10),(286,'49967-372',18841,5,'19184158-8',2,14),(287,'68084-320',15513,2,'12184159-8',25,13),(288,'0268-0131',29774,5,'19184158-8',37,4),(289,'0573-2620',27086,5,'19184158-8',11,3),(290,'36987-2736',25055,3,'13258858-8',31,7),(291,'11084-054',22618,3,'15184158-8',17,11),(292,'68428-028',21376,5,'16855158-8',41,11),(293,'59734-275',22183,1,'19184158-8',14,4),(294,'0603-1491',24458,5,'16855158-8',24,5),(295,'13537-325',16295,1,'16855158-8',41,6),(296,'64455-993',19907,4,'19184158-8',2,15),(297,'61941-0227',19571,5,'12184159-8',32,13),(298,'98132-885',18277,5,'16855158-8',26,1),(299,'51004-1098',22062,5,'13258858-8',25,6),(300,'24658-213',24580,2,'13258858-8',46,4),(301,'14783-100',27101,4,'15184158-8',21,7),(302,'42421-775',27290,5,'12184159-8',25,15),(303,'50972-272',25932,3,'19184158-8',48,15),(304,'0615-7674',29240,2,'13258858-8',6,11),(305,'52959-113',24986,6,'15184158-8',22,10),(306,'50991-716',28718,1,'19184158-8',8,13),(307,'68084-259',25680,1,'13258858-8',33,10),(308,'0884-0396',16040,4,'16855158-8',30,9),(309,'0268-0652',27178,2,'13258858-8',6,4),(310,'0091-3715',25535,5,'16855158-8',31,2),(311,'11819-311',22258,2,'15184158-8',49,10),(312,'68151-2640',19310,6,'13258858-8',22,4),(313,'0078-0616',27593,4,'15184158-8',13,10),(314,'52815-121',20814,6,'19184158-8',44,13),(315,'41167-0673',27799,5,'13258858-8',1,2),(316,'55154-4379',18528,2,'15184158-8',32,4),(317,'0113-0419',19759,1,'15184158-8',18,2),(318,'0363-8190',28159,6,'12184159-8',14,6),(319,'57525-014',21156,5,'15184158-8',14,12),(320,'62750-050',18993,2,'13258858-8',50,15),(321,'0113-0302',18279,6,'16855158-8',43,8),(322,'30142-602',15678,6,'15184158-8',13,13),(323,'49999-884',18440,4,'15184158-8',14,14),(324,'49884-020',22800,1,'13258858-8',12,8),(325,'54868-0133',26614,3,'13258858-8',31,9),(326,'61095-100',17644,2,'16855158-8',37,6),(327,'66828-0030',27667,1,'16855158-8',50,11),(328,'67544-655',20127,2,'16855158-8',6,6),(329,'54868-5257',16490,1,'12184159-8',32,8),(330,'50114-5115',20109,1,'12184159-8',11,11),(331,'52959-389',21969,4,'16855158-8',24,7),(332,'55648-975',24828,2,'16855158-8',6,9),(333,'63667-956',25403,2,'12184159-8',27,2),(334,'54868-1744',25663,2,'15184158-8',43,4),(335,'25021-673',28688,1,'19184158-8',15,9),(336,'52959-702',25257,2,'16855158-8',23,14),(337,'68927-0819',27371,1,'15184158-8',1,3),(338,'59779-432',25930,2,'15184158-8',45,14),(339,'53808-1042',16379,4,'19184158-8',12,4),(340,'66336-570',27114,2,'12184159-8',23,14),(341,'36987-3180',26010,4,'15184158-8',45,5),(342,'0085-1733',25800,2,'12184159-8',16,8),(343,'33261-780',15709,5,'13258858-8',3,6),(344,'67457-393',17531,1,'19184158-8',15,11),(345,'0904-1103',22832,4,'12184159-8',37,8),(346,'51393-6445',26373,6,'16855158-8',29,15),(347,'59762-4538',21801,2,'15184158-8',17,12),(348,'0046-1104',26942,5,'15184158-8',42,10),(349,'0603-2544',25267,4,'19184158-8',7,8),(350,'63941-354',27903,3,'12184159-8',14,6),(351,'53808-0920',26845,3,'12184159-8',26,14),(352,'0268-0958',15635,6,'15184158-8',22,5),(353,'0904-5731',27141,2,'13258858-8',37,3),(354,'50114-1122',19433,5,'16855158-8',10,7);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_has_products`
--

DROP TABLE IF EXISTS `orders_has_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_has_products` (
  `id_order` int NOT NULL,
  `id_product` int NOT NULL,
  `quantity` float DEFAULT NULL,
  PRIMARY KEY (`id_order`,`id_product`),
  KEY `orders_has_products_p_idx` (`id_product`),
  KEY `orders_has_products_o_idx` (`id_order`),
  CONSTRAINT `order_has_products_o` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `origins_has_products_p` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_has_products`
--

LOCK TABLES `orders_has_products` WRITE;
/*!40000 ALTER TABLE `orders_has_products` DISABLE KEYS */;
INSERT INTO `orders_has_products` VALUES (1,255,54),(2,73,56),(3,174,74),(4,65,9),(4,308,63),(5,195,86),(5,243,95),(6,238,55),(8,137,50),(8,149,16),(10,262,26),(11,27,42),(11,241,25),(12,11,3),(12,47,18),(12,104,64),(13,313,65),(14,41,96),(14,90,33),(14,179,84),(16,304,79),(17,105,94),(17,257,20),(18,130,88),(18,194,34),(18,264,59),(20,39,70),(20,136,20),(21,31,28),(21,197,71),(22,25,22),(22,69,64),(24,98,18),(24,131,77),(25,321,30),(26,244,73),(27,11,55),(27,87,42),(27,257,49),(29,102,38),(29,261,40),(30,60,96),(30,257,33),(31,63,9),(32,44,71),(32,84,70),(32,246,89),(33,189,52),(33,209,17),(34,251,81),(34,328,59),(35,43,18),(35,83,98),(35,84,76),(35,205,40),(35,228,47),(36,279,65),(37,66,44),(37,273,64),(38,299,77),(39,11,71),(39,92,16),(39,150,70),(41,188,34),(46,84,29),(46,176,47),(46,322,56),(47,102,7),(47,131,89),(48,3,21),(48,108,82),(48,197,6),(50,96,65),(51,53,42),(52,103,76),(53,51,16),(53,101,54),(54,42,1),(54,62,26),(54,268,94),(54,288,5),(57,32,81),(57,76,93),(57,224,82),(58,299,75),(59,295,69),(59,309,49),(60,154,20),(60,277,66),(62,212,65),(63,4,54),(63,190,60),(63,318,19),(65,16,35),(65,57,60),(65,219,61),(66,111,31),(67,319,27),(68,97,47),(68,255,18),(68,287,13),(69,76,99),(70,159,25),(71,181,33),(71,304,11),(72,6,28),(72,95,72),(74,19,56),(76,273,37),(77,235,81),(77,312,75),(79,158,75),(81,30,10),(81,57,29),(81,119,10),(82,84,69),(82,111,27),(82,280,67),(83,164,91),(83,294,60),(84,47,57),(85,195,90),(85,213,60),(87,256,25),(89,64,63),(89,69,61),(89,100,58),(91,6,3),(91,300,18),(92,148,33),(93,43,64),(93,254,64),(94,220,87),(97,254,61),(100,81,36),(100,150,72),(101,149,5),(102,173,55),(102,221,93),(102,280,45),(104,207,90),(105,239,39),(105,324,21),(106,196,12),(106,215,36),(106,326,67),(108,167,17),(109,55,50),(109,83,44),(109,113,50),(109,309,26),(111,149,82),(111,210,10),(111,286,55),(114,74,55),(115,35,90),(115,146,70),(115,282,18),(116,247,55),(117,169,80),(117,287,73),(119,150,29),(119,255,89),(119,327,75),(120,242,64),(121,56,30),(121,168,89),(122,190,26),(122,229,58),(123,208,55),(124,175,91),(125,172,75),(127,79,66),(127,291,48),(129,282,32),(130,99,18),(130,307,83),(131,261,79),(132,276,85),(133,3,87),(133,138,25),(135,85,95),(135,96,98),(135,313,74),(136,87,47),(137,219,96),(138,10,50),(139,89,23),(140,246,93),(143,156,58),(143,246,8),(145,258,75),(145,280,48),(145,309,41),(147,63,78),(147,70,79),(147,144,93),(147,174,55),(147,262,83),(149,122,87),(149,161,57),(151,228,11),(151,288,57),(153,165,75),(154,130,47),(154,285,67),(154,325,61),(157,195,58),(158,192,31),(158,305,78),(159,10,27),(159,15,36),(162,6,64),(162,253,58),(163,236,88),(164,9,88),(164,137,87),(165,40,19),(166,258,14),(167,62,34),(167,70,7),(168,310,21),(169,113,45),(170,238,30),(170,320,36),(171,44,4),(171,207,18),(171,274,93),(172,240,99),(173,21,7),(173,22,66),(174,250,17),(174,262,57),(175,321,18),(176,158,22),(176,266,75),(177,200,2),(178,197,14),(178,251,30),(180,1,66),(180,80,54),(180,169,35),(180,286,37),(181,170,59),(182,24,3),(182,30,7),(182,273,12),(183,19,84),(183,52,8),(183,54,83),(183,113,25),(184,170,69),(184,285,51),(184,291,50),(185,176,44),(185,195,10),(186,86,46),(187,18,42),(187,209,33),(187,226,60),(187,286,23),(189,10,30),(189,285,5),(191,267,80),(192,230,44),(193,201,5),(193,324,28),(194,111,70),(194,231,13),(194,241,65),(194,309,59),(195,12,8),(195,253,38),(195,265,50),(196,101,18),(198,42,23),(198,57,57),(199,202,49),(200,68,18),(200,79,7),(201,98,49),(202,110,19),(202,194,6),(202,269,58),(204,83,11),(204,274,89),(205,7,35),(205,281,65),(206,201,67),(207,234,6),(207,264,13),(208,236,6),(208,246,84),(208,319,98),(210,100,18),(210,225,81),(212,101,31),(213,257,68),(213,284,16),(214,15,21),(214,250,53),(215,10,70),(216,250,25),(216,267,56),(218,284,12),(219,159,28),(219,192,48),(220,6,60),(220,234,48),(220,241,24),(221,147,80),(221,191,42),(222,284,11),(223,130,89),(224,60,32),(224,225,4),(224,273,85),(225,289,41),(227,247,79),(227,298,43),(227,323,28),(228,141,74),(228,253,55),(228,314,11),(229,10,94),(229,92,50),(229,205,48),(229,212,59),(229,252,34),(230,147,91),(231,22,73),(233,190,44),(233,221,81),(233,255,19),(234,47,76),(234,239,42),(235,6,19),(235,88,54),(236,73,46),(236,304,31),(237,101,9),(239,41,58),(242,23,11),(243,133,97),(243,150,24),(244,32,15),(244,52,53),(245,76,99),(245,133,31),(245,181,8),(245,212,43),(245,223,31),(245,280,73),(246,17,12),(246,134,19),(246,237,78),(246,254,84),(247,60,22),(247,70,55),(248,191,6),(249,241,29),(249,285,39),(250,227,42),(251,116,70),(252,88,64),(252,155,4),(252,321,95),(254,110,13),(254,130,65),(254,132,71),(255,9,5),(255,313,88),(256,117,69),(256,181,71),(257,101,38),(257,119,84),(257,163,19),(257,256,49),(258,80,96),(259,97,27),(259,193,71),(259,207,5),(261,96,24),(262,57,32),(263,50,62),(263,210,41),(263,312,77),(264,209,68),(264,302,24),(265,135,21),(265,186,19),(266,100,41),(266,193,57),(267,109,92),(267,111,54),(268,190,18),(270,172,55),(270,316,87),(272,153,27),(272,277,41),(272,282,4),(274,16,11),(274,282,93),(275,100,49),(276,21,77),(277,210,15),(277,230,24),(279,107,99),(280,20,86),(280,192,17),(280,288,37),(282,9,85),(282,213,75),(282,232,31),(282,245,88),(284,31,42),(286,275,30),(286,296,98),(287,230,58),(288,74,7),(288,171,53),(290,119,42),(291,27,60),(291,137,47),(291,286,22),(291,292,88),(292,77,39),(293,47,14),(294,251,60),(295,198,77),(297,73,49),(298,86,67),(298,265,48),(300,98,89),(300,231,6),(300,249,70),(301,215,30),(302,118,88),(302,172,21),(302,264,89),(304,95,59),(305,84,92),(305,277,89),(306,34,77),(306,305,41),(307,240,98),(308,305,58),(309,220,33),(309,267,5),(310,73,40),(314,238,64),(315,99,16),(317,14,49),(317,229,96),(319,238,94),(319,241,8),(320,176,91),(320,223,90),(321,219,62),(322,136,62),(323,29,66),(323,243,66),(325,154,32),(325,251,92),(328,313,2),(329,7,62),(329,196,41),(332,67,6),(333,89,84),(333,290,42),(333,330,57),(334,99,29),(335,174,11),(337,120,74),(337,279,41),(338,206,57),(339,87,74),(340,57,18),(342,104,62),(342,112,13),(343,127,75),(343,240,87),(344,12,86),(344,150,98),(344,258,80),(344,326,22),(345,88,32),(345,219,62),(346,258,43),(348,67,33),(348,239,33),(349,147,11),(351,29,9),(351,318,95),(352,197,3),(353,50,2),(353,54,72),(354,102,9),(354,165,79),(354,213,75);
/*!40000 ALTER TABLE `orders_has_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `origins`
--

DROP TABLE IF EXISTS `origins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `origins` (
  `id_origin` int NOT NULL AUTO_INCREMENT,
  `industry_name` varchar(100) NOT NULL,
  `identification_number` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `industry_address` varchar(45) NOT NULL,
  PRIMARY KEY (`id_origin`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origins`
--

LOCK TABLES `origins` WRITE;
/*!40000 ALTER TABLE `origins` DISABLE KEYS */;
INSERT INTO `origins` VALUES (1,'Frigomerc','54872118','Paraguay','Capitan Lombardo 585'),(2,'Beef Paraguay','68952478','Paraguay','Julian Isfran 632'),(3,'Swift','81181818','Argentina','Edison 1452'),(4,'Minerva','12221255-k','Brasil','Barretos 2147, Tocantins'),(5,'Pulsa','5245555','Uruguay','Calle Pando S/N, Canelones'),(6,'Red Carnica','54417469-88','Colombia','Cienaga de oro 1555');
/*!40000 ALTER TABLE `origins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id_permission` int NOT NULL AUTO_INCREMENT,
  `create_permission` tinyint NOT NULL,
  `read_permission` tinyint NOT NULL,
  `modify_permission` tinyint NOT NULL,
  `delete_permission` tinyint NOT NULL,
  `id_user` varchar(45) NOT NULL,
  PRIMARY KEY (`id_permission`),
  UNIQUE KEY `id_user` (`id_user`),
  KEY `permissions_user_idx` (`id_user`),
  CONSTRAINT `permissions_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,1,1,1,1,'15184158-8'),(2,1,1,1,1,'16855158-8'),(3,1,1,1,0,'13258858-8'),(4,0,1,0,0,'12184159-8'),(5,1,1,1,0,'19184158-8');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id_product` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `product_code` varchar(45) NOT NULL,
  `product_brand` varchar(100) NOT NULL,
  `production_date` date NOT NULL,
  `expiration_date` date NOT NULL,
  `batch` varchar(30) NOT NULL,
  `stock` int NOT NULL,
  `id_origin` int NOT NULL,
  PRIMARY KEY (`id_product`),
  KEY `products_origin_idx` (`id_origin`),
  CONSTRAINT `products_origin` FOREIGN KEY (`id_origin`) REFERENCES `origins` (`id_origin`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Pail For Lid 1537','1560257','Pain and Fever','2021-08-27','2022-08-01','2788',133927,3),(2,'Squash - Pepper','7806433','Kaopectate Regular Strength Peppermint Flavor Anti Diarrheal','2021-05-13','2022-07-05','2155',298722,4),(3,'Nut - Pistachio, Shelled','8849759','VAPRISOL DEXTROSE IN PLASTIC CONTAINER','2021-05-25','2023-01-11','7851',186336,1),(4,'Nut - Almond, Blanched, Ground','1978646','Ambien','2021-07-28','2021-12-30','6544',227166,3),(5,'Icecream Bar - Del Monte','9637534','Alclometasone Dipropionate','2021-08-05','2021-10-04','5451',40948,2),(6,'Rabbit - Legs','11617342','Herceptin','2021-04-15','2022-09-23','6835',175288,6),(7,'Hipnotiq Liquor','3796817','Hydrocodone Bitartrate and Acetaminophen','2021-07-21','2022-06-19','2855',292780,3),(8,'Cake - Mini Cheesecake','1878407','Butalbital, Acetaminophen, and Caffeine','2021-08-04','2021-09-30','4784',75730,5),(9,'Wine - Riesling Alsace Ac 2001','11108848','enfuselle Acne Clarifying','2021-08-04','2022-02-10','2190',119802,6),(10,'Extract - Rum','10394882','Caffeine Citrate','2021-05-09','2021-09-19','5371',27882,6),(11,'French Kiss Vanilla','5310344','PRAVASTATIN SODIUM','2021-07-27','2022-04-17','1227',164534,5),(12,'Soup - Verve - Chipotle Chicken','536012','Treatment Set TS349573','2021-08-09','2022-03-21','2861',287922,1),(13,'Carroway Seed','1453076','isosorbide mononitrate','2021-05-22','2021-11-01','2669',271886,1),(14,'Cinnamon Buns Sticky','1898768','Diltiazem Hydrochloride','2021-07-03','2022-08-13','3611',279324,5),(15,'Corn Syrup','11586093','sunmark Cold','2021-07-15','2021-12-31','1841',108806,2),(16,'Beef - Baby, Liver','3026075','SARAH CHAPMAN London SKINESIS Dynamic Defence Concentrate Anti-Ageing Day Cream SPF 15','2021-08-13','2021-09-26','3864',268612,3),(17,'Clams - Littleneck, Whole','2257284','GALLIUM CITRATE GA-67','2021-08-14','2021-11-13','3223',285010,1),(18,'Lamb - Leg, Diced','10585008','Cough and Bronchial with Zinc','2021-06-20','2022-06-04','2946',185881,1),(19,'Knife Plastic - White','768610','Albuterol Sulfate','2021-06-20','2022-03-19','3397',219598,3),(20,'Beer - Camerons Cream Ale','2927544','Peter Island Continous sunscreen kids','2021-07-31','2022-01-06','6562',235596,6),(21,'Chevere Logs','3901929','Migraines','2021-07-02','2022-08-26','4323',246441,6),(22,'Soup - Cream Of Broccoli, Dry','1670568','Travoprost Ophthalmic Solution 0.004%','2021-06-28','2022-12-31','4211',124557,1),(23,'Compound - Rum','13118050','Genuine First Aid - Home First Aid','2021-05-26','2022-06-24','3227',37452,1),(24,'Appetizer - Seafood Assortment','6215023','Eastern White Pine','2021-04-12','2023-01-27','6791',266763,3),(25,'Crab - Claws, Snow 16 - 24','13021587','Antibacterial Hand Sanitizer Spray','2021-04-26','2022-12-22','3936',172640,4),(26,'Snapple - Mango Maddness','5350165','Ginger Blossom Antibacterial Foaming Hand Wash','2021-08-07','2022-05-13','7834',260860,5),(27,'Scallops - In Shell','5581407','Reef Safe SPF 45','2021-05-15','2023-01-22','4259',119889,5),(28,'Spoon - Soup, Plastic','1577723','Carbamazepine','2021-04-30','2022-09-22','2121',63745,2),(29,'Table Cloth 54x72 White','8197926','Gemfibrozil','2021-04-02','2022-03-02','5839',241326,6),(30,'Lamb - Racks, Frenched','5484019','Pollens - Trees, Hickory, Shagbark Carya ovata','2021-04-16','2022-05-30','4138',247722,4),(31,'Wine - Vouvray Cuvee Domaine','400142','Ascomp with Codeine','2021-07-03','2022-12-02','4878',247835,6),(32,'Tea - Vanilla Chai','10571384','Amoxicillin','2021-08-14','2022-01-13','2202',186667,6),(33,'Lime Cordial - Roses','732727','Cystotone','2021-06-03','2022-06-28','732',201301,1),(34,'Truffle - Peelings','9430398','Zicam Cold Remedy Liqui-Loz','2021-07-23','2023-02-14','4062',66365,2),(35,'Fond - Chocolate','10315266','Hydrocodone Bitartrate and Acetaminophen','2021-08-16','2022-11-05','1643',233510,2),(36,'Sugar - Brown, Individual','9796822','GABAPENTIN','2021-07-25','2022-01-18','7567',102529,5),(37,'Ice Cream Bar - Rolo Cone','13064704','Nortriptyline Hydrochloride','2021-06-23','2022-07-04','3499',176878,2),(38,'Vinegar - Cider','11778184','Treatment Set TS350093','2021-04-12','2022-06-19','7384',232036,5),(39,'Tart Shells - Savory, 2','8762838','Carrington Moisture Barrier','2021-07-25','2022-08-25','6559',34500,2),(40,'Carbonated Water - Orange','12033984','Levetiracetam','2021-07-02','2021-11-16','5884',106082,3),(41,'Rice - Wild','4517512','Cepacol','2021-06-16','2022-04-23','4917',98739,3),(42,'Oil - Sunflower','3455788','Minocin','2021-06-19','2022-08-06','6605',217983,6),(43,'Table Cloth 54x72 Colour','9002211','Pepper Tree Pollen','2021-06-21','2022-04-18','2544',118234,5),(44,'Frangelico','2038609','BullFrog Quik Gel Sport','2021-06-02','2021-12-23','5373',194554,3),(45,'Extract - Raspberry','12843993','Kaletra','2021-06-01','2021-09-28','4033',152064,2),(46,'Pork - European Side Bacon','5072974','WellPatch Capsaicin Pain Relief','2021-06-09','2022-11-03','7148',83967,6),(47,'Nut - Macadamia','8112425','Goats Milk','2021-05-10','2022-08-21','3263',143029,2),(48,'Wine - Semi Dry Riesling Vineland','3070456','Nivea A Kiss of Vitamin Swirl Antioxidant Enriched Lip Care','2021-04-19','2023-02-19','4613',175528,6),(49,'Soup - Boston Clam Chowder','13107745','Athletes Foot','2021-06-07','2022-02-04','7495',294982,3),(50,'Coffee - Egg Nog Capuccino','8535196','SENSAI TRIPLE TOUCH COMPACT TC01','2021-06-03','2022-11-07','5962',239045,5),(51,'Currants','9950711','Hydroxyzine Pamoate','2021-05-12','2021-11-23','1030',142946,5),(52,'Glass - Wine, Plastic, Clear 5 Oz','3684866','Lysol','2021-05-07','2022-03-19','3864',200772,5),(53,'Wine - Red, Metus Rose','10776742','H-Acne Formula','2021-07-13','2022-07-12','4076',287485,4),(54,'Cream - 10%','5585543','Leader Allergy','2021-06-23','2022-02-12','1878',165860,3),(55,'Soup - Campbells','8948746','Hamster Epithelium','2021-08-10','2022-09-07','2610',228858,2),(56,'Cookie Dough - Chunky','3370154','Helixate FS','2021-05-06','2022-08-17','5018',139723,2),(57,'Hagen Daza - Dk Choocolate','2036136','Cough Relief','2021-07-22','2022-03-18','615',107917,5),(58,'Lamb - Whole, Frozen','10280210','Burr Oak','2021-08-02','2022-09-18','6034',94238,4),(59,'Cup - 3.5oz, Foam','7820325','Leader 12 Hour Nasal Decongestant','2021-05-08','2021-11-05','622',52280,5),(60,'Napkin - Beverge, White 2 - Ply','2470644','Sani-Hands','2021-07-12','2021-11-06','7016',89908,1),(61,'Cookie Chocolate Chip With','5669621','OHUI SUN SCIENCE Perfect Sunblock Blue EX plus','2021-04-26','2022-04-14','2170',36316,5),(62,'Wine - Balbach Riverside','8939391','NAPROXEN','2021-04-16','2022-05-06','4330',82224,3),(63,'Jam - Raspberry,jar','3382375','Amoxicillin and Clavulanate Potassium','2021-06-18','2021-12-20','4256',201143,4),(64,'Magnotta Bel Paese Red','9619255','Carrington Moisture Barrier','2021-05-19','2022-04-03','2606',20780,6),(65,'Yogurt - Plain','11888641','HyQvia','2021-08-23','2022-03-28','3645',150675,3),(66,'Brocolinni - Gaylan, Chinese','2120664','Allium Cepa Kit Refill','2021-04-17','2021-12-02','1631',238079,1),(67,'Pepperoni Slices','9327931','Foaming Hand Sanitizer','2021-07-04','2022-09-11','4872',108666,1),(68,'Tea - Herbal I Love Lemon','4212551','RUTA GRAVEOLENS','2021-05-13','2022-10-16','3673',110757,3),(69,'Lemon Tarts','6925530','Kinray Vitamin A D','2021-06-20','2022-12-10','4809',259904,5),(70,'Chervil - Fresh','3865896','Isopto Atropine','2021-05-19','2023-01-22','6679',214335,4),(71,'Truffle - Whole Black Peeled','751204','Risperidone','2021-06-21','2022-02-06','3311',194302,6),(72,'Cheese - Grana Padano','7101196','XtraCare Foaming Facial Cleanser','2021-07-19','2022-02-18','6378',250341,1),(73,'Island Oasis - Ice Cream Mix','1272946','Pollens - Trees, Tree Mix 6','2021-04-09','2022-10-15','1118',224671,1),(74,'Seedlings - Clamshell','7529735','Dior Snow Light Veil 010 Ivory SPF 20','2021-08-06','2022-10-21','6472',287361,4),(75,'Oil - Peanut','10244155','Avastin','2021-08-30','2022-06-17','4089',214075,4),(76,'Soup - Cream Of Broccoli','11156831','Eight Hour Cream Sun Defense for Face SPF 50 Sunscreen','2021-05-14','2021-12-27','6243',128628,4),(77,'Artichokes - Jerusalem','11924347','Laxative Pills','2021-08-29','2021-10-16','6623',290419,6),(78,'Cheese - Pied De Vents','11037246','Cladosporium cladosporioides','2021-06-02','2022-05-05','5051',291898,5),(79,'Wine - Alicanca Vinho Verde','6467874','Metformin Hydrochloride','2021-06-23','2022-04-04','7500',31645,6),(80,'Calypso - Black Cherry Lemonade','8898970','Biaxin','2021-08-14','2023-01-06','7388',287193,6),(81,'Bagelers - Cinn / Brown','5616370','SunMark Night Time Sleep Aid','2021-08-24','2022-12-16','2361',88148,2),(82,'Fish - Bones','12510245','Risperidone','2021-05-11','2022-01-23','4468',213850,6),(83,'Lobster - Base','6276345','METOPROLOL SUCCINATE','2021-07-28','2023-01-10','752',299151,3),(84,'Appetizer - Assorted Box','2272668','Gablofen','2021-06-16','2021-10-05','1156',71129,2),(85,'Wine - White, French Cross','1005139','Aspergillus flavus','2021-06-20','2022-11-18','6303',106340,1),(86,'Coffee - Cafe Moreno','5344819','Omeprazole','2021-05-11','2023-02-17','7937',183526,1),(87,'Wine - Delicato Merlot','11210079','LOreal Paris Ideal Moisture Dry Skin Broad Spectrum SPF 25 Sunscreen','2021-05-16','2022-04-08','6939',187478,6),(88,'Wine - White, Colubia Cresh','5925647','ACTIQ','2021-08-11','2021-12-07','1211',252656,5),(89,'Water - Tonic','10287961','Lovastatin','2021-07-19','2022-06-11','3117',222610,3),(90,'Rice - Aborio','772395','Aveeno Active Naturals','2021-05-27','2022-12-02','7777',280714,3),(91,'Bread - Roll, Soft White Round','4656859','Rizatriptan Benzoate','2021-04-05','2022-09-14','3513',79024,5),(92,'Barley - Pearl','9877094','cephalexin','2021-07-02','2022-08-01','3433',214131,5),(93,'Chocolate - Milk Coating','10982168','Gentamicin','2021-05-17','2022-12-20','5508',61259,3),(94,'Pork - Inside','12467396','Fluoxetine Hydrochloride','2021-04-28','2022-09-11','7278',27453,2),(95,'Milk - 1%','5061842','Trazodone Hydrochloride','2021-06-19','2022-11-04','4127',273675,4),(96,'Milk - Skim','8529330','diltiazem hydrochloride','2021-05-08','2021-12-28','896',242484,4),(97,'Vanilla Beans','334364','Cyclobenzaprine Hydrochloride','2021-07-19','2022-11-24','5815',164995,5),(98,'Magnotta - Bel Paese White','10646742','Budesonide','2021-04-05','2022-10-04','3239',97153,1),(99,'Oxtail - Cut','7285882','Vagistat-3','2021-06-11','2021-09-25','6924',283126,3),(100,'Bar - Sweet And Salty Chocolate','6602454','Lisinopril','2021-06-01','2023-02-14','7982',58659,1),(101,'Cape Capensis - Fillet','8316804','Metformin Hydrochloride','2021-04-18','2022-05-05','5481',27708,6),(102,'Veal - Inside Round / Top, Lean','7364064','Enalapril Maleate','2021-07-25','2023-02-19','6727',132797,1),(103,'Creme De Cacao White','2513975','OSCIMIN','2021-04-13','2021-10-21','2131',80054,1),(104,'Tomato - Tricolor Cherry','4590117','Esoterica','2021-08-21','2022-09-25','7724',225165,2),(105,'Wine - Cava Aria Estate Brut','13017324','ANTIBACTERIAL','2021-06-14','2022-08-05','5233',136409,3),(106,'Wine - Magnotta - Red, Baco','1972196','Enteric Coated Aspirin','2021-08-31','2023-01-13','674',184858,2),(107,'Bag - Regular Kraft 20 Lb','12169327','SUNLEYA Age minimizing sun care','2021-05-08','2022-11-15','6129',210468,1),(108,'Apples - Spartan','10589759','LEVOFLOXACIN','2021-08-04','2022-05-02','4070',291473,2),(109,'Sproutsmustard Cress','5244713','Topcare Ibuprofen','2021-05-07','2022-03-01','2518',69369,5),(110,'Nut - Hazelnut, Ground, Natural','583206','Flawless Finish Dual Perfection Makeup SPF 8 Buff','2021-07-27','2022-02-23','5232',75851,4),(111,'Glucose','1286847','PREDNISOLONE SODIUM PHOSPHATE','2021-08-28','2022-10-31','7645',178768,6),(112,'Eggplant Oriental','9709940','CVS PHARMACY','2021-05-12','2022-06-17','4208',129149,6),(113,'V8 - Tropical Blend','1073050','Betadine','2021-04-23','2022-12-30','2949',30480,5),(114,'Napkin - Beverage 1 Ply','7187037','Propafenone Hydrochloride','2021-06-22','2021-11-06','2326',60884,1),(115,'Sauce - Vodka Blush','2965389','Haloperidol Decanoate','2021-06-22','2021-09-27','7169',265609,1),(116,'Bandage - Fexible 1x3','4167742','ACYCLOVIR','2021-07-08','2022-02-14','2097',169524,3),(117,'Veal - Provimi Inside','8521380','EVEN BETTER COMPACT MAKEUP','2021-05-09','2022-12-23','1805',59512,2),(118,'Red Cod Fillets - 225g','7022466','Stool Softener Plus Stimulant Laxative','2021-05-04','2022-09-30','7816',248285,1),(119,'Tea - Darjeeling, Azzura','10746662','Carbon Dioxide','2021-04-04','2022-07-11','7986',28690,1),(120,'Cookie Dough - Chunky','807441','ReCreate Foundation','2021-05-22','2022-08-22','5140',248887,6),(121,'Cookie Double Choco','4868375','Crolom','2021-08-10','2023-02-08','4665',179693,6),(122,'Chocolate - Dark','9115024','Etodolac','2021-04-18','2022-04-30','1667',211857,6),(123,'Scallops - In Shell','9815333','SELZENTRY','2021-04-07','2022-04-11','5206',144673,2),(124,'Orange - Blood','10098084','Oxygen, Refrigerated','2021-05-27','2022-04-06','7052',55943,6),(125,'Fib N9 - Prague Powder','12504149','Azithromycin','2021-08-20','2023-03-01','4199',141970,4),(126,'Beef - Top Sirloin - Aaa','5163618','Natural Testosterone','2021-05-01','2022-12-30','5422',101486,6),(127,'Beef Dry Aged Tenderloin Aaa','1520283','Cyclobenzaprine Hydrochloride','2021-05-15','2022-04-06','945',175492,4),(128,'Milk - 2% 250 Ml','4464196','Microgestin','2021-08-27','2022-01-16','3894',228256,5),(129,'Wine - Rioja Campo Viejo','6046328','Eye Stream','2021-07-26','2022-03-17','7849',21540,3),(130,'Gloves - Goldtouch Disposable','12310394','cool mint acid reducer','2021-06-28','2022-01-19','2508',198067,1),(131,'Bread - 10 Grain','8651608','BioTerrain Plus','2021-06-10','2022-05-31','1669',280324,4),(132,'Beans - French','7634626','Pioglitazone','2021-08-26','2021-09-27','4215',24789,3),(133,'Cabbage Roll','1105585','Sulfasalazine','2021-07-04','2021-12-22','7749',245847,3),(134,'Juice - Mango','9772044','AMBROSIA ACANTHICARPA POLLEN','2021-04-01','2022-03-17','1970',270207,6),(135,'Food Colouring - Blue','4217957','Trandolapril','2021-04-21','2022-03-15','1829',158914,5),(136,'Lychee - Canned','5579305','Garnier Fructis Antidandruff','2021-07-22','2021-10-14','3621',115972,5),(137,'Foam Cup 6 Oz','11828247','Fuller Antibacterial Hand','2021-08-05','2022-10-06','1243',212916,2),(138,'Bread Cranberry Foccacia','5115489','ENGERIX-B','2021-04-27','2022-07-14','7547',144932,2),(139,'Lamb Leg - Bone - In Nz','476999','Tall Ragweed','2021-06-02','2021-11-27','3770',270553,4),(140,'Wine - Conde De Valdemar','12043663','EcoDent Res-Q-Dent','2021-05-18','2022-04-10','3463',60369,2),(141,'Curry Powder','7401565','methylphenidate hydrochloride','2021-08-26','2022-10-16','6001',141628,6),(142,'Pepper - Roasted Red','366653','Heal Grief','2021-07-15','2022-01-16','2354',100185,6),(143,'Coffee Swiss Choc Almond','12836518','Bouton','2021-06-02','2023-02-28','7464',242879,4),(144,'Pasta - Elbows, Macaroni, Dry','440371','METOPROLOL SUCCINATE','2021-07-11','2022-11-11','7989',126452,5),(145,'Calvados - Boulard','1288101','Phillips Stool Softener','2021-08-06','2021-11-22','1861',63647,4),(146,'Table Cloth 72x144 White','5727729','Lisinopril and Hydrochlorothiazide','2021-07-01','2022-05-10','2924',287236,5),(147,'Bread Country Roll','4279571','Mycophenolic Acid','2021-04-23','2022-07-28','2129',216298,6),(148,'Scallop - St. Jaques','5424834','RoC Multi Correxion 5 in 1 Perfecting','2021-04-29','2022-06-12','2259',139504,4),(149,'Fish - Halibut, Cold Smoked','3406548','PACIFIC SALMON','2021-06-15','2021-09-30','5620',153286,6),(150,'Appetizer - Spring Roll, Veg','5000122','Dibasic Sodium Phosphate, Monobasic Potassium Phosphate and Monobasic Sodium Phosphate','2021-04-01','2021-10-04','762',213923,1),(151,'Table Cloth 120 Round White','4493063','Lidocaine Hydrochloride','2021-07-08','2021-12-14','3552',192013,4),(152,'Dehydrated Kelp Kombo','9440162','METFORMIN HYDROCHLORIDE','2021-08-27','2023-01-21','4189',177200,4),(153,'Potatoes - Peeled','11283250','VANCOMYCIN HYDROCHLORIDE','2021-07-27','2021-10-21','1571',58841,1),(154,'Radish - Pickled','3634176','Ribavirin','2021-05-03','2022-04-11','4268',248427,2),(155,'Broom - Push','9128125','TOPCARE MAXIMUM STRENGTH URINARY PAIN RELIEF','2021-04-22','2022-01-24','5403',220929,2),(156,'Everfresh Products','12955025','Ulesfia','2021-08-18','2022-04-23','5726',290537,6),(157,'Cookie Dough - Oatmeal Rasin','4326077','Oxygen-Helium Mixture','2021-04-22','2022-02-21','5729',64727,2),(158,'Coffee Cup 16oz Foam','7791360','Prograf','2021-07-18','2022-02-14','3565',92224,3),(159,'Shrimp - 100 / 200 Cold Water','9043886','DG HEALTH EXTRA STRENGTH MEDICATED','2021-04-22','2022-02-14','7201',124537,4),(160,'Lid Coffee Cup 8oz Blk','7272954','Virx','2021-06-22','2022-06-04','735',224684,5),(161,'Bread - Frozen Basket Variety','13063381','Methocarbamol','2021-07-28','2021-11-18','6949',186518,3),(162,'Bread - Rolls, Corn','4167304','Duet DHA','2021-05-11','2021-10-28','3528',25565,6),(163,'Pepper - Paprika, Spanish','5864724','Non-Drowsy Formula Wal-Tussin','2021-06-07','2022-11-04','5594',119344,3),(164,'Wine - Red, Black Opal Shiraz','684651','Sulindac','2021-06-29','2021-12-30','7790',187648,5),(165,'Crush - Cream Soda','2165245','Docusate Sodium Stool Softener','2021-06-13','2023-02-11','3603',205907,4),(166,'Wine - Rosso Toscano Igt','12715812','Lexapro','2021-06-20','2022-05-24','2283',24284,5),(167,'Lemonade - Pineapple Passion','12331162','OXYCODONE AND ACETAMINOPHEN','2021-06-13','2022-09-05','1757',218000,3),(168,'Containter - 3oz Microwave Rect.','11438974','Duck Meat','2021-04-17','2022-11-01','3080',65228,1),(169,'Veal - Nuckle','8788477','ACTONEL','2021-08-01','2022-01-03','6591',155467,3),(170,'Fish - Bones','10645737','Ramipril','2021-07-31','2022-08-31','1876',41113,4),(171,'Rye Special Old','2942247','Gadavyt','2021-05-02','2022-03-25','7878',260493,5),(172,'Cheese - Asiago','2783816','POPULUS FREMONTII POLLEN','2021-08-26','2022-11-11','7047',56643,1),(173,'Icecream - Dstk Cml And Fdg','4996830','Ximino','2021-04-13','2022-02-09','6062',113680,2),(174,'Tofu - Soft','7948422','Badger SPF 30 Aloe Sunscreen','2021-04-19','2022-06-02','985',26372,4),(175,'Campari','9362460','CACTUS','2021-07-10','2022-06-03','4163',136464,4),(176,'Liqueur - Melon','902547','Finacea','2021-04-20','2022-06-20','7714',124631,4),(177,'Chinese Foods - Chicken Wing','313101','LORAZEPAM','2021-08-25','2023-02-15','7500',55595,4),(178,'Bread - White Mini Epi','112214','LACURA','2021-07-26','2023-02-05','5563',30511,2),(179,'Squid - U 5','8140482','Hydrocodone Bitartate and Acetaminophen','2021-05-27','2022-08-02','1931',52030,3),(180,'Lime Cordial - Roses','2021354','HELLO FLAWLESS OXYGEN WOW Broad Spectrum SPF 25 BRIGHTENING MAKEUP - Im Hopelessly Hot','2021-06-24','2021-10-10','6657',96013,1),(181,'Milk - Buttermilk','1680325','Palmers Amaranth','2021-05-30','2021-10-27','742',85617,2),(182,'Muffins - Assorted','3721305','Carvedilol','2021-04-11','2022-08-10','2546',120082,5),(183,'Tart Shells - Sweet, 3','3444540','Anticavity','2021-07-24','2022-05-18','7428',110405,4),(184,'Capon - Whole','11590874','Bromfed','2021-05-18','2022-06-15','2077',23236,6),(185,'Sprouts - Brussel','8324170','potassium phosphates','2021-08-15','2023-02-28','2442',21974,6),(186,'Oil - Pumpkinseed','592336','Secale Argentum Special Order','2021-07-09','2023-01-02','6478',278780,4),(187,'Tea - Herbal I Love Lemon','392572','Methocarbamol','2021-04-20','2022-02-01','5867',76152,5),(188,'Bread - French Baquette','4156909','citroma','2021-06-16','2022-11-08','4957',166725,3),(189,'Salmon - Atlantic, No Skin','9171888','Lemon Scented Hand Sanitizer','2021-08-20','2022-09-18','6498',91947,2),(190,'Tea - Herbal Sweet Dreams','4608545','Therapeutic','2021-04-01','2022-05-03','6418',43164,3),(191,'Onions - Red Pearl','7099522','Prazolamine','2021-04-13','2022-05-06','6579',251537,5),(192,'Fiddlehead - Frozen','8659090','SENSORCAINE','2021-05-12','2022-11-15','1547',217571,1),(193,'Wine - White, Lindemans Bin 95','12258076','Lemon Basil Antibacterial Foaming Hand Wash','2021-04-02','2022-02-03','3485',154863,2),(194,'Turkey Tenderloin Frozen','3980126','Armour Thyroid','2021-05-08','2022-11-05','2346',113986,3),(195,'Chocolate - Semi Sweet','11916332','Alprazolam','2021-04-15','2022-02-14','1896',113807,6),(196,'Potato - Sweet','5600559','hydrocodone bitartrate and acetaminophen','2021-05-11','2021-10-08','5123',293626,4),(197,'Muskox - French Rack','5129329','equaline athletes foot','2021-04-03','2022-10-13','3027',45280,5),(198,'Table Cloth 81x81 White','9071620','Argentum Nitricum','2021-07-05','2022-11-01','1160',205898,3),(199,'Chocolate - Sugar Free Semi Choc','347313','Trichothecium roseum','2021-08-21','2022-06-03','7634',155365,1),(200,'Wine - Chablis J Moreau Et Fils','9202990','Metoclopramide','2021-05-13','2021-12-13','4343',118428,4),(201,'Coffee Swiss Choc Almond','12134200','Cardene I.V.','2021-04-25','2022-10-18','3289',204735,1),(202,'Beans - Soya Bean','6728527','Infants Ibuprofen','2021-09-02','2023-02-16','709',203230,3),(203,'Bread - Roll, Soft White Round','9396621','Nighttime','2021-06-21','2022-06-24','4338',201033,3),(204,'Sauce - Marinara','10142503','Prednisone','2021-06-11','2022-05-15','6544',85277,6),(205,'Molasses - Fancy','7188690','dg health allergy','2021-07-03','2023-01-19','6220',79134,5),(206,'Wine - White, Pelee Island','2571452','CVS Sore Muscle Rub','2021-06-09','2022-06-02','966',266825,5),(207,'Eggplant Italian','5976894','Octreotide Acetate','2021-05-02','2023-02-05','1259',240425,1),(208,'Yogurt - Assorted Pack','8931993','Secret Antiperspirant','2021-08-15','2022-11-03','7710',79292,1),(209,'Veal - Shank, Pieces','2225089','Hydrocortisone Butyrate','2021-04-01','2022-09-01','5916',212559,5),(210,'Bread - Pumpernickle, Rounds','3245618','Rifampin','2021-05-20','2022-10-16','2866',286219,5),(211,'Bread - Assorted Rolls','9714648','Secret Hawaii Invisible','2021-04-02','2022-01-15','6349',64464,3),(212,'Pastry - Chocolate Marble Tea','8281191','Simvastatin','2021-07-27','2021-12-19','2604',168067,6),(213,'Syrup - Monin, Swiss Choclate','4602925','Topcare Sinus Congestion and Pain','2021-06-11','2021-12-06','1480',201135,2),(214,'Bagelers - Cinn / Brown','11575365','Lym D','2021-05-13','2023-01-21','7566',25334,6),(215,'Veal - Tenderloin, Untrimmed','6055194','Green Pea','2021-06-14','2022-11-05','5944',279104,2),(216,'Cake Sheet Combo Party Pack','10931971','Oxygen','2021-07-29','2021-11-17','2217',285511,2),(217,'Pasta - Bauletti, Chicken White','9516093','LOSARTAN POTASSIUM AND HYDROCHLOROTHIAZIDE','2021-06-24','2022-12-09','7283',240688,3),(218,'Mint - Fresh','7745657','Penicillin V Potassium','2021-06-27','2022-05-06','7918',268702,4),(219,'Waffle Stix','7047121','LAMICTAL','2021-04-02','2022-05-03','1491',205723,5),(220,'Sauce - Soy Low Sodium - 3.87l','7801059','Arnica e pl. tota 3','2021-05-26','2022-07-17','3501',210070,4),(221,'Wine - Delicato Merlot','12272607','Cold-EEZE','2021-08-13','2022-05-05','6363',229859,5),(222,'Peas Snow','4432742','Carbamazepine','2021-08-17','2022-10-22','5126',263867,4),(223,'Cups 10oz Trans','5844083','Lisinopril','2021-06-18','2022-05-17','1072',69396,2),(224,'Wine - Red, Cabernet Merlot','4290167','Gleevec','2021-05-05','2022-09-25','1389',232787,6),(225,'Energy Drink - Franks Original','6033591','No7 Lifting and Firming Foundation Sunscreen SPF 15 Walnut','2021-07-18','2021-11-08','3995',198801,2),(226,'Soup - Beef Conomme, Dry','3105016','NARS','2021-07-17','2023-02-01','7141',253892,5),(227,'Rolled Oats','952461','Mango Madness Anti Bacterial Hand Sanitizer','2021-05-06','2023-03-09','7080',77683,3),(228,'Butter Sweet','12554631','Ciclopirox','2021-06-12','2022-11-28','4938',31492,3),(229,'Steampan - Half Size Shallow','10760010','Levofloxacin','2021-05-27','2022-12-22','7513',207542,6),(230,'Sole - Iqf','7386373','Appbutamone','2021-06-22','2022-12-23','6861',252468,2),(231,'Fudge - Chocolate Fudge','8754928','Chlo Tuss','2021-04-18','2021-10-05','4375',156558,6),(232,'Hog / Sausage Casing - Pork','7502715','Pier 1 Imports Blueberry Parfait Anti-Bacterial Hand Sanitizer','2021-06-13','2021-12-03','2778',83218,6),(233,'Rootbeer','1210098','Allopurinol','2021-07-18','2021-09-18','7120',79407,4),(234,'Pepper - Cubanelle','11272116','waterless anti bacterial hand sanitizer','2021-05-14','2022-12-26','3007',284378,6),(235,'Cheese - Cheddar, Medium','10950825','Ecolab','2021-04-06','2022-09-26','3952',185935,5),(236,'Calvados - Boulard','6069216','Bio Iodine','2021-07-08','2022-04-06','1777',259377,4),(237,'Longos - Burritos','8431902','Furosemide','2021-05-28','2023-03-11','4121',225023,2),(238,'Chambord Royal','1163448','LANOXIN','2021-04-29','2023-01-28','2077',240696,5),(239,'Hot Chocolate - Individual','5109655','Olanzapine','2021-05-10','2021-10-21','7562',232928,3),(240,'Lamb - Whole Head Off,nz','7529834','Red Alder','2021-04-10','2022-02-16','6455',61235,4),(241,'Wine - Niagara,vqa Reisling','1757308','Hand wash','2021-07-04','2023-01-22','3840',181079,6),(242,'Fenngreek Seed','7282794','Hot Spot','2021-08-14','2021-12-22','2990',248224,3),(243,'Rosemary - Dry','7036154','Ciprofloxacin','2021-04-04','2022-07-10','6030',24112,1),(244,'Carrots - Mini, Stem On','7332829','Riomet','2021-07-14','2022-03-27','3206',146375,1),(245,'Beer - Upper Canada Lager','4140046','Loblolly Pine','2021-06-03','2023-01-12','1368',59122,6),(246,'Brandy - Bar','11085729','Strength F','2021-07-26','2022-02-17','5925',21910,3),(247,'Juice - Ocean Spray Kiwi','10757089','Coppertone SPORT PRO SERIES','2021-07-09','2021-12-10','1266',294041,2),(248,'Wine - Chardonnay Mondavi','10352199','Sleep Aid','2021-04-22','2022-09-22','7373',178428,4),(249,'Containter - 3oz Microwave Rect.','12019886','Silver Nitrate','2021-08-31','2022-02-25','2861',23755,4),(250,'Blueberries','2796684','Allergy Relief','2021-07-18','2021-10-02','7522',283010,5),(251,'Soup - Campbells, Minestrone','3523176','Nevirapine','2021-05-27','2021-12-02','1705',89557,1),(252,'Grouper - Fresh','11020372','Lamotrigine','2021-05-03','2023-01-22','1992',297474,6),(253,'Chinese Foods - Cantonese','11699326','everyone Hand Sanitizer','2021-06-26','2022-04-11','3036',283706,1),(254,'Eggs - Extra Large','9407742','Lucky Super Soft','2021-07-08','2022-07-31','1441',177904,1),(255,'Sauce - Vodka Blush','11353964','Equate Nicotine','2021-08-18','2021-11-29','7563',104124,1),(256,'Juice - Prune','12540976','Bodycology','2021-07-16','2021-10-19','5482',111788,4),(257,'Napkin - Beverage 1 Ply','7207484','SHISEIDO ADVANCED HYDRO-LIQUID COMPACT (REFILL)','2021-06-12','2023-01-30','1971',119329,1),(258,'Bread - Sour Batard','11224127','Clindamycin - Benzoyl Peroxide','2021-05-07','2022-02-18','2546',197560,5),(259,'Yeast - Fresh, Fleischman','11709478','Aspirin','2021-07-30','2022-07-25','7739',55289,2),(260,'Rambutan','10185378','NICOTINE','2021-07-11','2022-05-18','7788',75078,5),(261,'Broom And Broom Rack White','8044045','DG HEALTH EXTRA STRENGTH MEDICATED','2021-07-15','2022-12-08','2440',37625,3),(262,'Lamb - Ground','8337689','Kroger','2021-05-31','2022-10-20','1180',298230,5),(263,'Haggis','4799824','Carbidopa, Levodopa and Entacapone','2021-06-16','2022-06-07','4805',265986,5),(264,'Beans - Fava, Canned','2590522','cortisone','2021-07-01','2022-10-12','4352',224201,1),(265,'Beef - Inside Round','3276520','good sense ibuprofen','2021-08-21','2022-08-25','7454',140356,3),(266,'Bread - Frozen Basket Variety','7561329','Green Pepper','2021-04-16','2022-09-05','5223',289837,2),(267,'Coffee Beans - Chocolate','5078786','Bisacodyl','2021-05-20','2021-10-08','1009',52242,5),(268,'Chocolate - Chips Compound','5715591','Ondansetron','2021-08-14','2022-03-19','7499',120918,1),(269,'Cup - Paper 10oz 92959','3380181','Sore Throat','2021-08-10','2022-01-14','6771',235394,3),(270,'Soup - French Can Pea','1927466','LONDON Hand Sanitizer Vanilla Scent','2021-06-21','2022-06-19','4025',184846,5),(271,'Napkin - Dinner, White','8887470','Depo-Medrol','2021-04-02','2022-08-28','4386',170598,2),(272,'Turnip - Mini','8713291','Benzodent','2021-06-24','2022-09-27','5857',135665,1),(273,'Tea - Black Currant','2989565','Disulfiram','2021-07-04','2022-11-15','1912',250321,2),(274,'Spaghetti Squash','7581096','clomiphene citrate','2021-08-18','2022-01-26','2713',216079,5),(275,'Gelatine Leaves - Envelopes','12467937','Benazepril Hydrochloride','2021-05-08','2023-02-05','7627',77524,4),(276,'Squash - Acorn','144944','Promethazine hydrochloride','2021-05-26','2022-11-11','1510',179569,3),(277,'Oil - Safflower','10009155','ISAKNOX X202 WHITENING SECRET ESSENCE','2021-07-23','2021-12-28','1193',55526,6),(278,'Oyster - In Shell','4701635','PredniSONE','2021-06-07','2022-09-13','4120',291054,5),(279,'Beans - Black Bean, Dry','12657253','Metoprolol Tartrate','2021-06-13','2022-12-27','5229',139758,1),(280,'Sprite, Diet - 355ml','12166733','BZK','2021-05-12','2022-08-24','7818',82568,2),(281,'Bread Base - Goodhearth','10834808','Soft Care Antiseptic Skin Cleanser','2021-08-25','2022-10-22','3507',294845,2),(282,'Ice Cream Bar - Oreo Cone','8290203','Sweet Grape Antibacterial Hand','2021-06-13','2022-06-11','1679',215756,3),(283,'Hickory Smoke, Liquid','11215758','MISSHA M SIGNATURE REAL COMPLETE BB','2021-08-02','2023-01-17','1369',291294,6),(284,'Chestnuts - Whole,canned','2113003','Emetrol Cherry','2021-07-30','2022-04-05','1781',219023,1),(285,'Laundry - Bag Cloth','2111788','Bellaskin Skin-rebirth Contour','2021-05-17','2022-04-17','3733',239190,6),(286,'Tortillas - Flour, 8','5767762','Zyprexa','2021-04-03','2022-12-13','3036',247520,1),(287,'Dried Cranberries','106792','Buspirone HCl','2021-04-22','2021-10-17','1978',134755,1),(288,'Lamb - Shoulder','12598632','Nasal Decongestant','2021-04-23','2022-10-14','5593',264478,1),(289,'Cocoa Powder - Dutched','2048241','Fenofibrate','2021-08-01','2022-06-25','7976',213108,6),(290,'Nut - Almond, Blanched, Whole','4168459','Extra Strength Mapap','2021-07-25','2022-11-21','4186',86627,6),(291,'Wine - Rhine Riesling Wolf Blass','9450931','ZOFRAN','2021-06-11','2022-09-07','628',225139,3),(292,'The Pop Shoppe - Cream Soda','11310188','Dr. Scholls','2021-08-29','2022-04-06','7169',291111,5),(293,'Flour - Bran, Red','5358539','IRESSA','2021-08-29','2021-09-24','2578',84710,4),(294,'Table Cloth 53x69 White','7448350','Hydroxyzine Hydrochloride','2021-07-21','2022-08-13','5863',246433,4),(295,'Turnip - Mini','988689','Exchange Select Dark Tanning Sunscreen','2021-08-30','2022-05-26','7051',207673,4),(296,'Scallop - St. Jaques','4619057','Isopropyl Rubbing Alcohol with Wintergreen Oil','2021-08-29','2021-10-21','7114',249734,5),(297,'Bread - Pumpernickle, Rounds','7033002','Oxycodone Hydrochloride','2021-04-28','2022-11-12','2211',199336,4),(298,'Yeast Dry - Fermipan','10677571','CHAMOMILLA','2021-07-15','2022-08-04','7729',63771,5),(299,'Marjoram - Dried, Rubbed','1770813','CLE DE PEAU BEAUTE CREAM COMPACT FOUNDATION','2021-06-20','2023-02-08','6374',134089,3),(300,'Stock - Chicken, White','4683214','dg health sore throat','2021-08-30','2022-12-13','3214',69525,5),(301,'Bandage - Flexible Neon','202655','Allergy','2021-08-23','2021-10-09','3774',157536,6),(302,'Chocolate Bar - Coffee Crisp','6334663','BP Cleansing','2021-08-14','2022-08-08','2847',280215,3),(303,'Puree - Pear','6612358','Aspirin','2021-08-20','2023-01-16','3217',297848,1),(304,'Amarula Cream','8976580','Heartburn Relief','2021-08-21','2022-12-09','3924',29246,6),(305,'Thyme - Lemon, Fresh','10814198','Scent-A-Way Anti-Perspirant','2021-07-06','2022-01-14','5260',102038,5),(306,'Towels - Paper / Kraft','559036','Clorpres','2021-06-09','2021-09-22','5525',222660,5),(307,'Sprouts Dikon','2670391','Tamsulosin Hydrochloride','2021-07-12','2022-08-08','6390',138252,5),(308,'Wine - White, Gewurtzraminer','10876115','Peter Island Sunscreen','2021-05-19','2022-01-13','1276',47123,5),(309,'Shrimp - Black Tiger 16/20','6211994','Entereg','2021-04-28','2021-12-05','2594',258533,1),(310,'Sprouts - China Rose','11406529','Bisque','2021-07-15','2022-12-27','4787',137052,6),(311,'Lamb - Loin Chops','289642','Pleo Stroph','2021-07-08','2022-08-03','6635',103734,5),(312,'Pastry - Key Limepoppy Seed Tea','1988603','Loratadine','2021-04-04','2022-11-09','5328',163479,5),(313,'Quail - Jumbo Boneless','4744853','Quartz 30','2021-04-14','2022-12-15','1513',50634,4),(314,'Cod - Black Whole Fillet','9716886','Eve Lom Radiance Perfected Tinted Moisturiser Broad Spectrum SPF 15 Sunscreen','2021-07-03','2022-09-03','5042',130856,4),(315,'Table Cloth 53x53 White','8919347','Montelukast Sodium','2021-06-24','2021-10-25','3704',122450,5),(316,'Noodles - Steamed Chow Mein','6083828','Antibacterial Foam','2021-06-16','2022-05-31','3369',258267,3),(317,'Yogurt - Assorted Pack','3292490','Anti-acne','2021-07-28','2023-01-08','1267',31083,6),(318,'Juice - Pineapple, 341 Ml','6863247','Povidone-Iodine Solution','2021-05-20','2022-01-19','3545',68368,3),(319,'Oregano - Dry, Rubbed','2245513','Prazosin Hydrochloride','2021-05-15','2022-07-10','2029',155024,2),(320,'Amarula Cream','10014102','Topiramate','2021-04-23','2023-01-27','892',247317,1),(321,'Parsley - Dried','6273022','Surgical Scrub','2021-06-13','2022-12-19','6397',267177,5),(322,'Ginger - Pickled','10289889','Lunesta','2021-04-04','2022-07-21','1024',180635,2),(323,'Fib N9 - Prague Powder','3570395','Mountain Cedar','2021-07-27','2021-10-06','5839',271726,6),(324,'Bread - Italian Corn Meal Poly','9210096','Acyclovir','2021-06-11','2021-11-30','4891',76508,6),(325,'Mustard - Seed','10359280','Exchange Select Sunscreen','2021-08-23','2021-10-16','5569',204821,5),(326,'Anchovy Paste - 56 G Tube','7770359','Prednisone','2021-04-28','2022-07-01','7887',173261,2),(327,'Flour - Buckwheat, Dark','10698538','DEXTROSE','2021-05-30','2022-08-29','1232',93676,5),(328,'Slt - Individual Portions','2008395','Propranolol Hydrochloride','2021-04-03','2022-04-03','5824',124259,4),(329,'Seaweed Green Sheets','8369147','Sulfamethoxazole and Trimethoprim','2021-06-04','2021-11-19','4508',283430,5),(330,'Soup - Knorr, Veg / Beef','1019060','OXYCODONE AND ACETAMINOPHEN','2021-05-02','2023-01-28','3818',218294,6);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `total_compra_clientes_por_origen`
--

DROP TABLE IF EXISTS `total_compra_clientes_por_origen`;
/*!50001 DROP VIEW IF EXISTS `total_compra_clientes_por_origen`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_compra_clientes_por_origen` AS SELECT 
 1 AS `id_customer`,
 1 AS `customer_name`,
 1 AS `total_compras`,
 1 AS `id_origin`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id_user` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `user_password` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `user_type` varchar(45) NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `id_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','jorge','Leiva','jorege123','leiva1234','jorge.leiva@laempresa.com','user'),('12184159-8','Baltazar','Quiero','Baltazar.quiero','baltazar.1234','balti.quiero@laempresa.com','administrador'),('13258858-8','Matias','Quiero','matias.quiero','matias.1234','matias.quiero@laempresa.com','user'),('15184158-8','Diego','Quiero','diego.quiero','diego.1234','diego.quiero@laempresa.com','administrador'),('16855158-8','Laura','Avalos','laura.avalos','laura.1234','laura.avalos@laempresa.com','user'),('19184158-8','Benjamin','Gomez','Benjamin.gomez','benjamin.1234','benjamin.gomez@laempresa.com','user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `id_vehicle` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(20) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `plates` varchar(20) NOT NULL,
  `id_carrier` int NOT NULL,
  PRIMARY KEY (`id_vehicle`),
  KEY `vehicles_carrier_idx` (`id_carrier`),
  CONSTRAINT `vehicles_carrier` FOREIGN KEY (`id_carrier`) REFERENCES `carriers` (`id_carrier`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,'Mercedes','Cargo','RAMPLA','SKTR58',1),(2,'Volvo','Cargo','RAMPLA','OITR69',1),(3,'Mercedes','Cargo','RAMPLA','FR8457',2),(4,'Volvo','Cargo','3/4','MNTR65',2),(5,'Mercedes','Cargo','3/4','JLFF87',3),(6,'Mercedes','Cargo','RAMPLA','SS8899',3),(7,'Volvo','Cargo','3/4','GFHE54',4),(8,'Mercedes','Cargo','3/4','JLFF87',5),(9,'Mercedes','Cargo','RAMPLA','TY2899',5),(10,'Volvo','Cargo','3/4','SQRW77',6),(11,'Mercedes','Cargo','RAMPLA','MNGI12',6),(12,'Mercedes','Cargo','3/4','YTRI11',4),(13,'Mercedes','Cargo','RAMPLA','SS8844',3),(14,'Plymouth','Neon','Bulldozer','4A31K5DF9CE112200',6),(15,'Volvo','C70','Scraper','JN1BJ0HP3DM231693',1),(16,'Chevrolet','Malibu Maxx','Skid-Steer','TRUWC28N021138945',8),(17,'Nissan','Maxima','Scraper','WA1BV94L47D253211',2),(18,'BMW','X5','Compactor','1ZVBP8JZ5E5556022',8),(19,'Ford','Ranger','Backhoe','1N4AL3AP1EC527890',13),(20,'Lotus','Elise','Skid-Steer','1G6DK8EV8A0993038',7),(21,'Pontiac','Firefly','Crawler','WAUAF78E95A909297',2),(22,'Mitsubishi','Eclipse','Trencher','WAUKFAFL1CA815317',1),(23,'Mercury','Mountaineer','Trencher','WAULT58E75A826831',5),(24,'Lincoln','Continental','Scraper','5J6TF2H54DL612269',2),(25,'Mitsubishi','Mirage','Crawler','WAUJC68E23A062851',13),(26,'Toyota','Corolla','Excavator','WAUEL94F95N069857',4),(27,'Audi','A8','Excavator','1G6DA8EY1B0358967',2),(28,'Saab','9-5','Crawler','AU2GAFC1FN732416',15),(29,'Ford','Escort','Dump Truck','WVWAN7AN5DE574868',3),(30,'Honda','Insight','Compactor','2FMPK3J98FB895616',6),(31,'Mazda','Tribute','Bulldozer','WP0CA2A87AU118552',12),(32,'Jaguar','S-Type','Skid-Steer','4T1BD1EB0FU474802',12),(33,'Ford','Expedition','Grader','22HKRM3H30CH798180',10),(34,'Ford','Explorer','Scraper','1FTEX1EW7AK001203',15),(35,'Lamborghini','Reventón','Backhoe','JN1CV6AP9AM119580',1),(36,'Chevrolet','Tahoe','Scraper','1G4HP57257U760801',1),(37,'Lamborghini','Countach','Skid-Steer','WBSBR93442P936840',2),(38,'Subar','Outback','Skid-Steer','WBAGN63423D318889',8),(39,'Subaru','Impreza','Backhoe','1D7CW3BK7AS677568',3),(40,'Suzuki','Forenza','Compactor','1FTEW1C89FK412603',10),(41,'Volkswagen','Passat','Bulldozer','WAUKF98E08A370119',1),(42,'Lotus','Esprit','Dragline','WBA3N3C54EK128189',14),(43,'Kia','Sportage','Crawler','SCBDR33WX7C444605',15),(44,'Chevrolet','Cobalt','Compactor','WBA3C1C53EK962030',11),(45,'Volkswagen','Fox','Excavator','5N1AT2ML7FC162934',10),(46,'Volvo','S60','Excavator','JTHBP5C24E5173494',6),(47,'Mazda','929','Dragline','1FA6P0G72E5953057',12),(48,'Lincoln','LS','Backhoe','2G4WC582871849355',9),(49,'Chevrolet','Corvette','Bulldozer','5FRYD4H95GB668145',14),(50,'Isuzu','i-280','Dump Truck','2C3CCADG8DH958049',12),(51,'Toyota','Land Cruiser','Dragline','3G5DB03E55S760998',1),(52,'Chevrolet','Avalanche','Backhoe','WBSDE93422B418467',2),(53,'Chevrolet','Avalanche','Crawler','WBANW53589C121327',5);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sgesfinal'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_dias_por_vencer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_dias_por_vencer`(expiration_date DATE) RETURNS varchar(20) CHARSET utf8mb4
    NO SQL
BEGIN
	DECLARE dias_restantes VARCHAR(20);
    DECLARE vencimiento DATE;
    
    SET vencimiento = expiration_date;
    SET dias_restantes = datediff(curdate(),vencimiento);

RETURN if(dias_restantes < 1, "producto expirado", dias_restantes);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_precio_final` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_precio_final`(order_price FLOAT) RETURNS float
    NO SQL
BEGIN
	DECLARE resultado_iva FLOAT;
    DECLARE resultado_internacion FLOAT;
    DECLARE total FLOAT;
    
    SET resultado_iva = precio * 0.19;
    SET resultado_internacion = precio * 0.03;
    SET total = precio + resultado_iva + resultado_internacion;
    
RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_crear_usuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_crear_usuarios`(IN p_campo_id VARCHAR(20),IN p_id_user VARCHAR(45),IN p_firstname VARCHAR(45),IN p_lastname VARCHAR(45), IN p_user_name VARCHAR(45), 
IN p_user_password VARCHAR(45), IN p_email VARCHAR(45), IN p_user_type VARCHAR(45))
BEGIN
	
    DECLARE v_existe_id BOOL;
	SET v_existe_id = 0;
    SELECT v_existe_id as primer_existe_id; -- control
    
	SET @cadena_sql= concat("SELECT 1 INTO v_existe_id FROM users WHERE ",p_campo_id ," = " ,p_id_user); 
    SELECT v_existe_id as segundo_control;
    
	IF v_existe_id = 1 THEN
		SET @cadena_sql= concat("insert into users  (id_user, firstname, lastname, user_name, user_password, email, user_type) 
		values ('" ,p_id_user, "','" ,p_firstname, "','" ,p_lastname, "','" ,p_user_name, "','" ,p_user_password, "','" ,p_email, "','" ,p_user_type, "')");
		SELECT @cadena_sql as consulta; -- control
	ELSE 
		SELECT "Datos incorrectos o usuario existente" AS msg_error;
    
    END IF;
	-- prepara en ejecutar_query el contenido del string clausula
    PREPARE ejecutar_query FROM @cadena_sql;
    -- ejcuta el query
    EXECUTE ejecutar_query;
    -- sacalo de la memoria
    DEALLOCATE PREPARE ejecutar_query;
    -- por una razon que no logré entender nunca me devuelve el tercer control
	SELECT v_existe_id as tercer_control;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_orders_por` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_orders_por`(IN p_criterio varchar(50), IN p_orden varchar(30))
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `asignaciones_transporte`
--

/*!50001 DROP VIEW IF EXISTS `asignaciones_transporte`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `asignaciones_transporte` AS select `carriers`.`id_carrier` AS `id_carrier`,`carriers`.`carrier_name` AS `carrier_name`,`carriers`.`carrier_identification_number` AS `rut`,`vehicles`.`id_vehicle` AS `id_vehicle`,`vehicles`.`plates` AS `plates`,`containers`.`container_number` AS `container_number`,`orders`.`order_number` AS `order_number` from (((`carriers` join `orders` on((`carriers`.`id_carrier` = `orders`.`id_carrier`))) join `vehicles` on((`carriers`.`id_carrier` = `vehicles`.`id_carrier`))) join `containers` on((`vehicles`.`id_vehicle` = `containers`.`id_vehicle`))) order by `carriers`.`carrier_name`,`vehicles`.`plates` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fifo`
--

/*!50001 DROP VIEW IF EXISTS `fifo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fifo` AS select `products`.`product_name` AS `product_name`,`products`.`batch` AS `batch`,`products`.`production_date` AS `production_date`,`products`.`expiration_date` AS `expiration_date`,`origins`.`industry_name` AS `industry_name`,`origins`.`country` AS `country` from (`products` join `origins`) order by `products`.`expiration_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fifo_expiration`
--

/*!50001 DROP VIEW IF EXISTS `fifo_expiration`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fifo_expiration` AS select `products`.`product_name` AS `product_name`,`products`.`batch` AS `batch`,`products`.`production_date` AS `production_date`,`products`.`expiration_date` AS `expiration_date`,`origins`.`industry_name` AS `industry_name`,`origins`.`country` AS `country` from (`products` join `origins`) where (`products`.`expiration_date` < (cast(now() as date) - interval 1 month)) order by `products`.`expiration_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ordenes_creadas_x_usuario`
--

/*!50001 DROP VIEW IF EXISTS `ordenes_creadas_x_usuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ordenes_creadas_x_usuario` AS select `users`.`firstname` AS `firstname`,`users`.`lastname` AS `lastname`,`users`.`id_user` AS `id_user`,`orders`.`order_number` AS `order_number`,`orders`.`id_origin` AS `id_origin` from (`users` join `orders` on((`users`.`id_user` = `orders`.`id_user`))) order by `users`.`id_user`,`orders`.`id_origin` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_compra_clientes_por_origen`
--

/*!50001 DROP VIEW IF EXISTS `total_compra_clientes_por_origen`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_compra_clientes_por_origen` AS select `customers`.`id_customer` AS `id_customer`,`customers`.`customer_name` AS `customer_name`,sum(`orders`.`order_price`) AS `total_compras`,`orders`.`id_origin` AS `id_origin` from (`orders` join `customers` on((`customers`.`id_customer` = `orders`.`id_customer`))) group by `customers`.`id_customer`,`orders`.`id_origin` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-12 16:57:42
