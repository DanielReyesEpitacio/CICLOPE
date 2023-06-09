-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ciclope
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `datos_telar`
--

DROP TABLE IF EXISTS `datos_telar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datos_telar` (
  `id_registro` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no_telar` int(10) unsigned NOT NULL,
  `tipo_tela` varchar(100) NOT NULL,
  `supervisor` varchar(100) NOT NULL,
  `imagen_path` varchar(250) NOT NULL,
  `fecha` date NOT NULL,
  `calidad` bit(1) NOT NULL,
  `imagen_def_path` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_telar`
--

LOCK TABLES `datos_telar` WRITE;
/*!40000 ALTER TABLE `datos_telar` DISABLE KEYS */;
INSERT INTO `datos_telar` VALUES (308,16,'DALLas','utp','http://172.16.8.230/ciclope/images/img0.jpg','2023-03-21','\0','http://172.16.8.230/ciclope/images/img_def_0.jpg'),(309,16,'DALLas','utp','http://172.16.8.230/ciclope/images/img1.jpg','2023-03-21','\0','http://172.16.8.230/ciclope/images/img_def_1.jpg'),(310,16,'DALLas','utp','http://172.16.8.230/ciclope/images/img2.jpg','2023-03-21','\0','http://172.16.8.230/ciclope/images/img_def_2.jpg'),(311,16,'DALLas','utp','http://172.16.8.230/ciclope/images/img3.jpg','2023-03-21','\0','http://172.16.8.230/ciclope/images/img_def_3.jpg'),(312,16,'DALLas','utp','http://172.16.8.230/ciclope/images/img4.jpg','2023-03-21','\0','http://172.16.8.230/ciclope/images/img_def_4.jpg'),(313,16,'DALLas','utp','http://172.16.8.230/ciclope/images/img5.jpg','2023-03-21','\0','http://172.16.8.230/ciclope/images/img_def_5.jpg'),(314,16,'DALLas','utp','http://172.16.8.230/ciclope/images/img6.jpg','2023-03-21','\0','http://172.16.8.230/ciclope/images/img_def_6.jpg'),(315,16,'DALLas',' Danielo','http://172.16.8.230/ciclope/images/img0.jpg','2023-03-21','',NULL),(316,16,'DALLas',' Danielo','http://172.16.8.230/ciclope/images/img1.jpg','2023-03-21','',NULL),(317,16,'DALLas',' Danielo','http://172.16.8.230/ciclope/images/img2.jpg','2023-03-21','\0','http://172.16.8.230/ciclope/images/img_def_3.jpg'),(318,16,'DALLas',' Danielo','http://172.16.8.230/ciclope/images/img3.jpg','2023-03-21','',NULL),(319,16,'DALLas',' Danielo','http://172.16.8.230/ciclope/images/img4.jpg','2023-03-21','',NULL),(320,16,'DALLas',' Danielo','http://172.16.8.230/ciclope/images/img5.jpg','2023-03-21','',NULL),(321,16,'DALLas',' Danielo','http://172.16.8.230/ciclope/images/img6.jpg','2023-03-21','\0','http://172.16.8.230/ciclope/images/img_def_7.jpg'),(322,16,'DALLas',' Danielo','http://172.16.8.230/ciclope/images/img7.jpg','2023-03-21','\0','http://172.16.8.230/ciclope/images/img_def_8.jpg'),(323,16,'DALLas',' Danielo','http://172.16.8.230/ciclope/images/img8.jpg','2023-03-21','\0','http://172.16.8.230/ciclope/images/img_def_9.jpg'),(324,16,'DALLas',' Danielo','http://172.16.8.230/ciclope/images/img9.jpg','2023-03-21','\0','http://172.16.8.230/ciclope/images/img_def_10.jpg'),(325,16,'DALLas',' Danielo','http://172.16.8.230/ciclope/images/img10.jpg','2023-03-21','\0','http://172.16.8.230/ciclope/images/img_def_11.jpg'),(326,16,'DALLas',' Danielo','http://172.16.8.230/ciclope/images/img11.jpg','2023-03-21','\0','http://172.16.8.230/ciclope/images/img_def_12.jpg');
/*!40000 ALTER TABLE `datos_telar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-21 20:45:11
