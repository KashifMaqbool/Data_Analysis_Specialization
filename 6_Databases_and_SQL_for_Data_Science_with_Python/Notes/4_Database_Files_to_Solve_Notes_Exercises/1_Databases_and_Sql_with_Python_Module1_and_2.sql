-- MySQL dump 10.13  Distrib 9.3.0, for macos11.7 (x86_64)
--
-- Host: localhost    Database: 1_Databases_and_Sql_with_Python_Module1_and_2
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
-- Table structure for table `FilmLocations`
--

DROP TABLE IF EXISTS `FilmLocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FilmLocations` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `ReleaseYear` int DEFAULT NULL,
  `Locations` varchar(255) DEFAULT NULL,
  `FunFacts` text,
  `ProductionCompany` varchar(255) DEFAULT NULL,
  `Distributor` varchar(255) DEFAULT NULL,
  `Director` varchar(255) DEFAULT NULL,
  `Writer` varchar(500) DEFAULT NULL,
  `Actor1` varchar(255) DEFAULT NULL,
  `Actor2` varchar(255) DEFAULT NULL,
  `Actor3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilmLocations`
--

LOCK TABLES `FilmLocations` WRITE;
/*!40000 ALTER TABLE `FilmLocations` DISABLE KEYS */;
INSERT INTO `FilmLocations` VALUES (1,'180',2011,'Epic Roasthouse (399 Embarcadero)','','SPI Cinemas','','Jayendra','Umarji Anuradha, Jayendra, Aarthi Sriram, & Suba','Siddarth','Nithya Menon','Priya Anand'),(2,'180',2011,'Mason & California Streets (Nob Hill)','','SPI Cinemas','','Jayendra','Umarji Anuradha, Jayendra, Aarthi Sriram, & Suba','Siddarth','Nithya Menon','Priya Anand'),(3,'180',2011,'Justin Herman Plaza','','SPI Cinemas','','Jayendra','Umarji Anuradha, Jayendra, Aarthi Sriram, & Suba','Siddarth','Nithya Menon','Priya Anand'),(4,'180',2011,'200 block Market Street','','SPI Cinemas','','Jayendra','Umarji Anuradha, Jayendra, Aarthi Sriram, & Suba','Siddarth','Nithya Menon','Priya Anand'),(5,'180',2011,'City Hall','','SPI Cinemas','','Jayendra','Umarji Anuradha, Jayendra, Aarthi Sriram, & Suba','Siddarth','Nithya Menon','Priya Anand'),(6,'180',2011,'Polk & Larkin Streets','','SPI Cinemas','','Jayendra','Umarji Anuradha, Jayendra, Aarthi Sriram, & Suba','Siddarth','Nithya Menon','Priya Anand'),(7,'180',2011,'Randall Museum','','SPI Cinemas','','Jayendra','Umarji Anuradha, Jayendra, Aarthi Sriram, & Suba','Siddarth','Nithya Menon','Priya Anand'),(8,'180',2011,'555 Market St.','','SPI Cinemas','','Jayendra','Umarji Anuradha, Jayendra, Aarthi Sriram, & Suba','Siddarth','Nithya Menon','Priya Anand'),(9,'24 Hours on Craigslist',2005,'','','Yerba Buena Productions','Zealot Pictures','Michael Ferris Gibson','N/A','Craig Newmark','',''),(10,'A Night Full of Rain',1978,'Embarcadero Freeway','Embarcadero Freeway, which was featured in the film was demolished in 1989 because of structural damage from the 1989 Loma Prieta Earthquake)','Liberty Film','Warner Bros. Pictures','Lina Wertmuller','Lina Wertmuller','Candice Bergen','Giancarlo Gianni',''),(11,'A Night Full of Rain',1978,'Fairmont Hotel (950 Mason Street, Nob Hill)','In 1945 the Fairmont hosted the United Nations Conference on International Organization as delegates arrived to draft a charter for the organization. The U.S. Secretary of State, Edward Stettinius drafted the charter in the hotel\'s Garden Room.','Liberty Film','Warner Bros. Pictures','Lina Wertmuller','Lina Wertmuller','Candice Bergen','Giancarlo Gianni',''),(12,'A Night Full of Rain',1978,'San Francisco Chronicle (901 Mission Street at 15th Street)','The San Francisco Zodiac Killer of the late 1960s sent his notes and letters to the Chronicle\'s offices.','Liberty Film','Warner Bros. Pictures','Lina Wertmuller','Lina Wertmuller','Candice Bergen','Giancarlo Gianni',''),(13,'A Night Full of Rain',1978,'Broadway (North Beach)','','Liberty Film','Warner Bros. Pictures','Lina Wertmuller','Lina Wertmuller','Candice Bergen','Giancarlo Gianni',''),(14,'About a Boy',2014,'Broderick from Fulton to McAlister','','NBC Studios','National Broadcasting Company','Mark J. Kunerth','Jason Katims','David Walton','Minnie Driver',''),(15,'About a Boy',2014,'Crissy Field','','NBC Studios','National Broadcasting Company','Mark J. Kunerth','Jason Katims','David Walton','Minnie Driver',''),(16,'About a Boy',2014,'Powell from Bush and Sutter','','NBC Studios','National Broadcasting Company','Mark J. Kunerth','Jason Katims','David Walton','Minnie Driver',''),(17,'Age of Adaline',2015,'Pier 50- end of the pier','','Lionsgate / Sidney Kimmel Entertainment / Lakeshore Entertainment','','Lee Toland Krieger','J. Mills Goodloe','Blake Lively','Harrison Ford','Ellen Burstyn'),(18,'Age of Adaline',2015,'California @ Montgomery','','Lionsgate / Sidney Kimmel Entertainment / Lakeshore Entertainment','','Lee Toland Krieger','J. Mills Goodloe','Blake Lively','Harrison Ford','Ellen Burstyn'),(19,'Age of Adaline',2015,'Montgomery/Green','','Lionsgate / Sidney Kimmel Entertainment / Lakeshore Entertainment','','Lee Toland Krieger','J. Mills Goodloe','Blake Lively','Harrison Ford','Ellen Burstyn'),(20,'Age of Adaline',2015,'Driving various SF Streets','','Lionsgate / Sidney Kimmel Entertainment / Lakeshore Entertainment','','Lee Toland Krieger','J. Mills Goodloe','Blake Lively','Harrison Ford','Ellen Burstyn'),(21,'Age of Adaline',2015,'Plate Shots SF streets various','','Lionsgate / Sidney Kimmel Entertainment / Lakeshore Entertainment','','Lee Toland Krieger','J. Mills Goodloe','Blake Lively','Harrison Ford','Ellen Burstyn'),(22,'After the Thin Man',1936,'Coit Tower','The Tower was funded by a gift bequeathed by Lillie Hitchcock Coit, a socialite who reportedly liked to chase fires. Though the tower resembles a firehose nozzle, it was not designed this way.','Metro-Goldwyn Mayer','Metro-Goldwyn Mayer','W.S. Van Dyke','Frances Goodrich','William Powell','Myrna Loy','James Stewart'),(23,'Ant-Man',2015,'California between Kearney and Davis','Driving shots','PYM Particles Productions, LLC','Walt Disney Studios Motion Pictures','Peyton Reed','Gabriel Ferrari','Michael Douglas','Paul Rudd',''),(24,'Americana',2015,'St. Francis Episcopal Church (399 San Fernando Way)','','Sutro Films LLC','','Zachary Shedd','Zachary Shedd','Kelli Garner','Jack Davenport','Peter Coyote'),(25,'Americana',2015,'Romolo Place @ Fresno St.','','Sutro Films LLC','','Zachary Shedd','Zachary Shedd','Kelli Garner','Jack Davenport','Peter Coyote'),(26,'Americana',2015,'Palace of Fine Arts','','Sutro Films LLC','','Zachary Shedd','Zachary Shedd','Kelli Garner','Jack Davenport','Peter Coyote'),(27,'Americana',2015,'John Shelley Drive John McLaren Park','','Sutro Films LLC','','Zachary Shedd','Zachary Shedd','Kelli Garner','Jack Davenport','Peter Coyote'),(28,'Americana',2015,'Treasure Island','','Sutro Films LLC','','Zachary Shedd','Zachary Shedd','Kelli Garner','Jack Davenport','Peter Coyote'),(29,'Another 48 Hours',1990,'','','Eddie Murphy Productions','Paramount Pictures','Walter Hill','Walter Hill','Eddie Murphy','Nick Nolte',''),(30,'Ant-Man',2015,'Conzelman Rd at McCollough Rd and down Conzelman Rd.','Aerial shots','PYM Particles Productions, LLC','Walt Disney Studios Motion Pictures','Peyton Reed','Gabriel Ferrari','Michael Douglas','Paul Rudd',''),(31,'Ant-Man',2015,'Lombard at Hyde','','PYM Particles Productions, LLC','Walt Disney Studios Motion Pictures','Peyton Reed','Gabriel Ferrari','Michael Douglas','Paul Rudd',''),(32,'Ant-Man',2015,'601 Buena Vista Ave West at Java St.','','PYM Particles Productions, LLC','Walt Disney Studios Motion Pictures','Peyton Reed','Gabriel Ferrari','Michael Douglas','Paul Rudd',''),(33,'Ant-Man',2015,'420 Jones St. at Ellis St.','','PYM Particles Productions, LLC','Walt Disney Studios Motion Pictures','Peyton Reed','Gabriel Ferrari','Michael Douglas','Paul Rudd',''),(34,'Ant-Man',2015,'Broadway between Powell and Davis','Driving shots','PYM Particles Productions, LLC','Walt Disney Studios Motion Pictures','Peyton Reed','Gabriel Ferrari','Michael Douglas','Paul Rudd',''),(35,'Ant-Man',2015,'Columbus between Bay and Washington','Driving shots','PYM Particles Productions, LLC','Walt Disney Studios Motion Pictures','Peyton Reed','Gabriel Ferrari','Michael Douglas','Paul Rudd',''),(36,'Ant-Man',2015,'Pine between Kearney and Davis','Driving shots','PYM Particles Productions, LLC','Walt Disney Studios Motion Pictures','Peyton Reed','Gabriel Ferrari','Michael Douglas','Paul Rudd',''),(37,'Ant-Man',2015,'Market between Stuart and Van Ness','Driving shots','PYM Particles Productions, LLC','Walt Disney Studios Motion Pictures','Peyton Reed','Gabriel Ferrari','Michael Douglas','Paul Rudd',''),(38,'Ant-Man',2015,'Grant between Bush and Broadway','Driving shots','PYM Particles Productions, LLC','Walt Disney Studios Motion Pictures','Peyton Reed','Gabriel Ferrari','Michael Douglas','Paul Rudd','');
/*!40000 ALTER TABLE `FilmLocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PET`
--

DROP TABLE IF EXISTS `PET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PET` (
  `ID` int NOT NULL,
  `ANIMAL` varchar(20) DEFAULT NULL,
  `QUANTITY` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PET`
--

LOCK TABLES `PET` WRITE;
/*!40000 ALTER TABLE `PET` DISABLE KEYS */;
INSERT INTO `PET` VALUES (1,'Cat',3),(2,'Dog',4),(3,'Hamster',2);
/*!40000 ALTER TABLE `PET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PETSALE`
--

DROP TABLE IF EXISTS `PETSALE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PETSALE` (
  `ID` int NOT NULL,
  `ANIMAL` varchar(20) DEFAULT NULL,
  `SALEPRICE` decimal(6,2) DEFAULT NULL,
  `PROFIT` decimal(6,2) DEFAULT NULL,
  `SALEDATE` date DEFAULT NULL,
  `QUANTITY` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PETSALE`
--

LOCK TABLES `PETSALE` WRITE;
/*!40000 ALTER TABLE `PETSALE` DISABLE KEYS */;
INSERT INTO `PETSALE` VALUES (1,'Cat',450.09,100.47,'2018-05-29',9),(2,'Dog',666.66,150.76,'2018-06-01',3),(3,'Parrot',50.00,8.90,'2018-06-04',2),(4,'Hamster',60.60,12.00,'2018-06-11',6),(5,'Goldfish',48.48,3.50,'2018-06-14',24);
/*!40000 ALTER TABLE `PETSALE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Toys`
--

DROP TABLE IF EXISTS `Toys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Toys` (
  `ID` int NOT NULL,
  `Variety` varchar(30) DEFAULT NULL,
  `Quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Toys`
--

LOCK TABLES `Toys` WRITE;
/*!40000 ALTER TABLE `Toys` DISABLE KEYS */;
INSERT INTO `Toys` VALUES (1,'Chew toy',20),(2,'Balls',50),(3,'Bowls',30),(4,'Foldable bed',40);
/*!40000 ALTER TABLE `Toys` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-16 18:54:19
