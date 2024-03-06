-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sae203Base
-- ------------------------------------------------------
-- Server version	10.3.39-MariaDB-0+deb10u2

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
-- Table structure for table `scps`
--

DROP TABLE IF EXISTS `scps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scps` (
  `scp_id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant unique de l''entité',
  `scp_num` varchar(40) NOT NULL COMMENT 'Numéro de l''entité',
  `scp_name` varchar(150) NOT NULL COMMENT 'Dénomination de l''entité',
  `scp_class` varchar(25) NOT NULL COMMENT 'Classe(s) de l''entité',
  `scp_pic` varchar(64) DEFAULT 'https://placehold.co/800x600/213/f0f0f0/' COMMENT 'Photo de l''entité',
  `scp_alt` varchar(64) DEFAULT NULL COMMENT 'Texte alternatif',
  `scp_proc` text DEFAULT NULL COMMENT 'Procédures de confinements spéciales de l''entité',
  `scp_desc` text DEFAULT NULL COMMENT 'Description de l''entité',
  `_author_id` tinyint(4) NOT NULL COMMENT 'Identifiant unique de l''auteur',
  `_translator_id` tinyint(4) NOT NULL COMMENT 'Identifiant unique du traducteur',
  PRIMARY KEY (`scp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Liste des SCP';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scps`
--

LOCK TABLES `scps` WRITE;
/*!40000 ALTER TABLE `scps` DISABLE KEYS */;
INSERT INTO `scps` VALUES (1,'SCP-500','La Panacée','Sûr','500.avif','Des pilules de SCP-500.','SCP-500 doit être stocké dans un endroit frais et sec à l\'abri de la lumière. Seul le personnel ayant au moins un niveau de sécurité supérieur ou égal à 4 peut avoir accès à SCP-500 afin d\'éviter une mauvaise utilisation.','SCP-500 est une boite plastique qui, au moment de l\'écriture de ce rapport, contient quarante-sept (47) pilules rouges. Une pilule, une fois prise oralement, guérit celui qui l’a prise de toutes les maladies dans les deux heures. L’heure exacte varie en fonction de la sévérité et de la quantité des maladies du sujet. En dépit de nombreux essais, toutes les tentatives de synthèse de ce qui semble être le principe actif de SCP-500 ont été infructueuses.',0,1);
/*!40000 ALTER TABLE `scps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant unique de l''utilisateur',
  `user_nick` varchar(32) NOT NULL COMMENT 'Pseudonyme de l''utilisateur',
  `user_gender` varchar(12) NOT NULL COMMENT 'Genre de l''auteur',
  `user_loc` varchar(32) DEFAULT NULL,
  `user_bio` text DEFAULT NULL,
  `user_pp` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Liste des utilisateurs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-06 13:09:44
