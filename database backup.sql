-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: elidek
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `deliverable`
--

DROP TABLE IF EXISTS `deliverable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliverable` (
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date` date DEFAULT NULL,
  `projectid` int(11) DEFAULT NULL,
  UNIQUE KEY `del_idx` (`Title`,`projectid`),
  KEY `fkd_pr_id` (`projectid`),
  CONSTRAINT `fkd_pr_id` FOREIGN KEY (`projectid`) REFERENCES `project` (`Project_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverable`
--

LOCK TABLES `deliverable` WRITE;
/*!40000 ALTER TABLE `deliverable` DISABLE KEYS */;
INSERT INTO `deliverable` VALUES ('Practical Implementation','Supplement R Int Mamm Art with Autol Sub, Perc Approach','2019-03-05',16),('Completion of Experiment','Destruction of Left External Auditory Canal, Open Approach','2020-08-29',30),('Expenses Report','Dilation of R Fem Art with 2 Drug-elut, Perc Endo Approach','2020-04-21',8),('Expenses Report','Introduction of Local Anesth into Cranial Nrv, Perc Approach','2022-03-07',25),('Completion of Experiment','Repair Right Thumb Phalanx, External Approach','2022-04-27',8),('Project Report','Supplement Upper Jaw with Nonaut Sub, Open Approach','2021-10-24',22),('Practical Implementation','Drainage of Uterus, Open Approach','2020-08-21',13),('Project Report','Dilate R Int Iliac Art, Bifurc, w 3 Drug-elut, Open','2021-12-05',4),('Project Report','Dilation of L Popl Art with Drug-elut Intra, Open Approach','2021-10-07',18),('Practical Implementation','Removal of Int Fix from R Shoulder Jt, Perc Approach','2022-02-09',49),('Completion of Experiment','Extraction of Nasal Turbinate, Open Approach','2018-07-23',46),('Expenses Report','Supplement R Temporomandib Jt w Nonaut Sub, Perc Endo','2015-01-17',41),('Completion of Experiment','Supplement Head & Neck Tendon w Nonaut Sub, Perc Endo','2021-12-01',23),('Practical Implementation','Release Middle Esophagus, Open Approach','2021-07-22',30),('Practical Implementation','Drainage of Left Ulnar Artery, Percutaneous Approach','2020-11-25',8),('Project Report','Dilation of Abdominal Aorta, Bifurcation, Open Approach','2014-09-19',42),('Project Report','Transfer L Low Arm Subcu/Fascia, Open Approach','2019-04-09',15),('Expenses Report','Replacement of Right Tarsal with Autol Sub, Perc Approach','2018-12-13',47),('Practical Implementation','Supplement Ampulla Vater with Autol Sub, Perc Endo Approach','2016-08-02',32),('Expenses Report','Muscle Performance Treatment of Integu Up Back/UE','2020-08-01',6),('Practical Implementation','Replacement of Up Tooth, Sing, with Autol Sub, Open Approach','2021-04-16',18),('Completion of Experiment','Restrict of L Int Carotid with Intralum Dev, Open Approach','2021-03-27',1),('Project Report','Alteration of L Up Extrem with Synth Sub, Perc Approach','2021-12-21',29),('Expenses Report','Release Abducens Nerve, Open Approach','2020-02-20',2),('Completion of Experiment','Drainage of Left Nipple, Via Opening, Diagn','2020-01-07',2),('Project Report','Revision of Drainage Device in Vas Deferens, Open Approach','2022-01-22',13),('Practical Implementation','Bypass Bi Ureter to Cutan with Autol Sub, Open Approach','2021-01-20',24),('Completion of Experiment','Supplement L Kidney Pelvis w Autol Sub, Perc Endo','2015-10-30',31),('Project Report','Dilation of 1 Cor Art with 3 Intralum Dev, Perc Approach','2020-03-07',26),('Expenses Report','Bypass R Kidney Pelvis to R Ureter w Synth Sub, Perc Endo','2021-12-10',17),('Expenses Report','Removal of Infusion Device from Heart, Perc Endo Approach','2016-05-21',46),('Completion of Experiment','Drainage of Right Lower Lung Lobe, Endo, Diagn','2021-10-14',9),('Expenses Report','Nuclear Medicine, Resp Sys, PET Imag','2017-03-30',49),('Practical Implementation','Repair Right Axilla, Percutaneous Endoscopic Approach','2017-04-28',41),('Completion of Experiment','Removal of Int Fix from L Up Femur, Perc Endo Approach','2016-09-02',33),('Expenses Report','Insertion of Intralum Dev into Jejunum, Perc Endo Approach','2015-09-26',32),('Project Report','Excision of Inferior Vena Cava, Open Approach','2019-06-04',23),('Expenses Report','Division of Scalp Skin, External Approach','2018-09-09',48),('Practical Implementation','Beam Radiation of Head and Neck using Electrons, Intraop','2020-08-14',23),('Practical Implementation','Removal of Drainage Device from Bladder, Open Approach','2020-07-26',15),('Project Report','MRI of Bi Low Extrem Art using Oth Contrast','2020-02-12',16),('Practical Implementation','Bypass Left Ventricle to Abdominal Artery, Open Approach','2016-01-21',43),('Practical Implementation','Removal of Infusion Device from R Pleural Cav, Open Approach','2017-01-07',31),('Project Report','Transfuse Nonaut Factor IX in Central Vein, Perc','2017-06-24',35),('Expenses Report','Resection of Descending Colon, Perc Endo Approach','2016-03-25',31),('Practical Implementation','HDR Brachytherapy of Larynx using Californium 252','2022-04-15',20),('Project Report','Drainage of Left Lacrimal Bone, Perc Endo Approach','2014-08-25',40),('Completion of Experiment','Destruction of Ileocecal Valve, Endo','2021-03-29',20),('Completion of Experiment','Insert Monopln Ext Fix in L Humeral Shaft, Perc','2020-04-29',6),('Project Report','Drainage of Right Upper Lobe Bronchus with Drain Dev, Endo','2019-09-01',20),('Project Report','Repair Left Ovary, Percutaneous Approach','2017-08-09',41),('Expenses Report','Revision of Autol Sub in L Thumb Phalanx, Perc Endo Approach','2021-12-24',14),('Deliverable 1','test','2024-11-07',50);
/*!40000 ALTER TABLE `deliverable` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER del_date BEFORE INSERT ON Deliverable FOR EACH ROW
BEGIN

IF (NEW.date < (SELECT start_date FROM Project AS P WHERE P.Project_id = NEW.projectid))
OR (NEW.date > (SELECT end_date FROM Project AS P WHERE P.Project_id = NEW.projectid)) THEN 
signal sqlstate '45007' set message_text = 'Error on start or end date';
END IF; 

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluation` (
  `Evaluation_id` int(11) NOT NULL AUTO_INCREMENT,
  `Grade` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`Evaluation_id`),
  CONSTRAINT `chk_grade` CHECK (`Grade` <= 10 and `Grade` > -1 or `Date` is null and `Grade` is null)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation`
--

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
INSERT INTO `evaluation` VALUES (1,3,'2013-01-18'),(2,10,'2013-12-06'),(3,4,'2013-02-15'),(4,8,'2013-09-22'),(5,9,'2013-08-08'),(6,3,'2013-07-19'),(7,6,'2013-03-28'),(8,7,'2013-06-03'),(9,2,'2013-03-10'),(10,4,'2013-12-05'),(11,5,'2013-11-01'),(12,8,'2013-02-23'),(13,4,'2013-10-08'),(14,5,'2013-03-04'),(15,6,'2013-05-04'),(16,4,'2013-12-13'),(17,1,'2013-07-03'),(18,8,'2013-01-01'),(19,9,'2013-03-15'),(20,8,'2013-02-21'),(21,6,'2013-05-15'),(22,6,'2013-06-26'),(23,7,'2013-12-15'),(24,1,'2013-03-14'),(25,2,'2013-12-10'),(26,9,'2013-08-30'),(27,1,'2013-12-26'),(28,5,'2013-02-07'),(29,8,'2013-10-29'),(30,4,'2013-11-13'),(31,5,'2013-04-16'),(32,2,'2013-09-24'),(33,7,'2013-03-31'),(34,7,'2013-02-14'),(35,8,'2013-08-31'),(36,9,'2013-08-25'),(37,4,'2013-04-22'),(38,6,'2013-02-25'),(39,5,'2013-01-15'),(40,4,'2013-06-30'),(41,6,'2013-02-01'),(42,6,'2013-10-25'),(43,9,'2013-07-17'),(44,6,'2013-04-18'),(45,4,'2013-03-02'),(46,7,'2001-10-01'),(47,7,'2001-10-01'),(48,7,'2001-10-01'),(49,9,'2004-07-01'),(50,9,'2000-10-30'),(51,5,'2002-11-21'),(52,5,'2007-02-22'),(53,5,'2007-02-22'),(54,8,'2014-11-01'),(55,6,'2012-12-12'),(56,6,'2002-12-12'),(57,9,'2013-10-01'),(58,8,'2010-10-01'),(59,6,'2005-10-01'),(60,7,'2002-10-01'),(61,7,'2004-10-01'),(62,6,'2003-10-01'),(63,6,'1999-10-01');
/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER ev_date BEFORE INSERT ON evaluation FOR EACH ROW
BEGIN

IF((NEW.Date > (SELECT start_date FROM Project AS P WHERE P.Evaluation_id = NEW.Evaluation_id))
) THEN
signal sqlstate '45007' set message_text = 'Error on evaluation date';

END IF;


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `executive`
--

DROP TABLE IF EXISTS `executive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `executive` (
  `executive_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`executive_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `executive`
--

LOCK TABLES `executive` WRITE;
/*!40000 ALTER TABLE `executive` DISABLE KEYS */;
INSERT INTO `executive` VALUES (1,'Janka Liddall'),(2,'Venus Labbey'),(3,'Gratiana Brislan'),(4,'Birch Rubert'),(5,'Hamil Drayson'),(6,'Pat Ikins'),(7,'Terence O\'Moylan'),(8,'Alasteir Blodgett'),(9,'Hewie McCrann'),(10,'Vail Gostage'),(11,'Marilee Satchell'),(12,'Barbabas Kaspar'),(13,'Thom Dohrmann'),(14,'Mackenzie Flowerdew'),(15,'Mair Pallis'),(16,'me');
/*!40000 ALTER TABLE `executive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization` (
  `org_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `abbreviation` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Postal_code` int(11) DEFAULT NULL,
  `Street_Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Street_Number` int(11) DEFAULT NULL,
  `City` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `budget_Ministry` int(11) DEFAULT NULL,
  `budget_Priv` int(11) DEFAULT NULL,
  `budget_Equity` int(11) DEFAULT NULL,
  PRIMARY KEY (`org_id`),
  CONSTRAINT `chk_category` CHECK (`Category` in ('University','Research Centre','Company')),
  CONSTRAINT `chk_budgets` CHECK (`Category` = 'University' and `budget_Ministry` is not null and (`budget_Priv` is null or `budget_Priv` = 0) and (`budget_Equity` is null or `budget_Equity` = 0) or `Category` = 'Research Centre' and `budget_Ministry` is not null and `budget_Priv` is not null and (`budget_Equity` is null or `budget_Equity` = 0) or `Category` = 'Company' and (`budget_Ministry` is null or `budget_Ministry` = 0) and (`budget_Priv` is null or `budget_Priv` = 0) and `budget_Equity` is not null)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES (1,'HarborOne Bancorp, Inc.','Har',47233,'Vidon',70,'Ciulu','University',123550,NULL,NULL),(2,'J P Morgan Chase & Co','J P',75526,'Sloan',5514,'Frösön','University',3141664,NULL,NULL),(3,'Plains Group Holdings, L.P.','Pla',93679,'Katie',76400,'Huaminglou','University',295864,NULL,NULL),(4,'ClearBridge Large Cap Growth ESG ETF','Cle',17358,'Arizona',6,'Medvezh’yegorsk','University',2654047,NULL,NULL),(5,'eBay Inc.','eBa',65386,'Harbort',53,'Santa Maria','University',2631923,NULL,NULL),(6,'Keane Group, Inc.','Kea',40234,'Dawn',287,'Mlangali','University',5767055,NULL,NULL),(7,'Fang Holdings Limited','Fan',57530,'Grover',8121,'Kiel','University',471461,NULL,NULL),(8,'Credicorp Ltd.','Cre',36807,'Service',66,'Gadzhiyevo','University',505156,NULL,NULL),(9,'Bill Barrett Corporation','Bil',94786,'Rusk',4501,'Kalávryta','University',5216948,NULL,NULL),(10,'Putnam Managed Municipal Income Trust','Put',51391,'Gateway',6278,'Taiobeiras','University',5105255,NULL,NULL),(11,'Box, Inc.','Box',18003,'Longview',132,'Zlechov','Research Centre',3235694,6229387,NULL),(12,'AllianzGI Convertible & Income Fund II','All',11254,'Marcy',2,'Karangintan','Research Centre',580253,7503775,NULL),(13,'ProQR Therapeutics N.V.','Pro',58285,'Fordem',0,'Nikolayevskaya','Research Centre',335655,341270,NULL),(14,'Pacific Special Acquisition Corp.','Pac',38758,'Paget',61385,'Krosno','Research Centre',795080,5789682,NULL),(15,'PIMCO Dynamic Credit and Mortgage Income Fund','PIM',17282,'Cardinal',13,'Mingora','Research Centre',5458956,824375,NULL),(16,'Bank of America Corporation','Ban',14865,'Barby',25,'Sorol','Research Centre',604771,1727131,NULL),(17,'Capella Education Company','Cap',61774,'Memorial',869,'Purorejo','Research Centre',4478439,7007093,NULL),(18,'Macro Bank Inc.','Mac',41808,'Hooker',78464,'Rizal','Research Centre',4389590,1816982,NULL),(19,'PowerShares Global Agriculture Portfolio','Pow',21125,'Ilene',9,'Chardonnière','Research Centre',337216,7386814,NULL),(20,'Invesco Trust  for Investment Grade New York Municipal','Inv',11102,'Becker',5,'Itapemirim','Research Centre',7292311,2558388,NULL),(21,'Expedia, Inc.','Exp',50956,'Kedzie',4,'Moramanga','Company',NULL,NULL,491040),(22,'Pacific Special Acquisition Corp.','Pac',50135,'Mesta',0,'Žandov','Company',NULL,NULL,422832),(23,'Westrock Company','Wes',69535,'1st',6,'Marapanim','Company',NULL,NULL,737232),(24,'G1 Therapeutics, Inc.','G1 ',69146,'Pawling',91,'Chashan','Company',NULL,NULL,934391),(25,'American Superconductor Corporation','Ame',92564,'Eagle Crest',96,'Pora','Company',NULL,NULL,990073),(26,'Gray Television, Inc.','Gra',44559,'Westend',4,'Kedungdoro','Company',NULL,NULL,590307),(27,'Rigel Pharmaceuticals, Inc.','Rig',28131,'Bonner',67605,'Pouébo','Company',NULL,NULL,560121),(28,'Marin Software Incorporated','Mar',76662,'Hagan',603,'Runović','Company',NULL,NULL,847714),(29,'Abraxas Petroleum Corporation','Abr',24322,'Holy Cross',3,'Haibeitou','Company',NULL,NULL,710760),(30,'Tower International, Inc.','Tow',77153,'Anhalt',6,'Sukadana','Company',NULL,NULL,672978),(33,'dghjn','dgh',57395,'dunrty',NULL,'cgbjhnfy','University',632659,0,0);
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER abbr before INSERT ON organization
FOR EACH ROW
BEGIN

SET NEW.abbreviation = substr(NEW.name,1,3);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER add_category before insert on organization
for each row
begin

if (new.budget_Ministry>100000 AND (new.budget_Priv is null or new.budget_Priv=0) AND (new.budget_Equity IS NULL or new.budget_Equity=0))
then set new.category = 'University';
elseif (new.budget_Ministry>100000 AND new.budget_Priv>100000 AND (new.budget_Equity IS NULL or new.budget_Equity=0) )
then set new.category ='Research Centre';
elseif ((new.budget_Ministry IS NULL or new.budget_Ministry=0) AND (new.budget_Priv IS NULL or new.budget_Priv=0) AND new.budget_Equity>100000)
then set new.category = 'Company';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `program`
--

DROP TABLE IF EXISTS `program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `program` (
  `Program_id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Elidek_Address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`Program_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program`
--

LOCK TABLES `program` WRITE;
/*!40000 ALTER TABLE `program` DISABLE KEYS */;
INSERT INTO `program` VALUES (1,'Documentary','Address 3'),(2,'Fantasy|Mystery|Romance|Thriller','Address 4'),(3,'Documentary','Address 2'),(4,'Drama','Address 1'),(5,'Horror','Address 3'),(6,'Documentary','Address 1'),(7,'Drama|Romance','Address 2'),(8,'Documentary','Address 1'),(9,'Comedy|Drama','Address 4'),(10,'Comedy|Drama|Romance','Address 4'),(11,'Drama','Address 4'),(12,'Action|Adventure|Drama|Romance|Western','Address 2'),(13,'Comedy|Romance|Sci-Fi','Address 1'),(14,'Action|Adventure|Children','Address 2'),(15,'Crime|Drama|Thriller','Address 1'),(16,'Drama|Musical|Romance','Address 3'),(17,'Drama|Thriller','Address 1'),(18,'Horror','Address 4'),(19,'Drama|Romance','Address 2'),(20,'Horror','Address 2'),(21,'Action|Adventure|Comedy','Address 4'),(22,'Horror|Thriller','Address 2'),(23,'Fantasy|Horror|Mystery|Thriller','Address 2'),(24,'Animation|Children','Address 5'),(25,'Drama','Address 1'),(26,'Documentary','Address 3'),(27,'Horror|Sci-Fi|Thriller','Address 5'),(28,'Comedy|Drama','Address 4'),(29,'Drama','Address 5'),(30,'Drama|Romance|War','Address 1'),(32,'MY PROGRAM','Address 10');
/*!40000 ALTER TABLE `program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `Project_id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `Description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `Duration` int(11) GENERATED ALWAYS AS ((to_days(`end_date`) - to_days(`start_date`)) / 365) VIRTUAL,
  `organization_id` int(11) DEFAULT NULL,
  `Program_id` int(11) DEFAULT NULL,
  `Evaluation_id` int(11) DEFAULT NULL,
  `executive_id` int(11) DEFAULT NULL,
  `evaluator_id` int(11) DEFAULT NULL,
  `Chief_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Project_id`),
  UNIQUE KEY `Evaluation_id` (`Evaluation_id`),
  KEY `fk_org_id` (`organization_id`),
  KEY `fk_program_id` (`Program_id`),
  KEY `fk_exec_id` (`executive_id`),
  KEY `fk_evtor_id` (`evaluator_id`),
  KEY `fk_chief_id` (`Chief_id`),
  KEY `p_id` (`Project_id`,`organization_id`),
  CONSTRAINT `fk_chief_id` FOREIGN KEY (`Chief_id`) REFERENCES `researcher` (`researcher_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_evtion_id` FOREIGN KEY (`Evaluation_id`) REFERENCES `evaluation` (`Evaluation_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_evtor_id` FOREIGN KEY (`evaluator_id`) REFERENCES `researcher` (`researcher_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_exec_id` FOREIGN KEY (`executive_id`) REFERENCES `executive` (`executive_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_org_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`org_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_program_id` FOREIGN KEY (`Program_id`) REFERENCES `program` (`Program_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chk_end_date` CHECK (`end_date` > `start_date`),
  CONSTRAINT `chk_duration` CHECK (365 <= `Duration` <= 365 * 4 + 1)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'Under the Stars (Bajo las estrellas)',353763,'Destruction of Left Frontal Bone, Percutaneous Approach','2020-11-07',NULL,NULL,30,9,1,10,20,15),(2,'Salmonberries',633349,'Bypass Cereb Vent to Nasophar with Synth Sub, Perc Approach','2019-08-18',NULL,NULL,23,26,2,2,107,168),(3,'The Salt of the Earth',517276,'Fluoroscopy of Left Renal Vein','2020-08-23',NULL,NULL,26,22,3,8,89,186),(4,'Carriers Are Waiting, The (Convoyeurs attendent, Les)',647595,'Dilation of R Peroneal Art, Bifurc, Perc Endo Approach','2018-04-27',NULL,NULL,5,24,4,10,74,131),(5,'Different from You and Me (Anders als du und ich) ',456287,'Supplement Left Hepatic Duct with Autol Sub, Perc Approach','2021-08-18',NULL,NULL,16,16,5,3,103,90),(6,'Last Ride, The',113832,'Revision of Synthetic Substitute in Larynx, Via Opening','2018-04-24',NULL,NULL,25,10,6,11,169,134),(7,'Sut (Milk)',264816,'Dilation of Left Renal Artery, Percutaneous Approach','2021-09-17',NULL,NULL,15,9,7,10,54,74),(8,'Cutie and the Boxer',409812,'Resection of Right Axillary Lymphatic, Open Approach','2018-03-31',NULL,NULL,5,15,8,2,141,104),(9,'Death of a Dynasty',615671,'Bypass Ileum to Ileum, Open Approach','2020-03-01',NULL,NULL,24,24,9,5,130,135),(10,'Ghoulies IV',366351,'Destruction of Right Lower Lung Lobe, Perc Endo Approach','2021-06-06',NULL,NULL,28,11,10,4,93,132),(11,'Joseph and the Amazing Technicolor Dreamcoat',110623,'Restriction of R Brach Vein with Extralum Dev, Open Approach','2020-03-29',NULL,NULL,30,23,11,4,196,163),(12,'Calcium Kid, The',627993,'Occlusion of Left Kidney Pelvis, Perc Endo Approach','2020-09-11',NULL,NULL,23,3,12,4,110,45),(13,'Wolf Children (Okami kodomo no ame to yuki)',940544,'Revision of Autol Sub in Stomach, Open Approach','2019-07-16',NULL,NULL,4,24,13,4,167,167),(14,'Apple Dumpling Gang Rides Again, The',246816,'Extirpation of Matter from Perineum Tendon, Perc Approach','2019-01-10',NULL,NULL,23,22,14,13,113,59),(15,'Perfect Host, The',659485,'Extirpate matter from R Ext Carotid, Bifurc, Open','2018-12-10',NULL,NULL,8,21,15,14,103,85),(16,'Vampire\'s Kiss',397749,'Supplement R Hand Bursa/Lig with Nonaut Sub, Open Approach','2018-10-22',NULL,NULL,30,3,16,14,199,113),(17,'Challenge to Lassie',653302,'Revision of Autol Sub in Coccygeal Jt, Extern Approach','2021-09-02',NULL,NULL,16,4,17,12,192,144),(18,'Lost Horizon',537168,'Reposition Right Fibula with Ring Ext Fix, Perc Approach','2020-05-03',NULL,NULL,23,1,18,2,137,80),(19,'Kiss Them for Me',198815,'Replacement of R Up Femur with Synth Sub, Perc Approach','2020-11-12',NULL,NULL,28,3,19,9,16,170),(20,'Bob the Butler',762636,'Fusion Lum Jt w Autol Sub, Post Appr A Col, Open','2018-06-26',NULL,NULL,17,1,20,7,85,148),(21,'Gayby',159153,'Dilation of R Ant Tib Art with 2 Intralum Dev, Open Approach','2019-12-16',NULL,NULL,18,4,21,4,50,152),(22,'R.I.P.D.',360401,'Restrict of R Cephalic Vein with Extralum Dev, Open Approach','2021-07-01',NULL,NULL,7,25,22,8,36,19),(23,'Secret Six, The',375223,'Excision of Left Shoulder Joint, Perc Endo Approach','2018-05-26',NULL,NULL,10,25,23,13,152,84),(24,'Syrup',114365,'Transfuse Autol Red Blood Cells in Central Vein, Open','2019-10-07',NULL,NULL,4,7,24,4,143,176),(25,'Stiff Upper Lips',243288,'Division of Right Maxilla, Open Approach','2022-01-11',NULL,NULL,17,13,25,14,68,189),(26,'Joan of Arc',178907,'Bypass R Basilic Vein to Up Vein w Autol Art, Open','2018-07-16',NULL,NULL,21,12,26,9,46,121),(27,'Lay of the Land, The',522624,'Insertion of Ext Fix into L Wrist Jt, Perc Approach','2022-01-03',NULL,NULL,14,11,27,10,58,65),(28,'Send a Bullet (Manda Bala)',205168,'Replacement of Right Breast with Synth Sub, Open Approach','2019-04-08',NULL,NULL,18,20,28,14,116,96),(29,'Wheeler Dealers, The',961532,'Fluoroscopy of Bilateral Internal Carotid Arteries','2021-11-17',NULL,NULL,6,9,29,2,1,161),(30,'Manslaughter (Drabet)',668988,'LDR Brachytherapy of Oropharynx using Cesium 137','2019-09-28',NULL,NULL,12,26,30,3,81,7),(31,'On Golden Pond',931249,'Restrict R Great Saphenous w Intralum Dev, Perc','2014-09-08','2017-07-02',3,25,22,31,15,169,23),(32,'Investigating Sex (a.k.a. Intimate Affairs)',331111,'Replacement of R Renal Art with Synth Sub, Open Approach','2014-08-29','2017-11-01',3,9,27,32,10,1,46),(33,'Steal Big, Steal Little',968923,'Supplement Tricusp Valve with Synth Sub, Perc Endo Approach','2014-04-15','2017-08-14',3,24,15,33,7,9,47),(34,'Thelma & Louise',182534,'Extirpation of Matter from Jejunum, Open Approach','2014-08-22','2016-01-18',1,22,4,34,9,102,179),(35,'Trapped in Paradise',902771,'Extirpation of Matter from Ulnar Nerve, Perc Endo Approach','2014-12-22','2017-08-04',3,2,13,35,5,67,141),(36,'Lower Depths, The (Les bas-fonds)',977070,'Supplement R Popl Art with Synth Sub, Perc Endo Approach','2014-02-22','2016-07-22',2,17,4,36,8,59,149),(37,'Dragon Ball Z: Wrath of the Dragon (Doragon bôru Z 13: Ryûken bakuhatsu!! Gokû ga yaraneba dare ga yaru)',427004,'Removal of Intermittent Pressure Device on R Low Extrem','2014-04-12','2016-01-17',2,13,19,37,7,133,98),(38,'Sleeping with Other People',437196,'Replacement of Left Ulna with Autol Sub, Perc Approach','2014-12-26','2017-02-03',2,16,17,38,10,143,159),(39,'Four Minutes (Vier Minuten)',817939,'Revision of Spacer in Right Elbow Joint, Open Approach','2014-11-27','2017-08-21',3,10,21,39,7,140,40),(40,'Mahjong (Ma jiang)',699917,'Repair Abdomen Subcutaneous Tissue and Fascia, Perc Approach','2014-03-02','2017-05-28',3,25,24,40,2,79,100),(41,'Boy Meets Girl',447559,'Excision of Mult Parathyroid, Open Approach, Diagn','2014-02-11','2017-10-04',4,24,2,41,6,60,166),(42,'No Turning Back',971483,'Drainage of Upper Vein with Drainage Device, Open Approach','2014-09-13','2016-08-30',2,12,13,42,7,155,101),(43,'Cable Guy, The',397912,'Revision of Extraluminal Device in Left Eye, Via Opening','2014-12-20','2016-11-22',2,5,3,43,9,131,112),(44,'Of Love and Shadows',905143,'Drainage of Right Basilic Vein with Drain Dev, Open Approach','2014-06-25','2017-06-13',3,9,16,44,13,190,48),(45,'Human Factor, The',272925,'Removal of Artificial Sphincter from Anus, Open Approach','2014-07-25','2016-05-21',2,24,17,45,11,76,113),(46,'Cartoon All-Stars to the Rescue',547742,'Removal of Synth Sub from R Shoulder Jt, Open Approach',NULL,NULL,NULL,NULL,18,NULL,NULL,NULL,142),(47,'Operation Crossbow',598860,'Destruction of Right Anterior Tibial Artery, Perc Approach',NULL,NULL,NULL,13,NULL,NULL,14,29,NULL),(48,'Zero Effect',542428,'Release Left Kidney, Open Approach',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'Assassination of Jesse James by the Coward Robert Ford, The',924460,'Supplement R Low Lobe Bronc w Synth Sub, Perc Endo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'Kokowääh',732171,'Destruction of Left Ureter, Percutaneous Endoscopic Approach',NULL,NULL,NULL,17,NULL,NULL,3,77,NULL),(51,'Manslaughter (Drabet)',668988,'LDR Brachytherapy of Oropharynx using Cesium 137','2021-09-28',NULL,NULL,28,26,46,3,81,7),(52,'Manslaughter (Drabet)',668988,'LDR Brachytherapy of Oropharynx using Cesium 137','2021-09-28',NULL,NULL,28,29,47,3,81,7),(54,'Title 3',668988,'LDR Brachytherapy of Oropharynx using Cesium 137','2021-09-28',NULL,NULL,28,29,48,3,88,3),(55,'Title 4',668988,'LDR Brachytherapy of Oropharynx using Cesium 137','2021-09-28',NULL,NULL,28,29,49,3,87,12),(56,'Title 5',668988,'LDR Brachytherapy of Oropharynx using Cesium 137','2021-09-28',NULL,NULL,28,29,50,3,86,33),(57,'Title 6',668988,'LDR Brachytherapy of Oropharynx using Cesium 137','2021-09-28',NULL,NULL,28,29,51,3,85,65),(58,'Title 7',668988,'LDR Brachytherapy of Oropharynx using Cesium 137','2021-09-28',NULL,NULL,28,29,52,3,84,87),(59,'Title 8',668988,'LDR Brachytherapy of Oropharynx using Cesium 137','2021-09-28',NULL,NULL,28,29,53,3,83,71),(60,'Title 9',668988,'LDR Brachytherapy of Oropharynx using Cesium 137','2021-09-28',NULL,NULL,28,29,54,3,82,76),(64,'Title 1',668988,'LDR Brachytherapy of Oropharynx using Cesium 137','2020-09-28',NULL,NULL,23,29,55,3,22,26),(65,'Title 2',668988,'LDR Brachytherapy of Oropharynx using Cesium 137','2020-02-27',NULL,NULL,23,29,56,3,74,31),(66,'Title 12',668988,'LDR Brachytherapy of Oropharynx using Cesium 137','2019-04-26',NULL,NULL,23,29,57,3,13,53),(67,'Title 22',668988,'LDR Brachytherapy of Oropharynx using Cesium 137','2020-11-14',NULL,NULL,23,29,58,3,62,7),(68,'Title 14',668988,'LDR Brachytherapy of Oropharynx using Cesium 137','2020-10-28',NULL,NULL,23,29,59,3,41,1),(69,'Title 24',668988,'LDR Brachytherapy of Oropharynx using Cesium 137','2019-02-27',NULL,NULL,23,29,60,3,8,54),(70,'Title 47',668988,'LDR Brachytherapy of Oropharynx using Cesium 137','2019-04-24',NULL,NULL,23,29,61,3,54,61);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER chied_start_date BEFORE insert  on project
for each row
begin
if (new.start_date < (select start_date from researcher 
where new.chief_id= researcher_id ))
then signal sqlstate '45007' set message_text = 'Error on chief start date';
 end if;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER evaluator_org  before insert on project 
for each row
begin
if (new.evaluator_id in (
select r.researcher_id from project p 
join organization o on o.org_id=p.organization_id
join researcher r on r.organization_id=o.org_id 
where p.project_id=new.project_id))
then  signal sqlstate '45000' set message_text = 'The evaluator cannot work in the organization which funds the project';

end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER chief_ins AFTER INSERT ON Project 
FOR EACH ROW
BEGIN
IF(NEW.chief_id NOT IN (SELECT researcher_id FROM works)) THEN
INSERT INTO works (project_id, researcher_id) values (New.project_id, New.chief_id) ;

END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER fix_r_org_id after insert on project
for each row
begin

update researcher r set r.organization_id = new.organization_id where new.chief_id = r.researcher_id;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `project_by_organization`
--

DROP TABLE IF EXISTS `project_by_organization`;
/*!50001 DROP VIEW IF EXISTS `project_by_organization`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `project_by_organization` (
  `name` tinyint NOT NULL,
  `org_id` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `project_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `relates`
--

DROP TABLE IF EXISTS `relates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relates` (
  `project_id` int(11) DEFAULT NULL,
  `Field_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  UNIQUE KEY `relation_idx` (`project_id`,`Field_name`),
  KEY `Field_name` (`Field_name`),
  CONSTRAINT `relates_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`Project_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `relates_ibfk_2` FOREIGN KEY (`Field_name`) REFERENCES `scientificfields` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relates`
--

LOCK TABLES `relates` WRITE;
/*!40000 ALTER TABLE `relates` DISABLE KEYS */;
INSERT INTO `relates` VALUES (1,'Physics'),(2,'Physics'),(3,'Engineering'),(4,'Physics'),(6,'Engineering'),(7,'Chemistry'),(7,'Engineering'),(7,'Physics'),(8,'Chemistry'),(8,'Physics'),(9,'Engineering'),(10,'Chemistry'),(10,'Math'),(10,'Physics'),(11,'Chemistry'),(11,'Math'),(11,'Physics'),(12,'Physics'),(13,'Engineering'),(13,'Math'),(13,'Physics'),(14,'Chemistry'),(14,'Engineering'),(14,'Physics'),(15,'Chemistry'),(15,'Engineering'),(16,'Physics'),(17,'Chemistry'),(17,'Engineering'),(17,'Math'),(17,'Physics'),(18,'Chemistry'),(18,'Engineering'),(19,'Chemistry'),(19,'Engineering'),(20,'Chemistry'),(20,'Engineering'),(20,'Physics'),(21,'Engineering'),(22,'Math'),(22,'Physics'),(23,'Chemistry'),(23,'Engineering'),(24,'Chemistry'),(24,'Math'),(25,'Chemistry'),(25,'Physics'),(27,'Engineering'),(27,'Physics'),(28,'Chemistry'),(29,'Chemistry'),(29,'Physics'),(30,'Chemistry'),(30,'Engineering'),(31,'Chemistry'),(31,'Physics'),(32,'Chemistry'),(32,'Engineering'),(33,'Chemistry'),(33,'Math'),(34,'Chemistry'),(34,'Engineering'),(35,'Engineering'),(35,'Math'),(36,'Chemistry'),(36,'Math'),(36,'Physics'),(37,'Engineering'),(38,'Engineering'),(39,'Engineering'),(40,'Math'),(41,'Engineering'),(41,'Math'),(41,'Physics'),(42,'Engineering'),(42,'Math'),(43,'Engineering'),(44,'Chemistry'),(44,'Physics'),(45,'Engineering'),(45,'Math'),(45,'Physics'),(46,'Math'),(47,'Chemistry'),(47,'Physics'),(48,'Math'),(48,'Physics'),(49,'Chemistry'),(50,'Math'),(50,'Physics');
/*!40000 ALTER TABLE `relates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `researcher`
--

DROP TABLE IF EXISTS `researcher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `researcher` (
  `researcher_id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Last_Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Gender` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`researcher_id`),
  KEY `fkr_org_id` (`organization_id`),
  KEY `researcer_idx` (`researcher_id`,`organization_id`),
  CONSTRAINT `fkr_org_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`org_id`) ON UPDATE CASCADE,
  CONSTRAINT `adult` CHECK (`age` > 17)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `researcher`
--

LOCK TABLES `researcher` WRITE;
/*!40000 ALTER TABLE `researcher` DISABLE KEYS */;
INSERT INTO `researcher` VALUES (1,'Nixie','Cissen','Female','1973-09-02','2011-03-27',49,23),(2,'Geoffry','Thatcham','Male','1946-05-11','2008-07-13',76,3),(3,'Hannah','Kluger','Female','1943-10-23','2012-06-10',79,28),(4,'Cosmo','Revely','Male','1952-01-04','2012-11-24',70,28),(5,'Raven','Hackleton','Female','1942-04-17','2009-09-17',80,3),(6,'Templeton','Harraway','Male','1981-07-11','2012-02-28',41,8),(7,'Gretta','Meacher','Female','1955-02-12','2012-03-04',67,23),(8,'Missy','Deguara','Female','1971-05-14','2010-05-24',51,28),(9,'Allissa','Tabor','Female','1956-11-16','2011-07-24',66,21),(10,'Reggi','Kosiada','Female','1959-01-10','2011-10-19',63,6),(11,'Babbette','McCaig','Female','1982-07-14','2012-04-25',40,7),(12,'Sofie','McClay','Female','1966-04-25','2012-06-30',56,28),(13,'Brandice','D\'Onise','Female','1966-02-17','2009-02-14',56,5),(14,'Leeanne','Quick','Female','1972-04-14','2013-05-11',50,25),(15,'Clywd','McTaggart','Male','1947-05-17','2012-04-28',75,30),(16,'Clemmie','Tregonna','Male','1945-10-12','2012-11-13',77,27),(17,'Vivyan','Wain','Female','1946-12-26','2010-04-16',76,11),(18,'Matti','Eginton','Female','1976-11-16','2010-06-16',46,9),(19,'Lil','Iban','Female','1941-10-19','2013-04-16',81,7),(20,'Luce','Blackly','Male','1986-05-14','2010-12-24',36,7),(21,'Laurie','Kibby','Male','1958-06-19','2011-10-26',64,5),(22,'Arabele','Cuell','Female','1945-11-15','2008-07-22',77,10),(23,'Van','Habishaw','Female','1949-01-13','2012-11-28',73,25),(24,'Tony','Sirmon','Male','1973-03-21','2010-02-25',49,19),(25,'Liva','Gostyke','Female','1977-01-13','2012-06-10',45,21),(26,'Jone','Hymas','Male','1984-06-06','2009-12-30',38,23),(27,'Barnett','Dermot','Male','1964-01-01','2009-04-12',58,17),(28,'Shepherd','Rockcliffe','Male','1977-10-19','2012-12-04',45,5),(29,'Johan','O\'Halloran','Male','1970-10-22','2011-10-17',52,12),(30,'Claresta','Drillot','Female','1974-06-30','2013-03-05',48,15),(31,'Lucita','Stancliffe','Female','1947-10-20','2011-12-17',75,23),(32,'Towny','Sunman','Male','1972-01-12','2013-01-30',50,19),(33,'Melly','Menhenitt','Female','1956-05-21','2012-08-08',66,28),(34,'Doralynn','Quantick','Female','1969-06-17','2012-02-10',53,4),(35,'Madlin','Dewey','Female','1947-03-29','2012-08-01',75,12),(36,'Bird','Yearnes','Female','1947-09-19','2013-03-15',75,11),(37,'Sheridan','Rushmer','Male','1964-01-24','2010-12-28',58,7),(38,'Paolo','Waller-Bridge','Male','1960-09-24','2010-09-16',62,11),(39,'Zsa zsa','Woliter','Female','1944-06-17','2010-06-14',78,13),(40,'Wylma','Disney','Female','1985-05-18','2013-05-02',37,10),(41,'Del','Lavarack','Female','1962-06-29','2010-12-02',60,4),(42,'Nancie','Barlace','Female','1951-10-05','2010-07-31',71,14),(43,'Edithe','Howerd','Female','1943-10-07','2010-10-11',79,21),(44,'Othilie','Connell','Female','1984-03-11','2010-12-09',38,22),(45,'Markos','Postles','Male','1968-03-19','2012-11-07',54,23),(46,'Gareth','Fluit','Male','1990-05-29','2008-10-24',32,9),(47,'Wileen','Loker','Female','1944-10-15','2008-10-03',78,24),(48,'Verena','Fould','Female','1940-08-21','2009-10-11',82,9),(49,'Nicole','Sansun','Female','1979-03-24','2009-01-24',43,10),(50,'Teddie','Whilde','Female','1961-05-16','2010-07-24',61,23),(51,'Northrup','Tolley','Male','1970-06-14','2010-03-04',52,22),(52,'Julissa','Ugolotti','Female','1963-10-12','2012-12-10',59,27),(53,'Woodie','Magson','Male','1961-10-14','2011-11-04',61,23),(54,'Hayes','Caldera','Male','1948-01-31','2011-12-09',74,23),(55,'Chick','Swindells','Male','1948-06-29','2009-11-27',74,12),(56,'Sarita','Cluney','Female','1956-07-19','2008-08-16',66,1),(57,'Nikoletta','Coxhead','Female','1954-01-01','2009-03-30',68,12),(58,'Barbabra','Catherick','Female','1975-07-02','2009-01-04',47,14),(59,'Nobe','Mitcham','Male','1978-02-19','2011-05-01',44,23),(60,'Salvador','Sears','Male','1973-12-18','2012-06-13',49,17),(61,'Barde','Curness','Male','1951-02-05','2012-02-14',71,23),(62,'Anastassia','Haselden','Female','1969-05-07','2010-08-29',53,10),(63,'Massimiliano','Meus','Male','1987-08-04','2008-08-22',35,26),(64,'Melessa','Woolsey','Female','1985-12-04','2011-03-09',37,4),(65,'Cameron','Bresnahan','Male','1952-10-11','2012-06-11',70,28),(66,'Lari','Birkenhead','Female','1942-08-08','2009-10-26',80,22),(67,'Nikkie','McConnal','Female','1981-03-12','2010-08-14',41,5),(68,'Linette','Flannery','Female','1959-01-09','2011-12-30',63,13),(69,'Robbyn','Greenall','Female','1941-03-19','2009-11-26',81,18),(70,'Rodd','Lewzey','Male','1960-05-13','2012-01-30',62,3),(71,'Davin','Kermott','Male','1988-08-04','2011-01-08',34,28),(72,'Lanae','Edmondson','Female','1967-11-23','2010-04-28',55,27),(73,'Frederik','Rogge','Male','1944-05-13','2012-07-02',78,24),(74,'Emmerich','Cisec','Male','1964-02-02','2011-03-02',58,15),(75,'Reggie','Ethridge','Male','1960-12-20','2012-04-12',62,19),(76,'Ailina','Barclay','Female','1942-04-27','2011-11-01',80,28),(77,'Israel','McLarens','Male','1968-11-25','2009-11-06',54,24),(78,'Dedie','Coulbeck','Female','1959-10-14','2009-04-23',63,2),(79,'Dan','Lincoln','Male','1977-08-28','2011-03-29',45,14),(80,'Anselma','Hedau','Female','1951-11-25','2010-06-22',71,23),(81,'Milt','Howis','Male','1942-05-13','2009-11-16',80,17),(82,'Lotti','McGinly','Female','1962-05-19','2008-07-26',60,20),(83,'Rube','Fraczak','Male','1968-12-04','2010-05-09',54,12),(84,'Dulsea','Greenhough','Female','1990-01-01','2011-12-12',32,10),(85,'Cybill','Bickerdyke','Female','1976-11-23','2013-04-05',46,8),(86,'Nilson','Gilardone','Male','1988-06-23','2009-09-09',34,9),(87,'Alvy','Denge','Male','1948-01-09','2008-11-09',74,28),(88,'Dorthy','Bailles','Female','1966-11-15','2009-11-02',56,6),(89,'Marc','Cathery','Male','1958-07-01','2009-10-03',64,21),(90,'Zane','Murdy','Male','1963-12-09','2008-12-15',59,16),(91,'Allys','Gell','Female','1941-02-24','2013-01-04',81,3),(92,'Kaitlin','Dickerson','Female','1957-06-17','2009-05-20',65,17),(93,'Carly','Woolfitt','Female','1969-02-06','2009-11-04',53,2),(94,'Gisella','Gomar','Female','1964-01-11','2013-01-14',58,13),(95,'Clementina','Chittem','Female','1989-06-21','2008-07-31',33,6),(96,'Daniela','Poone','Female','1950-12-03','2009-06-14',72,18),(97,'Francis','Egle','Male','1951-06-20','2009-12-13',71,20),(98,'Nicolai','Raselles','Male','1940-06-29','2011-12-05',82,13),(99,'Judie','holmes','Female','1985-08-31','2011-08-28',37,2),(100,'Werner','Russen','Male','1969-03-13','2009-07-22',53,25),(101,'Darbie','Cotesford','Female','1963-07-27','2011-12-29',59,12),(102,'Paton','Axten','Male','1972-01-15','2011-08-14',50,30),(103,'Godard','Girt','Male','1949-02-22','2010-02-16',73,27),(104,'Rriocard','Freyne','Male','1947-09-11','2009-07-23',75,5),(105,'Bea','Schoffel','Female','1989-01-03','2010-01-27',33,30),(106,'Maddie','Garie','Male','1983-02-05','2008-11-06',39,6),(107,'Ange','Lockyer','Male','1952-05-04','2010-02-05',70,28),(108,'Johna','Meere','Female','1953-05-27','2011-05-29',69,10),(109,'Cathleen','Simanenko','Female','1969-08-05','2009-11-08',53,7),(110,'Eli','DeSousa','Male','1962-10-27','2012-09-06',60,13),(111,'Heall','Jeger','Male','1977-06-23','2008-09-02',45,1),(112,'Fedora','Airey','Female','1942-04-19','2012-11-06',80,5),(113,'Gabrila','Winsor','Female','1988-04-07','2010-09-25',34,24),(114,'Felicio','Martignon','Male','1974-10-21','2009-01-12',48,16),(115,'Avrit','McCracken','Female','1963-06-20','2009-03-28',59,8),(116,'Clarey','Langrick','Female','1987-11-08','2012-03-22',35,28),(117,'Mervin','Cowderay','Male','1949-01-23','2011-06-18',73,14),(118,'Martynne','Cana','Female','1943-10-18','2010-03-09',79,19),(119,'Hamid','Goscomb','Male','1958-12-05','2011-06-11',64,17),(120,'Charo','Quye','Female','1987-11-13','2013-03-07',35,15),(121,'Stanton','Hucklesby','Male','1981-08-24','2008-12-13',41,21),(122,'Rosabelle','Ivankov','Female','1958-09-25','2011-12-17',64,6),(123,'Iosep','McGifford','Male','1948-01-12','2008-10-22',74,8),(124,'Dew','Berndtssen','Male','1983-04-17','2011-12-10',39,9),(125,'Leonardo','Dorrell','Male','1945-08-30','2011-03-04',77,22),(126,'Margeaux','Hallard','Female','1950-12-12','2009-10-13',72,7),(127,'Aimil','Killingbeck','Female','1956-06-06','2013-04-06',66,2),(128,'Onofredo','Cavee','Male','1990-05-10','2009-08-31',32,13),(129,'Margit','Itzkovwitch','Female','1962-03-28','2012-04-30',60,17),(130,'Betty','Cowdery','Female','1954-09-23','2010-04-17',68,26),(131,'Aubert','Kaaskooper','Male','1945-07-24','2011-08-01',77,5),(132,'Wilfrid','Choupin','Male','1950-08-07','2012-02-22',72,28),(133,'Veronika','Farthin','Female','1965-11-30','2011-09-07',57,4),(134,'Salomon','Stanes','Male','1959-02-15','2009-05-10',63,25),(135,'Freedman','Grosvenor','Male','1980-02-10','2011-12-13',42,24),(136,'Brice','Sudddard','Male','1975-07-15','2009-06-24',47,22),(137,'Adolph','Dahmel','Male','1989-07-15','2012-03-11',33,19),(138,'Janelle','Band','Female','1965-09-24','2011-04-02',57,28),(139,'Faye','Shadrach','Female','1969-03-07','2009-10-19',53,9),(140,'Caspar','Merkle','Male','1977-04-11','2008-07-02',45,12),(141,'Candra','Gristock','Female','1968-02-14','2011-06-23',54,2),(142,'Gradey','Aaronsohn','Male','1971-07-25','2008-09-26',51,NULL),(143,'Lauraine','Kondratowicz','Female','1960-12-30','2010-08-25',62,5),(144,'Mort','Feely','Male','1986-06-06','2008-09-10',36,16),(145,'Glyn','Bussetti','Male','1986-07-10','2012-04-05',36,9),(146,'Cloe','Garn','Female','1971-10-07','2011-12-18',51,9),(147,'Erich','Redit','Male','1984-03-19','2012-09-18',38,3),(148,'Barton','Crisell','Male','1942-03-25','2012-05-09',80,17),(149,'Charil','Maffiotti','Female','1958-09-06','2011-07-30',64,17),(150,'Olympie','Yashunin','Female','1978-06-28','2008-08-26',44,9),(151,'Agnola','Dukes','Female','1955-11-16','2011-03-02',67,27),(152,'Alanson','Fallanche','Male','1959-11-17','2009-01-21',63,18),(153,'Christophorus','Quigg','Male','1955-11-11','2010-11-12',67,14),(154,'Jenifer','Storey','Female','1978-11-16','2011-11-29',44,2),(155,'Rena','Purdom','Female','1971-01-03','2011-04-22',51,23),(156,'Bryce','Gueste','Male','1989-08-08','2013-03-15',33,11),(157,'Chelsie','Canton','Female','1977-12-16','2011-02-16',45,8),(158,'Quinn','Presser','Female','1956-09-05','2012-05-13',66,22),(159,'Artemus','Ewbach','Male','1981-12-24','2011-11-28',41,16),(160,'Faunie','Lecky','Female','1960-06-24','2010-03-20',62,2),(161,'Fleur','Mollon','Female','1950-12-02','2013-01-21',72,6),(162,'Adora','Prickett','Female','1967-09-03','2011-10-27',55,24),(163,'Cyndy','Heck','Female','1948-02-12','2008-10-01',74,30),(164,'Gasper','Mitchener','Male','1970-06-17','2010-10-25',52,17),(165,'Suzanna','Grzegorczyk','Female','1968-01-14','2010-07-26',54,30),(166,'Marty','Minchell','Male','1955-05-23','2010-07-30',67,24),(167,'Lee','McCrackan','Male','1963-02-13','2013-05-16',59,4),(168,'Aldwin','Lillicrop','Male','1956-03-28','2012-01-04',66,23),(169,'Schuyler','Dignum','Male','1958-03-23','2009-06-03',64,18),(170,'Rori','Schnieder','Female','1953-06-17','2009-12-27',69,28),(171,'Amery','Bufton','Male','1948-01-18','2011-05-21',74,18),(172,'Dominica','Vairow','Female','1961-02-13','2009-05-03',61,9),(173,'Rickert','Dairton','Male','1940-11-11','2010-03-24',82,21),(174,'Travers','Longford','Male','1953-06-27','2012-02-15',69,4),(175,'Ferrel','Hunter','Male','1944-04-25','2010-08-02',78,6),(176,'Marietta','Derdes','Male','1984-07-05','2011-01-28',38,4),(177,'Nicoli','Vinnicombe','Female','1985-05-01','2010-02-05',37,28),(178,'Shannon','Petasch','Male','1964-12-11','2010-12-24',58,27),(179,'Paulette','Crunkhorn','Female','1948-04-14','2011-01-19',74,22),(180,'Lazar','MacClinton','Male','1958-08-08','2010-11-23',64,7),(181,'Victor','Philippon','Male','1940-08-28','2009-12-30',82,25),(182,'Melisa','Cossans','Female','1962-01-29','2012-06-29',60,27),(183,'Venita','Bediss','Female','1956-06-22','2012-10-08',66,17),(184,'Hasheem','Beri','Male','1942-07-26','2011-11-05',80,26),(185,'Dollie','Ambrosi','Female','1962-06-29','2011-12-28',60,13),(186,'Rey','Runchman','Male','1983-06-11','2010-04-25',39,26),(187,'Emmy','McCrisken','Male','1957-05-27','2013-03-26',65,7),(188,'Darice','Lambourne','Female','1962-04-02','2012-12-21',60,3),(189,'Vlad','Beebe','Male','1976-10-20','2010-07-11',46,17),(190,'Amerigo','Benazet','Male','1988-11-15','2009-03-10',34,NULL),(191,'Clarie','Guerreru','Female','1980-07-31','2011-12-25',42,NULL),(192,'Rena','Lehrian','Female','1980-10-12','2010-07-26',42,NULL),(193,'Joe','Gooderidge','Male','1941-02-07','2012-05-12',81,NULL),(194,'Benedetto','Ivison','Male','1987-08-21','2013-05-27',35,NULL),(195,'Leonardo','Ninotti','Male','1940-10-31','2010-04-04',82,NULL),(196,'Berti','Potter','Female','1941-05-23','2008-08-15',81,NULL),(197,'Far','Di Giacomettino','Male','1960-03-08','2010-10-07',62,NULL),(198,'Ealasaid','Wilbor','Female','1979-08-12','2012-12-10',43,NULL),(199,'Vi','Stockin','Female','1949-07-04','2011-10-20',73,NULL),(200,'Gar','Larvor','Male','1989-02-04','2010-06-20',33,NULL),(204,'Stavros','Koutentakis','Male','2001-10-01','2022-05-29',21,7),(206,'Stavros','Koutentakis','Male','1999-02-16','2022-05-04',23,4);
/*!40000 ALTER TABLE `researcher` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_age before INSERT ON researcher
FOR EACH ROW
BEGIN 


SET NEW.age = (YEAR(NOW()) - YEAR(new.BirthDate));

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `scientificfields`
--

DROP TABLE IF EXISTS `scientificfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scientificfields` (
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scientificfields`
--

LOCK TABLES `scientificfields` WRITE;
/*!40000 ALTER TABLE `scientificfields` DISABLE KEYS */;
INSERT INTO `scientificfields` VALUES ('Chemistry'),('Engineering'),('Math'),('Physics');
/*!40000 ALTER TABLE `scientificfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telephones`
--

DROP TABLE IF EXISTS `telephones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telephones` (
  `number` int(11) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  KEY `fkt_org_id` (`org_id`),
  CONSTRAINT `fkt_org_id` FOREIGN KEY (`org_id`) REFERENCES `organization` (`org_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telephones`
--

LOCK TABLES `telephones` WRITE;
/*!40000 ALTER TABLE `telephones` DISABLE KEYS */;
INSERT INTO `telephones` VALUES (2147483647,1),(2147483647,1),(2147483647,2),(1889985570,3),(2147483647,4),(2147483647,4),(2147483647,4),(1145704070,5),(2147483647,6),(2147483647,7),(2147483647,8),(2147483647,9),(2147483647,9),(2147483647,10),(2147483647,11),(2147483647,12),(2147483647,13),(2147483647,13),(2147483647,14),(2147483647,14),(2147483647,15),(2147483647,16),(2147483647,17),(2147483647,18),(2147483647,19),(2147483647,19),(2147483647,19),(2147483647,20),(2147483647,21),(2147483647,22),(2147483647,22),(2147483647,23),(2147483647,23),(2147483647,24),(2147483647,25),(2147483647,26),(2147483647,26),(2147483647,27),(2147483647,27),(2147483647,28),(2106774897,29),(2147483647,30),(2147483647,12),(1111111111,7);
/*!40000 ALTER TABLE `telephones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `two_years`
--

DROP TABLE IF EXISTS `two_years`;
/*!50001 DROP VIEW IF EXISTS `two_years`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `two_years` (
  `org_id` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `project_id` tinyint NOT NULL,
  `year_` tinyint NOT NULL,
  `nop` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v`
--

DROP TABLE IF EXISTS `v`;
/*!50001 DROP VIEW IF EXISTS `v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v` (
  `org_id` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `project_id` tinyint NOT NULL,
  `year_` tinyint NOT NULL,
  `tot_pr` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_project_by_researcher`
--

DROP TABLE IF EXISTS `view_project_by_researcher`;
/*!50001 DROP VIEW IF EXISTS `view_project_by_researcher`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_project_by_researcher` (
  `Name` tinyint NOT NULL,
  `Last_Name` tinyint NOT NULL,
  `researcher_id` tinyint NOT NULL,
  `Title` tinyint NOT NULL,
  `project_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `works` (
  `project_id` int(11) DEFAULT NULL,
  `researcher_id` int(11) DEFAULT NULL,
  UNIQUE KEY `wrk_idx` (`researcher_id`,`project_id`),
  KEY `fkw_pr_id` (`project_id`),
  CONSTRAINT `fkw_pr_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`Project_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fkw_res_id` FOREIGN KEY (`researcher_id`) REFERENCES `researcher` (`researcher_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works`
--

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` VALUES (24,1),(22,2),(28,2),(44,2),(48,2),(40,3),(4,4),(7,4),(19,4),(4,5),(23,5),(17,6),(22,6),(45,6),(9,7),(30,7),(3,8),(40,8),(41,8),(11,9),(24,9),(40,10),(38,11),(28,12),(29,12),(22,14),(27,14),(46,14),(1,15),(19,15),(45,15),(16,16),(29,16),(32,17),(34,17),(47,17),(48,18),(5,19),(11,19),(22,19),(42,19),(8,20),(7,21),(18,21),(29,21),(44,22),(31,23),(37,23),(45,23),(10,24),(31,24),(29,25),(5,26),(35,26),(44,26),(37,27),(6,28),(8,28),(44,28),(46,28),(27,29),(48,29),(12,31),(16,31),(43,31),(17,32),(14,33),(35,33),(2,34),(14,34),(12,35),(34,35),(46,35),(48,35),(11,36),(18,36),(41,36),(12,37),(24,37),(38,37),(6,38),(27,38),(10,39),(18,39),(43,39),(18,40),(33,40),(35,40),(39,40),(2,41),(9,41),(30,41),(25,42),(40,42),(4,44),(6,44),(12,45),(26,46),(27,46),(28,46),(29,46),(32,46),(6,47),(33,47),(50,47),(44,48),(7,49),(9,50),(10,50),(27,50),(27,51),(39,51),(40,51),(46,51),(3,53),(20,53),(45,54),(6,55),(10,55),(16,55),(20,55),(24,55),(31,55),(32,55),(14,56),(22,56),(31,56),(50,56),(45,57),(11,58),(25,58),(41,58),(13,59),(14,59),(25,59),(35,60),(44,60),(19,61),(19,62),(33,62),(12,63),(26,63),(8,64),(20,64),(27,64),(34,64),(27,65),(39,65),(5,66),(24,66),(22,67),(30,67),(8,68),(34,68),(21,69),(45,69),(14,70),(38,70),(21,71),(36,71),(1,72),(18,72),(32,72),(32,73),(38,73),(7,74),(8,74),(17,76),(24,76),(30,77),(40,77),(7,78),(3,79),(30,79),(31,79),(35,79),(49,79),(3,80),(18,80),(22,80),(25,81),(1,82),(15,82),(41,82),(42,82),(3,83),(36,83),(50,83),(11,84),(12,84),(23,84),(30,84),(34,84),(15,85),(38,85),(48,85),(18,86),(43,86),(49,86),(8,87),(35,87),(5,88),(45,88),(5,89),(5,90),(18,90),(29,90),(37,91),(48,91),(3,92),(4,92),(12,92),(28,92),(35,92),(5,94),(7,94),(16,94),(30,94),(45,94),(6,95),(15,95),(41,95),(6,96),(28,96),(38,96),(3,97),(24,98),(37,98),(38,99),(44,99),(40,100),(11,101),(42,101),(49,101),(8,103),(16,103),(8,104),(35,104),(2,107),(5,107),(14,107),(5,108),(24,108),(39,109),(5,110),(6,110),(15,110),(8,111),(43,112),(44,112),(16,113),(38,113),(6,114),(22,114),(28,114),(24,115),(29,115),(36,115),(40,116),(23,117),(49,118),(16,119),(35,120),(39,120),(49,120),(26,121),(31,121),(50,123),(35,124),(48,124),(26,125),(49,125),(15,126),(8,127),(25,127),(36,127),(41,127),(15,129),(36,129),(49,129),(50,129),(4,130),(24,130),(4,131),(10,131),(2,132),(10,132),(4,133),(25,133),(6,134),(21,134),(9,135),(42,135),(49,137),(50,137),(11,138),(42,138),(25,140),(35,141),(47,141),(42,142),(43,142),(46,142),(22,143),(17,144),(48,145),(32,147),(34,147),(45,147),(20,148),(23,148),(34,148),(4,149),(20,149),(36,149),(45,149),(50,149),(12,150),(21,152),(38,159),(29,161),(11,163),(41,166),(13,167),(2,168),(19,170),(24,176),(34,179),(3,186),(25,189);
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `project_by_organization`
--

/*!50001 DROP TABLE IF EXISTS `project_by_organization`*/;
/*!50001 DROP VIEW IF EXISTS `project_by_organization`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `project_by_organization` AS select `o`.`name` AS `name`,`o`.`org_id` AS `org_id`,`p`.`Title` AS `title`,`p`.`Project_id` AS `project_id` from (`organization` `o` join `project` `p` on(`p`.`organization_id` = `o`.`org_id`)) order by `o`.`org_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `two_years`
--

/*!50001 DROP TABLE IF EXISTS `two_years`*/;
/*!50001 DROP VIEW IF EXISTS `two_years`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `two_years` AS select `v1`.`org_id` AS `org_id`,`v1`.`name` AS `name`,`v1`.`project_id` AS `project_id`,`v1`.`year_` AS `year_`,sum(`v1`.`tot_pr`) AS `nop` from (`v` `v1` join `v` `v2` on(`v1`.`name` = `v2`.`name`)) where `v1`.`year_` - `v2`.`year_` = 1 or `v1`.`year_` - `v2`.`year_` = -1 group by `v1`.`org_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v`
--

/*!50001 DROP TABLE IF EXISTS `v`*/;
/*!50001 DROP VIEW IF EXISTS `v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v` AS select `o`.`org_id` AS `org_id`,`o`.`name` AS `name`,`p`.`Project_id` AS `project_id`,year(`p`.`start_date`) AS `year_`,count(`p`.`Project_id`) AS `tot_pr` from (`organization` `o` join `project` `p` on(`o`.`org_id` = `p`.`organization_id`)) where `p`.`start_date` is not null group by `o`.`org_id`,year(`p`.`start_date`) order by `o`.`org_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_project_by_researcher`
--

/*!50001 DROP TABLE IF EXISTS `view_project_by_researcher`*/;
/*!50001 DROP VIEW IF EXISTS `view_project_by_researcher`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_project_by_researcher` AS select `r`.`Name` AS `Name`,`r`.`Last_Name` AS `Last_Name`,`r`.`researcher_id` AS `researcher_id`,`p`.`Title` AS `Title`,`p`.`Project_id` AS `project_id` from ((`works` `w` join `researcher` `r` on(`r`.`researcher_id` = `w`.`researcher_id`)) join `project` `p` on(`p`.`Project_id` = `w`.`project_id`)) order by `r`.`researcher_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-28 18:45:44
