-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: mysql
-- ------------------------------------------------------
-- Server version	8.0.26-google

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `fishku-db-prod`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `fishku-db-prod` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `fishku-db-prod`;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `notes` varchar(45) DEFAULT NULL,
  `weight` int NOT NULL,
  `id_fish` int NOT NULL,
  `id_consumer` int NOT NULL,
  PRIMARY KEY (`id`,`id_fish`,`id_consumer`),
  KEY `fk_ordering_fish1_idx` (`id_fish`),
  KEY `fk_ordering_consumer1_idx` (`id_consumer`),
  CONSTRAINT `fk_ordering_consumer1` FOREIGN KEY (`id_consumer`) REFERENCES `consumer` (`id`),
  CONSTRAINT `fk_ordering_fish1` FOREIGN KEY (`id_fish`) REFERENCES `fish` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=766 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (3,'',3,15,5),(6,'',3,59,6),(7,'',4,59,6),(25,'',1,22,20),(28,'',1,15,6),(37,'',3,56,22),(39,'',3,15,18),(41,'',1,22,18),(45,'',1,15,24),(46,'',5,15,32),(54,'',2,15,22),(61,'',1,15,23),(66,'',3,15,55),(70,'',4,15,69),(73,'',2,15,87),(74,'',2,15,92),(86,'',1,15,97),(87,'',1,15,102),(89,'',8,15,123),(103,'',1,15,107),(104,'',2,56,102),(107,'',2,15,118),(109,'',1,50,181),(112,'',1,15,162),(123,'',2,15,180),(126,'',1,50,206),(134,'',1,35,55),(142,'',1,50,212),(147,'',2,15,226),(148,'',1,15,220),(150,'',1,15,199),(160,'',1,57,231),(174,'',1,15,13),(183,'',2,15,244),(189,'',2,50,250),(193,'',2,50,259),(215,'',1,15,219),(217,'',20,15,7),(218,'',1,15,313),(223,'',3,37,317),(230,'',1,35,338),(232,'',1,15,348),(241,'',1,15,360),(245,'',1,58,362),(258,'',1,89,388),(263,'',1,15,396),(266,'',5,15,403),(268,'',1,15,393),(271,'',7,15,409),(272,'',1,60,409),(274,'',1,15,406),(276,'',4,15,416),(283,'',2,15,401),(284,'',1,15,430),(297,'',1,15,442),(298,'',1,15,443),(305,'',3,15,350),(306,'',1,15,447),(307,'',1,15,448),(320,'',1,15,460),(329,'',2,50,465),(330,'',1,15,461),(346,'',2,15,486),(350,'',1,15,488),(351,'',2,15,471),(353,'',1,15,399),(355,'',1,59,490),(361,'',2,15,499),(365,'',1,15,506),(366,'',1,15,508),(373,'',1,15,512),(376,'',10,15,517),(390,'',3,15,529),(400,'',1,15,458),(406,'',1,15,527),(407,'',1,22,527),(408,'',3,37,527),(428,'',1,89,576),(430,'',1,15,577),(431,'',1,15,578),(440,'',1,15,589),(450,'',1,15,604),(451,'',1,15,605),(452,'',4,15,607),(455,'',3,15,432),(469,'',1,15,610),(474,'',1,15,630),(475,'',2,37,630),(481,'',1,22,623),(498,'',1,35,298),(505,'',1,15,639),(512,'',1,48,662),(525,'',1,15,594),(531,'',13,15,555),(543,'',1,15,642),(548,'',1,15,457),(549,'',1,56,696),(552,'',2,15,697),(558,'',2,57,454),(579,'',1,15,540),(607,'',1,22,720),(634,'',1,22,403),(654,'',1,15,723),(657,'',1,22,723),(659,'',1,37,740),(669,'',1,37,743),(670,'',4,15,743),(678,'',1,15,750),(684,'',1,15,756),(685,'',1,15,705),(686,'',1,35,763),(688,'',1,15,381),(690,'',1,15,766),(692,'',1,15,767),(693,'',2,15,730),(694,'',3,15,772),(697,'',1,15,780),(702,'',3,37,247),(706,'',1,56,784),(707,'',1,15,785),(708,'',2,22,785),(709,'',1,15,789),(711,'',1,15,792),(714,'',1,37,796),(717,'',2,15,521),(720,'',1,15,808),(725,'',393,15,96),(727,'',1,56,809),(728,'',1,15,810),(733,'halo',1,22,815),(747,'',1,143,827),(748,'',1,15,828),(750,'',1,15,833),(752,'',4,22,2),(753,'',1,15,2),(754,'',1,35,2),(755,'',1,37,2),(756,'',1,48,2),(757,'',1,56,2),(758,'tes ',1,22,824),(759,'',1,50,835),(763,'',1,35,840),(765,'',1,15,843);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer`
--

DROP TABLE IF EXISTS `consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `address` varchar(300) NOT NULL,
  `photo_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=847 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer`
