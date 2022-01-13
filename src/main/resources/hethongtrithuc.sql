CREATE DATABASE  IF NOT EXISTS `he_thong_tu_van_benh_xuong_khop__thi_chtdttt` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `he_thong_tu_van_benh_xuong_khop__thi_chtdttt`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: he_thong_tu_van_benh_xuong_khop__thi_chtdttt
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `attribute`
--

DROP TABLE IF EXISTS `attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CaseID` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Weight` double NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKAttribute559030` (`CaseID`),
  CONSTRAINT `FKAttribute559030` FOREIGN KEY (`CaseID`) REFERENCES `case` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute`
--

LOCK TABLES `attribute` WRITE;
/*!40000 ALTER TABLE `attribute` DISABLE KEYS */;
INSERT INTO `attribute` VALUES (25,23,'Bộ phận đau',30),(26,23,'Thời điểm xảy ra đau',20),(27,23,'Trạng thái khớp',45),(28,23,'Xquang',65),(29,23,'Trạng thái máu',75),(30,23,'Sốt',27),(31,23,'Gân',37),(32,23,'Bao khớp',41),(33,23,'Thận',59),(34,23,'Độ tuổi',15),(35,24,'Bộ phận đau',30),(36,24,'Trạng thái cơ',20),(37,24,'Trạng thái khớp',47),(38,24,'Xquang',80),(39,24,'Trạng thái máu',85),(40,24,'Sốt',22),(41,24,'Rét',15),(42,24,'Môi',17),(43,24,'Lưỡi',15),(44,24,'Hơi thở',10),(45,24,'Ngoài da',25),(46,24,'Triệu chứng tại bộ phận sinh dục',27),(47,24,'Đường tiết niệu',51),(48,24,'Độ tuổi',20),(49,25,'Trạng thái cơ',25),(50,25,'Trạng thái khớp',20),(51,25,'Xquang',81),(52,25,'Trạng thái máu',85),(53,25,'Sốt',11),(54,25,'Rét',9),(55,25,'Mệt mỏi',8),(56,26,'Bộ phận đau',25),(57,26,'Trạng thái cột sống',27),(58,26,'Xquang',78),(59,27,'Bộ phận đau',21),(60,27,'Thời điểm xảy ra đau',75),(61,27,'Xquang',87),(62,27,'Trạng thái máu',50),(63,28,'Bộ phận đau',50),(64,28,'Thời điểm xảy ra đau',20),(65,28,'Tiểu sử bệnh án',20),(66,28,'Độ tuổi',25),(67,29,'Bộ phận đau',30),(68,29,'Trạng thái khớp',90),(69,29,'Độ tuổi',30),(70,29,'Trạng thái máu',75),(71,29,'Sốt',20),(72,29,'Xquang',65),(73,31,'Bộ phận đau',80),(74,31,'Thời điểm xảy ra đau',25),(75,31,'Xquang',70),(76,31,'Cộng hưởng từ',65),(77,31,'Mệt mỏi',5),(78,31,'Dối loạn giấc ngủ',15),(79,32,'Bộ phận đau',60),(80,32,'Xquang',70),(81,32,'Tiểu sử bệnh án',30),(82,32,'Mệt mỏi',5),(83,32,'Gầy sút',5),(84,32,'Mắt',15),(85,32,'Tai',15),(86,33,'Bộ phận đau',65),(87,33,'Thời điểm xảy ra đau',20),(88,33,'Tiểu sử bệnh án',30),(89,33,'Dối loạn giấc ngủ',10),(90,33,'Độ tuổi',8),(91,33,'Xquang',70),(92,34,'Bộ phận đau',15),(93,34,'Trạng thái cột sống',20),(94,34,'Tiểu sử bệnh án',75),(95,34,'Độ tuổi',10),(96,34,'Xquang',43),(97,35,'Bộ phận đau',70),(98,35,'Thời điểm xảy ra đau',60),(99,35,'Xquang',78),(100,35,'Trạng thái cột sống',22),(101,35,'Trạng thái khớp',15),(102,35,'Độ tuổi',20),(103,35,'Tay',10),(104,36,'Bộ phận đau',30),(105,36,'Cộng hưởng từ',80),(106,36,'Tiểu sử bệnh án',65),(107,36,'Độ tuổi',8),(108,36,'Xquang',75),(109,37,'Bộ phận đau',25),(110,37,'Trạng thái khớp',35),(111,37,'Xquang',50),(112,38,'Bộ phận đau',20),(113,38,'Trạng thái khớp',90),(114,38,'Siêu âm',60),(115,38,'Trạng thái máu',53),(122,40,'Bộ phận đau',23),(123,40,'Trạng thái khớp',33),(124,40,'Sốt',8),(125,40,'Gân',20),(126,40,'Mắt',27),(127,40,'Miệng',27),(128,40,'Lưỡi',27),(129,40,'Ngoài da',28),(130,40,'Triệu chứng tại bộ phận sinh dục',76),(131,40,'Gầy sút',7),(132,40,'Mệt mỏi',7),(133,40,'Chán ăn',7),(134,40,'Độ tuổi',10),(135,40,'Trạng thái máu',45),(136,40,'Tiểu sử bệnh án',76),(137,41,'Bộ phận đau',25),(138,41,'Trạng thái khớp',27),(139,41,'Xquang',56),(140,41,'Trạng thái máu',43),(141,41,'Sốt',8),(142,41,'Gân',32),(143,41,'Mắt',37),(144,41,'Gầy sút',8),(145,41,'Mệt mỏi',7),(146,41,'Độ tuổi',22),(147,42,'Bộ phận đau',20),(148,42,'Trạng thái máu',40),(149,42,'Sốt',8),(150,42,'Ngoài da',27),(151,42,'Phổi',58),(152,42,'Độ tuổi',22),(153,43,'Bộ phận đau',28),(154,43,'Trạng thái khớp ',36),(155,43,'Xquang',42),(156,43,'Mắt',47),(157,43,'Ngoài da',88),(158,43,'Độ tuổi',30),(159,44,'Bộ phận đau',57),(160,44,'Trạng thái khớp',34),(161,44,'Xquang',60),(162,44,'Trạng thái máu',42),(163,44,'Gân',55),(164,44,'Mắt',26);
/*!40000 ALTER TABLE `attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributevalue`
--

DROP TABLE IF EXISTS `attributevalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributevalue` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `AttributeID` int NOT NULL,
  `Value` varchar(255) NOT NULL,
  `ComparativeValue` double NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKAttributeV783765` (`AttributeID`),
  CONSTRAINT `FKAttributeV783765` FOREIGN KEY (`AttributeID`) REFERENCES `attribute` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=288 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributevalue`
--

LOCK TABLES `attributevalue` WRITE;
/*!40000 ALTER TABLE `attributevalue` DISABLE KEYS */;
INSERT INTO `attributevalue` VALUES (29,25,'Khớp bàn ngón chân',0.14),(30,25,'Bàn chân',0.14),(31,25,'Khớp cổ chân',0.14),(32,25,'Khớp gối',0.14),(33,25,'Bàn tay',0.14),(34,25,'Khớp cổ tay',0.14),(35,25,'Khủy',0.14),(36,26,'Khi vận động',1),(37,27,'Sưng',0.25),(38,27,'Đỏ',0.1),(39,27,'Phù nề',0.1),(40,27,'Căng bóng',0.1),(41,27,'Nóng',0.1),(42,27,'Cứng khớp',0.1),(43,27,'Không đối xứng',0.25),(44,28,'Hẹp khe khớp',0.33),(45,28,'Gai xương',0.33),(46,28,'Có các khuyết xương hình hốc ở đầu xương',0.33),(47,29,'Acid uric máu tăng',0.5),(48,29,'Tốc độ lắng máu tăng',0.3),(49,29,'CRP tăng',0.2),(50,30,'Có',1),(51,31,'Bị tổn thương',1),(52,32,'Bị tổn thương',1),(53,33,'Bị tổn thương',1),(54,34,'30-60',1),(55,35,'Khớp gối',0.25),(56,35,'Khớp háng',0.25),(57,35,'Khớp cổ tay',0.25),(58,35,'Khớp cổ chân',0.25),(59,36,'Co cơ',1),(60,37,'Sưng',0.2),(61,37,'Nóng',0.2),(62,37,'Đỏ',0.2),(63,37,'Tràn dịch khớp',0.2),(64,37,'Viêm',0.2),(65,38,'Hình ảnh soi gương',1),(66,39,'Số lượng bạch cầu tăng',0.25),(67,39,'Tỷ lệ bạch cầu trung tính tăng',0.25),(68,39,'Tốc độ lắng máu tăng',0.25),(69,39,'CRP tăng',0.25),(70,40,'Có',1),(71,41,'Có',1),(72,42,'Khô',1),(73,43,'Bẩn',1),(74,44,'Hôi',1),(75,45,'Nổi ban đỏ',0.5),(76,45,'Mụn mủ',0.5),(77,46,'Đái buốt',0.33),(78,46,'Đái rát',0.33),(79,46,'Đái máu mủ',0.33),(80,47,'Viêm nhiễm',1),(81,48,'0-39',1),(82,49,'Sưng',0.33),(83,49,'Nóng',0.33),(84,49,'Đỏ',0.33),(85,50,'Sưng',1),(86,51,'Hình ảnh hủy xương',0.5),(87,51,'Phản ứng màng xương',0.5),(88,52,'Số lượng bạch cầu tăng',0.33),(89,52,'Tốc độ lắng máu tăng',0.33),(90,52,'CRP tăng',0.33),(91,53,'Có',1),(92,54,'Có',1),(93,55,'Có',1),(94,56,'Cột sống',1),(95,57,'Cứng cột sống vào buổi sáng',0.25),(96,57,'Đau âm ỉ',0.25),(97,57,'Có tiếng lục khục khi cử động',0.2),(98,57,'Gù',0.15),(99,57,'Vẹo',0.15),(100,58,'Hẹp khe khớp',0.2),(101,58,'Bờ diện khớp nhẵn',0.2),(102,58,'Đặc xương dưới sụn',0.2),(103,58,'Gai xương thân đốt sống',0.2),(104,58,'Hẹp lỗ liên hợp đốt sống',0.2),(105,59,'Cột sống',1),(106,60,'Sau khi lao động quá sức',0.16),(107,60,'Sau khi hoạt động sai tư thế',0.16),(108,60,'Sau khi đi đường rung xóc',0.16),(109,60,'Sau khi nhiễm lạnh',0.16),(110,60,'Sau khi cử động đột ngột',0.16),(111,60,'Sau khi stress',0.16),(112,61,'Thoái hóa cột sống',0.5),(113,61,'Loãng xương',0.5),(114,62,'Thiếu máu',1),(115,63,'Cột sống',0.16),(116,63,'Thắt lưng',0.16),(117,63,'Mặt ngoài đùi',0.16),(118,63,'Mặt ngoài cẳng chân',0.16),(119,63,'Mắt cá chân',0.16),(120,63,'Ngón chân',0.16),(121,64,'Khi vận động',1),(122,65,'Thoát vị đĩa đệm',1),(123,66,'30-50',1),(124,67,'Khớp đùi',0.33),(125,67,'Khớp háng',0.33),(126,67,'Khớp gối',0.33),(127,68,'Tràn dịch khớp',0.6),(128,68,'Tăng sinh màng hoạt dịch khớp',0.4),(129,69,'3-10',1),(130,70,'Số lượng bạch cầu tăng',0.25),(131,70,'Tỷ lệ bạch cầu trung tính tăng',0.25),(132,70,'Tốc độ lắng máu tăng',0.25),(133,70,'CRP tăng',0.25),(134,71,'Có',1),(135,72,'Khe khớp háng như rộng ra',0.33),(136,72,'Chòm xương đùi có vẻ như phẳng ra',0.33),(137,72,'Mất nhẹ chất khoáng ở đầu xương',0.33),(138,73,'Gáy',0.5),(139,73,'Khớp vai',0.5),(140,74,'Vận động cổ',1),(141,75,'Xương sống chếch 3/4',0.5),(142,75,'Mất đường cong sinh lý ',0.5),(143,76,'Vị trí dễ bị ép ',0.25),(144,76,'Mức độ thoái vị đĩa đệm',0.25),(145,76,'Vị trí khối thoát vị ',0.25),(146,76,'Mức độ hẹp ống sống ',0.25),(147,77,'Có',1),(148,78,'Có',1),(149,79,'Gáy',0.5),(150,79,'Cổ',0.5),(151,80,'Tổn thương cột sống cổ',1),(152,81,'Thoát hóa cột sống cổ',0.5),(153,81,'Thoát vị đĩa đệm',0.5),(154,82,'Có',1),(155,83,'Có',1),(156,84,'Giảm thị lực',1),(157,85,'Ù',1),(158,86,'Khớp vai',1),(159,87,'Vận động vai',1),(160,88,'Chấn thương vùng vai',1),(161,89,'Có',1),(162,90,'51-200',1),(163,91,'Có hình ảnh calci hóa tại gân ',1),(164,92,'Xương',0.33),(165,92,'Lưng',0.33),(166,92,'Ngực',0.33),(167,93,'Gù',0.5),(168,93,'Vẹo',0.5),(169,94,'Gãy xương',0.33),(170,94,'Bệnh Khớp',0.33),(171,94,'Bệnh khớp mãn tính',0.33),(172,95,'61-200',1),(173,96,'Biến dạng thân đốt sống',1),(174,97,'Lưng',0.5),(175,97,'Cổ',0.5),(176,98,'Về đêm',1),(177,99,'Khối xơ cứng bao quanh ổ sáng ',0.5),(178,99,'Tổn thương hình rõ nét ',0.5),(179,100,'Cong',0.5),(180,100,'Vẹo',0.5),(181,101,'Viêm',1),(182,102,'0-24',1),(183,103,'Ngón tay dùi trống',1),(184,104,'Khớp háng',0.33),(185,104,'Mông',0.33),(186,104,'Đùi',0.33),(187,105,'Giảm tín hiệu ở chỏm xương ',0.5),(188,105,'Có ranh giới rõ với vùng giảm tín hiệu phía ngoài ',0.5),(189,106,'Cổ xương bị chấn thương ',1),(190,107,'51-200',1),(191,108,'U trăng lưỡi liềm',1),(192,109,'Khớp ngón gần bàn tay',0.06),(193,109,'Khớp bàn ngón tay',0.06),(194,109,'Khớp cổ tay',0.06),(195,109,'Khớp khuỷu',0.06),(196,109,'Khớp gối',0.06),(197,109,'Khớp cổ chân',0.06),(198,109,'Khớp bàn ngón chân',0),(199,110,'Viêm',0.33),(200,110,'Sưng',0.33),(201,110,'Tràn dịch khớp',0.33),(202,111,'Khớp bị tổn thương',0.16),(203,111,'Có hình bào mòn đầu xương ',0.16),(204,111,'Có hình hốc đầu xương ',0.16),(205,111,'Hình khuyết đầu xương',0.16),(206,111,'Hẹp khe khớp ',0.16),(207,111,'Mất chất khoáng đầu xương ',0.16),(208,112,'Khớp gối',1),(209,113,'Viêm màng hoạt dịch',0.6),(210,113,'Sưng',0.3),(211,113,'Tràn dịch khớp',0.1),(212,114,'Dày màng hoạt dịch',1),(213,115,'Tốc độ lắng máu tăng',1),(223,122,'Mắt',0.4),(224,122,'Cột sống',0.2),(225,122,'Khớp',0.4),(226,123,'Viêm',1),(227,124,'Có',1),(228,125,'Viêm điểm bám gân',1),(229,126,'Đỏ',0.5),(230,126,'Sưng',0.5),(231,127,'Viêm',1),(232,128,'Viêm',1),(233,129,'Tăng sừng hóa',1),(234,130,'Viêm bao quy đầu',1),(235,131,'Có',1),(236,132,'Có',1),(237,133,'Có',1),(238,134,'20-50',1),(239,135,'Tốc độ lắng máu tăng',0.5),(240,135,'CRP tăng',0.5),(241,136,'Viêm đường tiết niệu ',0.33),(242,136,'Viêm đường tiêu hoá ',0.33),(243,136,'Viêm đường hô hấp ',0.33),(244,137,'Khớp',0.9),(245,137,'Cột sống',0.1),(246,138,'Viêm',0.5),(247,138,'Cứng vào buổi sáng',0.5),(248,139,'Tổn thương khớp ',1),(249,140,'Tốc độ lắng máu tăng',1),(250,141,'Có',1),(251,142,'Viêm',1),(252,143,'Viêm mống mắt',1),(253,144,'Có',1),(254,145,'Có',1),(255,146,'6-15',1),(256,147,'Khớp cổ tay ',0.2),(257,147,'Khớp cổ chân ',0.2),(258,147,'Bàn tay',0.05),(259,147,'Háng',0.05),(260,147,'Khớp gối',0.2),(261,147,'Khớp thái dương',0.05),(262,147,'Bụng',0.2),(263,147,'Cột sống',0.05),(264,148,'Số lượng bạch cầu tăng ',1),(265,149,'Có',1),(266,150,'Phát ban',1),(267,151,'Tràn dịch',1),(268,152,'6-15',1),(269,153,'Cột sống',1),(270,154,'Viêm',1),(271,155,'Khuyết xương',0.25),(272,155,'Bào mòn xương',0.25),(273,155,'Tiêu xương',0.25),(274,155,'Hình ảnh viêm dính khớp cùng chậu',0.25),(275,156,'Viêm màng mạch nho ',1),(276,157,'Viêm đỏ',0.5),(277,157,'Vẩy màu trắng đục',0.5),(278,158,'9-12',1),(279,159,'Mông',0.33),(280,159,'Thắt lưng',0.33),(281,159,'Khớp háng',0.33),(282,160,'Viêm',1),(283,161,'Viêm khớp cùng chậu',1),(284,162,'Tốc độ lắng máu tăng',0.5),(285,162,'CRP tăng',0.5),(286,163,'Viêm điểm bám gân',1),(287,164,'Viêm kết mạc',1);
/*!40000 ALTER TABLE `attributevalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `case`
--

