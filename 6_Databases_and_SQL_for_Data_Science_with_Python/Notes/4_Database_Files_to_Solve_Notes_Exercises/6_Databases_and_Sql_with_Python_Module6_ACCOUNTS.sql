-- MySQL dump 10.13  Distrib 9.3.0, for macos11.7 (x86_64)
--
-- Host: localhost    Database: 6_Databases_and_Sql_with_Python_Module6_ACCOUNTS
-- ------------------------------------------------------
-- Server version	9.3.0

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
-- Table structure for table `BankAccounts`
--

DROP TABLE IF EXISTS `BankAccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BankAccounts` (
  `AccountNumber` varchar(5) NOT NULL,
  `AccountName` varchar(25) NOT NULL,
  `Balance` decimal(8,2) NOT NULL,
  PRIMARY KEY (`AccountNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BankAccounts`
--

LOCK TABLES `BankAccounts` WRITE;
/*!40000 ALTER TABLE `BankAccounts` DISABLE KEYS */;
INSERT INTO `BankAccounts` VALUES ('B001','Rose',-200.00),('B002','James',-5.00),('B003','Shoe Shop',125600.00),('B004','Corner Shop',76000.00);
/*!40000 ALTER TABLE `BankAccounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoeShop`
--

DROP TABLE IF EXISTS `ShoeShop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ShoeShop` (
  `Product` varchar(25) NOT NULL,
  `Stock` int NOT NULL,
  `Price` decimal(8,2) NOT NULL,
  PRIMARY KEY (`Product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoeShop`
--

LOCK TABLES `ShoeShop` WRITE;
/*!40000 ALTER TABLE `ShoeShop` DISABLE KEYS */;
INSERT INTO `ShoeShop` VALUES ('Boots',10,200.00),('Brogues',10,150.00),('High heels',8,600.00),('Trainers',10,300.00);
/*!40000 ALTER TABLE `ShoeShop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-16 19:00:12