--

LOCK TABLES `consumer` WRITE;
/*!40000 ALTER TABLE `consumer` DISABLE KEYS */;
INSERT INTO `consumer` VALUES (1,'narutosh','adisti@gmail.com','$2b$10$DEzgFHK0py9h//xhu6SsZepKzeV8MuJ.l6O1m/aHzAwhtB0j0rjLa','089645445','jkt','blabla.jpg');
/*!40000 ALTER TABLE `consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_ordering`
--

DROP TABLE IF EXISTS `detail_ordering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_ordering` (
  `notes` varchar(45) DEFAULT NULL,
  `weight` int NOT NULL,
  `id_consumer` int NOT NULL AUTO_INCREMENT,
  `id_fish` int NOT NULL,
  `id_ordering` int NOT NULL,
  PRIMARY KEY (`id_consumer`,`id_fish`,`id_ordering`),
  KEY `fk_detail_ordering_consumer1_idx` (`id_consumer`),
  KEY `fk_detail_ordering_fish1_idx` (`id_fish`),
  KEY `fk_detail_ordering_ordering_idx` (`id_ordering`),
  CONSTRAINT `fk_detail_ordering_consumer1` FOREIGN KEY (`id_consumer`) REFERENCES `consumer` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_detail_ordering_fish1` FOREIGN KEY (`id_fish`) REFERENCES `fish` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_detail_ordering_ordering` FOREIGN KEY (`id_ordering`) REFERENCES `ordering` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=838 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_ordering`
--

LOCK TABLES `detail_ordering` WRITE;
/*!40000 ALTER TABLE `detail_ordering` DISABLE KEYS */;
INSERT INTO `detail_ordering` VALUES ('',1,2,15,260),('',0,14,15,73),('',1,14,15,218),('',1,14,15,264),('b',1,98,15,52),('',1,181,15,53),('',1,181,56,53),('',1,199,15,64),('',1,219,15,86),('',1,225,15,77),('',1,234,57,68),('',4,235,15,69),('',1,235,22,69),('',1,244,15,74),('',1,244,15,78),('ga pake kepala',2,245,15,71),('',2,247,60,79),('',1,249,15,80),('',1,251,15,81),('',1,256,15,82),('',3,257,15,83),('',2,297,35,94),('',3,299,15,85),('',3,306,15,87),('',1,309,15,112),('',2,309,56,113),('',1,309,59,90),('gi',1,314,22,92),('',1,316,15,109),('',1,318,58,93),('',1,320,15,96),('',4,343,15,263),('',2,343,60,263),('',1,350,15,97),('',10,363,15,247),('',1,376,15,104),('',3,385,15,209),('',1,405,15,252),('',1,408,89,110),('',1,410,15,128),('Test',1,411,15,111),('',2,413,57,121),('pe',7,417,15,155),('',1,419,15,116),('',1,422,35,129),('',1,432,50,156),('',1,434,15,162),('',1,445,15,228),('',1,446,15,118),('makan',1,449,15,122),('',1,449,15,126),('',1,449,15,127),('',3,451,37,124),('',1,451,59,123),('',1,456,15,212),('',1,456,22,132),('',1,481,15,133),('',1,491,15,136),('',1,511,22,138),('',1,518,15,141),('',1,518,58,140),('oke',2,526,15,144),('janjs',1,526,15,148),('',1,527,15,151),('',2,548,15,167),('sjsj',2,548,35,165),('',1,549,15,150),('',2,573,15,215),('',5,573,15,217),('',1,576,15,157),('',4,587,15,160),('',1,594,15,192),('',1,595,15,183),('',1,610,15,170),('',2,612,15,173),('',1,613,37,164),('',1,616,15,166),('',4,619,15,174),('ajsjs\n',1,619,15,222),('',1,620,15,202),('',1,622,35,169),('',1,624,15,171),('',2,640,59,181),('',1,642,15,189),('',1,647,15,197),('',1,655,15,182),('',1,658,22,184),('',1,659,15,214),('',5,661,15,251),('',1,661,48,188),('',2,672,15,196),('',1,686,15,199),('',1,705,15,230),('',10,705,15,253),('',1,705,15,255),('',1,705,15,256),('',0,705,15,257),('',1,705,15,258),('',1,705,15,259),('',1,705,22,208),('',1,723,15,224),('',1,724,15,225),('',1,743,57,254),('',1,764,56,261),('',1,767,22,262),('',2,776,15,265),('',2,776,48,265),('',3,795,50,266),('halo, tes aja',5,798,15,267),('',3,806,15,268),('',1,806,57,268),('',11,815,15,269),('jalo',4,819,181,270),('',1,820,22,271),('',1,823,15,272),('',1,824,22,273),('',1,829,35,274),('',2,831,15,275),('',1,837,50,276);
/*!40000 ALTER TABLE `detail_ordering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detect_fish`
--

DROP TABLE IF EXISTS `detect_fish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detect_fish` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detect_fish`
--

LOCK TABLES `detect_fish` WRITE;
/*!40000 ALTER TABLE `detect_fish` DISABLE KEYS */;
INSERT INTO `detect_fish` VALUES (1,'kembung','kembung.jpg'),(2,'tongkol','tongkol.jpg'),(3,'bandeng','bandeng.jpg');
/*!40000 ALTER TABLE `detect_fish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fish`
--

DROP TABLE IF EXISTS `fish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fish` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `weight` int NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `price` int NOT NULL,
  `id_seller` int NOT NULL,
  `photo_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`id_seller`),
  KEY `fk_fish_seller_idx` (`id_seller`),
  CONSTRAINT `fk_fish_seller` FOREIGN KEY (`id_seller`) REFERENCES `seller` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fish`
--

LOCK TABLES `fish` WRITE;
/*!40000 ALTER TABLE `fish` DISABLE KEYS */;
INSERT INTO `fish` VALUES (15,'Ikan Bandeng',10,'',40000,4,'10-Oct-20227575659173693045094.jpg'),(22,'Ikan Teri',1,'Ikan teri segar',20000,14,'15-Oct-20224803183350913075522.jpg'),(35,'Pepes Ikan Tenggiri',1,'',200000,18,'15-Oct-20225889167013426642286.jpg'),(37,'Ikan Teri',15,'ikan Segar',25000,23,'15-Oct-20227926462446393463124.jpg'),(48,'Ikan Tongkol Segar',1,'1kg isi 3-4 ekor',30000,62,'15-Oct-20226298888802205471902.jpg'),(50,'Ikan Bandeng',10,'',10000,68,'17-Oct-202230798600600453805.jpg'),(56,'Ikan Nila',10,'',35000,70,'23-Oct-20223973859443582107808.jpg'),(57,'Ikan Buntal',5,'',10000,8,'24-Oct-20226532045521510666402.jpg'),(58,'Ikan Tuna',1,'Ikan segar',50,72,'25-Oct-20224396344471750130073.jpg'),(59,'Kerang Hijau',1,'',15000,4,'25-Oct-20222554156209321341808.jpg'),(60,'Kepiting',25,'segar',100000,4,'26-Oct-20226180036532549905464.jpg'),(80,'Ikan Bandeng',1,'bisa perkilo dan per ekor',100000,111,'03-Feb-20235693687912977801341.jpg'),(89,'Lobster',1,'',375000,120,'21-Feb-20232479626565031973903.jpg'),(111,'Ikan Cakalang',1,'',80000,127,'20-May-20236583965356371377330.jpg'),(116,'Ikan Kakap Putih',1,'',60000,127,'21-May-20238734682100596060310.jpg'),(120,'Ikan Tuna',14,'',214000,125,'22-May-20237604391459465807134.jpg'),(121,'Ikan Tongkol',6,'',200000,125,'22-May-20233440935433921604195.jpg'),(143,'Bandeng',20,'',5000,137,'30-May-20237799452588612578141.jpg'),(170,'Ikan Bandeng',5,'',25000,132,'15-Jun-20233068691094253227356.jpg'),(171,'Ikan Tuna',12,'',40000,132,'15-Jun-20238734772712241298521.jpg'),(172,'Ikan Tongkol',20,'',35000,132,'15-Jun-2023714803315241239055.jpg'),(175,'Ikan Teri',12,'',15000,126,'07-Jul-20235637211185127262406.jpg'),(176,'Ikan Bandeng',7,'',50000,126,'07-Jul-20233849444688563106833.jpg'),(177,'Ikan Teri',5,'',10000,132,'07-Jul-20231451146235194363538.jpg'),(178,'Ikan Dori',20,'',30000,114,'24-Jul-20231030618517977724387.jpg'),(179,'Ikan Kembung',30,'',25000,114,'24-Jul-2023744020919456101227.jpg'),(180,'Ikan Kembung',30,'',25000,114,'24-Jul-2023744020919456101227.jpg'),(181,'Ikan Kembung',30,'',25000,114,'24-Jul-2023744020919456101227.jpg');
/*!40000 ALTER TABLE `fish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordering`
--

DROP TABLE IF EXISTS `ordering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordering` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `notes` varchar(45) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `kurir` varchar(45) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `invoice_url` varchar(100) DEFAULT NULL,
  `latitude` varchar(45) DEFAULT NULL,
  `longitude` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordering`
--

LOCK TABLES `ordering` WRITE;
/*!40000 ALTER TABLE `ordering` DISABLE KEYS */;
INSERT INTO `ordering` VALUES (1,'2022-11-11 05:23:44','---','waitingg','','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ordering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `roles` varchar(45) NOT NULL,
  `nama_pemilik_rekening` varchar(45) DEFAULT NULL,
  `nomor_rekening` varchar(45) DEFAULT NULL,
  `nama_bank` varchar(45) DEFAULT NULL,
  `photo_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,'Jack','jack@gmail.com','$2b$10$ICH2f3KjfrJMB7Jqa5Di1OOv1q.gIEVzJ32F9OMj70UjPfnVHEdla','0826727272727','TPI Kalimana','Nelayan',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_external` varchar(20) NOT NULL,
  `id_consumer` int NOT NULL,
  `dates_transaction` datetime NOT NULL,
  `dates_payed` datetime NOT NULL,
  `id_ordering` int NOT NULL,
  `status` enum('pending','paid','settled','expired') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ordering_idx` (`id_ordering`),
  KEY `id_consumer_idx` (`id_consumer`),
  CONSTRAINT `id_consumer` FOREIGN KEY (`id_consumer`) REFERENCES `consumer` (`id`),
  CONSTRAINT `id_ordering` FOREIGN KEY (`id_ordering`) REFERENCES `ordering` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-07 14:45:13
