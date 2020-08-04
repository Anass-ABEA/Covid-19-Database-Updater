-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: covid
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `maroc`
--

DROP TABLE IF EXISTS `maroc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maroc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Date` datetime DEFAULT NULL,
  `confirmed` int(11) DEFAULT NULL,
  `recovered` int(11) DEFAULT NULL,
  `Died` int(11) DEFAULT NULL,
  `day_cases` int(11) DEFAULT NULL,
  `day_recovered` int(11) DEFAULT NULL,
  `day_deaths` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maroc`
--

LOCK TABLES `maroc` WRITE;
/*!40000 ALTER TABLE `maroc` DISABLE KEYS */;
INSERT INTO `maroc` VALUES (1,'2020-03-02 01:00:00',1,0,0,1,0,0),(2,'2020-03-03 01:00:00',1,0,0,0,0,0),(3,'2020-03-04 01:00:00',1,0,0,0,0,0),(4,'2020-03-05 01:00:00',1,0,0,0,0,0),(5,'2020-03-06 01:00:00',2,0,0,1,0,0),(6,'2020-03-07 01:00:00',2,0,0,0,0,0),(7,'2020-03-08 01:00:00',2,0,0,0,0,0),(8,'2020-03-09 01:00:00',2,0,0,0,0,0),(9,'2020-03-10 01:00:00',3,0,1,1,0,1),(10,'2020-03-11 01:00:00',6,0,1,3,0,0),(11,'2020-03-12 01:00:00',6,0,1,0,0,0),(12,'2020-03-13 01:00:00',8,1,1,2,1,0),(13,'2020-03-14 01:00:00',18,1,1,10,0,0),(14,'2020-03-15 01:00:00',28,1,1,10,0,0),(15,'2020-03-16 01:00:00',37,1,1,9,0,0),(16,'2020-03-17 01:00:00',44,1,2,7,0,1),(17,'2020-03-18 01:00:00',54,1,2,10,0,0),(18,'2020-03-19 01:00:00',63,2,2,9,1,0),(19,'2020-03-20 01:00:00',79,2,3,16,0,1),(20,'2020-03-21 01:00:00',96,3,3,17,1,0),(21,'2020-03-22 01:00:00',115,3,4,19,0,1),(22,'2020-03-23 01:00:00',143,5,4,28,2,0),(23,'2020-03-24 01:00:00',170,6,5,27,1,1),(24,'2020-03-25 01:00:00',225,7,6,55,1,1),(25,'2020-03-26 01:00:00',275,8,10,50,1,4),(26,'2020-03-27 01:00:00',345,11,23,70,3,13),(27,'2020-03-28 01:00:00',402,12,25,57,1,2),(28,'2020-03-29 01:00:00',479,13,26,77,1,1),(29,'2020-03-30 01:00:00',556,15,33,77,2,7),(30,'2020-03-31 01:00:00',617,24,36,61,9,3),(31,'2020-04-01 01:00:00',654,29,39,37,5,3),(32,'2020-04-02 01:00:00',708,31,44,54,2,5),(33,'2020-04-03 01:00:00',791,57,48,83,26,4),(34,'2020-04-04 01:00:00',919,66,59,128,9,11),(35,'2020-04-05 01:00:00',1021,76,70,102,10,11),(36,'2020-04-06 01:00:00',1120,80,81,99,5,10),(37,'2020-04-07 01:00:00',1184,90,93,64,12,10),(38,'2020-04-08 01:00:00',1275,93,97,91,4,3),(39,'2020-04-09 01:00:00',1374,109,97,99,12,4),(40,'2020-04-10 00:00:00',1448,122,107,74,13,10),(41,'2020-04-11 00:00:00',1545,146,111,97,24,4),(42,'2020-04-12 00:00:00',1661,177,118,116,31,7),(43,'2020-04-13 00:00:00',1763,203,126,102,26,8),(44,'2020-04-14 00:00:00',1888,217,126,125,14,0),(45,'2020-04-15 00:00:00',2024,229,127,136,12,1),(46,'2020-04-16 00:00:00',2283,249,130,259,20,3),(47,'2020-04-17 00:00:00',2564,281,135,281,32,5),(48,'2020-04-18 00:00:00',2685,314,137,121,33,2),(49,'2020-04-19 00:00:00',2855,327,141,170,13,4),(50,'2020-04-20 00:00:00',3046,350,143,191,23,2),(51,'2020-04-21 00:00:00',3209,393,145,163,43,2),(52,'2020-04-22 00:00:00',3446,417,149,237,24,4),(53,'2020-04-23 00:00:00',3568,456,155,122,39,6),(54,'2020-04-24 00:00:00',3758,486,158,190,30,3),(55,'2020-04-25 00:00:00',3897,537,159,139,51,1),(56,'2020-04-26 00:00:00',4065,593,161,168,56,2),(57,'2020-04-27 00:00:00',4120,695,162,55,102,1),(58,'2020-04-28 00:00:00',4250,778,165,130,83,3),(59,'2020-04-29 00:00:00',4321,928,168,69,150,3),(60,'2020-04-30 00:00:00',4423,984,170,102,56,2),(61,'2020-05-01 00:00:00',4569,1083,171,146,99,1),(62,'2020-05-02 00:00:00',4729,1256,173,160,173,2),(63,'2020-05-03 17:00:00',4903,1438,174,174,182,1),(64,'2020-05-04 00:00:00',5053,1653,179,150,215,5),(65,'2020-05-05 00:00:00',5219,1838,181,166,185,2),(66,'2020-05-06 00:00:00',5408,2017,183,189,179,2),(67,'2020-05-07 00:00:00',5548,2179,183,140,162,0),(68,'2020-05-08 00:00:00',5711,2324,186,163,145,3),(69,'2020-05-09 00:00:00',5910,2461,186,199,137,0),(70,'2020-05-10 00:00:00',6063,2554,188,153,93,2),(71,'2020-05-11 00:00:00',6281,2811,188,218,257,0),(72,'2020-05-12 00:00:00',6418,2991,188,137,180,0),(73,'2020-05-13 00:00:00',6512,3131,188,94,140,0),(74,'2020-05-14 00:00:00',6607,3310,190,95,179,2),(75,'2020-05-15 00:00:00',6652,3400,190,45,90,0),(76,'2020-05-16 00:00:00',6741,3487,192,89,75,2),(77,'2020-05-17 00:00:00',6870,3660,192,129,173,0),(78,'2020-05-18 00:00:00',6952,3758,192,82,98,0),(79,'2020-05-19 00:00:00',7023,3901,193,71,143,1),(80,'2020-05-20 00:00:00',7133,4098,194,110,197,1),(81,'2020-05-21 00:00:00',7211,4280,196,78,182,2),(82,'2020-05-22 00:00:00',7332,4377,197,121,97,1),(83,'2020-05-23 00:00:00',7406,4638,198,74,261,1),(84,'2020-05-24 00:00:00',7433,4703,199,27,65,1),(85,'2020-05-25 00:00:00',7532,4774,200,99,71,1),(86,'2020-05-26 00:00:00',7577,4881,202,45,107,2),(87,'2020-05-27 00:00:00',7601,4978,202,24,97,0),(88,'2020-05-28 00:00:00',7643,5195,202,42,217,0),(89,'2020-05-29 00:00:00',7714,5271,202,71,76,0),(90,'2020-05-30 00:00:00',7780,5401,204,66,130,2),(91,'2020-05-31 00:00:00',7807,5459,205,27,58,1),(92,'2020-06-01 00:00:00',7833,5893,205,26,434,0),(93,'2020-06-02 00:00:00',7866,6410,206,33,517,1),(94,'2020-06-03 00:00:00',7922,6866,206,56,456,0),(95,'2020-06-04 00:00:00',8003,7195,208,81,329,2),(96,'2020-06-05 00:00:00',8071,7268,208,68,73,0),(97,'2020-06-06 00:00:00',8151,7315,208,80,47,0),(98,'2020-06-07 00:00:00',8224,7364,208,73,49,0),(99,'2020-06-08 00:00:00',8302,7408,208,78,44,0),(100,'2020-06-09 00:00:00',8437,7493,210,135,85,2),(101,'2020-06-10 00:00:00',8508,7565,211,71,72,1),(102,'2020-06-11 00:00:00',8537,7593,211,29,28,0),(103,'2020-06-12 00:00:00',8610,7618,212,73,35,1),(104,'2020-06-13 00:00:00',8692,7696,212,82,78,0),(105,'2020-06-14 00:00:00',8793,7765,212,101,69,0),(106,'2020-06-15 00:00:00',8885,7828,212,92,63,0),(107,'2020-06-16 00:00:00',8931,7937,212,46,109,0),(108,'2020-06-17 00:00:00',8997,7993,213,66,56,1),(109,'2020-06-18 00:00:00',9074,8041,213,77,48,0),(110,'2020-06-19 00:00:00',9613,8117,213,539,76,0),(111,'2020-06-20 00:00:00',9839,8223,213,226,106,0),(112,'2020-06-21 00:00:00',9977,8284,214,138,61,1),(113,'2020-06-22 00:00:00',10172,8366,214,195,82,0),(114,'2020-06-23 00:00:00',10344,8407,214,172,41,0),(115,'2020-06-24 14:01:00',10907,8468,216,563,61,2),(116,'2020-06-25 00:00:00',11338,8500,217,431,32,1),(117,'2020-06-26 00:00:00',11633,8656,218,295,156,1),(118,'2020-06-27 00:00:00',11854,8723,220,244,67,2),(119,'2020-06-28 00:00:00',12052,8740,221,175,17,1),(120,'2020-06-29 00:00:00',12290,8833,225,238,93,4),(121,'2020-06-30 00:00:00',12533,8920,228,243,87,3),(122,'2020-07-01 00:00:00',12636,9026,228,103,106,0),(123,'2020-07-02 00:00:00',12969,9090,229,333,64,1),(124,'2020-07-03 00:00:00',13215,9158,230,246,68,1),(125,'2020-07-04 00:00:00',13822,9329,232,534,169,2),(126,'2020-07-05 00:00:00',14215,9725,235,393,396,3),(127,'2020-07-06 00:00:00',14379,10173,237,164,448,2),(128,'2020-07-07 00:00:00',14607,10639,240,228,466,3),(129,'2020-07-08 00:00:00',14771,11316,242,164,677,2),(130,'2020-07-09 00:00:00',15079,11447,242,308,131,0),(131,'2020-07-10 00:00:00',15328,11685,243,249,238,1),(132,'2020-07-11 00:00:00',15542,12065,245,214,380,2),(133,'2020-07-12 00:00:00',15745,12283,250,203,218,5),(134,'2020-07-13 00:00:00',15936,12934,255,191,651,5),(135,'2020-07-14 00:00:00',16097,13442,257,161,508,2),(136,'2020-07-15 00:00:00',16262,13821,259,165,379,2),(137,'2020-07-16 00:00:00',16545,13965,263,283,144,4),(138,'2020-07-17 00:00:00',16726,14360,264,181,395,1),(139,'2020-07-18 00:00:00',17015,14620,269,289,260,5),(140,'2020-07-19 00:00:00',17236,14921,273,221,301,4),(141,'2020-07-20 00:00:00',17562,15132,276,326,211,3),(142,'2020-07-21 00:00:00',17742,15389,280,180,257,4),(143,'2020-07-22 00:00:00',17962,15636,285,220,247,5),(144,'2020-07-23 00:00:00',18264,15872,292,302,236,7),(145,'2020-07-24 00:00:00',18834,16100,299,570,228,7),(146,'2020-07-25 00:00:00',19645,16282,305,811,182,6),(147,'2020-07-26 00:00:00',20278,16438,313,633,156,8),(148,'2020-07-27 00:00:00',20887,16438,313,609,115,3),(149,'2020-07-28 00:00:00',21387,17066,327,500,513,11),(150,'2020-07-29 00:00:00',22213,17125,334,826,59,7),(151,'2020-07-30 00:00:00',23259,17311,346,1046,186,12),(152,'2020-07-31 00:00:00',24322,17658,353,1063,347,7),(153,'2020-08-01 00:00:00',25015,17960,367,693,302,14),(154,'2020-08-02 00:00:00',25537,18435,382,522,475,15),(155,'2020-08-03 00:00:00',26196,18968,401,659,533,19);
/*!40000 ALTER TABLE `maroc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maroc_regions`
--

DROP TABLE IF EXISTS `maroc_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maroc_regions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Date` datetime DEFAULT NULL,
  `region_name` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `confirmed` int(11) DEFAULT NULL,
  `recovered` int(11) DEFAULT NULL,
  `Died` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maroc_regions`
