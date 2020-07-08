-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: sms
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_code` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `course_unit` int(11) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `current_faculty_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj2x062fi9rmn3gbh0ndb2paly` (`current_faculty_id`)
) ENGINE=MyISAM AUTO_INCREMENT=518 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (46,'1','String Theory',5,'Physics',97),(99,'2','One hundred years of solitude',3,'Literature',98),(102,'3','Quantum Physics',6,'Physics',270),(260,'4','Baron In the Tree',4,'Literature',16),(266,'5','Defence Against the Dark Arts',2,'Magic',17),(267,'6','Transfiguration',4,'Magic',204),(268,'7','Biochemistry',3,'Chemistry',271),(269,'8','Organic Chemistry',3,'Chemistry',272);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (534),(534),(534);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_app`
--

DROP TABLE IF EXISTS `leave_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `duration` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd0m2a6f9hjtsutfiddkryq366` (`user_id`),
  KEY `FKn5ic0g0gwesvnfe3uohgevbsu` (`faculty_id`)
) ENGINE=MyISAM AUTO_INCREMENT=534 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_app`
--

LOCK TABLES `leave_app` WRITE;
/*!40000 ALTER TABLE `leave_app` DISABLE KEYS */;
INSERT INTO `leave_app` VALUES (259,NULL,'2019-01-14 00:00:00','Approved',NULL,'2019-01-17 00:00:00',97),(258,NULL,'2019-12-15 00:00:00','Rejected',NULL,'2019-12-17 00:00:00',97),(257,NULL,'2019-11-13 00:00:00','Approved',NULL,'2019-11-16 00:00:00',97),(329,NULL,'2019-12-11 00:00:00','Approved',NULL,'2019-12-16 00:00:00',270),(330,NULL,'2019-01-13 00:00:00','Approved',NULL,'2019-01-14 00:00:00',270),(459,NULL,'2019-12-08 00:00:00','Approved',NULL,'2019-12-09 00:00:00',98),(460,NULL,'2019-12-16 00:00:00','Pending',NULL,'2019-12-17 00:00:00',271),(461,NULL,'2020-01-09 00:00:00','Rejected',NULL,'2020-01-10 00:00:00',16),(516,NULL,'2019-12-16 00:00:00','Pending',NULL,'2019-12-18 00:00:00',271),(529,NULL,'2019-12-02 00:00:00','Approved',NULL,'2019-12-03 00:00:00',97),(530,NULL,'2019-11-12 00:00:00','Pending',NULL,'2019-12-19 00:00:00',17),(531,NULL,'2020-01-01 00:00:00','Pending',NULL,'2020-01-02 00:00:00',17),(532,NULL,'2019-12-10 00:00:00','Pending',NULL,'2019-12-12 00:00:00',204),(533,NULL,'2019-12-19 00:00:00','Pending',NULL,'2019-12-26 00:00:00',204);
/*!40000 ALTER TABLE `leave_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_course`
--

DROP TABLE IF EXISTS `student_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` varchar(255) DEFAULT NULL,
  `semester` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKejrkh4gv8iqgmspsanaji90ws` (`course_id`),
  KEY `FKkxhaa5w0topb37h5caltc6o27` (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=527 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_course`
--

LOCK TABLES `student_course` WRITE;
/*!40000 ALTER TABLE `student_course` DISABLE KEYS */;
INSERT INTO `student_course` VALUES (370,'NA',0,'Approved',102,368),(369,'NA',0,'Approved',99,368),(367,'NA',0,'Approved',46,368),(379,'NA',0,'Approved',102,377),(378,'NA',0,'Approved',99,377),(376,'NA',0,'Approved',46,377),(388,'NA',0,'Approved',102,386),(387,'NA',0,'Approved',99,386),(385,'NA',0,'Approved',46,386),(397,'NA',0,'Approved',102,395),(396,'NA',0,'Approved',99,395),(394,'NA',0,'Approved',46,395),(405,'NA',0,'Approved',99,404),(403,'NA',0,'Approved',46,404),(414,'B',0,'Graded',99,413),(412,'NA',0,'Rejected',46,413),(275,'C',0,'Graded',46,276),(277,'A',0,'Graded',99,276),(278,'B',0,'Graded',102,276),(279,'A',0,'Graded',260,276),(280,'A',0,'Graded',266,276),(281,'B',0,'Graded',267,276),(282,'A',0,'Graded',268,276),(283,'A',0,'Graded',269,276),(302,'A',0,'Graded',46,303),(304,'B',0,'Graded',99,303),(305,'A',0,'Graded',102,303),(306,'B',0,'Graded',260,303),(307,'C',0,'Graded',266,303),(308,'A',0,'Graded',267,303),(309,'B',0,'Graded',268,303),(310,'B',0,'Graded',269,303),(311,'C',0,'Graded',46,312),(313,'F',0,'Graded',99,312),(314,'C',0,'Graded',102,312),(315,'A',0,'Graded',260,312),(316,'D',0,'Graded',266,312),(317,'C',0,'Graded',267,312),(318,'C',0,'Graded',268,312),(319,'C',0,'Graded',269,312),(320,'B',0,'Graded',46,321),(322,'D',0,'Graded',99,321),(323,'B',0,'Graded',102,321),(324,'A',0,'Graded',260,321),(325,'B',0,'Graded',266,321),(326,'A',0,'Graded',267,321),(327,'D',0,'Graded',268,321),(328,'D',0,'Graded',269,321),(362,'A',0,'Graded',260,359),(361,'B',0,'Graded',102,359),(360,'B',0,'Graded',99,359),(358,'D',0,'Graded',46,359),(349,'A',0,'Graded',46,350),(351,'A',0,'Graded',99,350),(352,'A',0,'Graded',102,350),(353,'A',0,'Graded',260,350),(354,'A',0,'Graded',266,350),(355,'A',0,'Graded',267,350),(356,'A',0,'Graded',268,350),(357,'A',0,'Graded',269,350),(363,'B',0,'Graded',266,359),(364,'C',0,'Graded',267,359),(365,'B',0,'Graded',268,359),(366,'B',0,'Graded',269,359),(371,'NA',0,'Approved',260,368),(372,'NA',0,'Approved',266,368),(373,'NA',0,'Approved',267,368),(374,'NA',0,'Approved',268,368),(375,'NA',0,'Approved',269,368),(380,'NA',0,'Approved',260,377),(381,'NA',0,'Approved',266,377),(382,'NA',0,'Approved',267,377),(383,'NA',0,'Approved',268,377),(384,'NA',0,'Approved',269,377),(389,'NA',0,'Approved',260,386),(390,'NA',0,'Approved',266,386),(391,'NA',0,'Approved',267,386),(392,'NA',0,'Rejected',268,386),(393,'NA',0,'Approved',269,386),(398,'NA',0,'Approved',260,395),(399,'NA',0,'Approved',266,395),(400,'NA',0,'Approved',267,395),(401,'NA',0,'Approved',268,395),(402,'NA',0,'Approved',269,395),(406,'NA',0,'Approved',102,404),(407,'NA',0,'Rejected',260,404),(408,'NA',0,'Approved',266,404),(409,'NA',0,'Approved',267,404),(410,'NA',0,'Approved',268,404),(411,'NA',0,'Approved',269,404),(415,'NA',0,'Approved',102,413),(416,'NA',0,'Approved',260,413),(417,'NA',0,'Rejected',266,413),(418,'NA',0,'Approved',267,413),(419,'NA',0,'Approved',268,413),(420,'NA',0,'Approved',269,413),(470,'NA',0,'Approved',269,463),(469,'NA',0,'Available',268,463),(468,'NA',0,'Pending',267,463),(467,'NA',0,'Available',266,463),(466,'NA',0,'Available',260,463),(465,'NA',0,'Available',102,463),(464,'NA',0,'Available',99,463),(462,'A',0,'Graded',46,463),(478,'NA',0,'Available',268,472),(477,'NA',0,'Available',267,472),(476,'NA',0,'Rejected',266,472),(475,'NA',0,'Available',260,472),(474,'NA',0,'Available',102,472),(473,'NA',0,'Pending',99,472),(471,'NA',0,'Available',46,472),(479,'NA',0,'Available',269,472),(480,'NA',0,'Available',46,481),(482,'NA',0,'Available',99,481),(483,'NA',0,'Available',102,481),(484,'NA',0,'Available',260,481),(485,'NA',0,'Available',266,481),(486,'NA',0,'Available',267,481),(487,'NA',0,'Available',268,481),(488,'NA',0,'Available',269,481),(489,'NA',0,'Available',46,490),(491,'NA',0,'Available',99,490),(492,'NA',0,'Available',102,490),(493,'NA',0,'Available',260,490),(494,'NA',0,'Available',266,490),(495,'NA',0,'Available',267,490),(496,'NA',0,'Available',268,490),(497,'NA',0,'Available',269,490),(498,'NA',0,'Available',46,499),(500,'NA',0,'Available',99,499),(501,'NA',0,'Available',102,499),(502,'NA',0,'Available',260,499),(503,'NA',0,'Available',266,499),(504,'NA',0,'Available',267,499),(505,'NA',0,'Available',268,499),(506,'NA',0,'Available',269,499),(507,'NA',0,'Available',46,508),(509,'NA',0,'Available',99,508),(510,'NA',0,'Available',102,508),(511,'NA',0,'Available',260,508),(512,'NA',0,'Available',266,508),(513,'NA',0,'Available',267,508),(514,'NA',0,'Available',268,508),(515,'NA',0,'Available',269,508);
/*!40000 ALTER TABLE `student_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_type` varchar(31) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pass_word` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `facultyid` int(11) DEFAULT NULL,
  `cgpa` int(11) DEFAULT NULL,
  `semister` int(11) DEFAULT NULL,
  `studentid` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=528 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('FAC',204,NULL,'frodo','Magic',8,NULL,NULL,NULL,'Frodo','Baggins',NULL),('FAC',17,NULL,'jon','Magic',2,NULL,NULL,NULL,'Jon','Snow',NULL),('STU',463,NULL,'bruce',NULL,NULL,25,NULL,21,'Bruce','Wayne','2021'),('FAC',16,NULL,'milan','Literature',1,NULL,NULL,NULL,'Milan','Kundera',NULL),('ADM',1,NULL,'admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('STU',413,NULL,'bernnie',NULL,NULL,12,NULL,20,'Bernadette','Rostenkowski','2020'),('FAC',97,NULL,'newton','Physics',3,NULL,NULL,NULL,'Isaac','Newton',NULL),('FAC',98,NULL,'italo','Literature',5,NULL,NULL,NULL,'Italo','Calvino',NULL),('STU',472,NULL,'clark',NULL,NULL,0,NULL,22,'Clark','Kent','2021'),('STU',359,NULL,'arcadio',NULL,NULL,110,NULL,14,'Arcadio','Buendia','2019'),('STU',350,NULL,'aureliano',NULL,NULL,150,NULL,13,'Aureliano','Buendia','2019'),('STU',276,NULL,'ursula',NULL,NULL,130,NULL,8,'Ursula','Iguaran','2019'),('STU',303,NULL,'remedios',NULL,NULL,133,NULL,11,'Remedios','Moscote','2019'),('STU',368,NULL,'leonard',NULL,NULL,0,NULL,15,'Leonard','Hofstedar','2020'),('STU',377,NULL,'penny',NULL,NULL,0,NULL,16,'Penny','Penny','2020'),('STU',386,NULL,'howard',NULL,NULL,0,NULL,17,'Howard','Wolowitz','2020'),('STU',395,NULL,'raj',NULL,NULL,0,NULL,18,'Raj','Koothrappali','2020'),('STU',404,NULL,'amy',NULL,NULL,0,NULL,19,'Amy','Fowler','2020'),('STU',481,NULL,'diana',NULL,NULL,0,NULL,23,'Diana','Prince','2021'),('FAC',270,NULL,'einstein','Physics',4,NULL,NULL,NULL,'Albert','Einstein',NULL),('FAC',271,NULL,'curie','Chemistry',6,NULL,NULL,NULL,'Marie','Curie',NULL),('FAC',272,NULL,'nobel','Chemistry',7,NULL,NULL,NULL,'Alfred','Nobel',NULL),('STU',312,NULL,'amaranta',NULL,NULL,87,NULL,12,'Amaranta','Buendia','2019'),('STU',321,NULL,'rebeca',NULL,NULL,110,NULL,10,'Rebeca','Ulloa','2019'),('STU',490,NULL,'barry',NULL,NULL,0,NULL,24,'Barry','Allen','2021'),('STU',499,NULL,'arthur',NULL,NULL,0,NULL,25,'Arthur','Curry','2021'),('STU',508,NULL,'victor',NULL,NULL,0,NULL,26,'Victor','Stone','2021');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-15 15:27:52
