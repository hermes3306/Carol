-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for debian-linux-gnueabihf (armv8l)
--
-- Host: localhost    Database: carol
-- ------------------------------------------------------
-- Server version	10.5.15-MariaDB-0+deb11u1-log

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
-- Table structure for table `ADDR`
--

DROP TABLE IF EXISTS `ADDR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADDR` (
  `name` varchar(20) DEFAULT NULL,
  `addr` varchar(20) DEFAULT NULL,
  `gu` varchar(20) DEFAULT NULL,
  `dong` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADDR`
--

LOCK TABLES `ADDR` WRITE;
/*!40000 ALTER TABLE `ADDR` DISABLE KEYS */;
/*!40000 ALTER TABLE `ADDR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PERSONAL`
--

DROP TABLE IF EXISTS `PERSONAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PERSONAL` (
  `num` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `resident_id` varchar(20) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `license_num` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PERSONAL`
--

LOCK TABLES `PERSONAL` WRITE;
/*!40000 ALTER TABLE `PERSONAL` DISABLE KEYS */;
INSERT INTO `PERSONAL` VALUES (1,'Soeun Park','001111-2222222','010-2222-3333','01-11112222'),(2,'Jiyeon Kim','001111-3333333','010-3333-4444','01-22223333'),(3,'Jiwon Jang','001111-4444444','010-4444-5555','01-33334444'),(4,'Seeun Choi','004444-5555555','010-5555-6666','01-44445555'),(5,'Nahyun Kim','004444-6666666','010-6666-7777','01-55556666'),(6,'Dahyun Park','004444-7777777','010-7777-8888','01-66667777'),(7,'Damin Kim','004444-8888888','010-8888-9999','01-77778888'),(8,'Jimin Choi','004444-9999999','010-9999-1111','01-99991111'),(9,'Sunmin Park','004444-1111111','010-1111-2222','01-12122323'),(10,'Somin Kim','004444-2222222','010-2323-3434','01-23233434');
/*!40000 ALTER TABLE `PERSONAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `userID` varchar(20) DEFAULT NULL,
  `userPassword` varchar(20) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `userAge` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
INSERT INTO `USER` VALUES ('carol','1234','Soeun Park',23),('jenny','1234','Soeun Park',23),('seeun','1234','Seeun Choi',22),('jiwon','1234','Jiwon Jang',23),('sieun','1234','Sieun Kim',23),('Dahyun','5678','Dahyun Park',20),('Damin','1234','Damin Kim',20),('byulha','2345','byulha',20),('soeun','1234','Soeun Park',23),('jin','1234','jin',21),('seyeon','1234','seyeon',20),('carol22','1111','1111',1111);
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-05  2:51:40
