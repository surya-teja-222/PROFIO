-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: profiodb
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `canview`
--

DROP TABLE IF EXISTS `canview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canview` (
  `mail` varchar(50) DEFAULT NULL,
  `se` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canview`
--

LOCK TABLES `canview` WRITE;
/*!40000 ALTER TABLE `canview` DISABLE KEYS */;
INSERT INTO `canview` VALUES ('admin@gmail.com','admin@gmail.com'),('suryatejareddy222@gmail.com','admin@gmail.com'),('e20cse208@bennett.edu.in','admin@gmail.com'),('e20cse197@bennett.edu.in','admin@gmail.com'),('e20cse181@bennett.edu.in','admin@gmail.com');
/*!40000 ALTER TABLE `canview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_dat`
--

DROP TABLE IF EXISTS `edu_dat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_dat` (
  `mail` varchar(50) DEFAULT NULL,
  `snam` varchar(3500) DEFAULT NULL,
  `doin` varchar(2048) DEFAULT NULL,
  `year` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_dat`
--

LOCK TABLES `edu_dat` WRITE;
/*!40000 ALTER TABLE `edu_dat` DISABLE KEYS */;
INSERT INTO `edu_dat` VALUES ('admin@gmail.com','j','j','j'),('suryatejareddy222@gmail.com','j','j','j'),('e20cse208@bennett.edu.in','j___Bennett University','j___B-tech','j___2020-10--2024-07'),('e20cse197@bennett.edu.in','j___Bennett University','j___B-tech','j___2020-10--2024-07'),('e20cse181@bennett.edu.in','j___Bennett University','j___B-Tech','j___2021-10--2024-07');
/*!40000 ALTER TABLE `edu_dat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `followers`
--

DROP TABLE IF EXISTS `followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `followers` (
  `mail` varchar(50) DEFAULT NULL,
  `f` varchar(2048) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followers`
--

LOCK TABLES `followers` WRITE;
/*!40000 ALTER TABLE `followers` DISABLE KEYS */;
INSERT INTO `followers` VALUES ('admin@gmail.com',NULL),('suryatejareddy222@gmail.com',NULL),('e20cse208@bennett.edu.in',NULL),('e20cse197@bennett.edu.in',NULL),('e20cse181@bennett.edu.in',NULL);
/*!40000 ALTER TABLE `followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lice_dat`
--

DROP TABLE IF EXISTS `lice_dat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lice_dat` (
  `mail` varchar(50) DEFAULT NULL,
  `cnam` varchar(5000) DEFAULT NULL,
  `comp` varchar(2048) DEFAULT NULL,
  `year` varchar(1024) DEFAULT NULL,
  `id` varchar(4000) DEFAULT NULL,
  `url` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lice_dat`
--

LOCK TABLES `lice_dat` WRITE;
/*!40000 ALTER TABLE `lice_dat` DISABLE KEYS */;
INSERT INTO `lice_dat` VALUES ('admin@gmail.com','j','j','j','j','j'),('suryatejareddy222@gmail.com','j','j','j','j','j'),('e20cse208@bennett.edu.in','j___Upgrading to Java 8___Grammar and Punctuation','j___EDUCBA___COURERA','j___2021-06___2020-12','j___88JA9TEXQ___3DTZQSWTW945','j___https://www.educba.com/my-courses/learn/?xcdi=3796___https://www.coursera.org/account/accomplishments/verify/3DTZQSWTW945'),('e20cse197@bennett.edu.in','j___Upgrading to java 8','j___EDUCBA','j___2021-07','j___LB9VOHWEE','j___https://www.educba.com/certificate/?c=LB9VOHWEE'),('e20cse181@bennett.edu.in','j','j','j','j','j');
/*!40000 ALTER TABLE `lice_dat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_mail`
--

DROP TABLE IF EXISTS `login_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_mail` (
  `mail` varchar(60) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_mail`
--

LOCK TABLES `login_mail` WRITE;
/*!40000 ALTER TABLE `login_mail` DISABLE KEYS */;
INSERT INTO `login_mail` VALUES ('admin@gmail.com','ADMIN'),('suryatejareddy222@gmail.com','ADMIN'),('e20cse208@bennett.edu.in','e20cse208'),('e20cse197@bennett.edu.in','e20cse197'),('e20cse181@bennett.edu.in','e20cse181');
/*!40000 ALTER TABLE `login_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privacy_inf`
--

DROP TABLE IF EXISTS `privacy_inf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privacy_inf` (
  `mail` varchar(50) DEFAULT NULL,
  `bc` varchar(10) DEFAULT NULL,
  `ed` varchar(10) DEFAULT NULL,
  `lc` varchar(10) DEFAULT NULL,
  `we` varchar(10) DEFAULT NULL,
  `sc` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privacy_inf`
--

LOCK TABLES `privacy_inf` WRITE;
/*!40000 ALTER TABLE `privacy_inf` DISABLE KEYS */;
INSERT INTO `privacy_inf` VALUES ('admin@gmail.com','e','e','e','e','e'),('suryatejareddy222@gmail.com','e','e','e','e','e'),('e20cse208@bennett.edu.in','e','e','e','e','e'),('e20cse197@bennett.edu.in','e','e','e','e','e'),('e20cse181@bennett.edu.in','e','e','e','e','e');
/*!40000 ALTER TABLE `privacy_inf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social`
--

DROP TABLE IF EXISTS `social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social` (
  `mail` varchar(60) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `web` varchar(500) DEFAULT NULL,
  `insta` varchar(100) DEFAULT NULL,
  `fb` varchar(255) DEFAULT NULL,
  `tweet` varchar(100) DEFAULT NULL,
  `snap` varchar(100) DEFAULT NULL,
  `git` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social`
--

LOCK TABLES `social` WRITE;
/*!40000 ALTER TABLE `social` DISABLE KEYS */;
INSERT INTO `social` VALUES ('admin@gmail.com','6303471188','profio','profio','profio','profio','profio','profio'),('suryatejareddy222@gmail.com','6303471188','github.com/surya-teja-222','surya_teja_222','surya_teja_222','suryateja222','suryateja222','surya-teja-222'),('e20cse208@bennett.edu.in','9818959069','shreyraj','shreyraj','shreyraj','shreyraj','shreyraj','shreyraj'),('e20cse197@bennett.edu.in','7650914199','sarthak','sarthak','sarthak','sarthak','sarthak','sarthak'),('e20cse181@bennett.edu.in','6005961224','Toufeeq','Toufeeq','Toufeeq','Toufeeq','Toufeeq','Toufeeq');
/*!40000 ALTER TABLE `social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udat_profile`
--

DROP TABLE IF EXISTS `udat_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udat_profile` (
  `mail` varchar(60) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `profession` varchar(50) DEFAULT NULL,
  `workplace` varchar(100) DEFAULT NULL,
  `dob` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udat_profile`
--

LOCK TABLES `udat_profile` WRITE;
/*!40000 ALTER TABLE `udat_profile` DISABLE KEYS */;
INSERT INTO `udat_profile` VALUES ('admin@gmail.com','Surya Teja','6303471188','INDIA','VIZAG','Male','ADMIN','PROFIO','14/01/2003'),('suryatejareddy222@gmail.com','Surya Teja Reddy','6303471188','INDIA','Visakhapatnam','Male','Designer','PROFIO','14/01/2003'),('e20cse208@bennett.edu.in','Shrey Raj','9818959069','INDIA','New Delhi','Male','Student','Bennett University','16/12/2001'),('e20cse197@bennett.edu.in','Sarthak Mahajan','7650914199','INDIA','Mandi','Male','Student','Bennett University','30/10/2002'),('e20cse181@bennett.edu.in','Toufeeq Hussain','6005961224','INDIA','Srinagar','Male','Student','Bennett University','25/03/2000');
/*!40000 ALTER TABLE `udat_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_dat`
--

DROP TABLE IF EXISTS `work_dat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_dat` (
  `mail` varchar(50) DEFAULT NULL,
  `snam` varchar(3500) DEFAULT NULL,
  `doin` varchar(2048) DEFAULT NULL,
  `year` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_dat`
--

LOCK TABLES `work_dat` WRITE;
/*!40000 ALTER TABLE `work_dat` DISABLE KEYS */;
INSERT INTO `work_dat` VALUES ('admin@gmail.com','j','j','j'),('suryatejareddy222@gmail.com','j','j','j'),('e20cse208@bennett.edu.in','j','j','j'),('e20cse197@bennett.edu.in','j','j','j'),('e20cse181@bennett.edu.in','j','j','j');
/*!40000 ALTER TABLE `work_dat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-07 19:35:00
