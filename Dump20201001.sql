CREATE DATABASE  IF NOT EXISTS `peace` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `peace`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64),
--
-- Host: localhost    Database: peace
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `gorod`
--

DROP TABLE IF EXISTS `gorod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gorod` (
  `id_gorod` int NOT NULL,
  `name_gorod` varchar(45) DEFAULT NULL,
  `chislenost` int DEFAULT NULL,
  `ploshad` int DEFAULT NULL,
  PRIMARY KEY (`id_gorod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gorod`
--

LOCK TABLES `gorod` WRITE;
/*!40000 ALTER TABLE `gorod` DISABLE KEYS */;
INSERT INTO `gorod` VALUES (1,'Москва',11000,200),(2,'Колифорния',12000,100),(3,'Пекин',1000000,10);
/*!40000 ALTER TABLE `gorod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oblast`
--

DROP TABLE IF EXISTS `oblast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oblast` (
  `id_oblast` int NOT NULL,
  `name_oblast` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_oblast`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oblast`
--

LOCK TABLES `oblast` WRITE;
/*!40000 ALTER TABLE `oblast` DISABLE KEYS */;
INSERT INTO `oblast` VALUES (1,'Московская'),(2,'Колифорнийская'),(3,'Пекинская');
/*!40000 ALTER TABLE `oblast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raion`
--

DROP TABLE IF EXISTS `raion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raion` (
  `id_raion` int NOT NULL,
  `name_raion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_raion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raion`
--

LOCK TABLES `raion` WRITE;
/*!40000 ALTER TABLE `raion` DISABLE KEYS */;
INSERT INTO `raion` VALUES (1,'Северный '),(2,'Южный'),(3,'Нет Района');
/*!40000 ALTER TABLE `raion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strana`
--

DROP TABLE IF EXISTS `strana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strana` (
  `id_strana` int NOT NULL,
  `name_strana` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_strana`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strana`
--

LOCK TABLES `strana` WRITE;
/*!40000 ALTER TABLE `strana` DISABLE KEYS */;
INSERT INTO `strana` VALUES (1,'Россия'),(2,'США'),(3,'Китай');
/*!40000 ALTER TABLE `strana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world`
--

DROP TABLE IF EXISTS `world`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world` (
  `id` int NOT NULL,
  `id_strana` int DEFAULT NULL,
  `id_oblast` int DEFAULT NULL,
  `id_raion` int DEFAULT NULL,
  `id_gorod` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Gorod_idx` (`id_gorod`),
  KEY `FK_Oblast_idx` (`id_oblast`),
  KEY `FK_Raion_idx` (`id_raion`),
  KEY `FK_Strana_idx` (`id_strana`),
  CONSTRAINT `FK_Gorod` FOREIGN KEY (`id_gorod`) REFERENCES `gorod` (`id_gorod`),
  CONSTRAINT `FK_Oblast` FOREIGN KEY (`id_oblast`) REFERENCES `oblast` (`id_oblast`),
  CONSTRAINT `FK_Raion` FOREIGN KEY (`id_raion`) REFERENCES `raion` (`id_raion`),
  CONSTRAINT `FK_Strana` FOREIGN KEY (`id_strana`) REFERENCES `strana` (`id_strana`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world`
--

LOCK TABLES `world` WRITE;
/*!40000 ALTER TABLE `world` DISABLE KEYS */;
INSERT INTO `world` VALUES (1,1,1,1,1),(2,2,2,2,2),(3,3,3,3,3);
/*!40000 ALTER TABLE `world` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'peace'
--

--
-- Dumping routines for database 'peace'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-01 11:36:12
