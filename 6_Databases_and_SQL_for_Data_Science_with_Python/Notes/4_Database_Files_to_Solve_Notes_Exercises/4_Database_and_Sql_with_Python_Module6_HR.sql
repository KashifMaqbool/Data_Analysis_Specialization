-- MySQL dump 10.13  Distrib 9.3.0, for macos11.7 (x86_64)
--
-- Host: localhost    Database: 4_Database_and_Sql_with_Python_Module6_HR
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
-- Table structure for table `DEPARTMENTS`
--

DROP TABLE IF EXISTS `DEPARTMENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DEPARTMENTS` (
  `DEPT_ID_DEP` char(9) NOT NULL,
  `DEP_NAME` varchar(15) DEFAULT NULL,
  `MANAGER_ID` char(9) DEFAULT NULL,
  `LOC_ID` char(9) DEFAULT NULL,
  PRIMARY KEY (`DEPT_ID_DEP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPARTMENTS`
--

LOCK TABLES `DEPARTMENTS` WRITE;
/*!40000 ALTER TABLE `DEPARTMENTS` DISABLE KEYS */;
INSERT INTO `DEPARTMENTS` VALUES ('2','Architect Group','30001','L0001'),('5','Software Group','30002','L0002'),('7','Design Team','30003','L0003');
/*!40000 ALTER TABLE `DEPARTMENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEES`
--

DROP TABLE IF EXISTS `EMPLOYEES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLOYEES` (
  `EMP_ID` char(9) NOT NULL,
  `F_NAME` varchar(15) NOT NULL,
  `L_NAME` varchar(15) NOT NULL,
  `SSN` char(9) DEFAULT NULL,
  `B_DATE` date DEFAULT NULL,
  `SEX` char(1) DEFAULT NULL,
  `ADDRESS` varchar(30) DEFAULT NULL,
  `JOB_ID` char(9) DEFAULT NULL,
  `SALARY` decimal(10,2) DEFAULT NULL,
  `MANAGER_ID` char(9) DEFAULT NULL,
  `DEP_ID` char(9) NOT NULL,
  PRIMARY KEY (`EMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEES`
--

LOCK TABLES `EMPLOYEES` WRITE;
/*!40000 ALTER TABLE `EMPLOYEES` DISABLE KEYS */;
INSERT INTO `EMPLOYEES` VALUES ('E1001','John','Thomas','123456','1976-09-01','M','5631 Rice, OakPark,IL','100',100000.00,'30001','2'),('E1002','Alice','James','123457','1972-07-31','F','980 Berry ln, Elgin,IL','200',80000.00,'30002','5'),('E1003','Steve','Wells','123458','1980-10-08','M','291 Springs, Gary,IL','300',50000.00,'30002','5'),('E1004','Santosh','Kumar','123459','1985-07-20','M','511 Aurora Av, Aurora,IL','400',60000.00,'30002','5'),('E1005','Ahmed','Hussain','123410','1981-04-01','M','216 Oak Tree, Geneva,IL','500',70000.00,'30001','2'),('E1006','Nancy','Allen','123411','1978-06-02','F','111 Green Pl, Elgin,IL','600',90000.00,'30001','2'),('E1007','Mary','Thomas','123412','1975-05-05','F','100 Rose Pl, Gary,IL','650',65000.00,'30003','7'),('E1008','Bharath','Gupta','123413','1985-06-05','M','145 Berry Ln, Naperville,IL','660',65000.00,'30003','7'),('E1009','Andrea','Jones','123414','1990-09-07','F','120 Fall Creek, Gary,IL','234',70000.00,'30003','7'),('E1010','Ann','Jacob','123415','1982-03-30','F','111 Britany Springs,Elgin,IL','220',70000.00,'30002','5');
/*!40000 ALTER TABLE `EMPLOYEES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JOB_HISTORY`
--

DROP TABLE IF EXISTS `JOB_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JOB_HISTORY` (
  `EMPL_ID` char(9) NOT NULL,
  `START_DATE` date DEFAULT NULL,
  `JOBS_ID` char(9) NOT NULL,
  `DEPT_ID` char(9) DEFAULT NULL,
  PRIMARY KEY (`EMPL_ID`,`JOBS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JOB_HISTORY`
--

LOCK TABLES `JOB_HISTORY` WRITE;
/*!40000 ALTER TABLE `JOB_HISTORY` DISABLE KEYS */;
INSERT INTO `JOB_HISTORY` VALUES ('E1001','2000-08-01','100','2'),('E1002','2001-08-01','200','5'),('E1003','2001-08-16','300','5'),('E1004','2000-08-16','400','5'),('E1005','2000-05-30','500','2'),('E1006','2001-08-16','600','2'),('E1007','2002-05-30','650','7'),('E1008','2010-05-06','660','7'),('E1009','2016-08-16','234','7'),('E1010','2016-08-16','220','5');
/*!40000 ALTER TABLE `JOB_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JOBS`
--

DROP TABLE IF EXISTS `JOBS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JOBS` (
  `JOB_IDENT` char(9) NOT NULL,
  `JOB_TITLE` varchar(30) DEFAULT NULL,
  `MIN_SALARY` decimal(10,2) DEFAULT NULL,
  `MAX_SALARY` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`JOB_IDENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JOBS`
--

LOCK TABLES `JOBS` WRITE;
/*!40000 ALTER TABLE `JOBS` DISABLE KEYS */;
INSERT INTO `JOBS` VALUES ('100','Sr. Architect',60000.00,100000.00),('200','Sr. Software Developer',60000.00,80000.00),('220','Sr. Designer',70000.00,90000.00),('234','Sr. Designer',70000.00,90000.00),('300','Jr.Software Developer',40000.00,60000.00),('400','Jr.Software Developer',40000.00,60000.00),('500','Jr. Architect',50000.00,70000.00),('600','Lead Architect',70000.00,100000.00),('650','Jr. Designer',60000.00,70000.00),('660','Jr. Designer',60000.00,70000.00);
/*!40000 ALTER TABLE `JOBS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOCATIONS`
--

DROP TABLE IF EXISTS `LOCATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOCATIONS` (
  `LOCT_ID` char(9) NOT NULL,
  `DEP_ID_LOC` char(9) NOT NULL,
  PRIMARY KEY (`LOCT_ID`,`DEP_ID_LOC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOCATIONS`
--

LOCK TABLES `LOCATIONS` WRITE;
/*!40000 ALTER TABLE `LOCATIONS` DISABLE KEYS */;
INSERT INTO `LOCATIONS` VALUES ('L0001','2'),('L0002','5'),('L0003','7');
/*!40000 ALTER TABLE `LOCATIONS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-16 18:58:07
