-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: jobdb
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `administator`
--

DROP TABLE IF EXISTS `administator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administator` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Full_name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Email` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `User_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `User_admin_idx` (`User_ID`),
  CONSTRAINT `user_admin_id` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administator`
--

LOCK TABLES `administator` WRITE;
/*!40000 ALTER TABLE `administator` DISABLE KEYS */;
INSERT INTO `administator` VALUES (1,'Vo Thanh Len','thanhlen@gmail.com',2),(2,'Võ Thành Lên','lenvo789@gmail.com',158),(3,'Lên Võ','lenvo1234@gmail.com',159);
/*!40000 ALTER TABLE `administator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Full_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Email` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `City` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Avatar` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Description` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `User_ID` int DEFAULT NULL,
  `Phone` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Degree` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Major` varchar(45) CHARACTER SET utf32 COLLATE utf32_bin DEFAULT NULL,
  `Sex` varchar(45) CHARACTER SET utf32 COLLATE utf32_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  KEY `candidate_user_idx` (`User_ID`),
  CONSTRAINT `candidate_user_id` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf32 COLLATE=utf32_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (1,'Lee Min Hô','hohoho@gmail.com','2022-01-22','TP.HCM','https://res.cloudinary.com/lenvo1202/image/upload/v1663781702/nyrgujamrdksr9ojyrkn.jpg',NULL,129,'0777824399','Cấp 3','Công nghệ thông tin','Nam'),(2,'Park Bo Gum','GumPark@gmail.com','2022-01-11','HCM','https://res.cloudinary.com/lenvo1202/image/upload/v1681722093/avatar2_b7c7al.jpg','',123,'0339283094','Đại học','Kinh tế','Nam'),(3,'Nguyễn Nhật Sang','sangou01@gmail.com','2022-01-11','HCM','https://res.cloudinary.com/lenvo1202/image/upload/v1681722091/avatar_NhatSang_jig0le.jpg',NULL,124,'0339283094','Đại học','Luật','Nữ'),(17,'Nguyễn Văn Bê','BeNguyen@gmail.com','2022-01-02','HCM','https://res.cloudinary.com/lenvo1202/image/upload/v1681722093/avatar4_dtan6h.jpg',NULL,155,'0354674111','Đại học','Kinh tế','Nam'),(18,'Nguyễn Du','DongDu@gmail.com','2022-01-16','Đà Nẵng','https://res.cloudinary.com/lenvo1202/image/upload/v1681722094/avatar3_qb54of.jpg',NULL,156,'0339283094','Cấp 3','Công nghệ thông tin','Nam'),(21,'Lên Võ','lenvo1234@gmail.com','2001-01-12','HCM','https://res.cloudinary.com/lenvo1202/image/upload/v1681722192/avatar8_invcmk.jpg',NULL,159,'0777824398','Đại học','Kinh tế','Nam'),(22,'Vo Thanh Len','lenvo12345@gmail.com','2001-01-12','Đà Nẵng','https://res.cloudinary.com/lenvo1202/image/upload/v1681722191/avatar7_qdjhna.jpg',NULL,160,'0777824397','Đại học','Công nghệ thông tin','Nam'),(23,'Võ Thành Lên','lenvo1001@gmail.com','2001-01-12','TP.HCM','https://res.cloudinary.com/lenvo1202/image/upload/v1681722191/avatar7_qdjhna.jpg',NULL,161,'0777824377','Cấp 3','Công nghệ thông tin','Nam'),(24,'Võ Thành Lên','lenvo1002@gmail.com','2001-01-12','TP.HCM','https://res.cloudinary.com/lenvo1202/image/upload/v1681568721/awotcsxe4ndrtmdevogw.png',NULL,162,'0777824398','Cấp 3','Công nghệ thông tin','Nam');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_category`
--

DROP TABLE IF EXISTS `candidate_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_category` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Candidate_ID` int DEFAULT NULL,
  `Cate_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Candidate_ID_idx` (`Candidate_ID`),
  KEY `can_cate_category_id_idx` (`Cate_ID`),
  CONSTRAINT `can_cate_candidate_id` FOREIGN KEY (`Candidate_ID`) REFERENCES `candidate` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `can_cate_category_id` FOREIGN KEY (`Cate_ID`) REFERENCES `category` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_category`
--

