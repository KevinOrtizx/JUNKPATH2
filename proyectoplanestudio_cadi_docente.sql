CREATE DATABASE  IF NOT EXISTS `proyectoplanestudio` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proyectoplanestudio`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proyectoplanestudio
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `cadi_docente`
--

DROP TABLE IF EXISTS `cadi_docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadi_docente` (
  `cod_CADI` varchar(13) NOT NULL,
  `id_docente` varchar(10) NOT NULL,
  PRIMARY KEY (`cod_CADI`,`id_docente`),
  KEY `id_docente` (`id_docente`),
  CONSTRAINT `cadi_docente_ibfk_1` FOREIGN KEY (`cod_CADI`) REFERENCES `cadi` (`cod_CADI`),
  CONSTRAINT `cadi_docente_ibfk_2` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id_docente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadi_docente`
--

LOCK TABLES `cadi_docente` WRITE;
/*!40000 ALTER TABLE `cadi_docente` DISABLE KEYS */;
INSERT INTO `cadi_docente` (`cod_CADI`, `id_docente`) VALUES ('CAD612021221','1002341211'),('CAD612021519','1002393200'),('CAD612021619','100293212'),('CAD612021620','100321321'),('CAD612021621','1009212321'),('CAD612021620','1009218327'),('CAD612021520','1020394867'),('CAD612021722','109212912'),('CAD612021220','1234245342'),('CAD612021723','1235431235'),('CAD612021724','12901232'),('CAD612021523','190012932');
/*!40000 ALTER TABLE `cadi_docente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-26 11:12:47