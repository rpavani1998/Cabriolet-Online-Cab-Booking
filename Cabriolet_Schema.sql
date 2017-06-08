-- MySQL dump 10.13  Distrib 5.6.16, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Cabriolet1
-- ------------------------------------------------------
-- Server version	5.6.16-1~exp1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Cab`
--

DROP TABLE IF EXISTS `Cab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cab` (
  `cabNumber` varchar(30) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `costPerkm` decimal(2,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`cabNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cab`
--

LOCK TABLES `Cab` WRITE;
/*!40000 ALTER TABLE `Cab` DISABLE KEYS */;
INSERT INTO `Cab` VALUES ('','','',0.00),('TS12A1234','Micro','Indica',0.99);
/*!40000 ALTER TABLE `Cab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `firstName` varchar(30) NOT NULL DEFAULT '',
  `lastName` varchar(30) NOT NULL DEFAULT '',
  `emailId` varchar(30) DEFAULT '',
  `phoneNumber` varchar(30) NOT NULL DEFAULT '',
  `gender` varchar(1) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `password` text,
  PRIMARY KEY (`phoneNumber`),
  UNIQUE KEY `emailId` (`emailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES ('Aaakanksha','Shastri','aak1998@gmail.com','1234567890','F','1998-01-29','371ab955fdc11c44c980779c3135b155'),('Justin ','Foley','justin@gmail.com','1234567891','M','1985-09-06','202cb962ac59075b964b07152d234b70'),('Rachel','Green','rachel.green@gmail.com','1234567897','F','1964-06-12','202cb962ac59075b964b07152d234b70'),('Rajula','Pavani','rpavani1998@gmail.com','7207874257','F','1998-11-13','202cb962ac59075b964b07152d234b70'),('rahul','verma','rahul@gmail.com','7418529631','M','1998-09-12','b65cb28b7c2569d90631cef9c8a8c29e'),('pinki','papa','pinki@gmail.com','9502960298','F','1998-03-20','2285558b87a3ba5a4238a7b5acd850f5'),('tina','malhotra','tina@gmail.com','9874563210','F','2012-12-12','b5c0b187fe309af0f4d35982fd961d7e'),('Hanna','Baker','hanna.baker@gmail.com','9876543210','F','1989-06-12','202cb962ac59075b964b07152d234b70');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Driver`
--

DROP TABLE IF EXISTS `Driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Driver` (
  `firstName` varchar(30) NOT NULL DEFAULT '',
  `lastName` varchar(30) NOT NULL DEFAULT '',
  `emailId` varchar(30) DEFAULT '',
  `phoneNumber` varchar(30) NOT NULL DEFAULT '',
  `gender` varchar(1) DEFAULT NULL,
  `DOB` date NOT NULL,
  `password` varchar(30) NOT NULL,
  `licenseNumber` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `cabNumber` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`phoneNumber`),
  UNIQUE KEY `licenseNumber` (`licenseNumber`),
  UNIQUE KEY `emailId` (`emailId`),
  UNIQUE KEY `cabNumber` (`cabNumber`),
  CONSTRAINT `Driver_ibfk_1` FOREIGN KEY (`cabNumber`) REFERENCES `Cab` (`cabNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Driver`
--

LOCK TABLES `Driver` WRITE;
/*!40000 ALTER TABLE `Driver` DISABLE KEYS */;
INSERT INTO `Driver` VALUES ('k','Raju','k.raju@gmail.com','1234567890','M','1964-12-13','123456','12sd1','Hyderabad','Available','TS12A1234');
/*!40000 ALTER TABLE `Driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ride`
--

DROP TABLE IF EXISTS `Ride`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ride` (
  `driverId` varchar(30) NOT NULL DEFAULT '',
  `customerId` varchar(30) NOT NULL DEFAULT '',
  `source` text,
  `destination` text NOT NULL,
  `status` varchar(30) DEFAULT ' ',
  `amount` double DEFAULT '0',
  `bookingTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `carType` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`driverId`,`customerId`,`bookingTime`),
  KEY `customerId` (`customerId`),
  CONSTRAINT `Ride_ibfk_1` FOREIGN KEY (`driverId`) REFERENCES `Driver` (`phoneNumber`),
  CONSTRAINT `Ride_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `Customer` (`phoneNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ride`
--

LOCK TABLES `Ride` WRITE;
/*!40000 ALTER TABLE `Ride` DISABLE KEYS */;
INSERT INTO `Ride` VALUES ('1234567890','1234567890','Kukatpally, Hyderabad, Telangana, India','Nallakunta, Hyderabad, Telangana, India','Ride SuccessFul',181.86,'2017-06-07 04:50:36',NULL),('1234567890','7207874257','KukatPally','BVRITH','Ride SuccessFul',9.999,'2017-06-05 10:27:09',NULL),('1234567890','7207874257','Kuakhia, Chandipur, Odisha, India','Odisha Tourism, Greenlands Road, Begumpet, Hyderabad, Telangana, India','Ride SuccessFul',11378.49,'2017-06-06 09:55:45',NULL),('1234567890','7207874257','Kukatpally, Hyderabad, Telangana, India','Ashok Nagar, Hyderabad, Telangana, India','Ride SuccessFul',160.41,'2017-06-06 10:43:54',NULL),('1234567890','7207874257','A.S.Rao Nagar Bus Stop, Doctor A S Rao Nagar Road, Swamik Nagar, Secunderabad, Telangana, India','Begumpet, Hyderabad, Telangana, India','Ride SuccessFul',124.1,'2017-06-06 10:48:48',NULL),('1234567890','7207874257','Kukatpally, Hyderabad, Telangana, India','Nallakunta, Hyderabad, Telangana, India','Ride SuccessFul',181.86,'2017-06-06 10:50:10',NULL),('1234567890','7207874257','Kukatpally, Hyderabad, Telangana, India','Necklace Road, Hussain Nagar Colony, Begumpet, Hyderabad, Telangana, India','Ride SuccessFul',86,'2017-06-08 03:55:59',NULL);
/*!40000 ALTER TABLE `Ride` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-08 11:44:19
