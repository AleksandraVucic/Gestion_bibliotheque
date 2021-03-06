-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gbibliotheque
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `abonne`
--

DROP TABLE IF EXISTS `abonne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abonne` (
  `matricule` char(12) NOT NULL,
  `nom_abonne` varchar(50) DEFAULT NULL,
  `prenom_abonne` varchar(50) DEFAULT NULL,
  `adresse` varchar(150) DEFAULT NULL,
  `telephone` char(30) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `date_adhesion` date DEFAULT NULL,
  `inscript` tinyint(1) DEFAULT NULL,
  `id_categorie` int DEFAULT NULL,
  PRIMARY KEY (`matricule`),
  KEY `id_categorie` (`id_categorie`),
  CONSTRAINT `abonne_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categorie_prof` (`id_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abonne`
--

LOCK TABLES `abonne` WRITE;
/*!40000 ALTER TABLE `abonne` DISABLE KEYS */;
INSERT INTO `abonne` VALUES ('080698573756','Vucic','Aleksandra','26 Rue es Amandier, 92013 Nanterre','0624845525','1985-06-08','2019-01-05',1,2),('123456789101','Vucic','Aleksandar','7 Rue Henri Barbusse, Aubervilliers','06209861675','1975-10-03','2020-10-03',1,5),('555666777999','France','Auber','Opera Garnier',NULL,'1995-09-18','2010-12-01',1,1),('789654123000','Erreur','Test','55 Rue de Vincennes, 93100 Montreuil','000011111','2000-01-01','2001-01-01',0,1);
/*!40000 ALTER TABLE `abonne` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-25 23:24:08
