CREATE DATABASE  IF NOT EXISTS `usjr` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `usjr`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: usjr
-- ------------------------------------------------------
-- Server version	5.6.14

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
-- Table structure for table `colleges`
--

DROP TABLE IF EXISTS `colleges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colleges` (
  `coll_id` int(11) NOT NULL,
  `coll_fname` varchar(100) NOT NULL,
  `coll_sname` varchar(45) NOT NULL,
  PRIMARY KEY (`coll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colleges`
--

LOCK TABLES `colleges` WRITE;
/*!40000 ALTER TABLE `colleges` DISABLE KEYS */;
INSERT INTO `colleges` VALUES (1,'College of Information, Computer and Communications Technology','CICCT'),(2,'College of Commerce','COMMERCE'),(3,'College of Nursing','CON'),(4,'College of Arts and Sciences','CAS'),(5,'College of Engineering','COEng'),(6,'College of Education','COE');
/*!40000 ALTER TABLE `colleges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programs`
--

DROP TABLE IF EXISTS `programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programs` (
  `prog_id` int(11) NOT NULL,
  `prog_coll` int(11) NOT NULL,
  `prog_fname` varchar(100) NOT NULL,
  `prog_sname` varchar(45) NOT NULL,
  PRIMARY KEY (`prog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programs`
--

LOCK TABLES `programs` WRITE;
/*!40000 ALTER TABLE `programs` DISABLE KEYS */;
INSERT INTO `programs` VALUES (1,1,'Bachelor of Science in Information Technology','BSIT'),(2,1,'Bachelor of Science in Computer Science','BSCS'),(3,1,'Bachelor of Science in Information Systems','BSIS'),(4,2,'Bachelor of Science in Accountancy','BSA'),(5,3,'Bachelor of Science in Nursing','BSN'),(6,2,'Bachelor of Science in Management Accounting','MGT-ACCTG'),(7,2,'Bachelor of Science in Business Administration','BSBA'),(8,2,'Human Resource Development Management','HRDM'),(9,2,'Financial Management','FM'),(10,2,'Marketing Management','MM'),(11,2,'Bachelor of Science in Entrepresneurship','BS Entrep'),(12,2,'Operations Management','OM'),(13,2,'Bachelor of Science in Office Administration','BSOA'),(14,2,'Small Business Management','SBM'),(15,2,'Bachelor of Science in Hospitality Management-General Course','BSHM-General Course'),(16,2,'Bachelor of Science in Hospitality Management major in Food and Beverage Management','BSHM-F&B'),(17,2,'Bachelor of Science in Tourisn','BST'),(18,2,'Associate in Hospitality Management','AHM'),(19,2,'Associate in Tourism','AT'),(20,4,'Bachelor of Arts in English','AB-English'),(21,4,'Bachelor of Arts in LIACOM Major in Communication and Marketing','AB-LIACOM'),(22,4,'Bachelor of Arts in Communication','AB-Communicaton'),(23,4,'Bachelor of Arts in Journalism','AB-Journalism'),(24,4,'Bachelor of Science in Biology','BS-Bio'),(25,4,'Bachelor of Arts in Library and Information Science','AB-Libsci'),(26,4,'Bachelor of Science in Psychology','BS-Psychology'),(27,4,'Bachelor of Arts in International Studies','BSIS'),(28,4,'Bachelor of Arts in Political Science','BS-Polsci'),(29,5,'Bachelor of Science in Civili Engineering','BSCE'),(30,5,'Bachelor of Science in Computer Engineering','BSCompE'),(31,5,'Bachelor of Science in Electronics Engineering','BSECE'),(32,5,'Bachelor of Science in Electrical Engineering','BSEE'),(33,5,'Bachelor of Science in Industrial Engineering','BSIE'),(34,5,'Bachelor of Science in Mechanical Engineering','BSME'),(35,6,'Bachelor of Elementary Education - Special Education','BEED-SPED'),(36,6,'Bachelor of Elementary Education - Preschool Education','BEED-PSE'),(37,6,'Bachelor of Elementary Education - General Curriculum','BEED'),(38,6,'Bachelor of Secondary Education with the following Majors in Biological Sciences','BSED-BS'),(39,6,'Bachelor of Secondary Education with the following Majors in English','BSED-Eng'),(40,6,'Bachelor of Secondary Education with the following Majors in Mathematics','BSED-Math'),(41,6,'Bachelor of Secondary Education wiht the following Majors in Music, Arts, PE and Health','BSED-MAPEH'),(42,6,'Certificate of Proficiency in Professional Education ','PPE'),(43,6,'Diploma in Special Education','SPED'),(44,6,'Diploma in Advance Program in Special Education','DAPSPED');
/*!40000 ALTER TABLE `programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `studid` varchar(10) NOT NULL,
  `studfname` varchar(45) NOT NULL,
  `studmname` varchar(45) DEFAULT NULL,
  `studlname` varchar(45) NOT NULL,
  `studcourse` varchar(45) NOT NULL,
  `studyear` int(5) NOT NULL,
  PRIMARY KEY (`studid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('1','Gregg Victor','Delgado','Gabison','BSIT',3),('2','Roderick','Agravante','Bandalan','BSCS',4),('3','Tristan','','Alfeche','BSIT',4),('4','Herbert','Ampusta','Boloyos','BSCS',4),('5','Hannah Nina','','dela Cuesta','BSIT',1),('6','Jacquie','','Bragat','BSIT',1),('7','Joan Lou Marie','Degamo','Miro','BSIT',2),('8','Johann Carl','','Callellero','BSIT',3);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `stid` int(11) NOT NULL,
  `stlname` varchar(60) NOT NULL,
  `stmname` varchar(60) DEFAULT NULL,
  `stfname` varchar(60) NOT NULL,
  `stcollege` int(11) NOT NULL,
  `stprogram` int(11) NOT NULL,
  `styear` int(5) NOT NULL,
  PRIMARY KEY (`stid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Bandalan','Agravante','Roderick',1,1,4),(2,'Gabison','Delgado','Gregg Victor',1,2,3),(3,'Boloyos','Ampusta','Herbert',1,1,2),(4,'Dizon','Besejos','Juvyline',2,4,1);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers` (
  `teacherid` varchar(10) NOT NULL,
  `teacherfname` varchar(45) NOT NULL,
  `teachermname` varchar(45) DEFAULT NULL,
  `teacherlname` varchar(45) NOT NULL,
  `teachertype` int(3) NOT NULL,
  `teachertitle` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`teacherid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES ('1','Lorna','Degamo','Miro',3,'MSMath'),('2','Jovelyn','Carmona','Cuizon',2,'MSIT'),('3','Nicolas','','Villamero',3,'MS-Math'),('4','Herminigilda','Ocampo','Rosinto',3,'MS-Math'),('5','Teresita','','Pagusara',3,'MSIT'),('6','Mary Ann','Gonzales','Roble',2,'MBA, DMHRM'),('7','Roy Adrian','M','Salares',3,'');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachertypes`
--

DROP TABLE IF EXISTS `teachertypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachertypes` (
  `typeid` int(3) NOT NULL,
  `typedescription` varchar(100) NOT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachertypes`
--

LOCK TABLES `teachertypes` WRITE;
/*!40000 ALTER TABLE `teachertypes` DISABLE KEYS */;
INSERT INTO `teachertypes` VALUES (1,'Probationary - Part-Time'),(2,'Probationary - Full-Time'),(3,'Tenured');
/*!40000 ALTER TABLE `teachertypes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-10 11:26:24

use usjr;
select * from student;
select * from students;
select * from colleges;
select * from programs;