DROP TABLE IF EXISTS `case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `case` (
  `ID` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case`
--

LOCK TABLES `case` WRITE;
/*!40000 ALTER TABLE `case` DISABLE KEYS */;
INSERT INTO `case` VALUES (23),(24),(25),(26),(27),(28),(29),(31),(32),(33),(34),(35),(36),(37),(38),(40),(41),(42),(43),(44);
/*!40000 ALTER TABLE `case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `degree`
--

DROP TABLE IF EXISTS `degree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `degree` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DiseaseID` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKDegree615785` (`DiseaseID`),
  CONSTRAINT `FKDegree615785` FOREIGN KEY (`DiseaseID`) REFERENCES `disease` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degree`
--

LOCK TABLES `degree` WRITE;
/*!40000 ALTER TABLE `degree` DISABLE KEYS */;
INSERT INTO `degree` VALUES (17,31,'Đơn thuần'),(18,31,'Cấp tính'),(19,31,'Giả liệt khớp vai'),(20,34,'Giai đoạn sớm'),(21,34,'Giai đoạn muộn hơn'),(22,34,'Giai đoạn muộn'),(29,42,'Giai đoạn sớm'),(30,42,'Giai đoạn 1'),(31,42,'Giai đoạn 2'),(32,42,'Giai đoạn 3'),(33,42,'Giai đoạn 4'),(34,42,'Giai đoạn muộn');
/*!40000 ALTER TABLE `degree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disease`
--

DROP TABLE IF EXISTS `disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disease` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `CaseID` int NOT NULL,
  `TreatmentID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKDisease468688` (`CaseID`),
  KEY `FKDisease39669` (`TreatmentID`),
  CONSTRAINT `FKDisease39669` FOREIGN KEY (`TreatmentID`) REFERENCES `treatment` (`ID`),
  CONSTRAINT `FKDisease468688` FOREIGN KEY (`CaseID`) REFERENCES `case` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease`
--

LOCK TABLES `disease` WRITE;
/*!40000 ALTER TABLE `disease` DISABLE KEYS */;
INSERT INTO `disease` VALUES (21,'Bệnh gút',23,21),(22,'Bệnh viêm khớp nhiễm khuẩn',24,22),(23,'Bệnh viêm xương tủy nhiễm khuẩn',25,23),(24,'Bệnh thoái hóa cột sống thắt lưng',26,24),(25,'Bệnh hội chứng đau thắt lưng',27,25),(26,'Bệnh đau thần kinh tọa',28,26),(27,'Bệnh viêm màng hoạt dịch khớp háng thoáng qua',29,27),(29,'Bệnh thoái hóa cột sống cổ',31,29),(30,'Bệnh hội chứng cổ vai cánh tay ',32,30),(31,'Bệnh viêm quanh khớp vai',33,31),(32,'Bệnh loãng xương',34,32),(33,'Bệnh u xương dạng xương',35,33),(34,'Bệnh hoại tử vô mạch chỏm xương đùi',36,34),(35,'Bệnh viêm khớp dạng thấp',37,35),(36,'Bệnh viêm màng hoạt dịch khớp gối mạn tính không đặc hiệu',38,36),(38,'Bệnh viêm khớp phản ứng',40,38),(39,'Bệnh viêm khớp thiếu niên tự phát thể viêm cột sống dính khớp',41,39),(40,'Bệnh viêm khớp thiếu niên tự phát thể hệ thống',42,40),(41,'Bệnh viêm khớp thiếu niên tự phát thể viêm khớp vảy nến',43,41),(42,'Bệnh viêm cột sống dính khớp',44,42);
/*!40000 ALTER TABLE `disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `symptom`
--

DROP TABLE IF EXISTS `symptom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `symptom` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DegreeID` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKSymptom321234` (`DegreeID`),
  CONSTRAINT `FKSymptom321234` FOREIGN KEY (`DegreeID`) REFERENCES `degree` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `symptom`
--

LOCK TABLES `symptom` WRITE;
/*!40000 ALTER TABLE `symptom` DISABLE KEYS */;
INSERT INTO `symptom` VALUES (16,18,'Trạng thái khớp'),(17,19,'Gân'),(18,21,'Xquang'),(19,22,'Xquang'),(25,30,'Xquang'),(26,31,'Xquang'),(27,32,'Xquang'),(28,33,'Xquang'),(29,34,'Xquang');
/*!40000 ALTER TABLE `symptom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `symptomvalue`
--

DROP TABLE IF EXISTS `symptomvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `symptomvalue` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SymptomID` int NOT NULL,
  `Value` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKSymptomVal76516` (`SymptomID`),
  CONSTRAINT `FKSymptomVal76516` FOREIGN KEY (`SymptomID`) REFERENCES `symptom` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `symptomvalue`
--

LOCK TABLES `symptomvalue` WRITE;
/*!40000 ALTER TABLE `symptomvalue` DISABLE KEYS */;
INSERT INTO `symptomvalue` VALUES (16,16,'Hình ảnh calci hóa kích thước khác nhau ở khoảng cùng vai - mấu động '),(17,17,'Đứt các gân mũ cơ quay (Phần gân kết nối giữa cánh tay với cơ thể) '),(18,18,'Xẹp chỏm xương đùi'),(19,18,'Thoái hóa thứ phát'),(20,19,'Gãy xương dưới sụn'),(29,25,'Mất chất khoáng của bờ khớp '),(30,25,'Khe khớp cùng chậu rộng  '),(31,26,'Hình ảnh bào mòn'),(32,26,'Hình ảnh tem thư ở rìa khớp'),(33,27,'Đặc xương ở bờ khớp'),(34,27,'Dính một phần khớp cùng - chậu'),(35,28,'Dính khớp chậu hoàn toàn'),(36,29,'Hình ảnh tổn thương cột sống');
/*!40000 ALTER TABLE `symptomvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatment`
--

DROP TABLE IF EXISTS `treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Method` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatment`
--

LOCK TABLES `treatment` WRITE;
/*!40000 ALTER TABLE `treatment` DISABLE KEYS */;
INSERT INTO `treatment` VALUES (21,'https://dohunganh-27-09-2000.github.io/Huong-dan-dieu-tri-benh-co-xuong-khop/B%E1%BB%86NH%20G%C3%9AT.html'),(22,'https://dohunganh-27-09-2000.github.io/Huong-dan-dieu-tri-benh-co-xuong-khop/VI%C3%8AM%20KH%E1%BB%9AP%20NHI%E1%BB%84M%20KHU%E1%BA%A8N.html'),(23,'https://ptiteduvn-my.sharepoint.com/:w:/g/personal/anhdh_b18cn010_stu_ptit_edu_vn/EQi6Jte1syRIv62FZNRsR54BUQJmxYUnT0UL9dNW29esQA?e=srv6jD'),(24,'https://ptiteduvn-my.sharepoint.com/:w:/g/personal/anhdh_b18cn010_stu_ptit_edu_vn/ETIFnhi2fpBLp-bM_tjS-rMB0vnsFpNnubmsETNdcWUOew?e=gASFjl'),(25,'https://ptiteduvn-my.sharepoint.com/:w:/g/personal/anhdh_b18cn010_stu_ptit_edu_vn/Ef_3sTwUovJLsnejJXD9JOYBsPY46-GPMc0GwzluFe2B8g?e=sIYDwQ'),(26,'https://ptiteduvn-my.sharepoint.com/:w:/g/personal/anhdh_b18cn010_stu_ptit_edu_vn/EbJ2IOh1RPNPsiDFJ6F09JcBbc9J9lMQ0kl6j0Ue8BGB3w?e=hTH6wl'),(27,'https://ptiteduvn-my.sharepoint.com/:w:/g/personal/anhdh_b18cn010_stu_ptit_edu_vn/EaSRu5oOfmtDn35epdu5WVYBzC_9g8_aqmdFKt828T8nzQ?e=D1OQRp'),(29,'https://ptiteduvn-my.sharepoint.com/:w:/g/personal/anhdh_b18cn010_stu_ptit_edu_vn/Ee42xtC3BF9FiwgS0d0elO8By52V9IwR-AIGYDCAtlp8sg?e=aKNq0h'),(30,'https://ptiteduvn-my.sharepoint.com/:w:/g/personal/anhdh_b18cn010_stu_ptit_edu_vn/EQGhFQaBWE5KsG0J9cnnk68BzcGsHO4G02fT0IfQ2ZNqbA?e=nLG0B6'),(31,'https://ptiteduvn-my.sharepoint.com/:w:/g/personal/anhdh_b18cn010_stu_ptit_edu_vn/EcujOkMeOPZOh63yalvEfyQBtQRZkb8V1xX2JxzgCj1Glw?e=ure9cf'),(32,'https://ptiteduvn-my.sharepoint.com/:w:/g/personal/anhdh_b18cn010_stu_ptit_edu_vn/Eam-tTtwd_dJhw2GWwWo3iYBKaAGml45X85qCQjtsWmzsQ?e=dqAOj0'),(33,'https://ptiteduvn-my.sharepoint.com/:w:/g/personal/anhdh_b18cn010_stu_ptit_edu_vn/EZ2zExOb2uJIkPiywU9DkrUBaawfhjEkNP56-RQL7Wx4ug?e=efKHzb'),(34,'https://ptiteduvn-my.sharepoint.com/:w:/g/personal/anhdh_b18cn010_stu_ptit_edu_vn/EZOfoLlJ4phOkJhtJjmoeKkBwavy4EPpXRcz7J4zmblsMQ?e=bj6W98'),(35,'https://ptiteduvn-my.sharepoint.com/:w:/g/personal/anhdh_b18cn010_stu_ptit_edu_vn/EeVrf8AfYWJJpBoxk5UcGxUBDxOLxsETb9KDd_2z2kabbw?e=welV9W'),(36,'https://ptiteduvn-my.sharepoint.com/:w:/g/personal/anhdh_b18cn010_stu_ptit_edu_vn/EV_KBw1LvtpAqAkga0gV3KIBFFQHJlSLqcj-5eVZ1_umIg?e=TCmFBv'),(38,'https://ptiteduvn-my.sharepoint.com/:w:/g/personal/anhdh_b18cn010_stu_ptit_edu_vn/EdHMfPt7tLZDqSHMDxHtS2sBupksm8g6dSnowILW2V6JQA?e=E0oE27'),(39,'https://ptiteduvn-my.sharepoint.com/:w:/g/personal/anhdh_b18cn010_stu_ptit_edu_vn/EbPMjOve_1RBi4dTR4M_7D8BoedhUOhI6in4auMMgim9cA?e=OhMcRF'),(40,'https://ptiteduvn-my.sharepoint.com/:w:/g/personal/anhdh_b18cn010_stu_ptit_edu_vn/EQsZh5PqjihJh5fhoHYK6WMBkPaHP_5-kPhgUd6PPpq6gQ?e=XimThl'),(41,'https://ptiteduvn-my.sharepoint.com/:w:/g/personal/anhdh_b18cn010_stu_ptit_edu_vn/EW9ZcfWsH5tHnd2Rlx2JfxwB6QcJNh_RWiSEtAY1vXUI_w?e=WQn3Uq'),(42,'https://ptiteduvn-my.sharepoint.com/:w:/g/personal/anhdh_b18cn010_stu_ptit_edu_vn/EYG7nDC8QwFEiAbbit0jLpoBdn5vcxHJlkhskwiAirjlKQ?e=JqRcol');
/*!40000 ALTER TABLE `treatment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-13 22:28:00