--

LOCK TABLES `maroc_regions` WRITE;
/*!40000 ALTER TABLE `maroc_regions` DISABLE KEYS */;
INSERT INTO `maroc_regions` VALUES (13,'2020-08-03 18:25:00','Drâa-Tafilalet',705,17,2),(14,'2020-08-03 18:25:00','Eddakhla-Oued Eddahab',84,1,0),(15,'2020-08-03 18:25:00','Guelmim-Oued Noun',161,1,0),(16,'2020-08-03 18:25:00','Laayoune-Sakia El Hamra',840,4,0),(17,'2020-08-03 18:25:00','Beni Mellal-Khénifra',301,2,2),(18,'2020-08-03 18:25:00','Marrakech-Safi',3726,4,8),(19,'2020-08-03 18:25:00','Oriental',478,15,8),(20,'2020-08-03 18:25:00','Rabat-Salé-Kénitra',2556,7,4),(21,'2020-08-03 18:25:00','Souss-Massa',140,13,5),(22,'2020-08-03 18:25:00','Casablanca-Settat',6456,7,8),(23,'2020-08-03 18:25:00','Fés-Meknés',4004,11,8),(24,'2020-08-03 18:25:00','Tanger-Tétouan-Al Hoceima',6088,1,1),(25,'2020-08-04 21:59:00','Drâa-Tafilalet',736,17,2),(26,'2020-08-04 21:59:00','Eddakhla-Oued Eddahab',86,1,0),(27,'2020-08-04 21:59:00','Guelmim-Oued Noun',161,1,0),(28,'2020-08-04 21:59:00','Laayoune-Sakia El Hamra',840,4,0),(29,'2020-08-04 21:59:00','Beni Mellal-Khénifra',322,2,2),(30,'2020-08-04 21:59:00','Marrakech-Safi',3770,4,8),(31,'2020-08-04 21:59:00','Oriental',490,15,8),(32,'2020-08-04 21:59:00','Rabat-Salé-Kénitra',2609,7,4),(33,'2020-08-04 21:59:00','Souss-Massa',141,13,5),(34,'2020-08-04 21:59:00','Casablanca-Settat',6544,7,8),(35,'2020-08-04 21:59:00','Fés-Meknés',4228,11,8),(36,'2020-08-04 21:59:00','Tanger-Tétouan-Al Hoceima',6269,1,1);
/*!40000 ALTER TABLE `maroc_regions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-04 21:59:43
