-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: erpsys_db
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `file_users`
--

DROP TABLE IF EXISTS `file_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file_users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` text NOT NULL,
  `PASSWORD` text NOT NULL,
  `EMAIL` text NOT NULL,
  `TOKEN` text,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_BY` int(11) DEFAULT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `IP_ADDRESS` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_users`
--

LOCK TABLES `file_users` WRITE;
/*!40000 ALTER TABLE `file_users` DISABLE KEYS */;
INSERT INTO `file_users` VALUES (1,'sagar','014156817914a1e0d2d3d93b66ff8528','dev.cubois@gmail.com',NULL,'2020-07-10 06:51:59','2020-07-10 06:51:59',NULL,NULL,'110.5.74.237'),(2,'test ','014156817914a1e0d2d3d93b66ff8528','estimator@gmail.com',NULL,'2020-07-10 16:08:34','2020-07-10 16:08:34',NULL,NULL,'110.5.74.237'),(3,'sagar','014156817914a1e0d2d3d93b66ff8528','mfghod@gmail.com',NULL,'2020-07-10 19:52:29','2020-07-10 19:52:29',NULL,NULL,'110.5.74.237');
/*!40000 ALTER TABLE `file_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filedata`
--

DROP TABLE IF EXISTS `filedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filedata` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(100) DEFAULT NULL,
  `FILE` varchar(500) DEFAULT NULL,
  `IP_ADDRESS` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filedata`
--

LOCK TABLES `filedata` WRITE;
/*!40000 ALTER TABLE `filedata` DISABLE KEYS */;
INSERT INTO `filedata` VALUES (140,NULL,'/public/uploads/1594411357528--1.PNG',NULL),(143,NULL,'/public/uploads/1594411389079--3.PNG',NULL);
/*!40000 ALTER TABLE `filedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL` text NOT NULL,
  `PASSWORD` text NOT NULL,
  `TOKEN` text,
  `IP_ADDRESS` varchar(45) DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_log`
--

LOCK TABLES `user_log` WRITE;
/*!40000 ALTER TABLE `user_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-11 10:02:25