LOCK TABLES `candidate_category` WRITE;
/*!40000 ALTER TABLE `candidate_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_company`
--

DROP TABLE IF EXISTS `candidate_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_company` (
  `ID` int NOT NULL,
  `Candidate_ID` int DEFAULT NULL,
  `Company_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Candidate_company_candidate_idx` (`Candidate_ID`),
  KEY `Candidate_company_company_idx` (`Company_ID`),
  CONSTRAINT `Candidate_company_candidate` FOREIGN KEY (`Candidate_ID`) REFERENCES `candidate` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `Candidate_company_company` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_company`
--

LOCK TABLES `candidate_company` WRITE;
/*!40000 ALTER TABLE `candidate_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_job`
--

DROP TABLE IF EXISTS `candidate_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_job` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Candidate_ID` int DEFAULT NULL,
  `Job_ID` int DEFAULT NULL,
  `AppliedDate` date DEFAULT NULL,
  `CV_ID` int DEFAULT NULL,
  `IsApplied` int DEFAULT '0',
  `IsLiked` int DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `can_job_candidate_id_idx` (`Candidate_ID`),
  KEY `can_job_job_id_idx` (`Job_ID`),
  KEY `can_job_cv_id_idx` (`CV_ID`),
  CONSTRAINT `can_job_candidate_id` FOREIGN KEY (`Candidate_ID`) REFERENCES `candidate` (`ID`),
  CONSTRAINT `can_job_cv_id` FOREIGN KEY (`CV_ID`) REFERENCES `curriculum_vitae` (`ID`),
  CONSTRAINT `can_job_job_id` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_job`
--

LOCK TABLES `candidate_job` WRITE;
/*!40000 ALTER TABLE `candidate_job` DISABLE KEYS */;
INSERT INTO `candidate_job` VALUES (1,1,2,'2022-05-19',1,1,0),(2,2,4,'2022-05-19',2,1,0),(3,2,2,'2022-05-19',6,1,0),(4,1,4,'2022-05-19',4,1,0),(5,3,3,'2022-05-19',3,1,0),(6,1,3,'2022-05-19',7,1,0),(7,3,2,'2022-05-19',5,1,0),(16,1,1,'2022-09-02',1,1,NULL),(17,23,1,'2023-04-17',14,1,NULL),(18,23,1,'2023-04-17',14,1,NULL),(19,23,1,'2023-04-17',14,1,NULL),(20,23,1,'2023-04-17',14,1,NULL),(21,23,1,'2023-04-17',14,1,NULL),(22,23,1,'2023-04-17',14,1,NULL),(23,23,1,'2023-04-17',14,1,NULL),(24,23,1,'2023-04-17',14,1,NULL),(25,23,1,'2023-04-17',14,1,NULL),(26,23,1,'2023-04-17',14,1,NULL),(27,23,1,'2023-04-17',14,1,NULL),(28,23,1,'2023-04-17',14,1,NULL),(29,23,1,'2023-04-17',14,1,NULL),(30,23,1,'2023-04-17',14,1,NULL),(31,23,1,'2023-04-17',14,1,NULL),(32,23,11,'2023-04-19',14,1,NULL),(33,23,13,'2023-04-19',14,1,NULL),(34,23,13,'2023-04-19',14,1,NULL),(35,23,13,'2023-04-19',14,1,NULL),(36,23,13,'2023-04-19',14,1,NULL),(37,23,1,'2023-04-24',14,1,NULL),(38,23,5,'2023-04-24',14,1,NULL),(39,23,3,'2023-04-27',14,1,NULL),(40,23,3,'2023-04-27',14,1,NULL),(41,23,3,'2023-04-27',14,1,NULL);
/*!40000 ALTER TABLE `candidate_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_major`
--

DROP TABLE IF EXISTS `candidate_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_major` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Candidate_ID` int DEFAULT NULL,
  `Major_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `can_major_candidate_id_idx` (`Candidate_ID`),
  KEY `can_major_major_id_idx` (`Major_ID`),
  CONSTRAINT `can_major_candidate_id` FOREIGN KEY (`Candidate_ID`) REFERENCES `candidate` (`ID`),
  CONSTRAINT `can_major_major_id` FOREIGN KEY (`Major_ID`) REFERENCES `major` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_major`
--

LOCK TABLES `candidate_major` WRITE;
/*!40000 ALTER TABLE `candidate_major` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Major_ID` int DEFAULT NULL,
  `Name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cate_major_id_idx` (`Major_ID`),
  CONSTRAINT `cate_major_id` FOREIGN KEY (`Major_ID`) REFERENCES `major` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Candidate_ID` int DEFAULT NULL,
  `Company_ID` int DEFAULT NULL,
  `Rating` int DEFAULT NULL,
  `Assessment` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Work_Candidate_ID_idx` (`Candidate_ID`),
  KEY `can_com_company_id_idx` (`Company_ID`),
  CONSTRAINT `can_com_candidate_id` FOREIGN KEY (`Candidate_ID`) REFERENCES `candidate` (`ID`),
  CONSTRAINT `can_com_company_id` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,1,1,4,'Lương cao','2023-03-16 12:39:00'),(2,1,1,3,'Môi trường năng động','2023-03-16 10:11:00'),(3,1,1,5,'Môi trường trẻ trung','2023-03-16 10:11:00'),(108,1,1,5,'Đồng nghiệp thân thiện','2023-03-14 02:16:10'),(109,1,1,5,'Môi trường trẻ trung','2023-03-14 02:17:14'),(110,1,1,5,'Môi trường vui vẻ','2023-03-14 02:23:12'),(111,1,1,5,'Đồng nghiệp giàu','2023-03-15 02:27:28'),(112,1,1,5,'Đồng nghiệp giàu','2023-04-06 02:35:02'),(138,21,3,3,'Đồng nghiệp giàu','2023-04-08 13:07:13'),(139,21,3,5,'qưeqwdsadqweqwd','2023-04-08 13:07:25'),(140,23,16,0,'Công ty tuyệt vời','2023-04-17 14:43:55'),(141,23,16,5,'Công ty tuyệt vời, 10 điểm','2023-04-17 14:44:06'),(142,23,2,3,'abc','2023-04-17 15:09:43'),(143,23,2,3,'xyz','2023-04-17 15:09:48'),(144,23,5,0,'123456','2023-04-17 15:10:19'),(145,23,5,5,'123456123','2023-04-17 15:10:25'),(146,23,7,0,'xà lơ','2023-04-17 15:10:42'),(147,23,6,1,'lừa đảo','2023-04-17 15:12:32'),(148,23,6,0,'ăn chặn tiền lương','2023-04-17 15:13:41'),(149,23,6,0,'đừng vô nha','2023-04-17 15:13:47'),(150,23,6,0,'chạy lẹ còn kịp','2023-04-17 15:13:51'),(151,23,6,0,'oh my god','2023-04-17 15:13:57'),(152,23,6,0,'đa cấp','2023-04-17 15:14:17');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `City` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Avatar` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Email` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `User_ID` int DEFAULT NULL,
  `IsChecked` int DEFAULT NULL,
  `isDeleted` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `com_user_id_idx` (`User_ID`),
  CONSTRAINT `com_user_id` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Miko Tech','Tầng 1 - Tòa nhà Sonatus  - Số 15 Lê Thánh Tôn - Quận 1','HCM','https://res.cloudinary.com/lenvo1202/image/upload/v1682234925/mikotech-logo_efmlkn.png','CÔNG TY CỔ PHẦN Miko Tech','lenvo0@gmail.com',1,1,0),(2,'Titan Technology Corporation','Tầng 2 - Tòa nhà Sonatus  - Số 15 Lê Thánh Tôn - Quận 1','HCM','https://res.cloudinary.com/lenvo1202/image/upload/v1682234997/titan-logo_rdpjsu.jpg','CÔNG TY CỔ PHẦN Titan',NULL,128,1,0),(3,'Dolce & Gabbana','Tầng 3 - Tòa nhà Sonatus  - Số 15 Lê Thánh Tôn - Quận 1','Hà Nội','https://res.cloudinary.com/lenvo1202/image/upload/v1682754144/dolce-gabbana-1-logo-png-transparent_hd9pn0.png','CÔNG TY CỔ PHẦN INN SAIGON',NULL,128,1,0),(4,'Hermes','Tầng 4 - Tòa nhà Sonatus  - Số 15 Lê Thánh Tôn - Quận 1','HCM','https://res.cloudinary.com/lenvo1202/image/upload/v1682754144/Hermes-Logo_r9gpki.png','CÔNG TY CỔ PHẦN INN SAIGON',NULL,129,1,0),(5,'Go1','Tầng 5 - Tòa nhà Sonatus  - Số 15 Lê Thánh Tôn - Quận 1','Hà Nội','https://res.cloudinary.com/lenvo1202/image/upload/v1681718105/go1-logo_uulz9y.png','CÔNG TY CỔ PHẦN INN SAIGON',NULL,133,1,0),(6,'Allgrowlabo Co.,Ltd.','Tầng 6 - Tòa nhà Sonatus  - Số 15 Lê Thánh Tôn - Quận 1','HCM','https://res.cloudinary.com/lenvo1202/image/upload/v1681718105/allgrow-logo_khzttz.png','CÔNG TY CỔ PHẦN INN SAIGON',NULL,131,1,0),(7,'NashTech','Tầng 7 - Tòa nhà Sonatus  - Số 15 Lê Thánh Tôn - Quận 1','Đà Nẵng','https://res.cloudinary.com/lenvo1202/image/upload/v1681718105/nashtech-logo_hwy0fz.jpg','CÔNG TY CỔ PHẦN INN SAIGON',NULL,135,1,0),(8,'Công Ty LViec','Tầng 8 - Tòa nhà Sonatus  - Số 15 Lê Thánh Tôn - Quận 1','Hà Nội','https://res.cloudinary.com/lenvo1202/image/upload/v1681716000/bgbxhitcxsfawbnuiudc.png','Công ty được thành lập tháng xxx năm xxx tại xxx. Là 1 công ty còn non trẻ nhưng đã có chỗ đứng cố định trên thị trường','lenvo19@gmail.com',144,1,0),(9,'Bảo Long','Tầng 11 - Tòa nhà Sonatus  - Số 15 Lê Thánh Tôn - Quận 1','HCM','https://res.cloudinary.com/lenvo1202/image/upload/v1681716000/bgbxhitcxsfawbnuiudc.png','Công ty được thành lập tháng xxx năm xxx tại xxx. Là 1 công ty còn non trẻ nhưng đã có chỗ đứng cố định trên thị trường','lenvo20@gmail.com',145,1,0),(10,'Minh Lê','Tầng 12 - Tòa nhà Sonatus  - Số 15 Lê Thánh Tôn - Quận 1','HCM','https://res.cloudinary.com/lenvo1202/image/upload/v1681716000/bgbxhitcxsfawbnuiudc.png','Công ty được thành lập tháng xxx năm xxx tại xxx. Là 1 công ty còn non trẻ nhưng đã có chỗ đứng cố định trên thị trường','lenvo21@gmail.com',146,1,0),(11,'Trường Nguyên','Tầng 13 - Tòa nhà Sonatus  - Số 15 Lê Thánh Tôn - Quận 1','HCM','https://res.cloudinary.com/lenvo1202/image/upload/v1681716000/bgbxhitcxsfawbnuiudc.png','Công ty được thành lập tháng xxx năm xxx tại xxx. Là 1 công ty còn non trẻ nhưng đã có chỗ đứng cố định trên thị trường','lenvo22@gmail.com',148,1,0),(12,'Enet Tech Fake','Tầng 14- Tòa nhà Sonatus  - Số 15 Lê Thánh Tôn - Quận 1','HCM','https://res.cloudinary.com/lenvo1202/image/upload/v1681716000/bgbxhitcxsfawbnuiudc.png','Công ty được thành lập tháng xxx năm xxx tại xxx. Là 1 công ty còn non trẻ nhưng đã có chỗ đứng cố định trên thị trường','lenvo23@gmail.com',149,0,0),(13,'FPT SoftWare','Tầng 9 - Tòa nhà Sonatus  - Số 15 Lê Thánh Tôn - Quận 1','HCM','https://res.cloudinary.com/lenvo1202/image/upload/v1682753893/logo-fpt_t1lnie.jpg','Công ty được thành lập tháng xxx năm xxx tại xxx. Là 1 công ty còn non trẻ nhưng đã có chỗ đứng cố định trên thị trường','lenvo24@gmail.com',150,0,0),(14,'Công ty Hermes','Tầng 10 - Tòa nhà Sonatus  - Số 15 Lê Thánh Tôn - Quận 1','HCM','https://res.cloudinary.com/lenvo1202/image/upload/v1681716000/bgbxhitcxsfawbnuiudc.png','Công Ty Cổ Phần Kỹ Thuật Số SBC (Sao Băng) – Nhà bán lẻ máy in phun, máy in vải, vật tư ngành in ấn hàng đầu tại Việt Nam – chuyên phân phối máy in cao cấp của Mỹ, Nhật Bản , Đài Loan, Trung Quốc trong ngành Quảng cáo, xây dựng, kiến trúc, dệt may,…\r Công Ty Cổ Phần Kỹ Thuật Số SBC (Sao Băng) – Nhà bán lẻ máy in phun, máy in vải, vật tư ngành in ấn hàng đầu tại Việt Nam – chuyên phân phối máy in cao cấp của Mỹ, Nhật Bản , Đài Loan, Trung Quốc trong ngành Quảng cáo, xây dựng, kiến trúc, dệt may,…\r ','lenvo25@gmail.com',151,1,0),(15,'Công ty Chanel','Tầng 15 - Tòa nhà Sonatus  - Số 15 Lê Thánh Tôn - Quận 1','HCM','https://res.cloudinary.com/lenvo1202/image/upload/v1681716000/bgbxhitcxsfawbnuiudc.png','1','lenvo26@gmail.com',152,1,0),(16,'Enet Tech','371 Nguyễn Kiệm','HCM','https://res.cloudinary.com/lenvo1202/image/upload/v1681716000/bgbxhitcxsfawbnuiudc.png','Công ty được thành lập tháng xxx năm xxx tại xxx. Là 1 công ty còn non trẻ nhưng đã có chỗ đứng cố định trên thị trường','lenvo2001@gmail.com',163,1,0);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_major`
--

DROP TABLE IF EXISTS `company_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_major` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Company_ID` int DEFAULT NULL,
  `Major_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `com_major_company_id_idx` (`Company_ID`),
  KEY `com_major_major_id_idx` (`Major_ID`),
  CONSTRAINT `com_major_company_id` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`ID`),
  CONSTRAINT `com_major_major_id` FOREIGN KEY (`Major_ID`) REFERENCES `major` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_major`
--

LOCK TABLES `company_major` WRITE;
/*!40000 ALTER TABLE `company_major` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculum_vitae`
--

DROP TABLE IF EXISTS `curriculum_vitae`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curriculum_vitae` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CareerGoals` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DegreeDetail` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ExperienceDetail` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Skill` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ForeignLanguage` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Candidate_ID` int DEFAULT NULL,
  `CV_link` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `IsDeleted` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cv_candidate_id_idx` (`Candidate_ID`),
  CONSTRAINT `cv_candidate_id` FOREIGN KEY (`Candidate_ID`) REFERENCES `candidate` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculum_vitae`
--

LOCK TABLES `curriculum_vitae` WRITE;
/*!40000 ALTER TABLE `curriculum_vitae` DISABLE KEYS */;
INSERT INTO `curriculum_vitae` VALUES (1,NULL,NULL,NULL,NULL,NULL,1,'https://res.cloudinary.com/lenvo1202/image/upload/v1681568721/awotcsxe4ndrtmdevogw.png',NULL),(2,NULL,NULL,NULL,NULL,NULL,2,'https://res.cloudinary.com/lenvo1202/image/upload/v1681568721/awotcsxe4ndrtmdevogw.png',NULL),(3,NULL,NULL,NULL,NULL,NULL,3,'https://res.cloudinary.com/lenvo1202/image/upload/v1681568721/awotcsxe4ndrtmdevogw.png',NULL),(4,NULL,NULL,NULL,NULL,NULL,1,'https://res.cloudinary.com/lenvo1202/image/upload/v1681568721/awotcsxe4ndrtmdevogw.png',NULL),(5,NULL,NULL,NULL,NULL,NULL,3,'https://res.cloudinary.com/lenvo1202/image/upload/v1681568721/awotcsxe4ndrtmdevogw.png',NULL),(6,NULL,NULL,NULL,NULL,NULL,2,'https://res.cloudinary.com/lenvo1202/image/upload/v1681568721/awotcsxe4ndrtmdevogw.png',NULL),(7,NULL,NULL,NULL,NULL,NULL,1,'https://res.cloudinary.com/lenvo1202/image/upload/v1681568721/awotcsxe4ndrtmdevogw.png',NULL),(8,NULL,NULL,NULL,NULL,NULL,2,'https://res.cloudinary.com/lenvo1202/image/upload/v1681568721/awotcsxe4ndrtmdevogw.png',NULL),(13,NULL,NULL,NULL,NULL,NULL,24,'https://res.cloudinary.com/lenvo1202/image/upload/v1681568721/awotcsxe4ndrtmdevogw.png',NULL),(14,NULL,NULL,NULL,NULL,NULL,23,'https://res.cloudinary.com/lenvo1202/image/upload/v1681568721/awotcsxe4ndrtmdevogw.png',NULL),(15,NULL,NULL,NULL,NULL,NULL,NULL,'https://res.cloudinary.com/lenvo1202/image/upload/v1681913583/yug4qljvhrl0oxfmsenw.png',0),(16,NULL,NULL,NULL,NULL,NULL,NULL,'https://res.cloudinary.com/lenvo1202/image/upload/v1681913856/uzkiwt759qnyk0sx7buw.png',0),(17,NULL,NULL,NULL,NULL,NULL,NULL,'https://res.cloudinary.com/lenvo1202/image/upload/v1681913904/zlqtxo0hjysy74gkewve.png',0),(18,NULL,NULL,NULL,NULL,NULL,NULL,'https://res.cloudinary.com/lenvo1202/image/upload/v1681913978/hxies2zzokgknfpy6uik.png',0),(19,NULL,NULL,NULL,NULL,NULL,NULL,'https://res.cloudinary.com/lenvo1202/image/upload/v1681914290/wrwhgx50gmtdskzbyube.png',0),(20,NULL,NULL,NULL,NULL,NULL,NULL,'https://res.cloudinary.com/lenvo1202/image/upload/v1681914625/bqkhfmg1bgvpfui38aiw.png',0),(21,NULL,NULL,NULL,NULL,NULL,NULL,'https://res.cloudinary.com/lenvo1202/image/upload/v1681914773/nwiy4q4afdcy1n0z1hxm.png',0),(22,NULL,NULL,NULL,NULL,NULL,NULL,'https://res.cloudinary.com/lenvo1202/image/upload/v1681914904/iswygjmbcdzpvubkkiaf.png',0),(23,NULL,NULL,NULL,NULL,NULL,NULL,'https://res.cloudinary.com/lenvo1202/image/upload/v1681914968/jjajwx8sbtog41gf3wxd.png',0),(24,NULL,NULL,NULL,NULL,NULL,NULL,'https://res.cloudinary.com/lenvo1202/image/upload/v1681915154/jwhvp2fwa2srm0u8e6d1.png',0),(25,NULL,NULL,NULL,NULL,NULL,NULL,'https://res.cloudinary.com/lenvo1202/image/upload/v1681915245/fkz7dyjamnhi1md3ox3i.png',0),(26,NULL,NULL,NULL,NULL,NULL,NULL,'https://res.cloudinary.com/lenvo1202/image/upload/v1682349141/smdnkxlmd5dzvuwglizt.png',0),(27,NULL,NULL,NULL,NULL,NULL,NULL,'https://res.cloudinary.com/lenvo1202/image/upload/v1682349246/ofkesvzcylkdqgnrdobe.png',0),(28,NULL,NULL,NULL,NULL,NULL,NULL,'https://res.cloudinary.com/lenvo1202/image/upload/v1682431294/wnfufpazdhal2bqjitu7.png',0);
/*!40000 ALTER TABLE `curriculum_vitae` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Company_ID` int DEFAULT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SalaryFrom` decimal(20,0) DEFAULT NULL,
  `SalaryTo` decimal(20,0) DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `DegreeRequired` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `AgeTo` int DEFAULT NULL,
  `AgeFrom` int DEFAULT NULL,
  `IsChecked` int DEFAULT NULL,
  `IsDeleted` int DEFAULT NULL,
  `SexRequired` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ProbationaryPeriod` int DEFAULT NULL,
  `Benefit` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Position` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Type` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `City` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ExperienceRequired` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `job_company_id_idx` (`Company_ID`),
  CONSTRAINT `job_company_id` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,1,'Nhân viên Content Marketing','Đi sớm về muộn',15,20,'2023-08-12',2,'Đại Học',23,20,1,NULL,'Nam',2,'Lương tháng 13, company trip, quà sinh nhật, quà on board và 7749 benefits khác nữa,... apply gòi biết hà. Dị hen','Thực tập sinh','Toàn thời gian cố định','HCM','15A Lê Thánh Tôn','2022-03-12',12),(2,3,'Nhân viên Content Marketing','Đi muộn về sớm',12,18,'2023-08-13',3,'Đại Học',27,24,1,NULL,'Nữ',2,'nhiều lắm vô rồi biết','Nhân viên chính thức','Full-time','HN','15A Lê Thánh Tôn','2022-02-12',6),(3,2,'Nhân viên IT Helpdesk','Khỏi đi cũng được',20,30,'2023-08-14',4,'Cao Học',30,18,1,NULL,'Tất cả',4,'nhiều lắm vô rồi biết','Nhân viên chính thức','Full-time','HCM','15A Lê Thánh Tôn','2022-03-15',24),(4,3,'Nhân viên quản trị mạng','Thích đi giờ nào thì đi rồi kí giấy nghỉ việc luôn',10,20,'2023-08-01',2,'Trung Cấp',20,25,1,NULL,'Nam',2,'Lương tháng 13, company trip, quà sinh nhật, quà on board và 7749 benefits khác nữa,... apply gòi biết hà. Dị hen','Quản Lý','Full-time','DN','15A Lê Thánh Tôn','2022-01-12',0),(5,4,'Nhân viên bảo mật hệ thống','Công ty như là nhà',50,100,'2023-08-15',4,'Đại Học',25,35,1,NULL,'Tất cả',0,'Lương tháng 13, company trip, quà sinh nhật, quà on board và 7749 benefits khác nữa,... apply gòi biết hà. Dị hen','Nhân viên chính thức','Thời gian cố định','DN','15A Lê Thánh Tôn','2022-01-13',4),(6,5,'Nhân viên Solution Architect','Công ty là công ty, nhà là nhà',40,80,'2023-08-22',5,'Đại Học',22,35,1,NULL,'Nam',2,'nhiều lắm vô rồi biết','Nhân viên chính thức','Thời gian cố định','HN','15A Lê Thánh Tôn','2022-01-13',2),(7,5,'Thực tập sinh PHP Laravel','Công ty được thành lập năm 1998 với 24 năm kinh nghiệm .',2,7,'2023-08-29',10,'Đại Học',18,25,1,NULL,'Tất cả',6,'nhiều lắm vô rồi biết','Thực tập sinh','Thời gian cố định','HCM','15A Lê Thánh Tôn','2022-01-13',0),(8,6,'Lập trình viên DevOps','Hard work',80,100,'2023-09-01',1,'Đại Học',20,28,0,NULL,'Nam',0,'Lương tháng 13, company trip, quà sinh nhật, quà on board và 7749 benefits khác nữa,... apply gòi biết hà. Dị hen','Nhân viên chính thức','Thời gian cố định','HN','15A Lê Thánh Tôn','2022-01-28',0),(9,7,'Lập trình viên Back-end Java','Hard work',10,20,'2023-09-01',2,'Cao Đẳng',18,30,1,NULL,'Nữ',2,'Lương tháng 13, company trip, quà sinh nhật, quà on board và 7749 benefits khác nữa,... apply gòi biết hà. Dị hen','Nhân viên chính thức','Thời gian cố định','HCM','15A Lê Thánh Tôn','2022-01-30',2),(10,7,'Nhân viên Sale','Hard work',50,100,'2023-09-01',1,'Đại Học',20,30,1,NULL,'Nam',0,'Thưởng lương tháng 14 - đầy đủ bảo hiểm xh','Nhân viên chính thức','Thời gian cố định','DN','15A Lê Thánh Tôn','2022-01-30',NULL),(11,16,'Nhân viên Senior Java Web Developer','Cầm tay chỉ việc, nắm đầu thiên hạ',30,70,'2023-05-30',2,'Đại học',35,25,1,0,'Nam',2,'Lương tháng 13, company trip, quà sinh nhật, quà on board và 7749 benefits khác nữa,... apply gòi biết hà. Dị hen','Nhân viên','Full-time','TP.HCM','20 Lê Thánh Tôn','2023-04-17',4),(12,16,'Tuyển dụng vị trí Fresher Java Web Developer','Công ty năng động, nhiệt huyết, sẵn sàng hỗ trợ nhân viên học phí cho các khóa học',9,15,'2023-05-30',1,'Cao đẳng',24,22,1,0,'Nam',3,'nhiều lắm vô rồi biết','Nhân viên','Full-time','TP.HCM','15A Lê Thánh Tôn','2023-04-17',1),(13,16,'Tuyển dụng vị trí Intern Java Web Developer','Cầm tay chỉ việc, nắm đầu thiên hạ',5,7,'2023-04-30',10,'Đại học',24,20,1,0,'Nam',3,'nhiều lắm vô rồi biết','Thực tập sinh','Full-time','TP.HCM','15A Lê Thánh Tôn','2023-04-17',0),(14,16,'Tuyển dụng vị trí Intern Java Web Developer','Cầm tay chỉ việc, nắm đầu thiên hạ',5,7,'2023-04-30',10,'Đại học',24,20,1,0,'Nam',3,'nhiều lắm vô rồi biết','Thực tập sinh','Full-time','TP.HCM','15A Lê Thánh Tôn','2023-04-17',0),(15,16,'Nhân viên Design Website','Việc nhẹ lương cao, chỉ trỏ vẫn có lương',25,35,'2023-01-30',NULL,'Đại học',40,28,0,0,'Nữ',2,'Vô rồi nói chứ lười type','Quản lý','Full-time','TP.HCM','20 Lê Thánh Tôn','2023-04-24',4);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_category`
--

DROP TABLE IF EXISTS `job_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_category` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Job_ID` int DEFAULT NULL,
  `Cate_ID` int DEFAULT NULL,
  `Point` double DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `job_cate_job_id_idx` (`Job_ID`),
  KEY `job_cate_cate_id_idx` (`Cate_ID`),
  CONSTRAINT `job_cate_cate_id` FOREIGN KEY (`Cate_ID`) REFERENCES `category` (`ID`),
  CONSTRAINT `job_cate_job_id` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_category`
--

LOCK TABLES `job_category` WRITE;
/*!40000 ALTER TABLE `job_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_major`
--

DROP TABLE IF EXISTS `job_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_major` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Job_ID` int DEFAULT NULL,
  `Major_ID` int DEFAULT NULL,
  `Point` double DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `job_major_job_id_idx` (`Job_ID`),
  KEY `job_major_major_id_idx` (`Major_ID`),
  CONSTRAINT `job_major_job_id` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`ID`),
  CONSTRAINT `job_major_major_id` FOREIGN KEY (`Major_ID`) REFERENCES `major` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_major`
--

LOCK TABLES `job_major` WRITE;
/*!40000 ALTER TABLE `job_major` DISABLE KEYS */;
INSERT INTO `job_major` VALUES (1,1,1,NULL),(2,1,2,NULL),(3,2,1,NULL),(4,2,3,NULL),(5,3,3,NULL),(6,1,3,NULL),(7,4,2,NULL),(8,5,1,NULL),(9,6,1,NULL),(10,7,1,NULL),(11,8,1,NULL),(12,9,4,NULL),(13,10,1,NULL),(14,9,1,NULL),(15,11,1,NULL),(16,12,1,NULL),(17,15,2,NULL),(18,15,1,NULL),(19,16,1,NULL),(20,17,1,NULL),(21,18,4,NULL),(22,13,1,NULL),(23,19,4,NULL),(24,20,2,NULL),(25,21,4,NULL),(26,11,1,NULL),(27,22,1,NULL),(28,22,3,NULL);
/*!40000 ALTER TABLE `job_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES (1,'Công nghệ thông tin'),(2,'Luật'),(3,'Kinh tế'),(4,'Tài chính'),(5,'Marketing');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major_category`
--

DROP TABLE IF EXISTS `major_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major_category` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Major_ID` int DEFAULT NULL,
  `Cate_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `major_cate_major_id_idx` (`Major_ID`),
  KEY `major_cate_cate_id_idx` (`Cate_ID`),
  CONSTRAINT `major_cate_cate_id` FOREIGN KEY (`Cate_ID`) REFERENCES `category` (`ID`),
  CONSTRAINT `major_cate_major_id` FOREIGN KEY (`Major_ID`) REFERENCES `major` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major_category`
--

LOCK TABLES `major_category` WRITE;
/*!40000 ALTER TABLE `major_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `major_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Password` char(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `RegisterDate` date DEFAULT NULL,
  `UserRole` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `isDeleted` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Username_UNIQUE` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'lenvo0@gmail.com','$2a$10$dwDSx97O78f8OZj0Lch0b.3i66ZJLAtCuzdqU5OCkCXzainrsd2ve',NULL,'ROLE_COMPANY',0),(2,'ADMIN','$2a$10$h8NvdJHb/LIUTYjn7XYwGOlQTlc.mq4PI5eH0zsHFId2641gSQIXa',NULL,'ROLE_ADMIN',0),(123,'lenvo1@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_COMPANY',0),(124,'lenvo2@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_COMPANY',0),(125,'lenvo3@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_COMPANY',0),(126,'lenvo4@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_COMPANY',0),(127,'lenvo5@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_COMPANY',0),(128,'lenvo6@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_COMPANY',0),(129,'lenvo7@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_USER',0),(131,'lenvo8@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_USER',0),(133,'lenvo9@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_USER',0),(134,'lenvo10@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_USER',0),(135,'lenvo11@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_USER',0),(136,'lenvo12@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_USER',0),(137,'lenvo13@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_USER',0),(138,'lenvo14@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_COMPANY',0),(139,'lenvo15@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_USER',0),(140,'lenvo16@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_USER',0),(141,'lenvo17@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_USER',0),(142,'lenvo18@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_USER',0),(144,'lenvo19@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_COMPANY',0),(145,'lenvo20@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_COMPANY',0),(146,'lenvo21@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_COMPANY',0),(148,'lenvo22@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_COMPANY',0),(149,'lenvo23@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_COMPANY',0),(150,'lenvo24@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_COMPANY',0),(151,'lenvo25@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_COMPANY',0),(152,'lenvo26@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_COMPANY',0),(153,'lenvo27@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_COMPANY',0),(154,'lenvo28@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_USER',0),(155,'lenvo29@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_USER',0),(156,'lenvo30@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_USER',0),(157,'lenvo123@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_USER',0),(158,'lenvo789@gmail.com','$2a$10$.VPBkkQcDwmerVwMc4ZHc.2hLdSyDyagdB3uoA15FbzW.kdW4XZSW',NULL,'ROLE_ADMIN',0),(159,'lenvo1234@gmail.com','$2a$10$oQ7froH7QAeUF9L52lRGQubtTwCc1RrSvdJCe5/XEbADFjz6bQKny',NULL,'ROLE_ADMIN',0),(160,'lenvo12345@gmail.com','$2a$10$hte94T2eF5SfrUK9kNIyZeMVZdKPfWD.Ql0OZMVK6LHFGXS6KzDtC',NULL,'ROLE_USER',0),(161,'lenvo1001@gmail.com','$2a$10$faUejSJSKU.v8HLrY/tEAeGtGO3qv7xhTNaBx8UacjHbz8XmaBDGW',NULL,'ROLE_USER',0),(162,'lenvo1002@gmail.com','$2a$10$.VPBkkQcDwmerVwMc4ZHc.2hLdSyDyagdB3uoA15FbzW.kdW4XZSW',NULL,'ROLE_USER',0),(163,'lenvo2001@gmail.com','$2a$10$oQ7froH7QAeUF9L52lRGQubtTwCc1RrSvdJCe5/XEbADFjz6bQKny',NULL,'ROLE_COMPANY',0),(164,'lenvo1003@gmail.com','$2a$10$8OFIxEApy96Md/lVzCav7eJwCLWWtbUeusyq.LdCGFoZeY7wYO6VK',NULL,'ROLE_USER',0),(165,'user1@gmail.com','$2a$10$kcH1arO7Uq3XNBRI3wU/s.HhkPeHGxPe5TbMxRhrXg11l5D3xwhKe',NULL,'ROLE_USER',0),(166,'company1@gmail.com','$2a$10$tdlL2R2u2lmY95/MYNjW7eShnGyN0FFAQZYj5qZr1iIW94sEbanfq',NULL,'ROLE_COMPANY',0),(167,'user2@gmail.com','$2a$10$PnrGJ5ldAxFa8bfJZ1n0pu5KBnw7uLTns8XXcs0LD4So3tgJnnX7e',NULL,'ROLE_USER',0),(168,'company2@gmail.com','$2a$10$4.Non3/VDnnhK9WVRUm3kuEV.RENK//Wgr/0s0j/dTZkOXEwxjpOi',NULL,'ROLE_COMPANY',0);
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

-- Dump completed on 2023-05-04 22:14:05
