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
-- Table structure for table `cadi`
--

DROP TABLE IF EXISTS `cadi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadi` (
  `cod_CADI` varchar(13) NOT NULL,
  `cod_componente` varchar(3) NOT NULL,
  `cod_grupo` varchar(5) NOT NULL,
  `nom_CADI` varchar(30) DEFAULT NULL,
  `creditos` int DEFAULT NULL,
  `tipo` varchar(2) DEFAULT NULL,
  `cod_prerrequisito` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`cod_CADI`),
  KEY `cod_componente` (`cod_componente`),
  KEY `cod_grupo` (`cod_grupo`),
  CONSTRAINT `cadi_ibfk_1` FOREIGN KEY (`cod_componente`) REFERENCES `componente` (`cod_componente`),
  CONSTRAINT `cadi_ibfk_2` FOREIGN KEY (`cod_grupo`) REFERENCES `grupo` (`cod_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadi`
--

LOCK TABLES `cadi` WRITE;
/*!40000 ALTER TABLE `cadi` DISABLE KEYS */;
INSERT INTO `cadi` (`cod_CADI`, `cod_componente`, `cod_grupo`, `nom_CADI`, `creditos`, `tipo`, `cod_prerrequisito`) VALUES ('CAD612021219','002','202','PROGRAMACION 1',3,'TP',''),('CAD612021220','007','202','CALCULO DIFERENCIAL',4,'T',''),('CAD612021221','007','202','FISICA(MECANICA)',4,'T',''),('CAD612021519','007','501','ECUACIONES DIFERENCIALES',4,'T','CAD612021220'),('CAD612021520','002','501','SISTEMAS OPERATIVOS',2,'TP','CAD612021219'),('CAD612021523','001','501','BASE DE DATOS',2,'TP','CAD612021219'),('CAD612021619','007','601','MATEMATICAS ESPECIALES',3,'T','CAD612021519'),('CAD612021620','002','601','COMUNICACION DE DATOS',3,'TP','CAD612021523'),('CAD612021621','002','601','NETWORKING',2,'TP','CAD612021520'),('CAD612021722','007','701','ANALISIS NUMERICO',3,'T','CAD612021619'),('CAD612021723','001','701','REDES Y COMUNICACION',2,'TP','CAD612021621'),('CAD612021724','002','701','CIENCIA DE DATOS',2,'TP','CAD612021620');
/*!40000 ALTER TABLE `cadi` ENABLE KEYS */;
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
