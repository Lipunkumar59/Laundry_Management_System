-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: aafinalexam
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `laundryregistration`
--

DROP TABLE IF EXISTS `laundryregistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laundryregistration` (
  `reg_id` int NOT NULL AUTO_INCREMENT,
  `buttonWare` int DEFAULT NULL,
  `contanctPerson` varchar(255) DEFAULT NULL,
  `deletedFlag` int DEFAULT NULL,
  `deliverStatus` int DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `drop_date` datetime DEFAULT NULL,
  `expectDeliveryDate` datetime DEFAULT NULL,
  `serviceType` varchar(255) DEFAULT NULL,
  `topWare` int DEFAULT NULL,
  `totalPrice` double DEFAULT NULL,
  `woolenCloth` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`reg_id`),
  KEY `FK8tojn84eau126m4py7vjfj4v2` (`user_id`),
  CONSTRAINT `FK8tojn84eau126m4py7vjfj4v2` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laundryregistration`
--

LOCK TABLES `laundryregistration` WRITE;
/*!40000 ALTER TABLE `laundryregistration` DISABLE KEYS */;
INSERT INTO `laundryregistration` VALUES (3,3,'Gaikwada',0,1,'Do it carefully','2023-05-29 00:00:00',NULL,'online',2,100,1,1),(4,2,'Gaikwada',0,1,'Do it carefully','2023-05-30 00:00:00',NULL,'cashpayment',4,172,3,1),(5,2,'Gaikwada',0,1,'Do it carefully','2023-05-30 00:00:00',NULL,'cashpayment',4,172,3,1),(6,2,'Gaikwada',0,1,'Do it carefully','2023-05-30 00:00:00',NULL,'cashpayment',4,172,3,1),(7,2,'Gaikwada',0,1,'Do it carefully','2023-05-30 00:00:00',NULL,'cashpayment',4,172,3,1);
/*!40000 ALTER TABLE `laundryregistration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-28 23:13:49
