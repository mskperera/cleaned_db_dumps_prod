-- MariaDB dump 10.19-11.3.2-MariaDB, for Win64 (AMD64)
--
-- Host: 43.205.230.49    Database: db_clpos_prod
-- ------------------------------------------------------
-- Server version	10.6.22-MariaDB-0ubuntu0.22.04.1

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
-- Table structure for table `__operational_info`
--

DROP TABLE IF EXISTS `__operational_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__operational_info` (
  `db_version` varchar(50) NOT NULL,
  `releasedDate` datetime DEFAULT NULL,
  `system_category_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__operational_info`
--

LOCK TABLES `__operational_info` WRITE;
/*!40000 ALTER TABLE `__operational_info` DISABLE KEYS */;
INSERT INTO `__operational_info` VALUES
('1.0.0-alpha.1','2024-05-19 00:00:00','1');
/*!40000 ALTER TABLE `__operational_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `all_product`
--

DROP TABLE IF EXISTS `all_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_product` (
  `allProductId` int(11) NOT NULL AUTO_INCREMENT,
  `productTypeId` int(11) DEFAULT NULL,
  `singleProductid` int(11) DEFAULT NULL,
  `comboProductId` int(11) DEFAULT NULL,
  `variationProductId` int(11) DEFAULT NULL,
  PRIMARY KEY (`allProductId`),
  KEY `FK_allProduct_productType` (`productTypeId`),
  KEY `all_product_combo_product_FK` (`comboProductId`),
  KEY `all_product_single_product_FK` (`singleProductid`),
  KEY `all_product_variation_product_FK` (`variationProductId`),
  CONSTRAINT `FK_allProduct_productType` FOREIGN KEY (`productTypeId`) REFERENCES `product_type` (`productTypeId`),
  CONSTRAINT `all_product_single_product_FK` FOREIGN KEY (`singleProductid`) REFERENCES `single_product` (`productId`),
  CONSTRAINT `all_product_variation_product_FK` FOREIGN KEY (`variationProductId`) REFERENCES `variation_product` (`variationProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=338 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_product`
--

LOCK TABLES `all_product` WRITE;
/*!40000 ALTER TABLE `all_product` DISABLE KEYS */;
INSERT INTO `all_product` VALUES
(37,1,34,34,NULL),
(38,1,35,35,NULL),
(55,1,52,NULL,NULL),
(56,1,53,NULL,NULL),
(57,1,54,NULL,NULL),
(58,1,55,NULL,NULL),
(59,1,56,NULL,NULL),
(60,1,57,NULL,NULL),
(61,1,58,NULL,NULL),
(62,1,59,NULL,NULL),
(63,1,60,NULL,NULL),
(64,2,NULL,NULL,5),
(65,2,NULL,NULL,6),
(66,2,NULL,NULL,7),
(67,2,NULL,NULL,8),
(68,2,NULL,NULL,9),
(69,2,NULL,NULL,10),
(70,2,NULL,NULL,11),
(71,2,NULL,NULL,12),
(72,2,NULL,NULL,13),
(73,2,NULL,NULL,14),
(74,2,NULL,NULL,15),
(75,2,NULL,NULL,16),
(76,2,NULL,NULL,17),
(77,2,NULL,NULL,18),
(78,2,NULL,NULL,19),
(79,2,NULL,NULL,20),
(80,2,NULL,NULL,21),
(81,2,NULL,NULL,22),
(82,2,NULL,NULL,23),
(83,2,NULL,NULL,24),
(84,2,NULL,NULL,25),
(86,1,74,NULL,NULL),
(88,1,76,NULL,NULL),
(90,1,78,NULL,NULL),
(108,1,96,NULL,NULL),
(111,2,NULL,NULL,28),
(112,2,NULL,NULL,29),
(117,2,NULL,NULL,37),
(118,2,NULL,NULL,38),
(119,2,NULL,NULL,39),
(120,2,NULL,NULL,40),
(121,2,NULL,NULL,41),
(122,2,NULL,NULL,42),
(123,2,NULL,NULL,43),
(124,2,NULL,NULL,44),
(125,2,NULL,NULL,45),
(126,2,NULL,NULL,46),
(127,2,NULL,NULL,47),
(128,2,NULL,NULL,48),
(129,2,NULL,NULL,49),
(130,2,NULL,NULL,50),
(131,2,NULL,NULL,51),
(132,2,NULL,NULL,52),
(133,2,NULL,NULL,53),
(134,2,NULL,NULL,54),
(135,2,NULL,NULL,55),
(136,2,NULL,NULL,56),
(137,2,NULL,NULL,57),
(138,2,NULL,NULL,58),
(139,2,NULL,NULL,59),
(140,2,NULL,NULL,60),
(141,2,NULL,NULL,61),
(142,2,NULL,NULL,62),
(143,2,NULL,NULL,63),
(144,2,NULL,NULL,64),
(145,2,NULL,NULL,65),
(146,2,NULL,NULL,66),
(147,2,NULL,NULL,67),
(148,2,NULL,NULL,68),
(149,2,NULL,NULL,69),
(150,2,NULL,NULL,70),
(151,2,NULL,NULL,71),
(152,2,NULL,NULL,72),
(153,2,NULL,NULL,73),
(154,2,NULL,NULL,74),
(155,2,NULL,NULL,75),
(156,2,NULL,NULL,76),
(157,2,NULL,NULL,77),
(158,2,NULL,NULL,78),
(159,2,NULL,NULL,79),
(160,1,110,NULL,NULL),
(161,1,111,NULL,NULL),
(164,1,114,NULL,NULL),
(190,1,131,NULL,NULL),
(191,1,132,NULL,NULL),
(192,1,133,NULL,NULL),
(193,2,NULL,NULL,99),
(194,2,NULL,NULL,100),
(195,2,NULL,NULL,101),
(196,2,NULL,NULL,102),
(197,2,NULL,NULL,103),
(198,2,NULL,NULL,104),
(199,2,NULL,NULL,105),
(200,2,NULL,NULL,106),
(201,2,NULL,NULL,107),
(202,2,NULL,NULL,108),
(203,2,NULL,NULL,109),
(204,2,NULL,NULL,110),
(205,2,NULL,NULL,111),
(224,2,NULL,NULL,130),
(225,2,NULL,NULL,131),
(226,2,NULL,NULL,132),
(227,2,NULL,NULL,133),
(228,2,NULL,NULL,134),
(229,2,NULL,NULL,135),
(230,2,NULL,NULL,136),
(231,2,NULL,NULL,137),
(232,2,NULL,NULL,138),
(233,2,NULL,NULL,139),
(235,2,NULL,NULL,141),
(236,2,NULL,NULL,142),
(238,2,NULL,NULL,144),
(239,2,NULL,NULL,145),
(241,2,NULL,NULL,147),
(246,2,NULL,NULL,152),
(248,2,NULL,NULL,154),
(249,2,NULL,NULL,155),
(250,2,NULL,NULL,156),
(252,2,NULL,NULL,158),
(254,2,NULL,NULL,160),
(255,2,NULL,NULL,161),
(257,2,NULL,NULL,163),
(258,1,148,NULL,NULL),
(259,2,NULL,NULL,164),
(260,2,NULL,NULL,165),
(261,2,NULL,NULL,166),
(262,2,NULL,NULL,167),
(263,2,NULL,NULL,168),
(264,2,NULL,NULL,169),
(265,2,NULL,NULL,170),
(266,2,NULL,NULL,171),
(267,2,NULL,NULL,172),
(269,2,NULL,NULL,174),
(270,2,NULL,NULL,175),
(271,2,NULL,NULL,176),
(272,2,NULL,NULL,177),
(273,2,NULL,NULL,178),
(274,2,NULL,NULL,179),
(275,2,NULL,NULL,180),
(276,2,NULL,NULL,181),
(277,2,NULL,NULL,182),
(278,2,NULL,NULL,183),
(279,2,NULL,NULL,184),
(280,2,NULL,NULL,185),
(281,2,NULL,NULL,186),
(282,2,NULL,NULL,187),
(283,2,NULL,NULL,188),
(284,2,NULL,NULL,189),
(285,2,NULL,NULL,190),
(286,2,NULL,NULL,191),
(287,2,NULL,NULL,192),
(288,2,NULL,NULL,193),
(289,2,NULL,NULL,194),
(290,2,NULL,NULL,195),
(291,2,NULL,NULL,196),
(292,2,NULL,NULL,197),
(293,2,NULL,NULL,198),
(294,2,NULL,NULL,199),
(295,2,NULL,NULL,200),
(296,2,NULL,NULL,201),
(297,2,NULL,NULL,202),
(298,2,NULL,NULL,203),
(299,2,NULL,NULL,204),
(300,2,NULL,NULL,205),
(301,2,NULL,NULL,206),
(303,2,NULL,NULL,208),
(304,2,NULL,NULL,209),
(305,2,NULL,NULL,210),
(306,2,NULL,NULL,211),
(307,2,NULL,NULL,212),
(308,2,NULL,NULL,213),
(309,2,NULL,NULL,214),
(310,2,NULL,NULL,215),
(311,2,NULL,NULL,216),
(312,2,NULL,NULL,217),
(315,2,NULL,NULL,220),
(317,2,NULL,NULL,222),
(321,2,NULL,NULL,226),
(322,2,NULL,NULL,227),
(323,2,NULL,NULL,228),
(324,2,NULL,NULL,229),
(325,2,NULL,NULL,230),
(326,2,NULL,NULL,231),
(327,2,NULL,NULL,232),
(328,2,NULL,NULL,233),
(332,2,NULL,NULL,237),
(333,2,NULL,NULL,238),
(334,2,NULL,NULL,239),
(335,2,NULL,NULL,241),
(336,2,NULL,NULL,242),
(337,2,NULL,NULL,243);
/*!40000 ALTER TABLE `all_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_transfer_payments`
--

DROP TABLE IF EXISTS `bank_transfer_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_transfer_payments` (
  `receiverBankAccountId` int(11) NOT NULL,
  `senderBankAccountId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_transfer_payments`
--

LOCK TABLES `bank_transfer_payments` WRITE;
/*!40000 ALTER TABLE `bank_transfer_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_transfer_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_order_preference`
--

DROP TABLE IF EXISTS `batch_order_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_order_preference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sortType` enum('batchQueueNumber','expDate') NOT NULL,
  `orderDirection` enum('ASC','DESC') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_order_preference`
--

LOCK TABLES `batch_order_preference` WRITE;
/*!40000 ALTER TABLE `batch_order_preference` DISABLE KEYS */;
INSERT INTO `batch_order_preference` VALUES
(1,'batchQueueNumber','ASC'),
(2,'expDate','DESC'),
(3,'batchQueueNumber','DESC'),
(4,'expDate','ASC');
/*!40000 ALTER TABLE `batch_order_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand` (
  `BrandId` int(11) NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(50) DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  PRIMARY KEY (`BrandId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES
(1,'None','2024-07-31 09:21:10','2024-07-31 14:51:10',NULL,NULL);
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_payments`
--

DROP TABLE IF EXISTS `card_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_payments` (
  `PaymentId` int(11) NOT NULL,
  `CardHolderName` varchar(100) DEFAULT NULL,
  `CardTypeId` int(11) DEFAULT NULL,
  `CardLastFourDigits` varchar(4) DEFAULT NULL,
  `CardExpirationMonth` int(11) DEFAULT NULL,
  `CardExpirationYear` int(11) DEFAULT NULL,
  `bankId` int(11) DEFAULT NULL,
  PRIMARY KEY (`PaymentId`),
  KEY `FK_CardPayments_CardTypes` (`CardTypeId`),
  CONSTRAINT `card_payments_card_types_fk` FOREIGN KEY (`CardTypeId`) REFERENCES `card_types` (`CardTypeId`),
  CONSTRAINT `cardpayments_ibfk` FOREIGN KEY (`PaymentId`) REFERENCES `order_payments` (`PaymentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_payments`
--

LOCK TABLES `card_payments` WRITE;
/*!40000 ALTER TABLE `card_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_types`
--

DROP TABLE IF EXISTS `card_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_types` (
  `CardTypeId` int(11) NOT NULL,
  `CardTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CardTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_types`
--

LOCK TABLES `card_types` WRITE;
/*!40000 ALTER TABLE `card_types` DISABLE KEYS */;
INSERT INTO `card_types` VALUES
(1,'Visa'),
(2,'MasterCard'),
(3,'American Express'),
(4,'Discover'),
(5,'Diners Club'),
(6,'JCB');
/*!40000 ALTER TABLE `card_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_denomination`
--

DROP TABLE IF EXISTS `cash_denomination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cash_denomination` (
  `currencyId` varchar(50) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `denomination` int(11) DEFAULT NULL,
  `countryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_denomination`
--

LOCK TABLES `cash_denomination` WRITE;
/*!40000 ALTER TABLE `cash_denomination` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_denomination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_payments`
--

DROP TABLE IF EXISTS `cash_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cash_payments` (
  `PaymentId` int(11) NOT NULL,
  `BalanceAmount` decimal(10,4) DEFAULT NULL,
  `ReceivedAmount` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`PaymentId`),
  CONSTRAINT `cashpayments_ibfk` FOREIGN KEY (`PaymentId`) REFERENCES `order_payments` (`PaymentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_payments`
--

LOCK TABLES `cash_payments` WRITE;
/*!40000 ALTER TABLE `cash_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `CategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(50) NOT NULL,
  `CreatedDate_Server` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_Server` datetime DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  `isHiddenFromPOSMenu` bit(1) DEFAULT b'0',
  PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES
(29,'Enlargement','2025-07-13 07:47:38',NULL,'2025-07-13 07:47:38',NULL,'\0'),
(32,'Papers','2025-07-23 17:10:44',NULL,'2025-07-23 11:40:44',NULL,''),
(33,'Photo Frames','2025-07-29 02:18:09',NULL,'2025-07-28 20:48:09',NULL,'\0'),
(34,'Photocopies and Scans','2025-07-30 14:11:28',NULL,'2025-07-30 08:41:28',NULL,'\0'),
(37,'Print With Frame','2025-08-29 16:10:11',NULL,'2025-08-29 10:40:11',NULL,'\0'),
(38,'Frame Stands','2025-08-29 20:38:00',NULL,'2025-08-29 15:08:00',NULL,'\0'),
(39,'Frame Glasses','2025-08-29 20:44:16',NULL,'2025-08-29 15:14:16',NULL,'\0'),
(40,'Other Items','2025-09-08 17:46:04',NULL,'2025-09-08 12:16:04',NULL,'\0'),
(41,'Studio','2025-09-08 19:20:46',NULL,'2025-09-08 13:50:46',NULL,'\0'),
(42,'Flymounts','2025-09-08 19:57:58',NULL,'2025-09-08 14:27:58',NULL,'\0'),
(43,'Photo Frames - double box','2025-09-08 20:02:48',NULL,'2025-09-08 14:32:48',NULL,'\0'),
(44,'Printouts','2025-09-09 15:20:32',NULL,'2025-09-09 09:50:32',NULL,'\0'),
(45,'Lab Prints','2025-10-04 13:08:53',NULL,'2025-10-04 07:38:53',NULL,'\0');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `companyId` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(50) DEFAULT NULL,
  `businessDescription` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`companyId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES
(19,'Dayara Studio',NULL);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `contactId` int(11) NOT NULL AUTO_INCREMENT,
  `contactName` varchar(100) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `whatsapp` varchar(15) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_ServerTime` datetime DEFAULT current_timestamp(),
  `ModifiedDate_UTC` datetime DEFAULT utc_timestamp(),
  `contactCode` varchar(10) DEFAULT NULL,
  `UserLogID` int(11) NOT NULL,
  `contactTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`contactId`),
  KEY `FK_contact_contactType` (`contactTypeId`),
  CONSTRAINT `FK_contact_contactType` FOREIGN KEY (`contactTypeId`) REFERENCES `contact_type` (`contactTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES
(1,'Bravo Suppiers','sakdjsk@gmail.com','0212454',NULL,'1231545','54545','2025-03-15 11:22:47','2025-03-15 11:22:47','2026-05-02 21:20:28','2026-05-02 15:50:28','00001',626,3),
(2,'S.M Frames','sameerawijesekara172@gmail.com','0788028366',NULL,'0788028366','fame supplier','2025-04-20 08:48:50','2025-04-20 08:48:50','2025-04-20 08:50:33','2025-04-20 08:50:33','00002',77,2),
(3,'Photo Papers','tttttt@gmail.com','-',NULL,'-','-','2025-07-23 11:53:38','2025-07-23 17:23:38','2025-07-23 17:23:38','2025-07-23 11:53:38','00003',88,2),
(4,'Bandaragama Picture Palace','testing@gmail.com','0777837838',NULL,'0382293284','-','2025-08-25 10:12:12','2025-08-25 15:42:12','2025-08-25 15:42:12','2025-08-25 10:12:12','00004',6,2),
(5,'C and S Enterprices','o@gm.com','0777569024',NULL,'-','-','2025-08-25 10:19:38','2025-08-25 15:49:38','2025-08-25 15:50:24','2025-08-25 10:20:24','00005',6,2);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_type`
--

DROP TABLE IF EXISTS `contact_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_type` (
  `contactTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `contactTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`contactTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_type`
--

LOCK TABLES `contact_type` WRITE;
/*!40000 ALTER TABLE `contact_type` DISABLE KEYS */;
INSERT INTO `contact_type` VALUES
(1,'Customer'),
(2,'Supplier'),
(3,'Customer/Supplier');
/*!40000 ALTER TABLE `contact_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `CurrencyID` int(11) NOT NULL,
  `CurrencyCode` varchar(3) DEFAULT NULL,
  `CurrencyName` varchar(50) DEFAULT NULL,
  `Symbol` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CurrencyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES
(1,'USD','United States Dollar','$'),
(2,'EUR','Euro','€'),
(3,'JPY','Japanese Yen','¥'),
(4,'GBP','British Pound Sterling','£'),
(5,'AUD','Australian Dollar','A$'),
(6,'CAD','Canadian Dollar','C$'),
(7,'CHF','Swiss Franc','CHF'),
(8,'CNY','Chinese Yuan','¥'),
(9,'NZD','New Zealand Dollar','NZ$'),
(10,'SEK','Swedish Krona','kr'),
(11,'SGD','Singapore Dollar','S$'),
(12,'HKD','Hong Kong Dollar','HK$'),
(13,'NOK','Norwegian Krone','kr'),
(14,'KRW','South Korean Won','₩'),
(15,'INR','Indian Rupee','₹'),
(16,'LKR','Sri Lankan Rupee','Rs');
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datachangelog`
--

DROP TABLE IF EXISTS `datachangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datachangelog` (
  `dataChangeLogID` int(11) NOT NULL AUTO_INCREMENT,
  `tableName` varchar(255) NOT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`dataChangeLogID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datachangelog`
--

LOCK TABLES `datachangelog` WRITE;
/*!40000 ALTER TABLE `datachangelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `datachangelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dc_store`
--

DROP TABLE IF EXISTS `dc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_store` (
  `dc_storeId` int(11) NOT NULL AUTO_INCREMENT,
  `storeId` int(11) DEFAULT NULL,
  `StoreCode` varchar(50) DEFAULT NULL,
  `StoreName` varchar(50) DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Province` varchar(50) DEFAULT NULL,
  `emailAddress` varchar(50) DEFAULT NULL,
  `tel1` varchar(20) DEFAULT NULL,
  `tel2` varchar(20) DEFAULT NULL,
  `ManagerId` int(11) DEFAULT NULL,
  UNIQUE KEY `dc_storeId_UNIQUE` (`dc_storeId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc_store`
--

LOCK TABLES `dc_store` WRITE;
/*!40000 ALTER TABLE `dc_store` DISABLE KEYS */;
INSERT INTO `dc_store` VALUES
(2,1,'001','Br1','2024-01-25 13:43:38','2024-01-25 19:13:38',NULL,NULL,'Br1 address','Br city','br Province','swpmskpererea@gmail.com','0011212','011254',NULL),
(3,1,'001','Br1','2024-01-25 13:43:38','2024-01-25 19:13:38',NULL,NULL,'Br1 address','Br city','br Province','swpmskpererea@gmail.com','0011212','011254',NULL),
(4,1,'001','Br1','2024-01-25 13:43:38','2024-01-25 19:13:38',NULL,NULL,'Br1 address','Br city','br Province','swpmskpererea@gmail.com','0011212','011254',NULL),
(5,1,'001','Sri Jayawardenepura Kotte','2024-01-25 13:43:38','2024-01-25 19:13:38',NULL,NULL,'Br1 address','Br city','br Province','swpmskpererea@gmail.com','0011212','011254',NULL),
(6,8,NULL,'Pitakotte Branch','2025-03-10 16:29:45','2025-03-10 21:59:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(7,15,'S0015','Pitakotte','2025-03-11 12:42:50','2025-03-11 18:12:50','2025-03-11 12:42:50','2025-03-11 18:12:50','364 KURUNDUWATTA ROAD,','SRI JAYAWARDENAPURA KOTTE','western','spmskperera@gmail.com','0771147484','0771147484',NULL),
(8,16,'S0016','Pitakotte','2025-03-11 13:15:05','2025-03-11 18:45:05','2025-03-11 13:15:05','2025-03-11 18:45:05','3/64 KURUNDUWATTA ROAD,','SRI JAYAWARDENAPURA KOTTE','western','spmskperera@gmail.com','0771147484','022554545',NULL),
(9,18,'S0018','bbb','2025-03-13 13:51:18','2025-03-13 19:21:18','2025-03-13 13:51:18','2025-03-13 19:21:18','3/64 KURUNDUWATTA ROAD,','SRI JAYAWARDENAPURA KOTTE','western','spmskperera@gmail.com','0771147484','0771147484',NULL),
(10,19,'S0019','Pitakotte','2025-03-13 19:56:58','2025-03-13 19:56:58','2025-03-13 19:56:58','2025-03-13 19:56:58',' B368, Sri Jayawardenepura Kotte','Colombo','Western','dayarastudio12@gmail.com','071 410 6305','071 410 6305',NULL),
(11,19,'S0019','Pitakotte','2025-03-13 19:56:58','2025-03-13 19:56:58','2025-03-13 19:56:58','2025-03-13 19:56:58','28 B, Sri Jayawardenepura Kotte','Colombo','Western','dayarastudio12@gmail.com','071 410 6305','071 410 6305',NULL),
(12,19,'S0019','Pitakotte','2025-03-13 19:56:58','2025-03-13 19:56:58','2025-03-13 19:56:58','2025-03-13 19:56:58','28B, Sri Jayawardenepura Kotte','Colombo','Western','dayarastudio12@gmail.com','071 410 6305','071 410 6305',NULL),
(13,19,'S0019','Pitakotte','2025-03-13 19:56:58','2025-03-13 19:56:58','2025-03-13 19:56:58','2025-03-13 19:56:58','28/B Thalawathugoda Road, Sri Jayawardenepura Kotte.','Colombo','Western','dayarastudio12@gmail.com','071 410 6305','011 287 7315',NULL),
(14,19,'S0019','Pitakotte','2025-03-13 19:56:58','2025-03-13 19:56:58','2025-03-13 19:56:58','2025-03-13 19:56:58','28/B Thalawathugoda Road, Pitakotte.','Colombo','Western','dayarastudio12@gmail.com','071 410 6305','011 287 7315',NULL),
(15,20,'S00020','Nugegoda','2026-03-10 13:59:12','2026-03-10 19:29:12',NULL,NULL,'22 Nugegoda, Pitakotte','Colombo','Western','dayarastudio13@gmail.com','071 410 6306','011 287 7316',NULL);
/*!40000 ALTER TABLE `dc_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `DepartmentId` int(11) NOT NULL AUTO_INCREMENT,
  `DepartmentName` varchar(50) NOT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  PRIMARY KEY (`DepartmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES
(1,'Grocery','2023-12-29 03:28:46','2023-12-29 08:58:46',NULL,NULL),
(2,'Beverages','2023-12-29 03:28:46','2023-12-29 08:58:46',NULL,NULL),
(3,'Bakery','2023-12-29 03:28:46','2023-12-29 08:58:46',NULL,NULL),
(4,'Household Goods','2023-12-29 03:28:46','2023-12-29 08:58:46',NULL,NULL),
(5,'Personal Care','2023-12-29 03:28:46','2023-12-29 08:58:46',NULL,NULL),
(6,'Electronics','2023-12-29 03:28:46','2023-12-29 08:58:46',NULL,NULL),
(7,'Produce','2023-12-29 03:28:46','2023-12-29 08:58:46',NULL,NULL),
(8,'Meat & Seafood','2023-12-29 03:28:46','2023-12-29 08:58:46',NULL,NULL),
(9,'Frozen Foods','2023-12-29 03:28:46','2023-12-29 08:58:46',NULL,NULL);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_reason`
--

DROP TABLE IF EXISTS `discount_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount_reason` (
  `DiscountReasonId` int(11) NOT NULL AUTO_INCREMENT,
  `ReasonName` varchar(50) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DiscountReasonId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_reason`
--

LOCK TABLES `discount_reason` WRITE;
/*!40000 ALTER TABLE `discount_reason` DISABLE KEYS */;
INSERT INTO `discount_reason` VALUES
(1,'Other','Enter your reason.'),
(2,'Promotional Discount','Discount for items on special promotion or seasonal sale.'),
(3,'Volume Discount','Discount applied for bulk or large quantity purchases.'),
(4,'Loyalty Reward','Discount for members of our loyalty program or club.'),
(5,'Employee Discount','Special discount offered to employees of the company.'),
(6,'Damaged Goods','Discount for slightly damaged or imperfect items.'),
(7,'Price Match','Price adjustment to match a competitor\'s price.'),
(8,'Coupon Redemption','Discount applied from a coupon or voucher redemption.'),
(9,'Manager\'s Discretion','Special discount applied at the manager\'s discretion.'),
(10,'Early Payment','Discount for early payment or pre-payment of goods/services.'),
(11,'End of Life Product','Discount for products that are being discontinued or phased out.');
/*!40000 ALTER TABLE `discount_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_reason_scope`
--

DROP TABLE IF EXISTS `discount_reason_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount_reason_scope` (
  `DiscountReasonId` int(11) NOT NULL,
  `ScopeId` int(11) NOT NULL,
  PRIMARY KEY (`DiscountReasonId`,`ScopeId`),
  KEY `FK_DRScope_DiscountScope` (`ScopeId`),
  CONSTRAINT `FK_DRScope_DiscountReason` FOREIGN KEY (`DiscountReasonId`) REFERENCES `discount_reason` (`DiscountReasonId`),
  CONSTRAINT `FK_DRScope_DiscountScope` FOREIGN KEY (`ScopeId`) REFERENCES `discount_scope` (`ScopeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_reason_scope`
--

LOCK TABLES `discount_reason_scope` WRITE;
/*!40000 ALTER TABLE `discount_reason_scope` DISABLE KEYS */;
INSERT INTO `discount_reason_scope` VALUES
(1,1),
(1,2),
(2,1),
(2,2),
(3,1),
(4,1),
(4,2),
(5,1),
(6,1),
(7,1),
(8,1),
(8,2),
(9,1),
(10,1),
(11,1);
/*!40000 ALTER TABLE `discount_reason_scope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_scope`
--

DROP TABLE IF EXISTS `discount_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount_scope` (
  `ScopeId` int(11) NOT NULL AUTO_INCREMENT,
  `ScopeName` varchar(255) NOT NULL,
  PRIMARY KEY (`ScopeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_scope`
--

LOCK TABLES `discount_scope` WRITE;
/*!40000 ALTER TABLE `discount_scope` DISABLE KEYS */;
INSERT INTO `discount_scope` VALUES
(1,'product_level'),
(2,'order_level');
/*!40000 ALTER TABLE `discount_scope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_type`
--

DROP TABLE IF EXISTS `discount_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount_type` (
  `DiscountTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `TypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DiscountTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_type`
--

LOCK TABLES `discount_type` WRITE;
/*!40000 ALTER TABLE `discount_type` DISABLE KEYS */;
INSERT INTO `discount_type` VALUES
(1,'Percentage'),
(2,'Fixed Amount');
/*!40000 ALTER TABLE `discount_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `externalreceiptprinting`
--

DROP TABLE IF EXISTS `externalreceiptprinting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `externalreceiptprinting` (
  `terminalId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `externalreceiptprinting`
--

LOCK TABLES `externalreceiptprinting` WRITE;
/*!40000 ALTER TABLE `externalreceiptprinting` DISABLE KEYS */;
INSERT INTO `externalreceiptprinting` VALUES
(1,160);
/*!40000 ALTER TABLE `externalreceiptprinting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fast_moving_items`
--

DROP TABLE IF EXISTS `fast_moving_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fast_moving_items` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL,
  `store_id` bigint(20) NOT NULL,
  `terminal_id` bigint(20) DEFAULT NULL,
  `sales_count` int(11) NOT NULL DEFAULT 0,
  `last_sold_at` datetime DEFAULT NULL,
  `rank_score` decimal(12,6) NOT NULL DEFAULT 0.000000,
  `rank_position` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_fmi` (`store_id`,`product_id`,`terminal_id`),
  KEY `idx_rank` (`store_id`,`rank_score`),
  KEY `idx_product` (`product_id`),
  KEY `idx_terminal` (`terminal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fast_moving_items`
--

LOCK TABLES `fast_moving_items` WRITE;
/*!40000 ALTER TABLE `fast_moving_items` DISABLE KEYS */;
INSERT INTO `fast_moving_items` VALUES
(1,111,19,29,4,'2025-11-12 18:57:24',0.000000,10,'2026-04-15 20:09:19'),
(2,16,19,29,2,'2026-04-15 14:25:54',0.000000,11,'2026-04-15 20:09:19'),
(3,34,19,29,2,'2025-11-12 12:29:39',0.000000,13,'2026-04-15 20:09:19'),
(4,35,19,29,5,'2025-11-12 12:30:11',0.000000,7,'2026-04-15 20:09:19'),
(5,208,19,29,1,'2025-11-12 12:22:16',0.000000,29,'2026-04-15 20:09:19'),
(6,209,19,29,5,'2025-11-12 12:24:19',0.000000,8,'2026-04-15 20:09:19'),
(7,101,19,29,1,'2025-11-12 12:27:51',0.000000,28,'2026-04-15 20:09:19'),
(8,211,19,29,9,'2025-11-13 11:44:04',0.000000,5,'2026-04-15 20:09:19'),
(9,210,19,29,11,'2025-11-13 11:45:44',0.000000,4,'2026-04-15 20:09:19'),
(10,166,19,29,25,'2025-11-13 11:45:08',0.000000,3,'2026-04-15 20:09:19'),
(11,171,19,29,1,'2025-11-12 12:33:24',0.000000,27,'2026-04-15 20:09:19'),
(12,99,19,29,1,'2025-11-13 10:58:41',0.000000,26,'2026-04-15 20:09:19'),
(13,42,19,29,25,'2026-04-15 14:39:19',0.000000,2,'2026-04-15 20:09:19'),
(14,110,19,29,1,'2025-11-13 10:59:19',0.000000,24,'2026-04-15 20:09:19'),
(15,204,19,29,1,'2025-11-13 10:59:19',0.000000,25,'2026-04-15 20:09:19'),
(16,79,19,29,1,'2025-11-13 10:59:37',0.000000,23,'2026-04-15 20:09:19'),
(17,172,19,29,1,'2025-11-13 11:40:50',0.000000,22,'2026-04-15 20:09:19'),
(18,177,19,29,4,'2026-02-12 15:21:37',0.000000,9,'2026-04-15 20:09:19'),
(19,43,19,29,40,'2026-04-15 14:39:19',0.000000,1,'2026-04-15 20:09:19'),
(20,217,19,29,1,'2025-11-26 18:08:32',0.000000,21,'2026-04-15 20:09:19'),
(21,38,19,29,1,'2025-12-17 17:06:09',0.000000,20,'2026-04-15 20:09:19'),
(22,5,19,29,1,'2026-01-13 21:59:44',0.000000,19,'2026-04-15 20:09:19'),
(23,62,19,29,1,'2026-01-17 10:07:54',0.000000,18,'2026-04-15 20:09:19'),
(24,215,19,29,5,'2026-04-03 16:23:14',0.000000,6,'2026-04-15 20:09:19'),
(25,29,19,29,1,'2026-01-21 07:11:41',0.000000,17,'2026-04-15 20:09:19'),
(26,135,19,29,1,'2026-01-21 07:11:41',0.000000,16,'2026-04-15 20:09:19'),
(27,57,19,29,1,'2026-02-04 12:40:18',0.000000,15,'2026-04-15 20:09:19'),
(28,41,19,29,2,'2026-04-03 18:24:53',0.000000,12,'2026-04-15 20:09:19'),
(29,23,19,29,1,'2026-03-11 08:27:36',0.000000,14,'2026-04-15 20:09:19'),
(30,43,20,30,2,'2026-03-14 15:52:57',0.000000,1,'2026-03-14 21:22:57');
/*!40000 ALTER TABLE `fast_moving_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `inventoryId` int(11) NOT NULL AUTO_INCREMENT,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `reorderLevel` decimal(10,2) DEFAULT NULL,
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  `isBatchEnabled` bit(1) DEFAULT b'0',
  PRIMARY KEY (`inventoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=1099 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES
(800,'2024-12-31 15:28:39','2024-12-31 15:28:39',10.00,'2024-12-31 20:58:39',NULL,NULL,'\0'),
(801,'2024-12-31 15:29:17','2024-12-31 15:29:17',20.00,'2024-12-31 20:59:17',NULL,NULL,'\0'),
(803,'2024-12-31 15:32:54','2024-12-31 15:32:54',20.00,'2024-12-31 21:02:54',NULL,NULL,'\0'),
(804,'2024-12-31 15:32:54','2024-12-31 15:32:54',20.00,'2024-12-31 21:02:54',NULL,NULL,'\0'),
(805,'2024-12-31 15:32:54','2024-12-31 15:32:54',20.00,'2024-12-31 21:02:54',NULL,NULL,'\0'),
(806,'2024-12-31 15:35:08','2024-12-31 15:35:08',10.00,'2024-12-31 21:05:08',NULL,NULL,'\0'),
(807,'2024-12-31 15:35:08','2024-12-31 15:35:08',10.00,'2024-12-31 21:05:08',NULL,NULL,'\0'),
(808,'2024-12-31 15:35:08','2024-12-31 15:35:08',10.00,'2024-12-31 21:05:08',NULL,NULL,'\0'),
(809,'2024-12-31 15:36:45','2024-12-31 15:36:45',10.00,'2024-12-31 21:06:45',NULL,NULL,'\0'),
(810,'2024-12-31 15:37:47','2024-12-31 15:37:47',10.00,'2024-12-31 21:07:47',NULL,NULL,'\0'),
(812,'2024-12-31 15:41:23','2024-12-31 15:41:23',10.00,'2024-12-31 21:11:23',NULL,NULL,'\0'),
(813,'2024-12-31 15:52:53','2024-12-31 15:52:53',10.00,'2024-12-31 21:22:53',NULL,NULL,'\0'),
(814,'2025-01-13 11:57:35','2025-01-13 11:57:35',10.00,'2025-01-13 17:27:35',NULL,NULL,'\0'),
(815,'2025-01-27 17:42:11','2025-01-27 17:42:11',10.00,'2025-01-27 23:12:11',NULL,NULL,'\0'),
(816,'2025-01-27 17:44:51','2025-01-27 17:44:51',10.00,'2025-01-27 23:14:51',NULL,NULL,'\0'),
(817,'2025-01-27 17:52:07','2025-01-27 17:52:07',10.00,'2025-01-27 23:22:07',NULL,NULL,'\0'),
(818,'2025-01-27 17:58:11','2025-01-27 17:58:11',10.00,'2025-01-27 23:28:11',NULL,NULL,'\0'),
(826,'2025-02-08 16:41:47','2025-02-08 16:41:47',50.00,'2025-02-08 22:11:47',NULL,NULL,'\0'),
(827,'2025-02-10 10:52:33','2025-02-10 10:52:33',5.00,'2025-02-10 16:22:33',NULL,NULL,'\0'),
(828,'2025-02-10 10:52:33','2025-02-10 10:52:33',5.00,'2025-02-10 16:22:33',NULL,NULL,'\0'),
(829,'2025-02-28 09:18:04','2025-02-28 09:18:04',10.00,'2025-02-28 14:48:04',NULL,NULL,'\0'),
(830,'2025-03-08 17:39:39','2025-03-08 17:39:39',10.00,'2025-03-08 23:09:39',NULL,NULL,'\0'),
(831,'2025-03-10 16:49:05','2025-03-10 16:49:05',10.00,'2025-03-10 22:19:05',NULL,NULL,'\0'),
(832,'2025-03-10 16:51:24','2025-03-10 16:51:24',10.00,'2025-03-10 22:21:24',NULL,NULL,'\0'),
(833,'2025-03-11 09:48:26','2025-03-11 09:48:26',10.00,'2025-03-11 15:18:26',NULL,NULL,'\0'),
(834,'2025-03-11 09:48:26','2025-03-11 09:48:26',10.00,'2025-03-11 15:18:26',NULL,NULL,'\0'),
(835,'2025-03-11 12:43:54','2025-03-11 12:43:54',10.00,'2025-03-11 18:13:54',NULL,NULL,'\0'),
(836,'2025-03-11 13:15:37','2025-03-11 13:15:37',10.00,'2025-03-11 18:45:37',NULL,NULL,'\0'),
(837,'2025-03-13 13:54:31','2025-03-13 13:54:31',10.00,'2025-03-13 19:24:31',NULL,NULL,'\0'),
(838,'2025-03-15 11:06:53','2025-03-15 11:06:53',10.00,'2025-03-15 11:06:53',NULL,NULL,'\0'),
(840,'2025-04-20 08:59:12','2025-04-20 08:59:12',5.00,'2025-04-20 08:59:12',NULL,NULL,'\0'),
(841,'2025-04-20 08:59:12','2025-04-20 08:59:12',5.00,'2025-04-20 08:59:12',NULL,NULL,'\0'),
(842,'2025-04-20 08:59:12','2025-04-20 08:59:12',5.00,'2025-04-20 08:59:12',NULL,NULL,'\0'),
(843,'2025-04-20 08:59:12','2025-04-20 08:59:12',5.00,'2025-04-20 08:59:12',NULL,NULL,'\0'),
(846,'2025-07-23 11:42:10','2025-07-23 11:42:10',10.00,'2025-07-23 17:12:10',NULL,NULL,'\0'),
(847,'2025-07-23 11:46:17','2025-07-23 11:46:17',10.00,'2025-07-23 17:16:17',NULL,NULL,'\0'),
(848,'2025-07-23 11:46:51','2025-07-23 11:46:51',10.00,'2025-07-23 17:16:51',NULL,NULL,'\0'),
(849,'2025-07-23 11:47:23','2025-07-23 11:47:23',10.00,'2025-07-23 17:17:23',NULL,NULL,'\0'),
(850,'2025-07-23 11:47:58','2025-07-23 11:47:58',10.00,'2025-07-23 17:17:58',NULL,NULL,'\0'),
(851,'2025-07-23 11:48:27','2025-07-23 11:48:27',10.00,'2025-07-23 17:18:27',NULL,NULL,'\0'),
(852,'2025-07-23 11:48:55','2025-07-23 11:48:55',10.00,'2025-07-23 17:18:55',NULL,NULL,'\0'),
(853,'2025-07-23 11:49:28','2025-07-23 11:49:28',10.00,'2025-07-23 17:19:28',NULL,NULL,'\0'),
(854,'2025-07-23 11:50:03','2025-07-23 11:50:03',10.00,'2025-07-23 17:20:03',NULL,NULL,'\0'),
(857,'2025-07-28 20:55:38','2025-07-28 20:55:38',10.00,'2025-07-29 02:25:38',NULL,NULL,'\0'),
(858,'2025-07-28 20:55:38','2025-07-28 20:55:38',10.00,'2025-07-29 02:25:38',NULL,NULL,'\0'),
(859,'2025-07-28 20:56:55','2025-07-28 20:56:55',10.00,'2025-07-29 02:26:55',NULL,NULL,'\0'),
(860,'2025-07-28 20:56:55','2025-07-28 20:56:55',10.00,'2025-07-29 02:26:55',NULL,NULL,'\0'),
(861,'2025-07-28 20:58:14','2025-07-28 20:58:14',10.00,'2025-07-29 02:28:14',NULL,NULL,'\0'),
(862,'2025-07-28 20:58:14','2025-07-28 20:58:14',10.00,'2025-07-29 02:28:14',NULL,NULL,'\0'),
(874,'2025-07-28 21:16:09','2025-07-28 21:16:09',10.00,'2025-07-29 02:46:09',NULL,NULL,'\0'),
(875,'2025-07-28 21:16:54','2025-07-28 21:16:54',10.00,'2025-07-29 02:46:54',NULL,NULL,'\0'),
(876,'2025-07-30 09:24:27','2025-07-30 09:24:27',10.00,'2025-07-30 14:54:27',NULL,NULL,'\0'),
(877,'2025-07-30 09:25:41','2025-07-30 09:25:41',10.00,'2025-07-30 14:55:41',NULL,NULL,'\0'),
(878,'2025-07-30 09:28:39','2025-07-30 09:28:39',10.00,'2025-07-30 14:58:39',NULL,NULL,'\0'),
(879,'2025-08-04 15:22:13','2025-08-04 15:22:13',10.00,'2025-08-04 20:52:13',NULL,NULL,'\0'),
(882,'2025-08-25 09:36:58','2025-08-25 09:36:58',10.00,'2025-08-25 15:06:58',NULL,NULL,'\0'),
(885,'2025-08-25 09:48:52','2025-08-25 09:48:52',10.00,'2025-08-25 15:18:52',NULL,NULL,'\0'),
(886,'2025-08-25 09:48:52','2025-08-25 09:48:52',10.00,'2025-08-25 15:18:52',NULL,NULL,'\0'),
(887,'2025-08-25 09:53:45','2025-08-25 09:53:45',10.00,'2025-08-25 15:23:45',NULL,NULL,'\0'),
(888,'2025-08-25 10:02:18','2025-08-25 10:02:18',10.00,'2025-08-25 15:32:18',NULL,NULL,'\0'),
(889,'2025-08-25 10:06:30','2025-08-25 10:06:30',45.00,'2025-08-25 15:36:30',NULL,NULL,'\0'),
(891,'2025-08-25 15:59:22','2025-08-25 15:59:22',10.00,'2025-08-25 21:29:22',NULL,NULL,'\0'),
(893,'2025-08-25 17:26:13','2025-08-25 17:26:13',10.00,'2025-08-25 22:56:13',NULL,NULL,'\0'),
(939,'2025-08-29 15:19:59','2025-08-29 15:19:59',10.00,'2025-08-29 20:49:59',NULL,NULL,'\0'),
(974,'2025-09-03 11:59:31','2025-09-03 11:59:31',NULL,'2025-09-03 17:29:31',NULL,NULL,'\0'),
(978,'2025-09-03 12:03:55','2025-09-03 12:03:55',NULL,'2025-09-03 17:33:55',NULL,NULL,'\0'),
(979,'2025-09-03 12:05:14','2025-09-03 12:05:14',NULL,'2025-09-03 17:35:14',NULL,NULL,'\0'),
(980,'2025-09-03 12:08:52','2025-09-03 12:08:52',NULL,'2025-09-03 17:38:52',NULL,NULL,'\0'),
(993,'2025-09-04 07:59:05','2025-09-04 07:59:05',NULL,'2025-09-04 13:29:05',NULL,NULL,'\0'),
(994,'2025-09-04 08:00:47','2025-09-04 08:00:47',NULL,'2025-09-04 13:30:47',NULL,NULL,'\0'),
(995,'2025-09-04 08:01:29','2025-09-04 08:01:29',NULL,'2025-09-04 13:31:29',NULL,NULL,'\0'),
(998,'2025-09-09 06:13:57','2025-09-09 06:13:57',NULL,'2025-09-09 11:43:57',NULL,NULL,'\0'),
(999,'2025-09-09 06:13:57','2025-09-09 06:13:57',NULL,'2025-09-09 11:43:57',NULL,NULL,'\0'),
(1034,'2025-09-09 10:35:00','2025-09-09 10:35:00',NULL,'2025-09-09 16:05:00',NULL,NULL,'\0'),
(1035,'2025-09-09 10:35:00','2025-09-09 10:35:00',NULL,'2025-09-09 16:05:00',NULL,NULL,'\0'),
(1036,'2025-09-09 10:35:00','2025-09-09 10:35:00',NULL,'2025-09-09 16:05:00',NULL,NULL,'\0'),
(1039,'2025-09-22 18:54:57','2025-09-22 18:54:57',NULL,'2025-09-23 00:24:57',NULL,NULL,'\0'),
(1068,'2025-10-04 07:21:56','2025-10-04 07:21:56',NULL,'2025-10-04 12:51:56',NULL,NULL,'\0'),
(1070,'2025-12-29 04:45:11','2025-12-29 04:45:11',NULL,'2025-12-29 10:15:11',NULL,NULL,'\0'),
(1077,'2026-01-21 16:45:20','2026-01-21 16:45:20',10.00,'2026-01-21 22:15:20',NULL,NULL,'\0'),
(1078,'2026-01-21 16:45:47','2026-01-21 16:45:47',10.00,'2026-01-21 22:15:47',NULL,NULL,'\0'),
(1079,'2026-01-21 16:53:33','2026-01-21 16:53:33',10.00,'2026-01-21 22:23:33',NULL,NULL,'\0'),
(1083,'2026-03-11 09:42:07','2026-03-11 09:42:07',NULL,'2026-03-11 15:12:07',NULL,NULL,'\0'),
(1084,'2026-03-11 09:42:07','2026-03-11 09:42:07',NULL,'2026-03-11 15:12:07',NULL,NULL,'\0'),
(1085,'2026-03-11 09:42:08','2026-03-11 09:42:08',NULL,'2026-03-11 15:12:08',NULL,NULL,'\0'),
(1086,'2026-03-11 09:42:08','2026-03-11 09:42:08',NULL,'2026-03-11 15:12:08',NULL,NULL,'\0'),
(1087,'2026-03-11 09:42:08','2026-03-11 09:42:08',NULL,'2026-03-11 15:12:08',NULL,NULL,'\0'),
(1088,'2026-03-11 09:42:08','2026-03-11 09:42:08',NULL,'2026-03-11 15:12:08',NULL,NULL,'\0'),
(1098,'2026-05-08 10:08:37','2026-05-08 10:08:37',NULL,'2026-05-08 15:38:37',NULL,NULL,'\0');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_stock_update_order`
--

DROP TABLE IF EXISTS `inventory_stock_update_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_stock_update_order` (
  `inventoryId` int(11) NOT NULL,
  `batchOrderPreferenceId` int(11) NOT NULL,
  KEY `batchOrderPreferenceId` (`batchOrderPreferenceId`),
  CONSTRAINT `inventory_stock_update_order_ibfk_1` FOREIGN KEY (`batchOrderPreferenceId`) REFERENCES `batch_order_preference` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_stock_update_order`
--

LOCK TABLES `inventory_stock_update_order` WRITE;
/*!40000 ALTER TABLE `inventory_stock_update_order` DISABLE KEYS */;
INSERT INTO `inventory_stock_update_order` VALUES
(799,1);
/*!40000 ALTER TABLE `inventory_stock_update_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_price_change`
--

DROP TABLE IF EXISTS `log_price_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_price_change` (
  `priceChangeLogId` int(11) NOT NULL AUTO_INCREMENT,
  `stockBatchId` int(11) NOT NULL,
  `oldUnitPrice` decimal(10,2) DEFAULT NULL,
  `newUnitPrice` decimal(10,2) DEFAULT NULL,
  `oldUnitCost` decimal(10,2) DEFAULT NULL,
  `newUnitCost` decimal(10,2) DEFAULT NULL,
  `changeReason` varchar(255) DEFAULT NULL,
  `UserLogID` int(11) DEFAULT NULL,
  `CreatedDate_ServerTime` timestamp NULL DEFAULT current_timestamp(),
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  PRIMARY KEY (`priceChangeLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_price_change`
--

LOCK TABLES `log_price_change` WRITE;
/*!40000 ALTER TABLE `log_price_change` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_price_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_stock_adjustment`
--

DROP TABLE IF EXISTS `log_stock_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_stock_adjustment` (
  `stockAdjustmentId` int(11) NOT NULL AUTO_INCREMENT,
  `stockBatchId` int(11) NOT NULL,
  `adjustedQty` decimal(10,2) NOT NULL,
  `existingStockQty` decimal(10,2) NOT NULL,
  `adjustmentTypeId` int(11) DEFAULT NULL,
  `adjustmentReasonId` int(11) DEFAULT NULL,
  `adjustmentReasonOtherRemark` varchar(100) DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  PRIMARY KEY (`stockAdjustmentId`),
  KEY `stock_adjustment_stock_adjustment_reason_FK` (`adjustmentReasonId`),
  KEY `stock_adjustment_non_serialized_item_FK` (`stockBatchId`),
  CONSTRAINT `stock_adjustment_non_serialized_item_FK` FOREIGN KEY (`stockBatchId`) REFERENCES `non_serialized_item` (`stockBatchId`),
  CONSTRAINT `stock_adjustment_stock_adjustment_reason_FK` FOREIGN KEY (`adjustmentReasonId`) REFERENCES `stock_adjustment_reason` (`adjustmentReasonId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_stock_adjustment`
--

LOCK TABLES `log_stock_adjustment` WRITE;
/*!40000 ALTER TABLE `log_stock_adjustment` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_stock_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measurement_unit`
--

DROP TABLE IF EXISTS `measurement_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measurement_unit` (
  `MeasurementUnitId` int(11) NOT NULL AUTO_INCREMENT,
  `MeasurementUnitName` varchar(50) NOT NULL,
  `CreatedDate_Server` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_Server` datetime DEFAULT NULL,
  PRIMARY KEY (`MeasurementUnitId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measurement_unit`
--

LOCK TABLES `measurement_unit` WRITE;
/*!40000 ALTER TABLE `measurement_unit` DISABLE KEYS */;
INSERT INTO `measurement_unit` VALUES
(1,'None','2023-05-21 23:41:50',NULL),
(2,'Kilogram','2023-12-21 23:38:18',NULL),
(3,'Liter','2023-12-21 23:38:18',NULL),
(4,'Unit','2023-12-21 23:38:18',NULL),
(5,'Pack','2023-12-21 23:38:18',NULL),
(6,'Box','2023-12-21 23:38:18',NULL),
(7,'pcs','2024-07-20 11:32:00',NULL),
(8,'Pair','2024-11-15 17:57:14',NULL),
(9,'Jar','2024-12-31 21:10:40',NULL);
/*!40000 ALTER TABLE `measurement_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `non_serialized_item`
--

DROP TABLE IF EXISTS `non_serialized_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `non_serialized_item` (
  `stockBatchId` int(11) NOT NULL AUTO_INCREMENT,
  `inventoryId` int(11) NOT NULL,
  `batchNumber` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isBatchReleased` bit(1) NOT NULL DEFAULT b'0',
  `batchDescription` varchar(100) DEFAULT NULL,
  `prodDate` date DEFAULT NULL,
  `expDate` date DEFAULT NULL,
  `StockQty` decimal(10,2) NOT NULL,
  `supplierId` int(11) DEFAULT NULL,
  `batchQueueNumber` int(11) DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `unitPrice_toRemove` decimal(10,2) DEFAULT NULL,
  `unitCost` decimal(10,2) DEFAULT NULL,
  `taxPerc` decimal(10,2) DEFAULT NULL,
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  PRIMARY KEY (`stockBatchId`),
  KEY `FK_bathes_contact` (`supplierId`),
  KEY `FK_batches_inventory` (`inventoryId`),
  CONSTRAINT `FK_batches_inventory` FOREIGN KEY (`inventoryId`) REFERENCES `inventory` (`inventoryId`),
  CONSTRAINT `FK_bathes_contact` FOREIGN KEY (`supplierId`) REFERENCES `contact` (`contactId`),
  CONSTRAINT `non_serialized_item_contact_FK` FOREIGN KEY (`supplierId`) REFERENCES `contact` (`contactId`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `non_serialized_item`
--

LOCK TABLES `non_serialized_item` WRITE;
/*!40000 ALTER TABLE `non_serialized_item` DISABLE KEYS */;
INSERT INTO `non_serialized_item` VALUES
(1,838,'00001','',NULL,NULL,NULL,8.00,1,1,'2025-03-15 11:23:46','2025-03-15 11:23:46',200.00,100.00,0.00,NULL,NULL),
(2,840,'00002','',NULL,NULL,NULL,6.00,2,1,'2025-04-20 09:02:34','2025-04-20 09:02:34',650.00,0.00,0.00,NULL,NULL),
(3,841,'00003','',NULL,NULL,NULL,8.00,2,1,'2025-04-20 09:02:34','2025-04-20 09:02:34',650.00,0.00,0.00,NULL,NULL),
(4,851,'00004','',NULL,NULL,NULL,87.00,3,1,'2025-07-23 16:14:42','2025-07-23 16:14:42',1.00,0.00,0.00,NULL,'2025-11-11 06:28:42'),
(5,852,'00005','\0',NULL,NULL,NULL,96.00,3,1,'2025-07-23 16:14:42','2025-07-23 16:14:42',1.00,0.00,0.00,NULL,'2025-10-21 10:22:15'),
(6,853,'00006','\0',NULL,NULL,NULL,98.00,3,1,'2025-07-23 16:14:42','2025-07-23 16:14:42',1.00,0.00,0.00,NULL,'2025-10-21 10:22:33'),
(7,854,'00007','\0',NULL,NULL,NULL,98.00,3,1,'2025-07-23 16:14:42','2025-07-23 16:14:42',1.00,0.00,0.00,NULL,'2025-10-02 10:07:51'),
(8,846,'00008','',NULL,NULL,NULL,85.00,3,1,'2025-07-23 16:14:42','2025-07-23 16:14:42',1.00,0.00,0.00,NULL,NULL),
(10,879,'00010','',NULL,NULL,NULL,0.00,1,1,'2025-08-05 11:59:14','2025-08-05 11:59:14',1.00,1.00,0.00,NULL,'2025-09-05 07:07:39'),
(11,876,'00011','\0',NULL,NULL,NULL,999.00,1,1,'2025-08-05 11:59:14','2025-08-05 11:59:14',1.00,1.00,0.00,NULL,'2025-10-02 10:15:25'),
(12,847,'00012','',NULL,NULL,NULL,980.50,1,1,'2025-08-05 11:59:14','2025-08-05 11:59:14',1.00,1.00,0.00,NULL,NULL),
(13,877,'00013','\0',NULL,NULL,NULL,999.00,1,1,'2025-08-05 11:59:14','2025-08-05 11:59:14',1.00,1.00,0.00,NULL,'2025-10-02 10:15:52'),
(14,848,'00014','\0',NULL,NULL,NULL,1000.00,1,1,'2025-08-05 11:59:14','2025-08-05 11:59:14',1.00,1.00,0.00,NULL,NULL),
(15,878,'00015','\0',NULL,NULL,NULL,996.00,1,1,'2025-08-05 11:59:14','2025-08-05 11:59:14',1.00,1.00,0.00,NULL,'2025-10-02 10:16:12'),
(16,849,'00016','\0',NULL,NULL,NULL,1000.00,1,1,'2025-08-05 11:59:14','2025-08-05 11:59:14',1.00,1.00,0.00,NULL,NULL),
(17,850,'00017','\0',NULL,NULL,NULL,994.00,1,1,'2025-08-05 11:59:14','2025-08-05 11:59:14',1.00,1.00,0.00,NULL,'2025-10-02 11:25:02'),
(22,879,'00002','\0',NULL,NULL,NULL,97.00,5,2,'2025-08-25 10:21:27','2025-08-25 10:21:27',1.00,1.00,0.00,NULL,'2025-09-09 07:16:26'),
(23,889,'00003','\0',NULL,NULL,NULL,5.00,2,1,'2025-08-25 14:57:24','2025-08-25 14:57:24',650.00,0.00,0.00,NULL,NULL),
(24,887,'00004','\0',NULL,NULL,NULL,10.00,2,1,'2025-08-25 14:59:29','2025-08-25 14:59:29',1400.00,0.00,0.00,NULL,NULL),
(31,874,'00011','\0',NULL,NULL,NULL,1.00,2,1,'2025-08-25 17:41:20','2025-08-25 17:41:20',5500.00,0.00,0.00,NULL,'2025-10-21 10:21:18'),
(32,893,'00012','\0',NULL,NULL,NULL,2.00,2,1,'2025-08-25 17:41:20','2025-08-25 17:41:20',5500.00,0.00,0.00,NULL,'2025-12-17 17:06:10'),
(37,939,'00017','\0',NULL,NULL,NULL,0.00,1,1,'2025-09-05 12:20:52','2025-09-05 12:20:52',1000.00,0.00,0.00,NULL,'2025-09-05 12:44:26'),
(38,939,'00018','\0',NULL,NULL,NULL,0.00,1,2,'2025-09-05 12:43:25','2025-09-05 12:43:25',1000.00,0.00,0.00,NULL,'2025-10-02 11:23:45'),
(39,939,'00019','\0',NULL,NULL,NULL,17.00,5,3,'2025-09-09 10:31:33','2025-09-09 10:31:33',1000.00,0.00,0.00,NULL,'2025-11-13 10:59:19'),
(42,1034,'00022','\0',NULL,NULL,NULL,0.00,5,1,'2025-09-09 10:36:55','2025-09-09 10:36:55',3000.00,0.00,0.00,NULL,'2026-03-25 09:25:12'),
(43,1035,'00023','\0',NULL,NULL,NULL,18.00,5,1,'2025-09-09 10:36:55','2025-09-09 10:36:55',2700.00,0.00,0.00,NULL,'2025-11-13 10:59:19'),
(44,1036,'00024','\0',NULL,NULL,NULL,165.00,5,1,'2025-09-09 10:36:55','2025-09-09 10:36:55',2500.00,0.00,0.00,NULL,'2026-03-25 12:28:50'),
(46,861,'00001','\0',NULL,NULL,NULL,17.00,2,1,'2025-09-09 12:03:26','2025-09-09 12:03:26',1000.00,0.00,0.00,NULL,'2025-10-02 10:04:40'),
(53,1068,'00008','\0',NULL,NULL,NULL,498.00,1,1,'2025-12-21 08:14:19','2025-12-21 08:14:19',5.00,0.00,0.00,NULL,NULL),
(54,1083,'00009','\0',NULL,NULL,NULL,105.00,1,1,'2026-03-11 09:42:12','2026-03-11 09:42:12',150.00,50.00,0.00,'2026-04-15 18:33:23','2026-04-15 13:03:23'),
(55,1083,'00010','\0',NULL,NULL,NULL,20.00,1,2,'2026-03-23 06:30:33','2026-03-23 06:30:33',100.00,0.00,0.00,NULL,NULL),
(56,1083,'00011','\0',NULL,NULL,NULL,20.00,1,3,'2026-03-23 06:31:27','2026-03-23 06:31:27',100.00,0.00,0.00,NULL,NULL),
(57,1083,'00012','\0',NULL,NULL,NULL,12.00,1,4,'2026-03-23 06:32:02','2026-03-23 06:32:02',100.00,0.00,0.00,NULL,'2026-04-15 14:39:19'),
(58,1034,'00013','\0',NULL,NULL,NULL,50.00,1,2,'2026-03-25 09:40:47','2026-03-25 09:40:47',3000.00,0.00,0.00,NULL,NULL),
(59,1034,'00014','\0',NULL,NULL,NULL,10.00,1,3,'2026-03-25 10:24:34','2026-03-25 10:24:34',3000.00,0.00,0.00,NULL,NULL),
(60,1034,'00015','\0',NULL,NULL,NULL,492.00,1,4,'2026-03-25 10:25:47','2026-03-25 10:25:47',3000.00,0.00,0.00,NULL,'2026-03-25 12:28:50'),
(61,1085,'00016','\0',NULL,NULL,NULL,61.00,1,1,'2026-04-03 15:42:11','2026-04-03 15:42:11',75.00,0.00,0.00,NULL,'2026-04-15 14:39:19'),
(62,1098,'00017','\0',NULL,NULL,NULL,44.00,1,1,'2026-05-08 10:48:10','2026-05-08 10:48:10',NULL,50.00,0.00,NULL,'2026-05-08 11:13:19');
/*!40000 ALTER TABLE `non_serialized_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details` (
  `OrderDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `OrderID` int(11) NOT NULL,
  `Qty` decimal(10,4) DEFAULT NULL,
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `unitPrice` decimal(10,4) DEFAULT NULL,
  `IsReturned` bit(1) NOT NULL DEFAULT b'0',
  `allProductId` int(11) DEFAULT NULL,
  `snshot_allProductId` int(11) DEFAULT NULL,
  `GrossAmount` decimal(10,2) DEFAULT NULL,
  `NetAmount` decimal(10,2) DEFAULT NULL,
  `MeasurementUnitId` int(11) DEFAULT NULL,
  `measurementUnitName` varchar(50) DEFAULT NULL,
  `stockBatchId` int(11) DEFAULT NULL,
  `unitCost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`OrderDetailID`),
  UNIQUE KEY `OrderDetailID_UNIQUE` (`OrderDetailID`),
  KEY `FK_OrderDetails_OrderHeader` (`OrderID`),
  CONSTRAINT `FK_OrderDetails_OrderHeader` FOREIGN KEY (`OrderID`) REFERENCES `order_header` (`OrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_header`
--

DROP TABLE IF EXISTS `order_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_header` (
  `OrderId` int(11) NOT NULL AUTO_INCREMENT,
  `OrderNo` varchar(50) DEFAULT NULL,
  `isVoided` bit(1) NOT NULL DEFAULT b'0',
  `userLogId` int(11) NOT NULL,
  `DC_CustomerId` int(11) DEFAULT NULL,
  `SessionId` int(11) NOT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `terminalId` int(11) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `StoreId` int(11) NOT NULL,
  `CurrencyId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `displayUserName` varchar(50) DEFAULT NULL,
  `dc_StoreId` int(11) NOT NULL,
  `systemInfoId` int(11) NOT NULL,
  `companyId` int(11) NOT NULL,
  `utcOffset` int(7) NOT NULL,
  PRIMARY KEY (`OrderId`),
  UNIQUE KEY `OrderId_UNIQUE` (`OrderId`),
  UNIQUE KEY `OrderNo_UNIQUE` (`OrderNo`),
  KEY `FK_OrderHeader_Terminal` (`terminalId`),
  KEY `FK_OrderHeader_Branch` (`StoreId`),
  KEY `FK_OrderHeader_SessionDetails` (`SessionId`),
  KEY `FK_OrderHeader_DC_Customer` (`DC_CustomerId`),
  KEY `FK_OrderHeader_Customer` (`customerId`),
  KEY `FK_OrderHeader_Currency` (`CurrencyId`),
  CONSTRAINT `FK_OrderHeader_Branch` FOREIGN KEY (`StoreId`) REFERENCES `store` (`storeId`),
  CONSTRAINT `FK_OrderHeader_Currency` FOREIGN KEY (`CurrencyId`) REFERENCES `currency` (`CurrencyID`),
  CONSTRAINT `FK_OrderHeader_Customer` FOREIGN KEY (`customerId`) REFERENCES `contact` (`contactId`),
  CONSTRAINT `FK_OrderHeader_SessionDetails` FOREIGN KEY (`SessionId`) REFERENCES `session_period` (`sessionId`),
  CONSTRAINT `order_header_terminal_FK` FOREIGN KEY (`terminalId`) REFERENCES `terminal` (`TerminalId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_header`
--

LOCK TABLES `order_header` WRITE;
/*!40000 ALTER TABLE `order_header` DISABLE KEYS */;
INSERT INTO `order_header` VALUES
(1,'00001','\0',1,NULL,1,'2026-05-08 09:53:17','2026-05-08 15:23:17',29,NULL,19,16,5,'Dayara',14,20,19,330),
(2,'00002','\0',1,NULL,1,'2026-05-08 09:57:35','2026-05-08 15:27:35',29,NULL,19,16,5,'Dayara',14,20,19,330),
(3,'00003','\0',1,NULL,1,'2026-05-08 11:13:19','2026-05-08 16:43:19',29,NULL,19,16,5,'Dayara',14,20,19,330),
(4,'00004','\0',1,NULL,1,'2026-05-08 11:22:51','2026-05-08 16:52:51',29,NULL,19,16,5,'Dayara',14,20,19,330),
(5,'00005','\0',1,NULL,1,'2026-05-08 11:24:03','2026-05-08 16:54:03',29,NULL,19,16,5,'Dayara',14,20,19,330),
(6,'00006','\0',1,NULL,1,'2026-05-08 14:42:36','2026-05-08 20:12:36',29,NULL,19,16,5,'Dayara',14,20,19,330);
/*!40000 ALTER TABLE `order_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_line_discount`
--

DROP TABLE IF EXISTS `order_line_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_line_discount` (
  `OrderDetailId` int(11) NOT NULL,
  `DiscountTypeId` int(11) DEFAULT NULL,
  `DiscountValue` decimal(10,2) DEFAULT NULL,
  `DiscountReasonId` int(11) DEFAULT NULL,
  `Remark` varchar(500) DEFAULT NULL,
  `DiscountAmount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`OrderDetailId`),
  KEY `FK_LineDiscount_OrderDetails` (`OrderDetailId`),
  KEY `FK_LineDiscount_DiscountType` (`DiscountTypeId`),
  KEY `FK_LineDiscount_DiscountReason` (`DiscountReasonId`),
  CONSTRAINT `FK_LineDiscount_DiscountReason` FOREIGN KEY (`DiscountReasonId`) REFERENCES `discount_reason` (`DiscountReasonId`),
  CONSTRAINT `FK_LineDiscount_DiscountType` FOREIGN KEY (`DiscountTypeId`) REFERENCES `discount_type` (`DiscountTypeId`),
  CONSTRAINT `FK_LineDiscount_OrderDetails` FOREIGN KEY (`OrderDetailId`) REFERENCES `order_details` (`OrderDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_line_discount`
--

LOCK TABLES `order_line_discount` WRITE;
/*!40000 ALTER TABLE `order_line_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_line_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_line_tax`
--

DROP TABLE IF EXISTS `order_line_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_line_tax` (
  `OrderDetailId` int(11) NOT NULL,
  `TaxRate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `TaxAmount` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`OrderDetailId`),
  KEY `FK_order_line_tax_OrderDetails` (`OrderDetailId`),
  CONSTRAINT `FK_order_line_tax_OrderDetails` FOREIGN KEY (`OrderDetailId`) REFERENCES `order_details` (`OrderDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_line_tax`
--

LOCK TABLES `order_line_tax` WRITE;
/*!40000 ALTER TABLE `order_line_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_line_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_overall_discount`
--

DROP TABLE IF EXISTS `order_overall_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_overall_discount` (
  `Order_OverallDiscountId` int(11) NOT NULL AUTO_INCREMENT,
  `OrderId` int(11) NOT NULL,
  `DiscountTypeId` int(11) DEFAULT NULL,
  `DiscountValue` decimal(10,2) DEFAULT NULL,
  `DiscountReasonId` int(11) DEFAULT NULL,
  `Remark` varchar(500) DEFAULT NULL,
  `DiscountAmount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Order_OverallDiscountId`),
  KEY `FK_OverallDiscount_Orderheader` (`OrderId`),
  KEY `FK_OverallDiscount_DiscountType` (`DiscountTypeId`),
  KEY `FK_OverallDiscount_DiscountReason` (`DiscountReasonId`),
  CONSTRAINT `FK_OverallDiscount_DiscountReason` FOREIGN KEY (`DiscountReasonId`) REFERENCES `discount_reason` (`DiscountReasonId`),
  CONSTRAINT `FK_OverallDiscount_DiscountType` FOREIGN KEY (`DiscountTypeId`) REFERENCES `discount_type` (`DiscountTypeId`),
  CONSTRAINT `FK_OverallDiscount_Orderheader` FOREIGN KEY (`OrderId`) REFERENCES `order_header` (`OrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_overall_discount`
--

LOCK TABLES `order_overall_discount` WRITE;
/*!40000 ALTER TABLE `order_overall_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_overall_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_payments`
--

DROP TABLE IF EXISTS `order_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_payments` (
  `PaymentId` int(11) NOT NULL AUTO_INCREMENT,
  `OrderId` int(11) NOT NULL,
  `MethodId` int(11) NOT NULL,
  `AmountPaid` decimal(10,4) DEFAULT NULL,
  `PaymentDate_UTC` timestamp NULL DEFAULT utc_timestamp(),
  PRIMARY KEY (`PaymentId`),
  KEY `FK_OrderPayments_OrderHeader` (`OrderId`),
  KEY `FK_OrderPayments_Methods` (`MethodId`),
  CONSTRAINT `FK_order_payments_order_header` FOREIGN KEY (`OrderId`) REFERENCES `order_header` (`OrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_payments`
--

LOCK TABLES `order_payments` WRITE;
/*!40000 ALTER TABLE `order_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_return`
--

DROP TABLE IF EXISTS `order_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_return` (
  `order_return_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderDetailId` int(11) DEFAULT NULL,
  `pre_orderDetailId_return` int(11) DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `Qty` decimal(10,2) DEFAULT NULL,
  `isStockTracked` bit(1) DEFAULT NULL,
  PRIMARY KEY (`order_return_id`),
  KEY `FK_Order_return_OrderDetail_return` (`pre_orderDetailId_return`),
  KEY `FK_Order_return_OrderDetail` (`orderDetailId`),
  CONSTRAINT `FK_Order_return_OrderDetail` FOREIGN KEY (`orderDetailId`) REFERENCES `order_details` (`OrderDetailID`),
  CONSTRAINT `FK_Order_return_OrderDetail_return` FOREIGN KEY (`pre_orderDetailId_return`) REFERENCES `order_details` (`OrderDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_return`
--

LOCK TABLES `order_return` WRITE;
/*!40000 ALTER TABLE `order_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_summary_processed`
--

DROP TABLE IF EXISTS `order_summary_processed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_summary_processed` (
  `OrderId` int(11) NOT NULL,
  `GrossAmount_total` decimal(10,2) DEFAULT NULL,
  `LineDiscountAmount_total` decimal(10,2) DEFAULT NULL,
  `OverallDiscountAmount` decimal(10,2) DEFAULT NULL,
  `All_DiscountAmount_total` decimal(10,2) DEFAULT NULL,
  `SubTotal` decimal(10,2) DEFAULT NULL,
  `Adjusted_subtotal` decimal(10,2) DEFAULT NULL,
  `GrandTotal` decimal(10,2) DEFAULT NULL,
  `LineTaxAmount_total` decimal(10,2) DEFAULT NULL,
  `changeAmount` decimal(10,0) DEFAULT NULL,
  `noOfItems` decimal(10,2) DEFAULT NULL,
  `productGrossAmount_total` decimal(10,2) DEFAULT NULL,
  `nonProductGrossAmount_total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`OrderId`),
  KEY `FK_order_summary_processed_OrderHeader` (`OrderId`),
  CONSTRAINT `FK_order_summary_processed_OrderHeader` FOREIGN KEY (`OrderId`) REFERENCES `order_header` (`OrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_summary_processed`
--

LOCK TABLES `order_summary_processed` WRITE;
/*!40000 ALTER TABLE `order_summary_processed` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_summary_processed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_voided`
--

DROP TABLE IF EXISTS `order_voided`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_voided` (
  `order_voided_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `order_voiding_reason_id` int(11) DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`order_voided_id`),
  KEY `FK_OrderVoided_OrderHeader` (`orderId`),
  KEY `FK_OrderVoided_orderVoidingReason` (`order_voiding_reason_id`),
  CONSTRAINT `FK_OrderVoided_OrderHeader` FOREIGN KEY (`orderId`) REFERENCES `order_header` (`OrderId`),
  CONSTRAINT `FK_OrderVoided_orderVoidingReason` FOREIGN KEY (`order_voiding_reason_id`) REFERENCES `order_voiding_reason` (`order_voiding_reason_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_voided`
--

LOCK TABLES `order_voided` WRITE;
/*!40000 ALTER TABLE `order_voided` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_voided` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_voiding_reason`
--

DROP TABLE IF EXISTS `order_voiding_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_voiding_reason` (
  `order_voiding_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `ReasonName` varchar(100) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`order_voiding_reason_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_voiding_reason`
--

LOCK TABLES `order_voiding_reason` WRITE;
/*!40000 ALTER TABLE `order_voiding_reason` DISABLE KEYS */;
INSERT INTO `order_voiding_reason` VALUES
(1,'Customer Requested Change','Sometimes, customers change their mind after placing an order or want to modify items.'),
(2,'Product Unavailability','If certain items are out of stock or unavailable at the time of order fulfillment'),
(3,'Price Discrepancy','Cases where the price charged doesn\'t match the advertised or expected price, leading to a voided order due to a \"Price Discrepancy.'),
(4,'Employee Error','Errors made by the staff during order entry, payment processing, or inventory management'),
(5,'Customer Dissatisfaction','If a customer expresses dissatisfaction with a product or service after placing an order'),
(6,'Technical Issues','Issues related to the POS system, payment processing, or technical glitches leading to order cancellation'),
(7,'Other','Any other reaon');
/*!40000 ALTER TABLE `order_voiding_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_methods` (
  `MethodId` int(11) NOT NULL,
  `MethodName` varchar(50) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`MethodId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES
(1,'Cash','made in cash',''),
(2,'Card','made in card',''),
(3,'Check','made in check','\0'),
(4,'Credit','give for credits','\0'),
(5,'Bank Transfer','Bank Account Transfer','');
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `printappterminal`
--

DROP TABLE IF EXISTS `printappterminal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `printappterminal` (
  `PrintAppId` int(11) NOT NULL AUTO_INCREMENT,
  `terminalId` int(11) DEFAULT NULL,
  `appKey` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PrintAppId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `printappterminal`
--

LOCK TABLES `printappterminal` WRITE;
/*!40000 ALTER TABLE `printappterminal` DISABLE KEYS */;
INSERT INTO `printappterminal` VALUES
(1,1,'Rehh34387h34jk');
/*!40000 ALTER TABLE `printappterminal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `printdesk`
--

DROP TABLE IF EXISTS `printdesk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `printdesk` (
  `prntdeskId` varchar(50) NOT NULL,
  `terminalId` int(11) NOT NULL,
  `frontendId` varchar(50) DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  `UserLogId` int(11) NOT NULL,
  `printdeskId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`prntdeskId`),
  UNIQUE KEY `unique_prntdeskId` (`prntdeskId`),
  UNIQUE KEY `unique_printdesk_terminal` (`prntdeskId`,`terminalId`),
  KEY `fk_terminalId` (`terminalId`),
  CONSTRAINT `fk_terminalId` FOREIGN KEY (`terminalId`) REFERENCES `terminal` (`TerminalId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `printdesk`
--

LOCK TABLES `printdesk` WRITE;
/*!40000 ALTER TABLE `printdesk` DISABLE KEYS */;
INSERT INTO `printdesk` VALUES
('1',29,'3jkfsjl','2025-03-17 18:17:20','2025-03-17 18:17:20',NULL,NULL,1,'PD1124DW23SP');
/*!40000 ALTER TABLE `printdesk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `ProductId` int(11) NOT NULL AUTO_INCREMENT,
  `ProductNo` varchar(100) DEFAULT NULL,
  `ProductName` varchar(50) NOT NULL,
  `BrandId` int(11) DEFAULT NULL,
  `MeasurementUnitId` int(11) DEFAULT NULL,
  `productTypeId` int(11) DEFAULT NULL,
  `isNotForSelling` bit(1) DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  `imageUrl` text DEFAULT NULL,
  `UserLogId` int(11) NOT NULL,
  `isUnique` bit(1) DEFAULT NULL,
  `isProductItem` bit(1) DEFAULT NULL,
  `isExpiringProduct` bit(1) DEFAULT b'0',
  `isAssemblyProduct` bit(1) DEFAULT b'0',
  PRIMARY KEY (`ProductId`),
  UNIQUE KEY `unique_product_no` (`ProductNo`),
  KEY `FK_Product_MeasurementUnit` (`MeasurementUnitId`),
  KEY `FK_Product_brand` (`BrandId`),
  KEY `FK_product_productType` (`productTypeId`),
  CONSTRAINT `FK_Product_MeasurementUnit` FOREIGN KEY (`MeasurementUnitId`) REFERENCES `measurement_unit` (`MeasurementUnitId`),
  CONSTRAINT `FK_Product_brand` FOREIGN KEY (`BrandId`) REFERENCES `brand` (`BrandId`),
  CONSTRAINT `FK_product_productType` FOREIGN KEY (`productTypeId`) REFERENCES `product_type` (`productTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES
(34,'00034','Online Passport',1,7,1,'\0','2025-07-13 18:16:56','2025-07-13 23:46:56','2025-09-08 19:23:12','2025-09-08 13:53:12','',86,'\0','\0','\0','\0'),
(35,'00035','Online NIC',1,7,1,'\0','2025-07-13 18:17:34','2025-07-13 23:47:34','2025-09-08 19:22:22','2025-09-08 13:52:22','',86,'\0','\0','\0','\0'),
(46,'00046','10x15 Print - customer',1,7,1,'\0','2025-07-13 18:24:06','2025-07-13 23:54:06','2025-08-04 15:13:43','2025-08-04 09:43:43','',86,'\0','\0','\0','\0'),
(52,'00052','Photo Paper 4x6',1,7,1,'\0','2025-07-23 11:42:10','2025-07-23 17:12:10','2025-07-23 17:12:10','2025-07-23 11:42:10','',88,'\0','','\0','\0'),
(53,'00053','Photo Paper 5x7',1,7,1,'\0','2025-07-23 11:46:17','2025-07-23 17:16:17','2025-07-23 17:16:17','2025-07-23 11:46:17','',88,'\0','','\0','\0'),
(54,'00054','Photo Paper 6x8',1,7,1,'\0','2025-07-23 11:46:51','2025-07-23 17:16:51','2025-07-23 17:16:51','2025-07-23 11:46:51','',88,'\0','','\0','\0'),
(55,'00055','Photo Paper 8x10',1,7,1,'\0','2025-07-23 11:47:23','2025-07-23 17:17:23','2025-07-23 17:17:23','2025-07-23 11:47:23','',88,'\0','','\0','\0'),
(56,'00056','Photo Paper 8x12',1,7,1,'\0','2025-07-23 11:47:58','2025-07-23 17:17:58','2025-07-23 17:17:58','2025-07-23 11:47:58','',88,'\0','','\0','\0'),
(57,'00057','Photo Paper 10x12',1,7,1,'\0','2025-07-23 11:48:27','2025-07-23 17:18:27','2025-11-10 16:32:15','2025-11-10 11:02:15','3004dcef5b1ce8241de60a61c073d5c1',88,'\0','','\0','\0'),
(58,'00058','Photo Paper 10x15',1,7,1,'\0','2025-07-23 11:48:55','2025-07-23 17:18:55','2025-07-23 17:18:55','2025-07-23 11:48:55','',88,'\0','','\0','\0'),
(59,'00059','Photo Paper 12x15',1,7,1,'\0','2025-07-23 11:49:28','2025-07-23 17:19:28','2025-07-23 17:19:28','2025-07-23 11:49:28','',88,'\0','','\0','\0'),
(60,'00060','Photo Paper 12x18',1,7,1,'\0','2025-07-23 11:50:03','2025-07-23 17:20:03','2025-07-23 17:20:03','2025-07-23 11:50:03','',88,'\0','','\0','\0'),
(61,'00061','Photo Frame 4R',1,7,2,'\0','2025-07-28 20:54:06','2025-07-29 02:24:06','2025-09-09 23:02:51','2025-09-09 17:32:51','',93,'\0','','\0','\0'),
(62,'00062','Photo Frame5R',1,7,2,'\0','2025-07-28 20:55:38','2025-07-29 02:25:38','2025-08-04 13:54:56','2025-08-04 08:24:56','',93,'\0','','\0','\0'),
(63,'00063','Photo Frame6R',1,7,2,'\0','2025-07-28 20:56:55','2025-07-29 02:26:55','2025-08-04 13:55:29','2025-08-04 08:25:29','',93,'\0','','\0','\0'),
(64,'00064','Photo Frame8R',1,7,2,'\0','2025-07-28 20:58:14','2025-07-29 02:28:14','2025-08-04 13:56:00','2025-08-04 08:26:00','',93,'\0','','\0','\0'),
(65,'00065','Photo Frame 8x12',1,7,2,'\0','2025-07-28 21:03:20','2025-07-29 02:33:20','2025-09-09 15:01:45','2025-09-09 09:31:45','',93,'\0','','\0','\0'),
(66,'00066','Photo Frame10x12',1,7,2,'\0','2025-07-28 21:05:08','2025-07-29 02:35:08','2025-11-10 16:36:05','2025-11-10 11:06:05','8e6cc0551c4cd8356721d7b659b8449d',93,'\0','','\0','\0'),
(67,'00067','Photo Frame10x15',1,7,2,'\0','2025-07-28 21:08:20','2025-07-29 02:38:20','2025-09-09 23:05:11','2025-09-09 17:35:11','',93,'\0','','\0','\0'),
(68,'00068','Photo Frame12x15',1,7,2,'\0','2025-07-28 21:10:17','2025-07-29 02:40:17','2025-10-21 17:49:44','2025-10-21 12:19:44','',93,'\0','','\0','\0'),
(69,'00069','Photo Frame12x18',1,7,2,'\0','2025-07-28 21:12:36','2025-07-29 02:42:36','2025-10-21 17:47:37','2025-10-21 12:17:37','',93,'\0','','\0','\0'),
(70,'00070','Photo Frame16x20',1,7,2,'\0','2025-07-28 21:15:20','2025-07-29 02:45:20','2025-10-21 17:50:06','2025-10-21 12:20:06','',93,'\0','','\0','\0'),
(71,'00071','Photo Frame16x24',1,7,2,'\0','2025-07-28 21:16:09','2025-07-29 02:46:09','2025-08-25 22:56:13','2025-08-25 17:26:13','',93,'\0','','\0','\0'),
(72,'00072','Photo Frame20x30',1,7,2,'\0','2025-07-28 21:16:54','2025-07-29 02:46:54','2025-08-04 13:54:23','2025-08-04 08:24:23','',93,'\0','','\0','\0'),
(74,'00074','Photo Paper 5R',1,7,1,'\0','2025-07-30 09:24:27','2025-07-30 14:54:27','2025-09-01 21:08:24','2025-09-01 15:38:24','',93,'\0','','\0','\0'),
(76,'00076','Photo Paper 6R',1,7,1,'\0','2025-07-30 09:25:41','2025-07-30 14:55:41','2025-08-04 15:21:51','2025-08-04 09:51:51','',93,'\0','','\0','\0'),
(78,'00078','Photo Paper 8R',1,7,1,'\0','2025-07-30 09:28:39','2025-07-30 14:58:39','2025-08-04 15:22:05','2025-08-04 09:52:05','',93,'\0','','\0','\0'),
(96,'00096','Photo Paper 4R',1,7,1,'\0','2025-08-04 15:22:13','2025-08-04 20:52:13','2025-09-01 21:05:06','2025-09-01 15:35:06','',96,'\0','','\0','\0'),
(99,'00099','Photo Frame 6x8',1,7,2,'\0','2025-08-25 09:45:42','2025-08-25 15:15:42','2025-09-02 20:47:47','2025-09-02 15:17:47','',6,'\0','','\0','\0'),
(104,'00104','Flymount',1,7,2,'\0','2025-08-25 16:27:06','2025-08-25 21:57:06','2025-10-07 18:17:11','2025-10-07 12:47:11','',9,'\0','','\0','\0'),
(105,'00105','Photo Frame 4x6',1,7,2,'\0','2025-08-25 17:40:03','2025-08-25 23:10:03','2026-04-03 23:38:22','2026-04-03 18:08:22','',9,'\0','','\0','\0'),
(106,'00106','Document Scan',1,7,2,'\0','2025-08-28 09:24:55','2025-08-28 14:54:55','2026-04-03 17:00:15','2026-04-03 11:30:15','',19,'\0','','\0','\0'),
(107,'00107','Photo Frame Double Box',1,7,2,'\0','2025-08-29 10:27:40','2025-08-29 15:57:40','2025-09-09 23:04:19','2025-09-09 17:34:19','',23,'\0','','\0','\0'),
(108,'00108','Frame Stand',1,7,2,'\0','2025-08-29 15:13:33','2025-08-29 20:43:33','2025-09-09 22:58:35','2025-09-09 17:28:35','',27,'\0','','\0','\0'),
(109,'00109','Frame Glass',1,7,2,'\0','2025-08-29 15:19:00','2025-08-29 20:49:00','2025-09-09 22:58:04','2025-09-09 17:28:04','',27,'\0','','\0','\0'),
(110,'00110','White Mug',1,7,1,'\0','2025-08-29 15:19:59','2025-08-29 20:49:59','2025-10-04 11:02:06','2025-10-04 05:32:06','',27,'\0','','\0','\0'),
(111,'00111','Magic Mug',1,7,1,'\0','2025-08-29 15:20:27','2025-08-29 20:50:27','2025-11-10 16:29:14','2025-11-10 10:59:14','6b6cbce32190ba239266a33d3d17c0a4',27,'\0','','\0','\0'),
(114,'00114','Clock',1,7,1,'\0','2025-08-29 15:22:51','2025-08-29 20:52:51','2025-10-04 11:24:06','2025-10-04 05:54:06','',27,'\0','','\0','\0'),
(131,'00131','Photo Paper 16x20',1,7,1,'\0','2025-09-04 07:59:05','2025-09-04 13:29:05','2025-09-04 13:29:05','2025-09-04 07:59:05','',37,'\0','','\0','\0'),
(132,'00132','Photo Paper 16x24',1,7,1,'\0','2025-09-04 08:00:47','2025-09-04 13:30:47','2025-09-04 13:30:47','2025-09-04 08:00:47','',37,'\0','','\0','\0'),
(133,'00133','Photo Paper 20x30',1,7,1,'\0','2025-09-04 08:01:29','2025-09-04 13:31:29','2025-09-04 13:31:29','2025-09-04 08:01:29','',37,'\0','','\0','\0'),
(134,'00134','Print with Frame',1,7,2,'\0','2025-09-04 08:03:11','2025-09-04 13:33:11','2025-09-09 23:02:26','2025-09-09 17:32:26','',37,'\0','','\0','\0'),
(136,'00136','Photo Print 20x30',1,7,2,'\0','2025-09-08 07:00:59','2025-09-08 12:30:59','2025-10-21 17:46:04','2025-10-21 12:16:04','',55,'\0','','\0','\0'),
(137,'00137','Photo Print 16x24',1,7,2,'\0','2025-09-08 07:05:40','2025-09-08 12:35:40','2025-10-21 17:44:57','2025-10-21 12:14:57','',55,'\0','','\0','\0'),
(138,'00138','Photo Print 16x20',1,7,2,'\0','2025-09-08 07:09:21','2025-09-08 12:39:21','2025-10-21 17:43:32','2025-10-21 12:13:32','',55,'\0','','\0','\0'),
(139,'00139','Photo Print 12x18',1,7,2,'\0','2025-09-08 07:12:50','2025-09-08 12:42:50','2025-09-08 12:42:50','2025-09-08 07:12:50','',55,'\0','','\0',''),
(140,'00140','Photo Print 12x15',1,7,2,'\0','2025-09-08 07:15:46','2025-09-08 12:45:46','2025-10-21 17:42:31','2025-10-21 12:12:31','',55,'\0','','\0','\0'),
(141,'00141','Photo Print 10X15',1,7,2,'\0','2025-09-08 07:18:36','2025-09-08 12:48:36','2025-10-21 17:41:45','2025-10-21 12:11:45','',55,'\0','','\0','\0'),
(142,'00142','Photo Print 10x12',1,7,2,'\0','2025-09-08 07:21:30','2025-09-08 12:51:30','2025-10-21 17:40:44','2025-10-21 12:10:44','',55,'\0','','\0','\0'),
(144,'00144','Photo Print 5R',1,7,2,'\0','2025-09-08 11:03:26','2025-09-08 16:33:26','2025-10-21 17:32:43','2025-10-21 12:02:43','',55,'\0','','\0','\0'),
(145,'00145','Photo Print 6R',1,7,2,'\0','2025-09-08 11:22:04','2025-09-08 16:52:04','2025-10-21 17:37:42','2025-10-21 12:07:42','',57,'\0','','\0','\0'),
(146,'00146','Photo Print 8R',1,7,2,'\0','2025-09-08 11:33:48','2025-09-08 17:03:48','2025-10-21 17:37:18','2025-10-21 12:07:18','',59,'\0','','\0','\0'),
(147,'00147','Photo Print 8x12',1,7,2,'\0','2025-09-08 11:46:06','2025-09-08 17:16:06','2025-10-21 17:39:40','2025-10-21 12:09:40','',59,'\0','','\0','\0'),
(148,'00148','Paper A4',1,7,1,'\0','2025-09-08 11:51:50','2025-09-08 17:21:50','2025-10-04 12:51:56','2025-10-04 07:21:56','',59,'\0','','\0','\0'),
(149,'00149','Printout A4',1,7,2,'\0','2025-09-08 11:52:13','2025-09-08 17:22:13','2026-05-08 13:50:35','2026-05-08 08:20:35','',59,'\0','\0','\0','\0'),
(150,'00150','Photocopy',1,7,2,'\0','2025-09-08 12:22:59','2025-09-08 17:52:59','2025-09-09 17:21:44','2025-09-09 11:51:44','',59,'\0','','\0','\0'),
(151,'00151','Photo Print 2x2.5',1,7,2,'\0','2025-09-09 06:13:57','2025-09-09 11:43:57','2025-09-09 15:17:45','2025-09-09 09:47:45','',60,'\0','','\0','\0'),
(152,'00152','Photo Print 2x2',1,7,2,'\0','2025-09-09 06:17:47','2025-09-09 11:47:47','2025-10-04 13:01:57','2025-10-04 07:31:57','',60,'\0','','\0','\0'),
(153,'00153','Postal ID Print',1,7,2,'\0','2025-09-09 06:27:17','2025-09-09 11:57:17','2025-09-10 09:59:12','2025-09-10 04:29:12','',60,'\0','','\0','\0'),
(155,'00155','Stamp Print',1,7,2,'\0','2025-09-09 06:51:45','2025-09-09 12:21:45','2025-10-25 11:24:03','2025-10-25 05:54:03','',60,'\0','','\0','\0'),
(156,'00156','Lab Print 4R',1,7,2,'\0','2025-09-09 08:49:15','2025-09-09 14:19:15','2025-10-04 13:12:01','2025-10-04 07:42:01','',65,'\0','','\0','\0'),
(157,'00157','Tile',1,7,2,'\0','2025-09-09 10:35:00','2025-09-09 16:05:00','2025-09-09 16:05:00','2025-09-09 10:35:00','',67,'\0','','\0','\0'),
(158,'00158','Rock',1,7,2,'\0','2025-09-09 10:39:36','2025-09-09 16:09:36','2025-10-04 10:56:52','2025-10-04 05:26:52','',67,'\0','','\0','\0'),
(160,'00160','Passport Soft Copy',1,7,2,'\0','2025-09-09 11:39:56','2025-09-09 17:09:56','2025-09-09 17:15:56','2025-09-09 11:45:56','',1,'\0','','\0','\0'),
(162,'00162','Passport',1,7,2,'\0','2025-09-09 11:42:35','2025-09-09 17:12:35','2025-09-09 17:15:04','2025-09-09 11:45:04','',1,'\0','','\0','\0'),
(163,'00163','testing o',1,2,2,'\0','2025-09-22 18:53:32','2025-09-23 00:23:32','2025-09-23 00:24:57','2025-09-22 18:54:57','',50,'\0','','\0','\0'),
(164,'00164','Photo Print 4R',1,7,2,'\0','2025-10-21 11:56:48','2025-10-21 17:26:48','2025-10-21 17:34:57','2025-10-21 12:04:57','',340,'\0','','\0','\0'),
(165,'00165','4R Print Studio',1,7,2,'\0','2025-10-21 13:16:49','2025-10-21 18:46:49','2026-05-08 03:29:23','2026-05-07 21:59:23','',350,'\0','','\0','\0'),
(166,'00166','TESTING product',1,2,2,'\0','2025-11-26 17:50:53','2025-11-26 23:20:53','2025-11-26 23:38:04','2025-11-26 18:08:04','',458,'\0','','\0','\0'),
(167,'00167','ttttt',1,2,2,'\0','2025-11-27 05:15:24','2025-11-27 10:45:24','2025-11-28 09:08:09','2025-11-28 03:38:09','3e875fc1b84e889fdaa6a13112a6d093',459,'\0','','\0','\0'),
(168,'00168','Orage Juice',1,7,2,'\0','2025-12-29 04:45:10','2025-12-29 10:15:10','2025-12-29 10:15:10','2025-12-29 04:45:10','7748087430d5623af1d9f20ed1853af6',472,'\0','','\0','\0'),
(172,'00172','jkjl',1,2,1,'\0','2026-01-21 09:16:52','2026-01-21 14:46:52','2026-01-21 14:46:52','2026-01-21 09:16:52',NULL,495,'\0','','\0','\0'),
(173,'00173','jkj',1,2,1,'\0','2026-01-21 09:18:04','2026-01-21 14:48:04','2026-01-21 14:48:04','2026-01-21 09:18:04',NULL,495,'\0','','\0','\0'),
(174,'00174','jkljkl',1,1,1,'\0','2026-01-21 09:20:22','2026-01-21 14:50:22','2026-01-21 14:50:22','2026-01-21 09:20:22',NULL,495,'\0','','\0','\0'),
(175,'00175','jklj',1,3,1,'\0','2026-01-21 09:21:33','2026-01-21 14:51:33','2026-01-21 14:51:33','2026-01-21 09:21:33',NULL,495,'\0','','\0','\0'),
(176,'00176','testing Product assembly2222',1,1,2,'\0','2026-01-21 15:34:18','2026-01-21 21:04:18','2026-01-21 21:04:18','2026-01-21 15:34:18',NULL,495,'\0','\0','\0','\0'),
(177,NULL,'testing Product assembly2222o',1,1,2,'\0','2026-01-21 15:57:15','2026-01-21 21:27:15','2026-01-21 21:27:15','2026-01-21 15:57:15',NULL,495,'\0','\0','\0','\0'),
(178,NULL,'testing Product assembly22o22o',1,1,2,'\0','2026-01-21 16:10:53','2026-01-21 21:40:53','2026-01-21 21:40:53','2026-01-21 16:10:53',NULL,495,'\0','\0','\0','\0'),
(179,NULL,'testing Product as22o',1,1,2,'\0','2026-01-21 16:12:25','2026-01-21 21:42:25','2026-01-21 21:42:25','2026-01-21 16:12:25',NULL,495,'\0','\0','\0',''),
(180,NULL,'jkjklj',1,2,1,'\0','2026-01-21 16:25:02','2026-01-21 21:55:02','2026-01-21 21:55:02','2026-01-21 16:25:02',NULL,495,'\0','','\0','\0'),
(181,NULL,'jlkjk',1,4,1,'\0','2026-01-21 16:26:16','2026-01-21 21:56:16','2026-01-21 21:56:16','2026-01-21 16:26:16',NULL,495,'\0','','\0','\0'),
(183,NULL,'testing my prod1',1,3,1,'\0','2026-01-21 16:31:08','2026-01-21 22:01:08','2026-01-21 22:01:08','2026-01-21 16:31:08',NULL,495,'\0','','\0','\0'),
(184,NULL,'tesing my produc12',1,3,1,'\0','2026-01-21 16:31:35','2026-01-21 22:01:35','2026-01-21 22:01:35','2026-01-21 16:31:35',NULL,495,'\0','','\0','\0'),
(185,NULL,'jlkjllll',1,3,1,'\0','2026-01-21 16:32:36','2026-01-21 22:02:36','2026-01-21 22:02:36','2026-01-21 16:32:36',NULL,495,'\0','','\0','\0'),
(186,NULL,'jkiiilj',1,2,1,'\0','2026-01-21 16:33:46','2026-01-21 22:03:46','2026-01-21 22:03:46','2026-01-21 16:33:46',NULL,495,'\0','','\0','\0'),
(189,NULL,'ljk',1,3,1,'\0','2026-01-21 16:40:45','2026-01-21 22:10:45','2026-01-21 22:10:45','2026-01-21 16:40:45',NULL,495,'\0','','\0','\0'),
(190,NULL,'testing prod n1',1,2,2,'\0','2026-01-21 16:45:20','2026-01-21 22:15:20','2026-01-21 22:15:20','2026-01-21 16:45:20',NULL,495,'\0','','\0','\0'),
(191,NULL,'prod test n22',1,2,2,'\0','2026-01-21 16:45:47','2026-01-21 22:15:47','2026-01-21 22:15:47','2026-01-21 16:45:47',NULL,495,'\0','','\0','\0'),
(192,NULL,'tttt',1,3,2,'\0','2026-01-21 16:53:33','2026-01-21 22:23:33','2026-01-21 22:23:33','2026-01-21 16:53:33',NULL,495,'\0','','\0','\0'),
(193,NULL,'Cleaning Charges',1,1,2,'\0','2026-05-08 09:55:41','2026-05-08 15:25:41','2026-05-08 15:25:41','2026-05-08 09:55:41',NULL,1,'\0','\0','\0','\0'),
(194,NULL,'Empty boxes',1,1,2,'\0','2026-05-08 10:06:28','2026-05-08 15:36:28','2026-05-08 15:38:37','2026-05-08 10:08:37',NULL,1,'\0','','\0','\0');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_category` (
  `ProductId` int(11) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `orderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProductId`,`CategoryId`),
  KEY `FK_ProductCategory_Category` (`CategoryId`),
  CONSTRAINT `FK_ProductCategory_Category` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`CategoryId`),
  CONSTRAINT `FK_ProductCategory_Product` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES
(34,41,'2025-09-08 13:53:12','2025-09-08 19:23:12',NULL),
(35,41,'2025-09-08 13:52:22','2025-09-08 19:22:22',NULL),
(52,32,'2025-07-23 11:42:10','2025-07-23 17:12:10',1),
(53,32,'2025-07-23 11:46:17','2025-07-23 17:16:17',1),
(54,32,'2025-07-23 11:46:51','2025-07-23 17:16:51',1),
(55,32,'2025-07-23 11:47:23','2025-07-23 17:17:23',1),
(56,32,'2025-07-23 11:47:58','2025-07-23 17:17:58',1),
(57,32,'2025-07-23 11:48:27','2025-07-23 17:18:27',1),
(58,32,'2025-07-23 11:48:55','2025-07-23 17:18:55',1),
(59,32,'2025-07-23 11:49:28','2025-07-23 17:19:28',1),
(60,32,'2025-07-23 11:50:03','2025-07-23 17:20:03',1),
(61,33,'2025-07-28 20:54:06','2025-07-29 02:24:06',1),
(62,33,'2025-07-28 20:55:38','2025-07-29 02:25:38',1),
(63,33,'2025-07-28 20:56:55','2025-07-29 02:26:55',1),
(64,33,'2025-07-28 20:58:14','2025-07-29 02:28:14',1),
(65,33,'2025-07-28 21:03:20','2025-07-29 02:33:20',1),
(66,33,'2025-07-28 21:05:08','2025-07-29 02:35:08',1),
(67,33,'2025-07-28 21:08:20','2025-07-29 02:38:20',1),
(68,33,'2025-07-28 21:10:17','2025-07-29 02:40:17',1),
(69,33,'2025-07-28 21:12:36','2025-07-29 02:42:36',1),
(70,33,'2025-07-28 21:15:20','2025-07-29 02:45:20',1),
(71,33,'2025-07-28 21:16:09','2025-07-29 02:46:09',1),
(72,33,'2025-07-28 21:16:54','2025-07-29 02:46:54',1),
(74,32,'2025-07-30 09:24:27','2025-07-30 14:54:27',1),
(76,32,'2025-07-30 09:25:41','2025-07-30 14:55:41',1),
(78,32,'2025-07-30 09:28:39','2025-07-30 14:58:39',1),
(96,32,'2025-08-04 15:22:13','2025-08-04 20:52:13',1),
(99,33,'2025-08-25 09:45:42','2025-08-25 15:15:42',1),
(104,42,'2025-09-08 14:28:52','2025-09-08 19:58:52',NULL),
(105,33,'2025-08-25 17:40:03','2025-08-25 23:10:03',1),
(106,34,'2025-09-08 12:19:47','2025-09-08 17:49:47',NULL),
(107,43,'2025-09-08 14:35:07','2025-09-08 20:05:07',NULL),
(108,38,'2025-08-29 15:13:33','2025-08-29 20:43:33',1),
(109,39,'2025-08-29 15:19:00','2025-08-29 20:49:00',1),
(110,40,'2025-09-08 12:17:00','2025-09-08 17:47:00',NULL),
(111,40,'2025-09-08 12:16:47','2025-09-08 17:46:47',NULL),
(114,40,'2025-09-08 12:16:30','2025-09-08 17:46:30',NULL),
(131,32,'2025-09-04 07:59:05','2025-09-04 13:29:05',1),
(132,32,'2025-09-04 08:00:47','2025-09-04 13:30:47',1),
(133,32,'2025-09-04 08:01:29','2025-09-04 13:31:29',1),
(134,37,'2025-09-04 08:03:11','2025-09-04 13:33:11',1),
(136,29,'2025-09-08 07:00:59','2025-09-08 12:30:59',1),
(137,29,'2025-09-08 07:05:40','2025-09-08 12:35:40',1),
(138,29,'2025-09-08 07:09:21','2025-09-08 12:39:21',1),
(139,29,'2025-09-08 07:12:50','2025-09-08 12:42:50',1),
(140,29,'2025-09-08 07:15:46','2025-09-08 12:45:46',1),
(141,29,'2025-09-08 07:18:36','2025-09-08 12:48:36',1),
(142,29,'2025-09-08 07:21:30','2025-09-08 12:51:30',1),
(144,29,'2025-09-08 11:03:26','2025-09-08 16:33:26',1),
(145,29,'2025-09-08 11:22:04','2025-09-08 16:52:04',1),
(146,29,'2025-09-08 11:33:48','2025-09-08 17:03:48',1),
(147,29,'2025-09-08 11:46:06','2025-09-08 17:16:06',1),
(148,32,'2025-09-08 12:12:24','2025-09-08 17:42:24',NULL),
(149,44,'2025-09-09 09:51:00','2025-09-09 15:21:00',NULL),
(150,34,'2025-09-08 15:34:52','2025-09-08 21:04:52',NULL),
(151,41,'2025-09-09 09:47:45','2025-09-09 15:17:45',NULL),
(152,41,'2025-09-09 09:47:21','2025-09-09 15:17:21',NULL),
(153,41,'2025-09-09 09:44:15','2025-09-09 15:14:15',NULL),
(155,41,'2025-09-09 09:46:01','2025-09-09 15:16:01',NULL),
(156,45,'2025-10-04 07:42:01','2025-10-04 13:12:01',NULL),
(157,40,'2025-09-09 10:35:00','2025-09-09 16:05:00',1),
(158,40,'2025-09-09 10:39:36','2025-09-09 16:09:36',1),
(160,41,'2025-09-09 11:39:56','2025-09-09 17:09:56',1),
(162,41,'2025-09-09 11:42:35','2025-09-09 17:12:35',1),
(163,40,'2025-09-22 18:53:32','2025-09-23 00:23:32',1),
(164,29,'2025-10-21 11:56:48','2025-10-21 17:26:48',1),
(165,41,'2025-10-21 13:16:49','2025-10-21 18:46:49',1),
(166,34,'2025-11-26 17:50:53','2025-11-26 23:20:53',1),
(167,40,'2025-11-27 05:15:24','2025-11-27 10:45:24',1),
(168,40,'2025-12-29 04:45:11','2025-12-29 10:15:11',1),
(172,33,'2026-01-21 09:16:52','2026-01-21 14:46:52',1),
(173,33,'2026-01-21 09:18:04','2026-01-21 14:48:04',1),
(174,33,'2026-01-21 09:20:22','2026-01-21 14:50:22',1),
(175,33,'2026-01-21 09:21:33','2026-01-21 14:51:33',1),
(176,40,'2026-01-21 15:34:18','2026-01-21 21:04:18',1),
(177,40,'2026-01-21 15:57:15','2026-01-21 21:27:15',1),
(178,40,'2026-01-21 16:10:53','2026-01-21 21:40:53',1),
(179,40,'2026-01-21 16:12:25','2026-01-21 21:42:25',1),
(180,33,'2026-01-21 16:25:02','2026-01-21 21:55:02',1),
(181,33,'2026-01-21 16:26:16','2026-01-21 21:56:16',1),
(183,33,'2026-01-21 16:31:08','2026-01-21 22:01:08',1),
(184,33,'2026-01-21 16:31:35','2026-01-21 22:01:35',1),
(185,33,'2026-01-21 16:32:36','2026-01-21 22:02:36',1),
(186,33,'2026-01-21 16:33:46','2026-01-21 22:03:46',1),
(189,43,'2026-01-21 16:40:45','2026-01-21 22:10:45',1),
(190,34,'2026-01-21 16:45:20','2026-01-21 22:15:20',1),
(191,34,'2026-01-21 16:45:47','2026-01-21 22:15:47',1),
(192,38,'2026-01-21 16:53:33','2026-01-21 22:23:33',1),
(193,40,'2026-05-08 09:55:41','2026-05-08 15:25:41',1),
(194,40,'2026-05-08 10:06:28','2026-05-08 15:36:28',1);
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_department`
--

DROP TABLE IF EXISTS `product_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_department` (
  `productId` int(11) DEFAULT NULL,
  `departmentId` int(11) DEFAULT NULL,
  `storeId` int(11) DEFAULT NULL,
  UNIQUE KEY `unique_product_department` (`productId`,`departmentId`,`storeId`),
  KEY `FK_product_department_department` (`departmentId`),
  KEY `FK_product_department_store` (`storeId`),
  CONSTRAINT `FK_product_department_department` FOREIGN KEY (`departmentId`) REFERENCES `department` (`DepartmentId`),
  CONSTRAINT `FK_product_department_product` FOREIGN KEY (`productId`) REFERENCES `product` (`ProductId`),
  CONSTRAINT `FK_product_department_store` FOREIGN KEY (`storeId`) REFERENCES `store` (`storeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_department`
--

LOCK TABLES `product_department` WRITE;
/*!40000 ALTER TABLE `product_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_type` (
  `productTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `productTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`productTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES
(1,'Single'),
(2,'Variation'),
(3,'Combo');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variation_type`
--

DROP TABLE IF EXISTS `product_variation_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_variation_type` (
  `variationTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `variationTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`variationTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variation_type`
--

LOCK TABLES `product_variation_type` WRITE;
/*!40000 ALTER TABLE `product_variation_type` DISABLE KEYS */;
INSERT INTO `product_variation_type` VALUES
(1,'Size'),
(2,'Color'),
(3,'Shape'),
(4,'Thickness '),
(5,'Print Type'),
(6,'Design Source'),
(7,'Amount (pcs)'),
(8,'Finish Option'),
(9,'Media'),
(10,'Issue');
/*!40000 ALTER TABLE `product_variation_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receiver_bank_account`
--

DROP TABLE IF EXISTS `receiver_bank_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receiver_bank_account` (
  `receiverBankAccountId` int(11) NOT NULL,
  `bankId` int(11) DEFAULT NULL,
  `accountNo` varchar(50) DEFAULT NULL,
  `accountName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receiver_bank_account`
--

LOCK TABLES `receiver_bank_account` WRITE;
/*!40000 ALTER TABLE `receiver_bank_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `receiver_bank_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sender_bank_account`
--

DROP TABLE IF EXISTS `sender_bank_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sender_bank_account` (
  `senderBankAccountId` int(11) NOT NULL,
  `bankId` int(11) DEFAULT NULL,
  `accountNo` varchar(50) DEFAULT NULL,
  `accountName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sender_bank_account`
--

LOCK TABLES `sender_bank_account` WRITE;
/*!40000 ALTER TABLE `sender_bank_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `sender_bank_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serialized_item`
--

DROP TABLE IF EXISTS `serialized_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serialized_item` (
  `serializedItemId` int(11) NOT NULL AUTO_INCREMENT,
  `inventoryId` int(11) DEFAULT NULL,
  `batchNumber` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prodDate` date DEFAULT NULL,
  `expDate` date DEFAULT NULL,
  `StockQty` decimal(10,2) NOT NULL,
  `isAvailable` bit(1) DEFAULT b'1',
  `supplierId` int(11) DEFAULT NULL,
  `batchQueueNumber` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `serialNumber` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`serializedItemId`),
  UNIQUE KEY `unique_serial_number` (`serialNumber`),
  KEY `FK_serializedItem_contact` (`supplierId`),
  KEY `FK_serializedItem_inventory` (`inventoryId`),
  CONSTRAINT `FK_serializedItem_contact` FOREIGN KEY (`supplierId`) REFERENCES `contact` (`contactId`),
  CONSTRAINT `FK_serializedItem_inventory` FOREIGN KEY (`inventoryId`) REFERENCES `inventory` (`inventoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serialized_item`
--

LOCK TABLES `serialized_item` WRITE;
/*!40000 ALTER TABLE `serialized_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `serialized_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_details_summary_temp`
--

DROP TABLE IF EXISTS `session_details_summary_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session_details_summary_temp` (
  `noOfTransactions` int(11) DEFAULT NULL,
  `noOfVoidedTransactions` int(11) DEFAULT NULL,
  `voidedTransactionsAmount` decimal(10,2) DEFAULT NULL,
  `totalCostAmount` decimal(10,2) DEFAULT NULL,
  `noOfCustomers` int(11) DEFAULT NULL,
  `noOfProductsSold` int(11) DEFAULT NULL,
  `noOfProductsReturned` int(11) DEFAULT NULL,
  `noOfServices` int(11) DEFAULT NULL,
  `noOfServicesReturned` int(11) DEFAULT NULL,
  `productSales` decimal(10,2) DEFAULT NULL,
  `nonProductSales` decimal(10,2) DEFAULT NULL,
  `totalSales` decimal(10,2) DEFAULT NULL,
  `totalDiscounts` decimal(10,2) DEFAULT NULL,
  `totalReturns` decimal(10,2) DEFAULT NULL,
  `totalRefunds` decimal(10,2) DEFAULT NULL,
  `totalTax` decimal(10,2) DEFAULT NULL,
  `netSales` decimal(10,2) DEFAULT NULL,
  `netCashSales` decimal(10,2) DEFAULT NULL,
  `netCardSales` decimal(10,2) DEFAULT NULL,
  `averageTransactionValueNet` decimal(10,2) DEFAULT NULL,
  `averageTransactionValueGross` decimal(10,2) DEFAULT NULL,
  `openingCashAmount` decimal(10,2) DEFAULT NULL,
  `cashAdditions` decimal(10,2) DEFAULT NULL,
  `cashRemovals` decimal(10,2) DEFAULT NULL,
  `expectedCash` decimal(10,2) DEFAULT NULL,
  `noOfUnVoidedTransactions` int(11) DEFAULT NULL,
  `storeId` int(11) DEFAULT NULL,
  `sessionId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_details_summary_temp`
--

LOCK TABLES `session_details_summary_temp` WRITE;
/*!40000 ALTER TABLE `session_details_summary_temp` DISABLE KEYS */;
INSERT INTO `session_details_summary_temp` VALUES
(7,1,NULL,NULL,0,11,0,10,10,12375.00,0.00,12375.00,0.00,0.00,10.00,0.00,12375.00,12275.00,100.00,2062.50,2062.50,0.00,0.00,0.00,12275.00,6,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(13,3,NULL,NULL,0,21,0,10,10,10721.00,0.00,10721.00,0.00,0.00,10.00,0.00,10721.00,10721.00,0.00,1072.10,1072.10,0.00,0.00,0.00,10721.00,10,NULL,10),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,7),
(9,2,NULL,NULL,0,31,0,10,10,18090.00,0.00,18090.00,0.00,0.00,10.00,0.00,18090.00,18090.00,0.00,2584.29,2584.29,100.00,0.00,0.00,18190.00,7,NULL,4),
(110,2,NULL,NULL,0,265,0,10,10,151130.00,0.00,151130.00,0.00,0.00,10.00,0.00,151130.00,151130.00,0.00,1399.35,1399.35,5700.00,0.00,0.00,156830.00,108,NULL,2),
(5,0,NULL,NULL,0,28,0,10,10,5100.00,0.00,5100.00,0.00,0.00,10.00,0.00,5100.00,5100.00,0.00,1020.00,1020.00,1000.00,0.00,0.00,6100.00,5,NULL,13),
(0,1,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,1000.00,0.00,0.00,1000.00,-1,NULL,8),
(38,1,NULL,NULL,0,64,0,10,10,69245.00,0.00,69245.00,0.00,0.00,10.00,0.00,69245.00,69245.00,0.00,1871.49,1871.49,200.00,0.00,0.00,69445.00,37,NULL,6),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(14,2,NULL,NULL,0,39,0,10,10,16500.00,0.00,16500.00,0.00,0.00,10.00,0.00,16500.00,16500.00,0.00,1375.00,1375.00,1000.00,0.00,0.00,17500.00,12,NULL,12),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,1000.00,0.00,0.00,1000.00,0,NULL,9),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(2,0,NULL,NULL,0,2,0,10,10,150.00,0.00,150.00,0.00,0.00,10.00,0.00,150.00,150.00,0.00,75.00,75.00,1520.00,0.00,0.00,1670.00,2,NULL,15),
(0,0,NULL,NULL,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,NULL),
(0,0,0.00,0.00,0,0,0,10,10,0.00,0.00,0.00,0.00,0.00,10.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0,NULL,14),
(6,0,0.00,0.00,0,22,0,10,10,12301.00,370.00,12671.00,0.00,0.00,10.00,0.00,12671.00,12671.00,0.00,2111.83,2050.17,2000.00,0.00,0.00,14671.00,6,NULL,1);
/*!40000 ALTER TABLE `session_details_summary_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_end_details_notinuse`
--

DROP TABLE IF EXISTS `session_end_details_notinuse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session_end_details_notinuse` (
  `sessionId` int(11) NOT NULL,
  `noOfTransactions` int(11) DEFAULT NULL,
  `noOfVoidedTransactions` int(11) DEFAULT NULL,
  `noOfCustomers` int(11) DEFAULT NULL,
  `noOfProductsSold` int(11) DEFAULT NULL,
  `noOfProductsReturned` int(11) DEFAULT NULL,
  `noOfServices` int(11) DEFAULT NULL,
  `noOfServicesReturned` int(11) DEFAULT NULL,
  `productSales` decimal(10,2) DEFAULT NULL,
  `serviceFees` decimal(10,2) DEFAULT NULL,
  `totalSales` decimal(10,2) DEFAULT NULL,
  `totalDiscounts` decimal(10,2) DEFAULT NULL,
  `totalReturns` decimal(10,2) DEFAULT NULL,
  `totalRefunds` decimal(10,2) DEFAULT NULL,
  `totalTax` decimal(10,2) DEFAULT NULL,
  `netSales` decimal(10,2) DEFAULT NULL,
  `netCashSales` decimal(10,2) DEFAULT NULL,
  `netCardSales` decimal(10,2) DEFAULT NULL,
  `averageTransactionValueNet` decimal(10,2) DEFAULT NULL,
  `averageTransactionValueGross` decimal(10,2) DEFAULT NULL,
  `openingcashAmount` decimal(10,2) DEFAULT NULL,
  `cashAdditions` decimal(10,2) DEFAULT NULL,
  `cashRemovals` decimal(10,2) DEFAULT NULL,
  `expectedCash` decimal(10,2) DEFAULT NULL,
  `userLogId` int(11) NOT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`sessionId`),
  UNIQUE KEY `SessionId_UNIQUE` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_end_details_notinuse`
--

LOCK TABLES `session_end_details_notinuse` WRITE;
/*!40000 ALTER TABLE `session_end_details_notinuse` DISABLE KEYS */;
INSERT INTO `session_end_details_notinuse` VALUES
(1,79,1,4,142,NULL,0,0,219550.00,0.00,219550.00,700.00,NULL,NULL,16116.00,234966.00,553200.00,2000.00,3012.38,2814.74,10000.00,NULL,NULL,NULL,1,'2025-01-26 13:05:00','2025-01-26 18:35:00');
/*!40000 ALTER TABLE `session_end_details_notinuse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_period`
--

DROP TABLE IF EXISTS `session_period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session_period` (
  `sessionId` int(11) NOT NULL AUTO_INCREMENT,
  `sessionName` varchar(50) NOT NULL,
  `openingCash` decimal(10,4) DEFAULT NULL,
  `sessionStartDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `isSessionEnded` bit(1) NOT NULL DEFAULT b'0',
  `userLogId` int(11) NOT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `DC_systemInfoId` int(11) NOT NULL,
  `terminalId` int(11) NOT NULL,
  `CashAdditions` decimal(10,2) DEFAULT NULL,
  `CashRemovals` decimal(10,2) DEFAULT NULL,
  `noOfTransactions` int(11) DEFAULT NULL,
  `noOfVoidedTransactions` int(11) DEFAULT NULL,
  `noOfCustomers` int(11) DEFAULT NULL,
  `noOfProductsSold` int(11) DEFAULT NULL,
  `noOfProductsReturned` int(11) DEFAULT NULL,
  `noOfServices` int(11) DEFAULT NULL,
  `noOfServicesReturned` int(11) DEFAULT NULL,
  `productSales` decimal(10,2) DEFAULT NULL,
  `serviceFees` decimal(10,2) DEFAULT NULL,
  `totalSales` decimal(10,2) DEFAULT NULL,
  `totalDiscounts` decimal(10,2) DEFAULT NULL,
  `totalReturns` decimal(10,2) DEFAULT NULL,
  `totalRefunds` decimal(10,2) DEFAULT NULL,
  `totalTax` decimal(10,2) DEFAULT NULL,
  `netSales` decimal(10,2) DEFAULT NULL,
  `netCashSales` decimal(10,2) DEFAULT NULL,
  `netCardSales` decimal(10,2) DEFAULT NULL,
  `averageTransactionValueNet` decimal(10,2) DEFAULT NULL,
  `averageTransactionValueGross` decimal(10,2) DEFAULT NULL,
  `openingcashAmount` decimal(10,2) DEFAULT NULL,
  `expectedCash` decimal(10,2) DEFAULT NULL,
  `sessionEndDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `sessionEndDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`sessionId`),
  UNIQUE KEY `SessionId_UNIQUE` (`sessionId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_period`
--

LOCK TABLES `session_period` WRITE;
/*!40000 ALTER TABLE `session_period` DISABLE KEYS */;
INSERT INTO `session_period` VALUES
(1,'2026 May 08',2000.0000,'2026-05-08 09:52:45','\0',1,'2026-05-08 09:52:45','2026-05-08 15:22:45',0,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-05-08 09:52:45','2026-05-08 15:22:45');
/*!40000 ALTER TABLE `session_period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shapshot_productvariationdetailid`
--

DROP TABLE IF EXISTS `shapshot_productvariationdetailid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shapshot_productvariationdetailid` (
  `snshot_allProductId` int(11) DEFAULT NULL,
  `VariationType` varchar(50) DEFAULT NULL,
  `VariationValue` varchar(50) DEFAULT NULL,
  KEY `FK_shapshot_productVariationDetailId_snapshot_allProduct` (`snshot_allProductId`),
  CONSTRAINT `FK_shapshot_productVariationDetailId_snapshot_allProduct` FOREIGN KEY (`snshot_allProductId`) REFERENCES `snapshot_all_product` (`snshot_allProductId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shapshot_productvariationdetailid`
--

LOCK TABLES `shapshot_productvariationdetailid` WRITE;
/*!40000 ALTER TABLE `shapshot_productvariationdetailid` DISABLE KEYS */;
/*!40000 ALTER TABLE `shapshot_productvariationdetailid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `single_product`
--

DROP TABLE IF EXISTS `single_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `single_product` (
  `productId` int(11) NOT NULL,
  `SKU` varchar(50) DEFAULT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  `unitPrice` decimal(10,2) DEFAULT NULL,
  `unitCost` decimal(10,2) DEFAULT NULL,
  `taxPerc` decimal(10,2) DEFAULT 0.00,
  PRIMARY KEY (`productId`),
  UNIQUE KEY `uc_productId` (`productId`),
  UNIQUE KEY `unique_sku` (`SKU`),
  UNIQUE KEY `unique_barcode` (`barcode`),
  UNIQUE KEY `unique_sku_barcode_single_product` (`SKU`,`barcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `single_product`
--

LOCK TABLES `single_product` WRITE;
/*!40000 ALTER TABLE `single_product` DISABLE KEYS */;
INSERT INTO `single_product` VALUES
(34,'ONLIN31',NULL,'2025-07-13 18:16:56','2025-07-13 23:46:56',NULL,NULL,500.00,0.00,0.00),
(35,'ONLIN22',NULL,'2025-07-13 18:17:34','2025-07-13 23:47:34',NULL,NULL,400.00,0.00,0.00),
(52,'PHOTO4x6',NULL,'2025-07-23 11:42:10','2025-07-23 17:12:10',NULL,NULL,1.00,0.00,0.00),
(53,'PHOTO5x7',NULL,'2025-07-23 11:46:17','2025-07-23 17:16:17',NULL,NULL,1.00,1.00,0.00),
(54,'PHOTO6x8',NULL,'2025-07-23 11:46:51','2025-07-23 17:16:51',NULL,NULL,1.00,0.00,0.00),
(55,'PHOTO8x10',NULL,'2025-07-23 11:47:23','2025-07-23 17:17:23',NULL,NULL,1.00,0.00,0.00),
(56,'PHOTO8x12',NULL,'2025-07-23 11:47:58','2025-07-23 17:17:58',NULL,NULL,1.00,0.00,0.00),
(57,'PHOTO10x12',NULL,'2025-07-23 11:48:27','2025-07-23 17:18:27',NULL,NULL,1.00,0.00,0.00),
(58,'PHOTO10x15',NULL,'2025-07-23 11:48:55','2025-07-23 17:18:55',NULL,NULL,1.00,0.00,0.00),
(59,'PHOTO12x15',NULL,'2025-07-23 11:49:28','2025-07-23 17:19:28',NULL,NULL,1.00,0.00,0.00),
(60,'PHOTO12x18',NULL,'2025-07-23 11:50:03','2025-07-23 17:20:03',NULL,NULL,1.00,0.00,0.00),
(74,'5RPAPERPH',NULL,'2025-07-30 09:24:27','2025-07-30 14:54:27',NULL,NULL,1.00,0.00,0.00),
(76,'6RPAPERPH',NULL,'2025-07-30 09:25:41','2025-07-30 14:55:41',NULL,NULL,1.00,0.00,0.00),
(78,'8RPAPERPH',NULL,'2025-07-30 09:28:39','2025-07-30 14:58:39',NULL,NULL,1.00,0.00,0.00),
(96,'PHPAPER4R',NULL,'2025-08-04 15:22:13','2025-08-04 20:52:13',NULL,NULL,1.00,1.00,0.00),
(110,'WHITEMUG',NULL,'2025-08-29 15:19:59','2025-08-29 20:49:59',NULL,NULL,800.00,0.00,0.00),
(111,'MAGIC77',NULL,'2025-08-29 15:20:27','2025-08-29 20:50:27',NULL,NULL,1000.00,0.00,0.00),
(114,'CLOCK26',NULL,'2025-08-29 15:22:51','2025-08-29 20:52:51',NULL,NULL,3500.00,0.00,0.00),
(131,'PHOTO82',NULL,'2025-09-04 07:59:05','2025-09-04 13:29:05',NULL,NULL,1.00,0.00,0.00),
(132,'PHTOPAPER55',NULL,'2025-09-04 08:00:47','2025-09-04 13:30:47',NULL,NULL,1.00,0.00,0.00),
(133,'PHOTOPAPER20x30',NULL,'2025-09-04 08:01:29','2025-09-04 13:31:29',NULL,NULL,1.00,0.00,0.00),
(148,'PAPERA4',NULL,'2025-09-08 11:51:50','2025-09-08 17:21:50',NULL,NULL,5.00,0.00,0.00);
/*!40000 ALTER TABLE `single_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snapshot_all_product`
--

DROP TABLE IF EXISTS `snapshot_all_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snapshot_all_product` (
  `snshot_allProductId` int(11) NOT NULL AUTO_INCREMENT,
  `allProductId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `productTypeId` int(11) DEFAULT NULL,
  `ProductNo` varchar(50) DEFAULT NULL,
  `ProductName` varchar(50) DEFAULT NULL,
  `BrandName` varchar(50) DEFAULT NULL,
  `MeasurementUnitName` varchar(50) DEFAULT NULL,
  `SKU` varchar(50) DEFAULT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  `unitPrice` decimal(10,2) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `productDescription` varchar(200) DEFAULT NULL,
  `isProductItem` bit(1) DEFAULT NULL,
  `isExpiringProduct` bit(1) DEFAULT b'0',
  `isAssemblyProduct` bit(1) DEFAULT b'0',
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  `snshot_CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `snshot_CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`snshot_allProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snapshot_all_product`
--

LOCK TABLES `snapshot_all_product` WRITE;
/*!40000 ALTER TABLE `snapshot_all_product` DISABLE KEYS */;
INSERT INTO `snapshot_all_product` VALUES
(1,311,165,2,'00165','4R Print Studio','None','pcs','4RPRINT',NULL,500.00,NULL,'4R Print Studio - Normal','','\0','\0','2026-05-08 03:29:23','2026-05-07 21:59:23','2026-05-08 09:53:16','2026-05-08 15:23:16'),
(2,310,165,2,'00165','4R Print Studio','None','pcs','4RPRINTCOPY','2545',400.00,NULL,'4R Print Studio - Copy','','\0','\0','2026-05-08 03:29:23','2026-05-07 21:59:23','2026-05-08 09:53:17','2026-05-08 15:23:17'),
(3,260,149,2,'00149','Printout A4','None','pcs','PRNTA4COL',NULL,60.00,NULL,'Printout A4 - Color','\0','\0','\0','2026-05-08 13:50:35','2026-05-08 08:20:35','2026-05-08 09:53:17','2026-05-08 15:23:17'),
(4,306,162,2,'00162','Passport','None','pcs','PASSPORTEX',NULL,350.00,NULL,'Passport - Extra','','\0','\0','2025-09-09 17:15:04','2025-09-09 11:45:04','2026-05-08 09:56:04','2026-05-08 15:26:04'),
(5,254,146,2,'00146','Photo Print 8R','None','pcs','PRNT8RST',NULL,600.00,NULL,'Photo Print 8R - Normal','','\0','\0','2025-10-21 17:37:18','2025-10-21 12:07:18','2026-05-08 09:56:04','2026-05-08 15:26:04'),
(6,317,168,2,'00168','Orage Juice','None','pcs','ORANEJSE',NULL,500.00,NULL,'Orage Juice','','\0','\0','2025-12-29 10:15:10','2025-12-29 04:45:10','2026-05-08 09:56:04','2026-05-08 15:26:04'),
(7,306,162,2,'00162','Passport','None','pcs','PASSPORTEX',NULL,350.00,NULL,'Passport - Extra','','\0','\0','2025-09-09 17:15:04','2025-09-09 11:45:04','2026-05-08 09:56:59','2026-05-08 15:26:59'),
(8,254,146,2,'00146','Photo Print 8R','None','pcs','PRNT8RST',NULL,600.00,NULL,'Photo Print 8R - Normal','','\0','\0','2025-10-21 17:37:18','2025-10-21 12:07:18','2026-05-08 09:56:59','2026-05-08 15:26:59'),
(9,317,168,2,'00168','Orage Juice','None','pcs','ORANEJSE',NULL,500.00,NULL,'Orage Juice','','\0','\0','2025-12-29 10:15:10','2025-12-29 04:45:10','2026-05-08 09:56:59','2026-05-08 15:26:59'),
(10,306,162,2,'00162','Passport','None','pcs','PASSPORTEX',NULL,350.00,NULL,'Passport - Extra','','\0','\0','2025-09-09 17:15:04','2025-09-09 11:45:04','2026-05-08 09:57:35','2026-05-08 15:27:35'),
(11,254,146,2,'00146','Photo Print 8R','None','pcs','PRNT8RST',NULL,600.00,NULL,'Photo Print 8R - Normal','','\0','\0','2025-10-21 17:37:18','2025-10-21 12:07:18','2026-05-08 09:57:35','2026-05-08 15:27:35'),
(12,317,168,2,'00168','Orage Juice','None','pcs','ORANEJSE',NULL,500.00,NULL,'Orage Juice','','\0','\0','2025-12-29 10:15:10','2025-12-29 04:45:10','2026-05-08 09:57:43','2026-05-08 15:27:43'),
(13,317,168,2,'00168','Orage Juice','None','pcs','ORANEJSE',NULL,500.00,NULL,'Orage Juice','','\0','\0','2025-12-29 10:15:10','2025-12-29 04:45:10','2026-05-08 09:59:14','2026-05-08 15:29:14'),
(14,337,194,2,NULL,'Empty boxes','None','None','BOX','BOX',100.00,NULL,'Empty boxes','','\0','\0','2026-05-08 15:38:37','2026-05-08 10:08:37','2026-05-08 11:13:19','2026-05-08 16:43:19'),
(15,336,193,2,NULL,'Cleaning Charges','None','None','CLEAN','CLEAN0',250.00,NULL,'Cleaning Charges','\0','\0','\0','2026-05-08 15:25:41','2026-05-08 09:55:41','2026-05-08 11:22:51','2026-05-08 16:52:51'),
(16,121,105,2,'00105','Photo Frame 4x6','None','pcs','FR4x6BLK',NULL,1.00,NULL,'Photo Frame 4x6 - 1/2\" Black','','\0','\0','2026-04-03 23:38:22','2026-04-03 18:08:22','2026-05-08 11:24:03','2026-05-08 16:54:03'),
(17,301,158,2,'00158','Rock','None','pcs','ROCKA4	',NULL,3500.00,NULL,'Rock - A4','','\0','\0','2025-10-04 10:56:52','2025-10-04 05:26:52','2026-05-08 14:39:05','2026-05-08 20:09:05'),
(18,277,104,2,'00104','Flymount','None','pcs','FLYMOUNT5RFO',NULL,750.00,NULL,'Flymount - 5R Frame Only','','\0','\0','2025-10-07 18:17:11','2025-10-07 12:47:11','2026-05-08 14:39:05','2026-05-08 20:09:05'),
(19,146,108,2,'00108','Frame Stand','None','pcs','FRSTND16x24',NULL,900.00,NULL,'Frame Stand - 16x24','','\0','\0','2025-09-09 22:58:35','2025-09-09 17:28:35','2026-05-08 14:42:35','2026-05-08 20:12:35'),
(20,145,108,2,'00108','Frame Stand','None','pcs','FRSTND16x20',NULL,800.00,NULL,'Frame Stand - 16x20','','\0','\0','2025-09-09 22:58:35','2025-09-09 17:28:35','2026-05-08 14:42:35','2026-05-08 20:12:35'),
(21,277,104,2,'00104','Flymount','None','pcs','FLYMOUNT5RFO',NULL,750.00,NULL,'Flymount - 5R Frame Only','','\0','\0','2025-10-07 18:17:11','2025-10-07 12:47:11','2026-05-08 14:42:36','2026-05-08 20:12:36');
/*!40000 ALTER TABLE `snapshot_all_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snapshot_combo_product_detail`
--

DROP TABLE IF EXISTS `snapshot_combo_product_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snapshot_combo_product_detail` (
  `snshot_comboProductDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `snshot_allProductId` int(11) DEFAULT NULL,
  `qty` decimal(10,2) DEFAULT NULL,
  `snshot_allProductId_mat` int(11) DEFAULT NULL,
  PRIMARY KEY (`snshot_comboProductDetailId`),
  KEY `snapshot_combo_product_detail_snapshot_all_product_FK` (`snshot_allProductId`),
  KEY `snapshot_combo_product_detail_snapshot_all_product_FK_1` (`snshot_allProductId_mat`),
  CONSTRAINT `snapshot_combo_product_detail_snapshot_all_product_FK` FOREIGN KEY (`snshot_allProductId`) REFERENCES `snapshot_all_product` (`snshot_allProductId`),
  CONSTRAINT `snapshot_combo_product_detail_snapshot_all_product_FK_1` FOREIGN KEY (`snshot_allProductId_mat`) REFERENCES `snapshot_all_product` (`snshot_allProductId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snapshot_combo_product_detail`
--

LOCK TABLES `snapshot_combo_product_detail` WRITE;
/*!40000 ALTER TABLE `snapshot_combo_product_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `snapshot_combo_product_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snapshot_contact`
--

DROP TABLE IF EXISTS `snapshot_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snapshot_contact` (
  `snshot_contactId` int(11) NOT NULL AUTO_INCREMENT,
  `contactId` int(11) NOT NULL,
  `contactName` varchar(100) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `whatsapp` varchar(15) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  `contactCode` varchar(10) DEFAULT NULL,
  `UserLogID` int(11) NOT NULL,
  `contactTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`snshot_contactId`),
  KEY `FK_snapshot_contact_contactType` (`contactTypeId`),
  CONSTRAINT `FK_snapshot_contact_contactType` FOREIGN KEY (`contactTypeId`) REFERENCES `contact_type` (`contactTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snapshot_contact`
--

LOCK TABLES `snapshot_contact` WRITE;
/*!40000 ALTER TABLE `snapshot_contact` DISABLE KEYS */;
INSERT INTO `snapshot_contact` VALUES
(6,50,'cusiiil ed','spmkk@ggm55','44445',NULL,'555','rerrrer','2025-01-14 17:01:02','2025-01-14 17:01:02','2025-01-14 17:00:52','2025-01-14 11:30:52','00050',1,NULL),
(7,50,'cusiiil ed','spmkk@ggm55','44445',NULL,'555','rerrrer','2025-01-14 17:01:40','2025-01-14 17:01:40','2025-01-14 17:01:35','2025-01-14 11:31:35','00050',1,NULL),
(8,1,'SUSANTHA Pere','spmkk@ggmkk','07744484876',NULL,'55554','rerrrer','2025-01-14 17:02:45','2025-01-14 17:02:45','2024-12-29 17:09:30','2024-12-29 11:39:30','00055',1,NULL),
(9,1,'SUSANTHA Pere e','spmkk@ggmkk','07744484876',NULL,'55554','rerrrer','2025-01-14 17:05:33','2025-01-14 17:05:33','2025-01-14 17:05:30','2025-01-14 11:35:30','00055',1,NULL),
(10,33,'custnamekk0kk33','spmkk@ggm33','44445',NULL,'555','rerrrer','2025-01-14 17:28:43','2025-01-14 17:28:43','2024-03-01 20:58:22','2024-03-01 15:28:22','00033',1,NULL),
(11,51,'nnnmm o','spmskperera@gmail.com','0771147484',NULL,'00111','4','2025-01-14 18:00:32','2025-01-14 18:00:32','2025-01-14 18:00:08','2025-01-14 12:30:08','00051',1,NULL),
(12,50,'cusiiil ed','spmkk@ggm55','44445',NULL,'555','rerrrer','2025-01-14 18:31:14','2025-01-14 18:31:14','2025-01-14 17:05:08','2025-01-14 11:35:08','00050',1,NULL),
(13,14,'SUSANTHA Pe7778','spmkk@ggmkk','07744484876',NULL,'55554','rerrrer','2025-01-26 15:31:01','2025-01-26 15:31:01','2024-12-17 01:20:33','2024-12-16 19:50:33','00014',1,NULL),
(14,13,'SUSANTHA 7','spmkk@ggmkk','07744484876',NULL,'55554','rerrrer','2025-02-09 20:54:42','2025-02-09 20:54:42','2025-02-08 16:12:32','2025-02-08 10:42:32','00013',1,NULL),
(15,14,'Kalinga Fernando','kalin343ga@gmail.com','07744484876',NULL,'01125544874','rerrrer','2025-02-10 16:16:07','2025-02-10 16:16:07','2025-02-08 16:12:39','2025-02-08 10:42:39','00014',1,NULL),
(16,17,'Asanka Jayawardena','asankajawa@gmail.com','0774448876',NULL,'01125458754','rerrrer','2025-03-09 00:37:46','2025-03-09 00:37:46','2024-12-17 01:24:36','2024-12-16 19:54:36','00013',1,NULL),
(17,2,'Emily Harris','emily.harris@example.co','+947785844',NULL,'0115010445','te','2025-03-11 18:28:30','2025-03-11 18:28:30','2025-03-11 18:17:24','2025-03-11 12:47:24','00002',81,NULL),
(18,1,'ddd','spmskperera@gmail.com','0771147484',NULL,'05454','4','2025-03-11 18:47:04','2025-03-11 18:47:04','2025-03-11 18:45:50','2025-03-11 13:15:50','00001',82,NULL),
(19,1,'Bravo Suppiers','sakdjsk@gmail.com','0212454',NULL,'1231545','54545','2025-05-10 08:50:02','2025-05-10 08:50:02','2025-03-17 19:23:52','2025-03-17 19:23:52','00001',47,NULL);
/*!40000 ALTER TABLE `snapshot_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snapshot_variation_product_detail`
--

DROP TABLE IF EXISTS `snapshot_variation_product_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snapshot_variation_product_detail` (
  `snapshot_variationProductDetail_id` int(11) NOT NULL AUTO_INCREMENT,
  `variationProductId` int(11) DEFAULT NULL,
  `snshot_allProductId` int(11) DEFAULT NULL,
  `variationTypeName` varchar(50) DEFAULT NULL,
  `variationValue` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`snapshot_variationProductDetail_id`),
  KEY `snapshot_variation_product_detail_snapshot_all_product_FK` (`snshot_allProductId`),
  CONSTRAINT `snapshot_variation_product_detail_snapshot_all_product_FK` FOREIGN KEY (`snshot_allProductId`) REFERENCES `snapshot_all_product` (`snshot_allProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snapshot_variation_product_detail`
--

LOCK TABLES `snapshot_variation_product_detail` WRITE;
/*!40000 ALTER TABLE `snapshot_variation_product_detail` DISABLE KEYS */;
INSERT INTO `snapshot_variation_product_detail` VALUES
(1,NULL,1,'Issue','Normal'),
(2,NULL,2,'Issue','Copy'),
(3,NULL,3,'Color','Color'),
(4,NULL,4,'Amount (pcs)','Extra'),
(5,NULL,5,'Print Type','Normal'),
(6,NULL,7,'Amount (pcs)','Extra'),
(7,NULL,8,'Print Type','Normal'),
(8,NULL,10,'Amount (pcs)','Extra'),
(9,NULL,11,'Print Type','Normal'),
(10,NULL,16,'Size','1/2\"'),
(11,NULL,16,'Color','Black'),
(13,NULL,17,'Size','A4'),
(14,NULL,18,'Size','5R'),
(15,NULL,18,'Finish Option','Frame Only'),
(17,NULL,19,'Size','16x24'),
(18,NULL,20,'Size','16x20'),
(19,NULL,21,'Size','5R'),
(20,NULL,21,'Finish Option','Frame Only');
/*!40000 ALTER TABLE `snapshot_variation_product_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_adjustment_reason`
--

DROP TABLE IF EXISTS `stock_adjustment_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_adjustment_reason` (
  `adjustmentReasonId` int(11) NOT NULL AUTO_INCREMENT,
  `adjustmentReasonName` varchar(100) DEFAULT NULL,
  `adjustmentTypeId` int(11) DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  PRIMARY KEY (`adjustmentReasonId`),
  KEY `stock_adjustment_reason_stock_adjustment_type_FK` (`adjustmentTypeId`),
  CONSTRAINT `stock_adjustment_reason_stock_adjustment_type_FK` FOREIGN KEY (`adjustmentTypeId`) REFERENCES `stock_adjustment_type` (`adjustmentTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_adjustment_reason`
--

LOCK TABLES `stock_adjustment_reason` WRITE;
/*!40000 ALTER TABLE `stock_adjustment_reason` DISABLE KEYS */;
INSERT INTO `stock_adjustment_reason` VALUES
(1,'Restock',1,'2025-01-01 10:58:46','2025-01-01 10:58:46'),
(2,'Inventory Count Adjustment',1,'2025-01-01 10:58:46','2025-01-01 10:58:46'),
(3,'Replenishment from Supplier',1,'2025-01-01 10:58:46','2025-01-01 10:58:46'),
(4,'Other (Addition)',1,'2025-01-01 10:58:46','2025-01-01 10:58:46'),
(5,'Damaged Item',2,'2025-01-01 10:58:46','2025-01-01 10:58:46'),
(6,'Lost during Transport',2,'2025-01-01 10:58:46','2025-01-01 10:58:46'),
(7,'Expired Item',2,'2025-01-01 10:58:46','2025-01-01 10:58:46'),
(8,'Other (Deduction)',2,'2025-01-01 10:58:46','2025-01-01 10:58:46');
/*!40000 ALTER TABLE `stock_adjustment_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_adjustment_type`
--

DROP TABLE IF EXISTS `stock_adjustment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_adjustment_type` (
  `adjustmentTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `adjustmentTypeName` varchar(100) DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  PRIMARY KEY (`adjustmentTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_adjustment_type`
--

LOCK TABLES `stock_adjustment_type` WRITE;
/*!40000 ALTER TABLE `stock_adjustment_type` DISABLE KEYS */;
INSERT INTO `stock_adjustment_type` VALUES
(1,'Addition','2025-01-01 11:02:40','2025-01-01 11:02:40'),
(2,'Deduction','2025-01-01 11:02:53','2025-01-01 11:02:53');
/*!40000 ALTER TABLE `stock_adjustment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_batch_order_mapping_toremove`
--

DROP TABLE IF EXISTS `stock_batch_order_mapping_toremove`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_batch_order_mapping_toremove` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stockBatchId` int(11) DEFAULT NULL,
  `orderId` int(11) NOT NULL,
  `qty` decimal(10,2) NOT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `inventoryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stockBatchId` (`stockBatchId`),
  KEY `orderId` (`orderId`),
  KEY `stock_batch_order_mapping_inventory_FK` (`inventoryId`),
  CONSTRAINT `stock_batch_order_mapping_inventory_FK` FOREIGN KEY (`inventoryId`) REFERENCES `inventory` (`inventoryId`),
  CONSTRAINT `stock_batch_order_mapping_toremove_ibfk_2` FOREIGN KEY (`orderId`) REFERENCES `order_header` (`OrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_batch_order_mapping_toremove`
--

LOCK TABLES `stock_batch_order_mapping_toremove` WRITE;
/*!40000 ALTER TABLE `stock_batch_order_mapping_toremove` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_batch_order_mapping_toremove` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_entry_voided`
--

DROP TABLE IF EXISTS `stock_entry_voided`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_entry_voided` (
  `stock_entry_voided_id` int(11) NOT NULL AUTO_INCREMENT,
  `stockEntryId` int(11) DEFAULT NULL,
  `voiding_reason_id` int(11) DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`stock_entry_voided_id`),
  KEY `FK_stock_entry_voided_stockentry` (`stockEntryId`),
  KEY `FK_OrderVoided_orderVoidingReason` (`voiding_reason_id`),
  CONSTRAINT `FK_stock_entry_voided_stockentry` FOREIGN KEY (`stockEntryId`) REFERENCES `stockentry` (`stockEntryId`),
  CONSTRAINT `FK_stockentry_voiding_reason_orderVoidingReason` FOREIGN KEY (`voiding_reason_id`) REFERENCES `stockentry_voiding_reason` (`voiding_reason_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_entry_voided`
--

LOCK TABLES `stock_entry_voided` WRITE;
/*!40000 ALTER TABLE `stock_entry_voided` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_entry_voided` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockentry`
--

DROP TABLE IF EXISTS `stockentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stockentry` (
  `stockEntryId` int(11) NOT NULL AUTO_INCREMENT,
  `supplierId` int(11) DEFAULT NULL,
  `stockReceivedDate` date DEFAULT NULL,
  `stockEntryRefNo` varchar(50) DEFAULT NULL,
  `storeId` int(11) DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  `UserLogId` int(11) NOT NULL,
  `isVoided` bit(1) DEFAULT b'0',
  `supplierBillNo` varchar(50) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stockEntryId`),
  UNIQUE KEY `unique_stockEntryRefNo` (`stockEntryRefNo`),
  KEY `FK_stockEntry_store` (`storeId`),
  KEY `stockentry_contact_FK` (`supplierId`),
  CONSTRAINT `FK_stockEntry_store` FOREIGN KEY (`storeId`) REFERENCES `store` (`storeId`),
  CONSTRAINT `stockentry_contact_FK` FOREIGN KEY (`supplierId`) REFERENCES `contact` (`contactId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockentry`
--

LOCK TABLES `stockentry` WRITE;
/*!40000 ALTER TABLE `stockentry` DISABLE KEYS */;
INSERT INTO `stockentry` VALUES
(13,1,'2026-05-08','00013',19,'2026-05-08 10:48:10','2026-05-08 16:18:10',NULL,NULL,1,'\0','778',5,NULL);
/*!40000 ALTER TABLE `stockentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockentry_voiding_reason`
--

DROP TABLE IF EXISTS `stockentry_voiding_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stockentry_voiding_reason` (
  `voiding_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `ReasonName` varchar(100) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`voiding_reason_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockentry_voiding_reason`
--

LOCK TABLES `stockentry_voiding_reason` WRITE;
/*!40000 ALTER TABLE `stockentry_voiding_reason` DISABLE KEYS */;
INSERT INTO `stockentry_voiding_reason` VALUES
(20,'Entered Incorrectly',NULL),
(21,'Other (Please Specify)',NULL);
/*!40000 ALTER TABLE `stockentry_voiding_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockentrydetails`
--

DROP TABLE IF EXISTS `stockentrydetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stockentrydetails` (
  `stockEntryDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `stockEntryId` int(11) DEFAULT NULL,
  `allProductId` int(11) DEFAULT NULL,
  `qtyAdded` decimal(10,2) DEFAULT NULL,
  `unitCost` decimal(10,2) DEFAULT NULL,
  `batchNo` varchar(50) DEFAULT NULL,
  `unitPrice` decimal(10,2) DEFAULT NULL,
  `productionDate` date DEFAULT NULL,
  `expirationDate` date DEFAULT NULL,
  `taxPerc` decimal(10,2) DEFAULT 0.00,
  PRIMARY KEY (`stockEntryDetailsId`),
  UNIQUE KEY `unique_batchNo` (`batchNo`),
  KEY `FK_stockEntryDetails_stockEntry` (`stockEntryId`),
  KEY `stockentrydetails_all_product_FK` (`allProductId`),
  CONSTRAINT `FK_stockEntryDetails_stockEntry` FOREIGN KEY (`stockEntryId`) REFERENCES `stockentry` (`stockEntryId`),
  CONSTRAINT `stockentrydetails_all_product_FK` FOREIGN KEY (`allProductId`) REFERENCES `all_product` (`allProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockentrydetails`
--

LOCK TABLES `stockentrydetails` WRITE;
/*!40000 ALTER TABLE `stockentrydetails` DISABLE KEYS */;
INSERT INTO `stockentrydetails` VALUES
(13,13,337,45.00,50.00,'00013',NULL,NULL,NULL,0.00);
/*!40000 ALTER TABLE `stockentrydetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store` (
  `storeId` int(11) NOT NULL AUTO_INCREMENT,
  `StoreCode` varchar(50) DEFAULT NULL,
  `StoreName` varchar(50) DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Province` varchar(50) DEFAULT NULL,
  `emailAddress` varchar(50) DEFAULT NULL,
  `tel1` varchar(20) DEFAULT NULL,
  `tel2` varchar(20) DEFAULT NULL,
  `ManagerId` int(11) DEFAULT NULL,
  UNIQUE KEY `branchId_UNIQUE` (`storeId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES
(19,'S0019','Pitakotte','2025-03-13 19:56:58','2025-03-13 19:56:58','2025-03-13 19:56:58','2025-03-13 19:56:58','28/B Thalawathugoda Road, Pitakotte.','Colombo','Western','dayarastudio12@gmail.com','071 410 6305','011 287 7315',NULL),
(20,'S00020','Nugegoda','2026-03-10 13:59:12','2026-03-10 19:29:12',NULL,NULL,'22 Nugegoda, Pitakotte','Colombo','Western','dayarastudio13@gmail.com','071 410 6306','011 287 7316',NULL);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_company`
--

DROP TABLE IF EXISTS `store_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_company` (
  `storeId` int(11) NOT NULL,
  `companyId` int(11) NOT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  PRIMARY KEY (`storeId`,`companyId`),
  KEY `store_company_company_fk` (`companyId`),
  CONSTRAINT `store_company_company_fk` FOREIGN KEY (`companyId`) REFERENCES `company` (`companyId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `store_company_store_fk` FOREIGN KEY (`storeId`) REFERENCES `store` (`storeId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_company`
--

LOCK TABLES `store_company` WRITE;
/*!40000 ALTER TABLE `store_company` DISABLE KEYS */;
INSERT INTO `store_company` VALUES
(19,19,'2025-03-13 19:56:58','2025-03-13 19:56:58',NULL,NULL),
(20,19,'2026-03-10 14:00:35','2026-03-10 19:30:35',NULL,NULL);
/*!40000 ALTER TABLE `store_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_inventory_product`
--

DROP TABLE IF EXISTS `store_inventory_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_inventory_product` (
  `storeInventoryProductId` int(11) NOT NULL AUTO_INCREMENT,
  `StoreId` int(11) DEFAULT NULL,
  `inventoryId` int(11) DEFAULT NULL,
  `singleProductId` int(11) DEFAULT NULL,
  `comboProductId` int(11) DEFAULT NULL,
  `variationProductId` int(11) DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  `allProductId` int(11) DEFAULT NULL,
  PRIMARY KEY (`storeInventoryProductId`),
  KEY `FK_storeInventoryProduct_store` (`StoreId`),
  KEY `FK_storeInventoryProduct_allProductId` (`allProductId`),
  KEY `store_inventory_product_variation_product_FK` (`variationProductId`),
  CONSTRAINT `FK_storeInventoryProduct_allProductId` FOREIGN KEY (`allProductId`) REFERENCES `all_product` (`allProductId`),
  CONSTRAINT `FK_storeInventoryProduct_store` FOREIGN KEY (`StoreId`) REFERENCES `store` (`storeId`),
  CONSTRAINT `store_inventory_product_variation_product_FK` FOREIGN KEY (`variationProductId`) REFERENCES `variation_product` (`variationProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_inventory_product`
--

LOCK TABLES `store_inventory_product` WRITE;
/*!40000 ALTER TABLE `store_inventory_product` DISABLE KEYS */;
INSERT INTO `store_inventory_product` VALUES
(37,19,NULL,34,34,NULL,'2025-07-13 18:16:56','2025-07-13 23:46:56',NULL,NULL,37),
(38,19,NULL,35,35,NULL,'2025-07-13 18:17:34','2025-07-13 23:47:34',NULL,NULL,38),
(55,19,846,52,NULL,NULL,'2025-07-23 11:42:10','2025-07-23 17:12:10',NULL,NULL,55),
(56,19,847,53,NULL,NULL,'2025-07-23 11:46:17','2025-07-23 17:16:17',NULL,NULL,56),
(57,19,848,54,NULL,NULL,'2025-07-23 11:46:51','2025-07-23 17:16:51',NULL,NULL,57),
(58,19,849,55,NULL,NULL,'2025-07-23 11:47:23','2025-07-23 17:17:23',NULL,NULL,58),
(59,19,850,56,NULL,NULL,'2025-07-23 11:47:58','2025-07-23 17:17:58',NULL,NULL,59),
(60,19,851,57,NULL,NULL,'2025-07-23 11:48:27','2025-07-23 17:18:27',NULL,NULL,60),
(61,19,852,58,NULL,NULL,'2025-07-23 11:48:55','2025-07-23 17:18:55',NULL,NULL,61),
(62,19,853,59,NULL,NULL,'2025-07-23 11:49:28','2025-07-23 17:19:28',NULL,NULL,62),
(63,19,854,60,NULL,NULL,'2025-07-23 11:50:03','2025-07-23 17:20:03',NULL,NULL,63),
(64,19,NULL,NULL,NULL,5,'2025-07-28 20:54:06','2025-07-29 02:24:06',NULL,NULL,64),
(65,19,NULL,NULL,NULL,6,'2025-07-28 20:54:06','2025-07-29 02:24:06',NULL,NULL,65),
(66,19,857,NULL,NULL,7,'2025-07-28 20:55:38','2025-07-29 02:25:38',NULL,NULL,66),
(67,19,858,NULL,NULL,8,'2025-07-28 20:55:38','2025-07-29 02:25:38',NULL,NULL,67),
(68,19,859,NULL,NULL,9,'2025-07-28 20:56:55','2025-07-29 02:26:55',NULL,NULL,68),
(69,19,860,NULL,NULL,10,'2025-07-28 20:56:55','2025-07-29 02:26:55',NULL,NULL,69),
(70,19,861,NULL,NULL,11,'2025-07-28 20:58:14','2025-07-29 02:28:14',NULL,NULL,70),
(71,19,862,NULL,NULL,12,'2025-07-28 20:58:14','2025-07-29 02:28:14',NULL,NULL,71),
(72,19,NULL,NULL,NULL,13,'2025-07-28 21:03:20','2025-07-29 02:33:20',NULL,NULL,72),
(73,19,NULL,NULL,NULL,14,'2025-07-28 21:03:20','2025-07-29 02:33:20',NULL,NULL,73),
(74,19,NULL,NULL,NULL,15,'2025-07-28 21:05:08','2025-07-29 02:35:08',NULL,NULL,74),
(75,19,NULL,NULL,NULL,16,'2025-07-28 21:05:08','2025-07-29 02:35:08',NULL,NULL,75),
(76,19,NULL,NULL,NULL,17,'2025-07-28 21:08:20','2025-07-29 02:38:20',NULL,NULL,76),
(77,19,NULL,NULL,NULL,18,'2025-07-28 21:08:20','2025-07-29 02:38:20',NULL,NULL,77),
(78,19,NULL,NULL,NULL,19,'2025-07-28 21:10:17','2025-07-29 02:40:17',NULL,NULL,78),
(79,19,NULL,NULL,NULL,20,'2025-07-28 21:10:17','2025-07-29 02:40:17',NULL,NULL,79),
(80,19,NULL,NULL,NULL,21,'2025-07-28 21:12:36','2025-07-29 02:42:36',NULL,NULL,80),
(81,19,NULL,NULL,NULL,22,'2025-07-28 21:12:36','2025-07-29 02:42:36',NULL,NULL,81),
(82,19,NULL,NULL,NULL,23,'2025-07-28 21:15:20','2025-07-29 02:45:20',NULL,NULL,82),
(83,19,874,NULL,NULL,24,'2025-07-28 21:16:09','2025-07-29 02:46:09',NULL,NULL,83),
(84,19,875,NULL,NULL,25,'2025-07-28 21:16:54','2025-07-29 02:46:54',NULL,NULL,84),
(86,19,876,74,NULL,NULL,'2025-07-30 09:24:27','2025-07-30 14:54:27',NULL,NULL,86),
(88,19,877,76,NULL,NULL,'2025-07-30 09:25:41','2025-07-30 14:55:41',NULL,NULL,88),
(90,19,878,78,NULL,NULL,'2025-07-30 09:28:39','2025-07-30 14:58:39',NULL,NULL,90),
(108,19,879,96,NULL,NULL,'2025-08-04 15:22:13','2025-08-04 20:52:13',NULL,NULL,108),
(112,19,NULL,NULL,NULL,28,'2025-08-25 09:45:42','2025-08-25 15:15:42',NULL,NULL,111),
(113,19,NULL,NULL,NULL,29,'2025-08-25 09:45:42','2025-08-25 15:15:42',NULL,NULL,112),
(121,19,NULL,NULL,NULL,37,'2025-08-25 16:27:06','2025-08-25 21:57:06',NULL,NULL,117),
(122,19,893,NULL,NULL,38,'2025-08-25 17:26:13','2025-08-25 22:56:13',NULL,NULL,118),
(123,19,NULL,NULL,NULL,39,'2025-08-25 17:28:38','2025-08-25 22:58:38',NULL,NULL,119),
(124,19,NULL,NULL,NULL,40,'2025-08-25 17:32:14','2025-08-25 23:02:14',NULL,NULL,120),
(125,19,NULL,NULL,NULL,41,'2025-08-25 17:40:03','2025-08-25 23:10:03',NULL,NULL,121),
(126,19,1083,NULL,NULL,42,'2025-08-28 09:24:55','2025-08-28 14:54:55',NULL,NULL,122),
(127,19,1085,NULL,NULL,43,'2025-08-28 09:24:55','2025-08-28 14:54:55',NULL,NULL,123),
(128,19,NULL,NULL,NULL,44,'2025-08-29 10:27:40','2025-08-29 15:57:40',NULL,NULL,124),
(129,19,NULL,NULL,NULL,45,'2025-08-29 15:00:31','2025-08-29 20:30:31',NULL,NULL,125),
(130,19,NULL,NULL,NULL,46,'2025-08-29 15:00:31','2025-08-29 20:30:31',NULL,NULL,126),
(131,19,NULL,NULL,NULL,47,'2025-08-29 15:00:31','2025-08-29 20:30:31',NULL,NULL,127),
(132,19,NULL,NULL,NULL,48,'2025-08-29 15:00:31','2025-08-29 20:30:31',NULL,NULL,128),
(133,19,NULL,NULL,NULL,49,'2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL,129),
(134,19,NULL,NULL,NULL,50,'2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL,130),
(135,19,NULL,NULL,NULL,51,'2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL,131),
(136,19,NULL,NULL,NULL,52,'2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL,132),
(137,19,NULL,NULL,NULL,53,'2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL,133),
(138,19,NULL,NULL,NULL,54,'2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL,134),
(139,19,NULL,NULL,NULL,55,'2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL,135),
(140,19,NULL,NULL,NULL,56,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,136),
(141,19,NULL,NULL,NULL,57,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,137),
(142,19,NULL,NULL,NULL,58,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,138),
(143,19,NULL,NULL,NULL,59,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,139),
(144,19,NULL,NULL,NULL,60,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,140),
(145,19,NULL,NULL,NULL,61,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,141),
(146,19,NULL,NULL,NULL,62,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,142),
(147,19,NULL,NULL,NULL,63,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,143),
(148,19,NULL,NULL,NULL,64,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,144),
(149,19,NULL,NULL,NULL,65,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,145),
(150,19,NULL,NULL,NULL,66,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,146),
(151,19,NULL,NULL,NULL,67,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,147),
(152,19,NULL,NULL,NULL,68,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,148),
(153,19,NULL,NULL,NULL,69,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,149),
(154,19,NULL,NULL,NULL,70,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,150),
(155,19,NULL,NULL,NULL,71,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,151),
(156,19,NULL,NULL,NULL,72,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,152),
(157,19,NULL,NULL,NULL,73,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,153),
(158,19,NULL,NULL,NULL,74,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,154),
(159,19,NULL,NULL,NULL,75,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,155),
(160,19,NULL,NULL,NULL,76,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,156),
(161,19,NULL,NULL,NULL,77,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,157),
(162,19,NULL,NULL,NULL,78,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,158),
(163,19,NULL,NULL,NULL,79,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,159),
(164,19,939,110,NULL,NULL,'2025-08-29 15:19:59','2025-08-29 20:49:59',NULL,NULL,160),
(165,19,NULL,111,NULL,NULL,'2025-08-29 15:20:27','2025-08-29 20:50:27',NULL,NULL,161),
(168,19,NULL,114,NULL,NULL,'2025-08-29 15:22:51','2025-08-29 20:52:51',NULL,NULL,164),
(190,19,993,131,NULL,NULL,'2025-09-04 07:59:05','2025-09-04 13:29:05',NULL,NULL,190),
(191,19,994,132,NULL,NULL,'2025-09-04 08:00:47','2025-09-04 13:30:47',NULL,NULL,191),
(192,19,995,133,NULL,NULL,'2025-09-04 08:01:29','2025-09-04 13:31:29',NULL,NULL,192),
(193,19,NULL,NULL,NULL,99,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,193),
(194,19,NULL,NULL,NULL,100,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,194),
(195,19,NULL,NULL,NULL,101,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,195),
(196,19,NULL,NULL,NULL,102,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,196),
(197,19,NULL,NULL,NULL,103,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,197),
(198,19,NULL,NULL,NULL,104,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,198),
(199,19,NULL,NULL,NULL,105,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,199),
(200,19,NULL,NULL,NULL,106,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,200),
(201,19,NULL,NULL,NULL,107,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,201),
(202,19,NULL,NULL,NULL,108,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,202),
(203,19,NULL,NULL,NULL,109,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,203),
(204,19,NULL,NULL,NULL,110,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,204),
(205,19,NULL,NULL,NULL,111,'2025-09-05 06:21:39','2025-09-05 11:51:39',NULL,NULL,205),
(224,19,NULL,NULL,NULL,130,'2025-09-08 07:00:59','2025-09-08 12:30:59',NULL,NULL,224),
(225,19,NULL,NULL,NULL,131,'2025-09-08 07:00:59','2025-09-08 12:30:59',NULL,NULL,225),
(226,19,NULL,NULL,NULL,132,'2025-09-08 07:05:40','2025-09-08 12:35:40',NULL,NULL,226),
(227,19,NULL,NULL,NULL,133,'2025-09-08 07:05:40','2025-09-08 12:35:40',NULL,NULL,227),
(228,19,NULL,NULL,NULL,134,'2025-09-08 07:09:21','2025-09-08 12:39:21',NULL,NULL,228),
(229,19,NULL,NULL,NULL,135,'2025-09-08 07:09:21','2025-09-08 12:39:21',NULL,NULL,229),
(230,19,NULL,NULL,NULL,136,'2025-09-08 07:12:50','2025-09-08 12:42:50',NULL,NULL,230),
(231,19,NULL,NULL,NULL,137,'2025-09-08 07:12:50','2025-09-08 12:42:50',NULL,NULL,231),
(232,19,NULL,NULL,NULL,138,'2025-09-08 07:12:50','2025-09-08 12:42:50',NULL,NULL,232),
(233,19,NULL,NULL,NULL,139,'2025-09-08 07:15:46','2025-09-08 12:45:46',NULL,NULL,233),
(235,19,NULL,NULL,NULL,141,'2025-09-08 07:15:46','2025-09-08 12:45:46',NULL,NULL,235),
(236,19,NULL,NULL,NULL,142,'2025-09-08 07:18:36','2025-09-08 12:48:36',NULL,NULL,236),
(238,19,NULL,NULL,NULL,144,'2025-09-08 07:18:36','2025-09-08 12:48:36',NULL,NULL,238),
(239,19,NULL,NULL,NULL,145,'2025-09-08 07:21:30','2025-09-08 12:51:30',NULL,NULL,239),
(241,19,NULL,NULL,NULL,147,'2025-09-08 07:21:30','2025-09-08 12:51:30',NULL,NULL,241),
(246,19,NULL,NULL,NULL,152,'2025-09-08 11:03:26','2025-09-08 16:33:26',NULL,NULL,246),
(248,19,NULL,NULL,NULL,154,'2025-09-08 11:03:26','2025-09-08 16:33:26',NULL,NULL,248),
(249,19,NULL,NULL,NULL,155,'2025-09-08 11:22:04','2025-09-08 16:52:04',NULL,NULL,249),
(250,19,NULL,NULL,NULL,156,'2025-09-08 11:22:04','2025-09-08 16:52:04',NULL,NULL,250),
(252,19,NULL,NULL,NULL,158,'2025-09-08 11:33:48','2025-09-08 17:03:48',NULL,NULL,252),
(254,19,NULL,NULL,NULL,160,'2025-09-08 11:33:48','2025-09-08 17:03:48',NULL,NULL,254),
(255,19,NULL,NULL,NULL,161,'2025-09-08 11:46:06','2025-09-08 17:16:06',NULL,NULL,255),
(257,19,NULL,NULL,NULL,163,'2025-09-08 11:46:06','2025-09-08 17:16:06',NULL,NULL,257),
(258,19,1068,148,NULL,NULL,'2025-09-08 11:51:50','2025-09-08 17:21:50',NULL,NULL,258),
(259,19,NULL,NULL,NULL,164,'2025-09-08 11:52:13','2025-09-08 17:22:13',NULL,NULL,259),
(260,19,NULL,NULL,NULL,165,'2025-09-08 11:52:13','2025-09-08 17:22:13',NULL,NULL,260),
(261,19,NULL,NULL,NULL,166,'2025-09-08 12:23:00','2025-09-08 17:53:00',NULL,NULL,261),
(262,19,998,NULL,NULL,167,'2025-09-09 06:13:57','2025-09-09 11:43:57',NULL,NULL,262),
(263,19,999,NULL,NULL,168,'2025-09-09 06:13:57','2025-09-09 11:43:57',NULL,NULL,263),
(264,19,NULL,NULL,NULL,169,'2025-09-09 06:17:47','2025-09-09 11:47:47',NULL,NULL,264),
(265,19,NULL,NULL,NULL,170,'2025-09-09 06:17:47','2025-09-09 11:47:47',NULL,NULL,265),
(266,19,NULL,NULL,NULL,171,'2025-09-09 06:27:17','2025-09-09 11:57:17',NULL,NULL,266),
(267,19,NULL,NULL,NULL,172,'2025-09-09 06:27:17','2025-09-09 11:57:17',NULL,NULL,267),
(269,19,NULL,NULL,NULL,174,'2025-09-09 06:51:45','2025-09-09 12:21:45',NULL,NULL,269),
(270,19,NULL,NULL,NULL,175,'2025-09-09 06:51:45','2025-09-09 12:21:45',NULL,NULL,270),
(271,19,NULL,NULL,NULL,176,'2025-09-09 08:49:15','2025-09-09 14:19:15',NULL,NULL,271),
(272,19,NULL,NULL,NULL,177,'2025-09-09 08:49:15','2025-09-09 14:19:15',NULL,NULL,272),
(273,19,NULL,NULL,NULL,178,'2025-09-09 10:01:08','2025-09-09 15:31:08',NULL,NULL,273),
(274,19,NULL,NULL,NULL,179,'2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL,274),
(275,19,NULL,NULL,NULL,180,'2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL,275),
(276,19,NULL,NULL,NULL,181,'2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL,276),
(277,19,NULL,NULL,NULL,182,'2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL,277),
(278,19,NULL,NULL,NULL,183,'2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL,278),
(279,19,NULL,NULL,NULL,184,'2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL,279),
(280,19,NULL,NULL,NULL,185,'2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL,280),
(281,19,NULL,NULL,NULL,186,'2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL,281),
(282,19,NULL,NULL,NULL,187,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,282),
(283,19,NULL,NULL,NULL,188,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,283),
(284,19,NULL,NULL,NULL,189,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,284),
(285,19,NULL,NULL,NULL,190,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,285),
(286,19,NULL,NULL,NULL,191,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,286),
(287,19,NULL,NULL,NULL,192,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,287),
(288,19,NULL,NULL,NULL,193,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,288),
(289,19,NULL,NULL,NULL,194,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,289),
(290,19,NULL,NULL,NULL,195,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,290),
(291,19,NULL,NULL,NULL,196,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,291),
(292,19,NULL,NULL,NULL,197,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,292),
(293,19,NULL,NULL,NULL,198,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,293),
(294,19,NULL,NULL,NULL,199,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,294),
(295,19,NULL,NULL,NULL,200,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,295),
(296,19,NULL,NULL,NULL,201,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,296),
(297,19,NULL,NULL,NULL,202,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,297),
(298,19,1034,NULL,NULL,203,'2025-09-09 10:35:00','2025-09-09 16:05:00',NULL,NULL,298),
(299,19,1035,NULL,NULL,204,'2025-09-09 10:35:00','2025-09-09 16:05:00',NULL,NULL,299),
(300,19,1036,NULL,NULL,205,'2025-09-09 10:35:00','2025-09-09 16:05:00',NULL,NULL,300),
(301,19,NULL,NULL,NULL,206,'2025-09-09 10:39:36','2025-09-09 16:09:36',NULL,NULL,301),
(303,19,NULL,NULL,NULL,208,'2025-09-09 11:39:56','2025-09-09 17:09:56',NULL,NULL,303),
(304,19,NULL,NULL,NULL,209,'2025-09-09 11:39:56','2025-09-09 17:09:56',NULL,NULL,304),
(305,19,NULL,NULL,NULL,210,'2025-09-09 11:42:35','2025-09-09 17:12:35',NULL,NULL,305),
(306,19,NULL,NULL,NULL,211,'2025-09-09 11:42:35','2025-09-09 17:12:35',NULL,NULL,306),
(307,19,1039,NULL,NULL,212,'2025-09-22 18:53:32','2025-09-23 00:23:32',NULL,NULL,307),
(308,19,NULL,NULL,NULL,213,'2025-10-21 11:56:48','2025-10-21 17:26:48',NULL,NULL,308),
(309,19,NULL,NULL,NULL,214,'2025-10-21 12:04:57','2025-10-21 17:34:57',NULL,NULL,309),
(310,19,NULL,NULL,NULL,215,'2025-10-21 13:16:49','2025-10-21 18:46:49',NULL,NULL,310),
(311,19,NULL,NULL,NULL,216,'2025-10-21 13:16:49','2025-10-21 18:46:49',NULL,NULL,311),
(312,19,NULL,NULL,NULL,217,'2025-11-26 17:50:53','2025-11-26 23:20:53',NULL,NULL,312),
(315,19,NULL,NULL,NULL,220,'2025-11-27 05:15:24','2025-11-27 10:45:24',NULL,NULL,315),
(317,19,1070,NULL,NULL,222,'2025-12-29 04:45:11','2025-12-29 10:15:11',NULL,NULL,317),
(321,19,NULL,NULL,NULL,226,'2026-01-21 15:34:18','2026-01-21 21:04:18',NULL,NULL,321),
(322,19,NULL,NULL,NULL,227,'2026-01-21 15:34:18','2026-01-21 21:04:18',NULL,NULL,322),
(323,19,NULL,NULL,NULL,228,'2026-01-21 15:57:15','2026-01-21 21:27:15',NULL,NULL,323),
(324,19,NULL,NULL,NULL,229,'2026-01-21 15:57:15','2026-01-21 21:27:15',NULL,NULL,324),
(325,19,NULL,NULL,NULL,230,'2026-01-21 16:10:53','2026-01-21 21:40:53',NULL,NULL,325),
(326,19,NULL,NULL,NULL,231,'2026-01-21 16:10:53','2026-01-21 21:40:53',NULL,NULL,326),
(327,19,NULL,NULL,NULL,232,'2026-01-21 16:12:25','2026-01-21 21:42:25',NULL,NULL,327),
(328,19,NULL,NULL,NULL,233,'2026-01-21 16:12:25','2026-01-21 21:42:25',NULL,NULL,328),
(332,19,1077,NULL,NULL,237,'2026-01-21 16:45:20','2026-01-21 22:15:20',NULL,NULL,332),
(333,19,1078,NULL,NULL,238,'2026-01-21 16:45:47','2026-01-21 22:15:47',NULL,NULL,333),
(334,19,1079,NULL,NULL,239,'2026-01-21 16:53:33','2026-01-21 22:23:33',NULL,NULL,334),
(335,19,1087,NULL,NULL,241,'2026-02-08 16:49:48','2026-02-08 22:19:48',NULL,NULL,335),
(336,20,1088,NULL,NULL,241,'2026-03-11 09:15:36','2026-03-11 14:45:36',NULL,NULL,335),
(337,20,1084,NULL,NULL,42,'2026-03-11 09:20:25','2026-03-11 14:50:25',NULL,NULL,NULL),
(338,20,1086,NULL,NULL,43,'2026-03-11 09:20:25','2026-03-11 14:50:25',NULL,NULL,NULL),
(339,19,NULL,NULL,NULL,242,'2026-05-08 09:55:41','2026-05-08 15:25:41',NULL,NULL,336),
(340,19,1098,NULL,NULL,243,'2026-05-08 10:06:28','2026-05-08 15:36:28',NULL,NULL,337);
/*!40000 ALTER TABLE `store_inventory_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_terminal_user`
--

DROP TABLE IF EXISTS `store_terminal_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_terminal_user` (
  `storeId` int(11) DEFAULT NULL,
  `terminalId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `CreatedDate_UTC` datetime DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime DEFAULT current_timestamp(),
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  PRIMARY KEY (`terminalId`),
  UNIQUE KEY `unique_terminalId_store` (`terminalId`,`storeId`),
  KEY `terminal_store_store_FK` (`storeId`),
  KEY `FK_store_terminal_user_userId` (`userId`),
  CONSTRAINT `FK_store_terminal_user_userId` FOREIGN KEY (`userId`) REFERENCES `user_registration` (`userId`),
  CONSTRAINT `terminal_store_store_FK` FOREIGN KEY (`storeId`) REFERENCES `store` (`storeId`),
  CONSTRAINT `terminal_store_terminal_FK` FOREIGN KEY (`terminalId`) REFERENCES `terminal` (`TerminalId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_terminal_user`
--

LOCK TABLES `store_terminal_user` WRITE;
/*!40000 ALTER TABLE `store_terminal_user` DISABLE KEYS */;
INSERT INTO `store_terminal_user` VALUES
(19,29,5,'2025-08-25 06:54:04','2025-08-25 12:24:04',NULL,NULL),
(20,30,5,'2026-03-10 14:01:26','2026-03-10 19:31:26',NULL,NULL);
/*!40000 ALTER TABLE `store_terminal_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_product_detail`
--

DROP TABLE IF EXISTS `sub_product_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_product_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `allProductId` int(11) NOT NULL,
  `qty` decimal(10,2) NOT NULL,
  `allProductId_mat` int(11) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `sub_product_detail_all_product_FK` (`allProductId`),
  KEY `sub_product_detail_all_product_FK_1` (`allProductId_mat`),
  CONSTRAINT `sub_product_detail_all_product_FK` FOREIGN KEY (`allProductId`) REFERENCES `all_product` (`allProductId`),
  CONSTRAINT `sub_product_detail_all_product_FK_1` FOREIGN KEY (`allProductId_mat`) REFERENCES `all_product` (`allProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_product_detail`
--

LOCK TABLES `sub_product_detail` WRITE;
/*!40000 ALTER TABLE `sub_product_detail` DISABLE KEYS */;
INSERT INTO `sub_product_detail` VALUES
(261,230,1.00,63,'2025-09-08 07:12:50'),
(262,231,1.00,63,'2025-09-08 07:12:50'),
(263,232,1.00,63,'2025-09-08 07:12:50'),
(292,327,2.00,55,'2026-01-21 16:12:25'),
(293,327,1.50,56,'2026-01-21 16:12:25'),
(295,328,2.00,55,'2026-01-21 16:12:25'),
(296,328,10.50,57,'2026-01-21 16:12:25');
/*!40000 ALTER TABLE `sub_product_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_payments`
--

DROP TABLE IF EXISTS `supplier_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_payments` (
  `PaymentId` int(11) NOT NULL AUTO_INCREMENT,
  `stockEntryId` int(11) NOT NULL,
  `AmountPaid` decimal(10,4) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `PaymentDate_UTC` timestamp NULL DEFAULT current_timestamp(),
  `CreatedDate_UTC` datetime NOT NULL DEFAULT current_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`PaymentId`),
  KEY `FK_supplier_payments_stockentry` (`stockEntryId`),
  CONSTRAINT `FK_supplier_payments_stockentry` FOREIGN KEY (`stockEntryId`) REFERENCES `stockentry` (`stockEntryId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_payments`
--

LOCK TABLES `supplier_payments` WRITE;
/*!40000 ALTER TABLE `supplier_payments` DISABLE KEYS */;
INSERT INTO `supplier_payments` VALUES
(1,13,2246.0000,'','2026-05-08 10:48:10','2026-05-08 16:18:10','2026-05-08 16:18:10');
/*!40000 ALTER TABLE `supplier_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_info`
--

DROP TABLE IF EXISTS `system_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_info` (
  `systemInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `utcOffset` int(11) NOT NULL,
  `countryName` varchar(50) NOT NULL,
  `countryCode` varchar(10) NOT NULL,
  `CurrencyId` int(11) NOT NULL,
  `PrimaryLanguageId` int(11) NOT NULL,
  `userLogId` int(11) NOT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `receiptAdDescription` varchar(500) DEFAULT NULL,
  `timeZoneId` int(11) DEFAULT NULL,
  PRIMARY KEY (`systemInfoId`),
  KEY `FK_system_info_Currency` (`CurrencyId`),
  KEY `FK_system_info_Language` (`PrimaryLanguageId`),
  CONSTRAINT `FK_Geo_Info_Currency` FOREIGN KEY (`CurrencyId`) REFERENCES `currency` (`CurrencyID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_info`
--

LOCK TABLES `system_info` WRITE;
/*!40000 ALTER TABLE `system_info` DISABLE KEYS */;
INSERT INTO `system_info` VALUES
(20,330,'','',16,48,6,'2025-03-13 19:56:58','2025-03-13 19:56:58',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `system_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terminal`
--

DROP TABLE IF EXISTS `terminal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terminal` (
  `TerminalId` int(11) NOT NULL AUTO_INCREMENT,
  `TerminalName` varchar(50) NOT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  PRIMARY KEY (`TerminalId`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terminal`
--

LOCK TABLES `terminal` WRITE;
/*!40000 ALTER TABLE `terminal` DISABLE KEYS */;
INSERT INTO `terminal` VALUES
(29,'POS1','2025-03-13 19:56:58','2025-03-13 19:56:58',NULL,NULL),
(30,'POS2','2026-03-10 14:01:03','2026-03-10 19:31:03',NULL,NULL);
/*!40000 ALTER TABLE `terminal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_order`
--

DROP TABLE IF EXISTS `transfer_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfer_order` (
  `transferOrderId` int(11) NOT NULL AUTO_INCREMENT,
  `transferNo` varchar(20) DEFAULT NULL,
  `sourceStoreId` int(11) NOT NULL,
  `destinationStoreId` int(11) NOT NULL,
  `transferDate` date NOT NULL,
  `status` enum('Draft','Sent','In transit','Received','Partially received','Cancelled') NOT NULL DEFAULT 'Draft',
  `notes` text DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `createdDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `lastModifiedDate_UTC` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`transferOrderId`),
  UNIQUE KEY `transferNo` (`transferNo`),
  KEY `sourceStoreId` (`sourceStoreId`),
  KEY `destinationStoreId` (`destinationStoreId`),
  KEY `createdBy` (`createdBy`),
  CONSTRAINT `transfer_order_ibfk_1` FOREIGN KEY (`sourceStoreId`) REFERENCES `store` (`storeId`),
  CONSTRAINT `transfer_order_ibfk_2` FOREIGN KEY (`destinationStoreId`) REFERENCES `store` (`storeId`),
  CONSTRAINT `transfer_order_ibfk_3` FOREIGN KEY (`createdBy`) REFERENCES `user_registration` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_order`
--

LOCK TABLES `transfer_order` WRITE;
/*!40000 ALTER TABLE `transfer_order` DISABLE KEYS */;
INSERT INTO `transfer_order` VALUES
(123,'TO000123',19,20,'2026-03-22','In transit','First inventory transfer of the week',5,'2026-03-25 12:21:35','2026-03-25 17:51:35'),
(124,'TO000124',19,20,'2026-03-22','In transit','First inventory transfer of the week',5,'2026-03-25 12:22:09','2026-03-25 17:52:09'),
(125,'TO000125',19,20,'2026-03-22','Draft','First inventory transfer of the week',5,'2026-03-25 12:26:05','2026-03-25 17:56:05'),
(126,'TO000126',19,20,'2026-03-22','Draft','First inventory transfer of the week',5,'2026-03-25 12:28:13','2026-03-25 17:58:13'),
(127,'TO000127',19,20,'2026-03-22','In transit','First inventory transfer of the week',5,'2026-03-25 12:28:29','2026-03-25 17:58:29'),
(128,'TO000128',19,20,'2026-03-22','In transit','First inventory transfer of the week',5,'2026-03-25 12:28:50','2026-03-25 17:58:50');
/*!40000 ALTER TABLE `transfer_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_order_detail`
--

DROP TABLE IF EXISTS `transfer_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfer_order_detail` (
  `transferOrderDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `transferOrderId` int(11) NOT NULL,
  `allProductId` int(11) NOT NULL,
  `sourceInventoryId` int(11) NOT NULL,
  `destinationInventoryId` int(11) NOT NULL,
  `qty` decimal(12,3) NOT NULL DEFAULT 0.000,
  `unitCost` decimal(12,2) DEFAULT NULL,
  `stockBatchId` int(11) DEFAULT NULL,
  PRIMARY KEY (`transferOrderDetailId`),
  KEY `fk_tod_order` (`transferOrderId`),
  KEY `fk_tod_product` (`allProductId`),
  KEY `fk_tod_source_inv` (`sourceInventoryId`),
  KEY `fk_tod_dest_inv` (`destinationInventoryId`),
  CONSTRAINT `fk_tod_dest_inv` FOREIGN KEY (`destinationInventoryId`) REFERENCES `inventory` (`inventoryId`),
  CONSTRAINT `fk_tod_order` FOREIGN KEY (`transferOrderId`) REFERENCES `transfer_order` (`transferOrderId`),
  CONSTRAINT `fk_tod_product` FOREIGN KEY (`allProductId`) REFERENCES `all_product` (`allProductId`),
  CONSTRAINT `fk_tod_source_inv` FOREIGN KEY (`sourceInventoryId`) REFERENCES `inventory` (`inventoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_order_detail`
--

LOCK TABLES `transfer_order_detail` WRITE;
/*!40000 ALTER TABLE `transfer_order_detail` DISABLE KEYS */;
INSERT INTO `transfer_order_detail` VALUES
(1,123,298,1034,1088,1.000,NULL,60),
(2,123,300,1036,1088,1.000,NULL,44),
(3,124,298,1034,1088,2.000,NULL,60),
(4,124,300,1036,1088,11.000,NULL,44),
(5,125,298,1034,1088,2.000,NULL,60),
(6,125,300,1036,1088,11.000,NULL,44),
(7,126,298,1034,1088,2.000,NULL,60),
(8,126,300,1036,1088,11.000,NULL,44),
(9,127,298,1034,1088,2.000,NULL,60),
(10,127,300,1036,1088,11.000,NULL,44),
(11,128,298,1034,1088,2.000,NULL,60),
(12,128,300,1036,1088,11.000,NULL,44);
/*!40000 ALTER TABLE `transfer_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_action_log`
--

DROP TABLE IF EXISTS `user_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_action_log` (
  `LogId` int(11) NOT NULL AUTO_INCREMENT,
  `UserLogID` int(11) NOT NULL,
  `UTC_Offset` varchar(50) NOT NULL,
  `PageName` varchar(50) NOT NULL,
  `ActionDateTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `Description` text NOT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  PRIMARY KEY (`LogId`),
  KEY `user_action_log_UserLogID_IDX` (`UserLogID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_action_log`
--

LOCK TABLES `user_action_log` WRITE;
/*!40000 ALTER TABLE `user_action_log` DISABLE KEYS */;
INSERT INTO `user_action_log` VALUES
(1,1,'5:30','p','2025-01-01 11:51:15','Stock adjustment confirmed for stockBatchId: 57, adjustmentTypeId: 2, adjustedQty: 2.00','2025-01-01 11:51:15','2025-01-01 11:51:15'),
(2,1,'5:30','p','2025-01-01 11:51:39','Stock adjustment confirmed for stockBatchId: 57, adjustmentTypeId: 1, adjustedQty: 1.00','2025-01-01 11:51:39','2025-01-01 11:51:39'),
(3,1,'5:30','p','2025-01-01 13:43:00','Stock adjustment confirmed for stockBatchId: 58, adjustmentTypeId: 2, adjustedQty: 1.00','2025-01-01 13:43:00','2025-01-01 13:43:00'),
(4,1,'5:30','p','2025-01-01 13:43:23','Stock adjustment confirmed for stockBatchId: 58, adjustmentTypeId: 1, adjustedQty: 1.00','2025-01-01 13:43:23','2025-01-01 13:43:23'),
(5,1,'5:30','p','2025-01-01 13:43:36','Stock adjustment confirmed for stockBatchId: 58, adjustmentTypeId: 2, adjustedQty: 1.00','2025-01-01 13:43:36','2025-01-01 13:43:36'),
(6,1,'5:30','p','2025-01-01 17:19:14','Stock adjustment confirmed for stockBatchId: 58, adjustmentTypeId: 2, adjustedQty: 2.00','2025-01-01 17:19:14','2025-01-01 17:19:14'),
(7,1,'5:30','p','2025-01-01 17:29:20','Stock adjustment confirmed for stockBatchId: 58, adjustmentTypeId: 1, adjustedQty: 2.00, existingStockQty: 4.00','2025-01-01 17:29:20','2025-01-01 17:29:20'),
(8,1,'5:30','p','2025-01-01 17:31:41','Stock adjustment confirmed for stockBatchId: 58, adjustmentTypeId: 1, adjustedQty: 2.00, existingStockQty: 6.00','2025-01-01 17:31:41','2025-01-01 17:31:41'),
(9,1,'5:30','p','2025-01-01 17:31:53','Stock adjustment confirmed for stockBatchId: 58, adjustmentTypeId: 1, adjustedQty: 2.00, existingStockQty: 8.00','2025-01-01 17:31:53','2025-01-01 17:31:53'),
(10,1,'5:30','p','2025-01-01 17:33:12','Stock adjustment confirmed for stockBatchId: 58, adjustmentTypeId: 1, adjustedQty: 2.00, existingStockQty: 10.00','2025-01-01 17:33:12','2025-01-01 17:33:12'),
(11,1,'5:30','p','2025-01-01 17:33:26','Stock adjustment confirmed for stockBatchId: 58, adjustmentTypeId: 1, adjustedQty: 4.00, existingStockQty: 12.00','2025-01-01 17:33:26','2025-01-01 17:33:26'),
(12,1,'5:30','p','2025-01-01 17:34:47','Stock adjustment confirmed for stockBatchId: 58, adjustmentTypeId: 2, adjustedQty: 2.00, existingStockQty: 16.00','2025-01-01 17:34:47','2025-01-01 17:34:47'),
(13,1,'5:30','p','2025-01-01 17:41:15','Stock adjustment confirmed for stockBatchId: 58, adjustmentTypeId: 2, adjustedQty: 2.00, existingStockQty: 14.00','2025-01-01 17:41:15','2025-01-01 17:41:15'),
(14,1,'5:30','p','2025-01-01 18:24:25','Stock adjustment confirmed for stockBatchId: 63, adjustmentTypeId: 2, adjustedQty: 4.00, existingStockQty: 20.00','2025-01-01 18:24:25','2025-01-01 18:24:25'),
(15,1,'5:30','p','2025-01-01 18:26:06','Stock adjustment confirmed for stockBatchId: 57, adjustmentTypeId: 2, adjustedQty: 2.00, existingStockQty: 15.00','2025-01-01 18:26:06','2025-01-01 18:26:06'),
(16,1,'5:30','p','2025-01-01 18:26:50','Stock adjustment confirmed for stockBatchId: 63, adjustmentTypeId: 2, adjustedQty: 2.00, existingStockQty: 16.00','2025-01-01 18:26:50','2025-01-01 18:26:50'),
(17,1,'5:30','p','2025-01-01 19:33:23','Updated price and cost for stockBatchId: 57, New Unit Price: 1000.00, New Unit Cost: 500.00, Old Unit Price: 750.00, Old Unit Cost: 500.00','2025-01-01 19:33:23','2025-01-01 19:33:23'),
(18,1,'5:30','p','2025-01-02 19:13:04','Updated price and cost for stockBatchId: 57, New Unit Price: 1000.00, New Unit Cost: 500.00, Old Unit Price: 1000.00, Old Unit Cost: 500.00','2025-01-02 19:13:04','2025-01-02 19:13:04'),
(19,1,'5:30','p','2025-01-02 19:22:50','Stock adjustment confirmed for stockBatchId: 57, adjustmentTypeId: 1, adjustedQty: 10.00, existingStockQty: 13.00','2025-01-02 19:22:50','2025-01-02 19:22:50'),
(20,1,'5:30','p','2025-01-02 19:26:55','Updated price and cost for stockBatchId: 57, New Unit Price: 1000.00, New Unit Cost: 500.00, Old Unit Price: 1000.00, Old Unit Cost: 500.00','2025-01-02 19:26:55','2025-01-02 19:26:55'),
(21,1,'5:30','p','2025-01-02 19:27:42','Stock adjustment confirmed for stockBatchId: 57, adjustmentTypeId: 1, adjustedQty: 4.00, existingStockQty: 23.00','2025-01-02 19:27:42','2025-01-02 19:27:42'),
(22,1,'5:30','p','2025-01-02 19:27:49','Updated price and cost for stockBatchId: 57, New Unit Price: 1000.00, New Unit Cost: 500.00, Old Unit Price: 1000.00, Old Unit Cost: 500.00','2025-01-02 19:27:49','2025-01-02 19:27:49'),
(23,1,'5:30','p','2025-01-02 20:01:34','Updated price and cost for stockBatchId: 57, New Unit Price: 1200.00, New Unit Cost: 500.00, Old Unit Price: 1000.00, Old Unit Cost: 500.00','2025-01-02 20:01:34','2025-01-02 20:01:34'),
(24,1,'5:30','p','2025-01-02 20:05:53','Updated price and cost for stockBatchId: 57, New Unit Price: 1200.00, New Unit Cost: 550.00, Old Unit Price: 1200.00, Old Unit Cost: 500.00','2025-01-02 20:05:53','2025-01-02 20:05:53'),
(25,1,'5:30','p','2025-01-02 20:07:36','Updated price and cost for stockBatchId: 63, New Unit Price: 1500.00, New Unit Cost: 1000.00, Old Unit Price: 750.00, Old Unit Cost: 700.00','2025-01-02 20:07:36','2025-01-02 20:07:36'),
(26,1,'5:30','p','2025-01-02 20:22:23','Updated price and cost for stockBatchId: 57, New Unit Price: 1300.00, New Unit Cost: 550.00, Old Unit Price: 1200.00, Old Unit Cost: 550.00','2025-01-02 20:22:23','2025-01-02 20:22:23'),
(27,1,'5:30','p','2025-01-13 07:24:12','Updated price and cost for stockBatchId: 70, New Unit Price: 1400.00, New Unit Cost: 1200.00, Old Unit Price: 1300.00, Old Unit Cost: 1000.00','2025-01-13 07:24:12','2025-01-13 07:24:12'),
(28,1,'5:30','p','2025-01-13 07:28:21','Updated price and cost for stockBatchId: 70, New Unit Price: 1350.00, New Unit Cost: 1250.00, Old Unit Price: 1400.00, Old Unit Cost: 1200.00','2025-01-13 07:28:21','2025-01-13 07:28:21'),
(29,1,'5:30','p','2025-01-13 07:35:52','Updated price and cost for stockBatchId: 57, New Unit Price: 1000.00, New Unit Cost: 500.00, Old Unit Price: 1300.00, Old Unit Cost: 550.00','2025-01-13 07:35:52','2025-01-13 07:35:52'),
(30,1,'5:30','p','2025-01-13 07:47:33','Updated price and cost for stockBatchId: 70, New Unit Price: 1000.00, New Unit Cost: 500.00, Old Unit Price: 1350.00, Old Unit Cost: 1250.00','2025-01-13 07:47:33','2025-01-13 07:47:33'),
(31,1,'5:30','p','2025-01-13 07:47:33','Updated price and cost for stockBatchId: 70, New Unit Price: 1000.00, New Unit Cost: 500.00, Old Unit Price: 1000.00, Old Unit Cost: 500.00','2025-01-13 07:47:33','2025-01-13 07:47:33'),
(32,1,'5:30','p','2025-01-13 07:47:43','Updated price and cost for stockBatchId: 70, New Unit Price: 1000.00, New Unit Cost: 500.00, Old Unit Price: 1000.00, Old Unit Cost: 500.00','2025-01-13 07:47:43','2025-01-13 07:47:43'),
(33,1,'5:30','p','2025-01-13 07:54:26','Updated price and cost for stockBatchId: 70, New Unit Price: 1000.00, New Unit Cost: 500.00, Old Unit Price: 1000.00, Old Unit Cost: 500.00','2025-01-13 07:54:26','2025-01-13 07:54:26'),
(34,1,'5:30','p','2025-01-13 07:58:28','Updated price and cost for stockBatchId: 70, New Unit Price: 2300.00, New Unit Cost: 1500.00, Old Unit Price: 1000.00, Old Unit Cost: 500.00','2025-01-13 07:58:28','2025-01-13 07:58:28'),
(35,1,'5:30','p','2025-01-13 07:59:23','Updated price and cost for stockBatchId: 63, New Unit Price: 1000.00, New Unit Cost: 500.00, Old Unit Price: 1500.00, Old Unit Cost: 1000.00','2025-01-13 07:59:23','2025-01-13 07:59:23'),
(36,1,'5:30','p','2025-01-13 08:00:32','Updated price and cost for stockBatchId: 63, New Unit Price: 1200.00, New Unit Cost: 700.00, Old Unit Price: 1000.00, Old Unit Cost: 500.00','2025-01-13 08:00:32','2025-01-13 08:00:32'),
(37,1,'5:30','p','2025-01-28 13:02:49','Stock adjustment confirmed for stockBatchId: 70, adjustmentTypeId: 2, adjustedQty: 2.00, existingStockQty: 19.00','2025-01-28 13:02:49','2025-01-28 13:02:49'),
(38,1,'5:30','p','2025-02-10 05:33:34','Stock adjustment confirmed for stockBatchId: 70, adjustmentTypeId: 1, adjustedQty: 2.00, existingStockQty: 10.00','2025-02-10 05:33:34','2025-02-10 05:33:34'),
(39,1,'5:30','p','2025-02-10 05:33:48','Stock adjustment confirmed for stockBatchId: 70, adjustmentTypeId: 2, adjustedQty: 1.00, existingStockQty: 12.00','2025-02-10 05:33:48','2025-02-10 05:33:48'),
(40,1,'5:30','p','2025-02-10 10:58:48','Stock adjustment confirmed for stockBatchId: 81, adjustmentTypeId: 2, adjustedQty: 1.00, existingStockQty: 45.00','2025-02-10 10:58:48','2025-02-10 10:58:48'),
(41,1,'5:30','p','2025-02-11 04:35:49','Stock adjustment confirmed for stockBatchId: 71, adjustmentTypeId: 2, adjustedQty: 1.00, existingStockQty: 9.00','2025-02-11 04:35:49','2025-02-11 04:35:49'),
(42,1,'5:30','p','2025-02-11 04:35:57','Stock adjustment confirmed for stockBatchId: 71, adjustmentTypeId: 1, adjustedQty: 1.00, existingStockQty: 8.00','2025-02-11 04:35:57','2025-02-11 04:35:57'),
(43,1,'5:30','p','2025-03-08 17:44:21','Stock adjustment confirmed for stockBatchId: 83, adjustmentTypeId: 2, adjustedQty: 2.00, existingStockQty: 20.00','2025-03-08 17:44:21','2025-03-08 17:44:21'),
(44,2,'5:30','p','2025-03-13 13:56:10','Stock adjustment confirmed for stockBatchId: 1, adjustmentTypeId: 2, adjustedQty: 1.00, existingStockQty: 10.00','2025-03-13 13:56:10','2025-03-13 13:56:10'),
(45,52,'5:30','p','2025-09-05 11:27:28','Stock adjustment confirmed for stockBatchId: 22, adjustmentTypeId: 1, adjustedQty: 1.00, existingStockQty: 99.00','2025-09-05 11:27:28','2025-09-05 11:27:28'),
(46,6,'5:30','p','2025-09-09 17:42:25','Stock adjustment confirmed for stockBatchId: 27, adjustmentTypeId: 1, adjustedQty: 100.00, existingStockQty: 5.00','2025-09-09 17:42:25','2025-09-09 17:42:25'),
(47,6,'5:30','p','2025-09-09 17:44:00','Stock adjustment confirmed for stockBatchId: 40, adjustmentTypeId: 1, adjustedQty: 100.00, existingStockQty: 20.00','2025-09-09 17:44:00','2025-09-09 17:44:00'),
(48,6,'5:30','p','2025-09-09 17:44:43','Stock adjustment confirmed for stockBatchId: 20, adjustmentTypeId: 1, adjustedQty: 11.00, existingStockQty: 89.00','2025-09-09 17:44:43','2025-09-09 17:44:43'),
(49,469,'5:30','p','2025-12-21 08:14:39','Stock adjustment confirmed for stockBatchId: 53, adjustmentTypeId: 2, adjustedQty: 2.00, existingStockQty: 500.00','2025-12-21 08:14:39','2025-12-21 08:14:39'),
(50,611,'5:30','p','2026-04-15 13:03:23','Updated price and cost for stockBatchId: 54, New Unit Price: 150.00, New Unit Cost: 50.00, Old Unit Price: 100.00, Old Unit Cost: 0.00','2026-04-15 13:03:23','2026-04-15 13:03:23');
/*!40000 ALTER TABLE `user_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_registration`
--

DROP TABLE IF EXISTS `user_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_registration` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `uName` varchar(500) DEFAULT NULL,
  `passwordHash` text DEFAULT NULL,
  `passwordSalt` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `displayName` varchar(50) DEFAULT NULL,
  `profilePic` varchar(50) DEFAULT NULL,
  `isActive` bit(1) DEFAULT b'1',
  `CreatedDate_UTC` datetime DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime DEFAULT current_timestamp(),
  `ModifiedDate_UTC` datetime DEFAULT utc_timestamp(),
  `ModifiedDate_ServerTime` datetime DEFAULT current_timestamp(),
  `userLogId` int(11) DEFAULT NULL,
  `userRoleId` int(2) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_registration`
--

LOCK TABLES `user_registration` WRITE;
/*!40000 ALTER TABLE `user_registration` DISABLE KEYS */;
INSERT INTO `user_registration` VALUES
(1,'spmskperera@gmail.com','$2b$10$M7Wdu/zmnzWfPzhbPKJk.e6rGN9i3GxJEdLDoM2ymJ1HHgQzpM1ui','$2b$10$cp2VWkn9oVMNcd8Yt7WfJu','spmskperera@gmail.com','UserA SP','hh','','2023-10-08 19:20:02','2023-10-09 00:50:02','2025-02-11 16:43:50','2025-02-11 16:43:50',1,1),
(3,'kasun','ooooi','555444','kasun1@gmail.com','Kasun Peris','dfdsj3FD#RFdsjl','','2025-02-11 16:43:50','2025-02-11 22:13:50','2025-02-11 16:43:50','2025-02-11 22:13:50',1,2),
(4,'sampath','ooooi','555444','sampath@gmail.com','Sampath Dias','dfdsj3FD#RFdsjl','','2025-02-11 16:44:33','2025-02-11 22:14:33','2025-02-11 16:44:33','2025-02-11 22:14:33',1,3),
(5,'dayarastudio12@gmail.com','$2b$10$wo9U4N/ggVk12h6MJUL6u.FYAFLLimTi2AlYSY509ro6mI4mFEqya','$2b$10$EhXjFrI05ljfNM56Xf8Lge','tenantServAdmin41vsD','Dayara',NULL,'','2025-03-13 15:40:26','2025-03-13 15:40:26','2025-03-13 15:40:26','2025-03-13 15:40:26',NULL,1);
/*!40000 ALTER TABLE `user_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlog` (
  `userLogId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `LoginStatus` varchar(20) NOT NULL,
  `IpAddress` varchar(45) NOT NULL,
  `UserAgent` varchar(255) DEFAULT NULL,
  `SessionId` varchar(255) DEFAULT NULL,
  `AdditionalInfo` text DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `utcOffset` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`userLogId`),
  CONSTRAINT `userlog_chk_1` CHECK (`LoginStatus` = _utf8mb4'Failed' or `LoginStatus` = _utf8mb4'Success')
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlog`
--

LOCK TABLES `userlog` WRITE;
/*!40000 ALTER TABLE `userlog` DISABLE KEYS */;
INSERT INTO `userlog` VALUES
(1,5,'Success','::1','{\"os\":\"Windows 10\",\"browser\":\"Chrome 147.0.0.0\",\"device\":\"Unknown Device\"}','sessionId','additionalInfo','2026-05-08 09:52:35','2026-05-08 15:22:35','330'),
(2,5,'Success','111.223.190.118','{\"os\":\"Windows 10\",\"browser\":\"Chrome 147.0.0.0\",\"device\":\"Unknown Device\"}','sessionId','additionalInfo','2026-05-09 10:01:31','2026-05-09 15:31:31','330');
/*!40000 ALTER TABLE `userlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userrole` (
  `userRoleId` int(11) NOT NULL AUTO_INCREMENT,
  `UserRoleName` varchar(50) DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  PRIMARY KEY (`userRoleId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrole`
--

LOCK TABLES `userrole` WRITE;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` VALUES
(1,'Admin','2025-02-11 10:06:43','2025-02-11 15:36:43',NULL,NULL),
(2,'Manager','2025-02-11 10:07:01','2025-02-11 15:37:01',NULL,NULL),
(3,'Cashier','2025-02-11 10:07:17','2025-02-11 15:37:17',NULL,NULL);
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variation_product`
--

DROP TABLE IF EXISTS `variation_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variation_product` (
  `variationProductId` int(11) NOT NULL AUTO_INCREMENT,
  `SKU` varchar(50) DEFAULT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  `unitPrice` decimal(10,2) DEFAULT NULL,
  `unitCost` decimal(10,2) DEFAULT NULL,
  `taxPerc` decimal(10,2) DEFAULT 0.00,
  PRIMARY KEY (`variationProductId`),
  UNIQUE KEY `unique_sku` (`SKU`),
  UNIQUE KEY `unique_barcode` (`barcode`),
  KEY `FK_variationProduct_product` (`productId`),
  CONSTRAINT `FK_variationProduct_product` FOREIGN KEY (`productId`) REFERENCES `product` (`ProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variation_product`
--

LOCK TABLES `variation_product` WRITE;
/*!40000 ALTER TABLE `variation_product` DISABLE KEYS */;
INSERT INTO `variation_product` VALUES
(5,'FR4RBLK3/4',NULL,61,'2025-07-28 20:54:06','2025-07-29 02:24:06',NULL,NULL,650.00,1.00,0.00),
(6,'FR4RSILV1',NULL,61,'2025-07-28 20:54:06','2025-07-29 02:24:06',NULL,NULL,700.00,1.00,0.00),
(7,'FR5RBLK3/4',NULL,62,'2025-07-28 20:55:38','2025-07-29 02:25:38',NULL,NULL,750.00,0.00,0.00),
(8,'FR5RSILV1',NULL,62,'2025-07-28 20:55:38','2025-07-29 02:25:38',NULL,NULL,800.00,0.00,0.00),
(9,'FR6RBLK3/4',NULL,63,'2025-07-28 20:56:55','2025-07-29 02:26:55',NULL,NULL,750.00,0.00,0.00),
(10,'FR6RSILV1',NULL,63,'2025-07-28 20:56:55','2025-07-29 02:26:55',NULL,NULL,800.00,0.00,0.00),
(11,'FR8RBLK3/4',NULL,64,'2025-07-28 20:58:14','2025-07-29 02:28:14',NULL,NULL,1000.00,0.00,0.00),
(12,'FR8RSILV1',NULL,64,'2025-07-28 20:58:14','2025-07-29 02:28:14',NULL,NULL,1200.00,0.00,0.00),
(13,'FR8x12BLK3/4',NULL,65,'2025-07-28 21:03:20','2025-07-29 02:33:20',NULL,NULL,1200.00,0.00,0.00),
(14,'FR8x12SILV1',NULL,65,'2025-07-28 21:03:20','2025-07-29 02:33:20',NULL,NULL,1600.00,0.00,0.00),
(15,'FR10x12BLK3/4',NULL,66,'2025-07-28 21:05:08','2025-07-29 02:35:08',NULL,NULL,1400.00,0.00,0.00),
(16,'FR10x12SILV1',NULL,66,'2025-07-28 21:05:08','2025-07-29 02:35:08',NULL,NULL,1600.00,0.00,0.00),
(17,'FR10x15BLK3/4',NULL,67,'2025-07-28 21:08:20','2025-07-29 02:38:20',NULL,NULL,1700.00,0.00,0.00),
(18,'FR10x15SILV1',NULL,67,'2025-07-28 21:08:20','2025-07-29 02:38:20',NULL,NULL,2000.00,0.00,0.00),
(19,'FR12X15BLK3/4',NULL,68,'2025-07-28 21:10:17','2025-07-29 02:40:17',NULL,NULL,2000.00,0.00,0.00),
(20,'FR12X15SILV1',NULL,68,'2025-07-28 21:10:17','2025-07-29 02:40:17',NULL,NULL,2400.00,0.00,0.00),
(21,'FR12X18BLK3/4',NULL,69,'2025-07-28 21:12:36','2025-07-29 02:42:36',NULL,NULL,2400.00,0.00,0.00),
(22,'FR12X18SILV1',NULL,69,'2025-07-28 21:12:36','2025-07-29 02:42:36',NULL,NULL,2700.00,0.00,0.00),
(23,'FR16X20BLK3/4',NULL,70,'2025-07-28 21:15:20','2025-07-29 02:45:20',NULL,NULL,5500.00,0.00,0.00),
(24,'FR16x24BLK2\"',NULL,71,'2025-07-28 21:16:09','2025-07-29 02:46:09',NULL,NULL,5500.00,0.00,0.00),
(25,'FR20x30BLK3/4',NULL,72,'2025-07-28 21:16:54','2025-07-29 02:46:54',NULL,NULL,7000.00,0.00,0.00),
(28,'FR6x8BLK1/2',NULL,99,'2025-08-25 09:45:42','2025-08-25 15:15:42',NULL,NULL,750.00,0.00,0.00),
(29,'FR6x8BROWN1/3',NULL,99,'2025-08-25 09:45:42','2025-08-25 15:15:42',NULL,NULL,750.00,0.00,0.00),
(37,'FLYMOUNT6x8PF',NULL,104,'2025-08-25 16:27:06','2025-08-25 21:57:06',NULL,NULL,1400.00,0.00,0.00),
(38,'FR16x24BROWN2\"',NULL,71,'2025-08-25 17:26:13','2025-08-25 22:56:13',NULL,NULL,5500.00,0.00,0.00),
(39,'FR10x12BROWN1',NULL,66,'2025-08-25 17:28:38','2025-08-25 22:58:38',NULL,NULL,1400.00,0.00,0.00),
(40,'FR8x12BROWN3/4',NULL,65,'2025-08-25 17:32:14','2025-08-25 23:02:14',NULL,NULL,1200.00,0.00,0.00),
(41,'FR4x6BLK',NULL,105,'2025-08-25 17:40:03','2025-08-25 23:10:03',NULL,NULL,1.00,0.00,0.00),
(42,'DOCSCANL','1111',106,'2025-08-28 09:24:55','2025-08-28 14:54:55',NULL,NULL,100.00,0.00,0.00),
(43,'DOCSCANSM','2222',106,'2025-08-28 09:24:55','2025-08-28 14:54:55',NULL,NULL,75.00,0.00,0.00),
(44,'DBLBXFRM4R',NULL,107,'2025-08-29 10:27:40','2025-08-29 15:57:40',NULL,NULL,900.00,0.00,0.00),
(45,'DBLBXFRM5R',NULL,107,'2025-08-29 15:00:31','2025-08-29 20:30:31',NULL,NULL,1000.00,0.00,0.00),
(46,'DBLBXFRM6R',NULL,107,'2025-08-29 15:00:31','2025-08-29 20:30:31',NULL,NULL,1200.00,0.00,0.00),
(47,'DBLBXFRM8R',NULL,107,'2025-08-29 15:00:31','2025-08-29 20:30:31',NULL,NULL,1400.00,0.00,0.00),
(48,'DBLBXFRM8x12',NULL,107,'2025-08-29 15:00:31','2025-08-29 20:30:31',NULL,NULL,1500.00,0.00,0.00),
(49,'DBLBXFRM10x12',NULL,107,'2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL,2000.00,0.00,0.00),
(50,'DBLBXFRM10x15',NULL,107,'2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL,2400.00,0.00,0.00),
(51,'DBLBXFRM12x15',NULL,107,'2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL,2700.00,0.00,0.00),
(52,'DBLBXFRM12x18',NULL,107,'2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL,2800.00,0.00,0.00),
(53,'DBLBXFRM16x20',NULL,107,'2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL,6400.00,0.00,0.00),
(54,'DBLBXFRM16x24',NULL,107,'2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL,7000.00,0.00,0.00),
(55,'DBLBXFRM20x30',NULL,107,'2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL,8000.00,0.00,0.00),
(56,'FRSTND4R',NULL,108,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,100.00,0.00,0.00),
(57,'FRSTND5R',NULL,108,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,125.00,0.00,0.00),
(58,'FRSTND6R',NULL,108,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,140.00,0.00,0.00),
(59,'FRSTND8R',NULL,108,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,200.00,0.00,0.00),
(60,'FRSTND8x12',NULL,108,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,250.00,0.00,0.00),
(61,'FRSTND10x12',NULL,108,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,300.00,0.00,0.00),
(62,'FRSTND10x15',NULL,108,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,350.00,0.00,0.00),
(63,'FRSTND12x15',NULL,108,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,375.00,0.00,0.00),
(64,'FRSTND12x18',NULL,108,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,400.00,0.00,0.00),
(65,'FRSTND16x20',NULL,108,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,800.00,0.00,0.00),
(66,'FRSTND16x24',NULL,108,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,900.00,0.00,0.00),
(67,'FRSTND20x30',NULL,108,'2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL,1200.00,0.00,0.00),
(68,'FRMGLS4R',NULL,109,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,250.00,0.00,0.00),
(69,'FRMGLS5R',NULL,109,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,500.00,0.00,0.00),
(70,'FRMGLS6R',NULL,109,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,300.00,0.00,0.00),
(71,'FRMGLS8R',NULL,109,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,350.00,0.00,0.00),
(72,'FRMGLS8x12',NULL,109,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,350.00,0.00,0.00),
(73,'FRMGLS10x12',NULL,109,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,350.00,0.00,0.00),
(74,'FRMGLS10x15',NULL,109,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,350.00,0.00,0.00),
(75,'FRMGLS12x15',NULL,109,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,350.00,0.00,0.00),
(76,'FRMGLS12x18',NULL,109,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,400.00,0.00,0.00),
(77,'FRMGLS16x20',NULL,109,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,500.00,0.00,0.00),
(78,'FRMGLS16x24',NULL,109,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,500.00,0.00,0.00),
(79,'FRMGLS20x30',NULL,109,'2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL,600.00,0.00,0.00),
(99,'PRNTWTFRM4RBLK',NULL,134,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,1000.00,0.00,0.00),
(100,'PRNTWTFRM5RBLK',NULL,134,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,1400.00,0.00,0.00),
(101,'PRNTWTFRM6RBLK',NULL,134,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,1500.00,0.00,0.00),
(102,'PRNTWTFRM8RBLK',NULL,134,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,1900.00,0.00,0.00),
(103,'PRNTWTFRM8x12BLK',NULL,134,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,2000.00,0.00,0.00),
(104,'PRNTWTFRM10x12BLK',NULL,134,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,2400.00,0.00,0.00),
(105,'PRNTWTFRM10x15BLK',NULL,134,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,2800.00,0.00,0.00),
(106,'PRNTWTFRM12x15BLK',NULL,134,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,3300.00,0.00,0.00),
(107,'PRNTWTFRM12x18BLK',NULL,134,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,3600.00,0.00,0.00),
(108,'PRNTWTFRM16x20BLK',NULL,134,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,7000.00,0.00,0.00),
(109,'PRNTWTFRM16x24BLK',NULL,134,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,7500.00,0.00,0.00),
(110,'PRNTWTFRM20x30BLK',NULL,134,'2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL,8000.00,0.00,0.00),
(111,'FR4RBLK1',NULL,61,'2025-09-05 06:21:39','2025-09-05 11:51:39',NULL,NULL,1.00,1.00,0.00),
(130,'PRNT20x30NORMAL',NULL,136,'2025-09-08 07:00:59','2025-09-08 12:30:59',NULL,NULL,5400.00,0.00,0.00),
(131,'PRNT20x30URGENT',NULL,136,'2025-09-08 07:00:59','2025-09-08 12:30:59',NULL,NULL,5500.00,0.00,0.00),
(132,'PRNT16x24URGENT',NULL,137,'2025-09-08 07:05:40','2025-09-08 12:35:40',NULL,NULL,4500.00,0.00,0.00),
(133,'PRNT16x24NORMAL',NULL,137,'2025-09-08 07:05:40','2025-09-08 12:35:40',NULL,NULL,4400.00,0.00,0.00),
(134,'PRNT16x20URGENT',NULL,138,'2025-09-08 07:09:21','2025-09-08 12:39:21',NULL,NULL,4000.00,0.00,0.00),
(135,'PRNT16x20NORMAL',NULL,138,'2025-09-08 07:09:21','2025-09-08 12:39:21',NULL,NULL,3900.00,0.00,0.00),
(136,'PRNT12X18CUST',NULL,139,'2025-09-08 07:12:50','2025-09-08 12:42:50',NULL,NULL,1500.00,0.00,0.00),
(137,'PRNT12X18ST',NULL,139,'2025-09-08 07:12:50','2025-09-08 12:42:50',NULL,NULL,1000.00,0.00,0.00),
(138,'PRNT12X18UGNT',NULL,139,'2025-09-08 07:12:50','2025-09-08 12:42:50',NULL,NULL,1200.00,0.00,0.00),
(139,'PRNT12X15URGENT',NULL,140,'2025-09-08 07:15:46','2025-09-08 12:45:46',NULL,NULL,1200.00,0.00,0.00),
(141,'PRNT12X15NORMAL',NULL,140,'2025-09-08 07:15:46','2025-09-08 12:45:46',NULL,NULL,1100.00,0.00,0.00),
(142,'PRNT10X15UGNT',NULL,141,'2025-09-08 07:18:36','2025-09-08 12:48:36',NULL,NULL,1000.00,0.00,0.00),
(144,'PRNT10X15NORMAL',NULL,141,'2025-09-08 07:18:36','2025-09-08 12:48:36',NULL,NULL,900.00,0.00,0.00),
(145,'PRNT10X12URGENT',NULL,142,'2025-09-08 07:21:30','2025-09-08 12:51:30',NULL,NULL,900.00,0.00,0.00),
(147,'PRNT10X12NORMAL',NULL,142,'2025-09-08 07:21:30','2025-09-08 12:51:30',NULL,NULL,800.00,0.00,0.00),
(152,'PRNT5R',NULL,144,'2025-09-08 11:03:26','2025-09-08 16:33:26',NULL,NULL,450.00,0.00,0.00),
(154,'PRNT5RST',NULL,144,'2025-09-08 11:03:26','2025-09-08 16:33:26',NULL,NULL,300.00,0.00,0.00),
(155,'PRNT6RURGENT',NULL,145,'2025-09-08 11:22:04','2025-09-08 16:52:04',NULL,NULL,500.00,0.00,0.00),
(156,'PRNT6RNORMAL',NULL,145,'2025-09-08 11:22:04','2025-09-08 16:52:04',NULL,NULL,400.00,0.00,0.00),
(158,'PRNT8R',NULL,146,'2025-09-08 11:33:48','2025-09-08 17:03:48',NULL,NULL,700.00,0.00,0.00),
(160,'PRNT8RST',NULL,146,'2025-09-08 11:33:48','2025-09-08 17:03:48',NULL,NULL,600.00,0.00,0.00),
(161,'PRNT8X12URGENT',NULL,147,'2025-09-08 11:46:06','2025-09-08 17:16:06',NULL,NULL,800.00,0.00,0.00),
(163,'PRNT8X12NORMAL',NULL,147,'2025-09-08 11:46:06','2025-09-08 17:16:06',NULL,NULL,700.00,0.00,0.00),
(164,'PRNTA4BW',NULL,149,'2025-09-08 11:52:13','2025-09-08 17:22:13',NULL,NULL,20.00,0.00,0.00),
(165,'PRNTA4COL',NULL,149,'2025-09-08 11:52:13','2025-09-08 17:22:13',NULL,NULL,60.00,0.00,0.00),
(166,'PCA4',NULL,150,'2025-09-08 12:22:59','2025-09-08 17:52:59',NULL,NULL,15.00,0.00,0.00),
(167,'PRNT2X2.54P',NULL,151,'2025-09-09 06:13:57','2025-09-09 11:43:57',NULL,NULL,500.00,0.00,0.00),
(168,'PRNT2X2.5EX',NULL,151,'2025-09-09 06:13:57','2025-09-09 11:43:57',NULL,NULL,350.00,0.00,0.00),
(169,'PRNT2X24P',NULL,152,'2025-09-09 06:17:47','2025-09-09 11:47:47',NULL,NULL,500.00,0.00,0.00),
(170,'PRNT2X2Ex',NULL,152,'2025-09-09 06:17:47','2025-09-09 11:47:47',NULL,NULL,350.00,0.00,0.00),
(171,'POSTIDPRNT4P',NULL,153,'2025-09-09 06:27:17','2025-09-09 11:57:17',NULL,NULL,500.00,0.00,0.00),
(172,'POSTIDPRNTEX',NULL,153,'2025-09-09 06:27:17','2025-09-09 11:57:17',NULL,NULL,350.00,0.00,0.00),
(174,'STAMPPRNT6P',NULL,155,'2025-09-09 06:51:45','2025-09-09 12:21:45',NULL,NULL,500.00,0.00,0.00),
(175,'STAMPPRNTEX',NULL,155,'2025-09-09 06:51:45','2025-09-09 12:21:45',NULL,NULL,350.00,0.00,0.00),
(176,'PRINT4RMEDIA',NULL,156,'2025-09-09 08:49:15','2025-09-09 14:19:15',NULL,NULL,60.00,0.00,0.00),
(177,'PRINT4RMEDIAUGNT',NULL,156,'2025-09-09 08:49:15','2025-09-09 14:19:15',NULL,NULL,200.00,0.00,0.00),
(178,'FLYMOUNT6x8FO',NULL,104,'2025-09-09 10:01:08','2025-09-09 15:31:08',NULL,NULL,750.00,0.00,0.00),
(179,'FLYMOUNT4RPF',NULL,104,'2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL,1000.00,0.00,0.00),
(180,'FLYMOUNT4RFO',NULL,104,'2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL,650.00,0.00,0.00),
(181,'FLYMOUNT5RPF',NULL,104,'2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL,1400.00,0.00,0.00),
(182,'FLYMOUNT5RFO',NULL,104,'2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL,750.00,0.00,0.00),
(183,'FLYMOUNT6RPF',NULL,104,'2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL,1500.00,0.00,0.00),
(184,'FLYMOUNT6RFO',NULL,104,'2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL,750.00,0.00,0.00),
(185,'FLYMOUNT8RPF',NULL,104,'2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL,1900.00,0.00,0.00),
(186,'FLYMOUNT8RFO',NULL,104,'2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL,1000.00,0.00,0.00),
(187,'FLYMOUNT8x12PF',NULL,104,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,2000.00,0.00,0.00),
(188,'FLYMOUNT8x12FO',NULL,104,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,1200.00,0.00,0.00),
(189,'FLYMOUNT10x12PF',NULL,104,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,2400.00,0.00,0.00),
(190,'FLYMOUNT10x12FO',NULL,104,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,1400.00,0.00,0.00),
(191,'FLYMOUNT10x15PF',NULL,104,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,2800.00,0.00,0.00),
(192,'FLYMOUNT10x15FO',NULL,104,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,1700.00,0.00,0.00),
(193,'FLYMOUNT12x15PF',NULL,104,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,3300.00,0.00,0.00),
(194,'FLYMOUNT12x15FO',NULL,104,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,200.00,0.00,0.00),
(195,'FLYMOUNT12x18PF',NULL,104,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,3600.00,0.00,0.00),
(196,'FLYMOUNT12x18FO',NULL,104,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,2400.00,0.00,0.00),
(197,'FLYMOUNT16x20PF',NULL,104,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,7000.00,0.00,0.00),
(198,'FLYMOUNT16x20FO',NULL,104,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,5000.00,0.00,0.00),
(199,'FLYMOUNT16x24PF',NULL,104,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,7500.00,0.00,0.00),
(200,'FLYMOUNT16x24FO',NULL,104,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,5000.00,0.00,0.00),
(201,'FLYMOUNT20x30PF',NULL,104,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,8000.00,0.00,0.00),
(202,'FLYMOUNT20x30FO',NULL,104,'2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL,5500.00,0.00,0.00),
(203,'TILEA4',NULL,157,'2025-09-09 10:35:00','2025-09-09 16:05:00',NULL,NULL,3000.00,0.00,0.00),
(204,'TILE8X8',NULL,157,'2025-09-09 10:35:00','2025-09-09 16:05:00',NULL,NULL,2700.00,0.00,0.00),
(205,'TILE6X6',NULL,157,'2025-09-09 10:35:00','2025-09-09 16:05:00',NULL,NULL,2500.00,0.00,0.00),
(206,'ROCKA4	',NULL,158,'2025-09-09 10:39:36','2025-09-09 16:09:36',NULL,NULL,3500.00,0.00,0.00),
(208,'PASSPORTSCOPYORI',NULL,160,'2025-09-09 11:39:56','2025-09-09 17:09:56',NULL,NULL,500.00,0.00,0.00),
(209,'PASSPORTSCOPYEX',NULL,160,'2025-09-09 11:39:56','2025-09-09 17:09:56',NULL,NULL,350.00,0.00,0.00),
(210,'PASSPORT4P',NULL,162,'2025-09-09 11:42:35','2025-09-09 17:12:35',NULL,NULL,500.00,0.00,0.00),
(211,'PASSPORTEX',NULL,162,'2025-09-09 11:42:35','2025-09-09 17:12:35',NULL,NULL,350.00,0.00,0.00),
(212,'45455',NULL,163,'2025-09-22 18:53:32','2025-09-23 00:23:32',NULL,NULL,400.00,150.00,0.00),
(213,'PRNT4RURGENT',NULL,164,'2025-10-21 11:56:48','2025-10-21 17:26:48',NULL,NULL,200.00,0.00,0.00),
(214,'PRNT4RNORMAL',NULL,164,'2025-10-21 12:04:57','2025-10-21 17:34:57',NULL,NULL,60.00,0.00,0.00),
(215,'4RPRINTCOPY','2545',165,'2025-10-21 13:16:49','2025-10-21 18:46:49',NULL,NULL,400.00,200.00,0.00),
(216,'4RPRINT',NULL,165,'2025-10-21 13:16:49','2025-10-21 18:46:49',NULL,NULL,500.00,0.00,0.00),
(217,'878KK',NULL,166,'2025-11-26 17:50:53','2025-11-26 23:20:53',NULL,NULL,78.00,150.00,0.00),
(220,'676','676',167,'2025-11-27 05:15:24','2025-11-27 10:45:24',NULL,NULL,66.00,66.00,0.00),
(222,'ORANEJSE',NULL,168,'2025-12-29 04:45:11','2025-12-29 10:15:11',NULL,NULL,500.00,0.00,0.00),
(226,'sku3232332411','3232332011',176,'2026-01-21 15:34:18','2026-01-21 21:04:18',NULL,NULL,200.00,100.00,0.00),
(227,'sku3232333211','3232333111',176,'2026-01-21 15:34:18','2026-01-21 21:04:18',NULL,NULL,200.00,100.00,0.00),
(228,'sku32323332114','32323320112',177,'2026-01-21 15:57:15','2026-01-21 21:27:15',NULL,NULL,200.00,100.00,0.00),
(229,'sku32323332111','32323331112',177,'2026-01-21 15:57:15','2026-01-21 21:27:15',NULL,NULL,200.00,100.00,0.00),
(230,'sku323233321j14','3232333111244',178,'2026-01-21 16:10:53','2026-01-21 21:40:53',NULL,NULL,200.00,100.00,0.00),
(231,'sku32323332j111','323233311124',178,'2026-01-21 16:10:53','2026-01-21 21:40:53',NULL,NULL,200.00,100.00,0.00),
(232,'sku3232333k21j14','32323373111244',179,'2026-01-21 16:12:25','2026-01-21 21:42:25',NULL,NULL,200.00,100.00,0.00),
(233,'sku3232333j2j111','3232333111k24',179,'2026-01-21 16:12:25','2026-01-21 21:42:25',NULL,NULL,200.00,100.00,0.00),
(237,'154545',NULL,190,'2026-01-21 16:45:20','2026-01-21 22:15:20',NULL,NULL,1200.00,1000.00,0.00),
(238,'454h',NULL,191,'2026-01-21 16:45:47','2026-01-21 22:15:47',NULL,NULL,55.00,25.00,0.00),
(239,'121221',NULL,192,'2026-01-21 16:53:33','2026-01-21 22:23:33',NULL,NULL,200.00,100.00,0.00),
(241,'454554','3333',106,'2026-02-08 16:49:48','2026-02-08 22:19:48',NULL,NULL,5.00,5.00,0.00),
(242,'CLEAN','CLEAN0',193,'2026-05-08 09:55:41','2026-05-08 15:25:41',NULL,NULL,250.00,0.00,0.00),
(243,'BOX','BOX',194,'2026-05-08 10:06:28','2026-05-08 15:36:28',NULL,NULL,100.00,0.00,0.00);
/*!40000 ALTER TABLE `variation_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variation_product_detail`
--

DROP TABLE IF EXISTS `variation_product_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variation_product_detail` (
  `variationProductDetail_id` int(11) NOT NULL AUTO_INCREMENT,
  `variationProductId` int(11) DEFAULT NULL,
  `variationTypeId` int(11) DEFAULT NULL,
  `variationValue` varchar(50) DEFAULT NULL,
  `CreatedDate_UTC` datetime NOT NULL DEFAULT utc_timestamp(),
  `CreatedDate_ServerTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate_ServerTime` datetime DEFAULT NULL,
  `ModifiedDate_UTC` datetime DEFAULT NULL,
  PRIMARY KEY (`variationProductDetail_id`),
  UNIQUE KEY `uc_variation` (`variationProductId`,`variationTypeId`),
  KEY `FK_variationProduct_variationProductDetail` (`variationProductId`),
  KEY `FK_variation_product_detail_productVariationType` (`variationTypeId`),
  CONSTRAINT `FK_variationProduct_variationProductDetail` FOREIGN KEY (`variationProductId`) REFERENCES `variation_product` (`variationProductId`),
  CONSTRAINT `FK_variation_product_detail_productVariationType` FOREIGN KEY (`variationTypeId`) REFERENCES `product_variation_type` (`variationTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=534 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variation_product_detail`
--

LOCK TABLES `variation_product_detail` WRITE;
/*!40000 ALTER TABLE `variation_product_detail` DISABLE KEYS */;
INSERT INTO `variation_product_detail` VALUES
(12,5,2,'Black','2025-07-28 20:54:06','2025-07-29 02:24:06',NULL,NULL),
(13,6,2,'Silver','2025-07-28 20:54:06','2025-07-29 02:24:06',NULL,NULL),
(14,7,2,'Black','2025-07-28 20:55:38','2025-07-29 02:25:38',NULL,NULL),
(15,8,2,'Silver','2025-07-28 20:55:38','2025-07-29 02:25:38',NULL,NULL),
(16,9,2,'Black','2025-07-28 20:56:55','2025-07-29 02:26:55',NULL,NULL),
(17,10,2,'Silver','2025-07-28 20:56:55','2025-07-29 02:26:55',NULL,NULL),
(18,11,2,'Black','2025-07-28 20:58:14','2025-07-29 02:28:14',NULL,NULL),
(19,12,2,'Silver','2025-07-28 20:58:14','2025-07-29 02:28:14',NULL,NULL),
(20,13,2,'Black','2025-07-28 21:03:20','2025-07-29 02:33:20',NULL,NULL),
(21,14,2,'Silver','2025-07-28 21:03:20','2025-07-29 02:33:20',NULL,NULL),
(22,15,2,'Black','2025-07-28 21:05:08','2025-07-29 02:35:08',NULL,NULL),
(23,16,2,'Silver','2025-07-28 21:05:08','2025-07-29 02:35:08',NULL,NULL),
(24,17,2,'Black','2025-07-28 21:08:20','2025-07-29 02:38:20',NULL,NULL),
(25,18,2,'Silver','2025-07-28 21:08:20','2025-07-29 02:38:20',NULL,NULL),
(26,19,2,'Black','2025-07-28 21:10:17','2025-07-29 02:40:17',NULL,NULL),
(27,20,2,'Silver','2025-07-28 21:10:17','2025-07-29 02:40:17',NULL,NULL),
(28,21,2,'Black','2025-07-28 21:12:36','2025-07-29 02:42:36',NULL,NULL),
(29,22,2,'Silver','2025-07-28 21:12:36','2025-07-29 02:42:36',NULL,NULL),
(30,23,2,'Black','2025-07-28 21:15:20','2025-07-29 02:45:20',NULL,NULL),
(31,24,2,'Black','2025-07-28 21:16:09','2025-07-29 02:46:09',NULL,NULL),
(32,25,2,'Black','2025-07-28 21:16:54','2025-07-29 02:46:54',NULL,NULL),
(61,5,4,'3/4\"','2025-08-04 08:10:35','2025-08-04 13:40:35',NULL,NULL),
(62,6,4,'1\"','2025-08-04 08:10:35','2025-08-04 13:40:35',NULL,NULL),
(63,15,4,'3/4\"','2025-08-04 08:13:51','2025-08-04 13:43:51',NULL,NULL),
(64,16,4,'1\"','2025-08-04 08:13:51','2025-08-04 13:43:51',NULL,NULL),
(65,17,4,'3/4\"','2025-08-04 08:14:27','2025-08-04 13:44:27',NULL,NULL),
(66,18,4,'1\"','2025-08-04 08:14:27','2025-08-04 13:44:27',NULL,NULL),
(67,19,4,'3/4\"','2025-08-04 08:14:48','2025-08-04 13:44:48',NULL,NULL),
(68,20,4,'1\"','2025-08-04 08:14:48','2025-08-04 13:44:48',NULL,NULL),
(69,21,4,'3/4\"','2025-08-04 08:15:09','2025-08-04 13:45:09',NULL,NULL),
(70,22,4,'1\"','2025-08-04 08:15:09','2025-08-04 13:45:09',NULL,NULL),
(71,23,4,'3/4\"','2025-08-04 08:15:29','2025-08-04 13:45:29',NULL,NULL),
(72,24,4,'2\"','2025-08-04 08:15:49','2025-08-04 13:45:49',NULL,NULL),
(73,25,4,'3/4\"','2025-08-04 08:16:09','2025-08-04 13:46:09',NULL,NULL),
(74,7,4,'3/4\"','2025-08-04 08:16:42','2025-08-04 13:46:42',NULL,NULL),
(75,8,4,'1\"','2025-08-04 08:16:42','2025-08-04 13:46:42',NULL,NULL),
(76,9,4,'3/4\"','2025-08-04 08:17:06','2025-08-04 13:47:06',NULL,NULL),
(77,10,4,'1\"','2025-08-04 08:17:06','2025-08-04 13:47:06',NULL,NULL),
(78,11,4,'3/4\"','2025-08-04 08:17:26','2025-08-04 13:47:26',NULL,NULL),
(79,12,4,'1\"','2025-08-04 08:17:26','2025-08-04 13:47:26',NULL,NULL),
(80,13,4,'3/4\"','2025-08-04 08:17:44','2025-08-04 13:47:44',NULL,NULL),
(81,14,4,'1\"','2025-08-04 08:17:44','2025-08-04 13:47:44',NULL,NULL),
(85,28,1,'1/2\"','2025-08-25 09:45:42','2025-08-25 15:15:42',NULL,NULL),
(86,28,2,'Black','2025-08-25 09:45:42','2025-08-25 15:15:42',NULL,NULL),
(88,29,1,'1/3\"','2025-08-25 09:45:42','2025-08-25 15:15:42',NULL,NULL),
(89,29,2,'Brown','2025-08-25 09:45:42','2025-08-25 15:15:42',NULL,NULL),
(104,38,2,'Brown','2025-08-25 17:26:13','2025-08-25 22:56:13',NULL,NULL),
(105,38,4,'2\"','2025-08-25 17:26:13','2025-08-25 22:56:13',NULL,NULL),
(107,39,2,'Brown','2025-08-25 17:28:38','2025-08-25 22:58:38',NULL,NULL),
(108,39,4,'3/4\"','2025-08-25 17:28:38','2025-08-25 22:58:38',NULL,NULL),
(110,40,2,'Brown','2025-08-25 17:32:14','2025-08-25 23:02:14',NULL,NULL),
(111,40,4,'3/4\"','2025-08-25 17:32:14','2025-08-25 23:02:14',NULL,NULL),
(113,41,1,'1/2\"','2025-08-25 17:40:03','2025-08-25 23:10:03',NULL,NULL),
(114,41,2,'Black','2025-08-25 17:40:03','2025-08-25 23:10:03',NULL,NULL),
(116,42,1,'LARGE','2025-08-28 09:24:55','2025-08-28 14:54:55',NULL,NULL),
(117,43,1,'SMALL','2025-08-28 09:24:55','2025-08-28 14:54:55',NULL,NULL),
(118,44,1,'4R','2025-08-29 10:27:40','2025-08-29 15:57:40',NULL,NULL),
(119,45,1,'5R','2025-08-29 15:00:31','2025-08-29 20:30:31',NULL,NULL),
(120,46,1,'6R','2025-08-29 15:00:31','2025-08-29 20:30:31',NULL,NULL),
(121,47,1,'8R','2025-08-29 15:00:31','2025-08-29 20:30:31',NULL,NULL),
(122,48,1,'8x12','2025-08-29 15:00:31','2025-08-29 20:30:31',NULL,NULL),
(123,49,1,'10x12','2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL),
(124,50,1,'10x15','2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL),
(125,51,1,'12x15','2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL),
(126,52,1,'12x18','2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL),
(127,53,1,'16x20','2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL),
(128,54,1,'16x24','2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL),
(129,55,1,'20x30','2025-08-29 15:03:31','2025-08-29 20:33:31',NULL,NULL),
(130,56,1,'4R','2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL),
(131,57,1,'5R','2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL),
(132,58,1,'6R','2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL),
(133,59,1,'8R','2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL),
(134,60,1,'8x12','2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL),
(135,61,1,'10x12','2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL),
(136,62,1,'10x15','2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL),
(137,63,1,'12x15','2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL),
(138,64,1,'12x18','2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL),
(139,65,1,'16x20','2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL),
(140,66,1,'16x24','2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL),
(141,67,1,'20x30','2025-08-29 15:13:33','2025-08-29 20:43:33',NULL,NULL),
(142,68,1,'4R','2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL),
(143,69,1,'5R','2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL),
(144,70,1,'6R','2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL),
(145,71,1,'8R','2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL),
(146,72,1,'8x12','2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL),
(147,73,1,'10x12','2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL),
(148,74,1,'10x15','2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL),
(149,75,1,'12x15','2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL),
(150,76,1,'12x18','2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL),
(151,77,1,'16x20','2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL),
(152,78,1,'16x24','2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL),
(153,79,1,'20x30','2025-08-29 15:19:00','2025-08-29 20:49:00',NULL,NULL),
(199,99,1,'4R','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(200,99,2,'Black','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(202,100,1,'5R','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(203,100,2,'Black','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(205,101,1,'6R','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(206,101,2,'Black','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(208,102,1,'8R','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(209,102,2,'Black','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(211,103,1,'8x12','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(212,103,2,'Black','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(214,104,1,'10x12','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(215,104,2,'Black','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(217,105,1,'10x15','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(218,105,2,'Black','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(220,106,1,'12x15','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(221,106,2,'Black','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(223,107,1,'12x18','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(224,107,2,'Black','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(226,108,1,'16x20','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(227,108,2,'Black','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(229,109,1,'16x24','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(230,109,2,'Black','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(232,110,1,'20x30','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(233,110,2,'Black','2025-09-04 08:03:11','2025-09-04 13:33:11',NULL,NULL),
(235,111,2,'Black','2025-09-05 06:21:39','2025-09-05 11:51:39',NULL,NULL),
(236,111,4,'1\"','2025-09-05 06:21:39','2025-09-05 11:51:39',NULL,NULL),
(291,130,5,'Normal','2025-09-08 07:00:59','2025-09-08 12:30:59',NULL,NULL),
(294,131,5,'Urgent','2025-09-08 07:00:59','2025-09-08 12:30:59',NULL,NULL),
(297,132,5,'Urgent','2025-09-08 07:05:40','2025-09-08 12:35:40',NULL,NULL),
(298,132,6,'Studio','2025-09-08 07:05:40','2025-09-08 12:35:40',NULL,NULL),
(300,133,5,'Normal','2025-09-08 07:05:40','2025-09-08 12:35:40',NULL,NULL),
(301,133,6,'Customer','2025-09-08 07:05:40','2025-09-08 12:35:40',NULL,NULL),
(303,134,5,'Urgent','2025-09-08 07:09:21','2025-09-08 12:39:21',NULL,NULL),
(306,135,5,'Normal','2025-09-08 07:09:21','2025-09-08 12:39:21',NULL,NULL),
(309,136,5,'Normal','2025-09-08 07:12:50','2025-09-08 12:42:50',NULL,NULL),
(310,136,6,'Customer','2025-09-08 07:12:50','2025-09-08 12:42:50',NULL,NULL),
(312,137,5,'Normal','2025-09-08 07:12:50','2025-09-08 12:42:50',NULL,NULL),
(313,137,6,'Studio','2025-09-08 07:12:50','2025-09-08 12:42:50',NULL,NULL),
(315,138,5,'Urgent','2025-09-08 07:12:50','2025-09-08 12:42:50',NULL,NULL),
(316,138,6,'Studio','2025-09-08 07:12:50','2025-09-08 12:42:50',NULL,NULL),
(318,139,5,'Urgent','2025-09-08 07:15:46','2025-09-08 12:45:46',NULL,NULL),
(324,141,5,'Normal','2025-09-08 07:15:46','2025-09-08 12:45:46',NULL,NULL),
(327,142,5,'Urgent','2025-09-08 07:18:36','2025-09-08 12:48:36',NULL,NULL),
(333,144,5,'Normal','2025-09-08 07:18:36','2025-09-08 12:48:36',NULL,NULL),
(336,145,5,'Urgent','2025-09-08 07:21:30','2025-09-08 12:51:30',NULL,NULL),
(342,147,5,'Normal','2025-09-08 07:21:30','2025-09-08 12:51:30',NULL,NULL),
(356,152,5,'Urgent','2025-09-08 11:03:26','2025-09-08 16:33:26',NULL,NULL),
(362,154,5,'Normal','2025-09-08 11:03:26','2025-09-08 16:33:26',NULL,NULL),
(365,155,5,'Urgent','2025-09-08 11:22:04','2025-09-08 16:52:04',NULL,NULL),
(368,156,5,'Normal','2025-09-08 11:22:04','2025-09-08 16:52:04',NULL,NULL),
(374,158,5,'Urgent','2025-09-08 11:33:48','2025-09-08 17:03:48',NULL,NULL),
(380,160,5,'Normal','2025-09-08 11:33:48','2025-09-08 17:03:48',NULL,NULL),
(383,161,5,'Urgent','2025-09-08 11:46:06','2025-09-08 17:16:06',NULL,NULL),
(389,163,5,'Normal','2025-09-08 11:46:06','2025-09-08 17:16:06',NULL,NULL),
(392,164,2,'Black and White','2025-09-08 11:52:13','2025-09-08 17:22:13',NULL,NULL),
(393,165,2,'Color','2025-09-08 11:52:13','2025-09-08 17:22:13',NULL,NULL),
(394,166,1,'A4','2025-09-08 12:22:59','2025-09-08 17:52:59',NULL,NULL),
(396,37,1,'6x8','2025-09-08 18:04:32','2025-09-08 23:34:32',NULL,NULL),
(397,167,7,'4 Pieces','2025-09-09 06:13:57','2025-09-09 11:43:57',NULL,NULL),
(398,168,7,'Extra','2025-09-09 06:13:57','2025-09-09 11:43:57',NULL,NULL),
(399,169,7,'4 Pieces','2025-09-09 06:17:47','2025-09-09 11:47:47',NULL,NULL),
(400,170,7,'Extra','2025-09-09 06:17:47','2025-09-09 11:47:47',NULL,NULL),
(401,171,7,'4 pieces','2025-09-09 06:27:17','2025-09-09 11:57:17',NULL,NULL),
(402,172,7,'Extra','2025-09-09 06:27:17','2025-09-09 11:57:17',NULL,NULL),
(404,174,7,'6 Pieces','2025-09-09 06:51:45','2025-09-09 12:21:45',NULL,NULL),
(405,175,7,'Extra','2025-09-09 06:51:45','2025-09-09 12:21:45',NULL,NULL),
(406,176,5,'Normal','2025-09-09 08:49:15','2025-09-09 14:19:15',NULL,NULL),
(407,176,6,'Media Print','2025-09-09 08:49:15','2025-09-09 14:19:15',NULL,NULL),
(409,177,5,'Urgeent','2025-09-09 08:49:15','2025-09-09 14:19:15',NULL,NULL),
(410,177,6,'Media Print','2025-09-09 08:49:15','2025-09-09 14:19:15',NULL,NULL),
(412,178,1,'6x8','2025-09-09 10:01:08','2025-09-09 15:31:08',NULL,NULL),
(413,178,8,'Frame Only','2025-09-09 10:01:08','2025-09-09 15:31:08',NULL,NULL),
(415,37,8,'Print with Frame','2025-09-09 10:01:08','2025-09-09 15:31:08',NULL,NULL),
(416,179,1,'4R','2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL),
(417,179,8,'Print with Frame','2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL),
(419,180,1,'4R','2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL),
(420,180,8,'Frame Only','2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL),
(422,181,1,'5R','2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL),
(423,181,8,'Print with Frame','2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL),
(425,182,1,'5R','2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL),
(426,182,8,'Frame Only','2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL),
(428,183,1,'6R','2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL),
(429,183,8,'Print with Frame','2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL),
(431,184,1,'6R','2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL),
(432,184,8,'Frame Only','2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL),
(434,185,1,'6R','2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL),
(435,185,8,'Print with Frame','2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL),
(437,186,1,'6R','2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL),
(438,186,8,'Frame Only','2025-09-09 10:14:03','2025-09-09 15:44:03',NULL,NULL),
(440,187,1,'8x12','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(441,187,8,'Print with Frame','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(443,188,1,'8x12','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(444,188,8,'Frame Only','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(446,189,1,'10x12','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(447,189,8,'Print with Frame','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(449,190,1,'10x12','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(450,190,8,'Frame Only','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(452,191,1,'10x15','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(453,191,8,'Print with Frame','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(455,192,1,'10x15','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(456,192,8,'Frame Only','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(458,193,1,'12x15','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(459,193,8,'Print with Frame','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(461,194,1,'12x15','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(462,194,8,'Frame Only','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(464,195,1,'12x18','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(465,195,8,'Print with Frame','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(467,196,1,'12x18','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(468,196,8,'Frame Only','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(470,197,1,'16x20','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(471,197,8,'Print with Frame','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(473,198,1,'16x20','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(474,198,8,'Frame Only','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(476,199,1,'16x24','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(477,199,8,'Print with Frame','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(479,200,1,'16x24','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(480,200,8,'Frame Only','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(482,201,1,'20x30','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(483,201,8,'Print with Frame','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(485,202,1,'20x30','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(486,202,8,'Frame Only','2025-09-09 10:19:22','2025-09-09 15:49:22',NULL,NULL),
(488,203,1,'A4','2025-09-09 10:35:00','2025-09-09 16:05:00',NULL,NULL),
(489,204,1,'8X8','2025-09-09 10:35:00','2025-09-09 16:05:00',NULL,NULL),
(490,205,1,'6x6','2025-09-09 10:35:00','2025-09-09 16:05:00',NULL,NULL),
(491,206,1,'A4','2025-09-09 10:39:36','2025-09-09 16:09:36',NULL,NULL),
(497,210,7,'4P','2025-09-09 11:45:04','2025-09-09 17:15:04',NULL,NULL),
(498,211,7,'Extra','2025-09-09 11:45:04','2025-09-09 17:15:04',NULL,NULL),
(499,208,7,'Original','2025-09-09 11:45:56','2025-09-09 17:15:56',NULL,NULL),
(500,209,7,'Extra','2025-09-09 11:45:56','2025-09-09 17:15:56',NULL,NULL),
(501,213,5,'Urgent','2025-10-21 11:56:48','2025-10-21 17:26:48',NULL,NULL),
(502,214,5,'Normal','2025-10-21 12:04:57','2025-10-21 17:34:57',NULL,NULL),
(503,215,10,'Copy','2025-10-21 13:16:49','2025-10-21 18:46:49',NULL,NULL),
(504,216,10,'Normal','2025-10-21 13:16:49','2025-10-21 18:46:49',NULL,NULL),
(509,226,1,'SMALL','2026-01-21 15:34:18','2026-01-21 21:04:18',NULL,NULL),
(510,226,2,'RED','2026-01-21 15:34:18','2026-01-21 21:04:18',NULL,NULL),
(512,227,2,'BLUE','2026-01-21 15:34:18','2026-01-21 21:04:18',NULL,NULL),
(513,227,1,'SMALL','2026-01-21 15:34:18','2026-01-21 21:04:18',NULL,NULL),
(515,228,1,'SMALL','2026-01-21 15:57:15','2026-01-21 21:27:15',NULL,NULL),
(516,228,2,'RED','2026-01-21 15:57:15','2026-01-21 21:27:15',NULL,NULL),
(518,229,2,'BLUE','2026-01-21 15:57:15','2026-01-21 21:27:15',NULL,NULL),
(519,229,1,'SMALL','2026-01-21 15:57:15','2026-01-21 21:27:15',NULL,NULL),
(521,230,1,'SMALL','2026-01-21 16:10:53','2026-01-21 21:40:53',NULL,NULL),
(522,230,2,'RED','2026-01-21 16:10:53','2026-01-21 21:40:53',NULL,NULL),
(524,231,2,'BLUE','2026-01-21 16:10:53','2026-01-21 21:40:53',NULL,NULL),
(525,231,1,'SMALL','2026-01-21 16:10:53','2026-01-21 21:40:53',NULL,NULL),
(527,232,1,'SMALL','2026-01-21 16:12:25','2026-01-21 21:42:25',NULL,NULL),
(528,232,2,'RED','2026-01-21 16:12:25','2026-01-21 21:42:25',NULL,NULL),
(530,233,2,'BLUE','2026-01-21 16:12:25','2026-01-21 21:42:25',NULL,NULL),
(531,233,1,'SMALL','2026-01-21 16:12:25','2026-01-21 21:42:25',NULL,NULL),
(533,241,1,'W','2026-02-08 16:49:48','2026-02-08 22:19:48',NULL,NULL);
/*!40000 ALTER TABLE `variation_product_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_clpos_prod'
--

--
-- Dumping routines for database 'db_clpos_prod'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `IsDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `IsDate`(input VARCHAR(255)
) RETURNS int(11)
    DETERMINISTIC
if STR_TO_DATE(input, '%Y-%m-%d') IS NOT NULL then
return true;
else
return false;
end if ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `isNumeric` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `isNumeric`(input VARCHAR(255)
) RETURNS int(11)
    DETERMINISTIC
RETURN input REGEXP '^-?[0-9]+\\.?[0-9]*$' ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculation_CalculateLineTotals` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculation_CalculateLineTotals`(
    IN p_unitPrice DECIMAL(10, 2),
    IN p_qty INT,
    IN p_lineTaxRate DECIMAL(5, 2),
    IN p_lineDiscountAmount DECIMAL(10, 2),  
    OUT p_grossAmount DECIMAL(10, 2),
    OUT p_netAmount DECIMAL(10, 2),
    OUT p_lineTaxAmount DECIMAL(10, 2)
)
BEGIN
    
    SET p_grossAmount = p_unitPrice * p_qty;

    
    SET p_netAmount = p_grossAmount - p_lineDiscountAmount;

    
 SET p_lineTaxAmount = p_netAmount * (p_lineTaxRate/100);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculation_CalculateOrderTotal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculation_CalculateOrderTotal`(
    IN p_subTotal DECIMAL(10, 2),
    IN p_orderDiscountAmount DECIMAL(10, 2),
    IN p_overallTaxRate DECIMAL(5, 2),
    IN p_servicechargeRate DECIMAL(5, 2),
   IN p_totalLineTax DECIMAL(10, 2),
    OUT p_adjusted_subtotal DECIMAL(10, 2),
    OUT p_overall_TaxAmount DECIMAL(10, 2),
    OUT p_servicecharge DECIMAL(10, 2),
    OUT p_grandTotal DECIMAL(10, 2)
)
BEGIN

    
    SET p_adjusted_subtotal = p_subTotal - p_orderDiscountAmount;
    
    
    SET p_overall_TaxAmount = (p_overallTaxRate/100) * p_adjusted_subtotal;
    
    
    SET p_servicecharge = p_servicechargeRate * p_adjusted_subtotal;
    
    
    SET p_grandTotal = p_adjusted_subtotal + p_totalLineTax + p_overall_TaxAmount + p_servicecharge;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `category_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `category_delete`(
    IN p_categoryId INT, 
    IN p_UserLogID INT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN
  
    START TRANSACTION;
    
    SET p_OutputMessage = 'null';
    
    
    
     if not exists (select * from category where categoryId=p_categoryId) then
		set p_OutputMessage='category is not exists';
        set p_ResponseStatus='failed';
        leave sp;
	end if;
      
	
        DELETE FROM category WHERE categoryId = p_categoryId;
        SET p_ResponseStatus = 'success';
        SET p_OutputMessage = 'Deleted Successfully.';


    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `category_dropdown_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `category_dropdown_select`(
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),

    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

SELECT categoryId as id,categoryName as displayName FROM category;


set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `category_insert_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `category_insert_update`(
    IN p_tableID INT,
    IN p_categoryName VARCHAR(100),
    IN p_saveType VARCHAR(1),
    IN p_userLogID INT,
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000),
    out p_categoryId_out int
)
sp: BEGIN

	      DECLARE err_message VARCHAR(255);
     
	   DECLARE EXIT HANDLER FOR SQLEXCEPTION
       begin
	        ROLLBACK;
            
            GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
            
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
        END;
       
	
    START TRANSACTION;
        
	if (p_tableID<1) then
		set p_OutputMessage='Invalid tableId';
        set p_ResponseStatus='failed';
       rollback;
        leave sp;
	end if;
        
    IF p_SaveType = 'I' THEN

 if exists (select * from category where categoryName=p_categoryName) then
		set p_OutputMessage='category Name already exists';
        set p_ResponseStatus='failed';
        rollback;
        leave sp;
end if;

    INSERT INTO category (categoryId ,categoryName) VALUES (p_tableID,p_categoryName);

SET p_categoryId_out = LAST_INSERT_ID();

        SET p_ResponseStatus = 'success';
        SET p_OutputMessage = 'Added Successfully.';
        
    ELSEIF p_SaveType = 'U' THEN
    


	if exists (select * from category where categoryName=p_categoryName
    and categoryId!=p_tableID) then
		set p_OutputMessage='categoryName already exists u';
        set p_ResponseStatus='failed';
        rollback;
        leave sp;
        end if;
        

UPDATE category SET `categoryName`=p_categoryName WHERE categoryId=p_tableID;

	SET p_ResponseStatus = 'success';
	SET p_OutputMessage = 'Updated Successfully.';

    END IF;
    
      if(p_tableID is not null) then  SET p_categoryId_out=p_tableID; end if;
      
    COMMIT;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `category_register_menu_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `category_register_menu_select`(
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),

    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN



SELECT categoryId, categoryName
FROM (
    SELECT -1 AS categoryId, 'All' AS categoryName, 0 AS sortOrder


    UNION ALL
    SELECT categoryId, categoryName, 2 AS sortOrder FROM category where isHiddenFromPOSMenu=0 
) AS categories
ORDER BY sortOrder, categoryName;




set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `category_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `category_select`(
	in p_categoryId int,
	IN p_Skip INT,
    IN p_Limit INT,
    IN p_UserLogID INT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
	OUT p_TotalRows INT
)
sp: BEGIN


DECLARE _PagingQuery VARCHAR(1000);
DECLARE _filter varchar(1000);

SET _filter = ' WHERE 1=1 ';

set _PagingQuery='';
IF p_Skip IS NOT NULL AND p_Limit IS NOT NULL THEN
    SET _PagingQuery = CONCAT(' LIMIT ', p_Skip, ', ', p_Limit);
    
ELSEIF p_Skip IS NOT NULL AND p_Limit IS NULL THEN
    SET p_ResponseStatus = 'invalid';
    SET p_OutputMessage = 'The _Limit parameter is not passed or set _Skip parameter to null for unlimited data.';
	leave sp;
    
ELSEIF p_Skip IS NULL AND p_Limit IS NOT NULL THEN
    SET p_ResponseStatus = 'invalid';
    SET p_OutputMessage = 'The _Skip parameter is not passed or set _Limit parameter to null for unlimited data.';
	leave sp;
END IF;

   IF p_categoryId IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND i.categoryId = ', p_categoryId);
    END IF;
   

SET @_query = CONCAT('SELECT categoryId,categoryName FROM category as i ',_filter,
       ' ORDER BY categoryName ASC ',
_PagingQuery);

	
	PREPARE stmt FROM @_query;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;


    SET @queryTotal = CONCAT('SELECT COUNT(categoryId) INTO @totalRows FROM category as i ', _filter);
        
    PREPARE stmt FROM @queryTotal;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    
    SET p_TotalRows = @totalRows;

set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `checkNewOrderReciptAvailability` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkNewOrderReciptAvailability`(
  IN p_OrderId INT,

    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

SELECT oh.`orderId`,`orderNo`,`oh`.`isVoided`,`oh`.`userLogId`,`oh`.`dc_CustomerId`,
    `oh`.`sessionId`,`oh`.`createdDate_UTC`,`oh`.`createdDate_ServerTime`,`oh`.`terminalId`,
    `oh`.`customerId`,`oh`.`dc_TerminalId`,`oh`.`storeId`,`oh`.`dc_StoreId`,`oh`.`countryId`,
    `oh`.`currencyId`,`oh`.`primaryLanguageId`,u.displayName as displayUserName,c.customerName,c.customerCode,
    curr.currencyName,curr.currencyCode,curr.symbol,
br.storeName,br.storeCode,br.address,br.city,br.province,br.emailAddress,br.tel1,br.tel2,
osp.grossAmount_total,osp.lineDiscountAmount_total,osp.overallDiscountAmount,all_DiscountAmount_total,subTotal,
adjusted_subtotal,grandTotal,
lineTaxAmount_total,overall_taxAmount,lineTaxAmount_total+overall_taxAmount as totalTaxAmount,
CAST(oh.isVoided AS UNSIGNED) as isVoided,dt.terminalName,du.displayName,ssd.sessionName
FROM `order_header` as oh inner join session_start_details as sed ON oh.sessionId=sed.sessionId
left outer join dc_customer as c on oh.dc_customerid=c.dc_customerid
 inner join dc_user_registration as u ON oh.dc_userId=u.dc_userId
 inner join currency as curr ON oh.currencyId=curr.currencyId
 inner join dc_store as br ON oh.dc_storeId=br.dc_storeId
 inner join order_summary_processed as osp ON oh.orderId=osp.orderId
 inner join dc_terminal as dt ON oh.dc_terminalId=dt.dc_terminalId
 inner join dc_user_registration as du ON oh.dc_userId=du.dc_userId
 inner join session_start_details as ssd ON oh.sessionId=ssd.sessionId
where oh.OrderId=p_OrderId;


SELECT `od`.`orderDetailId`,`od`.`orderID`,`od`.`qty`,`od`.`createdDate_ServerTime`,`od`.`createdDate_UTC`,`od`.`productId`,p.productName,p.productNo,`od`.`unitPrice`,
    CASE WHEN `od`.`isReturned` = 1 THEN TRUE ELSE FALSE END AS isReturned,
`od`.`dc_productId`,`od`.`grossAmount`,`od`.`netAmount`,mu.measurementUnitName,
ld.discountValue,dt.typeName as discountTypeName,ld.discountAmount
FROM `order_details` as od inner join measurement_unit as mu on od.MeasurementUnitId=mu.MeasurementUnitId
inner join dc_product as p ON od.dc_productId=p.dc_productId
left outer join order_line_discount as ld ON od.orderDetailId=ld.orderDetailId
left outer join discount_type as dt ON ld.discountTypeId=dt.discountTypeId
where od.OrderId=p_OrderId;

SELECT `op`.`paymentId`,`op`.`orderId`,`op`.`methodId`,`op`.`amountPaid`,`op`.`paymentDate_UTC`,
cp.cardHolderName,cp.cardLastFourDigits,cp.cardExpirationMonth,cp.cardExpirationYear,cahp.balanceAmount,cahp.receivedAmount,pm.methodName,crdtpe.cardTypeName,
cahp.receivedAmount
FROM `order_payments` as op
inner join payment_methods as pm on op.MethodId=pm.MethodId
 left outer join cash_payments as cahp ON op.paymentId=cahp.paymentId
left outer join card_payments as cp ON op.paymentId=cp.paymentId
left outer join card_types as crdtpe on cp.CardTypeId=crdtpe.CardTypeId
 where op.orderId=p_OrderId;


set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CompareTables` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CompareTables`(
    IN p_PrimaryTableName VARCHAR(255),
    IN p_DCTableName VARCHAR(255),
    IN p_PrimaryKeyColumnName VARCHAR(255),
    IN p_ExcludingColumnName VARCHAR(255)
)
BEGIN
    SET @sql = CONCAT('SELECT * FROM ', p_PrimaryTableName, ' AS p');
    SET @sql = CONCAT(@sql, ' INNER JOIN ', p_DCTableName, ' AS dc ON p.', p_PrimaryKeyColumnName, ' = dc.', p_PrimaryKeyColumnName);
    SET @sql = CONCAT(@sql, ' WHERE p.', p_PrimaryKeyColumnName, ' = p_TerminalId');
    SET @sql = CONCAT(@sql, ' AND (');
    
    
    SELECT GROUP_CONCAT(
        '(', 'p.', COLUMN_NAME, ' IS NULL AND dc.', COLUMN_NAME, ' IS NULL) OR (p.', COLUMN_NAME, ' = dc.', COLUMN_NAME, ')'
    )
    INTO @conditions
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = p_PrimaryTableName AND COLUMN_NAME != p_ExcludingColumnName;
    
    SET @sql = CONCAT(@sql, @conditions);
    SET @sql = CONCAT(@sql, ')');
    
    
    PREPARE final_sql FROM @sql;
    EXECUTE final_sql;
    DEALLOCATE PREPARE final_sql;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `contact_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `contact_delete`(
    IN p_CustomerId INT,
    
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    IN p_IsConfirm bit,
    
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN
  
    START TRANSACTION;
    
    SET p_OutputMessage = 'null';
    
    
    
     if not exists (select * from contact where contactId=p_CustomerId) then
		set p_OutputMessage='CustomerId is not exists';
        set p_ResponseStatus='failed';
        leave sp;
	end if;
    
    IF p_IsConfirm is null or p_IsConfirm=0 THEN
        SET p_ResponseStatus = 'confirm';
        SET p_OutputMessage = 'Are you sure you want to delete this customer?.';
        leave sp;
      END IF;
      
	
        DELETE FROM contact WHERE contactId = p_CustomerId;
        SET p_ResponseStatus = 'success';
        SET p_OutputMessage = 'Deleted Successfully.';


    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `contact_insert_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `contact_insert_update`(
    IN p_tableID INT,
    IN p_contactTypeId int,
    IN p_ContactName VARCHAR(100),
    IN p_Email VARCHAR(50),
    IN p_Mobile VARCHAR(15),
    IN p_Tel  VARCHAR(15),
	IN p_Remark  VARCHAR(200),
    
    IN p_SaveType VARCHAR(1),
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    
    IN p_IsConfirm BIT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
    OUT p_contactCode VARCHAR(10),
    OUT p_contactId int
)
sp: BEGIN

	      DECLARE err_message VARCHAR(255);
     
	   DECLARE EXIT HANDLER FOR SQLEXCEPTION
       begin
	        ROLLBACK;
            
            GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
            
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
        END;
       
	
    START TRANSACTION;
        
	if (p_tableID<1) then
		set p_OutputMessage='Invalid tableId';
        set p_ResponseStatus='failed';
       rollback;
        leave sp;
	end if;
        
    IF p_SaveType = 'I' THEN

 if exists (select * from contact where ContactName=p_ContactName) then
		set p_OutputMessage='Contact Name already exists';
        set p_ResponseStatus='failed';
        rollback;
        leave sp;
end if;

    INSERT INTO contact
    (contactId,`ContactName`,`Email`,`Mobile`,`Tel`,`Remark`,contactTypeId,UserLogID)
VALUES (p_tableID,p_ContactName, p_Email, p_Mobile, p_Tel,p_Remark,p_contactTypeId, p_UserLogID );

SET @_contactId = LAST_INSERT_ID();
set p_contactId=@_contactId;
SET @contactCode = LPAD(@_contactId, 5, '0');

UPDATE contact SET `ContactCode` =@contactCode WHERE contactId=@_contactId;
set p_contactCode=@contactCode;

        SET p_ResponseStatus = 'success';
        SET p_OutputMessage = 'Added Successfully.';
        
    ELSEIF p_SaveType = 'U' THEN
    
	if not exists (select * from contact where contactId=p_tableID) then
		set p_OutputMessage='Invalid contact id';
        set p_ResponseStatus='failed';
        rollback;
        leave sp;
	end if;
    

	if exists (select * from contact where ContactName=p_ContactName
    and contactId!=p_tableID) then
		set p_OutputMessage='ContactName already exists u';
        set p_ResponseStatus='failed';
        rollback;
        leave sp;
        end if;
        
SET p_contactCode =(select ContactCode from contact where contactId=p_tableID);
         
  UPDATE `contact` SET
`ContactName` = p_ContactName,
`Email` =p_Email,`Mobile` =p_Mobile,`Tel` =p_Tel,contactTypeId=p_contactTypeId,
`Remark` =p_Remark,
ModifiedDate_ServerTime = CURRENT_TIME(),ModifiedDate_UTC = UTC_TIMESTAMP(),UserLogID  =p_UserLogID
WHERE `contactId` =p_tableID;

	SET p_ResponseStatus = 'success';
	SET p_OutputMessage = 'Updated Successfully.';

    END IF;
    
      if(p_tableID is not null) then  SET p_contactId=p_tableID; end if;
      
    COMMIT;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `contact_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `contact_select`(
    IN p_ContactId INT,
    IN p_contactTypeId VARCHAR(255), 
    IN p_ContactCode VARCHAR(50),
    IN p_ContactName VARCHAR(100),
    IN p_Email VARCHAR(50),
    IN p_Mobile VARCHAR(15),
    IN p_Tel VARCHAR(15),
    
    IN p_SearchByKeyword BIT,
    IN p_Skip INT,
    IN p_Limit INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),

    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
    OUT p_TotalRows INT
)
sp: BEGIN


DECLARE _PagingQuery VARCHAR(1000);
DECLARE _filter VARCHAR(1000);

IF (p_contactTypeId IS NULL OR p_contactTypeId = '') THEN
    SET p_ResponseStatus = 'invalid';
    SET p_OutputMessage = 'At least one contactTypeId must be provided.';
    LEAVE sp;
END IF;

SET _filter = ' WHERE 1=1 ';

SET _PagingQuery = '';
IF p_Skip IS NOT NULL AND p_Limit IS NOT NULL THEN
    SET _PagingQuery = CONCAT(' LIMIT ', p_Skip, ', ', p_Limit);
ELSEIF p_Skip IS NOT NULL AND p_Limit IS NULL THEN
    SET p_ResponseStatus = 'invalid';
    SET p_OutputMessage = 'The _Limit parameter is not passed or set _Skip parameter to null for unlimited data.';
    LEAVE sp;
ELSEIF p_Skip IS NULL AND p_Limit IS NOT NULL THEN
    SET p_ResponseStatus = 'invalid';
    SET p_OutputMessage = 'The _Skip parameter is not passed or set _Limit parameter to null for unlimited data.';
    LEAVE sp;
END IF;

IF p_SearchByKeyword = 0 THEN
    IF p_ContactId IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND i.contactID = ', p_ContactId);
    END IF;

    IF p_contactTypeId IS NOT NULL AND p_contactTypeId != '' THEN
        SET _filter = CONCAT(_filter, ' AND FIND_IN_SET(i.contactTypeId, ''', p_contactTypeId, ''') > 0');
    END IF;

    IF p_ContactName IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND i.contactName LIKE ''%', p_ContactName, '%''');
    END IF;

    IF p_ContactCode IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND i.contactCode LIKE ''%', p_ContactCode, '%''');
    END IF;

    IF p_Email IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND i.Email LIKE ''%', p_Email, '%''');
    END IF;

    IF p_Mobile IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND i.Mobile LIKE ''%', p_Mobile, '%''');
    END IF;
ELSE
    IF p_ContactId IS NOT NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'CustomerId is not supported for keyword search.';
        LEAVE sp;
    END IF;

    IF p_ContactName IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND i.contactName LIKE ''%', p_ContactName, '%''');
    END IF;

    IF p_ContactCode IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND i.contactCode LIKE ''%', p_ContactCode, '%''');
    END IF;

    IF p_Email IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND i.Email LIKE ''%', p_Email, '%''');
    END IF;

    IF p_Mobile IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND i.Mobile LIKE ''%', p_Mobile, '%''');
    END IF;
END IF;

SET @_query = CONCAT('SELECT contactId, contactCode,
    contactName, email, mobile, tel, i.contactTypeId, ct.contactTypeName, remark, createdDate_UTC,
    modifiedDate_UTC, userLogID FROM contact i 
    INNER JOIN contact_type ct ON i.contactTypeId = ct.contactTypeId ', _filter, _PagingQuery);


PREPARE stmt FROM @_query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


SET @queryTotal = CONCAT('SELECT COUNT(contactId) INTO @totalRows FROM contact as i ', _filter);

PREPARE stmt FROM @queryTotal;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET p_TotalRows = @totalRows;

SET p_ResponseStatus = 'success';
SET p_OutputMessage = 'Loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `customProduct_snapshot_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `customProduct_snapshot_insert`(
   IN p_productDescription varchar(200),
   in p_unitPrice decimal(10,2),
   OUT p_ss_allProductId INT
)
sp:begin
	
	 
	declare v_ss_allProductId int;
      DECLARE err_message VARCHAR(255);
      
     
     
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
       begin
	        ROLLBACK;
            
            GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
            
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
        END;
   

   
    START TRANSACTION;
		   
		        INSERT INTO snapshot_all_product (allProductId,
		            ProductId, productTypeId,  ProductNo,  ProductName,productDescription, unitPrice
		            ,snshot_CreatedDate_UTC, snshot_CreatedDate_ServerTime
		        )
		        
		        SELECT  null,null,null,  null,null,  p_productDescription, p_unitPrice, utc_timestamp(), current_timestamp();
		
		    SET   v_ss_allProductId=LAST_INSERT_ID();

  
  set p_ss_allProductId=v_ss_allProductId;
 
    COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dashboard_details_Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dashboard_details_Select`(
	IN p_SessionId INT,
       IN p_userLogId INT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

	
 declare v_storeId int;
	
	declare v_outOfStock int;
declare v_inStock decimal(10,2);
declare v_lowStock decimal(10,2);
declare v_expiredStock decimal(10,2);

declare  v_utcOffset int;


set v_utcOffset=(select utcOffset from system_info limit 1);

	
	 set v_storeId=(select st.storeId from session_period sp inner join store_terminal_user st on sp.terminalId=st.terminalId
	 where sp.sessionId=p_SessionId);
	
	

	call  sessionDetails_Select (p_SessionId,p_ResponseStatus,p_OutputMessage);
	

SELECT 
    noOfTransactions, 
    noOfVoidedTransactions, 
    noOfCustomers,  
    noOfProductsSold, 
    noOfProductsReturned,  

    productSales, 
    serviceFees, 
    totalSales, 
    totalDiscounts, 
    totalReturns, 
    totalRefunds,  
    totalTax,

    
    CASE 
        WHEN productSales = 0 THEN 0                 
        WHEN (productSales - netSales) = 0 THEN 0       
        ELSE ((productSales - netSales) / productSales) * 100  
    END AS grossMargin,

    netCashSales, 
    netCardSales, 
    averageTransactionValueNet, 
    averageTransactionValueGross, 
    openingCashAmount,  
    cashAdditions, 
    cashRemovals, 
    expectedCash,  
    noOfUnVoidedTransactions

FROM session_details_summary_temp where sessionId=p_SessionId;


	




SELECT
  DAY(DATE_ADD(oh.CreatedDate_UTC, INTERVAL v_utcOffset MINUTE)) AS Day,
  SUM(od.GrossAmount) AS dailyGrossRevenue,
  SUM(od.NetAmount) AS dailyNetRevenue,
  SUM(od.GrossAmount - (IFNULL(od.unitCost, 0) * od.Qty)) AS dailyGrossProfit
FROM
  order_header oh
JOIN
  order_details od ON oh.OrderId = od.OrderID
where oh.storeId=v_storeId and
  oh.isVoided = 0 
  AND MONTH(DATE_ADD(oh.CreatedDate_UTC, INTERVAL v_utcOffset MINUTE)) =
      MONTH(DATE_ADD(UTC_TIMESTAMP(), INTERVAL v_utcOffset MINUTE))
  AND YEAR(DATE_ADD(oh.CreatedDate_UTC, INTERVAL v_utcOffset MINUTE)) =
      YEAR(DATE_ADD(UTC_TIMESTAMP(), INTERVAL v_utcOffset MINUTE))
GROUP BY
  Day
ORDER BY
  Day;




SELECT
  MONTH(DATE_ADD(order_header.CreatedDate_UTC, INTERVAL v_utcOffset MINUTE)) AS Month,
  SUM(order_details.GrossAmount) AS monthlyGrossRevenue,
  SUM(order_details.NetAmount) AS monthlyNetRevenue,
  SUM(order_details.GrossAmount - (IFNULL(order_details.unitCost,0) * order_details.Qty)) AS monthlyGrossProfit
FROM
  order_header
JOIN
  order_details ON order_header.OrderId = order_details.OrderID
where order_header.storeId=v_storeId and 
  order_header.isVoided = 0  
  AND YEAR(DATE_ADD(order_header.CreatedDate_UTC, INTERVAL v_utcOffset MINUTE)) =
      YEAR(DATE_ADD(UTC_TIMESTAMP(), INTERVAL v_utcOffset MINUTE))
GROUP BY
  Month
ORDER BY
  Month;




SELECT
  payment_methods.MethodName AS method,
  COUNT(order_payments.PaymentId) AS transactions,
  SUM(order_payments.AmountPaid) AS amount
FROM
  order_payments
JOIN
  order_header ON order_header.OrderId = order_payments.OrderId
JOIN
  payment_methods ON payment_methods.MethodId = order_payments.MethodId
where order_header.storeId=v_storeId and 
  order_header.isVoided = 0  
    AND order_header.SessionId=p_SessionId
GROUP BY
  payment_methods.MethodName
ORDER BY
  amount DESC  
LIMIT 0, 200;  





SELECT 0;





SELECT 0;





















SELECT
    
    (
        SELECT COUNT(*)
        FROM store_inventory_product sip
        INNER JOIN non_serialized_item nsi ON sip.inventoryId = nsi.inventoryId
        WHERE nsi.StockQty > 0
    ) AS inStock,

    
    (
        SELECT COUNT(*)
        FROM store_inventory_product sip
        inner JOIN non_serialized_item nsi ON sip.inventoryId = nsi.inventoryId
        WHERE nsi.StockQty <= 0
    ) AS outOfStock,

    
    (
        SELECT COUNT(*)
        FROM store_inventory_product sip
        INNER JOIN non_serialized_item nsi ON sip.inventoryId = nsi.inventoryId
        INNER JOIN inventory i ON sip.inventoryId = i.inventoryId
        WHERE nsi.StockQty > 0
          AND nsi.StockQty <= i.reorderLevel
    ) AS lowStock,

    
    
        (
        SELECT COUNT(*)
        FROM store_inventory_product sip
        INNER JOIN non_serialized_item nsi ON sip.inventoryId = nsi.inventoryId
        INNER JOIN inventory i ON sip.inventoryId = i.inventoryId
        WHERE nsi.StockQty > 0 and
           expDate >= DATE_ADD(CURDATE(), INTERVAL 14 DAY)
    ) AS nonExpiredSafeStock,
    (
        SELECT COUNT(*)
        FROM store_inventory_product sip
        INNER JOIN non_serialized_item nsi ON sip.inventoryId = nsi.inventoryId
        INNER JOIN inventory i ON sip.inventoryId = i.inventoryId
        WHERE nsi.StockQty > 0
          AND nsi.expDate <= CURDATE()  AND expDate <= DATE_ADD(CURDATE(), INTERVAL 14 DAY)
    ) AS expiringSoon,

    
        (
        SELECT COUNT(*)
        FROM store_inventory_product sip
        INNER JOIN non_serialized_item nsi ON sip.inventoryId = nsi.inventoryId
        INNER JOIN inventory i ON sip.inventoryId = i.inventoryId
        WHERE nsi.StockQty > 0
          AND nsi.expDate <= CURDATE()
    ) AS expiredStock;










set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_adjustmentReasons_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_adjustmentReasons_select`(
 IN p_adjustmentTypeId INT
)
sp: BEGIN


SELECT adjustmentReasonId as id ,adjustmentReasonName as displayName from stock_adjustment_reason sar
where adjustmentTypeId=p_adjustmentTypeId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_brand_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_brand_select`(
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),

    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

SELECT BrandId as id ,BrandName as displayName FROM brand ;


set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_contactType_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_contactType_select`(
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),

    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

SELECT contactTypeId as id ,contactTypeName as displayName FROM contact_type ;


set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_currencies_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_currencies_select`(
      IN p_UserLogID INT
)
sp: BEGIN

SELECT currencyId as id ,concat(currencyName,' (',currencyCode,' / ', ifnull(symbol,'')  ,')') as displayName from currency order by currencyName;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_customer_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_customer_select`(
      IN p_UserLogID INT
)
sp: BEGIN

SELECT contactId as id ,contactName as displayName FROM contact where contactTypeId in(1,3);


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_department_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_department_select`(
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),

    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

SELECT Departmentid as id ,DepartmentName as displayName FROM department;


set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_order_voiding_reason_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_order_voiding_reason_select`(
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),

    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

SELECT order_voiding_reason_id as id ,ReasonName as displayName,Description as description FROM order_voiding_reason;


set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_session_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_session_select`(
      IN p_descOrder VARCHAR(5),
      IN p_storeId INT,
      IN p_UserLogID INT,
      IN p_UTC_Offset VARCHAR(50),
      IN p_PageName VARCHAR(50),
      OUT p_ResponseStatus VARCHAR(50),
      OUT p_OutputMessage VARCHAR(1000)
)
BEGIN
    DECLARE v_query VARCHAR(1000);

    SET v_query = 'SELECT sp.sessionId AS id, sessionName AS displayName FROM session_period sp inner join store_terminal_user st ON sp.terminalId=st.terminalId ';
    
    
    IF p_storeId IS NOT NULL THEN
        SET v_query = CONCAT(v_query, 'WHERE st.storeId = ', p_storeId, ' ');
    END IF;
    
    
    IF p_descOrder = 'desc' THEN
        SET v_query = CONCAT(v_query, 'ORDER BY sp.sessionId DESC');
    ELSE
        SET v_query = CONCAT(v_query, 'ORDER BY sp.sessionId ASC');
    END IF;

    
    PREPARE stmt FROM v_query;
    EXECUTE stmt;

    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'loaded successfully';
    
    DEALLOCATE PREPARE stmt;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_stockEntry_voiding_reason_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_stockEntry_voiding_reason_select`(
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),

    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

SELECT voiding_reason_id as id ,ReasonName as displayName,Description as description FROM stockentry_voiding_reason;


set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_stores_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_stores_select`(
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),

    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

SELECT storeId as id ,concat(StoreCode,'-',StoreName) as displayName FROM store ;


set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_supplier_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_supplier_select`(
      IN p_UserLogID INT
)
sp: BEGIN

SELECT contactId as id ,contactName as displayName FROM contact where contactTypeId in(2,3);


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_teminalsByUserId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_teminalsByUserId`(
    IN p_UserId INT,
    in p_storeId int,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

select t.terminalId as id,t.terminalName  as displayName from store_terminal_user as ua 
inner join terminal as t on ua.TerminalId=t.TerminalId 
where ua.userId=p_UserId and ua.storeId=p_storeId;


set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `drp_userRole_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `drp_userRole_select`(
    IN p_UserLogID INT,

    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

SELECT userRoleId as id ,userRoleName as displayName FROM userrole;


set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `external_checkNewOrderReciptAvailability` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `external_checkNewOrderReciptAvailability`(
  IN p_TerminalId INT,

    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN


	declare v_orderId int;

	set v_orderId=(select orderId from externalreceiptprinting where terminalId=p_TerminalId);


 CALL lbposc_light.OrderReceipt_SelectByOrderId(v_orderId, 1, 1, 'p', @o_status,@o_message );

select v_orderId as printId;

set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `external_clearPrintingData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `external_clearPrintingData`(
  IN p_TerminalId INT,

    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

	if exists (select * from externalreceiptprinting where terminalId=p_TerminalId) then
 
set p_ResponseStatus='success';
set p_OutputMessage='cleared successfully';
else
set p_ResponseStatus='success';
set p_OutputMessage='Data was already cleared.';

end if;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getIsStockTrackedByAllProductId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getIsStockTrackedByAllProductId`(
  IN p_allProductId INT,
    IN p_StoreId INT,
    OUT p_isStockTracked bit
     )
sp: BEGIN


declare v_isStockTracked bit;

         SELECT CASE WHEN sip.inventoryId IS not NULL THEN true ELSE false END INTO v_isStockTracked
        FROM store_inventory_product sip
        WHERE sip.allProductId = p_allProductId 
          AND sip.StoreId = p_StoreId;
 

         set p_isStockTracked= v_isStockTracked;
         
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProductStockUpdateOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getProductStockUpdateOrder`(
    IN p_productId INT,
    IN p_productTypeId INT
)
BEGIN
   
	SELECT 
    COALESCE(bop.sortType, 'batchQueueNumber') AS sortType,  
    COALESCE(bop.orderDirection, 'ASC') AS orderDirection    
FROM 
    product_stock_update_order psu
LEFT JOIN 
    batch_order_preference bop 
    ON psu.batchOrderPreferenceId = bop.id
WHERE 
    psu.productId = p_productId
    AND psu.productTypeId = p_productTypeId;

	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProductTypes_drp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getProductTypes_drp`(
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),

    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

SELECT productTypeId as id ,productTypeName as displayName FROM product_type pt;


set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getSingleStockBatchIdForReduction` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`remoteuser`@`%` PROCEDURE `getSingleStockBatchIdForReduction`(
    IN p_inventoryId INT,
    IN p_qty DECIMAL(10,2),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
    OUT p_stockBatchId INT
)
sp: BEGIN
    DECLARE v_totalStockQty DECIMAL(10,2) DEFAULT 0;
    DECLARE v_stockBatchId INT;
    DECLARE v_current_stock_qty DECIMAL(10,2);

    
    SELECT IFNULL(SUM(StockQty), 0) INTO v_totalStockQty
    FROM non_serialized_item 
    WHERE inventoryId = p_inventoryId;

    IF v_totalStockQty = 0 THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'No stock available for the specified inventory ID.';
        SET p_stockBatchId = NULL;
        LEAVE sp;
    END IF;

    
    IF v_totalStockQty < p_qty THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'Insufficient stock quantity available.';
        SET p_stockBatchId = NULL;
        LEAVE sp;
    END IF;

    
    SELECT stockBatchId, StockQty INTO v_stockBatchId, v_current_stock_qty
    FROM non_serialized_item
    WHERE inventoryId = p_inventoryId AND StockQty > 0
    ORDER BY batchQueueNumber ASC
    LIMIT 1;

    IF v_stockBatchId IS NULL THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'No batches with positive stock found.';
        SET p_stockBatchId = NULL;
        LEAVE sp;
    END IF;

    
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Sufficient stock quantity is available.';
    SET p_stockBatchId = v_stockBatchId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getStockInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getStockInfo`(
    IN p_inventoryId INT,
    IN p_showZeroStockQtyData BIT,
    out p_isSelectBatchManually bit
)
BEGIN
    DECLARE p_sortType VARCHAR(20);
    DECLARE p_orderDirection VARCHAR(4);
    DECLARE sql_query TEXT;

set p_isSelectBatchManually=false;

    
    SELECT 
        COALESCE(bop.sortType, 'batchQueueNumber') AS sortType,
        COALESCE(bop.orderDirection, 'ASC') AS orderDirection
    INTO 
        p_sortType, p_orderDirection
    FROM 
        inventory_stock_update_order psu
    LEFT JOIN 
        batch_order_preference bop 
        ON psu.batchOrderPreferenceId = bop.id
    WHERE 
        psu.inventoryId = p_inventoryId 
    LIMIT 1;

    
    IF p_sortType IS NULL OR p_orderDirection IS NULL THEN
        SET p_sortType = 'batchQueueNumber';
        SET p_orderDirection = 'ASC';
    END IF;

    
    SET sql_query = CONCAT(
        'SELECT 
            nsi.stockBatchId,
            nsi.StockQty AS qty,
            nsi.batchNumber AS batchNo,
            nsi.batchQueueNumber,
            nsi.expDate,
            nsi.prodDate,
            nsi.unitCost,
            nsi.unitPrice,
            CAST(nsi.isBatchReleased AS UNSIGNED) AS isBatchReleased,
            nsi.createdDate_utc,
            CASE 
                WHEN nsi.stockBatchId = (
                    SELECT stockBatchId 
                    FROM non_serialized_item 
                    WHERE inventoryId = ', p_inventoryId, ' AND StockQty > 0 
                    ORDER BY batchQueueNumber ASC 
                    LIMIT 1
                ) THEN 1 
                ELSE 0 
            END AS currentBatchFlag
        FROM 
            non_serialized_item nsi

        WHERE 
            nsi.inventoryId = ', p_inventoryId
    );

    
    IF p_showZeroStockQtyData = 1 THEN
        SET sql_query = CONCAT(sql_query, ' AND nsi.StockQty >= 0');
    ELSE
        SET sql_query = CONCAT(sql_query, ' AND nsi.StockQty > 0');
    END IF;

    
    SET sql_query = CONCAT(
        sql_query,
        ' ORDER BY ',
        CASE 
            WHEN p_sortType = 'batchQueueNumber' THEN 'nsi.batchQueueNumber'
            WHEN p_sortType = 'expDate' THEN 'nsi.expDate'
            ELSE 'nsi.batchQueueNumber'
        END, ' ',
        p_orderDirection
    );

    
    PREPARE stmt FROM sql_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getStockInfoBy_allProductId_storeId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getStockInfoBy_allProductId_storeId`(
    IN p_allProductId INT,
    IN p_storeId int
)
BEGIN
    DECLARE p_sortType VARCHAR(20);
    DECLARE p_orderDirection VARCHAR(4);
    DECLARE sql_query TEXT;


        SELECT 
            nsi.stockBatchId,
            nsi.StockQty AS qty,
            nsi.batchNumber AS batchNo,
            nsi.batchQueueNumber,
            nsi.batchDescription,
            nsi.expDate,
            nsi.prodDate,
            nsi.unitCost,
         
            CAST(nsi.isBatchReleased AS UNSIGNED) AS isBatchReleased,
            nsi.createdDate_utc
         
        FROM 
            non_serialized_item nsi inner join store_inventory_product sip on nsi.inventoryId=sip.inventoryId 

        where sip.allProductId=p_allProductId and sip.storeId=p_storeId;
           

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getSubProductListOfAssemblyProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getSubProductListOfAssemblyProduct`(
    IN p_allProductId INT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

    
    SELECT spd.allProductId_mat,
           sp.sku,
           p.productName AS productDescription,
           mu.measurementUnitName,
           spd.qty
    FROM sub_product_detail spd
    INNER JOIN all_product ap ON spd.allProductId_mat = ap.allProductId
    INNER JOIN single_product sp ON ap.singleProductId = sp.productId
    INNER JOIN product p ON sp.productId = p.productId
    INNER JOIN measurement_unit mu ON p.measurementUnitId = mu.measurementUnitId
    WHERE spd.allProductId = p_allProductId

    UNION ALL

    SELECT spd.allProductId_mat,
           vp.sku,
           CONCAT(pvari.productName, ' ', GROUP_CONCAT(vd.variationValue SEPARATOR ', ')) AS productDescription,
           mu.measurementUnitName,
           spd.qty
    FROM sub_product_detail spd
    INNER JOIN all_product ap ON spd.allProductId_mat = ap.allProductId
    INNER JOIN variation_product vp ON ap.variationProductId = vp.variationProductId
    INNER JOIN variation_product_detail vd ON vp.variationProductId = vd.variationProductId
    INNER JOIN product pvari ON vp.productId = pvari.productId
    INNER JOIN measurement_unit mu ON pvari.measurementUnitId = mu.measurementUnitId
    WHERE spd.allProductId = p_allProductId
    GROUP BY spd.allProductId_mat, vp.sku, pvari.productName, mu.measurementUnitName, spd.qty;

    
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'validated';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTerminalDetailslByTerminalId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTerminalDetailslByTerminalId`(
   IN p_TerminalId INT
)
BEGIN

SELECT terminalId, terminalName FROM terminal where TerminalId=p_TerminalId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTransferOrders` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTransferOrders`(
    IN p_sourceStoreId      INT,
    IN p_destinationStoreId INT,
    IN p_status             VARCHAR(50),
    IN p_Skip               INT,
    IN p_Limit              INT,
    OUT p_ResponseStatus    VARCHAR(50),
    OUT p_OutputMessage     VARCHAR(1000),
    OUT p_TotalRows         INT
)
sp: BEGIN
    DECLARE v_filter TEXT DEFAULT ' WHERE 1=1 ';
    DECLARE v_paging VARCHAR(100) DEFAULT '';

    
    IF (p_Skip IS NOT NULL AND p_Limit IS NULL) OR (p_Skip IS NULL AND p_Limit IS NOT NULL) THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage  = 'Both Skip and Limit must be provided.';
        LEAVE sp;
    END IF;

    
    IF p_sourceStoreId IS NOT NULL THEN
        SET v_filter = CONCAT(v_filter, ' AND t.sourceStoreId = ', p_sourceStoreId);
    END IF;
    IF p_destinationStoreId IS NOT NULL THEN
        SET v_filter = CONCAT(v_filter, ' AND t.destinationStoreId = ', p_destinationStoreId);
    END IF;
    IF p_status IS NOT NULL AND p_status != '' THEN
        SET v_filter = CONCAT(v_filter, ' AND t.status = ''', p_status, '''');
    END IF;

    
    SET @totalQuery = CONCAT('SELECT COUNT(*) INTO @totalRows FROM transfer_order t ', v_filter);
    PREPARE stmtTotal FROM @totalQuery;
    EXECUTE stmtTotal;
    DEALLOCATE PREPARE stmtTotal;
    SET p_TotalRows = @totalRows;

    
    IF p_Skip IS NOT NULL AND p_Limit IS NOT NULL THEN
        SET v_paging = CONCAT(' LIMIT ', p_Skip, ', ', p_Limit);
    END IF;

    SET @mainQuery = CONCAT('
        SELECT 
            t.transferOrderId, t.transferNo, t.transferDate, t.status, t.notes,
            s.storeName AS sourceStoreName, d.storeName AS destinationStoreName,
            t.createdDate_UTC
        FROM transfer_order t
        LEFT JOIN stores s ON t.sourceStoreId = s.storeId
        LEFT JOIN stores d ON t.destinationStoreId = d.storeId ', 
        v_filter, ' ORDER BY t.transferOrderId DESC ', v_paging);

    PREPARE stmtMain FROM @mainQuery;
    EXECUTE stmtMain;
    DEALLOCATE PREPARE stmtMain;

    SET p_ResponseStatus = 'success';
    SET p_OutputMessage  = 'List loaded successfully';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTransferOrder_byId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTransferOrder_byId`(
    IN p_transferOrderId INT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage  VARCHAR(1000)
)
sp: BEGIN

    
    IF NOT EXISTS (SELECT 1 FROM transfer_order WHERE transferOrderId = p_transferOrderId) THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage  = 'Transfer order not found.';
        LEAVE sp;
    END IF;

    
    SELECT 
        t.*,
        s.storeName AS sourceStoreName,
        d.storeName AS destinationStoreName
    FROM transfer_order t
    LEFT JOIN stores s ON t.sourceStoreId = s.storeId
    LEFT JOIN stores d ON t.destinationStoreId = d.storeId
    WHERE t.transferOrderId = p_transferOrderId;

    
    SELECT 
        td.transferOrderDetailId, td.allProductId, p.productName, p.sku,
        td.qty, td.batchNo, td.unitCost, td.sourceInventoryId, td.destinationInventoryId
    FROM transfer_order_detail td
    INNER JOIN all_product p ON td.allProductId = p.allProductId
    WHERE td.transferOrderId = p_transferOrderId;

    SET p_ResponseStatus = 'success';
    SET p_OutputMessage  = 'Order details loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getUserLogDetailsByUserLogId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getUserLogDetailsByUserLogId`(
    IN p_userLogId INT,
    OUT p_UserId INT,
    OUT p_LoginTime_UTC DATETIME,
    OUT p_LoginStatus VARCHAR(10),
    OUT p_IpAddress VARCHAR(45),
    OUT p_UserAgent VARCHAR(255),
    OUT p_SessionId VARCHAR(255),
    OUT p_AdditionalInfo TEXT,
    OUT p_utcOffset VARCHAR(10),
    OUT p_CreatedDate_UTC DATETIME,
    OUT p_CreatedDate_ServerTime DATETIME
)
BEGIN
    SELECT 
        UserId, 
        CreatedDate_UTC, 
        LoginStatus, 
        IpAddress, 
        UserAgent, 
        SessionId, 
        AdditionalInfo, 
        utcOffset, 
        CreatedDate_UTC, 
        CreatedDate_ServerTime 
    INTO 
        p_UserId, 
        p_LoginTime_UTC, 
        p_LoginStatus, 
        p_IpAddress, 
        p_UserAgent, 
        p_SessionId, 
        p_AdditionalInfo, 
        p_utcOffset, 
        p_CreatedDate_UTC, 
        p_CreatedDate_ServerTime
    FROM userlog
    WHERE userLogId = p_userLogId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getVariationProductDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getVariationProductDetails`(
    IN p_ProductId INT,
    IN p_storeId INT
)
BEGIN
    SELECT 
        vp.variationProductId, 
        sip.inventoryId, 
        sip.allProductId, 
        vp.unitPrice, 
        vp.taxPerc,
        (
            SELECT JSON_ARRAYAGG(
                JSON_OBJECT(
                    'variationTypeName', pvt.variationTypeName,
                    'variationValue', vpd.variationValue
                )
            ) 
            FROM variation_product_detail vpd 
            INNER JOIN product_variation_type pvt ON vpd.variationTypeId = pvt.variationTypeId
            WHERE vpd.variationProductId = vp.variationProductId
        ) AS variationValues,
        vp.sku, 
        vp.barcode,
        IFNULL((
            SELECT SUM(nsi.stockQty) 
            FROM non_serialized_item nsi 
            WHERE nsi.inventoryId = sip.inventoryId 
        ), 0) AS stockQty
    FROM 
        store_inventory_product sip 
    LEFT JOIN variation_product vp ON sip.variationProductId = vp.variationProductId 
    WHERE 
        vp.productId = p_ProductId 
        AND sip.storeId = p_storeId
    GROUP BY 
        sip.inventoryId, 
        vp.variationProductId, 
        sip.allProductId, 
        vp.unitPrice, 
        vp.sku, 
        vp.barcode,
        vp.taxPerc
    ORDER BY 
        vp.variationProductId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getVariationTypes_drp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getVariationTypes_drp`(
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),

    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

SELECT variationTypeId as id ,variationTypeName as displayName FROM product_variation_type pvt;


set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_DC_ProductIdByProductId_toRemove` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_DC_ProductIdByProductId_toRemove`(
   IN p_ProductId INT,
   OUT p_DC_ProductId INT
)
sp:BEGIN
   IF NOT EXISTS (SELECT * FROM product AS p WHERE p.ProductId = p_ProductId) THEN
      SET p_DC_ProductId = NULL;
      LEAVE sp;
   END IF;
   
   IF NOT EXISTS (
      SELECT * FROM product AS p
      INNER JOIN dc_product AS dp ON p.ProductId = dp.ProductId
      WHERE p.ProductId = p_ProductId
      AND (
         
         ((p.ProductId IS NULL AND dp.ProductId IS NULL) OR (p.ProductId = dp.ProductId))
         AND
         ((p.ProductName IS NULL AND dp.ProductName IS NULL) OR (p.ProductName = dp.ProductName))
         AND
         ((p.MeasurementUnitId IS NULL AND dp.MeasurementUnitId IS NULL) OR (p.MeasurementUnitId = dp.MeasurementUnitId))
         AND
         ((p.ProductNo IS NULL AND dp.ProductNo IS NULL) OR (p.ProductNo = dp.ProductNo))
         AND
         ((p.UnitPrice IS NULL AND dp.UnitPrice IS NULL) OR (p.UnitPrice = dp.UnitPrice))
             AND
         ((p.CostPrice IS NULL AND dp.CostPrice IS NULL) OR (p.CostPrice = dp.CostPrice))
         
                  AND
         ((p.BrandId IS NULL AND dp.BrandId IS NULL) OR (p.BrandId = dp.BrandId))
         
         AND
             ((p.DepartmentId IS NULL AND dp.DepartmentId IS NULL) OR (p.DepartmentId = dp.DepartmentId))
             

         AND
         ((p.UserLogId IS NULL AND dp.UserLogId IS NULL) OR (p.UserLogId = dp.UserLogId))
         AND
         ((p.ReorderLevel IS NULL AND dp.ReorderLevel IS NULL) OR (p.ReorderLevel = dp.ReorderLevel))
         AND
         ((p.Barcode IS NULL AND dp.Barcode IS NULL) OR (p.Barcode = dp.Barcode))
           AND
         ((p.TaxRate_perc IS NULL AND dp.TaxRate_perc IS NULL) OR (p.TaxRate_perc = dp.TaxRate_perc))
         AND
         ((p.CreatedDate_UTC IS NULL AND dp.CreatedDate_UTC IS NULL) OR (p.CreatedDate_UTC = dp.CreatedDate_UTC))
         AND
         ((p.CreatedDate_ServerTime IS NULL AND dp.CreatedDate_ServerTime IS NULL) OR (p.CreatedDate_ServerTime = dp.CreatedDate_ServerTime))
         AND
         ((p.ModifiedDate_ServerTime IS NULL AND dp.ModifiedDate_ServerTime IS NULL) OR (p.ModifiedDate_ServerTime = dp.ModifiedDate_ServerTime))
         AND
         ((p.ModifiedDate_UTC IS NULL AND dp.ModifiedDate_UTC IS NULL) OR (p.ModifiedDate_UTC = dp.ModifiedDate_UTC))
         
      )
   ) THEN
      INSERT INTO dc_product (`ProductId`, `ProductName`, `MeasurementUnitId`, `ProductNo`, `UnitPrice`,DepartmentId, `UserLogId`, `ReorderLevel`, `Barcode`, `CreatedDate_UTC`, `CreatedDate_ServerTime`, `ModifiedDate_ServerTime`, `ModifiedDate_UTC`)
      SELECT `ProductId`, `ProductName`, `MeasurementUnitId`, `ProductNo`, `UnitPrice`,DepartmentId, `UserLogId`, `ReorderLevel`, `Barcode`, `CreatedDate_UTC`, `CreatedDate_ServerTime`, `ModifiedDate_ServerTime`, `ModifiedDate_UTC`
      FROM product
      WHERE ProductId = p_ProductId;
      
      SET p_DC_ProductId = LAST_INSERT_ID();
   ELSE
      SET p_DC_ProductId = (SELECT MAX(DC_ProductId) FROM dc_product WHERE ProductId = p_ProductId);
   END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_DC_StoreIdByStoreId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_DC_StoreIdByStoreId`(
   IN p_StoreId int,
   OUT p_DC_StoreId int
)
sp: BEGIN

    
    IF NOT EXISTS (SELECT * FROM store AS s WHERE s.storeId = p_StoreId) THEN
        SET p_DC_StoreId = NULL;
        LEAVE sp;
    END IF;

    
    IF NOT EXISTS (
        SELECT * 
        FROM store AS s 
        INNER JOIN dc_store AS dcs ON s.storeId = dcs.storeId 
        WHERE s.storeId = p_StoreId
        AND (
            ((s.storeId IS NULL AND dcs.storeId IS NULL) OR (s.storeId = dcs.storeId))
            AND ((s.StoreCode IS NULL AND dcs.StoreCode IS NULL) OR (s.StoreCode = dcs.StoreCode))
            AND ((s.StoreName IS NULL AND dcs.StoreName IS NULL) OR (s.StoreName = dcs.StoreName))
            AND ((s.CreatedDate_UTC IS NULL AND dcs.CreatedDate_UTC IS NULL) OR (s.CreatedDate_UTC = dcs.CreatedDate_UTC))
            AND ((s.CreatedDate_ServerTime IS NULL AND dcs.CreatedDate_ServerTime IS NULL) OR (s.CreatedDate_ServerTime = dcs.CreatedDate_ServerTime))
            AND ((s.ModifiedDate_UTC IS NULL AND dcs.ModifiedDate_UTC IS NULL) OR (s.ModifiedDate_UTC = dcs.ModifiedDate_UTC))
            AND ((s.ModifiedDate_ServerTime IS NULL AND dcs.ModifiedDate_ServerTime IS NULL) OR (s.ModifiedDate_ServerTime = dcs.ModifiedDate_ServerTime))
            AND ((s.Address IS NULL AND dcs.Address IS NULL) OR (s.Address = dcs.Address))
            AND ((s.City IS NULL AND dcs.City IS NULL) OR (s.City = dcs.City))
            AND ((s.Province IS NULL AND dcs.Province IS NULL) OR (s.Province = dcs.Province))
            AND ((s.emailAddress IS NULL AND dcs.emailAddress IS NULL) OR (s.emailAddress = dcs.emailAddress))
            AND ((s.tel1 IS NULL AND dcs.tel1 IS NULL) OR (s.tel1 = dcs.tel1))
            AND ((s.tel2 IS NULL AND dcs.tel2 IS NULL) OR (s.tel2 = dcs.tel2))
            AND ((s.ManagerId IS NULL AND dcs.ManagerId IS NULL) OR (s.ManagerId = dcs.ManagerId))
        )
    ) THEN
        
        INSERT INTO dc_store(`storeId`, `StoreCode`, `StoreName`, `CreatedDate_UTC`, `CreatedDate_ServerTime`, 
                             `ModifiedDate_UTC`, `ModifiedDate_ServerTime`, `Address`, `City`, `Province`, 
                             `emailAddress`, `tel1`, `tel2`, `ManagerId`)
        SELECT `storeId`, `StoreCode`, `StoreName`, `CreatedDate_UTC`, `CreatedDate_ServerTime`, 
               `ModifiedDate_UTC`, `ModifiedDate_ServerTime`, `Address`, `City`, `Province`, 
               `emailAddress`, `tel1`, `tel2`, `ManagerId`
        FROM store
        WHERE storeId = p_StoreId;

        SET p_DC_StoreId = LAST_INSERT_ID();
    ELSE
        
        SET p_DC_StoreId = (SELECT MAX(dc_storeId) FROM dc_store WHERE storeId = p_StoreId);
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_DC_TerminalIdByTerminalId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_DC_TerminalIdByTerminalId`(
   IN p_terminalId INT,
   OUT p_DC_TerminalId INT
)
sp:BEGIN
   IF NOT EXISTS (SELECT * FROM terminal AS p WHERE p.terminalId = p_terminalId) THEN
      SET p_DC_TerminalId = NULL;
      LEAVE sp;
   END IF;
   
   IF NOT EXISTS (
      SELECT * FROM terminal AS p
      INNER JOIN dc_terminal AS dp ON p.TerminalId = dp.TerminalId
      WHERE p.terminalId = p_terminalId
      AND (
        
         ((p.CreatedDate_UTC IS NULL AND dp.CreatedDate_UTC IS NULL) OR (p.CreatedDate_UTC = dp.CreatedDate_UTC))
         AND
         ((p.CreatedDate_ServerTime IS NULL AND dp.CreatedDate_ServerTime IS NULL) OR (p.CreatedDate_ServerTime = dp.CreatedDate_ServerTime))
         AND
         ((p.ModifiedDate_ServerTime IS NULL AND dp.ModifiedDate_ServerTime IS NULL) OR (p.ModifiedDate_ServerTime = dp.ModifiedDate_ServerTime))
         AND
         ((p.ModifiedDate_UTC IS NULL AND dp.ModifiedDate_UTC IS NULL) OR (p.ModifiedDate_UTC = dp.ModifiedDate_UTC))
         
      )
   ) THEN
      INSERT INTO dc_terminal (`TerminalId`, `TerminalName`, `CreatedDate_UTC`, `CreatedDate_ServerTime`, `ModifiedDate_ServerTime`, `ModifiedDate_UTC`)
      SELECT `TerminalId`, `TerminalName`,`CreatedDate_UTC`, `CreatedDate_ServerTime`, `ModifiedDate_ServerTime`, `ModifiedDate_UTC`
      FROM terminal
      WHERE TerminalId = p_terminalId;
      
      SET p_DC_TerminalId = LAST_INSERT_ID();
   ELSE
      SET p_DC_TerminalId = (SELECT MAX(DC_TerminalId) FROM dc_terminal WHERE TerminalId = p_terminalId);
   END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_frontendId_by_terminalId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_frontendId_by_terminalId`(
    IN p_terminalId INT
)
sp: BEGIN


	select frontendId,printdeskId from printdesk p where terminalId=p_terminalId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_inventory_transaction_history` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_inventory_transaction_history`(
    IN p_inventoryId INT,    
    IN p_StoreId INT,
    IN p_Skip INT,
    IN p_Limit INT,
    OUT p_TotalRows INT
)
BEGIN
    
    DECLARE _query VARCHAR(10000);
    DECLARE _PagingQuery VARCHAR(1000);
    DECLARE _filter VARCHAR(1000);
    DECLARE _totalRowsQuery VARCHAR(1000);

    
    SET _filter = CONCAT(' WHERE sip.StoreId = ', p_StoreId, ' AND nsi.inventoryId = ', p_inventoryId);

    
    IF p_StoreId IS NULL THEN
        SET p_TotalRows = 0;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'p_StoreId is required.';
    END IF;

    IF p_Skip IS NULL OR p_Limit IS NULL OR p_Limit > 500 THEN
        SET p_TotalRows = 0;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid pagination parameters. p_Skip and p_Limit are required, and p_Limit must be <= 500.';
    END IF;

    
    SET _PagingQuery = CONCAT(' LIMIT ', p_Skip, ', ', p_Limit);

    
    SET _query = CONCAT(
        'SELECT * FROM (',
        'SELECT ',
        'lsa.stockBatchId, ',
        'nsi.batchNumber, ',
        'CASE WHEN lsa.adjustmentTypeId = 1 THEN lsa.adjustedQty ELSE -lsa.adjustedQty END AS qty, ',
        'lsa.CreatedDate_UTC, ',
        'CONCAT("Stock Adjust-", CASE WHEN lsa.adjustmentTypeId = 1 THEN "Addition" ELSE "Deduction" END) AS transactionType, ',
        'CONCAT(sar.adjustmentReasonName, " - ", COALESCE(lsa.adjustmentReasonOtherRemark, "")) AS reason ',
        'FROM log_stock_adjustment lsa ',
        'INNER JOIN stock_adjustment_reason sar ON lsa.adjustmentReasonId = sar.adjustmentReasonId ',
        'INNER JOIN non_serialized_item nsi ON lsa.stockBatchId = nsi.stockBatchId ',
        'INNER JOIN store_inventory_product sip ON nsi.inventoryId = sip.inventoryId ',
        _filter, 
        ' UNION ALL ',
        'SELECT ',
        'sbom.stockBatchId, ',
        'nsi.batchNumber, ',
        'sbom.qty, ',
        'sbom.createdDate_UTC, ',
        '"Sale POS" AS transactionType, ',
        '"Customer Order" AS reason ',
        'FROM stock_batch_order_mapping sbom ',
        'INNER JOIN non_serialized_item nsi ON sbom.stockBatchId = nsi.stockBatchId ',
        'INNER JOIN store_inventory_product sip ON nsi.inventoryId = sip.inventoryId ',
        _filter,
        ') AS transaction_history ',
        'ORDER BY CreatedDate_UTC DESC ',
        _PagingQuery
    );

    
    PREPARE stmt FROM _query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    
    SET _totalRowsQuery = CONCAT(
        'SELECT COUNT(*) INTO @totalRows FROM (',
        'SELECT lsa.stockBatchId ',
        'FROM log_stock_adjustment lsa ',
        'INNER JOIN stock_adjustment_reason sar ON lsa.adjustmentReasonId = sar.adjustmentReasonId ',
        'INNER JOIN non_serialized_item nsi ON lsa.stockBatchId = nsi.stockBatchId ',
        'INNER JOIN store_inventory_product sip ON nsi.inventoryId = sip.inventoryId ',
        _filter,
        ' UNION ALL ',
        'SELECT sbom.stockBatchId ',
        'FROM stock_batch_order_mapping sbom ',
        'INNER JOIN non_serialized_item nsi ON sbom.stockBatchId = nsi.stockBatchId ',
        'INNER JOIN store_inventory_product sip ON nsi.inventoryId = sip.inventoryId ',
        _filter,
        ') AS total_transactions'
    );

    
    PREPARE stmt FROM _totalRowsQuery;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    
    SET p_TotalRows = @totalRows;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_price_change_log` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_price_change_log`(
    IN p_stockBatchId INT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN
    DECLARE err_message VARCHAR(255);

    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = err_message;
    END;

    
    IF p_stockBatchId IS NULL OR p_stockBatchId <= 0 THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'Invalid stockBatchId provided.';
        LEAVE sp;
    END IF;

    
    SELECT 
        pcl.priceChangeLogId,
        pcl.stockBatchId,
        pcl.oldUnitPrice,
        pcl.newUnitPrice,
        pcl.oldUnitCost,
        pcl.newUnitCost,
        pcl.CreatedDate_ServerTime,
        pcl.CreatedDate_UTC,
        pcl.UserLogID,
        pcl.changeReason
    FROM 
        log_price_change pcl
    WHERE 
        pcl.stockBatchId = p_stockBatchId
    ORDER BY 
        pcl.CreatedDate_UTC DESC;

    
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Query executed successfully.';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_ProductDetailsByInventoryId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_ProductDetailsByInventoryId`(
    IN p_inventoryId INT
)
BEGIN
    
    DECLARE v_singleProductId INT;
    DECLARE v_variationProductId INT;
    DECLARE v_comboProductId INT;
    DECLARE v_rowCount INT;

    
    SET v_singleProductId = NULL;
    SET v_variationProductId = NULL;
    SET v_comboProductId = NULL;

  SELECT singleProductId, variationProductId, comboProductId
    INTO v_singleProductId, v_variationProductId, v_comboProductId
    FROM store_inventory_product
    WHERE inventoryId = p_inventoryId
    LIMIT 1; 
    

    
    IF v_singleProductId IS NOT NULL THEN
        SELECT p.productName, sp.sku 
        FROM store_inventory_product sip 
        INNER JOIN single_product sp ON sip.singleProductId = sp.productId 
        INNER JOIN product p ON sp.productId = p.ProductId
        WHERE sip.inventoryId = p_inventoryId;

    ELSEIF v_variationProductId IS NOT NULL THEN
        SELECT p.productName, vp.sku, GROUP_CONCAT(vpd.variationValue SEPARATOR ' ') AS variationValues 
        FROM store_inventory_product sip 
        INNER JOIN variation_product vp ON sip.variationProductId = vp.variationProductId
        INNER JOIN variation_product_detail vpd ON vp.variationProductId = vpd.variationProductId
        INNER JOIN product p ON vp.productId = p.ProductId  
        WHERE sip.inventoryId = p_inventoryId
        GROUP BY p.ProductName, vp.sku;

    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_Snapshot_ContactIdByContactId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_Snapshot_ContactIdByContactId`(
    IN p_ContactId INT,
    OUT p_Snapshot_ContactId INT
)
sp: BEGIN
    
    IF NOT EXISTS (
        SELECT 1 
        FROM contact 
        WHERE contactId = p_ContactId
    ) THEN
        SET p_Snapshot_ContactId = NULL;
        LEAVE sp;
    END IF;

    
    IF EXISTS (
        SELECT 1 
        FROM contact 
        WHERE contactId = p_ContactId 
        AND (ModifiedDate_UTC IS NULL OR ModifiedDate_ServerTime IS NULL)
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'ModifiedDate_UTC and ModifiedDate_ServerTime cannot be NULL';
    END IF;

    
    IF NOT EXISTS (
        SELECT 1 
        FROM snapshot_contact 
        WHERE contactId = p_ContactId
        AND ModifiedDate_UTC = (
            SELECT ModifiedDate_UTC 
            FROM contact 
            WHERE contactId = p_ContactId
        )
        AND ModifiedDate_ServerTime = (
            SELECT ModifiedDate_ServerTime 
            FROM contact 
            WHERE contactId = p_ContactId
        )
    ) THEN
        
        INSERT INTO snapshot_contact(
            contactId, contactName, email, mobile, tel, remark, whatsapp,
            CreatedDate_UTC, CreatedDate_ServerTime, 
            ModifiedDate_ServerTime, ModifiedDate_UTC, contactCode, UserLogID
        )
        SELECT 
            contactId, contactName, email, mobile, tel, remark, whatsapp,
            CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 
            ModifiedDate_ServerTime, ModifiedDate_UTC, contactCode, UserLogID
        FROM contact 
        WHERE contactId = p_ContactId;

        SET p_Snapshot_ContactId = LAST_INSERT_ID();
    ELSE
        
        SET p_Snapshot_ContactId = (
            SELECT MAX(snshot_contactId) 
            FROM snapshot_contact 
            WHERE contactId = p_ContactId
        );
    END IF;

    
    SELECT p_Snapshot_ContactId AS p_Snapshot_ContactId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_snapshot_ProductIdByProductId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_snapshot_ProductIdByProductId`(
   IN p_allProductId INT,
   OUT p_ss_allProductId INT
)
sp: BEGIN

    
    DECLARE latest_snapshot_id INT;
    DECLARE v_productTypeId INT;
    DECLARE v_ss_allProductId INT;

      DECLARE err_message VARCHAR(255);
   
     
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        
        ROLLBACK;
        
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        
        SET err_message = CONCAT('Parent error: ', err_message);
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;

   


    START TRANSACTION;

    SELECT snshot_allProductId
    INTO latest_snapshot_id
    FROM snapshot_all_product
    WHERE allProductId = p_allProductId
    ORDER BY snshot_CreatedDate_UTC DESC
    LIMIT 1;

    
    IF NOT EXISTS (SELECT 1 FROM all_product WHERE allProductId = p_allProductId) THEN
    SET v_ss_allProductId = NULL;
       set p_ss_allProductId=v_ss_allProductId;
        select v_ss_allProductId as v_ss_allProductId;
        ROLLBACK;
        LEAVE sp;
    END IF;

    
    IF NOT EXISTS (SELECT 1 FROM snapshot_all_product WHERE allProductId = p_allProductId) THEN
        CALL  product_snapshot_insert(p_allProductId, @_ss_allProductId); 
        SET v_ss_allProductId = @_ss_allProductId;
    else
    
    
	
  

            CALL  product_snapshot_insert(p_allProductId, @_ss_allProductId); 
            SET v_ss_allProductId = @_ss_allProductId;

  
    END IF;

    SELECT v_ss_allProductId AS v_ss_allProductId0;
    SET p_ss_allProductId = v_ss_allProductId;

    COMMIT;

END sp ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_stock_adjustments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_stock_adjustments`(
    IN p_stockBatchId INT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN
    DECLARE err_message VARCHAR(255);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = err_message;
    END;

    
    IF p_stockBatchId IS NULL OR p_stockBatchId <= 0 THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'Invalid stockBatchId provided.';
        LEAVE sp;
    END IF;

    
    SELECT 
    sa.stockAdjustmentId,
    nsi.stockBatchId,
        nsi.inventoryId,
        nsi.batchNumber,
        nsi.prodDate,
        nsi.expDate,
        nsi.StockQty,
        nsi.unitCost,
        nsi.unitPrice,
        sa.existingStockQty,
        sa.adjustedQty,
        sa.adjustmentTypeId,
        sa.adjustmentReasonId,
        sa.adjustmentReasonOtherRemark,
        sa.createdDate_UTC,
        sar.adjustmentReasonName,
        sat.adjustmentTypeName
    FROM 
        log_stock_adjustment sa
    INNER JOIN 
        non_serialized_item nsi ON sa.stockBatchId = nsi.stockBatchId
    INNER JOIN 
        stock_adjustment_reason sar ON sa.adjustmentReasonId = sar.adjustmentReasonId
    INNER JOIN 
        stock_adjustment_type sat ON sa.adjustmentTypeId = sat.adjustmentTypeId
    WHERE 
        nsi.stockBatchId = p_stockBatchId
    ORDER BY 
        sa.stockAdjustmentId desc;

    
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Query executed successfully.';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_SystemInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_SystemInfo`(
)
begin
	
  select utcOffset,c.currencyCode,c.symbol ,c.currencyName from system_info as si 
      inner join currency c on si.CurrencyId=c.CurrencyID;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_SystemInfoIdByTerminalId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_SystemInfoIdByTerminalId`(
   IN p_TerminalId INT,
   OUT p_systemInfoId INT,
   OUT p_StoreId INT,
    OUT p_companyId INT,
   OUT p_UTC_offset varchar(50),
   OUT p_CountryCode varchar(50),
   OUT p_CurrencyId INT,
   OUT p_PrimaryLanguageId INT
)
BEGIN
   IF NOT EXISTS (SELECT * FROM system_info) THEN
      SET p_systemInfoId = NULL;
      SET p_StoreId = NULL;
   SET p_companyId = NULL;
      SET p_UTC_offset = NULL;
      SET p_CountryCode = NULL;
      SET p_CurrencyId = NULL;
      SET p_PrimaryLanguageId = NULL;
   ELSE
      SELECT systemInfoId INTO p_systemInfoId FROM system_info;
      SELECT StoreId INTO p_StoreId FROM store_terminal_user where terminalId=p_TerminalId;
      SELECT utcOffset INTO p_UTC_offset FROM system_info;
      SELECT CountryCode INTO p_CountryCode FROM system_info;
      SELECT CurrencyId INTO p_CurrencyId FROM system_info;
      SELECT PrimaryLanguageId INTO p_PrimaryLanguageId FROM system_info;
select companyId into p_companyId from store_company where storeId=p_StoreId;
   END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ImportDataWithDatabaseCreation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ImportDataWithDatabaseCreation`()
BEGIN
    DECLARE db_name VARCHAR(255);
    SET db_name = 'mytest';

    
    SET @create_db_query = CONCAT('CREATE DATABASE IF NOT EXISTS ', db_name);
    PREPARE create_db_stmt FROM @create_db_query;
    EXECUTE create_db_stmt;
    DEALLOCATE PREPARE create_db_stmt;

    
    SET @import_data_query = CONCAT('mysql -u root -p --comments ', db_name, ' < F:\\lbposc_light2_full_backup_latest.sql');
    PREPARE import_data_stmt FROM @import_data_query;
    EXECUTE import_data_stmt;
    DEALLOCATE PREPARE import_data_stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `IsCustomerDepends` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `IsCustomerDepends`(
    IN p_CustomerId INT,

    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
	OUT p_IsDepend Bit
)
sp: BEGIN

set p_IsDepend=0;
if exists(select * from orderheader where customerId=p_CustomerId) then
set p_IsDepend=1;
end if;


set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `IsProductDepends` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `IsProductDepends`(
    IN p_ProductId INT,

    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
	OUT p_IsDepend Bit
)
sp: BEGIN

set p_IsDepend=0;
if exists(select * from orderdetails where productId=p_ProductId) then
set p_IsDepend=1;
end if;


set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `log_user_action` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `log_user_action`(
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    IN p_Description VARCHAR(1000)
)
BEGIN
    DECLARE err_message VARCHAR(255);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;

    INSERT INTO user_action_log (
        UserLogID,
        UTC_Offset,
        PageName,
        ActionDateTime,
        Description
    ) VALUES (
        p_UserLogID,
        p_UTC_Offset,
        p_PageName,
        CURRENT_TIMESTAMP(),
        p_Description
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `measurementUnit_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `measurementUnit_delete`(
    IN p_measurementUnitId INT, 
    IN p_UserLogID INT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN
  
    START TRANSACTION;
    
    SET p_OutputMessage = 'null';
    
    
    
     if not exists (select * from measurement_unit where measurementUnitId=p_measurementUnitId) then
		set p_OutputMessage='measurementUnit is not exists';
        set p_ResponseStatus='failed';
        leave sp;
	end if;
      
	
        DELETE FROM measurement_unit WHERE measurementUnitId = p_measurementUnitId;
        SET p_ResponseStatus = 'success';
        SET p_OutputMessage = 'Deleted Successfully.';


    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `measurementUnit_dropdown_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `measurementUnit_dropdown_select`(
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),

    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

SELECT MeasurementUnitId as id ,MeasurementUnitName as displayName FROM measurement_unit;


set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `measurementUnit_insert_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `measurementUnit_insert_update`(
    IN p_tableID INT,
    IN p_measurementUnitName VARCHAR(100),
    IN p_saveType VARCHAR(1),
    IN p_userLogID INT,
    OUT p_responseStatus VARCHAR(50),
    OUT p_outputMessage VARCHAR(1000),
    out p_measurementUnitId_out int
)
sp: BEGIN

	      DECLARE err_message VARCHAR(255);
     
	   DECLARE EXIT HANDLER FOR SQLEXCEPTION
       begin
	        ROLLBACK;
            
            GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
            
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
        END;
       
	
    START TRANSACTION;
        
	if (p_tableID<1) then
		set p_OutputMessage='Invalid tableId';
        set p_ResponseStatus='failed';
       rollback;
        leave sp;
	end if;
        
    IF p_SaveType = 'I' THEN

 if exists (select * from measurement_unit where measurementUnitName=p_measurementUnitName) then
		set p_OutputMessage='measurementUnit Name already exists';
        set p_ResponseStatus='failed';
        rollback;
        leave sp;
end if;

    INSERT INTO measurement_unit (measurementUnitId ,measurementUnitName) VALUES (p_tableID,p_measurementUnitName);

SET p_measurementUnitId_out = LAST_INSERT_ID();

        SET p_ResponseStatus = 'success';
        SET p_OutputMessage = 'Added Successfully.';
        
    ELSEIF p_SaveType = 'U' THEN
    


	if exists (select * from measurement_unit where measurementUnitName=p_measurementUnitName
    and measurementUnitId!=p_tableID) then
		set p_OutputMessage='measurementUnitName already exists u';
        set p_ResponseStatus='failed';
        rollback;
        leave sp;
        end if;
        

UPDATE measurement_unit SET `measurementUnitName`=p_measurementUnitName WHERE measurementUnitId=p_tableID;

	SET p_ResponseStatus = 'success';
	SET p_OutputMessage = 'Updated Successfully.';

    END IF;
    
      if(p_tableID is not null) then  SET p_measurementUnitId_out=p_tableID; end if;
      
    COMMIT;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `measurementUnit_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `measurementUnit_select`(
	in p_measurementUnitId int,
	IN p_Skip INT,
    IN p_Limit INT,
    IN p_UserLogID INT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
	OUT p_TotalRows INT
)
sp: BEGIN


DECLARE _PagingQuery VARCHAR(1000);
DECLARE _filter varchar(1000);

SET _filter = ' WHERE 1=1 ';

set _PagingQuery='';
IF p_Skip IS NOT NULL AND p_Limit IS NOT NULL THEN
    SET _PagingQuery = CONCAT(' LIMIT ', p_Skip, ', ', p_Limit);
    
ELSEIF p_Skip IS NOT NULL AND p_Limit IS NULL THEN
    SET p_ResponseStatus = 'invalid';
    SET p_OutputMessage = 'The _Limit parameter is not passed or set _Skip parameter to null for unlimited data.';
	leave sp;
    
ELSEIF p_Skip IS NULL AND p_Limit IS NOT NULL THEN
    SET p_ResponseStatus = 'invalid';
    SET p_OutputMessage = 'The _Skip parameter is not passed or set _Limit parameter to null for unlimited data.';
	leave sp;
END IF;

   IF p_measurementUnitId IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND i.measurementUnitId = ', p_measurementUnitId);
    END IF;
   

SET @_query = CONCAT('SELECT measurementUnitId,measurementUnitName FROM measurement_unit as i ',_filter,
       ' ORDER BY measurementUnitName ASC ',
_PagingQuery);

	
	PREPARE stmt FROM @_query;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;


    SET @queryTotal = CONCAT('SELECT COUNT(measurementUnitId) INTO @totalRows FROM measurement_unit as i ', _filter);
        
    PREPARE stmt FROM @queryTotal;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    
    SET p_TotalRows = @totalRows;

set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OrderFull_Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OrderFull_Select`(
  IN p_OrderId INT,
   IN p_OrderNo VARCHAR(50),
    IN p_UserLogID INT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN
DECLARE _filter varchar(1000);
DECLARE _orderId int;


SET _filter = ' WHERE 1 = 1 ';

   if p_OrderId IS NULL AND p_OrderNo IS NULL THEN
          SET p_ResponseStatus = 'invalid';
		SET p_OutputMessage = 'You have to supply either p_OrderId or p_OrderNo';
		leave sp;
       END IF;
       
          if p_OrderId IS NOT NULL AND p_OrderNo IS NOT NULL THEN
          SET p_ResponseStatus = 'invalid';
		SET p_OutputMessage = 'You can not supply both p_OrderId and p_OrderNo';
		leave sp;
       END IF;
       

    IF p_OrderId IS NOT NULL THEN
            SET _orderId =  p_OrderId;
        END IF;
        
               IF p_orderNo IS NOT NULL THEN
               set _orderId=(select orderId from order_Header where orderNo=p_orderNo);
        END IF;
        
SELECT oh.orderId,orderNo,terminalId,sessionId,
oh.createdDate_UTC,currencyId,oh.customerId,oh.countryId,c.customerName,
c.customerCode,osp.grossAmount_total,osp.lineDiscountAmount_total,
osp.overallDiscountAmount,osp.all_DiscountAmount_total,osp.subTotal,osp.adjusted_subtotal,
osp.grandTotal,osp.lineTaxAmount_total,osp.overall_TaxAmount,
CAST(oh.isVoided AS UNSIGNED) as isVoided from order_header as oh 
inner join order_summary_processed as osp ON oh.OrderId=osp.OrderId
inner join dc_customer as c on oh.dc_customerid=c.dc_customerid 
 where oh.orderId=_orderId;
 


    
    
  SELECT o.orderDetailId,orderID,qty,o.createdDate_UTC,o.productId,
o.unitPrice,isReturned,o.dc_productId,grossAmount,netAmount, o.measurementUnitId,
p.productNo,p.productName,mu.measurementUnitName,d.discountAmount,d.remark,
d.discountValue,dt.typeName,dr.reasonName
 FROM order_details as o 
inner join dc_product as p ON o.dc_productId=p.dc_productId
inner join measurement_unit as mu on o.measurementUnitId=mu.measurementUnitId
left outer join order_line_discount as d ON o.orderDetailId=d.orderDetailId
left outer join discount_type as dt ON d.discountTypeId=dt.discountTypeId
left outer join discount_reason dr ON d.discountReasonId=dr.discountReasonId
  where o.orderId=_orderId;


    
    
set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OrderReceipt_SelectByOrderId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OrderReceipt_SelectByOrderId`(
  IN p_OrderId INT,

    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN


SELECT oh.`orderId`,`orderNo`,`oh`.`isVoided`,`oh`.`userLogId`,`oh`.`DC_CustomerId`,
    `oh`.`sessionId`,`oh`.`createdDate_UTC`,`oh`.`createdDate_ServerTime`,`oh`.`terminalId`,
    `oh`.`customerId`,`oh`.`storeId`,`oh`.`dc_StoreId`,
    `oh`.`currencyId`,oh.displayUserName,c.contactName as customerName,c.contactCode as customerCode,
    curr.currencyName,curr.currencyCode,curr.symbol,
br.storeName,br.storeCode,br.address,br.city,br.province,br.emailAddress,br.tel1,br.tel2,
osp.grossAmount_total,osp.lineDiscountAmount_total,osp.overallDiscountAmount,all_DiscountAmount_total,subTotal,
adjusted_subtotal,grandTotal,
lineTaxAmount_total,lineTaxAmount_total as totalTaxAmount,
CAST(oh.isVoided AS UNSIGNED) as isVoided,dt.terminalName,sed.sessionName,
 co.companyName,si.utcOffset,osp.changeAmount,osp.noOfItems,si.receiptAdDescription
FROM `order_header` as oh inner join session_period as sed ON oh.sessionId=sed.sessionId
left outer join snapshot_contact as c on oh.DC_CustomerId=c.snshot_contactId
 inner join user_registration as u ON oh.userId=u.userId
 inner join currency as curr ON oh.currencyId=curr.currencyId
 inner join dc_store as br ON oh.dc_storeId=br.dc_storeId
 inner join order_summary_processed as osp ON oh.orderId=osp.orderId
 inner join terminal as dt ON oh.terminalId=dt.terminalId
 inner join system_info si  on oh.systemInfoId=si.systemInfoId
 inner join company co on oh.companyId=co.companyId
where oh.OrderId=p_OrderId;


SELECT 
    od.orderDetailId,
    od.orderID,
    od.qty,
    od.createdDate_ServerTime,
    od.createdDate_UTC,
    od.allProductId,
    p.productDescription,

     p.sku,
    od.unitPrice,
    CASE 
        WHEN od.isReturned = 1 THEN TRUE 
        ELSE FALSE 
    END AS isReturned,
    od.snshot_allProductId,
    od.grossAmount,
    od.netAmount,
    od.measurementUnitName,
    ld.discountValue,
    dt.typeName AS discountTypeName,
    ld.discountAmount
FROM 
    order_details AS od 
INNER JOIN 
    snapshot_all_product AS p ON od.snshot_allProductId = p.snshot_allProductId
LEFT OUTER JOIN 
    order_line_discount AS ld ON od.orderDetailId = ld.orderDetailId
LEFT OUTER JOIN 
    discount_type AS dt ON ld.discountTypeId = dt.discountTypeId
WHERE 
    od.OrderId = p_OrderId
GROUP BY 
    od.orderDetailId, 
    od.orderID, 
    od.qty, 
    od.createdDate_ServerTime, 
    od.createdDate_UTC, 
    od.allProductId, 
    p.productDescription,
    od.unitPrice, 
    od.isReturned, 
    od.snshot_allProductId, 
    od.grossAmount, 
    od.netAmount, 
    od.measurementUnitName, 
    ld.discountValue, 
    dt.typeName, 
    ld.discountAmount;

SELECT `op`.`paymentId`,`op`.`orderId`,`op`.`methodId`,`op`.`amountPaid`,`op`.`paymentDate_UTC`,
cp.cardHolderName,cp.cardLastFourDigits,cp.cardExpirationMonth,cp.cardExpirationYear,
ifnull(cahp.balanceAmount,0) as balanceAmount,ifnull(cahp.receivedAmount,0) as receivedAmount,pm.methodName,crdtpe.cardTypeName
FROM `order_payments` as op
inner join payment_methods as pm on op.MethodId=pm.MethodId
 left outer join cash_payments as cahp ON op.paymentId=cahp.paymentId
left outer join card_payments as cp ON op.paymentId=cp.paymentId
left outer join card_types as crdtpe on cp.CardTypeId=crdtpe.CardTypeId
 where op.orderId=p_OrderId;


set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order_Insert`(
  
   IN p_CustomerID INT,
    IN p_TerminalId INT,
    IN p_SessionID INT,
    IN p_StoreId INT,
    
    IN p_orderLevelDiscount_json JSON,
     
    IN p_orderList_json JSON,
    IN p_paymentList_json text,
    IN p_IsStockSupported BIT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    IN p_IsConfirm BIT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
    OUT p_OrderId int,
    OUT p_balanceAmount decimal(10,2)
)
sp: BEGIN

DECLARE v_systemInfoId INT;
  DECLARE v_DC_CustomerId INT;
    DECLARE v_DC_StoreId INT;
   
   DECLARE v_orderDiscount JSON; 
    DECLARE v_orderId INT;
    DECLARE v_orderNo VARCHAR(50);

 DECLARE noOfItemsInOrderList int;
DECLARE i_orderList int default 0;

 DECLARE noOfItemsInPaymentList int;
DECLARE i_paymentList int default 0;

 DECLARE _totalPaid decimal(10,2) default 0;

declare v_allProductId int;	
declare v_variationProductId varchar(11);
declare v_unitPrice varchar(11);
declare v_unitCost varchar(11);

declare v_qty varchar(11);
declare v_discount json;
declare v_returnItem json;


declare v_isDiscountExists bit;
declare v_discountTypeId int;
declare v_discountValue decimal(10,2);
declare v_discountReasonId int;
declare v_discountRemark varchar(500);
declare v_lineDiscountAmount decimal(10,2);

declare v_lineTaxPerc decimal(10,2);

declare o_grossAmount decimal(10,2);
declare o_netAmount decimal(10,2);
declare o_lineTaxAmount decimal(10,2);
  
  
  declare v_isReturned bit;
   declare v_pre_orderDetailId_return int;
   
   declare v_pre_OrderDetail_Qty decimal(10,2);
      declare v_pre_OrderDetail_customer int;
declare v_remainingQtyForReturn decimal(10,2);


    declare v_dc_productId int;
    declare v_DC_productId_forOrderList int;
	declare o_ss_allProductId int;

    
	declare v_pre_OrderDetail_productId int;
    
    
	declare v_servicechargeRate DECIMAL(10, 2);
    
    declare v_grossAmount_total DECIMAL(10, 2) DEFAULT 0;
    
       declare v_nonProductGrossAmount_total DECIMAL(10, 2) DEFAULT 0;
    
       declare v_productGrossAmount_total DECIMAL(10, 2) DEFAULT 0;
    
    
    
    
	declare v_lineDiscountAmount_total DECIMAL(10, 2) DEFAULT 0;
 declare v_subTotal DECIMAL(10, 2) DEFAULT 0;
 declare v_lineTaxAmount_total DECIMAL(10, 2) DEFAULT 0;
  declare v_grandTotal DECIMAL(10, 2) DEFAULT 0;
  
declare ov_grandTotal DECIMAL(10, 2);

declare o_adjusted_subtotal DECIMAL(10, 2);
declare o_overall_TaxAmount DECIMAL(10, 2);
declare o_servicecharge DECIMAL(10, 2);

	declare v_totalItems_tblPaymentList int;

  
DECLARE v_methodId INT;
DECLARE v_cashPayment json DEFAULT NULL;
DECLARE v_cardPayment json DEFAULT NULL;

DECLARE v_amountPaid DECIMAL(10, 2);


DECLARE v_cardHolderName VARCHAR(50) DEFAULT NULL;
DECLARE v_bankId VARCHAR(11) DEFAULT NULL;
DECLARE v_cardTypeId varchar(11);
DECLARE v_cardLastFourDigits VARCHAR(4) DEFAULT NULL;
DECLARE v_cardExpirationMonth VARCHAR(4) DEFAULT NULL;
DECLARE v_cardExpirationYear VARCHAR(4) DEFAULT NULL;
  
  DECLARE v_paymentId INT;


declare v_amountPaid_card decimal(10,2) default 0;
declare v_amountPaid_cash decimal(10,2) default 0;

  DECLARE v_shortfall decimal(10,2) default 0;
 DECLARE v_balanceAmount DECIMAL(10, 2) DEFAULT 0;
 
DECLARE v_totalItems_tblOrderList INT;


 
  
  
  
  

   DECLARE _order_DiscountAmount DECIMAL(10, 2) DEFAULT 0;
   
   	 DECLARE isOrderDiscountExists BIT default false;
	 DECLARE orderDiscountTypeId int;
	 DECLARE orderDiscountValue DECIMAL(10, 2);
	 DECLARE orderDiscountReasonId int;
	 DECLARE orderDiscountRemark varchar(500);
   
    DECLARE v_orderDetailId int;


declare v_DC_CompanyId int;
declare v_CompanyId int;

declare v_StoreId int;

declare v_UserId int;
declare v_displayUserName varchar(50);

declare v_UTC_offset varchar(50);
declare v_CountryCode varchar(50);
declare v_CurrencyId int;
declare v_PrimaryLanguageId int;

declare  v_measurementUnitId int;
declare vo_stockBatchId int;

DECLARE po_isStockTracked BIT;

    DECLARE inputUserLogId INT;
    DECLARE outputUserId INT;
    DECLARE outputLoginTime_UTC DATETIME;
    DECLARE outputLoginStatus VARCHAR(10);
    DECLARE outputIpAddress VARCHAR(45);
    DECLARE outputUserAgent VARCHAR(255);
    DECLARE outputSessionId VARCHAR(255);
    DECLARE outputAdditionalInfo TEXT;
    DECLARE outputUtcOffset VARCHAR(10);
    DECLARE outputCreatedDate_UTC DATETIME;
    DECLARE outputCreatedDate_ServerTime DATETIME;
    
    
    declare v_productDescription varchar(200);
    declare v_isCustomProduct bit;
    declare v_measurementUnitName varchar(50);
    
     declare v_sessionIdFromDb int;
     
        declare v_stockBatchId int;  


   
   
         DECLARE err_message VARCHAR(255);
   
     
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        
        ROLLBACK;
        
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        
        SET err_message = CONCAT('Parent error: ', err_message);
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;

   
   
   
 	
    START TRANSACTION;


    SET inputUserLogId = p_UserLogID;

    
    CALL getUserLogDetailsByUserLogId(inputUserLogId, outputUserId, outputLoginTime_UTC, outputLoginStatus, outputIpAddress, outputUserAgent, outputSessionId,
        outputAdditionalInfo, outputUtcOffset, outputCreatedDate_UTC, outputCreatedDate_ServerTime);
        
       set v_UserId=outputUserId;
    
     
	if not exists (select * from session_period where sessionId=p_sessionId and terminalId=p_terminalId) then
		set p_OutputMessage=concat('The session :',p_sessionId,' is not exists for the termial:',p_terminalId);
        set p_ResponseStatus='failed';
       
        leave sp;
	end if; 
    
	if exists (select * from session_period where isSessionEnded=1 and sessionId=p_sessionId and terminalId=p_terminalId) then
		set p_OutputMessage=concat('The session :',p_sessionId,' is already closed');
        set p_ResponseStatus='failed';
      
        leave sp;
	end if; 
    

	
	set v_sessionIdFromDb=(select max(sessionId) from session_period where terminalId=p_TerminalId and isSessionEnded=0);
		if v_sessionIdFromDb!=p_SessionID then
		set p_OutputMessage=concat('Cannot process the order. Your session is invalid. Please re-open the POS terminal.');
        set p_ResponseStatus='failed';
        leave sp;
	end if; 
    
	
       
      
   
       
      
      
      CALL get_SystemInfoIdByTerminalId(p_TerminalId, v_systemInfoId,
   v_StoreId,v_companyId, v_UTC_offset,v_CountryCode, 
   v_CurrencyId, v_PrimaryLanguageId);
   
	IF v_systemInfoId is null THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = concat('Systeminfo details are not exists for Terminal:',p_TerminalId);
        leave sp;
	END IF; 


	
CALL get_DC_StoreIdByStoreId(v_StoreId, v_DC_StoreId);
IF v_DC_StoreId is null THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = concat('Store:',v_StoreId,' is not exists:');
        leave sp;
	END if;

	
  	if p_CustomerID is not null then 
  	CALL get_Snapshot_ContactIdByContactId(p_CustomerID, v_DC_CustomerId);
 
		IF v_DC_CustomerId is null THEN
	        SET p_ResponseStatus = 'failed';
	        SET p_OutputMessage = concat('Customer:',p_CustomerID,' is not exists:');
	        leave sp;
		END IF; 
	end if;

   
    


	set v_orderDiscount=JSON_UNQUOTE(JSON_EXTRACT(p_orderLevelDiscount_json, CONCAT('$[', 0, ']')));
    if (v_orderDiscount='null' or v_orderDiscount=null) then set v_orderDiscount=null;  end if;
    if(v_orderDiscount is not null) then
		set isOrderDiscountExists=true;
		set orderDiscountTypeId=JSON_UNQUOTE(JSON_EXTRACT(p_orderLevelDiscount_json, CONCAT('$[', 0, '].overallDiscountTypeId')));
		set orderDiscountValue=JSON_UNQUOTE(JSON_EXTRACT(p_orderLevelDiscount_json, CONCAT('$[', 0, '].overallDiscountValue')));
		set orderDiscountReasonId=JSON_UNQUOTE(JSON_EXTRACT(p_orderLevelDiscount_json, CONCAT('$[', 0, '].overallDiscountReasonId')));
        set orderDiscountRemark=JSON_UNQUOTE(JSON_EXTRACT(p_orderLevelDiscount_json, CONCAT('$[', 0, '].overallDiscountRemark')));
        
	  
		if (CAST(orderDiscountTypeId AS SIGNED) <= 0 OR 
			CAST(orderDiscountValue AS SIGNED) <= 0 OR 
			CAST(orderDiscountReasonId AS SIGNED) <= 0) then
			SET p_ResponseStatus = 'failed';
			SET p_OutputMessage = concat('Invalid overall discount details');
		end if;
    
      end if;
      
  

    SET noOfItemsInOrderList = JSON_LENGTH(p_orderList_json);

   DROP TEMPORARY TABLE IF EXISTS tblOrderList;
   create temporary table tblOrderList(allProductId int,productId int,productTypeId int,dc_productId int,unitCost decimal(10,2),unitPrice decimal(10,2),qty decimal(10,2),isDiscountExists bit,
  discountTypeId int, discountValue decimal(10,2),discountReasonId int,discountRemark varchar(500),lineDiscountAmount decimal(10,2),
  lineTaxAmount decimal(10,2),lineTaxRate decimal(10,2),grossAmount decimal(10,2),netAmount decimal(10,2),
  isReturned BIT(1),pre_orderDetailId_return int,isCustomProduct bit,measurementUnitName varchar(10),stockBatchId int);


while i_orderList < noOfItemsInOrderList do

set v_allProductId=JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].allProductId')));
 set v_unitPrice=JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].unitPrice')));
set v_qty=JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].qty')));
set v_measurementUnitName=JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].measurementUnitName')));

set v_productDescription=JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].description')));


CALL getIsStockTrackedByAllProductId(v_allProductId, v_StoreId, po_isStockTracked);



if po_isStockTracked=1 then 
if JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].stockBatchId')))='' or
JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].stockBatchId')))='null' then
	set p_ResponseStatus='failed';
	set p_OutputMessage='stockBatchId can not be null';
	leave sp;
end if;

set v_stockBatchId=JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].stockBatchId')));

end if;



if LOWER(JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].isCustomProduct')))) = 'true' then
   set v_isCustomProduct=true;
   else 
   set v_isCustomProduct=false;
end if;

select v_isCustomProduct;
  
set v_discount=JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].discount')));
if (v_discount='null') then 
set v_discount=null;  

if v_orderDiscount!=null and v_discount!=null then
	set p_ResponseStatus='failed';
	set p_OutputMessage='You cannot apply both an overall order discount and a line item discount in the same order at the same time. Please choose one discount type.';
	leave sp;
	end if;

end if;


  set v_variationProductId=(select variationProductId from all_product where allProductId=v_allProductId);


  
if v_isCustomProduct=false then


select unitCost,unitPrice,taxPerc into v_unitCost,v_unitPrice,v_lineTaxPerc from variation_product where variationProductId=v_variationProductId;  


	if not exists (select * from all_product where allProductId=v_allProductId) then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('Invalid  allProductId : ',v_allProductId);
		leave sp;
	end if;


end if;


	
	
set v_isDiscountExists=false;
set v_discountTypeId=null;
set v_discountValue=null;
set v_discountReasonId=null;
set v_discountRemark=null;
set v_lineDiscountAmount=0;
       
if v_discount is not null then
	set v_isDiscountExists=true;
	set v_discountTypeId=JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].discount.discountTypeId')));
	set v_discountValue=JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].discount.discountValue')));
	set v_discountReasonId=JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].discount.reasonId')));
	set v_discountRemark=JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].discount.reasonRemark')));
	
    IF not exists(select * from discount_reason_scope where DiscountReasonId=v_discountReasonId and ScopeId=1) THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = concat('Invalid discount reason Id for line discount.');
        leave sp;
	END IF; 
    
	IF v_discountTypeId = 1 THEN 
		SET v_lineDiscountAmount = (v_discountValue / 100) * v_unitPrice * v_qty;
	ELSEIF v_discountTypeId = 2 THEN 
		SET v_lineDiscountAmount = v_discountValue; 
	END IF;


end if;


if(v_lineTaxPerc is null) then set v_lineTaxPerc=0; end if;


CALL calculation_CalculateLineTotals(v_unitPrice, v_qty, v_lineTaxPerc, v_lineDiscountAmount, o_grossAmount, o_netAmount, o_lineTaxAmount);



if  exists(select * from product p inner join variation_product vp on p.productId=vp.productId
 inner join all_product ap on vp.variationProductId=ap.variationProductId 
 where ap.allProductId=v_allProductId and p.isProductItem=0) then
 
 set v_nonProductGrossAmount_total=v_nonProductGrossAmount_total+o_grossAmount;
 
 end if;
 
 
 if  exists(select * from product p inner join variation_product vp on p.productId=vp.productId
 inner join all_product ap on vp.variationProductId=ap.variationProductId 
 where ap.allProductId=v_allProductId and p.isProductItem=1) then
 
 set v_productGrossAmount_total=v_productGrossAmount_total+o_grossAmount;
 
 end if;


set v_grossAmount_total=v_grossAmount_total+o_grossAmount;
set v_lineDiscountAmount_total=v_lineDiscountAmount_total+v_lineDiscountAmount;
set v_subTotal=v_subTotal+o_netAmount;
set v_lineTaxAmount_total=v_lineTaxAmount_total+o_lineTaxAmount;



set v_returnItem=JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].returnItem')));
if (v_returnItem='null' or v_returnItem=null) then set v_returnItem=null;  end if;


set v_isReturned=false;

if v_returnItem is not null then
	set v_isReturned=true;
	set v_pre_orderDetailId_return=JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].returnItem.orderDetailId')));
end if;





select v_unitCost,v_unitPrice,v_lineTaxPerc;


 if not isNumeric(v_unitPrice) then
	set p_ResponseStatus='failed';
    set p_OutputMessage=concat('Invalid unitPrice : ',v_unitPrice);
    leave sp;
end if;

 if v_unitPrice<=0 then
	set p_ResponseStatus='failed';
    set p_OutputMessage=concat('UnitPrice can not be zero or less than zero: ');
    leave sp;
end if;

 if not isNumeric(v_qty) then
	set p_ResponseStatus='failed';
    set p_OutputMessage=concat('Invalid qty : ',v_qty);
    leave sp;
end if;

	if v_qty=0 then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('Qty can not be zero : ',v_qty);
		leave sp;
	end if;



if (v_isReturned=false) then
	if v_qty<0 then
			set p_ResponseStatus='failed';
			set p_OutputMessage=concat('Issuing items should have positive qty: ');
			leave sp;
	end if;
 
if(v_isCustomProduct=false) then


set v_allProductId=(select allProductId from all_product where variationProductId=v_variationProductId);

CALL get_snapshot_ProductIdByProductId(v_allProductId, o_ss_allProductId);
	IF o_ss_allProductId is null THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = concat('allProductId:',v_allProductId,' is not exists:');
        leave sp;
	END IF; 




if po_isStockTracked = 1 then
 CALL _updateStockQty_by_allProductId(v_stockBatchId, v_qty,true,p_ResponseStatus,  p_OutputMessage);
end if;

	 if(p_ResponseStatus='failed') then
		 rollback;
		 leave sp;
	end if;
 


end if;



if v_isCustomProduct=true then

 CALL customProduct_snapshot_insert(v_productDescription, v_unitPrice, o_ss_allProductId);
select o_ss_allProductId;
end if;



 set v_DC_productId_forOrderList=o_ss_allProductId;
    
end if;

if (v_isReturned=true) then
	if not exists (select * from order_details where orderDetailId=v_pre_orderDetailId_return) then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('Invalid orderDetailId : ',v_pre_orderDetailId_return);
		leave sp;
	end if;
        
	if v_qty>0 then
			set p_ResponseStatus='failed';
			set p_OutputMessage=concat('Return items should have negetive qty: ',v_qty);
			leave sp;
	end if;

	if v_discount is not null then
			set p_ResponseStatus='failed';
			set p_OutputMessage=concat('Discount can not applied for the return products.');
			leave sp;
	end if;
   
     set v_pre_OrderDetail_productId=(select allProductId from order_details where orderDetailId=v_pre_orderDetailId_return);
	 if(v_pre_OrderDetail_productId!= v_allProductId) then
			set p_ResponseStatus='failed';
			set p_OutputMessage=concat('Returning allProduct id should be equal to previous order product id.');
		leave sp;
	end if;
    
 set v_pre_OrderDetail_Qty=(select qty from order_details where orderDetailId=v_pre_orderDetailId_return);
	 if(v_pre_OrderDetail_Qty<(-1 * v_qty)) then
			set p_ResponseStatus='failed';
			set p_OutputMessage=concat('Return qty should not greater than previous order qty');
		leave sp;
	end if;
    

if p_CustomerID is not null then
     set v_pre_OrderDetail_customer=(select oh.customerId from order_header as oh 
 inner join order_details as od ON oh.orderId=od.orderId where od.orderDetailId=v_pre_orderDetailId_return);
	 if(v_pre_OrderDetail_customer!=p_CustomerId) then
			set p_ResponseStatus='failed';
			set p_OutputMessage=concat('The current customer should be the same as the previous order when returning the item.');
		leave sp;
	end if;
end if;
    
set v_remainingQtyForReturn=(
     SELECT od.Qty-(-sum(orn.Qty)) as remainingQty FROM order_return as orn 
		inner join order_details as od ON orn.pre_orderDetailId_return=od.orderDetailid
		where od.OrderDetailID=v_pre_orderDetailId_return group by od.Qty);
        
		if(v_remainingQtyForReturn is not null and v_remainingQtyForReturn<(-1 * v_qty)) then
			set p_ResponseStatus='failed';
			set p_OutputMessage=concat('There are no enough remaining items for return in order detail.',v_pre_orderDetailId_return);
			leave sp;
        end if;
    

if(v_remainingQtyForReturn is not null) then
	IF p_IsConfirm is null or p_IsConfirm=0 THEN
        SET p_ResponseStatus = 'confirm';
        SET p_OutputMessage = 'Early returnd item details detected. Do you want to continue?.';
        
		SELECT oh.orderNo,od.Qty,sum(orn.Qty) as returnedQty,od.Qty-(-sum(orn.Qty)) as remainingQty,od.productid FROM order_return as orn 
		inner join order_details as od ON orn.pre_orderDetailId_return=od.orderDetailid
		inner join order_header oh on od.orderId=oh.orderId
		where od.OrderDetailID=v_pre_orderDetailId_return 
        group by oh.orderNo,od.Qty,od.productid;
    
        leave sp;
	END IF;
end if;
        
   set v_DC_productId_forOrderList=(SELECT snshot_allProductId FROM order_details where orderDetailId=v_pre_orderDetailId_return);
   
  
end if;
    

 insert into tblOrderList(allProductId,dc_productId,unitCost,unitPrice,qty,isDiscountExists,discountTypeId,discountValue,discountReasonId,discountRemark,lineDiscountAmount,
 lineTaxAmount,lineTaxRate,grossAmount,netAmount,
 isReturned,pre_orderDetailId_return,isCustomProduct,measurementUnitName,stockBatchId)
values (v_allProductId,v_DC_productId_forOrderList,v_unitCost, v_unitPrice,v_qty,v_isDiscountExists,
v_discountTypeId,v_discountValue,v_discountReasonId,v_discountRemark,v_lineDiscountAmount,
o_lineTaxAmount,v_lineTaxPerc,o_grossAmount, o_netAmount,
v_isReturned,v_pre_orderDetailId_return,v_isCustomProduct,v_measurementUnitName,v_stockBatchId);
 
        SET i_orderList = i_orderList + 1;
end while;




 


 set v_servicechargeRate=0.00;
 
    IF isOrderDiscountExists THEN
        CASE orderDiscountTypeId
            WHEN 1 THEN 
                SET _order_DiscountAmount = (orderDiscountValue / 100) * v_subTotal; 
            WHEN 2 THEN 
                SET _order_DiscountAmount = orderDiscountValue;
            
        END CASE;
    END IF;
    


CALL calculation_CalculateOrderTotal(
    v_subTotal,_order_DiscountAmount,0,v_servicechargeRate,v_lineTaxAmount_total,
    o_adjusted_subtotal, o_overall_TaxAmount, o_servicecharge, ov_grandTotal);
    
    
SET v_grandTotal=ov_grandTotal;

    SET noOfItemsInPaymentList = JSON_LENGTH(p_paymentList_json);
    
    DROP TEMPORARY TABLE IF EXISTS tblPaymentList;
   create temporary table tblPaymentList(methodId int,amountPaid decimal(10,2),
 cardHolderName varchar(50),bankId int,cardTypeId int,cardLastFourDigits varchar(4),cardExpirationMonth varchar(2),cardExpirationYear varchar(4));
   

 
while i_paymentList < noOfItemsInPaymentList do
   
      SET v_methodId = JSON_UNQUOTE(JSON_EXTRACT(p_paymentList_json, CONCAT('$[', i_paymentList, '].methodId')));
SET v_amountPaid = JSON_UNQUOTE(JSON_EXTRACT(p_paymentList_json, CONCAT('$[', i_paymentList, '].amountPaid')));

set v_cashPayment= JSON_UNQUOTE(JSON_EXTRACT(p_paymentList_json, CONCAT('$[', i_paymentList, '].cashPayment')));


set v_cardPayment= JSON_UNQUOTE(JSON_EXTRACT(p_paymentList_json, CONCAT('$[', i_paymentList, '].cardPayment')));
if v_cardPayment is not null then
	SET v_cardHolderName = JSON_UNQUOTE(JSON_EXTRACT(p_paymentList_json, CONCAT('$[', i_paymentList, '].cardPayment.cardHolderName')));
	IF v_cardHolderName = 'null' THEN SET v_cardHolderName = NULL; END IF;

	SET v_bankId = JSON_UNQUOTE(JSON_EXTRACT(p_paymentList_json, CONCAT('$[', i_paymentList, '].cardPayment.bankId')));
	IF v_bankId = 'null' THEN SET v_bankId = NULL; END IF;

	SET v_cardTypeId = JSON_UNQUOTE(JSON_EXTRACT(p_paymentList_json, CONCAT('$[', i_paymentList, '].cardPayment.cardTypeId')));
	IF v_cardTypeId = 'null' THEN SET v_cardTypeId = NULL; END IF;

	SET v_cardLastFourDigits = JSON_UNQUOTE(JSON_EXTRACT(p_paymentList_json, CONCAT('$[', i_paymentList, '].cardPayment.cardLastFourDigits')));
	IF v_cardLastFourDigits = 'null' THEN SET v_cardLastFourDigits = NULL; END IF;

	SET v_cardExpirationMonth = JSON_UNQUOTE(JSON_EXTRACT(p_paymentList_json, CONCAT('$[', i_paymentList, '].cardPayment.cardExpirationMonth')));
	IF v_cardExpirationMonth = 'null' THEN SET v_cardExpirationMonth = NULL; END IF;

	SET v_cardExpirationYear = JSON_UNQUOTE(JSON_EXTRACT(p_paymentList_json, CONCAT('$[', i_paymentList, '].cardPayment.cardExpirationYear')));
	IF v_cardExpirationYear = 'null' THEN SET v_cardExpirationYear = NULL; END IF;
end if;
     
 if not isNumeric(v_methodId) then
	set p_ResponseStatus='failed';
    set p_OutputMessage=concat('Invalid methodId : ',v_methodId);
    leave sp;
end if;

 if not isNumeric(v_amountPaid) then
	set p_ResponseStatus='failed';
    set p_OutputMessage=concat('Invalid amountPaid : ',v_amountPaid);
    leave sp;
end if;


 if not isNumeric(v_cardTypeId) then
	set p_ResponseStatus='failed';
    set p_OutputMessage=concat('Invalid cardTypeId : ',v_cardTypeId);
    leave sp;
end if;

 if not isNumeric(v_cardLastFourDigits) then
	set p_ResponseStatus='failed';
    set p_OutputMessage=concat('Invalid cardLastFourDigits : ',v_cardLastFourDigits);
    leave sp;
end if;

 if not isNumeric(v_cardExpirationMonth) then
	set p_ResponseStatus='failed';
    set p_OutputMessage=concat('Invalid cardExpirationMonth : ',v_cardExpirationMonth);
    leave sp;
end if;

 if not isNumeric(v_cardExpirationYear) then
	set p_ResponseStatus='failed';
    set p_OutputMessage=concat('Invalid cardExpirationYear : ',v_cardExpirationYear);
    leave sp;
end if;
         
 if not exists (select * from payment_methods where MethodId=v_methodId) then
	set p_ResponseStatus='failed';
    set p_OutputMessage=concat('Invalid MethodId : ',v_methodId);
    leave sp;
end if;
         
 if v_cardTypeId is not null and not exists (select * from card_types where CardTypeId=v_cardTypeId) then
	set p_ResponseStatus='failed';
    set p_OutputMessage=concat('Invalid CardTypeId : ',v_cardTypeId);
    leave sp;
end if;


if v_methodId=2 then
	set v_amountPaid_card=v_amountPaid_card+v_amountPaid;
end if;


if v_methodId=1 then
	set v_amountPaid_cash=v_amountPaid_cash+v_amountPaid;
end if;


        
insert into tblPaymentList(methodId,amountPaid,cardHolderName,bankId,cardTypeId,cardLastFourDigits,cardExpirationMonth,cardExpirationYear)
values( v_methodId,v_amountPaid,v_cardHolderName,v_bankId,v_cardTypeId,
v_cardLastFourDigits,v_cardExpirationMonth,v_cardExpirationYear);  
    
    SET i_paymentList = i_paymentList + 1;
end while;



  set _totalPaid=v_amountPaid_card+v_amountPaid_cash;
  
             
if(v_grandTotal>0) then
	if v_amountPaid_card + v_amountPaid_cash < v_grandTotal then
		set v_shortfall =v_grandTotal-(v_amountPaid_card + v_amountPaid_cash);
		set p_ResponseStatus='failed';
			set p_OutputMessage=concat('Insufficient payment. An additional [currency]',v_shortfall,' is needed');
			leave sp;
	end if;
	if v_amountPaid_card > v_grandTotal then
		set p_ResponseStatus='failed';
			set p_OutputMessage=concat('Overpayment. Card payment exceeds the total amount.');
			leave sp;
	end if;
	if v_amountPaid_cash > (v_grandTotal-v_amountPaid_card) then
		set v_balanceAmount =v_grandTotal-(v_amountPaid_card + v_amountPaid_cash);
        
       set v_balanceAmount= -1 * v_balanceAmount;
        set p_balanceAmount=v_balanceAmount;
	
			
			
	end if;
end if;

if(v_grandTotal<0) then
	if(v_grandTotal!=_totalPaid) then
	set p_ResponseStatus='failed';
		set p_OutputMessage=concat('The refund amount does not match the order amount.',v_grandTotal);
		leave sp;
	end if;
end if;


if p_CustomerID is not null then
 if not exists (select * from contact where contactTypeId in (1,3) and contactId=p_CustomerID) then
	set p_ResponseStatus='failed';
set p_OutputMessage=concat('Invalid customerId : ',p_CustomerID);
leave sp;
end if;
end if;

set v_displayUserName=(select displayName from user_registration where userId=v_UserId);
   
INSERT INTO `order_header`(`SessionId`,`userLogId`,DC_CustomerId,dc_StoreId,terminalId,customerId,CurrencyId,
StoreId,userId,displayUserName,systemInfoId,companyId,utcOffset)
VALUES (v_sessionIdFromDb,p_UserLogID,v_DC_CustomerId,v_DC_StoreId,p_TerminalId,p_CustomerID,v_CurrencyId,
v_StoreId,v_UserId,v_displayUserName,v_systemInfoId,v_companyId,p_UTC_Offset);

SET v_orderId = LAST_INSERT_ID();
SET v_orderNo = LPAD(v_orderId, 5, '0');

UPDATE `order_header` SET `OrderNo` =v_orderNo WHERE `OrderId`=v_orderId;
  
  IF isOrderDiscountExists THEN
		INSERT INTO `order_overall_discount`(`OrderId`,`DiscountTypeId`,`DiscountValue`,`DiscountReasonId`,`Remark`,DiscountAmount)
		VALUES(v_orderId,orderDiscountTypeId,orderDiscountValue,orderDiscountReasonId,orderDiscountRemark,_order_DiscountAmount);
	END IF;




set v_totalItems_tblOrderList=(select count(*) from tblOrderList);
while (0< v_totalItems_tblOrderList) do

set v_allProductId=(select allProductId from tblOrderList limit 1);

set v_dc_productId=(select dc_productId from tblOrderList  limit 1);

 set v_unitPrice=(select unitPrice from tblOrderList  limit 1);
set v_qty=(select qty from tblOrderList  limit 1);
set v_measurementUnitName=(select measurementUnitName from tblOrderList  limit 1);
set v_lineTaxPerc=(select lineTaxRate from tblOrderList  limit 1);
set o_lineTaxAmount=(select lineTaxAmount from tblOrderList  limit 1);

set o_grossAmount=(select grossAmount from tblOrderList  limit 1);
set o_netAmount=(select netAmount from tblOrderList  limit 1);
set v_lineDiscountAmount=(select lineDiscountAmount from tblOrderList  limit 1);

set v_isReturned=(select isReturned from tblOrderList  limit 1);
set v_pre_orderDetailId_return=(select pre_orderDetailId_return from tblOrderList  limit 1);


set v_isDiscountExists=(select isDiscountExists from tblOrderList  limit 1);

	set v_discountTypeId=(select discountTypeId from tblOrderList  limit 1);
	set v_discountValue=(select discountValue from tblOrderList  limit 1);
	set v_discountReasonId=(select discountReasonId from tblOrderList  limit 1);
	set v_discountRemark=(select discountRemark from tblOrderList  limit 1);


set v_stockBatchId=(select stockBatchId from tblOrderList  limit 1);

	
set v_variationProductId=(select variationProductId from all_product where allProductId=v_allProductId);


if v_isCustomProduct=false then	
	
		set v_measurementUnitId=(select MeasurementUnitId from product p inner join variation_product vp on p.productId=vp.productId
	 	where vp.variationProductId=v_variationProductId);

end if;







INSERT INTO `order_details`(`OrderID`,`Qty`,allProductId,snshot_allProductId,unitCost,unitPrice,
isReturned,GrossAmount,NetAmount,MeasurementUnitId,measurementUnitName)
 values (v_orderId,v_qty,v_allProductId,v_dc_productId,v_unitCost,v_unitPrice,
v_isReturned,o_grossAmount,o_netAmount,v_measurementUnitId,v_measurementUnitName);
 
 SET v_orderDetailId = LAST_INSERT_ID();
 






 
 if v_isDiscountExists=true then
	 INSERT INTO `order_line_discount`(`OrderDetailId`,`DiscountTypeId`,`DiscountValue`,`DiscountReasonId`,`Remark`,DiscountAmount)
	VALUES(v_orderDetailId,v_discountTypeId,v_discountValue,v_discountReasonId,v_discountRemark,v_lineDiscountAmount);
 end if;

if v_lineTaxPerc>0 then
	INSERT INTO `order_line_tax`(`OrderDetailId`,`TaxRate`,TaxAmount) VALUES (v_orderDetailId,v_lineTaxPerc,o_lineTaxAmount);
end if;


if v_isCustomProduct=false then

CALL getIsStockTrackedByAllProductId(v_allProductId, v_StoreId, po_isStockTracked);




	if p_StoreId is null  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('p_StoreId is null.');
	rollback;
		leave sp;
	end if;

	if v_variationProductId is null  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('v_variationProductId is null.');
	rollback;
		leave sp;
	end if;
	
end if;

		if v_qty is null  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('v_qty is null.');
	rollback;
		leave sp;
	end if;


if v_isCustomProduct=true then
	set po_isStockTracked=false;
end if;
	
		
if po_isStockTracked = 1 then
 CALL _updateStockQty_by_allProductId(v_stockBatchId, v_qty,false,p_ResponseStatus,  p_OutputMessage);
end if;

select vo_stockBatchId as vo_stockBatchId_oooooooo,v_allProductId as v_allProductId, p_StoreId as p_StoreId,v_qty as v_qty;



if(v_isReturned=1) then
insert into order_return(`orderDetailId`,`pre_orderDetailId_return`,Qty,isStockTracked)
values(v_orderDetailId,v_pre_orderDetailId_return,v_qty,po_isStockTracked);
end if;


 
delete  from tblOrderList limit 1;
set v_totalItems_tblOrderList=(select count(*) from tblOrderList);
end while;


if(v_grandTotal!=0) then

set v_totalItems_tblPaymentList=(select count(*) from tblPaymentList);
while (0< v_totalItems_tblPaymentList) do

set v_methodId=(select methodId from tblPaymentList  limit 1);
set v_amountPaid=(select amountPaid from tblPaymentList  limit 1);
set v_cardHolderName=(select  cardHolderName from tblPaymentList  limit 1);
set v_bankId=(select  bankId from tblPaymentList  limit 1);
set v_cardTypeId= (select cardTypeId  from tblPaymentList  limit 1);
set v_cardLastFourDigits=(select cardLastFourDigits from tblPaymentList  limit 1);
set v_cardExpirationMonth=(select cardExpirationMonth from tblPaymentList  limit 1);
set v_cardExpirationYear=(select cardExpirationYear from tblPaymentList  limit 1);


INSERT INTO `order_payments`(`OrderId`,`MethodId`,`AmountPaid`)
select v_orderId,v_methodId,v_amountPaid;

SET v_paymentId = LAST_INSERT_ID();


if v_methodId=1 then
INSERT INTO cash_payments(`PaymentId`,receivedAmount,balanceAmount)
VALUES (v_paymentId,_totalPaid,v_balanceAmount);
end if;


if v_methodId=2 then
INSERT INTO card_payments(`PaymentId`,`CardHolderName`,bankId,`CardTypeId`,`CardLastFourDigits`,
`CardExpirationMonth`,`CardExpirationYear`)
VALUES (v_paymentId,v_cardHolderName,v_bankId,v_cardTypeId,v_cardLastFourDigits,
v_cardExpirationMonth,v_cardExpirationYear);
end if;

delete  from tblPaymentList limit 1;
set v_totalItems_tblPaymentList=(select count(*) from tblPaymentList);
end while;

end if;



INSERT INTO `order_summary_processed`(`OrderId`,`GrossAmount_total`,productGrossAmount_total,nonProductGrossAmount_total,`LineDiscountAmount_total`,`OverallDiscountAmount`,
`All_DiscountAmount_total`,`SubTotal`,`Adjusted_subtotal`,`GrandTotal`,LineTaxAmount_total,changeAmount,noOfItems
)
VALUES(v_orderId,v_grossAmount_total,v_productGrossAmount_total,v_nonProductGrossAmount_total,v_lineDiscountAmount_total,_order_DiscountAmount,
v_lineDiscountAmount_total+_order_DiscountAmount,v_subTotal,o_adjusted_subtotal,v_grandTotal,v_lineTaxAmount_total,v_balanceAmount,0);


    set p_OrderId=v_orderId;
	SET p_ResponseStatus = 'success';
	SET p_OutputMessage = 'Added Successfully.';
    
     DROP TEMPORARY TABLE IF EXISTS tblOrderList;
     DROP TEMPORARY TABLE IF EXISTS tblPaymentList;
    COMMIT;
    

     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Order_Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Order_Select`(
  IN p_OrderId INT,
  IN p_orderNo VARCHAR(50),
  
  IN p_OrderFromDate date,
   IN p_OrderToDate date,
    IN p_CustomerId INT,
     IN p_CustomerCode VARCHAR(50),
       IN p_CustomerName VARCHAR(100),
    IN p_TerminalId INT,
     IN p_SessionId INT,
     
	IN p_Skip INT,
    IN p_Limit INT,
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
	OUT p_TotalRows INT
)
sp: BEGIN


DECLARE _PagingQuery VARCHAR(1000);
DECLARE _filter varchar(1000);


 
  

  


SET _filter = ' WHERE 1 = 1  ';

set _PagingQuery='';
IF p_Skip IS NOT NULL AND p_Limit IS NOT NULL THEN
    SET _PagingQuery = CONCAT(' LIMIT ', p_Skip, ', ', p_Limit);
    
ELSEIF p_Skip IS NOT NULL AND p_Limit IS NULL THEN
    SET p_ResponseStatus = 'invalid';
    SET p_OutputMessage = 'The _Limit parameter is not passed or set _Skip parameter to null for unlimited data.';
	leave sp;
    
ELSEIF p_Skip IS NULL AND p_Limit IS NOT NULL THEN
    SET p_ResponseStatus = 'invalid';
    SET p_OutputMessage = 'The _Skip parameter is not passed or set _Limit parameter to null for unlimited data.';
	leave sp;
END IF;


        IF p_OrderId IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND oh.OrderId = ', p_OrderId);
        END IF;
        
        IF p_OrderFromDate IS NOT NULL and p_OrderToDate IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND oh.CreatedDate_UTC between ''', p_OrderFromDate, ''' and ''',p_OrderToDate, '''');
       elseif p_OrderFromDate IS NOT NULL AND p_OrderToDate IS  NULL OR 
       p_OrderFromDate IS NULL AND p_OrderToDate IS NOT NULL THEN
          SET p_ResponseStatus = 'invalid';
		SET p_OutputMessage = 'You have to supply both fromDate and toDate';
		leave sp;
       END IF;
        
    IF p_orderNo IS NOT NULL THEN
    SET _filter = CONCAT(_filter, ' AND oh.orderNo LIKE ''%', p_orderNo, '%''');
END IF;
        
        
        IF p_CustomerId IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND oh.CustomerId = ''', p_CustomerId, '''');
        END IF;
        
          IF p_CustomerCode IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND c.customerCode = ''', p_CustomerCode, '''');
        END IF;
        
            IF p_CustomerName IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND c.customerName  LIKE ''%', p_CustomerName, '%''');
        END IF;
        
        IF p_TerminalId IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND oh.TerminalId = ''', p_TerminalId, '''');
        END IF;
        
        IF p_SessionId IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND oh.SessionId = ', p_SessionId);
        END IF;
 
       

SET @_query = CONCAT('SELECT oh.orderId,orderNo,isVoided,terminalId,sessionId,
oh.createdDate_UTC,currencyId,oh.customerId,c.contactName as customerName,
c.contactCode as customerCode,osp.grossAmount_total,osp.lineDiscountAmount_total,
osp.overallDiscountAmount,osp.all_DiscountAmount_total,osp.subTotal,osp.adjusted_subtotal,
osp.grandTotal,osp.lineTaxAmount_total,CAST(oh.isVoided AS UNSIGNED) as isVoided
  from order_header as oh 
inner join order_summary_processed as osp ON oh.OrderId=osp.OrderId
left outer join contact as c on oh.customerid=c.contactId  ',_filter,
' order by oh.createdDate_UTC desc ',_PagingQuery);

	
	PREPARE stmt FROM @_query;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;


    SET @queryTotal = CONCAT('SELECT COUNT(oh.OrderId) INTO @totalRows from order_header as oh
 inner join order_summary_processed as osp ON oh.OrderId=osp.OrderId ', _filter);
        
    PREPARE stmt FROM @queryTotal;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    
    SET p_TotalRows = @totalRows;

    DROP TEMPORARY TABLE IF EXISTS tblAssignedTerminals;
   
set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `product_availaleStores_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `product_availaleStores_select`(
  IN p_ProductId INT,
   IN p_VariationProductId INT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN


if(p_VariationProductId is null and p_ProductId is not null) then
select sip.inventoryId,s.storeId,s.storeCode,s.storeName,sum(nsi.StockQty) as stockQty from store_inventory_product sip 
inner join store s on sip.StoreId=s.storeId
inner join inventory i on sip.inventoryId=i.inventoryId
inner join non_serialized_item nsi on i.inventoryId=nsi.inventoryId 
where sip.singleProductId=p_ProductId or sip.comboProductId=p_ProductId
group by s.storeId;

end if;

if(p_VariationProductId is not null and p_ProductId is null) then
select sip.inventoryId,s.storeId,s.storeCode,s.storeName,sum(nsi.StockQty) as stockQty from store_inventory_product sip 
inner join store s on sip.StoreId=s.storeId
inner join inventory i on sip.inventoryId=i.inventoryId
inner join non_serialized_item nsi on i.inventoryId=nsi.inventoryId 
where sip.variationProductId=p_VariationProductId
group by s.storeId;


end if;


SET p_ResponseStatus='success';
SET p_OutputMessage='loaded successfully';


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Product_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Product_Delete`(
    IN p_allProductId INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    IN p_IsConfirm BIT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN
    DECLARE v_singleProductId INT;
    DECLARE v_variationProductId INT;
    DECLARE v_comboProductId INT;
    DECLARE v_productTypeId INT;
    DECLARE v_inventoryId INT;
    DECLARE v_productId INT;
    DECLARE v_isValidated BIT;
    DECLARE v_skus TEXT;
    DECLARE err_message VARCHAR(255);

      
     
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        
        ROLLBACK;
        
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        
        SET err_message = CONCAT('Parent error: ', err_message);
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;

    
    SET p_ResponseStatus = 'failed';
    SET p_OutputMessage = 'null';

    
    IF p_allProductId IS NULL THEN
        SET p_OutputMessage = 'allProductId is required.';
        LEAVE sp;
    END IF;

    IF p_IsConfirm IS NULL OR p_IsConfirm = 0 THEN
        SET p_ResponseStatus = 'confirm';
        SET p_OutputMessage = 'Are you sure you want to delete this product?';
        LEAVE sp;
    END IF;

    
    IF NOT EXISTS (SELECT 1 FROM all_product WHERE allProductId = p_allProductId) THEN
        SET p_OutputMessage = 'Product does not exist.';
        LEAVE sp;
    END IF;

    
    SELECT singleProductId, variationProductId, comboProductId, productTypeId
    INTO v_singleProductId, v_variationProductId, v_comboProductId, v_productTypeId
    FROM all_product
    WHERE allProductId = p_allProductId;

    
    IF v_productTypeId NOT IN (1, 2, 3) THEN
        SET p_OutputMessage = 'Invalid productTypeId. Must be 1, 2, or 3.';
        LEAVE sp;
    END IF;

    
    IF EXISTS (SELECT 1 FROM order_details WHERE allProductId = p_allProductId) THEN
        SET p_OutputMessage = 'Product is already in use in order_details.';
        LEAVE sp;
    END IF;

    
    IF EXISTS (SELECT 1 FROM stockentrydetails WHERE allProductId = p_allProductId) THEN
        SET p_OutputMessage = 'Product is already in use in stockentrydetails.';
        LEAVE sp;
    END IF;

    
    CALL _validateProductIsUsedAsASubProductOfAnotherProduct(p_allProductId, v_isValidated, v_skus);
    IF v_isValidated = FALSE THEN
        SET p_OutputMessage = CONCAT('Cannot delete product. It is used as a sub-product in: ', v_skus);
        LEAVE sp;
    END IF;

    
    SELECT inventoryId INTO v_inventoryId
    FROM store_inventory_product
    WHERE allProductId = p_allProductId
    LIMIT 1;

    
    START TRANSACTION;

    
    IF v_productTypeId = 1 THEN
        
        SET v_productId = v_singleProductId;

        
        IF v_inventoryId IS NOT NULL THEN
            DELETE FROM non_serialized_item WHERE inventoryId = v_inventoryId;
            DELETE FROM inventory WHERE inventoryId = v_inventoryId;
        END IF;

        
        DELETE FROM product_category WHERE productId = v_singleProductId;
        DELETE FROM sub_product_detail WHERE allProductId = p_allProductId;
        DELETE FROM store_inventory_product WHERE allProductId = p_allProductId;
        DELETE FROM all_product WHERE allProductId = p_allProductId;
        DELETE FROM single_product WHERE productId = v_singleProductId;
        DELETE FROM product WHERE productId = v_singleProductId;

    ELSEIF v_productTypeId = 2 THEN
        
        SET v_productId = (SELECT productId FROM variation_product WHERE variationProductId = v_variationProductId);

        
        IF v_inventoryId IS NOT NULL THEN
            DELETE FROM non_serialized_item WHERE inventoryId = v_inventoryId;
            DELETE FROM inventory WHERE inventoryId = v_inventoryId;
        END IF;

        
        DELETE FROM variation_product_detail WHERE variationProductId = v_variationProductId;
    
        DELETE FROM store_inventory_product WHERE allProductId = p_allProductId;
        DELETE FROM product_category WHERE productId = v_productId;
                    DELETE FROM sub_product_detail WHERE allProductId = p_allProductId;
        DELETE FROM all_product WHERE allProductId = p_allProductId;
        DELETE FROM variation_product WHERE variationProductId = v_variationProductId;
        DELETE FROM product WHERE productId = v_productId;

    ELSEIF v_productTypeId = 3 THEN
        
        SET v_productId = v_comboProductId;

        
        IF v_inventoryId IS NOT NULL THEN
            DELETE FROM non_serialized_item WHERE inventoryId = v_inventoryId;
            DELETE FROM inventory WHERE inventoryId = v_inventoryId;
        END IF;

        
        DELETE FROM product_category WHERE productId = v_comboProductId;
        DELETE FROM store_inventory_product WHERE allProductId = p_allProductId;
        DELETE FROM all_product WHERE allProductId = p_allProductId;
        DELETE FROM combo_product WHERE productId = v_comboProductId;
        DELETE FROM product WHERE productId = v_comboProductId;
    END IF;

    
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Product deleted successfully.';

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Product_Insert_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Product_Insert_Update`(
    IN p_tableID INT,
    IN p_storeIdList_json json,

    IN p_ProductName VARCHAR(500),
    IN p_CategoryIdList_json json,
   IN p_variationProductList_json json,
     
    IN p_MeasurementUnitId int,
   IN p_productTypeId int,
   IN p_isNotForSelling bit,
   IN p_imgUrl text,
  IN p_isUnique bit,
 IN p_isStockTracked bit,
  IN p_isProductItem bit,
   IN p_isAssemblyProduct bit,
    IN p_BrandId int,



    IN p_ReorderLevel DECIMAL(10, 2),
   in p_isExpiringProduct bit,
    IN p_SaveType VARCHAR(1),
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    
    IN p_IsConfirm BIT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
    OUT p_productId int
)
sp: BEGIN

	declare v_productId int;
	
		DECLARE noOfItemsInCategoryList int;
        DECLARE i_categoryList int default 0;
        
       DECLARE noOfVariationProductList int;
        DECLARE i_variationProductList int default 0;
       
        declare v_totalItems_tblVariationProduct int;
         declare v_variationProductId int;
            declare v_variationProductId_new int;
        
         	DECLARE v_variationDetailsObjArr JSON;
         	
         	
         	
         	
DECLARE v_lastInsertedId int;
 	
declare i_variationDetails int;
declare noOfVariationDetails int;

declare v_variationTypeId varchar(50);
declare v_variationValue varchar(50); 
declare v_variationName varchar(50); 


        

        
        declare v_totalItems_tblComboProductDetail int;
       
        DECLARE v_subProductDetailsForVari_ObjArr JSON;

        DECLARE noOfSubProductslList int;
        DECLARE i_subProductsList int default 0;
        declare i_subProductDetailsForVari int;
        
          DECLARE noOfSubProductDetailsForVari int;
          
          declare v_subProductAllProductId_mat int;
          declare v_subProductQty decimal(10,2);
        
        declare v_allProductId_mat int;
         declare v_allProductId_sv int;
       
        declare v_variationProductIdStr varchar(50);
       declare v_sku varchar(50);
 		declare v_barcode varchar(50);

		DECLARE noOfComboProductDetailList int;
        DECLARE i_comboProductDetailList int default 0;
       
       
       		DECLARE noOfStoreIdList_json int;
        DECLARE i_storeIdListList int default 0;
       	DECLARE v_storeId int;
       
     DECLARE  v_totalItems_tblStoreIdList int;
      DECLARE v_storeIdTmp int;
       declare v_totalItems_tblSubProducts int;
     
       
       declare v_qty decimal(10,2);
 		declare v_comboSku_mat varchar(50);
 	declare v_variationComboSku_mat varchar(50);
 	
 
 	 declare v_comboProductId_mat varchar(50);
 	declare v_variationComboProductId_mat_str varchar(50);
			 
 

 	 
 	 
 	 
 	declare v_productId_mat int;
 	declare v_variationProductId_mat int;
 
 	declare v_variationProductIdTmp int;
 	
        declare v_generatedProductNo varchar(50);
       
       declare v_inventoryId int;
      

   declare v_productTypeId_mat int;
     
   
 declare  v_unitCost_str varchar(50);
  declare  v_unitPrice_str varchar(50);
   declare  v_taxPerc_str varchar(50);
 
 
        declare v_unitPrice decimal(10,2);
   declare v_unitCost decimal(10,2);
         declare v_taxPerc decimal(10,2);

            declare v_allProductId int;
            

        
                  
              declare v_skuDupCount int default 0;  
                declare v_barcodeDupCount int default 0;
              
        DECLARE v_dupSkus TEXT;    
           
    DECLARE v_dupBarcodes TEXT;    
        
        
           

     DECLARE err_message VARCHAR(255);
     
     
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
       begin
	        ROLLBACK;
            
            GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
            
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
        END; 
   
   

   	if (p_tableID<1) then
		set p_OutputMessage='Invalid tableId';
        set p_ResponseStatus='failed';
      
        leave sp;
	end if;


   	
   	if (p_isAssemblyProduct is null) then
		set p_OutputMessage='p_isAssemblyProduct can not be null';
        set p_ResponseStatus='failed';

        leave sp;
	end if;
   	
   
	set noOfItemsInCategoryList=JSON_LENGTH(p_CategoryIdList_json);
  
	if JSON_LENGTH(p_CategoryIdList_json)=0 or p_CategoryIdList_json is null then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('At least one category is required.');
		leave sp;
	end if;
    
	if JSON_LENGTH(p_CategoryIdList_json)>3 then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('More than 3 categories selected. Please select a maximum of 3 categories.');
		leave sp;
	end if;

 DROP TEMPORARY TABLE IF EXISTS tblcategory;
  CREATE TEMPORARY TABLE tblcategory (
    orderId INT AUTO_INCREMENT PRIMARY KEY,
    categoryId INT
);
   
        WHILE i_categoryList < noOfItemsInCategoryList DO
           set @_categoryId = JSON_EXTRACT(p_CategoryIdList_json, CONCAT('$[', i_categoryList, ']'));
			if not isNumeric(@_categoryId) then
				set p_ResponseStatus='failed';
				set p_OutputMessage=concat('Invalid categoryId : ',@_categoryId);
				leave sp;
			end if;
            
            if not exists(select * from category where categoryId=@_categoryId) then
				set p_ResponseStatus='failed';
				set p_OutputMessage=concat('Un registerd categoryId : ',@_categoryId);
				leave sp;
			end if;

            INSERT INTO tblcategory(categoryId) VALUES (@_categoryId);
            
            SET i_categoryList = i_categoryList + 1;
            
		END WHILE;
        

  if p_isProductItem=false then
  set p_isStockTracked=false;
  end if;
  










	  
  
  
DROP TEMPORARY TABLE IF EXISTS tblSubProducts;
  CREATE TEMPORARY TABLE tblSubProducts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    qty decimal(10,2),
    allProductId_mat int
);


 if p_isAssemblyProduct=true && p_isStockTracked=true then
    	set p_ResponseStatus='failed';
		set p_OutputMessage=concat('An assembly product cannot be a stock-tracked item');
		leave sp;
  
  end if;
  


  

	 
     if p_productTypeId=2 then

set noOfVariationProductList=JSON_LENGTH(p_variationProductList_json);
  
	if JSON_LENGTH(p_variationProductList_json)=0 or p_variationProductList_json is null then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('At least one variation is required.');
		leave sp;
	end if;
	





DROP TEMPORARY TABLE IF EXISTS tblVariationProduct;
DROP TEMPORARY TABLE IF EXISTS tmpVariationDetails;
DROP TEMPORARY TABLE IF EXISTS tmpSubProductDetailsForVari;


CREATE TEMPORARY TABLE tblVariationProduct (
    variationProductIdTmp INT AUTO_INCREMENT PRIMARY KEY,
    variationProductId INT,
    sku VARCHAR(50),
    barcode VARCHAR(50),
    unitCost decimal(10,2),
    unitPrice decimal(10,2),
    taxPerc decimal(10,2),
    isAssemblyProduct bit
);


CREATE TEMPORARY TABLE tmpVariationDetails (
    detailId INT AUTO_INCREMENT PRIMARY KEY,
    variationProductIdTmp INT,
    variationProductId INT,
    variationTypeId VARCHAR(50),
    variationValue VARCHAR(50)
);

CREATE TEMPORARY TABLE tmpSubProductDetailsForVari (
    detailId INT AUTO_INCREMENT PRIMARY KEY,
    variationProductIdTmp INT,
    variationProductId INT,
    qty decimal(10,2),
    allProductId_mat int
);


SET i_variationProductList = 0;


WHILE i_variationProductList < noOfVariationProductList DO	
    


    

    SET v_unitCost_str = JSON_UNQUOTE(JSON_EXTRACT(p_variationProductList_json, CONCAT('$[', i_variationProductList, '].unitCost')));

    
    IF v_unitCost_str IS NULL OR v_unitCost_str = '' THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = CONCAT('UnitCost is required');
        LEAVE sp;
    END IF;
    
    
    
       SET v_unitPrice_str = JSON_UNQUOTE(JSON_EXTRACT(p_variationProductList_json, CONCAT('$[', i_variationProductList, '].unitPrice')));

    
    IF v_unitPrice_str IS NULL OR v_unitPrice_str = '' THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = CONCAT('UnitPrice is required');
        LEAVE sp;
    END IF;
    
    
    
      SET v_taxPerc_str = JSON_UNQUOTE(JSON_EXTRACT(p_variationProductList_json, CONCAT('$[', i_variationProductList, '].taxPerc')));

    
    IF v_taxPerc_str IS NULL OR v_taxPerc_str = '' THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = CONCAT('Tax is required');
        LEAVE sp;
    END IF;
    
    

set v_variationProductIdStr=JSON_UNQUOTE(JSON_EXTRACT(p_variationProductList_json, CONCAT('$[', i_variationProductList, '].variationProductId')));
    SET v_sku = JSON_UNQUOTE(JSON_EXTRACT(p_variationProductList_json, CONCAT('$[', i_variationProductList, '].sku')));
    SET v_barcode = JSON_UNQUOTE(JSON_EXTRACT(p_variationProductList_json, CONCAT('$[', i_variationProductList, '].barcode')));      
      SET v_unitCost = JSON_UNQUOTE(JSON_EXTRACT(p_variationProductList_json, CONCAT('$[', i_variationProductList, '].unitCost')));      
SET v_unitPrice = JSON_UNQUOTE(JSON_EXTRACT(p_variationProductList_json, CONCAT('$[', i_variationProductList, '].unitPrice')));      
   SET v_taxPerc = JSON_UNQUOTE(JSON_EXTRACT(p_variationProductList_json, CONCAT('$[', i_variationProductList, '].taxPerc')));      



 
    
    IF v_sku IS NULL OR v_sku = '' THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = CONCAT('SKU is required',v_sku);
        LEAVE sp;
   END IF;



   
   if v_barcode='null' then set v_barcode=null; end if;
   if v_barcode='' then set v_barcode=null; end if;

    
    SET v_variationDetailsObjArr = JSON_EXTRACT(p_variationProductList_json, CONCAT('$[', i_variationProductList, '].variationDetails'));
 if v_variationDetailsObjArr='null' then set v_variationDetailsObjArr=null; end if;






   
   if v_variationProductIdStr='null' then set v_variationProductIdStr=null; end if;
   
   
    
    INSERT INTO tblVariationProduct(variationProductId,sku, barcode,unitCost,unitPrice,taxPerc) 
    VALUES (v_variationProductIdStr,v_sku, v_barcode,v_unitCost,v_unitPrice,v_taxPerc);
    
    
    SET v_lastInsertedId = LAST_INSERT_ID();

    
    SET i_variationDetails = 0;
    SET noOfVariationDetails = JSON_LENGTH(v_variationDetailsObjArr);

    
    WHILE i_variationDetails < noOfVariationDetails DO
        
        SET v_variationTypeId = JSON_UNQUOTE(JSON_EXTRACT(v_variationDetailsObjArr, CONCAT('$[', i_variationDetails, '].variationTypeId')));
      SET v_variationValue = JSON_UNQUOTE(JSON_EXTRACT(v_variationDetailsObjArr, CONCAT('$[', i_variationDetails, '].variationValue')));
       
        if v_variationValue='' then set v_variationValue=null; end if;
  if v_variationValue is null then
   	set p_ResponseStatus='failed';
		set p_OutputMessage=concat('variation value is required');
		leave sp;
	end if;

    
       
        
        INSERT INTO tmpVariationDetails(variationProductIdTmp,variationProductId, variationTypeId, variationValue)
        VALUES (v_lastInsertedId,v_variationProductIdStr, v_variationTypeId, v_variationValue);

        
        SET i_variationDetails = i_variationDetails + 1;
    END WHILE;
 
        
        
        
        
   
   if p_isAssemblyProduct=true then
  
   

   
   
            
    SET v_subProductDetailsForVari_ObjArr = JSON_EXTRACT(p_variationProductList_json, CONCAT('$[', i_variationProductList, '].subProductsList'));
 if v_subProductDetailsForVari_ObjArr='null' then set v_subProductDetailsForVari_ObjArr=null; end if;

    if v_subProductDetailsForVari_ObjArr is null then
    	set p_ResponseStatus='failed';
		set p_OutputMessage=concat('Sub product can not be null for the product sku:',v_sku);
		leave sp;
 	end if;
        
        
            SET i_subProductDetailsForVari = 0;
    SET noOfSubProductDetailsForVari = JSON_LENGTH(v_subProductDetailsForVari_ObjArr);

        
  if noOfSubProductDetailsForVari=0 then 
 	set p_ResponseStatus='failed';
 	set p_OutputMessage=concat('An assembly product SKU:',v_sku,' must have at least one sub-product.');
 	leave sp;
  end if;

     

    WHILE i_subProductDetailsForVari < noOfSubProductDetailsForVari DO
    
        SET v_subProductAllProductId_mat = JSON_UNQUOTE(JSON_EXTRACT(v_subProductDetailsForVari_ObjArr, CONCAT('$[', i_subProductDetailsForVari, '].allProductId')));

        SET v_subProductQty = JSON_UNQUOTE(JSON_EXTRACT(v_subProductDetailsForVari_ObjArr, CONCAT('$[', i_subProductDetailsForVari, '].qty')));
             
        
        
    if not exists(select * from all_product where allProductId=v_subProductAllProductId_mat)  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('invalid sub product.');
		leave sp;
	end if;
	


  
	
	if exists(select * from all_product ap inner join variation_product vp on ap.variationProductId=vp.variationProductId
	inner join product p on vp.productId=p.productId where p.isAssemblyProduct=1 and ap.allProductId=v_subProductAllProductId_mat)  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('An assembly product cannot be a sub-product of another assembly product.');
		leave sp;
	end if;
	
		

	
        
        
        
        INSERT INTO tmpSubProductDetailsForVari(variationProductIdTmp,variationProductId, qty, allProductId_mat)
        VALUES (v_lastInsertedId,v_variationProductIdStr, v_subProductQty, v_subProductAllProductId_mat);
         
        
        
        SET i_subProductDetailsForVari = i_subProductDetailsForVari + 1;
    END WHILE;
        
        IF EXISTS (
    SELECT 1
    FROM tmpSubProductDetailsForVari subp
    inner JOIN store_inventory_product sip 
        ON subp.allProductId_mat = sip.allProductId
    WHERE sip.inventoryId IS NULL
) THEN
    SET p_OutputMessage = 'A sub-item must always be a stock-tracked product.';
    SET p_ResponseStatus = 'failed';
    ROLLBACK;
    LEAVE sp;
END IF;
        
IF (
    SELECT COUNT(*)
    FROM (
        SELECT variationProductId, variationProductIdTmp, allProductId_mat
        FROM tmpSubProductDetailsForVari
        GROUP BY variationProductId, variationProductIdTmp, allProductId_mat
        HAVING COUNT(*) > 1
    ) dup
) > 0 THEN
    SET p_ResponseStatus = 'failed';
    SET p_OutputMessage = 'Duplicated sub-products are not allowed for the same variation.';
    ROLLBACK;
    LEAVE sp;
END IF;

        

end if;   
        
     
    
    SET i_variationProductList = i_variationProductList + 1;
END WHILE;




if (select count(*)>1 from tblVariationProduct) then
	if not exists (select * from tmpVariationDetails) then
 	set p_ResponseStatus='failed';
 		set p_OutputMessage=concat('At least one variation type is required to create variation item.');
 		leave sp;
 	end if;
end if;









	
	
	end if;


	 
	


set noOfStoreIdList_json=JSON_LENGTH(p_storeIdList_json);
DROP TEMPORARY TABLE IF EXISTS tblStoreIdList;
  CREATE TEMPORARY TABLE tblStoreIdList (
    storeId int
);
   
        WHILE i_storeIdListList < noOfStoreIdList_json DO	
         	 set v_storeId=JSON_UNQUOTE(JSON_EXTRACT(p_storeIdList_json, CONCAT('$[', i_storeIdListList, '].storeId')));
			
            INSERT INTO tblStoreIdList(storeId) VALUES (cast (v_storeId as int));
            
            SET i_storeIdListList = i_storeIdListList + 1;
            
		END WHILE;

	
	
	   if(p_isUnique=1) then
            if (p_isStockTracked=0) then
				set p_OutputMessage='A unique product must always be a stock-tracked item';
				set p_ResponseStatus='failed';
			 	
				leave sp;
			end if;
		end if;
	
	
	     if exists(select * from tblStoreIdList where storeId is null) then
				set p_OutputMessage='Store can not be null';
				set p_ResponseStatus='failed';
				leave sp;
			end if;
		
		IF EXISTS (SELECT storeId FROM tblStoreIdList GROUP BY storeId HAVING COUNT(storeId) > 1
		) THEN
   			 SET p_OutputMessage = 'Duplicate storeId values found';
   			 SET p_ResponseStatus = 'failed';
   			 LEAVE sp;
   		END IF;		
	
		
		
		
	
	    START TRANSACTION;
	
	        if not exists (select * from tblStoreIdList) then
				set p_OutputMessage='Atleast one store is requred.';
				set p_ResponseStatus='failed';
			rollback;
				leave sp;
			end if;
	   

    IF p_SaveType = 'I' THEN
    
    
 

   

  
        
    if p_productTypeId=2 then
   
     
			if exists(select sku from tblVariationProduct where sku is null or sku='null') then 
				set p_OutputMessage='SKU is required for v.';
				set p_ResponseStatus='failed';
			rollback;
				leave sp;
			 end if;		    	  
		   
		   
		   if (select count(sku) from tblVariationProduct) != (select count(distinct sku) from tblVariationProduct) then
		    set p_ResponseStatus = 'failed';
		    set p_OutputMessage = 'Duplicate SKUs are not allowed for variations.';
		   rollback;
		    leave sp;
		end if;
		
		    
		    



SELECT 
    COUNT(*),
    GROUP_CONCAT(vp.SKU ORDER BY vp.SKU SEPARATOR ', ')
INTO  v_skuDupCount, v_dupSkus
FROM variation_product vp
WHERE vp.SKU IN (
    SELECT sku FROM tblVariationProduct
);


IF v_skuDupCount > 0 THEN
    SET p_ResponseStatus = 'failed';
    SET p_OutputMessage = CONCAT(
        'SKU(s) ', v_dupSkus, ' already used in existing products.'
    );

    ROLLBACK;
    LEAVE sp;
END IF;

		
		


	


	
			
			
		
		
		
		   
		   
		   if (select count(barcode) from tblVariationProduct) != (select count(distinct barcode) from tblVariationProduct) then
		    set p_ResponseStatus = 'failed';
		    set p_OutputMessage = 'Duplicate Barcodes are not allowed for variations.';
		   rollback;
		    leave sp;
		end if;
		
		    
		    

SELECT 
    COUNT(*),
    GROUP_CONCAT(vp.barcode ORDER BY vp.barcode SEPARATOR ', ')
INTO  v_barcodeDupCount, v_dupBarcodes
FROM variation_product vp
WHERE vp.barcode IN (
    SELECT barcode FROM tblVariationProduct
);


IF v_barcodeDupCount > 0 THEN
    SET p_ResponseStatus = 'failed';
    SET p_OutputMessage = CONCAT(
        'Barcode(s) ', v_dupBarcodes, ' already used in existing products.'
    );

    ROLLBACK;
    LEAVE sp;
END IF;



	
	
		



end if;
    
  


            
		 if exists (select * from product where ProductName=p_ProductName) then
				set p_OutputMessage='Product Name already exists';
				set p_ResponseStatus='failed';
				rollback;	leave sp;
			end if;


		

        INSERT INTO Product (
        productId,ProductName, BrandId, MeasurementUnitId,  productTypeId,isProductItem,
isNotForSelling,imageUrl,isUnique, isExpiringProduct, UserLogId,ModifiedDate_UTC, ModifiedDate_ServerTime,isAssemblyProduct
        )
        VALUES (
			p_tableId,
            p_ProductName,  p_BrandId, p_MeasurementUnitId,p_productTypeId,p_isProductItem,
p_isNotForSelling,p_imgUrl,p_isUnique,p_isExpiringProduct,
           
p_UserLogID, utc_timestamp(), current_timestamp(),p_isAssemblyProduct );

      set  v_productId=LAST_INSERT_ID();
     
    



      insert into product_category(productId,categoryId,orderId) 
     select v_productId,categoryId,orderId from tblcategory;
     
  
    



    
     if p_productTypeId=2 then


set v_totalItems_tblVariationProduct=(select count(*) from tblVariationProduct);

     while (0< v_totalItems_tblVariationProduct) do

   set v_variationProductIdTmp=(select variationProductIdTmp from tblVariationProduct  limit 1);
set v_sku=(select sku from tblVariationProduct  limit 1);
set v_barcode=(select barcode from tblVariationProduct  limit 1);
set v_unitCost=(select unitCost from tblVariationProduct  limit 1);
set v_unitPrice=(select unitPrice from tblVariationProduct  limit 1);
set v_taxPerc=(select taxPerc from tblVariationProduct  limit 1);

  
         if(p_isUnique=1) then
            if (p_isStockTracked=0) then
				set p_OutputMessage='A unique product must always be a stock-tracked item';
				set p_ResponseStatus='failed';
			 	SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
				rollback;	leave sp;
			end if;
		
		 	
		  	
		  end if;
		 
	
        

insert into variation_product(sku,barcode,productId,unitPrice,unitCost)
values(v_sku,v_barcode,v_productId,v_unitPrice,v_unitCost);

set v_variationProductId=LAST_INSERT_ID();
	
insert into all_product(variationProductId,productTypeId) 
values (v_variationProductId,p_productTypeId);
set v_allProductId=LAST_INSERT_ID();



		 insert into sub_product_detail(allProductId,qty,allProductId_mat) 
		 select v_allProductId,qty,allProductId_mat from tmpSubProductDetailsForVari where variationProductIdTmp=v_variationProductIdTmp;
		
	     select * from tmpSubProductDetailsForVari where variationProductIdTmp=v_variationProductIdTmp;

insert into variation_product_detail(variationProductId,variationTypeId,variationValue)
select v_variationProductId,variationTypeId,variationValue from tmpVariationDetails where variationProductIdTmp=v_variationProductIdTmp;



DROP TEMPORARY TABLE IF EXISTS tblStoreIdListCopy;
CREATE TEMPORARY TABLE tblStoreIdListCopy AS
SELECT * FROM tblStoreIdList;



	   set v_totalItems_tblStoreIdList=(select count(*) from tblStoreIdListCopy);
		       
		    
		  while (0< v_totalItems_tblStoreIdList) do
		
			  	set v_storeIdTmp=(select storeId from tblStoreIdListCopy  limit 1);
				set v_inventoryId=null;
			  
						
				if p_isProductItem=true then
			  	if p_isStockTracked=true then
		
			     	insert into inventory(reorderLevel) values(p_ReorderLevel);
			     	set v_inventoryId=LAST_INSERT_ID();
			     	         
			   end if;
			   end if;
			  	  
			  
			          
    insert into store_inventory_product(storeId,inventoryId,variationProductId,allProductId) 
    values(v_storeIdTmp,v_inventoryId,v_variationProductId,v_allProductId);
			
   
   
			   
			   delete  from tblStoreIdListCopy limit 1;
					set v_totalItems_tblStoreIdList=(select count(*) from tblStoreIdListCopy);
			
			end while;
		





 


delete  from tblVariationProduct limit 1;
set v_totalItems_tblVariationProduct=(select count(*) from tblVariationProduct);
end while;
     
     
   end if;
  


    
    
    
      
        SET p_ResponseStatus = 'success';
        SET p_OutputMessage = 'Added Successfully';
        set p_productId=v_productId;
        
    ELSEIF p_SaveType = 'U' THEN
    

        
    if p_productTypeId=2 then


         if not exists (select * from product where productId=p_tableID and productTypeId=2) then
				set p_OutputMessage='It is not allowed to change the product type.';
				set p_ResponseStatus='failed';
				SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
				rollback;	leave sp;
			
		end if;
		
   
    
    	if exists(select sku from tblVariationProduct where sku is null or sku='null') then 
				set p_OutputMessage='SKU is required for v.';
				set p_ResponseStatus='failed';
				rollback;	leave sp;
		end if;		    	  
		   
		   
		if (select count(sku) from tblVariationProduct) != (select count(distinct sku) from tblVariationProduct) then
		    set p_ResponseStatus = 'failed';
		    set p_OutputMessage = 'Duplicate SKUs are not allowed for variations.';
		    rollback;	leave sp;
		end if;
    



select vp.sku as vp,vp.variationProductId as variationProductId_vp,
tvp.sku as tvp,tvp.variationProductId as variationProductIdTvp from variation_product vp 
 inner join tblVariationProduct tvp on vp.variationProductId!=tvp.variationProductId and vp.SKU=tvp.sku;



 set v_skuDupCount=v_skuDupCount+(select count(*) from variation_product vp 
 inner join tblVariationProduct tvp on vp.variationProductId!=tvp.variationProductId and vp.SKU=tvp.SKU);



set v_skuDupCount=v_skuDupCount+(select count(*) from serialized_item  
si inner join store_inventory_product as sip on si.inventoryId=sip.inventoryId 
inner join product p on sip.singleProductId=p.productId where p.productId!=p_tableID 
and serialNumber in (select sku from tblVariationProduct));

	if v_skuDupCount>0  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('SKU is already used in products v.');
		
        
		rollback;	leave sp;
	end if;


		


IF EXISTS (
    SELECT tmp.barcode
    FROM tblVariationProduct tmp inner join variation_product vp on tmp.variationProductId=vp.variationProductId 
    WHERE vp.productId != p_tableID 
      AND tmp.barcode IS NOT null 
    GROUP BY tmp.barcode,vp.barcode
    HAVING COUNT(*) > 1
) THEN
    SET p_ResponseStatus = 'failed';
    SET p_OutputMessage = concat('Duplicate Barcodes are not allowed for variationsoo.');
    ROLLBACK; LEAVE sp;
END IF;


	

		set v_skuDupCount=v_skuDupCount+(select count(*) from variation_product vp where productId!=p_tableID and
	barcode in (select barcode from tblVariationProduct where barcode IS NOT null AND barcode != ''));
  


	
	

		set v_skuDupCount=v_skuDupCount+(select count(*) from serialized_item si inner join 
		store_inventory_product sip on si.inventoryId=sip.inventoryId 
		inner join variation_product vp ON sip.variationProductId=vp.variationProductId where vp.productId!=p_tableID and 
	serialNumber in (select barcode from tblVariationProduct where barcode IS NOT null AND barcode != '' ));

	
			if v_skuDupCount>0  then
				set p_ResponseStatus='failed';
				set p_OutputMessage=concat('Barcode is already used in an other producti.',v_skuDupCount);
				
		        
				rollback;	leave sp;
			end if;
		

  

end if;
    




 
    
	if not exists (select * from product where ProductId=p_tableID) then
		set p_OutputMessage='Invalid product id';
        set p_ResponseStatus='failed';
        rollback;	leave sp;
	end if;
    


	
	
     
     
	

	if exists (select * from product where ProductName=p_ProductName and ProductId!=p_tableID) then
		set p_OutputMessage='Product Name already exists';
        set p_ResponseStatus='failed';
        rollback;	leave sp;
	end if;



	
   
    



DROP TEMPORARY TABLE IF EXISTS currentCategories;
CREATE TEMPORARY TABLE currentCategories(categoryId INT);

INSERT INTO currentCategories(categoryId)
SELECT categoryId FROM product_category WHERE productId = p_tableID;



DROP TEMPORARY TABLE IF EXISTS categoriesToAdd;
CREATE TEMPORARY TABLE categoriesToAdd(categoryId INT);


DROP TEMPORARY TABLE IF EXISTS categoriesToRemove;
CREATE TEMPORARY TABLE categoriesToRemove(categoryId INT);


INSERT INTO categoriesToAdd(categoryId)
SELECT t.categoryId FROM tblcategory t
WHERE NOT EXISTS (SELECT 1 FROM currentCategories c WHERE t.categoryId = c.categoryId);


INSERT INTO categoriesToRemove(categoryId)
SELECT c.categoryId FROM currentCategories c
WHERE NOT EXISTS (SELECT 1 FROM tblcategory t WHERE t.categoryId = c.categoryId);


DELETE FROM product_category
WHERE productId = p_tableID AND categoryId IN (SELECT categoryId FROM categoriesToRemove);


INSERT INTO product_category(productId, categoryId)
SELECT p_tableID, categoryId FROM categoriesToAdd;

     
   
    UPDATE Product
    SET
        ProductName = p_ProductName,
        BrandId = p_BrandId,
        MeasurementUnitId = p_MeasurementUnitId,
       
        isProductItem=p_isProductItem,
        isNotForSelling = p_isNotForSelling,
        imageUrl = p_imgUrl,
        isUnique = p_isUnique,
        isExpiringProduct=p_isExpiringProduct,
        ModifiedDate_UTC = utc_timestamp(),
        ModifiedDate_ServerTime = current_timestamp(),
        isAssemblyProduct=p_isAssemblyProduct
    WHERE ProductId = p_tableID;
       					
        
   
   
  
   

     if(p_isUnique=1) then
    
      if (p_isStockTracked=0) then
				set p_OutputMessage='A unique product must always be a stock-tracked item';
				set p_ResponseStatus='failed';
				SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
				rollback;	leave sp;
			
			end if;
		
	  end if;
	 

     
      
      
      
      
      
      
       
    IF p_productTypeId = 2 then
    

       
DROP TEMPORARY TABLE IF EXISTS tblCurrentVariationProducts;
CREATE TEMPORARY TABLE tblCurrentVariationProducts(variationProductId INT,sku varchar(50),unitCost decimal(10,2),unitPrice decimal(10,2),taxPerc decimal(10,2));

INSERT INTO tblCurrentVariationProducts(variationProductId,sku,unitCost,unitPrice,taxPerc)
SELECT distinct vp.variationProductId,vp.sku,vp.unitCost,vp.unitPrice,vp.taxPerc FROM variation_product vp where vp.productId = p_tableID;


    
DROP TEMPORARY TABLE IF EXISTS tblVariationProductsAdd;
CREATE TEMPORARY TABLE tblVariationProductsAdd(variationProductIdTmp INT,sku varchar(50),barcode varchar(50),unitCost decimal(10,2),unitPrice decimal(10,2),taxPerc decimal(10,2));

DROP TEMPORARY TABLE IF EXISTS tblVariationProductsRemove;
CREATE TEMPORARY TABLE tblVariationProductsRemove(variationProductId INT);

  
  INSERT INTO tblVariationProductsAdd(variationProductIdTmp,sku,barcode,unitCost,unitPrice,taxPerc)
SELECT t.variationProductIdTmp,t.sku,t.barcode,t.unitCost,t.unitPrice,t.taxPerc FROM tblVariationProduct t
WHERE NOT EXISTS (SELECT 1 FROM tblCurrentVariationProducts c WHERE t.variationProductId = c.variationProductId);
   

INSERT INTO tblVariationProductsRemove(variationProductId)
SELECT c.variationProductId FROM tblCurrentVariationProducts c
WHERE NOT EXISTS (SELECT 1 FROM tblVariationProduct t WHERE t.variationProductId = c.variationProductId);





DROP TEMPORARY TABLE IF EXISTS tblRemainingVariationProduct;

CREATE TEMPORARY TABLE tblRemainingVariationProduct AS
SELECT * FROM tblVariationProduct;

DROP TEMPORARY TABLE IF EXISTS tmpRemainingVariationDetails;


  
	 delete from tblRemainingVariationProduct where variationProductIdTmp in (select variationProductIdTmp from tblVariationProductsAdd);
	delete from tblRemainingVariationProduct where variationProductId in (select variationProductId from tblVariationProductsRemove);
   

 
DROP TEMPORARY TABLE IF EXISTS tmpRemainingVariationDetails;
CREATE TEMPORARY TABLE tmpRemainingVariationDetails AS
SELECT * FROM tmpVariationDetails;


delete from tmpRemainingVariationDetails where variationProductIdTmp in (select variationProductIdTmp from tblVariationProductsAdd);
	delete from tmpRemainingVariationDetails where variationProductId in (select variationProductId from tblVariationProductsRemove);
   




 






  
       
DROP TEMPORARY TABLE IF EXISTS currentStores;
CREATE TEMPORARY TABLE currentStores(storeId INT);


INSERT INTO currentStores(storeId)
SELECT distinct storeId FROM store_inventory_product sip inner join variation_product vp on sip.variationProductId=vp.variationProductId
 WHERE vp.productId = p_tableID;



DROP TEMPORARY TABLE IF EXISTS storesToAdd;
CREATE TEMPORARY TABLE storesToAdd(storeId INT);

DROP TEMPORARY TABLE IF EXISTS storesToRemove;
CREATE TEMPORARY TABLE storesToRemove(storeId INT);


INSERT INTO storesToAdd(storeId)
SELECT t.storeId FROM tblStoreIdList t
WHERE NOT EXISTS (SELECT 1 FROM currentStores c WHERE t.storeId = c.storeId);


INSERT INTO storesToRemove(storeId)
SELECT c.storeId FROM currentStores c
WHERE NOT EXISTS (SELECT 1 FROM tblStoreIdList t WHERE t.storeId = c.storeId);

   		     
		     
    



DROP TEMPORARY TABLE IF EXISTS tblRemainingStoreIdList;
CREATE TEMPORARY TABLE tblRemainingStoreIdList AS
SELECT storeId FROM tblStoreIdList;

delete from tblRemainingStoreIdList where storeId in (select storeId from storesToAdd);
delete from tblRemainingStoreIdList where storeId in (select storeId from storesToRemove);





	

		


SET v_totalItems_tblVariationProduct = (SELECT COUNT(*) FROM tblVariationProductsRemove);

WHILE v_totalItems_tblVariationProduct > 0 DO

    SELECT variationProductId INTO v_variationProductId FROM tblVariationProductsRemove LIMIT 1;

       IF EXISTS (
        SELECT nsi.inventoryId, COUNT(*) AS record_count 
        FROM inventory i
        INNER JOIN store_inventory_product sip ON i.inventoryId = sip.inventoryId
        INNER JOIN non_serialized_item nsi ON i.inventoryId = nsi.inventoryId
        WHERE sip.variationProductId= v_variationProductId
        GROUP BY nsi.inventoryId 
        HAVING COUNT(*) > 1
    ) THEN
        SET p_OutputMessage = 'You cannot remove this variation because this product already has inventory transactions';
        SET p_ResponseStatus = 'failed';
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = p_OutputMessage;
        rollback;	leave sp;		
 
	end if;


	DROP TEMPORARY TABLE IF EXISTS tblStoreIdList2;
   	CREATE TEMPORARY TABLE tblStoreIdList2 as SELECT * from tblStoreIdList;
  

    SET v_totalItems_tblStoreIdList = (SELECT COUNT(*) FROM tblStoreIdList2);

    WHILE v_totalItems_tblStoreIdList > 0 DO

        
        SET v_storeIdTmp = (SELECT storeId FROM tblStoreIdList2 LIMIT 1);
        SET v_inventoryId =(select inventoryId from store_inventory_product where storeId=v_storeIdTmp
       and variationProductId=v_variationProductId);

      
 	 	DELETE nsi FROM non_serialized_item nsi where inventoryId=v_inventoryId;
 	 	
 	 DELETE sip FROM store_inventory_product sip 
 	where storeId=v_storeIdTmp and sip.variationProductId=v_variationProductId;
    
      DELETE i FROM inventory i where inventoryId=v_inventoryId;
     
  
        delete from variation_product_detail where variationProductId=v_variationProductId;
              
      DELETE spd FROM sub_product_detail spd INNER JOIN all_product ap  
      ON spd.allProductId = ap.allProductId WHERE ap.variationProductId = v_variationProductId;

        
         delete from all_product where variationProductId=v_variationProductId;
      delete from variation_product where variationProductId=v_variationProductId;
    

        DELETE FROM tblStoreIdList2 LIMIT 1;
        SET v_totalItems_tblStoreIdList = (SELECT COUNT(*) FROM tblStoreIdList2);

    END WHILE;

    
    DELETE FROM tblVariationProductsRemove LIMIT 1;
    SET v_totalItems_tblVariationProduct = (SELECT COUNT(*) FROM tblVariationProductsRemove);

END WHILE;



	
	


SET v_totalItems_tblVariationProduct = (SELECT COUNT(*) FROM tblVariationProductsAdd);

WHILE v_totalItems_tblVariationProduct > 0 DO

    SELECT variationProductIdTmp, sku, barcode,unitCost,unitPrice,taxPerc  
    INTO v_variationProductIdTmp, v_sku, v_barcode,v_unitCost,v_unitPrice,v_taxPerc 
   	FROM tblVariationProductsAdd LIMIT 1;

    INSERT INTO variation_product (sku, barcode, productId,unitCost,unitPrice,taxPerc) 
    VALUES (v_sku, v_barcode, p_tableId,v_unitCost,v_unitPrice,v_taxPerc);

    SET v_variationProductId_new = LAST_INSERT_ID();
   

    
    INSERT INTO variation_product_detail (variationProductId, variationTypeId, variationValue)
    SELECT v_variationProductId_new, variationTypeId, variationValue
    FROM tmpVariationDetails
    WHERE variationProductIdTmp = v_variationProductIdTmp;

    
    insert into all_product(variationProductId,productTypeId) values (v_variationProductId_new,p_productTypeId);
set v_allProductId=LAST_INSERT_ID();
   

	 insert into sub_product_detail(allProductId,qty,allProductId_mat) 
		 select v_allProductId,qty,allProductId_mat from tmpSubProductDetailsForVari where variationProductIdTmp=v_variationProductIdTmp;
		


   	DROP TEMPORARY TABLE IF EXISTS tblStoreIdList2;
   	CREATE TEMPORARY TABLE tblStoreIdList2 as SELECT * from tblStoreIdList;

    SET v_totalItems_tblStoreIdList = (SELECT COUNT(*) FROM tblStoreIdList2);

    WHILE v_totalItems_tblStoreIdList > 0 DO

        SET v_storeIdTmp = (SELECT storeId FROM tblStoreIdList2 LIMIT 1);
        SET v_inventoryId = NULL;

        IF p_isStockTracked THEN
            INSERT INTO inventory (reorderLevel) 
            VALUES (p_ReorderLevel);
            SET v_inventoryId = LAST_INSERT_ID();
        END IF;

        
        INSERT INTO store_inventory_product (storeId, inventoryId, variationProductId,allProductId) 
        VALUES (v_storeIdTmp, v_inventoryId, v_variationProductId_new,v_allProductId);

        
        DELETE FROM tblStoreIdList2 LIMIT 1;
        SET v_totalItems_tblStoreIdList = (SELECT COUNT(*) FROM tblStoreIdList2);

    END WHILE;

    
    DELETE FROM tblVariationProductsAdd LIMIT 1;
    SET v_totalItems_tblVariationProduct = (SELECT COUNT(*) FROM tblVariationProductsAdd);

END WHILE;

		
 














	


 DROP TEMPORARY TABLE IF EXISTS tblCurrentSubProductDetailsForVari;
 CREATE TEMPORARY TABLE tblCurrentSubProductDetailsForVari(qty decimal(10,2),allProductId_mat int);


DROP TEMPORARY TABLE IF EXISTS tblSubProductDetailsForVariAdd;
CREATE TEMPORARY TABLE tblSubProductDetailsForVariAdd(qty decimal(10,2),allProductId_mat int);

DROP TEMPORARY TABLE IF EXISTS tblSubProductDetailsForVariRemove;
CREATE TEMPORARY TABLE tblSubProductDetailsForVariRemove(allProductId_mat int);


SET v_totalItems_tblVariationProduct = (SELECT COUNT(*) FROM tblRemainingVariationProduct);

WHILE v_totalItems_tblVariationProduct > 0 DO


    SELECT variationProductId, sku, barcode,unitCost,unitPrice,taxPerc
    INTO v_variationProductId, v_sku, v_barcode,v_unitCost,v_unitPrice,v_taxPerc 
    FROM tblRemainingVariationProduct LIMIT 1;
   

 







    set v_allProductId_sv=(select allProductId from all_product where variationProductId=v_variationProductId);
    
    
    
    

  
  
  if(p_isAssemblyProduct=true) then
    
    call _validateProductIsUsedAsASubProductOfAnotherProduct(v_allProductId_sv,@isTheProductUsedAsASubProductInAnotherValidated,@skus);
  	if @isTheProductUsedAsASubProductInAnotherValidated=false then
  	     
  	 set p_ResponseStatus='failed';
  	 set p_OutputMessage= CONCAT('This product cannot be updated as an assembly product because it is already used as a sub-product in other SKU(s): ', @skus);
      
  	rollback;
    leave sp;
  	end if;
  	
  end if;
    
         if(p_isStockTracked=false) then
  
       call _validateProductIsUsedAsASubProductOfAnotherProduct(v_allProductId_sv,@isTheProductUsedAsASubProductInAnotherValidated,@skus);
  	if @isTheProductUsedAsASubProductInAnotherValidated=false then
  	     
  	 set p_ResponseStatus='failed';
  		 set p_OutputMessage= CONCAT('This product must be stock-tracked because it is already used as a sub-product in other SKU(s): ', @skus);   
		  
  	rollback;
    leave sp;
  	end if;
  	
  end if;
    
 
    


 delete from tblCurrentSubProductDetailsForVari;
 delete from tblSubProductDetailsForVariAdd;
delete from tblSubProductDetailsForVariRemove;
 
 INSERT INTO tblCurrentSubProductDetailsForVari(qty,allProductId_mat)
SELECT distinct spd.qty,spd.allProductId_mat FROM sub_product_detail spd where spd.allProductId = v_allProductId_sv;

  
  INSERT INTO tblSubProductDetailsForVariAdd(qty,allProductId_mat)
SELECT t.qty,t.allProductId_mat FROM tmpSubProductDetailsForVari t
where t.variationProductId=v_variationProductId and NOT EXISTS (SELECT 1 FROM tblCurrentSubProductDetailsForVari c 
				where  t.allProductId_mat=c.allProductId_mat);
    

INSERT INTO tblSubProductDetailsForVariRemove(allProductId_mat)
 SELECT c.allProductId_mat FROM tblCurrentSubProductDetailsForVari c
 WHERE NOT EXISTS (SELECT 1 FROM tmpSubProductDetailsForVari t WHERE t.variationProductId = v_variationProductId and t.allProductId_mat=c.allProductId_mat);


select * from tblSubProductDetailsForVariRemove;




 DROP TEMPORARY TABLE IF EXISTS tblSubProductsDetailsRemainingVari;

 CREATE TEMPORARY TABLE tblSubProductsDetailsRemainingVari AS
 SELECT * FROM tmpSubProductDetailsForVari where variationProductId=v_variationProductId;
 
  
	 delete from tblSubProductsDetailsRemainingVari 
	 where allProductId_mat in (select allProductId_mat from tblSubProductDetailsForVariAdd);
	 
 	delete from tblSubProductsDetailsRemainingVari 
 	where allProductId_mat in (select allProductId_mat from tblSubProductDetailsForVariRemove);


 	
insert into sub_product_detail (allProductId,qty,allProductId_mat)
select v_allProductId_sv,qty,allProductId_mat from tblSubProductDetailsForVariAdd;

DELETE spd FROM sub_product_detail spd
INNER JOIN tblSubProductDetailsForVariRemove spda ON spd.allProductId_mat = spda.allProductId_mat
WHERE spd.allProductId = v_allProductId_sv;

 
UPDATE sub_product_detail spd
INNER JOIN tblSubProductsDetailsRemainingVari spdrem ON spd.allProductId_mat = spdrem.allProductId_mat
SET spd.qty = spdrem.qty WHERE spd.allProductId = v_allProductId_sv;









update variation_product set sku=v_sku,barcode=v_barcode,unitPrice=v_unitPrice,
 unitCost=v_unitCost,taxPerc=v_taxPerc where variationProductId=v_variationProductId;
   
UPDATE variation_product_detail tvd INNER JOIN tmpVariationDetails vpd 
    ON tvd.variationProductId = vpd.variationProductId  AND tvd.variationTypeId = vpd.variationTypeId
SET tvd.variationValue = vpd.variationValue
WHERE tvd.variationProductId = v_variationProductId AND tvd.variationValue != vpd.variationValue;

set v_allProductId=(select ap.allProductId from all_product ap 
   inner join variation_product vp on ap.variationProductId=vp.variationProductId
where vp.variationProductId=v_variationProductId);
 
   INSERT INTO variation_product_detail(variationProductId, variationTypeId, variationValue)
 SELECT  v_variationProductId,tvd.variationTypeId,  tvd.variationValue 
FROM tmpVariationDetails tvd LEFT JOIN 
    variation_product_detail vpd ON 
    tvd.variationProductId = vpd.variationProductId 
    AND tvd.variationTypeId = vpd.variationTypeId 
    AND tvd.variationValue = vpd.variationValue
   WHERE tvd.variationProductId=v_variationProductId and vpd.variationProductId IS NULL;
  
  
   DELETE tvd FROM variation_product_detail tvd
	LEFT JOIN tmpVariationDetails vpd  ON tvd.variationProductId = vpd.variationProductId
    AND tvd.variationTypeId = vpd.variationTypeId AND tvd.variationValue = vpd.variationValue
WHERE tvd.variationProductId = v_variationProductId AND vpd.variationProductId IS NULL;

   	


		DROP TEMPORARY TABLE IF EXISTS storesToAdd2;
		CREATE TEMPORARY TABLE storesToAdd2 as SELECT * from storesToAdd;
  
    SET v_totalItems_tblStoreIdList = (SELECT COUNT(*) FROM storesToAdd2);

    WHILE v_totalItems_tblStoreIdList > 0 DO
    
        SET v_storeIdTmp = (SELECT storeId FROM storesToAdd2 LIMIT 1);
        SET v_inventoryId = NULL;

        IF p_isStockTracked THEN
            INSERT INTO inventory (reorderLevel) VALUES (p_ReorderLevel);
            SET v_inventoryId = LAST_INSERT_ID();
        END IF;

        INSERT INTO store_inventory_product (storeId, inventoryId, variationProductId,allProductId) 
        VALUES (v_storeIdTmp, v_inventoryId, v_variationProductId,v_allProductId);

        DELETE FROM storesToAdd2 LIMIT 1;
        SET v_totalItems_tblStoreIdList = (SELECT COUNT(*) FROM storesToAdd2);

    END WHILE;
   
   		DROP TEMPORARY TABLE IF EXISTS storesToRemove2;
   		CREATE TEMPORARY TABLE storesToRemove2 as SELECT * from storesToRemove;
  
    SET v_totalItems_tblStoreIdList = (SELECT COUNT(*) FROM storesToRemove2);

    
   
    
    WHILE v_totalItems_tblStoreIdList > 0 DO
        SET v_storeIdTmp = (SELECT storeId FROM storesToRemove2 LIMIT 1);
        SET v_inventoryId = (SELECT inventoryId FROM store_inventory_product 
                             WHERE variationProductId = v_variationProductId AND storeId = v_storeIdTmp);

                      
        IF v_inventoryId IS NOT NULL then
      
            IF EXISTS (
                SELECT nsi.inventoryId, COUNT(*) AS record_count 
                FROM inventory i
                INNER JOIN store_inventory_product sip ON i.inventoryId = sip.inventoryId
                INNER JOIN non_serialized_item nsi ON i.inventoryId = nsi.inventoryId
                WHERE sip.variationProductId = v_variationProductId 
                  AND storeId = v_storeIdTmp
                GROUP BY nsi.inventoryId 
                HAVING COUNT(*) > 1
            ) THEN
                SET p_OutputMessage = 'You cannot remove this variation because this product already has inventory transactions';
                SET p_ResponseStatus = 'failed';
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = p_OutputMessage;
                rollback;	leave sp;
            END IF;

            
            DELETE nsi 
            FROM non_serialized_item nsi
            INNER JOIN inventory i ON nsi.inventoryId = i.inventoryId
            INNER JOIN store_inventory_product sip ON i.inventoryId = sip.inventoryId
            WHERE sip.inventoryId = v_inventoryId;

        
            DELETE FROM store_inventory_product WHERE inventoryId = v_inventoryId;

            DELETE FROM inventory WHERE inventoryId = v_inventoryId;
           
           else
                DELETE FROM store_inventory_product WHERE variationProductId = v_variationProductId AND storeId = v_storeIdTmp;

        END IF;

        DELETE FROM storesToRemove2 LIMIT 1;
        SET v_totalItems_tblStoreIdList = (SELECT COUNT(*) FROM storesToRemove2);

    END WHILE;
 

   
   	DROP TEMPORARY TABLE IF EXISTS tblRemainingStoreIdList2;
		CREATE TEMPORARY TABLE tblRemainingStoreIdList2 as SELECT * from tblRemainingStoreIdList;

    SET v_totalItems_tblStoreIdList = (SELECT COUNT(*) FROM tblRemainingStoreIdList2);
	
    WHILE v_totalItems_tblStoreIdList > 0 DO
    
        SET v_storeIdTmp = (SELECT storeId FROM tblRemainingStoreIdList2 LIMIT 1);
       
      
      if not exists(select * from store_inventory_product 
      WHERE variationProductId = v_variationProductId AND storeId = v_storeIdTmp ) then 
      
       	select 'hello store_inventory_product table not exists and created the record into it.';
         insert into store_inventory_product(storeId,inventoryId,variationProductId) 
					values(v_storeIdTmp,null,v_variationProductId);  
				
      end if;
       
      
       
        SET v_inventoryId = (SELECT inventoryId FROM store_inventory_product 
                             WHERE variationProductId = v_variationProductId AND storeId = v_storeIdTmp);
                    
     
                            
        IF p_isStockTracked then
          IF v_inventoryId IS NULL THEN

            INSERT INTO inventory (reorderLevel) VALUES (p_ReorderLevel);
            SET v_inventoryId = LAST_INSERT_ID();
          
          end if;
        
            update store_inventory_product set inventoryId=v_inventoryId
            WHERE storeId=v_storeIdTmp and variationProductId=v_variationProductId;
 
          ELSE
        
         IF v_inventoryId IS NOT NULL THEN

            IF EXISTS (
                SELECT nsi.inventoryId, COUNT(*) AS record_count 
                FROM inventory i
                INNER JOIN store_inventory_product sip ON i.inventoryId = sip.inventoryId
                INNER JOIN non_serialized_item nsi ON i.inventoryId = nsi.inventoryId
                WHERE sip.variationProductId = v_variationProductId 
                  AND storeId = v_storeIdTmp
                GROUP BY nsi.inventoryId 
                HAVING COUNT(*) > 1
            ) THEN
                SET p_OutputMessage = 'You cannot remove this variation because this product already has inventory transactions';
                SET p_ResponseStatus = 'failed';
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = p_OutputMessage;
                rollback;	leave sp;
            END IF;
           
            DELETE nsi 
            FROM non_serialized_item nsi
            INNER JOIN inventory i ON nsi.inventoryId = i.inventoryId
            INNER JOIN store_inventory_product sip ON i.inventoryId = sip.inventoryId
            WHERE sip.inventoryId = v_inventoryId;

            update store_inventory_product set inventoryId=null WHERE inventoryId = v_inventoryId;

            DELETE FROM inventory where inventoryId = v_inventoryId;
           
          end if;
        	
  		END IF;
   
        DELETE FROM tblRemainingStoreIdList2 LIMIT 1;
        SET v_totalItems_tblStoreIdList = (SELECT COUNT(*) FROM tblRemainingStoreIdList2);

    END WHILE;
   

    DELETE FROM tblRemainingVariationProduct LIMIT 1;

    SET v_totalItems_tblVariationProduct = (SELECT COUNT(*) FROM tblRemainingVariationProduct);

END WHILE;
    		


       end if; 


 
   
		  
		
		
         
		SET p_ResponseStatus = 'success';
        SET p_OutputMessage = 'Updated Successfully.';

    END IF;
    
   
      COMMIT;
     
    if(p_tableID is not null) then  SET p_productId=p_tableID; end if;
    
 
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Product_Insert_Update_old` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Product_Insert_Update_old`(
    IN p_tableID INT,
    IN p_storeIdList_json json,
    IN p_ProductNo VARCHAR(100),
	IN p_isProductNoAutoGenerate VARCHAR(100),
    IN p_ProductName VARCHAR(500),
    IN p_CategoryIdList_json json,
   IN p_variationProductList_json json,
     IN p_comboProductDetailList_json json,
      IN p_subProductsList_json json,
     
    IN p_MeasurementUnitId int,
   IN p_productTypeId int,
   IN p_isNotForSelling bit,
   IN p_imgUrl text,
  IN p_isUnique bit,
 IN p_isStockTracked bit,
  IN p_isProductItem bit,
   IN p_isAssemblyProduct bit,
    IN p_BrandId int,
    IN p_unitCost DECIMAL(10, 2),
    IN p_unitPrice DECIMAL(10, 2),
     IN p_taxPerc DECIMAL(10, 2),

	 IN p_sku VARCHAR(100),
    IN p_Barcode VARCHAR(100),
    IN p_ReorderLevel DECIMAL(10, 2),
   in p_isExpiringProduct bit,
    IN p_SaveType VARCHAR(1),
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    
    IN p_IsConfirm BIT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
    OUT p_productId int
)
sp: BEGIN

	declare v_productId int;
	
		DECLARE noOfItemsInCategoryList int;
        DECLARE i_categoryList int default 0;
        
       DECLARE noOfVariationProductList int;
        DECLARE i_variationProductList int default 0;
       
        declare v_totalItems_tblVariationProduct int;
         declare v_variationProductId int;
            declare v_variationProductId_new int;
        
         	DECLARE v_variationDetailsObjArr JSON;
         	
         	
         	
         	
DECLARE v_lastInsertedId int;
 	
declare i_variationDetails int;
declare noOfVariationDetails int;

declare v_variationTypeId varchar(50);
declare v_variationValue varchar(50); 
declare v_variationName varchar(50); 


        

        
        declare v_totalItems_tblComboProductDetail int;
       
        DECLARE v_subProductDetailsForVari_ObjArr JSON;

        DECLARE noOfSubProductslList int;
        DECLARE i_subProductsList int default 0;
        declare i_subProductDetailsForVari int;
        
          DECLARE noOfSubProductDetailsForVari int;
          
          declare v_subProductAllProductId_mat int;
          declare v_subProductQty decimal(10,2);
        
        declare v_allProductId_mat int;
         declare v_allProductId_sv int;
       
        declare v_variationProductIdStr varchar(50);
       declare v_sku varchar(50);
 		declare v_barcode varchar(50);

		DECLARE noOfComboProductDetailList int;
        DECLARE i_comboProductDetailList int default 0;
       
       
       		DECLARE noOfStoreIdList_json int;
        DECLARE i_storeIdListList int default 0;
       	DECLARE v_storeId int;
       
     DECLARE  v_totalItems_tblStoreIdList int;
      DECLARE v_storeIdTmp int;
       declare v_totalItems_tblSubProducts int;
     
       
       declare v_qty decimal(10,2);
 		declare v_comboSku_mat varchar(50);
 	declare v_variationComboSku_mat varchar(50);
 	
 
 	 declare v_comboProductId_mat varchar(50);
 	declare v_variationComboProductId_mat_str varchar(50);
			 
 

 	 
 	 
 	 
 	declare v_productId_mat int;
 	declare v_variationProductId_mat int;
 
 	declare v_variationProductIdTmp int;
 	
        declare v_generatedProductNo varchar(50);
       
       declare v_inventoryId int;
      
      declare v_skuDupCount int default 0;
      
   declare v_productTypeId_mat int;
     
        declare v_unitPrice decimal(10,2);
   declare v_unitCost decimal(10,2);
         declare v_taxPerc decimal(10,2);

            declare v_allProductId int;
            
           

     DECLARE err_message VARCHAR(255);
     
     
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
       begin
	        ROLLBACK;
            
            GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
            
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
        END; 
   
   

   	if (p_tableID<1) then
		set p_OutputMessage='Invalid tableId';
        set p_ResponseStatus='failed';
      
        leave sp;
	end if;


   	
   	if (p_isAssemblyProduct is null) then
		set p_OutputMessage='p_isAssemblyProduct can not be null';
        set p_ResponseStatus='failed';

        leave sp;
	end if;
   	
   
	set noOfItemsInCategoryList=JSON_LENGTH(p_CategoryIdList_json);
  
	if JSON_LENGTH(p_CategoryIdList_json)=0 or p_CategoryIdList_json is null then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('At least one category is required.');
		leave sp;
	end if;
    
	if JSON_LENGTH(p_CategoryIdList_json)>3 then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('More than 3 categories selected. Please select a maximum of 3 categories.');
		leave sp;
	end if;

 DROP TEMPORARY TABLE IF EXISTS tblcategory;
  CREATE TEMPORARY TABLE tblcategory (
    orderId INT AUTO_INCREMENT PRIMARY KEY,
    categoryId INT
);
   
        WHILE i_categoryList < noOfItemsInCategoryList DO
           set @_categoryId = JSON_EXTRACT(p_CategoryIdList_json, CONCAT('$[', i_categoryList, ']'));
			if not isNumeric(@_categoryId) then
				set p_ResponseStatus='failed';
				set p_OutputMessage=concat('Invalid categoryId : ',@_categoryId);
				leave sp;
			end if;
            
            if not exists(select * from category where categoryId=@_categoryId) then
				set p_ResponseStatus='failed';
				set p_OutputMessage=concat('Un registerd categoryId : ',@_categoryId);
				leave sp;
			end if;

            INSERT INTO tblcategory(categoryId) VALUES (@_categoryId);
            
            SET i_categoryList = i_categoryList + 1;
            
		END WHILE;
        

  if p_isProductItem=false then
  set p_isStockTracked=false;
  end if;
  










	  
  
  
DROP TEMPORARY TABLE IF EXISTS tblSubProducts;
  CREATE TEMPORARY TABLE tblSubProducts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    qty decimal(10,2),
    allProductId_mat int
);


 if p_isAssemblyProduct=true && p_isStockTracked=true then
    	set p_ResponseStatus='failed';
		set p_OutputMessage=concat('An assembly product cannot be a stock-tracked item');
		leave sp;
  
  end if;
  
  if p_productTypeId=1 then
  
  if p_isAssemblyProduct=true then
  
  

  
  set noOfSubProductslList=JSON_LENGTH(p_subProductsList_json);
  

 if noOfSubProductslList=0 or p_subProductsList_json is null then 
 	set p_ResponseStatus='failed';
	set p_OutputMessage=concat('An assembly product must have at least one sub-product.');
	leave sp;
 end if;

 

   
        WHILE i_subProductsList < noOfSubProductslList DO	
         	 set v_qty=JSON_UNQUOTE(JSON_EXTRACT(p_subProductsList_json, CONCAT('$[', i_subProductsList, '].qty')));
			 set v_allProductId_mat=JSON_UNQUOTE(JSON_EXTRACT(p_subProductsList_json, CONCAT('$[', i_subProductsList, '].allProductId')));      	
			
	if not exists(select * from all_product where allProductId=v_allProductId_mat)  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('invalid sub product.');
		leave sp;
	end if;
	

	


		if exists(select * from all_product ap inner join variation_product vp on ap.variationProductId=vp.variationProductId
	inner join product p on vp.productId=p.productId where p.isAssemblyProduct=1 and ap.allProductId=v_allProductId_mat)  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('An assembly product cannot be a sub-product of another assembly product.');
		leave sp;
	end if;
	
	
	
	
	
		
    INSERT INTO tblSubProducts(qty,allProductId_mat) VALUES (v_qty,v_allProductId_mat);
            
            SET i_subProductsList = i_subProductsList + 1;
            
		END WHILE;
        
		
IF EXISTS (
    SELECT 1
    FROM tblSubProducts subp
    inner JOIN store_inventory_product sip 
        ON subp.allProductId_mat = sip.allProductId
    WHERE sip.inventoryId IS NULL
) THEN
    SET p_OutputMessage = 'A sub-item must always be a stock-tracked product.';
    SET p_ResponseStatus = 'failed';
    ROLLBACK;
    LEAVE sp;
END IF;

  

		
		
	IF ( SELECT COUNT(*) FROM (  SELECT allProductId_mat FROM tblSubProducts
	        GROUP BY allProductId_mat HAVING COUNT(*) > 1) dup
	) > 0 THEN
	    SET p_ResponseStatus = 'failed';
	    SET p_OutputMessage = 'Duplicated sub-products are not allowed';
	    ROLLBACK;
	    LEAVE sp;
	END IF;
	
	
	end if;
end if;
	

  
 
  
	 
     if p_productTypeId=2 then

set noOfVariationProductList=JSON_LENGTH(p_variationProductList_json);
  
	if JSON_LENGTH(p_variationProductList_json)=0 or p_variationProductList_json is null then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('At least one variation is required.');
		leave sp;
	end if;
	





DROP TEMPORARY TABLE IF EXISTS tblVariationProduct;
DROP TEMPORARY TABLE IF EXISTS tmpVariationDetails;
DROP TEMPORARY TABLE IF EXISTS tmpSubProductDetailsForVari;


CREATE TEMPORARY TABLE tblVariationProduct (
    variationProductIdTmp INT AUTO_INCREMENT PRIMARY KEY,
    variationProductId INT,
    sku VARCHAR(50),
    barcode VARCHAR(50),
    unitCost decimal(10,2),
    unitPrice decimal(10,2),
    taxPerc decimal(10,2),
    isAssemblyProduct bit
);


CREATE TEMPORARY TABLE tmpVariationDetails (
    detailId INT AUTO_INCREMENT PRIMARY KEY,
    variationProductIdTmp INT,
    variationProductId INT,
    variationTypeId VARCHAR(50),
    variationValue VARCHAR(50)
);

CREATE TEMPORARY TABLE tmpSubProductDetailsForVari (
    detailId INT AUTO_INCREMENT PRIMARY KEY,
    variationProductIdTmp INT,
    variationProductId INT,
    qty decimal(10,2),
    allProductId_mat int
);


SET i_variationProductList = 0;


WHILE i_variationProductList < noOfVariationProductList DO	
    

set v_variationProductIdStr=JSON_UNQUOTE(JSON_EXTRACT(p_variationProductList_json, CONCAT('$[', i_variationProductList, '].variationProductId')));
    SET v_sku = JSON_UNQUOTE(JSON_EXTRACT(p_variationProductList_json, CONCAT('$[', i_variationProductList, '].sku')));
    SET v_barcode = JSON_UNQUOTE(JSON_EXTRACT(p_variationProductList_json, CONCAT('$[', i_variationProductList, '].barcode')));      
      SET v_unitCost = JSON_UNQUOTE(JSON_EXTRACT(p_variationProductList_json, CONCAT('$[', i_variationProductList, '].unitCost')));      
SET v_unitPrice = JSON_UNQUOTE(JSON_EXTRACT(p_variationProductList_json, CONCAT('$[', i_variationProductList, '].unitPrice')));      
   SET v_taxPerc = JSON_UNQUOTE(JSON_EXTRACT(p_variationProductList_json, CONCAT('$[', i_variationProductList, '].taxPerc')));      








if v_unitCost is null then
   	set p_ResponseStatus='failed';
		set p_OutputMessage=concat('UnitCost is required for ',v_sku);
		leave sp;
	end if;

if v_unitPrice is null then
   	set p_ResponseStatus='failed';
		set p_OutputMessage=concat('UnitPrice is required for ',v_sku);
		leave sp;
	end if;

if v_taxPerc is null then
   	set p_ResponseStatus='failed';
		set p_OutputMessage=concat('Tax is required for ',v_sku);
		leave sp;
	end if;


   
   if v_barcode='null' then set v_barcode=null; end if;
   if v_barcode='' then set v_barcode=null; end if;

    
    SET v_variationDetailsObjArr = JSON_EXTRACT(p_variationProductList_json, CONCAT('$[', i_variationProductList, '].variationDetails'));
 if v_variationDetailsObjArr='null' then set v_variationDetailsObjArr=null; end if;






   
   if v_variationProductIdStr='null' then set v_variationProductIdStr=null; end if;
   
   
    
    INSERT INTO tblVariationProduct(variationProductId,sku, barcode,unitCost,unitPrice,taxPerc) 
    VALUES (v_variationProductIdStr,v_sku, v_barcode,v_unitCost,v_unitPrice,v_taxPerc);
    
    
    SET v_lastInsertedId = LAST_INSERT_ID();

    
    SET i_variationDetails = 0;
    SET noOfVariationDetails = JSON_LENGTH(v_variationDetailsObjArr);

    
    WHILE i_variationDetails < noOfVariationDetails DO
        
        SET v_variationTypeId = JSON_UNQUOTE(JSON_EXTRACT(v_variationDetailsObjArr, CONCAT('$[', i_variationDetails, '].variationTypeId')));
      SET v_variationValue = JSON_UNQUOTE(JSON_EXTRACT(v_variationDetailsObjArr, CONCAT('$[', i_variationDetails, '].variationValue')));
       
        if v_variationValue='' then set v_variationValue=null; end if;
  if v_variationValue is null then
   	set p_ResponseStatus='failed';
		set p_OutputMessage=concat('variation value is required');
		leave sp;
	end if;

    
       
        
        INSERT INTO tmpVariationDetails(variationProductIdTmp,variationProductId, variationTypeId, variationValue)
        VALUES (v_lastInsertedId,v_variationProductIdStr, v_variationTypeId, v_variationValue);

        
        SET i_variationDetails = i_variationDetails + 1;
    END WHILE;
 
        
        
        
        
   
   if p_isAssemblyProduct=true then
  
   

   
   
            
    SET v_subProductDetailsForVari_ObjArr = JSON_EXTRACT(p_variationProductList_json, CONCAT('$[', i_variationProductList, '].subProductsList'));
 if v_subProductDetailsForVari_ObjArr='null' then set v_subProductDetailsForVari_ObjArr=null; end if;

    if v_subProductDetailsForVari_ObjArr is null then
    	set p_ResponseStatus='failed';
		set p_OutputMessage=concat('Sub product can not be null for the product sku:',v_sku);
		leave sp;
 	end if;
        
        
            SET i_subProductDetailsForVari = 0;
    SET noOfSubProductDetailsForVari = JSON_LENGTH(v_subProductDetailsForVari_ObjArr);

        
  if noOfSubProductDetailsForVari=0 then 
 	set p_ResponseStatus='failed';
 	set p_OutputMessage=concat('An assembly product SKU:',v_sku,' must have at least one sub-product.');
 	leave sp;
  end if;

     

    WHILE i_subProductDetailsForVari < noOfSubProductDetailsForVari DO
    
        SET v_subProductAllProductId_mat = JSON_UNQUOTE(JSON_EXTRACT(v_subProductDetailsForVari_ObjArr, CONCAT('$[', i_subProductDetailsForVari, '].allProductId')));

        SET v_subProductQty = JSON_UNQUOTE(JSON_EXTRACT(v_subProductDetailsForVari_ObjArr, CONCAT('$[', i_subProductDetailsForVari, '].qty')));
             
        
        
    if not exists(select * from all_product where allProductId=v_subProductAllProductId_mat)  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('invalid sub product.');
		leave sp;
	end if;
	


  
	
	if exists(select * from all_product ap inner join variation_product vp on ap.variationProductId=vp.variationProductId
	inner join product p on vp.productId=p.productId where p.isAssemblyProduct=1 and ap.allProductId=v_subProductAllProductId_mat)  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('An assembly product cannot be a sub-product of another assembly product.');
		leave sp;
	end if;
	
		

	
        
        
        
        INSERT INTO tmpSubProductDetailsForVari(variationProductIdTmp,variationProductId, qty, allProductId_mat)
        VALUES (v_lastInsertedId,v_variationProductIdStr, v_subProductQty, v_subProductAllProductId_mat);
         
        
        
        SET i_subProductDetailsForVari = i_subProductDetailsForVari + 1;
    END WHILE;
        
        IF EXISTS (
    SELECT 1
    FROM tmpSubProductDetailsForVari subp
    inner JOIN store_inventory_product sip 
        ON subp.allProductId_mat = sip.allProductId
    WHERE sip.inventoryId IS NULL
) THEN
    SET p_OutputMessage = 'A sub-item must always be a stock-tracked product.';
    SET p_ResponseStatus = 'failed';
    ROLLBACK;
    LEAVE sp;
END IF;
        
IF (
    SELECT COUNT(*)
    FROM (
        SELECT variationProductId, variationProductIdTmp, allProductId_mat
        FROM tmpSubProductDetailsForVari
        GROUP BY variationProductId, variationProductIdTmp, allProductId_mat
        HAVING COUNT(*) > 1
    ) dup
) > 0 THEN
    SET p_ResponseStatus = 'failed';
    SET p_OutputMessage = 'Duplicated sub-products are not allowed for the same variation.';
    ROLLBACK;
    LEAVE sp;
END IF;

        

end if;   
        
     
    
    SET i_variationProductList = i_variationProductList + 1;
END WHILE;




if (select count(*)>1 from tblVariationProduct) then
	if not exists (select * from tmpVariationDetails) then
 	set p_ResponseStatus='failed';
 		set p_OutputMessage=concat('At least one variation type is required to create variation item.');
 		leave sp;
 	end if;
end if;









	
	
	end if;


	 
     if p_productTypeId=3 then
     
set noOfComboProductDetailList=JSON_LENGTH(p_comboProductDetailList_json);
  
	
	
	
	
	
	


DROP TEMPORARY TABLE IF EXISTS tblComboProductDetail;
  CREATE TEMPORARY TABLE tblComboProductDetail (
    id INT AUTO_INCREMENT PRIMARY KEY,
    qty decimal(10,2),
    productId_mat int,
    variationProductId_mat int
);
   
        WHILE i_comboProductDetailList < noOfComboProductDetailList DO	
         	 set v_qty=JSON_UNQUOTE(JSON_EXTRACT(p_comboProductDetailList_json, CONCAT('$[', i_comboProductDetailList, '].qty')));
			 set v_comboProductId_mat=JSON_UNQUOTE(JSON_EXTRACT(p_comboProductDetailList_json, CONCAT('$[', i_comboProductDetailList, '].productId_mat')));      
			 set v_variationComboProductId_mat_str=JSON_UNQUOTE(JSON_EXTRACT(p_comboProductDetailList_json, CONCAT('$[', i_comboProductDetailList, '].variationProductId_mat')));      
			
		
			
		if (v_comboProductId_mat='null' or v_comboProductId_mat=null) then set v_comboProductId_mat=null;  end if;		
			
			if (v_variationComboProductId_mat_str='null' or v_variationComboProductId_mat_str=null) then set v_variationComboProductId_mat_str=null;  end if;	
		
		
if(v_variationComboProductId_mat_str is not null) then 
		
	if not exists(select * from product p inner join variation_product vp on p.productId=vp.productId
		where vp.variationProductId=v_variationComboProductId_mat_str)  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('invalid variation product.');
		 SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
        
		leave sp;
	end if;
		
end if;


	if(v_comboProductId_mat is not null) then 
if not exists(select * from product where productId=v_comboProductId_mat)  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('invalid combo or single product.');
		 SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
        
		leave sp;
	end if;

end if;


			
            INSERT INTO tblComboProductDetail(qty,productId_mat,variationProductId_mat) VALUES (v_qty,v_comboProductId_mat,v_variationComboProductId_mat_str);
            
            SET i_comboProductDetailList = i_comboProductDetailList + 1;
            
		END WHILE;
        
	end if;
	


set noOfStoreIdList_json=JSON_LENGTH(p_storeIdList_json);
DROP TEMPORARY TABLE IF EXISTS tblStoreIdList;
  CREATE TEMPORARY TABLE tblStoreIdList (
    storeId int
);
   
        WHILE i_storeIdListList < noOfStoreIdList_json DO	
         	 set v_storeId=JSON_UNQUOTE(JSON_EXTRACT(p_storeIdList_json, CONCAT('$[', i_storeIdListList, '].storeId')));
			
            INSERT INTO tblStoreIdList(storeId) VALUES (cast (v_storeId as int));
            
            SET i_storeIdListList = i_storeIdListList + 1;
            
		END WHILE;

	
	
	   if(p_isUnique=1) then
            if (p_isStockTracked=0) then
				set p_OutputMessage='A unique product must always be a stock-tracked item';
				set p_ResponseStatus='failed';
			 	
				leave sp;
			end if;
		end if;
	
	
	     if exists(select * from tblStoreIdList where storeId is null) then
				set p_OutputMessage='Store can not be null';
				set p_ResponseStatus='failed';
				leave sp;
			end if;
		
		IF EXISTS (SELECT storeId FROM tblStoreIdList GROUP BY storeId HAVING COUNT(storeId) > 1
		) THEN
   			 SET p_OutputMessage = 'Duplicate storeId values found';
   			 SET p_ResponseStatus = 'failed';
   			 LEAVE sp;
   		END IF;		
	
		
		
		
	
	    START TRANSACTION;
	
	        if not exists (select * from tblStoreIdList) then
				set p_OutputMessage='Atleast one store is requred.';
				set p_ResponseStatus='failed';
			rollback;
				leave sp;
			end if;
	   

    IF p_SaveType = 'I' THEN
    
    
 

    
    
        
    if p_productTypeId=1 then
    
   if(p_sku is null) then 
	   		set p_OutputMessage='SKU is required.';
			set p_ResponseStatus='failed';
			rollback;
			leave sp;
    	end if;
    
set v_skuDupCount=v_skuDupCount+(select count(*) from single_product sp where SKU=p_sku);
set v_skuDupCount=v_skuDupCount+(select count(*) from variation_product vp where SKU=p_sku);
set v_skuDupCount=v_skuDupCount+(select count(*) from combo_product cp where SKU=p_sku);
set v_skuDupCount=v_skuDupCount+(select count(*) from serialized_item si where serialNumber=p_sku);

	if v_skuDupCount>0  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('SKU is already used in products.');
		
        
		rollback;
		leave sp;
	end if;



         set v_skuDupCount=v_skuDupCount+(select count(*) from single_product sp where barcode=p_Barcode);
set v_skuDupCount=v_skuDupCount+(select count(*) from variation_product vp where barcode=p_Barcode);
set v_skuDupCount=v_skuDupCount+(select count(*) from combo_product cp where barcode=p_Barcode);
set v_skuDupCount=v_skuDupCount+(select count(*) from serialized_item si where serialNumber=p_Barcode);



	if v_skuDupCount>0  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('Barcode is already used in products.');
		
        
	rollback;
		leave sp;
	end if;


end if;
    

  
        
    if p_productTypeId=2 then
   
     
			if exists(select sku from tblVariationProduct where sku is null or sku='null') then 
				set p_OutputMessage='SKU is required for v.';
				set p_ResponseStatus='failed';
			rollback;
				leave sp;
			 end if;		    	  
		   
		   
		   if (select count(sku) from tblVariationProduct) != (select count(distinct sku) from tblVariationProduct) then
		    set p_ResponseStatus = 'failed';
		    set p_OutputMessage = 'Duplicate SKUs are not allowed for variations.';
		   rollback;
		    leave sp;
		end if;
		
		    
		    
		set v_skuDupCount=v_skuDupCount+(select count(*) from single_product sp where SKU in (select sku from tblVariationProduct));
		set v_skuDupCount=v_skuDupCount+(select count(*) from variation_product vp where SKU in (select sku from tblVariationProduct));
		set v_skuDupCount=v_skuDupCount+(select count(*) from combo_product cp where SKU in (select sku from tblVariationProduct));
		set v_skuDupCount=v_skuDupCount+(select count(*) from serialized_item si where serialNumber in (select sku from tblVariationProduct));
		
			if v_skuDupCount>0  then
				set p_ResponseStatus='failed';
				set p_OutputMessage=concat('SKU is already used in products vv.');
				
		        
			rollback;	leave sp;
			end if;
		
		
		
IF EXISTS (
    SELECT tmp.barcode
    FROM tblVariationProduct tmp inner join variation_product vp on tmp.variationProductId=vp.variationProductId 
      AND tmp.barcode IS NOT NULL 
    GROUP BY tmp.barcode,vp.barcode
    HAVING COUNT(*) > 1
) THEN
    SET p_ResponseStatus = 'failed';
    SET p_OutputMessage = concat('Duplicate Barcodes are not allowed for variations.');
    ROLLBACK; LEAVE sp;
END IF;

		
		set v_skuDupCount=v_skuDupCount+(select count(*) from single_product sp 
	where barcode in (select barcode from tblVariationProduct where barcode IS NOT NULL AND barcode != 'null'));
	
		set v_skuDupCount=v_skuDupCount+(select count(*) from variation_product vp where
	barcode in (select barcode from tblVariationProduct where barcode IS NOT NULL AND barcode != 'null'));

		set v_skuDupCount=v_skuDupCount+(select count(*) from combo_product cp where 
	barcode in (select barcode from tblVariationProduct where barcode IS NOT NULL AND barcode != 'null'));

		set v_skuDupCount=v_skuDupCount+(select count(*) from serialized_item si where 
	serialNumber in (select barcode from tblVariationProduct where barcode IS NOT null AND barcode != 'null'));
		
		
		
			if v_skuDupCount>0  then
				set p_ResponseStatus='failed';
				set p_OutputMessage=concat('Barcode is already used in productsooo v.');
				
		        
				rollback;	leave sp;
			end if;
		



end if;
    
  
 
         if p_productTypeId=3 then
	
            if(p_sku is null) then 
		   		set p_OutputMessage='SKU is required for c.';
				set p_ResponseStatus='failed';
				rollback;	leave sp;
    		end if;
    
    
         set v_skuDupCount=v_skuDupCount+(select count(*) from single_product sp where SKU=p_sku);
set v_skuDupCount=v_skuDupCount+(select count(*) from variation_product vp where SKU=p_sku);
set v_skuDupCount=v_skuDupCount+(select count(*) from combo_product cp where SKU=p_sku);
set v_skuDupCount=v_skuDupCount+(select count(*) from serialized_item si where serialNumber=p_sku);

	if v_skuDupCount>0  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('SKU is already used in products.');
		
        
		rollback;	leave sp;
	end if;
         


         set v_skuDupCount=v_skuDupCount+(select count(*) from single_product sp where barcode=p_Barcode);
set v_skuDupCount=v_skuDupCount+(select count(*) from variation_product vp where barcode=p_Barcode);
set v_skuDupCount=v_skuDupCount+(select count(*) from combo_product cp where barcode=p_Barcode);
set v_skuDupCount=v_skuDupCount+(select count(*) from serialized_item si where serialNumber=p_Barcode);



	if v_skuDupCount>0  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('Barcode is already used in products.');
		
        
		rollback;	leave sp;
	end if;


         
         
         if p_isStockTracked=true  then
			set p_ResponseStatus='failed';
			set p_OutputMessage=concat('Combo items can not be tracked stocks.');
			rollback;	leave sp;
		end if;
         
    end if;
   
    
    
    
    
    
    
    
    
      if (p_isProductNoAutoGenerate=false) then
      
      if(p_ProductNo is null or trim(p_ProductNo)='') then
			set p_OutputMessage=concat('Product No is required or check auto generate productNo','');
			set p_ResponseStatus='failed';
			rollback;	leave sp;
        end if;
        
          if exists (select * from product where  ProductNo=p_ProductNo) then
				set p_OutputMessage='Product No already exists I';
				set p_ResponseStatus='failed';
				rollback;	leave sp;
			end if;
        
        end if;
     
            
		 if exists (select * from product where ProductName=p_ProductName) then
				set p_OutputMessage='Product Name already exists';
				set p_ResponseStatus='failed';
				rollback;	leave sp;
			end if;


		

        INSERT INTO Product (
        productId,ProductName, BrandId, MeasurementUnitId,  productTypeId,isProductItem,
isNotForSelling,imageUrl,isUnique, isExpiringProduct, UserLogId,ModifiedDate_UTC, ModifiedDate_ServerTime,isAssemblyProduct
        )
        VALUES (
			p_tableId,
            p_ProductName,  p_BrandId, p_MeasurementUnitId,p_productTypeId,p_isProductItem,
p_isNotForSelling,p_imgUrl,p_isUnique,p_isExpiringProduct,
           
p_UserLogID, utc_timestamp(), current_timestamp(),p_isAssemblyProduct );

      set  v_productId=LAST_INSERT_ID();
     
    
 
 if (p_isProductNoAutoGenerate=true) then
	set v_generatedProductNo= LPAD((v_productId), 5, '0');
	update Product set ProductNo=v_generatedProductNo where ProductId=v_productId;
else 
	update Product set ProductNo=p_ProductNo where ProductId=v_productId;
end if;



      insert into product_category(productId,categoryId,orderId) 
     select v_productId,categoryId,orderId from tblcategory;
     
  
    


  
    
    if p_productTypeId=1 then
    
    if(p_isUnique=1) then
    
      if (p_isStockTracked=0) then
				set p_OutputMessage='A unique product must always be a stock-tracked item';
				set p_ResponseStatus='failed';
				SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
				rollback;	leave sp;
			
			end if;
		
  set  p_sku=null;
   set p_Barcode=null;
  end if;
    
    

		insert into single_product(productId,sku,barcode,unitPrice,unitCost,taxPerc) values(v_productId,p_sku,p_Barcode,p_unitPrice,p_unitCost,p_taxPerc);

	insert into all_product(singleProductId,productTypeId) 
	values (v_productId,p_productTypeId);
 	 
	set v_allProductId=LAST_INSERT_ID();
		             
	 
	 
	 set v_totalItems_tblSubProducts=(select count(*) from tblSubProducts);
  
   while (0< v_totalItems_tblSubProducts) do
    
		set v_qty=(select qty from tblSubProducts  limit 1);
		set v_allProductId_mat=(select allProductId_mat from tblSubProducts  limit 1);
		
		insert into sub_product_detail(allProductId,qty,allProductId_mat) 
		values(v_allProductId,v_qty,v_allProductId_mat);
		
		delete  from tblSubProducts limit 1;
		set v_totalItems_tblSubProducts=(select count(*) from tblSubProducts);
	end while;
  
	
	
		   set v_totalItems_tblStoreIdList=(select count(*) from tblStoreIdList);
		       
		    
		  while (0< v_totalItems_tblStoreIdList) do
		
			  	set v_storeIdTmp=(select storeId from tblStoreIdList  limit 1);
			  
				set v_inventoryId=null;
			  
				if p_isProductItem=true then
				  	if p_isStockTracked=true then
			
				     	insert into inventory(reorderLevel) values(p_ReorderLevel);
				     	set v_inventoryId=LAST_INSERT_ID();
				     	         
				   end if;
			   end if;
			  

			
			      
			        insert into store_inventory_product(storeId,inventoryId,singleProductId,allProductId) 
					values(v_storeIdTmp,v_inventoryId,v_productId,v_allProductId);
					
			   
			   delete  from tblStoreIdList limit 1;
					set v_totalItems_tblStoreIdList=(select count(*) from tblStoreIdList);
			
			end while;
			     

   end if;


    
     if p_productTypeId=2 then


set v_totalItems_tblVariationProduct=(select count(*) from tblVariationProduct);

     while (0< v_totalItems_tblVariationProduct) do

   set v_variationProductIdTmp=(select variationProductIdTmp from tblVariationProduct  limit 1);
set v_sku=(select sku from tblVariationProduct  limit 1);
set v_barcode=(select barcode from tblVariationProduct  limit 1);
set v_unitCost=(select unitCost from tblVariationProduct  limit 1);
set v_unitPrice=(select unitPrice from tblVariationProduct  limit 1);
set v_taxPerc=(select taxPerc from tblVariationProduct  limit 1);

  
         if(p_isUnique=1) then
            if (p_isStockTracked=0) then
				set p_OutputMessage='A unique product must always be a stock-tracked item';
				set p_ResponseStatus='failed';
			 	SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
				rollback;	leave sp;
			end if;
		
		 	
		  	
		  end if;
		 
	
        

insert into variation_product(sku,barcode,productId,unitPrice,unitCost)
values(v_sku,v_barcode,v_productId,v_unitPrice,v_unitCost);

set v_variationProductId=LAST_INSERT_ID();
	
insert into all_product(variationProductId,productTypeId) 
values (v_variationProductId,p_productTypeId);
set v_allProductId=LAST_INSERT_ID();



		 insert into sub_product_detail(allProductId,qty,allProductId_mat) 
		 select v_allProductId,qty,allProductId_mat from tmpSubProductDetailsForVari where variationProductIdTmp=v_variationProductIdTmp;
		
	     select * from tmpSubProductDetailsForVari where variationProductIdTmp=v_variationProductIdTmp;

insert into variation_product_detail(variationProductId,variationTypeId,variationValue)
select v_variationProductId,variationTypeId,variationValue from tmpVariationDetails where variationProductIdTmp=v_variationProductIdTmp;



DROP TEMPORARY TABLE IF EXISTS tblStoreIdListCopy;
CREATE TEMPORARY TABLE tblStoreIdListCopy AS
SELECT * FROM tblStoreIdList;



	   set v_totalItems_tblStoreIdList=(select count(*) from tblStoreIdListCopy);
		       
		    
		  while (0< v_totalItems_tblStoreIdList) do
		
			  	set v_storeIdTmp=(select storeId from tblStoreIdListCopy  limit 1);
				set v_inventoryId=null;
			  
						
				if p_isProductItem=true then
			  	if p_isStockTracked=true then
		
			     	insert into inventory(reorderLevel) values(p_ReorderLevel);
			     	set v_inventoryId=LAST_INSERT_ID();
			     	         
			   end if;
			   end if;
			  	  
			  
			          
    insert into store_inventory_product(storeId,inventoryId,variationProductId,allProductId) 
    values(v_storeIdTmp,v_inventoryId,v_variationProductId,v_allProductId);
			
   
   
			   
			   delete  from tblStoreIdListCopy limit 1;
					set v_totalItems_tblStoreIdList=(select count(*) from tblStoreIdListCopy);
			
			end while;
		





 


delete  from tblVariationProduct limit 1;
set v_totalItems_tblVariationProduct=(select count(*) from tblVariationProduct);
end while;
     
     
   end if;
  


    
         if p_productTypeId=3 then
         
             if(p_isUnique=1) then
				set p_OutputMessage='A combo product can not exists as a unique item.';
				set p_ResponseStatus='failed';
			 SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
				rollback;	leave sp;	
		
		
			 	
			  	
			  end if;
 
    insert into combo_product(productId,sku,barcode,unitPrice,unitCost,taxPerc) 
    values(v_productId,p_sku,p_Barcode,p_unitPrice,p_unitCost,p_taxPerc);
  insert into all_product(comboProductId,productTypeId) values (v_productId,p_productTypeId);
set v_allProductId=LAST_INSERT_ID();
   
   set v_totalItems_tblComboProductDetail=(select count(*) from tblComboProductDetail);
  
   while (0< v_totalItems_tblComboProductDetail) do
    
set v_qty=(select qty from tblComboProductDetail  limit 1);
set v_productId_mat=(select productId_mat from tblComboProductDetail  limit 1);
set v_variationProductId_mat=(select variationProductId_mat from tblComboProductDetail  limit 1);		







set v_productTypeId_mat=(select productTypeId from product where productId=v_productId_mat);

if v_productTypeId_mat=3  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('combo product can not be creaed by using another combo product.');
		 SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
        
		rollback;	leave sp;
	end if;



	if(select count(*) from tblComboProductDetail where productId_mat=v_productId_mat or  variationProductId_mat=v_variationProductId_mat)>1 then 
				set p_ResponseStatus='failed';
				set p_OutputMessage=concat('duplicated products are not allowed in combo products');
					 SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
			rollback;	leave sp;
			 end if;



insert into combo_product_detail(productId,qty,productId_mat,variationProductId_mat) 
values(v_productId,v_qty,v_productId_mat,v_variationProductId_mat);



delete  from tblComboProductDetail limit 1;
set v_totalItems_tblComboProductDetail=(select count(*) from tblComboProductDetail);
end while;





   set v_totalItems_tblStoreIdList=(select count(*) from tblStoreIdList);
      
		    
		  while (0< v_totalItems_tblStoreIdList) do
		
			  	set v_storeIdTmp=(select storeId from tblStoreIdList  limit 1);
				set v_inventoryId=null;
			  
			  
		
			  
			   
			     	         
			  
			  
			      
			        insert into store_inventory_product(storeId,inventoryId,comboProductId,allProductId) 
					values(v_storeIdTmp,v_inventoryId,v_productId,v_allProductId);	
   
					
			   
			   delete  from tblStoreIdList limit 1;
					set v_totalItems_tblStoreIdList=(select count(*) from tblStoreIdList);
			
			end while;


   end if;
    
    
    
      
        SET p_ResponseStatus = 'success';
        SET p_OutputMessage = 'Added Successfully';
        set p_productId=v_productId;
        
    ELSEIF p_SaveType = 'U' THEN
    
    

        
    if p_productTypeId=1 then
    
    
     if not exists (select * from product where productId=p_tableID and productTypeId=1) then
				set p_OutputMessage='It is not allowed to change the product type.';
				set p_ResponseStatus='failed';
				SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
				rollback;	leave sp;
			
			end if;
		
    
    
    if exists(select * from product where productId=p_tableId and isUnique!=p_isUnique) then 
    
    if exists(select * from store_inventory_product where singleProductId=p_tableId and inventoryId is not null) then
    
    set p_OutputMessage="You cannot change product Unique true/false  because inventory already exists";
				set p_ResponseStatus='failed';
				rollback;	leave sp;
		end if;	
    
    end if;
    
    
    
           if(p_sku is null) then 
		   		set p_OutputMessage='SKU is required';
				set p_ResponseStatus='failed';
				rollback;	leave sp;
    		end if;
    
    
    
set v_skuDupCount=v_skuDupCount+(select count(*) from single_product sp where productId!=p_tableID and SKU=p_sku);
set v_skuDupCount=v_skuDupCount+(select count(*) from variation_product vp where variationProductId!=p_tableID and  SKU=p_sku);
set v_skuDupCount=v_skuDupCount+(select count(*) from combo_product cp where productId!=p_tableID and  SKU=p_sku);
set v_skuDupCount=v_skuDupCount+(select count(*) from serialized_item si inner join store_inventory_product as sip on si.inventoryId=sip.inventoryId 
inner join product p on sip.singleProductId=p.productId where p.productId!=p_tableID and serialNumber=p_sku);

	if v_skuDupCount>0  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('SKU is already used in products.');
		
        
		rollback;	leave sp;
	end if;



         set v_skuDupCount=v_skuDupCount+(select count(*) from single_product sp where productId!=p_tableID and barcode=p_Barcode);
set v_skuDupCount=v_skuDupCount+(select count(*) from variation_product vp where variationProductId!=p_tableID and barcode=p_Barcode);
set v_skuDupCount=v_skuDupCount+(select count(*) from combo_product cp where productId!=p_tableID and  barcode=p_Barcode);
set v_skuDupCount=v_skuDupCount+(select count(*) from serialized_item si inner join store_inventory_product as sip on si.inventoryId=sip.inventoryId 
inner join product p on sip.singleProductId=p.productId where p.productId!=p_tableID and serialNumber=p_Barcode);




	if v_skuDupCount>0  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('Barcode is already used in products.');
		
        
		rollback;	leave sp;
	end if;


end if;
    



        
    if p_productTypeId=2 then


         if not exists (select * from product where productId=p_tableID and productTypeId=2) then
				set p_OutputMessage='It is not allowed to change the product type.';
				set p_ResponseStatus='failed';
				SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
				rollback;	leave sp;
			
			end if;
		
   
    
    		if exists(select sku from tblVariationProduct where sku is null or sku='null') then 
				set p_OutputMessage='SKU is required for v.';
				set p_ResponseStatus='failed';
				rollback;	leave sp;
			 end if;		    	  
		   
		   
		   if (select count(sku) from tblVariationProduct) != (select count(distinct sku) from tblVariationProduct) then
		    set p_ResponseStatus = 'failed';
		    set p_OutputMessage = 'Duplicate SKUs are not allowed for variations.';
		    rollback;	leave sp;
		end if;
    
set v_skuDupCount=v_skuDupCount+(select count(*) from single_product sp 
where productId!=p_tableID and SKU in (select sku from tblVariationProduct));




select vp.sku as vp,vp.variationProductId as variationProductId_vp,
tvp.sku as tvp,tvp.variationProductId as variationProductIdTvp from variation_product vp 
 inner join tblVariationProduct tvp on vp.variationProductId!=tvp.variationProductId and vp.SKU=tvp.sku;



 set v_skuDupCount=v_skuDupCount+(select count(*) from variation_product vp 
 inner join tblVariationProduct tvp on vp.variationProductId!=tvp.variationProductId and vp.SKU=tvp.SKU);

set v_skuDupCount=v_skuDupCount+(select count(*) from combo_product cp 
where productId!=p_tableID and SKU in (select sku from tblVariationProduct));

set v_skuDupCount=v_skuDupCount+(select count(*) from serialized_item  
si inner join store_inventory_product as sip on si.inventoryId=sip.inventoryId 
inner join product p on sip.singleProductId=p.productId where p.productId!=p_tableID 
and serialNumber in (select sku from tblVariationProduct));

	if v_skuDupCount>0  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('SKU is already used in products v.');
		
        
		rollback;	leave sp;
	end if;


		


IF EXISTS (
    SELECT tmp.barcode
    FROM tblVariationProduct tmp inner join variation_product vp on tmp.variationProductId=vp.variationProductId 
    WHERE vp.productId != p_tableID 
      AND tmp.barcode IS NOT null 
    GROUP BY tmp.barcode,vp.barcode
    HAVING COUNT(*) > 1
) THEN
    SET p_ResponseStatus = 'failed';
    SET p_OutputMessage = concat('Duplicate Barcodes are not allowed for variationsoo.');
    ROLLBACK; LEAVE sp;
END IF;


		   
SET v_skuDupCount = v_skuDupCount +
    (SELECT COUNT(*) 
     FROM single_product sp  WHERE sp.productId != p_tableID  AND sp.barcode IN (
           SELECT barcode  FROM tblVariationProduct  WHERE barcode IS NOT NULL  AND barcode != ''
       )
    );
    
	 set v_skuDupCount=v_skuDupCount+(select count(*) from single_product sp 
	 where  sp.productId != p_tableID  and 
	 barcode in (select barcode from tblVariationProduct where barcode IS NOT NULL AND barcode != ''));
	

		set v_skuDupCount=v_skuDupCount+(select count(*) from variation_product vp where productId!=p_tableID and
	barcode in (select barcode from tblVariationProduct where barcode IS NOT null AND barcode != ''));
  


	
	
	


		set v_skuDupCount=v_skuDupCount+(select count(*) from combo_product cp where productId!=p_tableID and 
	barcode in (select barcode from tblVariationProduct where barcode IS NOT null AND barcode != ''));

		set v_skuDupCount=v_skuDupCount+(select count(*) from serialized_item si inner join 
		store_inventory_product sip on si.inventoryId=sip.inventoryId 
		inner join variation_product vp ON sip.variationProductId=vp.variationProductId where vp.productId!=p_tableID and 
	serialNumber in (select barcode from tblVariationProduct where barcode IS NOT null AND barcode != '' ));

	
			if v_skuDupCount>0  then
				set p_ResponseStatus='failed';
				set p_OutputMessage=concat('Barcode is already used in an other producti.',v_skuDupCount);
				
		        
				rollback;	leave sp;
			end if;
		

  

end if;
    




 
         if p_productTypeId=3 then
	
              if not exists (select * from product where productId=p_tableID and productTypeId=3) then
				set p_OutputMessage='It is not allowed to change the product type.';
				set p_ResponseStatus='failed';
				SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
				rollback;	leave sp;
			
			end if;
		
		
                if(p_sku is null) then 
		   		set p_OutputMessage='SKU is required for c.';
				set p_ResponseStatus='failed';
				rollback;	leave sp;
    		end if;
    
    	
         set v_skuDupCount=v_skuDupCount+(select count(*) from single_product sp where productId!=p_tableID and SKU=p_sku);
set v_skuDupCount=v_skuDupCount+(select count(*) from variation_product vp where variationProductId!=p_tableID and SKU=p_sku);
set v_skuDupCount=v_skuDupCount+(select count(*) from combo_product cp where productId!=p_tableID and SKU=p_sku);

set v_skuDupCount=v_skuDupCount+(select count(*) from serialized_item si inner join store_inventory_product as sip on si.inventoryId=sip.inventoryId 
inner join product p on sip.comboProductId=p.productId where p.productId=p_tableID and serialNumber=p_sku);



	if v_skuDupCount>0  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('SKU is already used in products.');
		
        
		rollback;	leave sp;
	end if;
         


         set v_skuDupCount=v_skuDupCount+(select count(*) from single_product sp where productId!=p_tableID and barcode=p_Barcode);
set v_skuDupCount=v_skuDupCount+(select count(*) from variation_product vp where variationProductId!=p_tableID and barcode=p_Barcode);
set v_skuDupCount=v_skuDupCount+(select count(*) from combo_product cp where productId!=p_tableID and barcode=p_Barcode);

set v_skuDupCount=v_skuDupCount+(select count(*) from serialized_item si inner join store_inventory_product as sip on si.inventoryId=sip.inventoryId 
inner join product p on sip.comboProductId=p.productId where p.productId=p_tableID and serialNumber=p_Barcode);



	if v_skuDupCount>0  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('Barcode is already used in an other product.');
		
        
		rollback;	leave sp;
	end if;


         
         
         if p_isStockTracked=true  then
			set p_ResponseStatus='failed';
			set p_OutputMessage=concat('Combo items can not be tracked stocks.');
			rollback;	leave sp;
		end if;
         
    end if;
   
    
    
    
    
    
    
	if not exists (select * from product where ProductId=p_tableID) then
		set p_OutputMessage='Invalid product id';
        set p_ResponseStatus='failed';
        rollback;	leave sp;
	end if;
    


	
	
     
     
	

	if exists (select * from product where ProductName=p_ProductName and ProductId!=p_tableID) then
		set p_OutputMessage='Product Name already exists';
        set p_ResponseStatus='failed';
        rollback;	leave sp;
	end if;



	
   
    



DROP TEMPORARY TABLE IF EXISTS currentCategories;
CREATE TEMPORARY TABLE currentCategories(categoryId INT);

INSERT INTO currentCategories(categoryId)
SELECT categoryId FROM product_category WHERE productId = p_tableID;



DROP TEMPORARY TABLE IF EXISTS categoriesToAdd;
CREATE TEMPORARY TABLE categoriesToAdd(categoryId INT);


DROP TEMPORARY TABLE IF EXISTS categoriesToRemove;
CREATE TEMPORARY TABLE categoriesToRemove(categoryId INT);


INSERT INTO categoriesToAdd(categoryId)
SELECT t.categoryId FROM tblcategory t
WHERE NOT EXISTS (SELECT 1 FROM currentCategories c WHERE t.categoryId = c.categoryId);


INSERT INTO categoriesToRemove(categoryId)
SELECT c.categoryId FROM currentCategories c
WHERE NOT EXISTS (SELECT 1 FROM tblcategory t WHERE t.categoryId = c.categoryId);


DELETE FROM product_category
WHERE productId = p_tableID AND categoryId IN (SELECT categoryId FROM categoriesToRemove);


INSERT INTO product_category(productId, categoryId)
SELECT p_tableID, categoryId FROM categoriesToAdd;

     
   
    UPDATE Product
    SET
        ProductName = p_ProductName,
        BrandId = p_BrandId,
        MeasurementUnitId = p_MeasurementUnitId,
       
        isProductItem=p_isProductItem,
        isNotForSelling = p_isNotForSelling,
        imageUrl = p_imgUrl,
        isUnique = p_isUnique,
        isExpiringProduct=p_isExpiringProduct,
        ModifiedDate_UTC = utc_timestamp(),
        ModifiedDate_ServerTime = current_timestamp(),
        isAssemblyProduct=p_isAssemblyProduct
    WHERE ProductId = p_tableID;
       					
        
   
   
  
   

     if(p_isUnique=1) then
    
      if (p_isStockTracked=0) then
				set p_OutputMessage='A unique product must always be a stock-tracked item';
				set p_ResponseStatus='failed';
				SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
				rollback;	leave sp;
			
			end if;
		
	  end if;
	 

     
    
    IF p_productTypeId = 1 then
    
 
    

   
 
   UPDATE single_product SET sku = p_sku,barcode = p_barcode,unitPrice=p_unitPrice,
 unitCost=p_unitCost,taxPerc=p_taxPerc where productId=p_tableId;
  
 UPDATE product SET isAssemblyProduct=p_isAssemblyProduct where productId=p_tableId;

 
  set v_allProductId=(select allProductId from all_product where singleProductId=p_tableID);
 
  

  
  if(p_isAssemblyProduct=true) then
  
  if exists(select * from tblSubProducts where allProductId_mat=v_allProductId) then 
	  set p_OutputMessage='The product being updated cannot be included in the list as a subproduct.';
	  set p_ResponseStatus='failed';
	  rollback;	
	  leave sp;
  end if;

  
     call _validateProductIsUsedAsASubProductOfAnotherProduct(v_allProductId,@isTheProductUsedAsASubProductInAnotherValidated,@skus);
  		if @isTheProductUsedAsASubProductInAnotherValidated=false then  	          
	  	 set p_ResponseStatus='failed';
	  	 set p_OutputMessage= CONCAT('This product cannot be updated as an assembly product because it is already used as a sub-product in other SKU(s): ', @skus);   
		  rollback;
	    leave sp;
  		end if;
  end if;
     
         if(p_isStockTracked=false) then
  
     call _validateProductIsUsedAsASubProductOfAnotherProduct(v_allProductId,@isTheProductUsedAsASubProductInAnotherValidated,@skus);
  		if @isTheProductUsedAsASubProductInAnotherValidated=false then  	          
	  	 set p_ResponseStatus='failed';
	  	 set p_OutputMessage= CONCAT('This product must be stock-tracked because it is already used as a sub-product in other SKU(s): ', @skus);   
		  rollback;
	    leave sp;
  		end if;
  end if;
  
 
 










 
 

   
       
DROP TEMPORARY TABLE IF EXISTS tblCurrentSubProducts;
CREATE TEMPORARY TABLE tblCurrentSubProducts(allProductId_mat INT,qty decimal(10,2));

INSERT INTO tblCurrentSubProducts(allProductId_mat,qty)
SELECT distinct spd.allProductId_mat,spd.qty FROM sub_product_detail spd 
inner join all_product ap on spd.allProductId=ap.allProductId
where ap.singleProductId = p_tableID;

    
DROP TEMPORARY TABLE IF EXISTS tblSubProductsAdd;
CREATE TEMPORARY TABLE tblSubProductsAdd(allProductId_mat INT,qty decimal(10,2));

DROP TEMPORARY TABLE IF EXISTS tblSubProductsRemove;
CREATE TEMPORARY TABLE tblSubProductsRemove(allProductId_mat INT);

  
  INSERT INTO tblSubProductsAdd(allProductId_mat,qty)
SELECT tsp.allProductId_mat,tsp.qty FROM tblSubProducts tsp
WHERE NOT EXISTS (SELECT 1 FROM tblCurrentSubProducts csp 
 WHERE csp.allProductId_mat = tsp.allProductId_mat);
   

INSERT INTO tblSubProductsRemove(allProductId_mat)
SELECT csp.allProductId_mat FROM tblCurrentSubProducts csp
WHERE NOT EXISTS (SELECT 1 FROM tblSubProducts tsp WHERE tsp.allProductId_mat = csp.allProductId_mat);



DROP TEMPORARY TABLE IF EXISTS tblRemainingSubProducts;

CREATE TEMPORARY TABLE tblRemainingSubProducts AS
SELECT * FROM tblSubProducts;

  
	 delete from tblRemainingSubProducts where allProductId_mat in (select allProductId_mat from tblSubProductsAdd);
	delete from tblRemainingSubProducts where allProductId_mat in (select allProductId_mat from tblSubProductsRemove);
   

 
 insert into sub_product_detail(allProductId_mat,qty,allProductId)
 select allProductId_mat,qty,v_allProductId from tblSubProductsAdd;
 

DELETE spd
FROM sub_product_detail spd
INNER JOIN tblSubProductsRemove spda 
    ON spd.allProductId_mat = spda.allProductId_mat
WHERE spd.allProductId = v_allProductId;

 
UPDATE sub_product_detail spd
INNER JOIN tblRemainingSubProducts trsp 
    ON spd.allProductId_mat = trsp.allProductId_mat
SET spd.qty = trsp.qty
WHERE spd.allProductId = v_allProductId;

       
DROP TEMPORARY TABLE IF EXISTS currentStores;
CREATE TEMPORARY TABLE currentStores(storeId INT);

INSERT INTO currentStores(storeId)
SELECT storeId FROM store_inventory_product WHERE singleProductId = p_tableID;

       
DROP TEMPORARY TABLE IF EXISTS storesToAdd;
CREATE TEMPORARY TABLE storesToAdd(storeId INT);

DROP TEMPORARY TABLE IF EXISTS storesToRemove;
CREATE TEMPORARY TABLE storesToRemove(storeId INT);

INSERT INTO storesToAdd(storeId)
SELECT t.storeId FROM tblStoreIdList t
WHERE NOT EXISTS (SELECT 1 FROM currentStores c WHERE t.storeId = c.storeId);

INSERT INTO storesToRemove(storeId)
SELECT c.storeId FROM currentStores c
WHERE NOT EXISTS (SELECT 1 FROM tblStoreIdList t WHERE t.storeId = c.storeId);

   		     
			
	delete from tblStoreIdList where storeId in (select storeId from storesToAdd);
	delete from tblStoreIdList where storeId in (select storeId from storesToRemove);

   
   		
		


  	

   set v_totalItems_tblStoreIdList=(select count(*) from storesToRemove);

  	  while (0< v_totalItems_tblStoreIdList) do
		
			  	set v_storeIdTmp=(select storeId from storesToRemove  limit 1);
				set v_inventoryId=null;
			  
				set v_inventoryId=(select inventoryId from store_inventory_product where singleProductId=p_tableID and storeId=v_storeIdTmp); 
			
			
			  	if v_inventoryId is not null then
		
			  	
				  	if exists ( select nsi.* from inventory i inner join store_inventory_product sip on i.inventoryId=sip.inventoryId 
				  	 inner join non_serialized_item nsi on i.inventoryId=nsi.inventoryId
				  	where singleProductId=p_tableID and sip.storeId=v_storeIdTmp) then 
				  	
				  	if(p_isAssemblyProduct=true) then
				  		set p_OutputMessage='You cannot make this an assembly product because this prodct already have inventory transactions.';
						set p_ResponseStatus='failed';
						SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
						rollback;	leave sp;	
				  	end if;
				  	
				  		set p_OutputMessage='You cannot remove stock tracking from the product because this prodct already have inventory transactions.';
						set p_ResponseStatus='failed';
						SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
						rollback;	leave sp;		
				
				  	end if;
			  	
			  	     
			        delete from store_inventory_product where storeId=v_storeIdTmp and inventoryId=v_inventoryId and singleProductId=p_tableID; 
					
			     	delete from inventory where inventoryId=v_inventoryId;
	     	         
			     else
			     
			    
			   delete from store_inventory_product where storeId=v_storeIdTmp and singleProductId=p_tableID; 
				
			   end if;
			  
			
			   
			   delete  from storesToRemove limit 1;
					set v_totalItems_tblStoreIdList=(select count(*) from storesToRemove);
			
			end while;
		


		
   set v_totalItems_tblStoreIdList=(select count(*) from storesToAdd);

  	  while (0< v_totalItems_tblStoreIdList) do
	
			  	set v_storeIdTmp=(select storeId from storesToAdd  limit 1);
				set v_inventoryId=null;
	



				if p_isProductItem=true then
				  	if p_isStockTracked=true then	  	
				  			
			     	insert into inventory(reorderLevel) values(p_ReorderLevel);
			     	set v_inventoryId=LAST_INSERT_ID();
			     	         
			  		 end if;
			  	end if;
		
			  	  
		

			           
			        insert into store_inventory_product(storeId,inventoryId,singleProductId) 
					values(v_storeIdTmp,v_inventoryId,p_tableID);
			

			   delete  from storesToAdd limit 1;
					set v_totalItems_tblStoreIdList=(select count(*) from storesToAdd);
			
			end while;
       
			

      

			

			
   set v_totalItems_tblStoreIdList=(select count(*) from tblStoreIdList);

  	  while (0< v_totalItems_tblStoreIdList) do
		
			  	set v_storeIdTmp=(select storeId from tblStoreIdList  limit 1);
			  
				set v_inventoryId=(select inventoryId from store_inventory_product where storeId=v_storeIdTmp and singleProductId=p_tableID);

				
			if p_isStockTracked=true and p_isProductItem=true then
		
				  	if v_inventoryId is null then 
				     	insert into inventory(reorderLevel) values(p_ReorderLevel);
				     	set v_inventoryId=LAST_INSERT_ID();
			     	   
             		
				         
				        update store_inventory_product set inventoryId=v_inventoryId
				        where  storeId=v_storeIdTmp and singleProductId=p_tableID;
					
				 
 						
 						
 				         
            			
				             			
					else
					update inventory set reorderLevel=p_ReorderLevel where inventoryId=v_inventoryId;
					
					end if; 
				    
				 else
				      	if v_inventoryId is not null then 
				      	
				      	
				      	
					   	if exists ( select nsi.* from inventory i inner join store_inventory_product sip on i.inventoryId=sip.inventoryId 
				  	 inner join non_serialized_item nsi on i.inventoryId=nsi.inventoryId
				  	where singleProductId=p_tableID and sip.storeId=v_storeIdTmp) then 
				  	
				  	
				  	 	if(p_isAssemblyProduct=true) then
				  		set p_OutputMessage='You cannot make this an assembly product because this prodct already have inventory transactions.';
						set p_ResponseStatus='failed';
						SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
						rollback;	leave sp;	
				  	end if;
				  	
				  	
				  		set p_OutputMessage='You cannot remove stock tracking from the product because this prodct already have inventory transactions.';
						set p_ResponseStatus='failed';
						SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
						rollback;	leave sp;		
				
				  	end if;
				  	
				  	     
				   update store_inventory_product set inventoryId=null
				       where storeId=v_storeIdTmp and singleProductId=p_tableID;
				  
				     	delete from inventory where inventoryId=v_inventoryId;
					      	   	
					      	
					      	end if; 
				    
				    
				    
			  	  end if; 
			  	 

			   delete  from tblStoreIdList limit 1;
					set v_totalItems_tblStoreIdList=(select count(*) from tblStoreIdList);
			
			end while;
		
		
    			
       end if; 
       
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
    IF p_productTypeId = 2 then
    

       
DROP TEMPORARY TABLE IF EXISTS tblCurrentVariationProducts;
CREATE TEMPORARY TABLE tblCurrentVariationProducts(variationProductId INT,sku varchar(50),unitCost decimal(10,2),unitPrice decimal(10,2),taxPerc decimal(10,2));

INSERT INTO tblCurrentVariationProducts(variationProductId,sku,unitCost,unitPrice,taxPerc)
SELECT distinct vp.variationProductId,vp.sku,vp.unitCost,vp.unitPrice,vp.taxPerc FROM variation_product vp where vp.productId = p_tableID;


    
DROP TEMPORARY TABLE IF EXISTS tblVariationProductsAdd;
CREATE TEMPORARY TABLE tblVariationProductsAdd(variationProductIdTmp INT,sku varchar(50),barcode varchar(50),unitCost decimal(10,2),unitPrice decimal(10,2),taxPerc decimal(10,2));

DROP TEMPORARY TABLE IF EXISTS tblVariationProductsRemove;
CREATE TEMPORARY TABLE tblVariationProductsRemove(variationProductId INT);

  
  INSERT INTO tblVariationProductsAdd(variationProductIdTmp,sku,barcode,unitCost,unitPrice,taxPerc)
SELECT t.variationProductIdTmp,t.sku,t.barcode,t.unitCost,t.unitPrice,t.taxPerc FROM tblVariationProduct t
WHERE NOT EXISTS (SELECT 1 FROM tblCurrentVariationProducts c WHERE t.variationProductId = c.variationProductId);
   

INSERT INTO tblVariationProductsRemove(variationProductId)
SELECT c.variationProductId FROM tblCurrentVariationProducts c
WHERE NOT EXISTS (SELECT 1 FROM tblVariationProduct t WHERE t.variationProductId = c.variationProductId);





DROP TEMPORARY TABLE IF EXISTS tblRemainingVariationProduct;

CREATE TEMPORARY TABLE tblRemainingVariationProduct AS
SELECT * FROM tblVariationProduct;

DROP TEMPORARY TABLE IF EXISTS tmpRemainingVariationDetails;


  
	 delete from tblRemainingVariationProduct where variationProductIdTmp in (select variationProductIdTmp from tblVariationProductsAdd);
	delete from tblRemainingVariationProduct where variationProductId in (select variationProductId from tblVariationProductsRemove);
   

 
DROP TEMPORARY TABLE IF EXISTS tmpRemainingVariationDetails;
CREATE TEMPORARY TABLE tmpRemainingVariationDetails AS
SELECT * FROM tmpVariationDetails;


delete from tmpRemainingVariationDetails where variationProductIdTmp in (select variationProductIdTmp from tblVariationProductsAdd);
	delete from tmpRemainingVariationDetails where variationProductId in (select variationProductId from tblVariationProductsRemove);
   




 






  
       
DROP TEMPORARY TABLE IF EXISTS currentStores;
CREATE TEMPORARY TABLE currentStores(storeId INT);


INSERT INTO currentStores(storeId)
SELECT distinct storeId FROM store_inventory_product sip inner join variation_product vp on sip.variationProductId=vp.variationProductId
 WHERE vp.productId = p_tableID;



DROP TEMPORARY TABLE IF EXISTS storesToAdd;
CREATE TEMPORARY TABLE storesToAdd(storeId INT);

DROP TEMPORARY TABLE IF EXISTS storesToRemove;
CREATE TEMPORARY TABLE storesToRemove(storeId INT);


INSERT INTO storesToAdd(storeId)
SELECT t.storeId FROM tblStoreIdList t
WHERE NOT EXISTS (SELECT 1 FROM currentStores c WHERE t.storeId = c.storeId);


INSERT INTO storesToRemove(storeId)
SELECT c.storeId FROM currentStores c
WHERE NOT EXISTS (SELECT 1 FROM tblStoreIdList t WHERE t.storeId = c.storeId);

   		     
		     
    



DROP TEMPORARY TABLE IF EXISTS tblRemainingStoreIdList;
CREATE TEMPORARY TABLE tblRemainingStoreIdList AS
SELECT storeId FROM tblStoreIdList;

delete from tblRemainingStoreIdList where storeId in (select storeId from storesToAdd);
delete from tblRemainingStoreIdList where storeId in (select storeId from storesToRemove);





	

		


SET v_totalItems_tblVariationProduct = (SELECT COUNT(*) FROM tblVariationProductsRemove);

WHILE v_totalItems_tblVariationProduct > 0 DO

    SELECT variationProductId INTO v_variationProductId FROM tblVariationProductsRemove LIMIT 1;

       IF EXISTS (
        SELECT nsi.inventoryId, COUNT(*) AS record_count 
        FROM inventory i
        INNER JOIN store_inventory_product sip ON i.inventoryId = sip.inventoryId
        INNER JOIN non_serialized_item nsi ON i.inventoryId = nsi.inventoryId
        WHERE sip.variationProductId= v_variationProductId
        GROUP BY nsi.inventoryId 
        HAVING COUNT(*) > 1
    ) THEN
        SET p_OutputMessage = 'You cannot remove this variation because this product already has inventory transactions';
        SET p_ResponseStatus = 'failed';
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = p_OutputMessage;
        rollback;	leave sp;		
 
	end if;


	DROP TEMPORARY TABLE IF EXISTS tblStoreIdList2;
   	CREATE TEMPORARY TABLE tblStoreIdList2 as SELECT * from tblStoreIdList;
  

    SET v_totalItems_tblStoreIdList = (SELECT COUNT(*) FROM tblStoreIdList2);

    WHILE v_totalItems_tblStoreIdList > 0 DO

        
        SET v_storeIdTmp = (SELECT storeId FROM tblStoreIdList2 LIMIT 1);
        SET v_inventoryId =(select inventoryId from store_inventory_product where storeId=v_storeIdTmp
       and variationProductId=v_variationProductId);

      
 	 	DELETE nsi FROM non_serialized_item nsi where inventoryId=v_inventoryId;
 	 	
 	 DELETE sip FROM store_inventory_product sip 
 	where storeId=v_storeIdTmp and sip.variationProductId=v_variationProductId;
    
      DELETE i FROM inventory i where inventoryId=v_inventoryId;
     
  
        delete from variation_product_detail where variationProductId=v_variationProductId;
              
      DELETE spd FROM sub_product_detail spd INNER JOIN all_product ap  
      ON spd.allProductId = ap.allProductId WHERE ap.variationProductId = v_variationProductId;

        
         delete from all_product where variationProductId=v_variationProductId;
      delete from variation_product where variationProductId=v_variationProductId;
    

        DELETE FROM tblStoreIdList2 LIMIT 1;
        SET v_totalItems_tblStoreIdList = (SELECT COUNT(*) FROM tblStoreIdList2);

    END WHILE;

    
    DELETE FROM tblVariationProductsRemove LIMIT 1;
    SET v_totalItems_tblVariationProduct = (SELECT COUNT(*) FROM tblVariationProductsRemove);

END WHILE;



	
	


SET v_totalItems_tblVariationProduct = (SELECT COUNT(*) FROM tblVariationProductsAdd);

WHILE v_totalItems_tblVariationProduct > 0 DO

    SELECT variationProductIdTmp, sku, barcode,unitCost,unitPrice,taxPerc  
    INTO v_variationProductIdTmp, v_sku, v_barcode,v_unitCost,v_unitPrice,v_taxPerc 
   	FROM tblVariationProductsAdd LIMIT 1;

    INSERT INTO variation_product (sku, barcode, productId,unitCost,unitPrice,taxPerc) 
    VALUES (v_sku, v_barcode, p_tableId,v_unitCost,v_unitPrice,v_taxPerc);

    SET v_variationProductId_new = LAST_INSERT_ID();
   

    
    INSERT INTO variation_product_detail (variationProductId, variationTypeId, variationValue)
    SELECT v_variationProductId_new, variationTypeId, variationValue
    FROM tmpVariationDetails
    WHERE variationProductIdTmp = v_variationProductIdTmp;

    
    insert into all_product(variationProductId,productTypeId) values (v_variationProductId_new,p_productTypeId);
set v_allProductId=LAST_INSERT_ID();
   

	 insert into sub_product_detail(allProductId,qty,allProductId_mat) 
		 select v_allProductId,qty,allProductId_mat from tmpSubProductDetailsForVari where variationProductIdTmp=v_variationProductIdTmp;
		


   	DROP TEMPORARY TABLE IF EXISTS tblStoreIdList2;
   	CREATE TEMPORARY TABLE tblStoreIdList2 as SELECT * from tblStoreIdList;

    SET v_totalItems_tblStoreIdList = (SELECT COUNT(*) FROM tblStoreIdList2);

    WHILE v_totalItems_tblStoreIdList > 0 DO

        SET v_storeIdTmp = (SELECT storeId FROM tblStoreIdList2 LIMIT 1);
        SET v_inventoryId = NULL;

        IF p_isStockTracked THEN
            INSERT INTO inventory (reorderLevel) 
            VALUES (p_ReorderLevel);
            SET v_inventoryId = LAST_INSERT_ID();
        END IF;

        
        INSERT INTO store_inventory_product (storeId, inventoryId, variationProductId,allProductId) 
        VALUES (v_storeIdTmp, v_inventoryId, v_variationProductId_new,v_allProductId);

        
        DELETE FROM tblStoreIdList2 LIMIT 1;
        SET v_totalItems_tblStoreIdList = (SELECT COUNT(*) FROM tblStoreIdList2);

    END WHILE;

    
    DELETE FROM tblVariationProductsAdd LIMIT 1;
    SET v_totalItems_tblVariationProduct = (SELECT COUNT(*) FROM tblVariationProductsAdd);

END WHILE;

		
 














	


 DROP TEMPORARY TABLE IF EXISTS tblCurrentSubProductDetailsForVari;
 CREATE TEMPORARY TABLE tblCurrentSubProductDetailsForVari(qty decimal(10,2),allProductId_mat int);


DROP TEMPORARY TABLE IF EXISTS tblSubProductDetailsForVariAdd;
CREATE TEMPORARY TABLE tblSubProductDetailsForVariAdd(qty decimal(10,2),allProductId_mat int);

DROP TEMPORARY TABLE IF EXISTS tblSubProductDetailsForVariRemove;
CREATE TEMPORARY TABLE tblSubProductDetailsForVariRemove(allProductId_mat int);


SET v_totalItems_tblVariationProduct = (SELECT COUNT(*) FROM tblRemainingVariationProduct);

WHILE v_totalItems_tblVariationProduct > 0 DO


    SELECT variationProductId, sku, barcode,unitCost,unitPrice,taxPerc
    INTO v_variationProductId, v_sku, v_barcode,v_unitCost,v_unitPrice,v_taxPerc 
    FROM tblRemainingVariationProduct LIMIT 1;
   

 







    set v_allProductId_sv=(select allProductId from all_product where variationProductId=v_variationProductId);
    
    
    
    

  
  
  if(p_isAssemblyProduct=true) then
    
    call _validateProductIsUsedAsASubProductOfAnotherProduct(v_allProductId_sv,@isTheProductUsedAsASubProductInAnotherValidated,@skus);
  	if @isTheProductUsedAsASubProductInAnotherValidated=false then
  	     
  	 set p_ResponseStatus='failed';
  	 set p_OutputMessage= CONCAT('This product cannot be updated as an assembly product because it is already used as a sub-product in other SKU(s): ', @skus);
      
  	rollback;
    leave sp;
  	end if;
  	
  end if;
    
         if(p_isStockTracked=false) then
  
       call _validateProductIsUsedAsASubProductOfAnotherProduct(v_allProductId_sv,@isTheProductUsedAsASubProductInAnotherValidated,@skus);
  	if @isTheProductUsedAsASubProductInAnotherValidated=false then
  	     
  	 set p_ResponseStatus='failed';
  		 set p_OutputMessage= CONCAT('This product must be stock-tracked because it is already used as a sub-product in other SKU(s): ', @skus);   
		  
  	rollback;
    leave sp;
  	end if;
  	
  end if;
    
 
    


 delete from tblCurrentSubProductDetailsForVari;
 delete from tblSubProductDetailsForVariAdd;
delete from tblSubProductDetailsForVariRemove;
 
 INSERT INTO tblCurrentSubProductDetailsForVari(qty,allProductId_mat)
SELECT distinct spd.qty,spd.allProductId_mat FROM sub_product_detail spd where spd.allProductId = v_allProductId_sv;

  
  INSERT INTO tblSubProductDetailsForVariAdd(qty,allProductId_mat)
SELECT t.qty,t.allProductId_mat FROM tmpSubProductDetailsForVari t
where t.variationProductId=v_variationProductId and NOT EXISTS (SELECT 1 FROM tblCurrentSubProductDetailsForVari c 
				where  t.allProductId_mat=c.allProductId_mat);
    

INSERT INTO tblSubProductDetailsForVariRemove(allProductId_mat)
 SELECT c.allProductId_mat FROM tblCurrentSubProductDetailsForVari c
 WHERE NOT EXISTS (SELECT 1 FROM tmpSubProductDetailsForVari t WHERE t.variationProductId = v_variationProductId and t.allProductId_mat=c.allProductId_mat);


select * from tblSubProductDetailsForVariRemove;




 DROP TEMPORARY TABLE IF EXISTS tblSubProductsDetailsRemainingVari;

 CREATE TEMPORARY TABLE tblSubProductsDetailsRemainingVari AS
 SELECT * FROM tmpSubProductDetailsForVari where variationProductId=v_variationProductId;
 
  
	 delete from tblSubProductsDetailsRemainingVari 
	 where allProductId_mat in (select allProductId_mat from tblSubProductDetailsForVariAdd);
	 
 	delete from tblSubProductsDetailsRemainingVari 
 	where allProductId_mat in (select allProductId_mat from tblSubProductDetailsForVariRemove);


 	
insert into sub_product_detail (allProductId,qty,allProductId_mat)
select v_allProductId_sv,qty,allProductId_mat from tblSubProductDetailsForVariAdd;

DELETE spd FROM sub_product_detail spd
INNER JOIN tblSubProductDetailsForVariRemove spda ON spd.allProductId_mat = spda.allProductId_mat
WHERE spd.allProductId = v_allProductId_sv;

 
UPDATE sub_product_detail spd
INNER JOIN tblSubProductsDetailsRemainingVari spdrem ON spd.allProductId_mat = spdrem.allProductId_mat
SET spd.qty = spdrem.qty WHERE spd.allProductId = v_allProductId_sv;









update variation_product set sku=v_sku,barcode=v_barcode,unitPrice=v_unitPrice,
 unitCost=v_unitCost,taxPerc=v_taxPerc where variationProductId=v_variationProductId;
   
UPDATE variation_product_detail tvd INNER JOIN tmpVariationDetails vpd 
    ON tvd.variationProductId = vpd.variationProductId  AND tvd.variationTypeId = vpd.variationTypeId
SET tvd.variationValue = vpd.variationValue
WHERE tvd.variationProductId = v_variationProductId AND tvd.variationValue != vpd.variationValue;

set v_allProductId=(select ap.allProductId from all_product ap 
   inner join variation_product vp on ap.variationProductId=vp.variationProductId
where vp.variationProductId=v_variationProductId);
 
   INSERT INTO variation_product_detail(variationProductId, variationTypeId, variationValue)
 SELECT  v_variationProductId,tvd.variationTypeId,  tvd.variationValue 
FROM tmpVariationDetails tvd LEFT JOIN 
    variation_product_detail vpd ON 
    tvd.variationProductId = vpd.variationProductId 
    AND tvd.variationTypeId = vpd.variationTypeId 
    AND tvd.variationValue = vpd.variationValue
   WHERE tvd.variationProductId=v_variationProductId and vpd.variationProductId IS NULL;
  
  
   DELETE tvd FROM variation_product_detail tvd
	LEFT JOIN tmpVariationDetails vpd  ON tvd.variationProductId = vpd.variationProductId
    AND tvd.variationTypeId = vpd.variationTypeId AND tvd.variationValue = vpd.variationValue
WHERE tvd.variationProductId = v_variationProductId AND vpd.variationProductId IS NULL;

   	


		DROP TEMPORARY TABLE IF EXISTS storesToAdd2;
		CREATE TEMPORARY TABLE storesToAdd2 as SELECT * from storesToAdd;
  
    SET v_totalItems_tblStoreIdList = (SELECT COUNT(*) FROM storesToAdd2);

    WHILE v_totalItems_tblStoreIdList > 0 DO
    
        SET v_storeIdTmp = (SELECT storeId FROM storesToAdd2 LIMIT 1);
        SET v_inventoryId = NULL;

        IF p_isStockTracked THEN
            INSERT INTO inventory (reorderLevel) VALUES (p_ReorderLevel);
            SET v_inventoryId = LAST_INSERT_ID();
        END IF;

        INSERT INTO store_inventory_product (storeId, inventoryId, variationProductId,allProductId) 
        VALUES (v_storeIdTmp, v_inventoryId, v_variationProductId,v_allProductId);

        DELETE FROM storesToAdd2 LIMIT 1;
        SET v_totalItems_tblStoreIdList = (SELECT COUNT(*) FROM storesToAdd2);

    END WHILE;
   
   		DROP TEMPORARY TABLE IF EXISTS storesToRemove2;
   		CREATE TEMPORARY TABLE storesToRemove2 as SELECT * from storesToRemove;
  
    SET v_totalItems_tblStoreIdList = (SELECT COUNT(*) FROM storesToRemove2);

    
   
    
    WHILE v_totalItems_tblStoreIdList > 0 DO
        SET v_storeIdTmp = (SELECT storeId FROM storesToRemove2 LIMIT 1);
        SET v_inventoryId = (SELECT inventoryId FROM store_inventory_product 
                             WHERE variationProductId = v_variationProductId AND storeId = v_storeIdTmp);

                      
        IF v_inventoryId IS NOT NULL then
      
            IF EXISTS (
                SELECT nsi.inventoryId, COUNT(*) AS record_count 
                FROM inventory i
                INNER JOIN store_inventory_product sip ON i.inventoryId = sip.inventoryId
                INNER JOIN non_serialized_item nsi ON i.inventoryId = nsi.inventoryId
                WHERE sip.variationProductId = v_variationProductId 
                  AND storeId = v_storeIdTmp
                GROUP BY nsi.inventoryId 
                HAVING COUNT(*) > 1
            ) THEN
                SET p_OutputMessage = 'You cannot remove this variation because this product already has inventory transactions';
                SET p_ResponseStatus = 'failed';
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = p_OutputMessage;
                rollback;	leave sp;
            END IF;

            
            DELETE nsi 
            FROM non_serialized_item nsi
            INNER JOIN inventory i ON nsi.inventoryId = i.inventoryId
            INNER JOIN store_inventory_product sip ON i.inventoryId = sip.inventoryId
            WHERE sip.inventoryId = v_inventoryId;

        
            DELETE FROM store_inventory_product WHERE inventoryId = v_inventoryId;

            DELETE FROM inventory WHERE inventoryId = v_inventoryId;
           
           else
                DELETE FROM store_inventory_product WHERE variationProductId = v_variationProductId AND storeId = v_storeIdTmp;

        END IF;

        DELETE FROM storesToRemove2 LIMIT 1;
        SET v_totalItems_tblStoreIdList = (SELECT COUNT(*) FROM storesToRemove2);

    END WHILE;
 

   
   	DROP TEMPORARY TABLE IF EXISTS tblRemainingStoreIdList2;
		CREATE TEMPORARY TABLE tblRemainingStoreIdList2 as SELECT * from tblRemainingStoreIdList;

    SET v_totalItems_tblStoreIdList = (SELECT COUNT(*) FROM tblRemainingStoreIdList2);
	
    WHILE v_totalItems_tblStoreIdList > 0 DO
    
        SET v_storeIdTmp = (SELECT storeId FROM tblRemainingStoreIdList2 LIMIT 1);
       
      
      if not exists(select * from store_inventory_product 
      WHERE variationProductId = v_variationProductId AND storeId = v_storeIdTmp ) then 
      
       	select 'hello store_inventory_product table not exists and created the record into it.';
         insert into store_inventory_product(storeId,inventoryId,variationProductId) 
					values(v_storeIdTmp,null,v_variationProductId);  
				
      end if;
       
      
       
        SET v_inventoryId = (SELECT inventoryId FROM store_inventory_product 
                             WHERE variationProductId = v_variationProductId AND storeId = v_storeIdTmp);
                    
     
                            
        IF p_isStockTracked then
          IF v_inventoryId IS NULL THEN

            INSERT INTO inventory (reorderLevel) VALUES (p_ReorderLevel);
            SET v_inventoryId = LAST_INSERT_ID();
          
          end if;
        
            update store_inventory_product set inventoryId=v_inventoryId
            WHERE storeId=v_storeIdTmp and variationProductId=v_variationProductId;
 
          ELSE
        
         IF v_inventoryId IS NOT NULL THEN

            IF EXISTS (
                SELECT nsi.inventoryId, COUNT(*) AS record_count 
                FROM inventory i
                INNER JOIN store_inventory_product sip ON i.inventoryId = sip.inventoryId
                INNER JOIN non_serialized_item nsi ON i.inventoryId = nsi.inventoryId
                WHERE sip.variationProductId = v_variationProductId 
                  AND storeId = v_storeIdTmp
                GROUP BY nsi.inventoryId 
                HAVING COUNT(*) > 1
            ) THEN
                SET p_OutputMessage = 'You cannot remove this variation because this product already has inventory transactions';
                SET p_ResponseStatus = 'failed';
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = p_OutputMessage;
                rollback;	leave sp;
            END IF;
           
            DELETE nsi 
            FROM non_serialized_item nsi
            INNER JOIN inventory i ON nsi.inventoryId = i.inventoryId
            INNER JOIN store_inventory_product sip ON i.inventoryId = sip.inventoryId
            WHERE sip.inventoryId = v_inventoryId;

            update store_inventory_product set inventoryId=null WHERE inventoryId = v_inventoryId;

            DELETE FROM inventory where inventoryId = v_inventoryId;
           
          end if;
        	
  		END IF;
   
        DELETE FROM tblRemainingStoreIdList2 LIMIT 1;
        SET v_totalItems_tblStoreIdList = (SELECT COUNT(*) FROM tblRemainingStoreIdList2);

    END WHILE;
   

    DELETE FROM tblRemainingVariationProduct LIMIT 1;

    SET v_totalItems_tblVariationProduct = (SELECT COUNT(*) FROM tblRemainingVariationProduct);

END WHILE;
    		


       end if; 


 
     
    
         if p_productTypeId=3 then
         
       
             if(p_isUnique=1) then
				set p_OutputMessage='A combo product can not exists as a unique item.';
				set p_ResponseStatus='failed';
			 SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
				rollback;	leave sp;	
		
			  end if;
 

   update combo_product set sku=p_sku, barcode=p_Barcode,unitPrice=p_unitPrice,
    unitCost=p_unitCost,taxPerc=p_taxPerc where productId=p_tableID;


	DROP TEMPORARY TABLE IF EXISTS tblComboProductDetailAdd;
	CREATE TEMPORARY TABLE tblComboProductDetailAdd(productId_mat int,variationProductId_mat int,qty decimal(10,2));
	
	DROP TEMPORARY TABLE IF EXISTS tblComboProductDetailRemove;
	CREATE TEMPORARY TABLE tblComboProductDetailRemove(productId_mat int,variationProductId_mat int);
	
	DROP TEMPORARY TABLE IF EXISTS tblCurrentProductDetail;
	CREATE TEMPORARY TABLE tblCurrentProductDetail(productId_mat int,variationProductId_mat int,qty decimal(10,2));
	
	INSERT INTO tblCurrentProductDetail(productId_mat,variationProductId_mat,qty)
	SELECT distinct cpd.productId_mat,null,cpd.qty FROM combo_product_detail cpd 
	where productId_mat is not null and cpd.productId = p_tableID;
	
	 INSERT INTO tblCurrentProductDetail(productId_mat,variationProductId_mat,qty)
	SELECT distinct null,cpd.variationProductId_mat,cpd.qty FROM combo_product_detail cpd 
	where variationProductId_mat is not null and cpd.productId = p_tableID;


	
	 INSERT INTO tblComboProductDetailAdd(productId_mat,variationProductId_mat,qty)
	SELECT t.productId_mat,null,t.qty FROM tblComboProductDetail t
	where productId_mat is not null and NOT EXISTS (SELECT 1 FROM tblCurrentProductDetail c where  t.productId_mat = c.productId_mat);
	
	 INSERT INTO tblComboProductDetailAdd(productId_mat,variationProductId_mat,qty)
	SELECT null,t.variationProductId_mat,t.qty FROM tblComboProductDetail t
	where variationProductId_mat is not null and  NOT EXISTS (SELECT 1 FROM tblCurrentProductDetail c WHERE t.variationProductId_mat = c.variationProductId_mat);
	
	
	INSERT INTO tblComboProductDetailRemove(productId_mat, variationProductId_mat)
	SELECT c.productId_mat, null 
	FROM tblCurrentProductDetail c
	WHERE c.productId_mat IS NOT NULL
	AND NOT EXISTS (
	    SELECT 1 
	    FROM tblComboProductDetail t
	    WHERE t.productId_mat = c.productId_mat
	    AND t.productId_mat IS NOT NULL
	);
	
	
	INSERT INTO tblComboProductDetailRemove(productId_mat, variationProductId_mat)
	SELECT null, c.variationProductId_mat 
	FROM tblCurrentProductDetail c
	WHERE c.variationProductId_mat IS NOT NULL
	AND NOT EXISTS (
	    SELECT 1 
	    FROM tblComboProductDetail t 
	    WHERE t.variationProductId_mat = c.variationProductId_mat
	    AND t.variationProductId_mat IS NOT NULL
	);
	



	DROP TEMPORARY TABLE IF EXISTS tblRemainingComboProductDetail;
	CREATE TEMPORARY TABLE tblRemainingComboProductDetail as SELECT * from tblComboProductDetail;

                
	delete from tblRemainingComboProductDetail where productId_mat in (select productId_mat from tblComboProductDetailAdd);
	delete from tblRemainingComboProductDetail where variationProductId_mat in (select variationProductId_mat from tblComboProductDetailAdd);

	delete from tblRemainingComboProductDetail where productId_mat in (select productId_mat from tblComboProductDetailRemove);
   	delete from tblRemainingComboProductDetail where variationProductId_mat in (select variationProductId_mat from tblComboProductDetailRemove);

   
 
   

 





 

    
 	  set v_totalItems_tblComboProductDetail=(select count(*) from tblComboProductDetailRemove);
  
		   while (0< v_totalItems_tblComboProductDetail) do
		   
		set v_productId_mat=(select productId_mat from tblComboProductDetailRemove  limit 1);
		set v_variationProductId_mat=(select variationProductId_mat from tblComboProductDetailRemove  limit 1);		
		
		set v_productTypeId_mat=(select productTypeId from product where productId=v_productId_mat);
		
	 	delete from combo_product_detail where productId_mat=v_productId_mat;
		 delete from combo_product_detail where variationProductId_mat=v_variationProductId_mat;
		

		delete  from tblComboProductDetailRemove limit 1;
		set v_totalItems_tblComboProductDetail=(select count(*) from tblComboProductDetailRemove);
		end while;
	
	
	 	  set v_totalItems_tblComboProductDetail=(select count(*) from tblComboProductDetailAdd);
  
		   while (0< v_totalItems_tblComboProductDetail) do
		set v_qty=(select qty from tblComboProductDetailAdd  limit 1);
		set v_productId_mat=(select productId_mat from tblComboProductDetailAdd  limit 1);
		set v_variationProductId_mat=(select variationProductId_mat from tblComboProductDetailAdd  limit 1);		
		
		set v_productTypeId_mat=(select productTypeId from product where productId=v_productId_mat);
		
		if v_productTypeId_mat=3  then
				set p_ResponseStatus='failed';
				set p_OutputMessage=concat('combo product can not be creaed by using another combo product.');
				 SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
		        
				rollback;	leave sp;
			end if;
		



			if(select count(*) from tblComboProductDetail where productId_mat=v_productId_mat or  variationProductId_mat=v_variationProductId_mat)>1 then 
				set p_ResponseStatus='failed';
				set p_OutputMessage=concat('duplicated products are not allowed in combo products');
					 SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = p_OutputMessage;
			rollback;	leave sp;
			 end if;

		
			 insert into combo_product_detail(productId,qty,productId_mat,variationProductId_mat) 
		 values(p_tableID,v_qty,v_productId_mat,v_variationProductId_mat);
			
			
		

		delete  from tblComboProductDetailAdd limit 1;
		set v_totalItems_tblComboProductDetail=(select count(*) from tblComboProductDetailAdd);
		end while;



	
	 	  set v_totalItems_tblComboProductDetail=(select count(*) from tblRemainingComboProductDetail);
  
		   while (0< v_totalItems_tblComboProductDetail) do
		set v_qty=(select qty from tblRemainingComboProductDetail  limit 1);
		set v_productId_mat=(select productId_mat from tblRemainingComboProductDetail  limit 1);
		set v_variationProductId_mat=(select variationProductId_mat from tblRemainingComboProductDetail  limit 1);		
		
		set v_productTypeId_mat=(select productTypeId from product where productId=v_productId_mat);
		
	
		if((select qty from combo_product_detail where productId=p_tableId and productId_mat=v_productId_mat)!=v_qty) then
				
		update combo_product_detail set qty=v_qty,ModifiedDate_UTC=UTC_TIMESTAMP(),
		ModifiedDate_ServerTime=CURRENT_TIMESTAMP() where productId_mat=v_productId_mat;	
		
		end if;
	
		
	if((select qty from combo_product_detail where productId=p_tableId and variationProductId_mat=v_variationProductId_mat)!=v_qty) then
				
			update combo_product_detail set qty=v_qty,ModifiedDate_UTC=UTC_TIMESTAMP(),
		ModifiedDate_ServerTime=CURRENT_TIMESTAMP() where variationProductId_mat=v_variationProductId_mat;	
		
		end if;
		

		delete  from tblRemainingComboProductDetail limit 1;
		set v_totalItems_tblComboProductDetail=(select count(*) from tblRemainingComboProductDetail);
		end while;



    

	 
	  
	  
	DROP TEMPORARY TABLE IF EXISTS currentStores;
	CREATE TEMPORARY TABLE currentStores(storeId INT,unitPrice decimal(10,2));
	
	 INSERT INTO currentStores(storeId)
	SELECT storeId FROM store_inventory_product sip WHERE sip.comboProductId = p_tableID;
	
	   
     
	       
	DROP TEMPORARY TABLE IF EXISTS storesToAdd;
	CREATE TEMPORARY TABLE storesToAdd(storeId INT,unitPrice decimal(10,2));
	
	DROP TEMPORARY TABLE IF EXISTS storesToRemove;
	CREATE TEMPORARY TABLE storesToRemove(storeId INT);
	
	
	
	
	INSERT INTO storesToAdd(storeId)
	SELECT t.storeId FROM tblStoreIdList t
	WHERE NOT EXISTS (SELECT 1 FROM currentStores c WHERE t.storeId = c.storeId);
	
	
	INSERT INTO storesToRemove(storeId)
	SELECT c.storeId FROM currentStores c
	WHERE NOT EXISTS (SELECT 1 FROM tblStoreIdList t WHERE t.storeId = c.storeId);
	
	
	
	DROP TEMPORARY TABLE IF EXISTS tblRemainingStoreIdList;
	CREATE TEMPORARY TABLE tblRemainingStoreIdList AS
	SELECT storeId FROM tblStoreIdList;
	
	delete from tblRemainingStoreIdList where storeId in (select storeId from storesToAdd);
	delete from tblRemainingStoreIdList where storeId in (select storeId from storesToRemove);




   set v_totalItems_tblStoreIdList=(select count(*) from storesToRemove);

  	  while (0< v_totalItems_tblStoreIdList) do
		
			  	set v_storeIdTmp=(select storeId from storesToRemove  limit 1);
				set v_inventoryId=null;
			
			   delete from store_inventory_product where storeId=v_storeIdTmp and comboProductId=p_tableID;     
			   
			   delete  from storesToRemove limit 1;
					set v_totalItems_tblStoreIdList=(select count(*) from storesToRemove);
			
			end while;
		
		
		
   set v_totalItems_tblStoreIdList=(select count(*) from storesToAdd);

  	  while (0< v_totalItems_tblStoreIdList) do
	
			  	set v_storeIdTmp=(select storeId from storesToAdd  limit 1); 
				set v_inventoryId=null;
	
			  IF p_isStockTracked THEN
            INSERT INTO inventory (reorderLevel) VALUES (p_ReorderLevel);
            SET v_inventoryId = LAST_INSERT_ID();
        END IF;

       
    
			        insert into store_inventory_product(storeId,inventoryId,comboProductId) 
					values(v_storeIdTmp,v_inventoryId,p_tableID);
			

			   delete  from storesToAdd limit 1;
					set v_totalItems_tblStoreIdList=(select count(*) from storesToAdd);
			
			end while;
       
	
		
		   end if;
		  
		
		
         
		SET p_ResponseStatus = 'success';
        SET p_OutputMessage = 'Updated Successfully.';

    END IF;
    
   
      COMMIT;
     
    if(p_tableID is not null) then  SET p_productId=p_tableID; end if;
    
 
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `product_nonSerializedItemsSelect` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `product_nonSerializedItemsSelect`(
  IN p_ProductId INT,
   IN p_VariationProductId INT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN


if(p_VariationProductId is null and p_ProductId is not null) then
select nsi.batchNumber,nsi.prodDate,nsi.expDate,nsi.stockQty,nsi.unitPrice,nsi.costPrice 
from non_serialized_item nsi inner join inventory i on nsi.inventoryId=i.inventoryId 
inner join store_inventory_product sip on i.inventoryId=sip.inventoryId 
where sip.singleProductId=p_ProductId or sip.comboProductId=p_ProductId;
end if;

if(p_VariationProductId is not null and p_ProductId is null) then
select nsi.batchNumber,nsi.prodDate,nsi.expDate,nsi.stockQty,nsi.unitPrice,nsi.costPrice 
from non_serialized_item nsi inner join inventory i on nsi.inventoryId=i.inventoryId 
inner join store_inventory_product sip on i.inventoryId=sip.inventoryId 
where sip.variationProductId=p_VariationProductId;
end if;


SET p_ResponseStatus='success';
SET p_OutputMessage='loaded successfully';


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Product_Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Product_Select`(
    IN p_ProductId          INT,
    IN p_ProductNo          VARCHAR(100),
    IN p_ProductName        VARCHAR(500),
    IN p_ProductDescription VARCHAR(500),
    IN p_sku                VARCHAR(100),
    IN p_Barcode            VARCHAR(100),
    IN p_CategoryId         INT,
    IN p_BrandId            INT,
    IN p_StoreId            INT,
    IN p_ProductTypeIds     JSON,
    IN p_isProductItem      BIT,
    IN p_MeasurementUnitId  INT,
    IN p_allSearchableFields VARCHAR(100),
    IN p_SearchByKeyword    BIT,
    IN p_Skip               INT,
    IN p_Limit              INT,
    IN p_UserLogID          INT,
    IN p_UTC_Offset         VARCHAR(50),
    IN p_PageName           VARCHAR(50),
    OUT p_ResponseStatus    VARCHAR(50),
    OUT p_OutputMessage     VARCHAR(1000),
    OUT p_TotalRows         INT
)
sp: BEGIN
    DECLARE _query          VARCHAR(10000);
    DECLARE _PagingQuery    VARCHAR(1000);
    DECLARE _filter         VARCHAR(2000);
    DECLARE _jsonProductTypeId INT;
    DECLARE _productTypeCondition VARCHAR(1000);
    DECLARE _index          INT DEFAULT 0;
    DECLARE _jsonLength     INT;
    DECLARE _normalizedProductName        VARCHAR(500);
    DECLARE _normalizedProductDescription VARCHAR(500);
    DECLARE _keyword        VARCHAR(100);
    DECLARE _pos            INT DEFAULT 1;
    DECLARE _len            INT;
    DECLARE _filter_words   VARCHAR(2000);

    
    IF p_StoreId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage  = 'p_StoreId is required.';
        LEAVE sp;
    END IF;

    IF p_Skip IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage  = 'The p_Skip parameter should not be null.';
        LEAVE sp;
    END IF;

    IF p_Limit IS NULL OR p_Limit > 500 THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage  = 'The p_Limit parameter should not be null and ≤ 500.';
        LEAVE sp;
    END IF;

    SET _PagingQuery = CONCAT(' LIMIT ', p_Skip, ', ', p_Limit);

    
    SET _filter = CONCAT(' WHERE sip.StoreId = ', p_StoreId);

    
    SET _normalizedProductName = IFNULL(LOWER(TRIM(REGEXP_REPLACE(p_ProductName, '\s+', ' '))), NULL);
    SET _normalizedProductDescription = IFNULL(LOWER(TRIM(REGEXP_REPLACE(p_ProductDescription, '\s+', ' '))), NULL);

    
    
    
    IF p_SearchByKeyword = 0 THEN

        IF p_ProductId IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.ProductID = ', p_ProductId);
        END IF;

        
        IF _normalizedProductName IS NOT NULL AND _normalizedProductName != '' THEN
            SET _filter_words = '';
            SET _pos = 1;
            SET _len = LENGTH(_normalizedProductName);

            WHILE _pos <= _len DO
                SET _keyword = SUBSTRING_INDEX(SUBSTRING(_normalizedProductName, _pos), ' ', 1);
                IF _keyword != '' THEN
                    IF _filter_words = '' THEN
                        SET _filter_words = CONCAT('LOWER(p.ProductName) LIKE ''%', _keyword, '%''');
                    ELSE
                        SET _filter_words = CONCAT(_filter_words, ' AND LOWER(p.ProductName) LIKE ''%', _keyword, '%''');
                    END IF;
                END IF;
                SET _pos = _pos + LENGTH(_keyword) + 1;
            END WHILE;

            IF _filter_words != '' THEN
                SET _filter = CONCAT(_filter, ' AND (', _filter_words, ')');
            END IF;
        END IF;

        
        IF _normalizedProductDescription IS NOT NULL AND _normalizedProductDescription != '' THEN
            SET _filter_words = '';
            SET _pos = 1;
            SET _len = LENGTH(_normalizedProductDescription);

            WHILE _pos <= _len DO
                SET _keyword = SUBSTRING_INDEX(SUBSTRING(_normalizedProductDescription, _pos), ' ', 1);
                IF _keyword != '' THEN
                    IF _filter_words = '' THEN
                        SET _filter_words = CONCAT(
                            'LOWER(CONCAT(p.productName, " ", ',
                            'IFNULL((SELECT GROUP_CONCAT(DISTINCT vpd.variationValue SEPARATOR " ") ',
                            'FROM variation_product_detail vpd ',
                            'WHERE vpd.variationProductId = vp.variationProductId), ""))) ',
                            'LIKE ''%', _keyword, '%'''
                        );
                    ELSE
                        SET _filter_words = CONCAT(_filter_words,
                            ' AND LOWER(CONCAT(p.productName, " ", ',
                            'IFNULL((SELECT GROUP_CONCAT(DISTINCT vpd.variationValue SEPARATOR " ") ',
                            'FROM variation_product_detail vpd ',
                            'WHERE vpd.variationProductId = vp.variationProductId), ""))) ',
                            'LIKE ''%', _keyword, '%'''
                        );
                    END IF;
                END IF;
                SET _pos = _pos + LENGTH(_keyword) + 1;
            END WHILE;

            IF _filter_words != '' THEN
                SET _filter = CONCAT(_filter, ' AND (', _filter_words, ')');
            END IF;
        END IF;

        IF p_ProductNo IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND LOWER(p.ProductNo) LIKE ''%', LOWER(TRIM(p_ProductNo)), '%''');
        END IF;

        IF p_sku IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND vp.SKU = ''', p_sku, '''');
        END IF;

        IF p_Barcode IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND vp.barcode LIKE ''%', p_Barcode, '%''');
        END IF;

        IF p_BrandId IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.BrandId = ', p_BrandId);
        END IF;

        
        SET _jsonLength = JSON_LENGTH(p_ProductTypeIds);
        SET _productTypeCondition = '';
        SET _index = 0;

        WHILE _index < _jsonLength DO
            SET _jsonProductTypeId = JSON_UNQUOTE(JSON_EXTRACT(p_ProductTypeIds, CONCAT('$[', _index, ']')));
            IF _index = 0 THEN
                SET _productTypeCondition = CONCAT('p.ProductTypeId = ', _jsonProductTypeId);
            ELSE
                SET _productTypeCondition = CONCAT(_productTypeCondition, ' OR p.ProductTypeId = ', _jsonProductTypeId);
            END IF;
            SET _index = _index + 1;
        END WHILE;

        IF _productTypeCondition != '' THEN
            SET _filter = CONCAT(_filter, ' AND (', _productTypeCondition, ')');
        END IF;

        IF p_isProductItem = 1 THEN
            SET _filter = CONCAT(_filter, ' AND p.isProductItem = 1');
        END IF;

        IF p_CategoryId IS NOT NULL AND p_CategoryId <> -1 THEN
            SET _filter = CONCAT(_filter, ' AND mpc.CategoryId = ', p_CategoryId);
        END IF;

        IF p_MeasurementUnitId IS NOT NULL AND p_MeasurementUnitId <> -1 THEN
            SET _filter = CONCAT(_filter, ' AND p.MeasurementUnitId = ', p_MeasurementUnitId);
        END IF;

    
    
    
    ELSE

        IF p_ProductId IS NOT NULL THEN
            SET p_ResponseStatus = 'invalid';
            SET p_OutputMessage  = 'ProductID is not supported for keyword search.';
            LEAVE sp;
        END IF;

        IF p_CategoryId IS NOT NULL THEN
            SET p_ResponseStatus = 'invalid';
            SET p_OutputMessage  = 'CategoryId is not supported for keyword search.';
            LEAVE sp;
        END IF;

        
        
        IF _normalizedProductName IS NOT NULL AND _normalizedProductName != '' THEN
            SET _filter_words = '';
            SET _pos = 1;
            SET _len = LENGTH(_normalizedProductName);

            WHILE _pos <= _len DO
                SET _keyword = SUBSTRING_INDEX(SUBSTRING(_normalizedProductName, _pos), ' ', 1);
                IF _keyword != '' THEN
                    SET _filter_words = IF(_filter_words = '',
                        CONCAT('LOWER(p.ProductName) LIKE ''%', _keyword, '%'''),
                        CONCAT(_filter_words, ' AND LOWER(p.ProductName) LIKE ''%', _keyword, '%''')
                    );
                END IF;
                SET _pos = _pos + LENGTH(_keyword) + 1;
            END WHILE;

            IF _filter_words != '' THEN
                SET _filter = CONCAT(_filter, ' AND (', _filter_words, ')');
            END IF;
        END IF;

        
        IF _normalizedProductDescription IS NOT NULL AND _normalizedProductDescription != '' THEN
            SET _filter_words = '';
            SET _pos = 1;
            SET _len = LENGTH(_normalizedProductDescription);

            WHILE _pos <= _len DO
                SET _keyword = SUBSTRING_INDEX(SUBSTRING(_normalizedProductDescription, _pos), ' ', 1);
                IF _keyword != '' THEN
                    SET _filter_words = IF(_filter_words = '',
                        CONCAT('LOWER(CONCAT(p.productName, " ", IFNULL((SELECT GROUP_CONCAT(DISTINCT vpd.variationValue SEPARATOR " ") FROM variation_product_detail vpd WHERE vpd.variationProductId = vp.variationProductId), ""))) LIKE ''%', _keyword, '%'''),
                        CONCAT(_filter_words, ' AND LOWER(CONCAT(p.productName, " ", IFNULL((SELECT GROUP_CONCAT(DISTINCT vpd.variationValue SEPARATOR " ") FROM variation_product_detail vpd WHERE vpd.variationProductId = vp.variationProductId), ""))) LIKE ''%', _keyword, '%''')
                    );
                END IF;
                SET _pos = _pos + LENGTH(_keyword) + 1;
            END WHILE;

            IF _filter_words != '' THEN
                SET _filter = CONCAT(_filter, ' AND (', _filter_words, ')');
            END IF;
        END IF;

        IF p_ProductNo IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND LOWER(p.ProductNo) LIKE ''%', LOWER(TRIM(p_ProductNo)), '%''');
        END IF;

        IF p_Barcode IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND LOWER(vp.barcode) LIKE ''%', LOWER(p_Barcode), '%''');
        END IF;

        IF p_allSearchableFields IS NOT NULL AND p_allSearchableFields != '' THEN
            SET _filter = CONCAT(_filter, ' AND (',
                'LOWER(p.ProductName) LIKE ''%', LOWER(TRIM(p_allSearchableFields)), '%'' OR ',
                'LOWER(p.ProductNo) LIKE ''%', LOWER(TRIM(p_allSearchableFields)), '%'' OR ',
                'vp.SKU = ''', p_allSearchableFields, '''',
            ')');
        END IF;

    END IF;

    
    
    
    SET _query = CONCAT(
        'SELECT ',
            '(SELECT JSON_ARRAYAGG(DISTINCT vpd.variationValue) ',
            ' FROM variation_product_detail vpd ',
            ' WHERE vpd.variationProductId = vp.variationProductId) AS variationValue, ',
            'p.productId, sip.variationProductId, p.productName, p.brandId, br.brandName, ',
            'CONCAT(p.productName, " ", ',
            'IFNULL((SELECT GROUP_CONCAT(DISTINCT vpd.variationValue SEPARATOR ", ") ',
            'FROM variation_product_detail vpd ',
            'WHERE vpd.variationProductId = vp.variationProductId), "")) AS productDescription, ',
            'pt.productTypeName, p.measurementUnitId, mu.measurementUnitName, p.imageUrl, ',
            '(SELECT JSON_ARRAYAGG(DISTINCT JSON_OBJECT("id", c.categoryId, "displayName", c.categoryName)) ',
            ' FROM product_category pc INNER JOIN Category c ON pc.CategoryId = c.CategoryId ',
            ' WHERE pc.ProductId = p.ProductId) AS categories, ',
            'p.productNo, vp.SKU AS sku, vp.barcode, ',
            'SUM(nsi.stockQty) AS stockQty, ',
            'IFNULL(SUM(nsi.stockQty), 0) AS stockQtyDisplay, ',
            'CASE WHEN i.inventoryId IS NULL THEN FALSE ELSE TRUE END AS isStockTracked, ',
            'i.reorderLevel, sip.storeId, ',
            'CAST(p.isNotForSelling   AS UNSIGNED) AS isNotForSelling, ',
            'CAST(p.isUnique          AS UNSIGNED) AS isUnique, ',
            'CAST(p.isProductItem     AS UNSIGNED) AS isProductItem, ',
            'vp.unitPrice, vp.unitCost, vp.taxPerc, ',
            'c.contactName, c.contactCode, p.productTypeId, ',
            's.storeId, s.storeName, s.storeCode, ',
            'CAST(p.isExpiringProduct AS UNSIGNED) AS isExpiringProduct, ',
            'sip.allProductId, sip.inventoryId, ',
            'CAST(p.isAssemblyProduct AS UNSIGNED) AS isAssemblyProduct ',
        'FROM store_inventory_product sip ',
        'INNER JOIN variation_product  vp  ON sip.variationProductId = vp.variationProductId ',
        'INNER JOIN product            p   ON vp.productId           = p.ProductId ',
        'INNER JOIN product_type       pt  ON p.productTypeId        = pt.productTypeId ',
        'INNER JOIN measurement_unit   mu  ON p.MeasurementUnitId    = mu.MeasurementUnitId ',
        'INNER JOIN brand              br  ON p.BrandId              = br.BrandId ',
        'INNER JOIN store              s   ON sip.storeId            = s.storeId ',
        'INNER JOIN product_category   mpc ON p.productId            = mpc.productId ',
        'LEFT  JOIN inventory          i   ON sip.inventoryId        = i.inventoryId ',
        'LEFT  JOIN non_serialized_item nsi ON i.inventoryId         = nsi.inventoryId ',
        'LEFT  JOIN contact            c   ON nsi.supplierId         = c.contactId ',
        _filter,
        ' GROUP BY p.ProductId, sip.variationProductId, sip.storeId, sip.allProductId, sip.inventoryId ',
        ' ORDER BY p.productName ASC, s.storeName ASC ',
        _PagingQuery
    );

    PREPARE stmt FROM _query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    
    SET @queryTotal = CONCAT(
        'SELECT COUNT(DISTINCT p.ProductId, sip.variationProductId, sip.storeId) INTO @totalRows ',
        'FROM store_inventory_product sip ',
        'INNER JOIN variation_product  vp  ON sip.variationProductId = vp.variationProductId ',
        'INNER JOIN product            p   ON vp.productId           = p.ProductId ',
        'INNER JOIN product_type       pt  ON p.productTypeId        = pt.productTypeId ',
        'INNER JOIN measurement_unit   mu  ON p.MeasurementUnitId    = mu.MeasurementUnitId ',
        'INNER JOIN brand              br  ON p.BrandId              = br.BrandId ',
        'INNER JOIN store              s   ON sip.storeId            = s.storeId ',
        'INNER JOIN product_category   mpc ON p.productId            = mpc.productId ',
        'LEFT  JOIN inventory          i   ON sip.inventoryId        = i.inventoryId ',
        'LEFT  JOIN non_serialized_item nsi ON i.inventoryId         = nsi.inventoryId ',
        'LEFT  JOIN contact            c   ON nsi.supplierId         = c.contactId ',
        _filter
    );

    PREPARE stmt FROM @queryTotal;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    SET p_TotalRows = @totalRows;

    SET p_ResponseStatus = 'success';
    SET p_OutputMessage  = 'loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Product_Select_all_variations` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Product_Select_all_variations`(
  IN p_ProductId INT,
	IN p_ProductNo VARCHAR(100),
    IN p_ProductName VARCHAR(500),
    IN p_sku VARCHAR(100),
    IN p_Barcode VARCHAR(100),
    IN p_CategoryId INT,
      IN p_BrandId INT,
           IN p_StoreId INT,
       IN p_ProductTypeIds JSON, 
	IN p_MeasurementUnitId INT,
	in p_allSearchableFields  VARCHAR(100),
   
	IN p_SearchByKeyword BIT,
	IN p_Skip INT,
    IN p_Limit INT,
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),

    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
	OUT p_TotalRows INT
)
sp: BEGIN


DECLARE _PagingQuery VARCHAR(1000);
DECLARE _filter varchar(1000);

DECLARE _jsonProductTypeId INT;
  DECLARE _productTypeCondition VARCHAR(1000);

DECLARE _index INT DEFAULT 0;
DECLARE _jsonLength INT;

       
SET _filter = concat(' WHERE 1=1 AND sip.StoreId=',p_StoreId);

set _PagingQuery='';
IF p_Skip IS NOT NULL AND p_Limit IS NOT NULL THEN
    SET _PagingQuery = CONCAT(' LIMIT ', p_Skip, ', ', p_Limit);
    
ELSEIF p_Skip IS  null  THEN
    SET p_ResponseStatus = 'invalid';
    SET p_OutputMessage = 'The _Skip parameter should not be null.';
	leave sp;
    
ELSEIF p_Limit IS null or p_Limit > 500 THEN
    SET p_ResponseStatus = 'invalid';
    SET p_OutputMessage = 'The _Limit parameter should not be null and less than or equal to 500.';
	leave sp;
END IF;



IF p_SearchByKeyword = 0 THEN
        IF p_ProductId IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.ProductID = ', p_ProductId);
        END IF;
        
        IF p_ProductName IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.ProductName LIKE ''%', p_ProductName, '%''');
        END IF;
        
        IF p_ProductNo IS NOT NULL THEN
               SET _filter = CONCAT(_filter, ' AND p.ProductNo LIKE ''%', p_ProductNo, '%''');
        END IF;
        
       
        IF p_sku IS NOT NULL THEN
               SET _filter = CONCAT(_filter, ' AND (vp.SKU=''', p_sku, ''' or sp.SKU=''', p_sku, ''' or cp.SKU=''', p_sku,''')');
        END IF;
       
      IF p_Barcode IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND (vp.barcode LIKE ''%', p_Barcode, '%'') or (sp.barcode LIKE ''%', p_Barcode, '%'') or (cp.barcode LIKE ''%', p_Barcode, '%'') ');
        END IF;
       
         
        
        IF p_BrandId IS NOT NULL THEN
               SET _filter = CONCAT(_filter, ' AND p.BrandId LIKE ''%', p_BrandId, '%''');
        END IF;   
       

SET _jsonLength = JSON_LENGTH(p_ProductTypeIds);

WHILE _index < _jsonLength DO
    SET _jsonProductTypeId = JSON_UNQUOTE(JSON_EXTRACT(p_ProductTypeIds, CONCAT('$[', _index, ']')));
    
    IF _index = 0 THEN
        SET _productTypeCondition = CONCAT('p.ProductTypeId = ', _jsonProductTypeId);
    ELSE
        SET _productTypeCondition = CONCAT(_productTypeCondition, ' OR p.ProductTypeId = ', _jsonProductTypeId);
    END IF;
    
    SET _index = _index + 1;
END WHILE;

IF _productTypeCondition != '' THEN
    SET _filter = CONCAT(_filter, ' AND (', _productTypeCondition, ')');
END IF;

       
        IF p_CategoryId IS NOT NULL THEN
			IF p_CategoryId=-1 THEN
              SET _filter = CONCAT(_filter, ' ');
            else
            SET _filter = CONCAT(_filter, ' AND pc.CategoryId = ', p_CategoryId);
            end if;
        END IF;
        
        
		IF p_MeasurementUnitId IS NOT NULL THEN
			IF p_MeasurementUnitId=-1 THEN
              SET _filter = CONCAT(_filter, ' ');
            else
            SET _filter = CONCAT(_filter, ' AND p.MeasurementUnitId = ', p_MeasurementUnitId);
            end if;
        END IF;
        
        
        
    ELSE
        IF p_ProductId IS NOT NULL THEN
            SET p_ResponseStatus = 'invalid';
            SET p_OutputMessage = 'ProductID is not supported for keyword search.';
			leave sp;
        END IF;
       
       
        IF p_ProductName IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.ProductName LIKE ''%', p_ProductName, '%''');
        END IF;
        
        IF p_ProductNo IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.ProductNo LIKE ''%', p_ProductNo, '%''');
        END IF;
        
        IF p_Barcode IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND (vp.barcode LIKE ''%', p_Barcode, '%'') or (sp.barcode LIKE ''%', p_Barcode, '%'') or (cp.barcode LIKE ''%', p_Barcode, '%'') ');
        END IF;
       
   
          if p_allSearchableFields is not null then
            SET _filter = CONCAT(_filter, ' AND p.ProductName LIKE ''%', p_allSearchableFields, '%'' or p.ProductNo LIKE ''%', p_allSearchableFields, '%'' or  (vp.SKU=''', p_allSearchableFields, ''' or sp.SKU=''', p_allSearchableFields, ''' or cp.SKU=''', p_allSearchableFields,''') ');
          END IF;
       
       
        IF p_CategoryId IS NOT NULL THEN
            SET p_ResponseStatus = 'invalid';
            SET p_OutputMessage = 'CategoryId is not supported for keyword search.';
			leave sp;
        END IF;
    END IF;



SET @_query = CONCAT(
    'SELECT ',
        ' (SELECT JSON_ARRAYAGG(DISTINCT vpd.variationValue) FROM variation_product_detail vpd WHERE vpd.variationProductId = vp.variationProductId) AS variationValue,',
        ' p.productId,sip.variationProductId, p.brandId, br.brandName,',
        ' pt.productTypeName, p.measurementUnitId, mu.measurementUnitName,imageUrl, CAST(p.isExpiringProduct AS UNSIGNED) AS isExpiringProduct,',
        ' (SELECT JSON_ARRAYAGG(DISTINCT JSON_OBJECT("id", c.categoryId, "displayName", c.categoryName))',
        ' FROM product_category pc INNER JOIN Category c ON pc.CategoryId = c.CategoryId WHERE pc.ProductId = p.ProductId) AS categories,',
        ' p.productNo, COALESCE(vp.SKU, sp.SKU, cp.SKU) AS sku, COALESCE(vp.barcode, sp.barcode, cp.barcode) AS barcode,',
        ' SUM(nsi.stockQty) AS stockQty,',
        ' CASE WHEN i.inventoryId IS NULL THEN ''-'' ELSE IFNULL(SUM(nsi.stockQty), 0) END AS stockQty,',
        ' CASE WHEN i.inventoryId IS NULL THEN false ELSE true END AS isStockTracked,',
        ' i.reorderLevel, sip.storeId, CAST(p.isNotForSelling AS UNSIGNED) AS isNotForSelling,sip.allProductId,',
        ' CAST(p.isUnique AS UNSIGNED) AS isUnique,CAST(p.isProductItem AS UNSIGNED) as isProductItem,',
       ' COALESCE(vp.unitPrice, sp.unitPrice, cp.unitPrice) AS unitPrice,'
        ' c.contactName, c.contactCode, p.productTypeId, s.storeId, s.storeName, s.storeCode ,',
 ' CONCAT( p.productName,'' | '', IFNULL(  concat( '' - '', GROUP_CONCAT(vpd.variationValue ORDER BY vpd.variationProductId SEPARATOR ''|'')), '''' ) ) AS productName ',
        ' FROM store_inventory_product sip',
        ' LEFT JOIN variation_product vp ON sip.variationProductId = vp.variationProductId',
        ' LEFT JOIN single_product sp ON sip.singleProductId = sp.productId',
        ' LEFT JOIN combo_product cp ON sip.comboProductId = cp.productId',
        ' INNER JOIN product p ON p.ProductId = COALESCE(vp.productId, sp.productId, cp.productId)',
        ' INNER JOIN product_type pt ON p.productTypeId = pt.productTypeId',
        ' INNER JOIN measurement_unit mu ON p.MeasurementUnitId = mu.MeasurementUnitId',
        ' INNER JOIN brand br ON p.BrandId = br.BrandId',
        ' LEFT JOIN inventory i ON sip.inventoryId = i.inventoryId',
        ' LEFT JOIN non_serialized_item nsi ON i.inventoryId = nsi.inventoryId',
        ' LEFT JOIN contact c ON nsi.supplierId = c.contactId',
        ' INNER JOIN store s ON sip.storeId = s.storeId',
       ' LEFT OUTER JOIN  variation_product_detail vpd  ON vp.variationProductId = vpd.variationProductId',
        _filter,
        ' GROUP BY p.ProductId, p.productNo, p.ProductName, pt.productTypeName, p.productTypeId, p.MeasurementUnitId, s.storeId,vpd.variationProductId,p.isExpiringProduct,sip.allProductId ',
        ' ORDER BY p.productName ASC, s.storeName ASC',
        _PagingQuery
    );




 PREPARE stmt FROM @_query;
 EXECUTE stmt;
DEALLOCATE PREPARE stmt;

  

SET @queryTotal = CONCAT(
    'SELECT ',
        'COUNT(DISTINCT p.ProductId, s.storeId) INTO @totalRows ',
        ' FROM store_inventory_product sip',
        ' LEFT JOIN variation_product vp ON sip.variationProductId = vp.variationProductId',
        ' LEFT JOIN single_product sp ON sip.singleProductId = sp.productId',
        ' LEFT JOIN combo_product cp ON sip.comboProductId = cp.productId',
        ' INNER JOIN product p ON p.ProductId = COALESCE(vp.productId, sp.productId, cp.productId)',
        ' INNER JOIN product_type pt ON p.productTypeId = pt.productTypeId',
        ' INNER JOIN measurement_unit mu ON p.MeasurementUnitId = mu.MeasurementUnitId',
        ' INNER JOIN brand br ON p.BrandId = br.BrandId',
        ' LEFT JOIN inventory i ON sip.inventoryId = i.inventoryId',
        ' LEFT JOIN non_serialized_item nsi ON i.inventoryId = nsi.inventoryId',
        ' LEFT JOIN contact c ON nsi.supplierId = c.contactId',
        ' INNER JOIN store s ON sip.storeId = s.storeId',
        _filter  
);


PREPARE stmt FROM @queryTotal;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;



    
PREPARE stmt FROM @queryTotal;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET p_TotalRows = @totalRows;


SET p_ResponseStatus='success';
SET p_OutputMessage='loaded successfully';


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Product_Select_extraDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Product_Select_extraDetails`(
  IN p_ProductId INT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
	OUT p_ProductTypeId INT
)
sp: BEGIN


	declare v_productTypeId int;

set v_productTypeId=(select productTypeId from product where productId=p_productId);

   if v_productTypeId=1 then
   select sku,barcode from single_product sp where productId=p_ProductId;
  
  
      
SELECT sip.storeId,s.storeCode, s.storeName
FROM single_product sp inner join store_inventory_product sip on sp.productId =sip.singleProductId
inner join store as s on sip.storeId=s.storeId
WHERE sp.productId = p_ProductId;

    
  end if;
 
  if v_productTypeId=2 then
  
SELECT 
    vp.variationProductId,
    vp.sku,
    vp.barcode,
    vp.unitCost,
    vp.unitPrice,
    vp.taxPerc,
   
    (
        SELECT JSON_ARRAYAGG(
            DISTINCT JSON_OBJECT(
                'variationTypeId', vpd.variationTypeId,
                'variationTypeName', pvt2.variationTypeName,
                'variationValue', vpd.variationValue
            )
        )
        FROM variation_product_detail vpd
        INNER JOIN product_variation_type pvt2 ON vpd.variationTypeId = pvt2.variationTypeId
        WHERE vpd.variationProductId = vp.variationProductId
    ) AS variationDetails,
  (   SELECT JSON_ARRAYAGG(
        JSON_OBJECT(
            'allProductId', sub.allProductId_mat,
            'qty', sub.qty,
            'sku', sub.sku,
            'productDescription', sub.productDescription,
            'measurementUnitName', sub.measurementUnitName
        )
    )
    FROM (
        
        SELECT 
            spd.allProductId_mat,
            spd.qty,
            sp.sku,
            p_sub.productName AS productDescription,
            mu_sub.measurementUnitName,
            spd.allProductId 
        FROM sub_product_detail spd
        inner JOIN all_product ap_sub ON spd.allProductId_mat = ap_sub.allProductId
        inner JOIN single_product sp ON ap_sub.singleProductId = sp.productId
        inner JOIN product p_sub ON sp.productId = p_sub.productId
        inner JOIN measurement_unit mu_sub ON p_sub.measurementUnitId = mu_sub.measurementUnitId

        UNION ALL

        
        SELECT 
            spd.allProductId_mat,
            spd.qty,
            vp_sub.sku,
            CONCAT(pvari_sub.productName, ' ', GROUP_CONCAT(vd_sub.variationValue SEPARATOR ', ')) AS productDescription,
            mu_sub.measurementUnitName,
             spd.allProductId 
        FROM sub_product_detail spd
        inner JOIN all_product ap_sub ON spd.allProductId_mat = ap_sub.allProductId
        inner JOIN variation_product vp_sub ON ap_sub.variationProductId = vp_sub.variationProductId
        inner JOIN variation_product_detail vd_sub ON vp_sub.variationProductId = vd_sub.variationProductId
        inner JOIN product pvari_sub ON vp_sub.productId = pvari_sub.productId
        inner JOIN measurement_unit mu_sub ON pvari_sub.measurementUnitId = mu_sub.measurementUnitId
        GROUP BY spd.allProductId_mat, spd.qty, vp_sub.sku, pvari_sub.productName, mu_sub.measurementUnitName
    ) sub
    WHERE sub.allProductId = ap.allProductId 
) AS subProductsList
FROM variation_product vp
INNER JOIN all_product ap ON vp.variationProductId = ap.variationProductId 
WHERE vp.productId = p_ProductId;


      
SELECT distinct sip.storeId,s.storeCode, s.storeName
FROM variation_product sp inner join store_inventory_product sip on sp.variationProductId =sip.variationProductId
inner join store as s on sip.storeId=s.storeId
WHERE sp.productId = p_ProductId;

  end if;
 
 
 if v_productTypeId=3 then
  
  
 
SELECT 
    p.productId AS productId,
    p.productId AS productId_mat,
    p.productTypeId,
    pt.productTypeName,
    p.productName,
    sp.sku,
    sp.barcode,
    cpd.qty,
    mu.measurementUnitName
FROM 
    combo_product_detail cpd
    INNER JOIN product p ON cpd.productId_mat = p.ProductId
    INNER JOIN single_product sp ON p.ProductId = sp.productId
    INNER JOIN measurement_unit mu ON p.measurementUnitId = mu.measurementUnitId
    INNER JOIN product_type pt ON p.productTypeId = pt.productTypeId
WHERE 
    cpd.productId = p_ProductId

UNION

SELECT 
    p.productId AS productId,
    vp.variationProductId AS productId_mat,
    p.productTypeId,
    pt.productTypeName,
    p.productName,
    vp.sku,
    vp.barcode,
    cpd.qty,
    mu.measurementUnitName
FROM 
    combo_product_detail cpd
    INNER JOIN variation_product vp ON cpd.variationProductId_mat = vp.variationProductId
    INNER JOIN product p ON vp.productId = p.ProductId
    INNER JOIN measurement_unit mu ON p.measurementUnitId = mu.measurementUnitId
    INNER JOIN product_type pt ON p.productTypeId = pt.productTypeId
WHERE 
    cpd.productId = p_ProductId;

   
   
   
    
SELECT sip.storeId,s.storeCode, s.storeName
FROM combo_product cp inner join store_inventory_product sip on cp.productId =sip.comboProductId
inner join store as s on sip.storeId=s.storeId
WHERE cp.productId = p_ProductId;
   
  end if;
 
 
 
SET p_ProductTypeId = v_productTypeId;


SET p_ResponseStatus='success';
SET p_OutputMessage='loaded successfully';


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Product_Select_old` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Product_Select_old`(
    IN p_ProductId INT,
    IN p_ProductNo VARCHAR(100),
    IN p_ProductName VARCHAR(500),
        IN p_ProductDescription VARCHAR(500),
    IN p_sku VARCHAR(100),
    IN p_Barcode VARCHAR(100),
    IN p_CategoryId INT,
    IN p_BrandId INT,
    IN p_StoreId INT,
    IN p_ProductTypeIds JSON,
    in p_isProductItem bit,
    IN p_MeasurementUnitId INT,
    IN p_allSearchableFields VARCHAR(100),
    IN p_SearchByKeyword BIT,
    IN p_Skip INT,
    IN p_Limit INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
    OUT p_TotalRows INT
)
sp: BEGIN
    DECLARE _query VARCHAR(10000);
    DECLARE _PagingQuery VARCHAR(1000);
    DECLARE _filter VARCHAR(1000);
    DECLARE _jsonProductTypeId INT;
    DECLARE _productTypeCondition VARCHAR(1000);
    DECLARE _index INT DEFAULT 0;
    DECLARE _jsonLength INT;
    DECLARE _normalizedProductName VARCHAR(500);
    DECLARE _normalizedProductDescription VARCHAR(500);
    DECLARE _keyword VARCHAR(100);
    DECLARE _pos INT DEFAULT 1;
    DECLARE _len INT;
    DECLARE _filter_words VARCHAR(2000);


    SET _filter = CONCAT(' WHERE 1=1 AND sip.StoreId=', p_StoreId);

    SET _PagingQuery = '';
    IF p_Skip IS NOT NULL AND p_Limit IS NOT NULL THEN
        SET _PagingQuery = CONCAT(' LIMIT ', p_Skip, ', ', p_Limit);
    ELSEIF p_Skip IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The _Skip parameter should not be null.';
        LEAVE sp;
    ELSEIF p_Limit IS NULL OR p_Limit > 500 THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The _Limit parameter should not be null and less than or equal to 500.';
        LEAVE sp;
    END IF;

    IF p_StoreId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'p_StoreId is required.';
        LEAVE sp;
    END IF;

    
    IF p_ProductName IS NOT NULL THEN
        SET _normalizedProductName = LOWER(TRIM(REGEXP_REPLACE(p_ProductName, '\s+', ' ')));
    ELSE
        SET _normalizedProductName = NULL;
    END IF;

    
    IF p_ProductDescription IS NOT NULL THEN
        SET _normalizedProductDescription = LOWER(TRIM(REGEXP_REPLACE(p_ProductDescription, '\s+', ' ')));
    ELSE
        SET _normalizedProductDescription = NULL;
    END IF;

    IF p_SearchByKeyword = 0 THEN
        IF p_ProductId IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.ProductID = ', p_ProductId);
        END IF;

        IF _normalizedProductName IS NOT NULL AND _normalizedProductName != '' THEN
            
            SET _filter_words = '';
            SET _pos = 1;
            SET _len = LENGTH(_normalizedProductName);
            WHILE _pos <= _len DO
                SET _keyword = SUBSTRING_INDEX(SUBSTRING(_normalizedProductName, _pos), ' ', 1);
                IF _keyword != '' THEN
                    IF _filter_words = '' THEN
                        SET _filter_words = CONCAT('LOWER(p.ProductName) LIKE ''%', _keyword, '%''');
                    ELSE
                        SET _filter_words = CONCAT(_filter_words, ' AND LOWER(p.ProductName) LIKE ''%', _keyword, '%''');
                    END IF;
                END IF;
                SET _pos = _pos + LENGTH(_keyword) + 1;
            END WHILE;
            IF _filter_words != '' THEN
                SET _filter = CONCAT(_filter, ' AND (', _filter_words, ')');
            END IF;
        END IF;

        IF _normalizedProductDescription IS NOT NULL AND _normalizedProductDescription != '' THEN
            
            SET _filter_words = '';
            SET _pos = 1;
            SET _len = LENGTH(_normalizedProductDescription);
            WHILE _pos <= _len DO
                SET _keyword = SUBSTRING_INDEX(SUBSTRING(_normalizedProductDescription, _pos), ' ', 1);
                IF _keyword != '' THEN
                    IF _filter_words = '' THEN
                        SET _filter_words = CONCAT(
                            'LOWER(CONCAT(p.productName, '' '', IFNULL((SELECT GROUP_CONCAT(DISTINCT vpd.variationValue SEPARATOR '', '') FROM variation_product_detail vpd WHERE vpd.variationProductId = vp.variationProductId), ''''))) LIKE ''%', _keyword, '%'''
                        );
                    ELSE
                        SET _filter_words = CONCAT(
                            _filter_words,
                            ' AND LOWER(CONCAT(p.productName, '' '', IFNULL((SELECT GROUP_CONCAT(DISTINCT vpd.variationValue SEPARATOR '', '') FROM variation_product_detail vpd WHERE vpd.variationProductId = vp.variationProductId), ''''))) LIKE ''%', _keyword, '%'''
                        );
                    END IF;
                END IF;
                SET _pos = _pos + LENGTH(_keyword) + 1;
            END WHILE;
            IF _filter_words != '' THEN
                SET _filter = CONCAT(_filter, ' AND (', _filter_words, ')');
            END IF;
        END IF;

        IF p_ProductNo IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND LOWER(p.ProductNo) LIKE ''%', LOWER(TRIM(p_ProductNo)), '%''');
        END IF;

        IF p_sku IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND (vp.SKU=''', p_sku, ''' OR sp.SKU=''', p_sku, ''' OR cp.SKU=''', p_sku, ''')');
        END IF;

        IF p_Barcode IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND (vp.barcode LIKE ''%', p_Barcode, '%'' OR sp.barcode LIKE ''%', p_Barcode, '%'' OR cp.barcode LIKE ''%', p_Barcode, '%'')');
        END IF;

        IF p_BrandId IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.BrandId = ', p_BrandId);
        END IF;

        SET _jsonLength = JSON_LENGTH(p_ProductTypeIds);
        SET _productTypeCondition = '';
        WHILE _index < _jsonLength DO
            SET _jsonProductTypeId = JSON_UNQUOTE(JSON_EXTRACT(p_ProductTypeIds, CONCAT('$[', _index, ']')));
            IF _index = 0 THEN
                SET _productTypeCondition = CONCAT('p.ProductTypeId = ', _jsonProductTypeId);
            ELSE
                SET _productTypeCondition = CONCAT(_productTypeCondition, ' OR p.ProductTypeId = ', _jsonProductTypeId);
            END IF;
            SET _index = _index + 1;
        END WHILE;

        IF _productTypeCondition != '' THEN
            SET _filter = CONCAT(_filter, ' AND (', _productTypeCondition, ')');
        END IF;

         
        if p_isProductItem=true then
      SET _filter = CONCAT(_filter, ' AND p.isProductItem = ', CAST(p_isProductItem AS UNSIGNED));
        END IF;
        
        IF p_CategoryId IS NOT NULL THEN
            IF p_CategoryId = -1 THEN
                SET _filter = CONCAT(_filter, ' ');
            ELSE
                SET _filter = CONCAT(_filter, ' AND mpc.CategoryId = ', p_CategoryId);
            END IF;
        END IF;

        IF p_MeasurementUnitId IS NOT NULL THEN
            IF p_MeasurementUnitId = -1 THEN
                SET _filter = CONCAT(_filter, ' ');
            ELSE
                SET _filter = CONCAT(_filter, ' AND p.MeasurementUnitId = ', p_MeasurementUnitId);
            END IF;
        END IF;

    ELSE
        IF p_ProductId IS NOT NULL THEN
            SET p_ResponseStatus = 'invalid';
            SET p_OutputMessage = 'ProductID is not supported for keyword search.';
            LEAVE sp;
        END IF;

        IF _normalizedProductName IS NOT NULL AND _normalizedProductName != '' THEN
            
            SET _filter_words = '';
            SET _pos = 1;
            SET _len = LENGTH(_normalizedProductName);
            WHILE _pos <= _len DO
                SET _keyword = SUBSTRING_INDEX(SUBSTRING(_normalizedProductName, _pos), ' ', 1);
                IF _keyword != '' THEN
                    IF _filter_words = '' THEN
                        SET _filter_words = CONCAT('LOWER(p.ProductName) LIKE ''%', _keyword, '%''');
                    ELSE
                        SET _filter_words = CONCAT(_filter_words, ' AND LOWER(p.ProductName) LIKE ''%', _keyword, '%''');
                    END IF;
                END IF;
                SET _pos = _pos + LENGTH(_keyword) + 1;
            END WHILE;
            IF _filter_words != '' THEN
                SET _filter = CONCAT(_filter, ' AND (', _filter_words, ')');
            END IF;
        END IF;

        IF _normalizedProductDescription IS NOT NULL AND _normalizedProductDescription != '' THEN
            
            SET _filter_words = '';
            SET _pos = 1;
            SET _len = LENGTH(_normalizedProductDescription);
            WHILE _pos <= _len DO
                SET _keyword = SUBSTRING_INDEX(SUBSTRING(_normalizedProductDescription, _pos), ' ', 1);
                IF _keyword != '' THEN
                    IF _filter_words = '' THEN
                        SET _filter_words = CONCAT(
                            'LOWER(CONCAT(p.productName, '' '', IFNULL((SELECT GROUP_CONCAT(DISTINCT vpd.variationValue SEPARATOR '', '') FROM variation_product_detail vpd WHERE vpd.variationProductId = vp.variationProductId), ''''))) LIKE ''%', _keyword, '%'''
                        );
                    ELSE
                        SET _filter_words = CONCAT(
                            _filter_words,
                            ' AND LOWER(CONCAT(p.productName, '' '', IFNULL((SELECT GROUP_CONCAT(DISTINCT vpd.variationValue SEPARATOR '', '') FROM variation_product_detail vpd WHERE vpd.variationProductId = vp.variationProductId), ''''))) LIKE ''%', _keyword, '%'''
                        );
                    END IF;
                END IF;
                SET _pos = _pos + LENGTH(_keyword) + 1;
            END WHILE;
            IF _filter_words != '' THEN
                SET _filter = CONCAT(_filter, ' AND (', _filter_words, ')');
            END IF;
        END IF;

        IF p_ProductNo IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND LOWER(p.ProductNo) LIKE ''%', LOWER(TRIM(p_ProductNo)), '%''');
        END IF;

        IF p_Barcode IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND (LOWER(vp.barcode) LIKE ''%', LOWER(p_Barcode), '%'' OR LOWER(sp.barcode) LIKE ''%', LOWER(p_Barcode), '%'' OR LOWER(cp.barcode) LIKE ''%', LOWER(p_Barcode), '%'')');
        END IF;

        IF p_allSearchableFields IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND (LOWER(p.ProductName) LIKE ''%', LOWER(TRIM(p_allSearchableFields)), '%'' OR LOWER(p.ProductNo) LIKE ''%', LOWER(TRIM(p_allSearchableFields)), '%'' OR vp.SKU=''', p_allSearchableFields, ''' OR sp.SKU=''', p_allSearchableFields, ''' OR cp.SKU=''', p_allSearchableFields, ''')');
        END IF;

        IF p_CategoryId IS NOT NULL THEN
            SET p_ResponseStatus = 'invalid';
            SET p_OutputMessage = 'CategoryId is not supported for keyword search.';
            LEAVE sp;
        END IF;
    END IF;

    
    SET _query = CONCAT(
        'SELECT ',
            ' (SELECT JSON_ARRAYAGG(DISTINCT vpd.variationValue) FROM variation_product_detail vpd WHERE vpd.variationProductId = vp.variationProductId) AS variationValue,',
            ' p.productId, sip.variationProductId, p.productName, p.brandId, br.brandName,',
            ' CONCAT(p.productName, '' '', IFNULL((SELECT GROUP_CONCAT(DISTINCT vpd.variationValue SEPARATOR '', '') FROM variation_product_detail vpd WHERE vpd.variationProductId = vp.variationProductId), '''')) AS productDescription,',
            ' pt.productTypeName, p.measurementUnitId, mu.measurementUnitName, imageUrl,',
            ' (SELECT JSON_ARRAYAGG(DISTINCT JSON_OBJECT("id", c.categoryId, "displayName", c.categoryName))',
            ' FROM product_category pc INNER JOIN Category c ON pc.CategoryId = c.CategoryId WHERE pc.ProductId = p.ProductId) AS categories,',
            ' p.productNo, COALESCE(vp.SKU, sp.SKU, cp.SKU) AS sku, COALESCE(vp.barcode, sp.barcode, cp.barcode) AS barcode,',
            ' SUM(nsi.stockQty) AS stockQty,',
            ' CASE WHEN i.inventoryId IS NULL THEN ''-'' ELSE IFNULL(SUM(nsi.stockQty), 0) END AS stockQty,',
            ' CASE WHEN i.inventoryId IS NULL THEN false ELSE true END AS isStockTracked,',
            ' i.reorderLevel, sip.storeId, CAST(p.isNotForSelling AS UNSIGNED) AS isNotForSelling,',
            ' CAST(p.isUnique AS UNSIGNED) AS isUnique, CAST(p.isProductItem AS UNSIGNED) AS isProductItem,',
            ' COALESCE(vp.unitPrice, sp.unitPrice, cp.unitPrice) AS unitPrice,',
            ' COALESCE(vp.unitCost, sp.unitCost, cp.unitCost) AS unitCost,',
            ' COALESCE(vp.taxPerc, sp.taxPerc, cp.taxPerc) AS taxPerc,',
            ' c.contactName, c.contactCode, p.productTypeId, s.storeId, s.storeName, s.storeCode, CAST(p.isExpiringProduct AS UNSIGNED) AS isExpiringProduct, sip.allProductId, sip.inventoryId,cast(p.isAssemblyProduct as unsigned) as isAssemblyProduct ',
        ' FROM store_inventory_product sip',
        ' LEFT JOIN variation_product vp ON sip.variationProductId = vp.variationProductId',
        ' LEFT JOIN single_product sp ON sip.singleProductId = sp.productId',
        ' LEFT JOIN combo_product cp ON sip.comboProductId = cp.productId',
        ' INNER JOIN product p ON p.ProductId = COALESCE(vp.productId, sp.productId, cp.productId)',
        ' INNER JOIN product_type pt ON p.productTypeId = pt.productTypeId',
        ' INNER JOIN measurement_unit mu ON p.MeasurementUnitId = mu.MeasurementUnitId',
        ' INNER JOIN brand br ON p.BrandId = br.BrandId',
        ' LEFT JOIN inventory i ON sip.inventoryId = i.inventoryId',
        ' LEFT JOIN non_serialized_item nsi ON i.inventoryId = nsi.inventoryId',
        ' LEFT JOIN contact c ON nsi.supplierId = c.contactId',
        ' INNER JOIN store s ON sip.storeId = s.storeId',
        ' INNER JOIN product_category mpc ON p.productId = mpc.productId',
        _filter,
        ' GROUP BY p.ProductId, p.productNo, p.ProductName, pt.productTypeName, p.productTypeId, p.MeasurementUnitId, s.storeId, p.isExpiringProduct, sip.allProductId, sip.inventoryId',
        ' ORDER BY p.productName ASC, s.storeName ASC',
        _PagingQuery
    );

    
    PREPARE stmt FROM _query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    
    SET @queryTotal = CONCAT(
        'SELECT ',
            'COUNT(DISTINCT p.ProductId, s.storeId) INTO @totalRows ',
        ' FROM store_inventory_product sip',
        ' LEFT JOIN variation_product vp ON sip.variationProductId = vp.variationProductId',
        ' LEFT JOIN single_product sp ON sip.singleProductId = sp.productId',
        ' LEFT JOIN combo_product cp ON sip.comboProductId = cp.productId',
        ' INNER JOIN product p ON p.ProductId = COALESCE(vp.productId, sp.productId, cp.productId)',
        ' INNER JOIN product_type pt ON p.productTypeId = pt.productTypeId',
        ' INNER JOIN measurement_unit mu ON p.MeasurementUnitId = mu.MeasurementUnitId',
        ' INNER JOIN brand br ON p.BrandId = br.BrandId',
        ' LEFT JOIN inventory i ON sip.inventoryId = i.inventoryId',
        ' LEFT JOIN non_serialized_item nsi ON i.inventoryId = nsi.inventoryId',
        ' LEFT JOIN contact c ON nsi.supplierId = c.contactId',
        ' INNER JOIN store s ON sip.storeId = s.storeId',
        ' INNER JOIN product_category mpc ON p.productId = mpc.productId',
        _filter
    );

    PREPARE stmt FROM @queryTotal;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    SET p_TotalRows = @totalRows;

    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'loaded successfully';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Product_Select_pos_menu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Product_Select_pos_menu`(
    IN p_ProductId INT,
    IN p_ProductNo VARCHAR(100),
    IN p_ProductName VARCHAR(500),
    IN p_sku VARCHAR(100),
    IN p_Barcode VARCHAR(100),
    IN p_CategoryId INT,
    IN p_BrandId INT,
    IN p_StoreId INT,
      IN p_terminalId INT,
    IN p_ProductTypeIds JSON, 
    IN p_MeasurementUnitId INT,
    IN p_allSearchableFields VARCHAR(100),
    IN p_SearchByKeyword BIT,
    IN p_Skip INT,
    IN p_Limit INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
    OUT p_TotalRows INT
)
sp: BEGIN
    DECLARE _PagingQuery VARCHAR(1000);
    DECLARE _filter VARCHAR(1000);
    DECLARE _jsonProductTypeId INT;
    DECLARE _productTypeCondition VARCHAR(1000);
    DECLARE _index INT DEFAULT 0;
    DECLARE _jsonLength INT;

    SET _filter = CONCAT(' WHERE 1=1 AND sip.StoreId=', p_StoreId);

    SET _PagingQuery = '';
    IF p_Skip IS NOT NULL AND p_Limit IS NOT NULL THEN
        SET _PagingQuery = CONCAT(' LIMIT ', p_Skip, ', ', p_Limit);
    ELSEIF p_Skip IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The _Skip parameter should not be null.';
        LEAVE sp;
    ELSEIF p_Limit IS NULL OR p_Limit > 500 THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'The _Limit parameter should not be null and less than or equal to 500.';
        LEAVE sp;
    END IF;

    IF p_StoreId IS NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'p_StoreId is required.';
        LEAVE sp;
    END IF;

    IF p_SearchByKeyword = 0 THEN
        IF p_ProductId IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.ProductID = ', p_ProductId);
        END IF;
        IF p_ProductName IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.ProductName LIKE ''%', p_ProductName, '%''');
        END IF;
        IF p_ProductNo IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.ProductNo LIKE ''%', p_ProductNo, '%''');
        END IF;
        IF p_sku IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND (vp.SKU=''', p_sku, ''' OR sp.SKU=''', p_sku, ''' OR cp.SKU=''', p_sku, ''')');
        END IF;
        IF p_Barcode IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.Barcode LIKE ''%', p_Barcode, '%''');
        END IF;
        IF p_BrandId IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.BrandId LIKE ''%', p_BrandId, '%''');
        END IF;

        SET _jsonLength = JSON_LENGTH(p_ProductTypeIds);
        WHILE _index < _jsonLength DO
            SET _jsonProductTypeId = JSON_UNQUOTE(JSON_EXTRACT(p_ProductTypeIds, CONCAT('$[', _index, ']')));
            IF _index = 0 THEN
                SET _productTypeCondition = CONCAT('p.ProductTypeId = ', _jsonProductTypeId);
            ELSE
                SET _productTypeCondition = CONCAT(_productTypeCondition, ' OR p.ProductTypeId = ', _jsonProductTypeId);
            END IF;
            SET _index = _index + 1;
        END WHILE;

        IF _productTypeCondition != '' THEN
            SET _filter = CONCAT(_filter, ' AND (', _productTypeCondition, ')');
        END IF;

        IF p_CategoryId IS NOT NULL THEN
            IF p_CategoryId = -1 THEN
                SET _filter = CONCAT(_filter, ' ');
            ELSE
                SET _filter = CONCAT(_filter, ' AND mpc.CategoryId = ', p_CategoryId);
            END IF;
        END IF;

        IF p_MeasurementUnitId IS NOT NULL THEN
            IF p_MeasurementUnitId = -1 THEN
                SET _filter = CONCAT(_filter, ' ');
            ELSE
                SET _filter = CONCAT(_filter, ' AND p.MeasurementUnitId = ', p_MeasurementUnitId);
            END IF;
        END IF;
    ELSE
        IF p_ProductId IS NOT NULL THEN
            SET p_ResponseStatus = 'invalid';
            SET p_OutputMessage = 'ProductID is not supported for keyword search.';
            LEAVE sp;
        END IF;
        IF p_ProductName IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.ProductName LIKE ''%', p_ProductName, '%''');
        END IF;
        IF p_ProductNo IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.ProductNo LIKE ''%', p_ProductNo, '%''');
        END IF;
        IF p_Barcode IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND (vp.barcode LIKE ''%', p_Barcode, '%'' OR sp.barcode LIKE ''%', p_Barcode, '%'' OR cp.barcode LIKE ''%', p_Barcode, '%'') ');
        END IF;
        IF p_allSearchableFields IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND (p.ProductName LIKE ''%', p_allSearchableFields, '%'' OR p.ProductNo LIKE ''%', p_allSearchableFields, '%'' OR vp.SKU=''', p_allSearchableFields, ''' OR sp.SKU=''', p_allSearchableFields, ''' OR cp.SKU=''', p_allSearchableFields, ''') ');
        END IF;
        IF p_CategoryId IS NOT NULL THEN
            SET p_ResponseStatus = 'invalid';
            SET p_OutputMessage = 'CategoryId is not supported for keyword search.';
            LEAVE sp;
        END IF;
    END IF;

        
       

    IF p_CategoryId = 1 THEN
        
        
        SET _filter = CONCAT(_filter,
            ' AND EXISTS (',
            '   SELECT 1 FROM fast_moving_items fmi ',
            '   WHERE fmi.store_id   = ', p_StoreId,
            '     AND fmi.product_id = p.ProductId ',
            '     AND (fmi.terminal_id =', p_terminalId,' OR (fmi.terminal_id IS NULL AND ',p_terminalId,' IS NULL))',
            ' )');
    END IF;
       
        
        
        
    

    














































































































    SET @_query = CONCAT(
        'SELECT 
      
            
            p.productId,  
            p.productName,
            p.brandId,
            br.brandName,
            pt.productTypeName,
            p.measurementUnitId,
            mu.measurementUnitName,
            p.imageUrl,
 

JSON_ARRAYAGG(
    DISTINCT JSON_OBJECT(
        ''variationProductId'', vp.variationProductId,
        ''sku'', vp.SKU,
        ''barcode'', vp.barcode,
        ''unitPrice'', vp.unitPrice,
        ''unitCost'', vp.unitCost,
        ''taxPerc'', vp.taxPerc,
        ''variationValueLevel'', (
            SELECT COUNT(*)
            FROM variation_product_detail vpd 
            WHERE vpd.variationProductId = vp.variationProductId
        )
    )
) AS variationProducts,


            
            (SELECT JSON_ARRAYAGG(DISTINCT JSON_OBJECT(''id'', c.categoryId, ''displayName'', c.categoryName)) 
             FROM product_category pc 
             INNER JOIN Category c ON pc.CategoryId = c.CategoryId 
             WHERE pc.ProductId = p.ProductId) AS categories,
             
            p.productNo,
        
            
            CASE 
                WHEN i.inventoryId IS NULL THEN NULL 
                ELSE IFNULL((SELECT SUM(nsi.stockQty) 
                             FROM non_serialized_item nsi 
                             WHERE nsi.inventoryId = sip.inventoryId 
                            ), 0) 
            END AS stockQty,
            
            CASE WHEN i.inventoryId IS NULL THEN false ELSE true END AS isStockTracked,
            
            i.reorderLevel,
            i.inventoryId,
            sip.storeId,
            CAST(p.isNotForSelling AS UNSIGNED) AS isNotForSelling,
            CAST(p.isUnique AS UNSIGNED) AS isUnique,
            CAST(p.isProductItem AS UNSIGNED) AS isProductItem,
            
         
            vp.taxPerc AS taxPerc,
            c.contactName,
            c.contactCode,
            p.productTypeId,
            s.storeId,
            s.storeName,
            s.storeCode,
            
            CAST(p.isExpiringProduct AS UNSIGNED) AS isExpiringProduct,
            
         JSON_ARRAYAGG(DISTINCT sip.allProductId) AS allProductId,
JSON_ARRAYAGG(DISTINCT sip.inventoryId) AS inventoryIds,
            
            CASE 
                WHEN 
                    (SELECT IFNULL(SUM(stockQty), 0) 
                     FROM non_serialized_item nsi 
                     WHERE nsi.inventoryId = sip.inventoryId 
                       AND nsi.isBatchReleased = 1) = 0 
                    AND 
                    EXISTS (
                        SELECT 1 
                        FROM non_serialized_item nsi 
                        WHERE nsi.inventoryId = sip.inventoryId 
                          AND nsi.isBatchReleased = 0 
                          AND nsi.stockQty > 0
                    ) 
                THEN 1 ELSE 0 
            END AS hasUnreleasedStock,
            CASE WHEN i.inventoryId IS NULL THEN false ELSE true END AS isStockTracked
            
        FROM 
            store_inventory_product sip 
        LEFT JOIN variation_product vp ON sip.variationProductId = vp.variationProductId 
        INNER JOIN product p ON p.ProductId = vp.productId 
        INNER JOIN product_type pt ON p.productTypeId = pt.productTypeId 
        INNER JOIN measurement_unit mu ON p.MeasurementUnitId = mu.MeasurementUnitId 
        INNER JOIN brand br ON p.BrandId = br.BrandId 
        LEFT JOIN inventory i ON sip.inventoryId = i.inventoryId 
        LEFT JOIN non_serialized_item nsi ON i.inventoryId = nsi.inventoryId 
        LEFT JOIN contact c ON nsi.supplierId = c.contactId 
        INNER JOIN store s ON sip.storeId = s.storeId 
        INNER JOIN product_category mpc ON p.productId = mpc.productId ',
        _filter,
        ' GROUP BY 
            p.ProductId, p.productNo, p.ProductName, pt.productTypeName, p.productTypeId, 
            p.MeasurementUnitId, s.storeId, p.isExpiringProduct
        ORDER BY 
            p.productName ASC, s.storeName ASC ',
        _PagingQuery
    );

    
    PREPARE stmt FROM @_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;





    
    SET @queryTotal = CONCAT(
        'SELECT ',
            'COUNT(DISTINCT p.ProductId, s.storeId) INTO @totalRows ',
            ' FROM store_inventory_product sip',
            ' LEFT JOIN variation_product vp ON sip.variationProductId = vp.variationProductId',
      
            ' INNER JOIN product p ON p.ProductId = vp.productId',
            ' INNER JOIN product_type pt ON p.productTypeId = pt.productTypeId',
            ' INNER JOIN measurement_unit mu ON p.MeasurementUnitId = mu.MeasurementUnitId',
            ' INNER JOIN brand br ON p.BrandId = br.BrandId',
            ' LEFT JOIN inventory i ON sip.inventoryId = i.inventoryId',
            ' LEFT JOIN non_serialized_item nsi ON i.inventoryId = nsi.inventoryId',
            ' LEFT JOIN contact c ON nsi.supplierId = c.contactId',
            ' INNER JOIN store s ON sip.storeId = s.storeId',
            ' INNER JOIN product_category mpc ON p.productId = mpc.productId',
            _filter
    );

    PREPARE stmt FROM @queryTotal;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    SET p_TotalRows = @totalRows;

    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'loaded successfully';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Product_Select_pos_menu_ori_notinuse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Product_Select_pos_menu_ori_notinuse`(
  IN p_ProductId INT,
	IN p_ProductNo VARCHAR(100),
    IN p_ProductName VARCHAR(500),
    IN p_sku VARCHAR(100),
    IN p_Barcode VARCHAR(100),
    IN p_CategoryId INT,
      IN p_BrandId INT,
           IN p_StoreId INT,
       IN p_ProductTypeIds JSON, 
	IN p_MeasurementUnitId INT,
	in p_allSearchableFields  VARCHAR(100),
   
	IN p_SearchByKeyword BIT,
	IN p_Skip INT,
    IN p_Limit INT,
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),

    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
	OUT p_TotalRows INT
)
sp: BEGIN


DECLARE _PagingQuery VARCHAR(1000);
DECLARE _filter varchar(1000);

DECLARE _jsonProductTypeId INT;
  DECLARE _productTypeCondition VARCHAR(1000);

DECLARE _index INT DEFAULT 0;
DECLARE _jsonLength INT;

       
SET _filter = concat(' WHERE 1=1 AND sip.StoreId=',p_StoreId);

set _PagingQuery='';
IF p_Skip IS NOT NULL AND p_Limit IS NOT NULL THEN
    SET _PagingQuery = CONCAT(' LIMIT ', p_Skip, ', ', p_Limit);
    
ELSEIF p_Skip IS  null  THEN
    SET p_ResponseStatus = 'invalid';
    SET p_OutputMessage = 'The _Skip parameter should not be null.';
	leave sp;
    
ELSEIF p_Limit IS null or p_Limit > 500 THEN
    SET p_ResponseStatus = 'invalid';
    SET p_OutputMessage = 'The _Limit parameter should not be null and less than or equal to 500.';
	leave sp;
END IF;


   
    IF p_StoreId IS NULL THEN
            SET p_ResponseStatus = 'invalid';
            SET p_OutputMessage = 'p_StoreId is required.';
			leave sp;
        END IF;
       

IF p_SearchByKeyword = 0 THEN
        IF p_ProductId IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.ProductID = ', p_ProductId);
        END IF;
        
        IF p_ProductName IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.ProductName LIKE ''%', p_ProductName, '%''');
        END IF;
        
        IF p_ProductNo IS NOT NULL THEN
               SET _filter = CONCAT(_filter, ' AND p.ProductNo LIKE ''%', p_ProductNo, '%''');
        END IF;
        
       
        IF p_sku IS NOT NULL THEN
               SET _filter = CONCAT(_filter, ' AND (vp.SKU=''', p_sku, ''' or sp.SKU=''', p_sku, ''' or cp.SKU=''', p_sku,''')');
        END IF;
       
       
        IF p_Barcode IS NOT NULL THEN
               SET _filter = CONCAT(_filter, ' AND p.Barcode LIKE ', p_Barcode);
        END IF;
         
        
        IF p_BrandId IS NOT NULL THEN
               SET _filter = CONCAT(_filter, ' AND p.BrandId LIKE ''%', p_BrandId, '%''');
        END IF;   
       

SET _jsonLength = JSON_LENGTH(p_ProductTypeIds);

WHILE _index < _jsonLength DO
    SET _jsonProductTypeId = JSON_UNQUOTE(JSON_EXTRACT(p_ProductTypeIds, CONCAT('$[', _index, ']')));
    
    IF _index = 0 THEN
        SET _productTypeCondition = CONCAT('p.ProductTypeId = ', _jsonProductTypeId);
    ELSE
        SET _productTypeCondition = CONCAT(_productTypeCondition, ' OR p.ProductTypeId = ', _jsonProductTypeId);
    END IF;
    
    SET _index = _index + 1;
END WHILE;

IF _productTypeCondition != '' THEN
    SET _filter = CONCAT(_filter, ' AND (', _productTypeCondition, ')');
END IF;

       
        IF p_CategoryId IS NOT NULL THEN
			IF p_CategoryId=-1 THEN
              SET _filter = CONCAT(_filter, ' ');
            else
            SET _filter = CONCAT(_filter, ' AND mpc.CategoryId = ', p_CategoryId);
            end if;
        END IF;
        
        
		IF p_MeasurementUnitId IS NOT NULL THEN
			IF p_MeasurementUnitId=-1 THEN
              SET _filter = CONCAT(_filter, ' ');
            else
            SET _filter = CONCAT(_filter, ' AND p.MeasurementUnitId = ', p_MeasurementUnitId);
            end if;
        END IF;
        
        
        
    ELSE
        IF p_ProductId IS NOT NULL THEN
            SET p_ResponseStatus = 'invalid';
            SET p_OutputMessage = 'ProductID is not supported for keyword search.';
			leave sp;
        END IF;
       
       
        IF p_ProductName IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.ProductName LIKE ''%', p_ProductName, '%''');
        END IF;
        
        IF p_ProductNo IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.ProductNo LIKE ''%', p_ProductNo, '%''');
        END IF;
        
        IF p_Barcode IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND (vp.barcode LIKE ''%', p_Barcode, '%'') or (sp.barcode LIKE ''%', p_Barcode, '%'') or (cp.barcode LIKE ''%', p_Barcode, '%'') ');
        END IF;
       
   
          if p_allSearchableFields is not null then
            SET _filter = CONCAT(_filter, ' AND p.ProductName LIKE ''%', p_allSearchableFields, '%'' or p.ProductNo LIKE ''%', p_allSearchableFields, '%'' or  (vp.SKU=''', p_allSearchableFields, ''' or sp.SKU=''', p_allSearchableFields, ''' or cp.SKU=''', p_allSearchableFields,''') ');
          END IF;
       
       
        IF p_CategoryId IS NOT NULL THEN
            SET p_ResponseStatus = 'invalid';
            SET p_OutputMessage = 'CategoryId is not supported for keyword search.';
			leave sp;
        END IF;
    END IF;
SET @_query = CONCAT(
    'SELECT 
        (SELECT JSON_ARRAYAGG(DISTINCT vpd.variationValue) 
         FROM variation_product_detail vpd 
         WHERE vpd.variationProductId = vp.variationProductId) AS variationValues,
         
        JSON_ARRAYAGG(
            JSON_OBJECT(
                ''variationProductId'', vp.variationProductId, 
                ''inventoryId'', sip.inventoryId, 
                ''allProductId'', sip.allProductId
            )
        ) AS variationProductDetails,
        
        p.productId,  
        p.productName,
        p.brandId,
        br.brandName,
        pt.productTypeName,
        p.measurementUnitId,
        mu.measurementUnitName,
        p.imageUrl,
        
        (SELECT JSON_ARRAYAGG(DISTINCT JSON_OBJECT(''id'', c.categoryId, ''displayName'', c.categoryName)) 
         FROM product_category pc 
         INNER JOIN Category c ON pc.CategoryId = c.CategoryId 
         WHERE pc.ProductId = p.ProductId) AS categories,
         
        p.productNo,
        COALESCE(sp.SKU, cp.SKU) AS sku,
        COALESCE(sp.barcode, cp.barcode) AS barcode,
        
        CASE 
            WHEN i.inventoryId IS NULL THEN NULL 
            ELSE IFNULL((SELECT SUM(nsi.stockQty) 
                         FROM non_serialized_item nsi 
                         WHERE nsi.inventoryId = sip.inventoryId 
                           AND nsi.isBatchReleased = 1), 0) 
        END AS stockQty,
        
        CASE WHEN i.inventoryId IS NULL THEN false ELSE true END AS isStockTracked,
        
        i.reorderLevel,
        sip.storeId,
        CAST(p.isNotForSelling AS UNSIGNED) AS isNotForSelling,
        CAST(p.isUnique AS UNSIGNED) AS isUnique,
        CAST(p.isProductItem AS UNSIGNED) AS isProductItem,
        
        COALESCE(sp.unitPrice, cp.unitPrice) AS unitPrice,
      COALESCE(vp.taxPerc, sp.taxPerc, cp.taxPerc) AS taxPerc,
        c.contactName,
        c.contactCode,
        p.productTypeId,
        s.storeId,
        s.storeName,
        s.storeCode,
        
        CAST(p.isExpiringProduct AS UNSIGNED) AS isExpiringProduct,
        
        JSON_ARRAYAGG(sip.allProductId) AS allProductId,
        JSON_ARRAYAGG(sip.inventoryId) AS inventoryIds,
        
          -- New flag for unreleased batches with stockQty > 0 and current batch with zero stockQty
        CASE 
            WHEN 
                (SELECT IFNULL(SUM(stockQty), 0) 
                 FROM non_serialized_item nsi 
                 WHERE nsi.inventoryId = sip.inventoryId 
                   AND nsi.isBatchReleased = 1) = 0 
                AND 
                EXISTS (
                    SELECT 1 
                    FROM non_serialized_item nsi 
                    WHERE nsi.inventoryId = sip.inventoryId 
                      AND nsi.isBatchReleased = 0 
                      AND nsi.stockQty > 0
                ) 
            THEN 1 ELSE 0 
        END AS hasUnreleasedStock

        
    FROM 
        store_inventory_product sip 
    LEFT JOIN variation_product vp ON sip.variationProductId = vp.variationProductId 
    LEFT JOIN single_product sp ON sip.singleProductId = sp.productId 
    LEFT JOIN combo_product cp ON sip.comboProductId = cp.productId 
    INNER JOIN product p ON p.ProductId = COALESCE(vp.productId, sp.productId, cp.productId) 
    INNER JOIN product_type pt ON p.productTypeId = pt.productTypeId 
    INNER JOIN measurement_unit mu ON p.MeasurementUnitId = mu.MeasurementUnitId 
    INNER JOIN brand br ON p.BrandId = br.BrandId 
    LEFT JOIN inventory i ON sip.inventoryId = i.inventoryId 
    LEFT JOIN non_serialized_item nsi ON i.inventoryId = nsi.inventoryId 
    LEFT JOIN contact c ON nsi.supplierId = c.contactId 
    INNER JOIN store s ON sip.storeId = s.storeId 
    inner join product_category mpc ON p.productId=mpc.productId ',
    _filter,
    ' GROUP BY 
        p.ProductId, p.productNo, p.ProductName, pt.productTypeName, p.productTypeId, 
        p.MeasurementUnitId, s.storeId, p.isExpiringProduct
    ORDER BY 
        p.productName ASC, s.storeName ASC ',
    _PagingQuery
);


            
   


 PREPARE stmt FROM @_query;
 EXECUTE stmt;
DEALLOCATE PREPARE stmt;

  

SET @queryTotal = CONCAT(
    'SELECT ',
        'COUNT(DISTINCT p.ProductId, s.storeId) INTO @totalRows ',
        ' FROM store_inventory_product sip',
        ' LEFT JOIN variation_product vp ON sip.variationProductId = vp.variationProductId',
        ' LEFT JOIN single_product sp ON sip.singleProductId = sp.productId',
        ' LEFT JOIN combo_product cp ON sip.comboProductId = cp.productId',
        ' INNER JOIN product p ON p.ProductId = COALESCE(vp.productId, sp.productId, cp.productId)',
        ' INNER JOIN product_type pt ON p.productTypeId = pt.productTypeId',
        ' INNER JOIN measurement_unit mu ON p.MeasurementUnitId = mu.MeasurementUnitId',
        ' INNER JOIN brand br ON p.BrandId = br.BrandId',
        ' LEFT JOIN inventory i ON sip.inventoryId = i.inventoryId',
        ' LEFT JOIN non_serialized_item nsi ON i.inventoryId = nsi.inventoryId',
        ' LEFT JOIN contact c ON nsi.supplierId = c.contactId',
        ' INNER JOIN store s ON sip.storeId = s.storeId',
         ' inner join product_category mpc ON p.productId=mpc.productId',
        _filter  
);

    
 PREPARE stmt FROM @queryTotal;
 EXECUTE stmt;
 DEALLOCATE PREPARE stmt;

SET p_TotalRows = @totalRows;


SET p_ResponseStatus='success';
SET p_OutputMessage='loaded successfully';


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Product_Select_prev` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Product_Select_prev`(
  IN p_ProductId INT,
	IN p_ProductNo VARCHAR(100),
    IN p_ProductName VARCHAR(500),
    IN p_Barcode VARCHAR(100),
    IN p_CategoryId INT,
      IN p_BrandId INT,
           IN p_StoreId INT,
            IN p_ProductTypeId INT,
	IN p_MeasurementUnitId INT,
   
	IN p_SearchByKeyword BIT,
	IN p_Skip INT,
    IN p_Limit INT,
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),

    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
	OUT p_TotalRows INT
)
sp: BEGIN


DECLARE _PagingQuery VARCHAR(1000);
DECLARE _filter varchar(1000);





SET _filter = ' WHERE 1=1 ';

set _PagingQuery='';
IF p_Skip IS NOT NULL AND p_Limit IS NOT NULL THEN
    SET _PagingQuery = CONCAT(' LIMIT ', p_Skip, ', ', p_Limit);
    
ELSEIF p_Skip IS NOT NULL AND p_Limit IS NULL THEN
    SET p_ResponseStatus = 'invalid';
    SET p_OutputMessage = 'The _Limit parameter is not passed or set _Skip parameter to null for unlimited data.';
	leave sp;
    
ELSEIF p_Skip IS NULL AND p_Limit IS NOT NULL THEN
    SET p_ResponseStatus = 'invalid';
    SET p_OutputMessage = 'The _Skip parameter is not passed or set _Limit parameter to null for unlimited data.';
	leave sp;
END IF;



IF p_SearchByKeyword = 0 THEN
        IF p_ProductId IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.ProductID = ', p_ProductId);
        END IF;
        
        IF p_ProductName IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.ProductName LIKE ''%', p_ProductName, '%''');
        END IF;
        
        IF p_ProductNo IS NOT NULL THEN
               SET _filter = CONCAT(_filter, ' AND p.ProductNo LIKE ''%', p_ProductNo, '%''');
        END IF;
        
        IF p_Barcode IS NOT NULL THEN
               SET _filter = CONCAT(_filter, ' AND p.Barcode LIKE ''%', p_Barcode, '%''');
        END IF;
        
        IF p_BrandId IS NOT NULL THEN
               SET _filter = CONCAT(_filter, ' AND p.BrandId LIKE ''%', p_BrandId, '%''');
        END IF;
       
         IF p_StoreId IS NOT NULL THEN
              SET _filter = CONCAT(_filter, ' AND sip.StoreId LIKE ''%', p_StoreId, '%''');
        END IF;
          
       IF p_ProductTypeId IS NOT NULL THEN
              SET _filter = CONCAT(_filter, ' AND p.productTypeId LIKE ''%', p_ProductTypeId, '%''');
        END IF;
       
       
       
       
        IF p_CategoryId IS NOT NULL THEN
			IF p_CategoryId=-1 THEN
              SET _filter = CONCAT(_filter, ' ');
            else
            SET _filter = CONCAT(_filter, ' AND pc.CategoryId = ', p_CategoryId);
            end if;
        END IF;
        
        
		IF p_MeasurementUnitId IS NOT NULL THEN
			IF p_MeasurementUnitId=-1 THEN
              SET _filter = CONCAT(_filter, ' ');
            else
            SET _filter = CONCAT(_filter, ' AND p.MeasurementUnitId = ', p_MeasurementUnitId);
            end if;
        END IF;
        
        
        
    ELSE
        IF p_ProductId IS NOT NULL THEN
            SET p_ResponseStatus = 'invalid';
            SET p_OutputMessage = 'ProductID is not supported for keyword search.';
			leave sp;
        END IF;
        
        IF p_ProductName IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.ProductName LIKE ''%', p_ProductName, '%''');
        END IF;
        
        IF p_ProductNo IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.ProductNo LIKE ''%', p_ProductNo, '%''');
        END IF;
        
        IF p_Barcode IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND p.Barcode LIKE ''%', p_Barcode, '%''');
        END IF;
        
        IF p_CategoryId IS NOT NULL THEN
            SET p_ResponseStatus = 'invalid';
            SET p_OutputMessage = 'CategoryId is not supported for keyword search.';
			leave sp;
        END IF;
    END IF;



SET @_query = CONCAT(
    'SELECT ',
        ' (SELECT JSON_ARRAYAGG(DISTINCT vpd.variationValue) FROM variation_product_detail vpd WHERE vpd.variationProductId = vp.variationProductId) AS variationValue,',
        ' p.productId, p.productName, p.brandId, br.brandName,',
        ' pt.productTypeName, p.measurementUnitId, mu.measurementUnitName,',
        ' (SELECT JSON_ARRAYAGG(DISTINCT JSON_OBJECT("id", c.categoryId, "displayName", c.categoryName))',
        ' FROM product_category pc INNER JOIN Category c ON pc.CategoryId = c.CategoryId WHERE pc.ProductId = p.ProductId) AS categories,',
        ' p.productNo, COALESCE(vp.SKU, sp.SKU, cp.SKU) AS sku, COALESCE(vp.barcode, sp.barcode, cp.barcode) AS barcode,',
        ' SUM(nsi.stockQty) AS stockQty,',
        ' CASE WHEN i.inventoryId IS NULL THEN ''-'' ELSE IFNULL(SUM(nsi.stockQty), 0) END AS stockQty,',
        ' CASE WHEN i.inventoryId IS NULL THEN false ELSE true END AS isStockTracked,',
        ' i.reorderLevel, sip.storeId, nsi.unitPrice, nsi.costPrice, CAST(p.isNotForSelling AS UNSIGNED) AS isNotForSelling,',
        ' CAST(p.isUnique AS UNSIGNED) AS isUnique,',
        ' c.contactName, c.contactCode, p.productTypeId, s.storeId, s.storeName, s.storeCode',
        ' FROM store_inventory_product sip',
        ' LEFT JOIN variation_product vp ON sip.variationProductId = vp.variationProductId',
        ' LEFT JOIN single_product sp ON sip.singleProductId = sp.productId',
        ' LEFT JOIN combo_product cp ON sip.comboProductId = cp.productId',
        ' INNER JOIN product p ON p.ProductId = COALESCE(vp.productId, sp.productId, cp.productId)',
        ' INNER JOIN product_type pt ON p.productTypeId = pt.productTypeId',
        ' INNER JOIN measurement_unit mu ON p.MeasurementUnitId = mu.MeasurementUnitId',
        ' INNER JOIN brand br ON p.BrandId = br.BrandId',
        ' LEFT JOIN inventory i ON sip.inventoryId = i.inventoryId',
        ' LEFT JOIN non_serialized_item nsi ON i.inventoryId = nsi.inventoryId',
        ' LEFT JOIN contact c ON nsi.supplierId = c.contactId',
        ' INNER JOIN store s ON sip.storeId = s.storeId',
        _filter,
        ' GROUP BY p.ProductId, p.productNo, p.ProductName, pt.productTypeName, p.productTypeId, p.MeasurementUnitId, s.storeId',
        ' ORDER BY p.productName ASC, s.storeName ASC',
        _PagingQuery
    );




 PREPARE stmt FROM @_query;
 EXECUTE stmt;
DEALLOCATE PREPARE stmt;

  

SET @queryTotal = CONCAT(
    'SELECT ',
        'COUNT(DISTINCT p.ProductId, s.storeId) INTO @totalRows ',
        ' FROM store_inventory_product sip',
        ' LEFT JOIN variation_product vp ON sip.variationProductId = vp.variationProductId',
        ' LEFT JOIN single_product sp ON sip.singleProductId = sp.productId',
        ' LEFT JOIN combo_product cp ON sip.comboProductId = cp.productId',
        ' INNER JOIN product p ON p.ProductId = COALESCE(vp.productId, sp.productId, cp.productId)',
        ' INNER JOIN product_type pt ON p.productTypeId = pt.productTypeId',
        ' INNER JOIN measurement_unit mu ON p.MeasurementUnitId = mu.MeasurementUnitId',
        ' INNER JOIN brand br ON p.BrandId = br.BrandId',
        ' LEFT JOIN inventory i ON sip.inventoryId = i.inventoryId',
        ' LEFT JOIN non_serialized_item nsi ON i.inventoryId = nsi.inventoryId',
        ' LEFT JOIN contact c ON nsi.supplierId = c.contactId',
        ' INNER JOIN store s ON sip.storeId = s.storeId',
        _filter  
);


PREPARE stmt FROM @queryTotal;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;



    
PREPARE stmt FROM @queryTotal;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET p_TotalRows = @totalRows;


SET p_ResponseStatus='success';
SET p_OutputMessage='loaded successfully';


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `product_snapshot_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `product_snapshot_insert`(
   IN p_allProductId INT,
   OUT p_ss_allProductId INT
)
sp:begin
	
	 
    DECLARE latest_snapshot_id INT;
   
   declare v_ss_allProductId int;
     declare v_productTypeId int;
      DECLARE err_message VARCHAR(255);
     
     
     		   
DECLARE currentItemIndex INT DEFAULT 0;
DECLARE totalItemsIntblComboDetails INT;
DECLARE v_qty DECIMAL(10,2);
DECLARE v_productId_mat INT;
DECLARE v_variationProductId_mat INT;
DECLARE v_allProductId_mat INT;
DECLARE v_ss_allProductId_mat INT;

     
     
     
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
       begin
	        ROLLBACK;
            
            GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
            
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
        END;
   

   
    START TRANSACTION;

    SELECT snshot_allProductId INTO latest_snapshot_id
    FROM snapshot_all_product WHERE allProductId = p_allProductId
    ORDER BY snshot_CreatedDate_UTC desc LIMIT 1;
   
    IF NOT EXISTS (SELECT 1 FROM all_product WHERE allProductId = p_allProductId) then
        SET v_ss_allProductId = NULL;
       set p_ss_allProductId=v_ss_allProductId;
        select v_ss_allProductId as v_ss_allProductId;
        ROLLBACK;
        LEAVE sp;
    END IF;
   
    
		    set v_productTypeId=(select productTypeId from all_product where allProductId=p_allProductId);
		    
  
		   
		        INSERT INTO snapshot_all_product (allProductId,isProductItem,isExpiringProduct,isAssemblyProduct,
		            ProductId, productTypeId,  ProductNo,  ProductName,productDescription,  BrandName, MeasurementUnitName,
		            SKU,barcode, unitPrice,    
		            ModifiedDate_UTC, ModifiedDate_ServerTime,snshot_CreatedDate_UTC, snshot_CreatedDate_ServerTime
		        )
	           
		        SELECT  ap.allProductId,p.isProductItem,p.isExpiringProduct,p.isAssemblyProduct,p.ProductId, p.productTypeId,  p.ProductNo,  p.ProductName,
          
			     CASE 
        WHEN COUNT(vpd.variationValue) = 0 
        THEN p.ProductName
        ELSE CONCAT(
                p.ProductName, 
                ' - ', 
                GROUP_CONCAT(vpd.variationValue ORDER BY vpd.variationProductDetail_id SEPARATOR ' ')
             )
    END AS variationValuesConcat,  
		        b.BrandName,
			            mu.MeasurementUnitName,sp.SKU, sp.barcode, sp.unitPrice,
			            p.ModifiedDate_UTC,p.ModifiedDate_ServerTime, utc_timestamp(), current_timestamp()
			        FROM product p inner join brand b on p.brandId=b.brandId
			        inner join measurement_unit mu on p.MeasurementUnitId=mu.MeasurementUnitId
			        inner join variation_product sp on p.productId=sp.productId
			         inner join all_product ap on sp.variationProductId=ap.variationProductId
			         LEFT join variation_product_detail vpd on sp.variationProductId=vpd.variationProductId
			          WHERE ap.allProductId = p_allProductId;
		
		  			  SET   v_ss_allProductId=LAST_INSERT_ID();
		   
		  			 
					 INSERT INTO snapshot_variation_product_detail(snshot_allProductId, variationTypeName, variationValue)
					
				select v_ss_allProductId,pvt.variationTypeName,vpd.variationValue from variation_product_detail vpd
				 inner join product_variation_type pvt on vpd.variationTypeId=pvt.variationTypeId 
				where variationProductId=(
					SELECT  vp.variationProductId 
					        FROM  variation_product vp
					         inner join all_product ap on vp.variationProductId=ap.variationProductId
				         where ap.allProductId=p_allProductId
			);
		   
		   
  

  select v_ss_allProductId as v_ss_allProductId;
  
  set p_ss_allProductId=v_ss_allProductId;
 
    COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `releaseStockBatch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `releaseStockBatch`(
    IN p_stockBatchId INT,
    IN p_stopRelease bit,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN
    DECLARE v_stockQty DECIMAL(10,2) DEFAULT 0;


declare v_inventoryId int;


set v_inventoryId=(select distinct inventoryId from non_serialized_item where stockBatchId = p_stockBatchId);
  

    if(p_stopRelease=1) then
      
    
   if exists( SELECT * FROM non_serialized_item
    WHERE stockBatchId = p_stockBatchId AND isBatchReleased = 0)
    then
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'The stock batch is already stopped.';
        LEAVE sp;
    
    end if;
    
    
      SELECT ifnull(sum(stockQty),0) INTO v_stockQty
    FROM non_serialized_item
    WHERE stockBatchId =p_stockBatchId;
     
    IF v_stockQty = 0 THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'There is no stock qty exists in this batch.';
        LEAVE sp;
    END IF; 
    
    
    
        UPDATE non_serialized_item SET isBatchReleased = 0 WHERE stockBatchId = p_stockBatchId;

	    SET p_ResponseStatus = 'success';
	    SET p_OutputMessage = 'The stock batch has been stopped.';
    else
    
    
     
  SELECT ifnull(sum(stockQty),0) INTO v_stockQty
    FROM non_serialized_item
    WHERE inventoryId = v_inventoryId and stockBatchId !=p_stockBatchId 
      AND isBatchReleased = 1;
     
    IF v_stockQty > 0 THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'Another stock batch is already released and has remaining stock,if needed, you can first stop that batch release and before releaset this.';
        LEAVE sp;
    END IF; 
      



   if exists( SELECT * FROM non_serialized_item
    WHERE stockBatchId = p_stockBatchId AND isBatchReleased = 1) THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'The stock batch is already released.';
        LEAVE sp;
    END IF;
    
    
    SELECT COUNT(*) INTO v_stockQty FROM non_serialized_item
    WHERE stockBatchId = p_stockBatchId
      AND isBatchReleased = 0 AND stockQty > 0;

    IF v_stockQty = 0 THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'No stock available to release for the specified batch.';
        LEAVE sp;
    END IF;
    
    
   		UPDATE non_serialized_item SET isBatchReleased = 1 WHERE stockBatchId = p_stockBatchId;
 
     
     call _updateSellingProductPriceByStockBatchId(p_stockBatchId,p_ResponseStatus,p_OutputMessage);
     
     select  p_OutputMessage as priceUpdate;

     

    
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'The stock batch has been successfully released.';
     
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reports_getDailySalesSummary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reports_getDailySalesSummary`(
    IN p_storeId INT,
    IN p_fromDate DATE,
    IN p_toDate DATE
)
BEGIN
    SELECT 
        DATE(oh.createdDate_UTC) AS saleDate,
        COUNT(DISTINCT oh.orderId) AS numTransactions,
        SUM(CASE WHEN pm.methodName = 'Cash' THEN op.amountPaid ELSE 0 END) AS cashSales,  
        SUM(CASE WHEN pm.methodName = 'Card' THEN op.amountPaid ELSE 0 END) AS cardSales,  
        SUM(IFNULL(od.netAmount, 0) + IFNULL(t.taxAmount, 0)) AS totalSales,  
        SUM(IFNULL(d.discountAmount, 0)) AS discounts,
        SUM(CASE WHEN oh.isVoided = 1 OR od.isReturned = 1 THEN IFNULL(od.netAmount, 0) ELSE 0 END) AS refunds,  
        SUM(IFNULL(od.netAmount, 0)) AS netSales,
        SUM(IFNULL(od.netAmount, 0) - (IFNULL(p.cost, 0) * od.qty)) AS grossProfit
    FROM order_header oh
    INNER JOIN order_details od ON oh.orderId = od.orderId
    INNER JOIN snapshot_all_product p ON od.snshot_allProductId = p.snshot_allProductId
    LEFT JOIN order_line_discount d ON od.OrderDetailId = d.OrderDetailID
    LEFT JOIN order_line_tax t ON od.orderDetailId = t.orderDetailId
    LEFT JOIN order_payments op ON oh.orderId = op.orderId
    left join payment_methods pm on op.methodId=pm.methodId
    WHERE oh.storeId = p_storeId
      AND DATE(oh.createdDate_UTC) BETWEEN p_fromDate AND p_toDate
      AND oh.isVoided = 0  
    GROUP BY DATE(oh.createdDate_UTC)
    ORDER BY saleDate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reports_getInventoryOnHand` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reports_getInventoryOnHand`(
   
IN p_storeId  int
)
BEGIN
SELECT SQL_CALC_FOUND_ROWS 
         CONCAT(
           p.productName, ' ', 
           IFNULL(
               (SELECT GROUP_CONCAT(DISTINCT vpd.variationValue SEPARATOR ',') 
                FROM variation_product_detail vpd 
                WHERE vp.variationProductId = vpd.variationProductId), 
           '')
       ) AS productDescription,

    COALESCE(vp.SKU) AS sku,
  
    mu.measurementUnitName,
    nsi.stockQty as qtyOnHand,
    i.reorderLevel,
    nsi.CreatedDate_UTC AS lastRestocked,
  vp.unitCost,
  ROUND(COALESCE( nsi.stockQty, 0) * COALESCE( vp.unitCost, 0), 2) AS totalValue
FROM store_inventory_product sip
LEFT JOIN variation_product vp ON sip.variationProductId = vp.variationProductId
INNER JOIN product p ON p.ProductId = COALESCE(vp.productId)
INNER JOIN measurement_unit mu ON p.MeasurementUnitId = mu.MeasurementUnitId
INNER JOIN non_serialized_item nsi ON sip.inventoryId = nsi.inventoryId
INNER JOIN inventory i ON sip.inventoryId = i.inventoryId
where  sip.storeId = p_storeId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reports_getLowStockReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reports_getLowStockReport`(
   
IN p_storeId  int
)
BEGIN
SELECT SQL_CALC_FOUND_ROWS 
         CONCAT(
           p.productName, ' ', 
           IFNULL(
               (SELECT GROUP_CONCAT(DISTINCT vpd.variationValue SEPARATOR ',') 
                FROM variation_product_detail vpd 
                WHERE vp.variationProductId = vpd.variationProductId), 
           '')
       ) AS productDescription,

    COALESCE(vp.SKU) AS sku,
  
    mu.measurementUnitName,
    nsi.stockQty as qtyOnHand,
    i.reorderLevel,
    nsi.CreatedDate_UTC AS lastRestocked,
  vp.unitCost,
  ROUND(COALESCE( nsi.stockQty, 0) * COALESCE( vp.unitCost, 0), 2) AS totalValue
FROM store_inventory_product sip
LEFT JOIN variation_product vp ON sip.variationProductId = vp.variationProductId
INNER JOIN product p ON p.ProductId = COALESCE(vp.productId)
INNER JOIN measurement_unit mu ON p.MeasurementUnitId = mu.MeasurementUnitId
INNER JOIN non_serialized_item nsi ON sip.inventoryId = nsi.inventoryId
INNER JOIN inventory i ON sip.inventoryId = i.inventoryId
where  sip.storeId = p_storeId and nsi.stockQty<= i.reorderLevel;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reports_getMonthlySalesDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reports_getMonthlySalesDetails`(
IN p_storeId INT,
IN p_year INT,
IN p_month INT
)
BEGIN
    
 SELECT SQL_CALC_FOUND_ROWS 
     
       CONCAT(
           p.productName, ' ', 
           IFNULL(
               (SELECT GROUP_CONCAT(DISTINCT vpd.variationValue SEPARATOR ',') 
                FROM snapshot_variation_product_detail vpd 
                WHERE p.snShot_allProductId = vpd.snShot_allProductId), 
           '')
       ) AS productDescription,
       p.sku,
       
       p.unitPrice,
       ifnull(p.cost,0) as cost,
       t.taxRate,
       SUM(IFNULL(t.taxAmount, 0)) AS taxAmount,
       p.measurementUnitName,
       p.brandName,
       SUM(od.qty) AS qtySold,
           ifnull(p.cost,0) as cost,
     
     
       SUM(IFNULL(od.netAmount, 0)) AS netAmount,
       SUM(IFNULL(d.discountAmount, 0)) AS discountAmount
FROM order_details od
INNER JOIN snapshot_all_product p 
        ON od.snshot_allProductId = p.snshot_allProductId
INNER JOIN order_header oh 
        ON od.orderId = oh.orderId
LEFT JOIN order_line_discount d 
        ON od.OrderDetailId = d.OrderDetailID
LEFT JOIN order_line_tax t 
        ON od.orderDetailId = t.orderDetailId
WHERE oh.isVoided = 0 
 AND oh.storeId = p_storeId 
 AND YEAR(oh.createdDate_UTC) = p_year 
 AND MONTH(oh.createdDate_UTC) = p_month
GROUP BY p.productName, p.sku, p.barcode, p.unitPrice, t.taxRate, 
         p.measurementUnitName, p.brandName;

  
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reports_getProducts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reports_getProducts`(
   
IN p_storeId  int,
    OUT p_TotalRows INT
)
BEGIN
  SELECT SQL_CALC_FOUND_ROWS 
        p.productName,
        p.productNo,
        COALESCE(vp.SKU, sp.SKU, cp.SKU) AS sku ,
        COALESCE(vp.barcode, sp.barcode, cp.barcode) AS barcode,
        mu.measurementUnitName,
        b.brandName,
        pt.productTypeName,
        sp.unitPrice,
        sp.unitCost
    FROM  store_inventory_product sip 
    left JOIN single_product sp ON sip.singleProductId = sp.productId
   LEFT JOIN variation_product vp ON sip.variationProductId = vp.variationProductId 
   LEFT JOIN combo_product cp ON sip.comboProductId = cp.productId 

   INNER JOIN product p ON p.ProductId = COALESCE(vp.productId, sp.productId, cp.productId)
     INNER JOIN measurement_unit mu ON p.MeasurementUnitId = mu.MeasurementUnitId
        INNER JOIN brand b ON p.BrandId = b.BrandId
            INNER JOIN product_type pt ON p.productTypeId = pt.productTypeId
             where sip.storeId=p_storeId;
       

    SET p_TotalRows = FOUND_ROWS();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sessionDetails_Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sessionDetails_Select`(
	IN p_SessionId INT,
    
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

	
	  DECLARE v_noOfTransactions INT;
    DECLARE v_noOfVoidedTransactions INT;
    DECLARE v_noOfCustomers INT;
    DECLARE v_noOfProductsSold INT;
    DECLARE v_noOfServicesSold INT DEFAULT 101;
    DECLARE v_noOfProductsReturned INT;
    DECLARE v_productSales DECIMAL(10,2);

    DECLARE v_nonProductSales DECIMAL(10,2);
    DECLARE v_totalDiscounts DECIMAL(10,2);
    DECLARE v_Returns DECIMAL(10,2);
    DECLARE v_TotalTax DECIMAL(10,2);
    DECLARE v_NetSales DECIMAL(10,2);
    DECLARE v_NoOfUnVoidedTransactions INT;
    DECLARE v_atvNet DECIMAL(10,2) DEFAULT 0;
    DECLARE v_atvGross DECIMAL(10,2) DEFAULT 0;
    DECLARE v_netCashSales DECIMAL(10,2);
    DECLARE v_netCardSales DECIMAL(10,2);
    DECLARE v_openingAmount DECIMAL(10,2);
    DECLARE v_cashAdditions DECIMAL(10,2);
    DECLARE v_cashRemovals DECIMAL(10,2);
    DECLARE v_expectedCash DECIMAL(10,2);
	DECLARE v_voidedTransactionsAmount DECIMAL(10,2);
	  	DECLARE v_totalCostAmount DECIMAL(10,2);
	  DECLARE v_totalSales DECIMAL(10,2);
	  

    
    SET v_noOfTransactions = IFNULL((SELECT COUNT(OrderId) FROM order_header where isVoided = 0 and SessionId = p_SessionId), 0);
    SET v_noOfVoidedTransactions = IFNULL((SELECT COUNT(OrderId) FROM order_header WHERE isVoided = 1 AND SessionId = p_SessionId), 0);
   
    SET v_voidedTransactionsAmount = IFNULL((SELECT SUM(osp.GrandTotal) FROM order_header oh 
    INNER JOIN order_summary_processed osp ON oh.OrderId = osp.OrderId 
    WHERE isVoided = 1 AND SessionId = p_SessionId), 0);
    
    
       SET v_totalCostAmount = IFNULL((SELECT SUM(od.unitCost * od.qty) FROM order_header oh 
    INNER JOIN order_details od ON oh.OrderId = od.OrderId 
       WHERE isVoided = 0 AND od.IsReturned = 1 AND SessionId = p_SessionId), 0);

    
    SET v_NoOfUnVoidedTransactions = v_noOfTransactions - v_noOfVoidedTransactions;
    SET v_noOfCustomers = IFNULL((SELECT COUNT(DISTINCT c.contactID) FROM contact c INNER JOIN order_header oh ON c.contactID = oh.customerId WHERE isVoided = 0 AND SessionId = p_SessionId), 0);
    SET v_noOfProductsSold = IFNULL((SELECT SUM(od.Qty) FROM order_header oh INNER JOIN order_details od ON oh.OrderId = od.OrderId WHERE isVoided = 0 AND SessionId = p_SessionId), 0);
    SET v_noOfProductsReturned = IFNULL((SELECT -1 * SUM(od.Qty) FROM order_header oh INNER JOIN order_details od ON oh.OrderId = od.OrderId WHERE isVoided = 0 AND od.IsReturned = 1 AND SessionId = p_SessionId), 0);
   
    
     SET v_totalSales = IFNULL((SELECT SUM(osp.GrossAmount_total) FROM order_header oh 
    INNER JOIN order_summary_processed osp ON oh.OrderId = osp.OrderId 
    WHERE isVoided = 0 AND SessionId = p_SessionId), 0);
   
    
    SET v_productSales = IFNULL((SELECT SUM(osp.productGrossAmount_total) FROM order_header oh 
    INNER JOIN order_summary_processed osp ON oh.OrderId = osp.OrderId 
    WHERE isVoided = 0 AND SessionId = p_SessionId), 0);
   
    SET v_nonProductSales = IFNULL((SELECT SUM(osp.nonProductGrossAmount_total) FROM order_header oh 
    INNER JOIN order_summary_processed osp ON oh.OrderId = osp.OrderId 
    WHERE isVoided = 0 AND SessionId = p_SessionId), 0);
 
    
    SET v_totalDiscounts = IFNULL((SELECT SUM(osp.All_DiscountAmount_total) FROM order_header oh INNER JOIN order_summary_processed osp ON oh.OrderId = osp.OrderId WHERE isVoided = 0 AND SessionId = p_SessionId), 0);
    SET v_Returns = IFNULL((SELECT -1 * SUM(od.NetAmount) FROM order_header oh INNER JOIN order_details od ON oh.OrderId = od.OrderId WHERE isVoided = 0 AND od.IsReturned = 1 AND SessionId = p_SessionId), 0);
    SET v_TotalTax = IFNULL((SELECT SUM(osp.LineTaxAmount_total) FROM order_header oh INNER JOIN order_summary_processed osp ON oh.OrderId = osp.OrderId WHERE isVoided = 0 AND SessionId = p_SessionId), 0);
    SET v_NetSales = IFNULL((SELECT SUM(osp.GrandTotal) FROM order_header oh INNER JOIN order_summary_processed osp ON oh.OrderId = osp.OrderId WHERE isVoided = 0 AND SessionId = p_SessionId), 0);

    
    IF v_NetSales != 0 AND v_NoOfUnVoidedTransactions != 0 THEN
        SET v_atvNet = v_NetSales / v_NoOfUnVoidedTransactions;
    END IF;

    IF v_productSales != 0 AND v_NoOfUnVoidedTransactions != 0 THEN
        SET v_atvGross = v_productSales / v_NoOfUnVoidedTransactions;
    END IF;

    
    SET v_netCashSales = IFNULL((SELECT SUM(op.amountPaid - cp.BalanceAmount) FROM order_header oh INNER JOIN order_payments op ON oh.OrderId = op.OrderId INNER JOIN cash_payments cp ON op.paymentId = cp.paymentId WHERE isVoided = 0 AND op.MethodId = 1 AND SessionId = p_SessionId), 0);
    SET v_netCardSales = IFNULL((SELECT SUM(amountPaid) FROM order_header oh INNER JOIN order_payments op ON oh.OrderId = op.OrderId WHERE isVoided = 0 AND op.MethodId = 2 AND SessionId = p_SessionId), 0);
    SET v_openingAmount = IFNULL((SELECT openingCash FROM session_period WHERE SessionId = p_SessionId), 0);
    SET v_cashAdditions = IFNULL((SELECT cashAdditions FROM session_period WHERE SessionId = p_SessionId), 0);
    SET v_cashRemovals = IFNULL((SELECT cashRemovals FROM session_period WHERE SessionId = p_SessionId), 0);
    SET v_expectedCash = v_openingAmount + v_netCashSales + v_cashAdditions - v_cashRemovals;

   
 
     delete from session_details_summary_temp where sessionId=p_SessionId;
    
     INSERT INTO session_details_summary_temp
(noOfTransactions, noOfVoidedTransactions, voidedTransactionsAmount, totalCostAmount, noOfCustomers,
noOfProductsSold, noOfProductsReturned, noOfServices, noOfServicesReturned, productSales, nonProductSales, totalSales, totalDiscounts, 
totalReturns, totalRefunds, totalTax, netSales, netCashSales, netCardSales, averageTransactionValueNet, averageTransactionValueGross,
openingCashAmount, cashAdditions, cashRemovals, expectedCash, noOfUnVoidedTransactions, storeId, sessionId)

VALUES (
        v_noOfTransactions, v_noOfVoidedTransactions,v_voidedTransactionsAmount,v_totalCostAmount, v_noOfCustomers,
        v_noOfProductsSold, v_noOfProductsReturned, 10, 10,
        v_productSales, v_nonProductSales, v_totalSales,v_totalDiscounts, 
        v_Returns, 10, v_TotalTax, v_NetSales, v_netCashSales, v_netCardSales, v_atvNet, v_atvGross,
        v_openingAmount, v_cashAdditions, v_cashRemovals, v_expectedCash,
        v_NoOfUnVoidedTransactions,null,p_SessionId
    );



set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sessionDetails_Select_by_sessionId_and_storeId_toRemove` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sessionDetails_Select_by_sessionId_and_storeId_toRemove`(
    IN p_sessionId INT,
    IN p_storeId INT,
    
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

    DECLARE v_noOfTransactions INT;
    DECLARE v_noOfVoidedTransactions INT;
    DECLARE v_noOfCustomers INT;
    DECLARE v_noOfProductsSold INT;
    DECLARE v_noOfServicesSold INT DEFAULT 101;
    DECLARE v_noOfProductsReturned INT;
    DECLARE v_productSales DECIMAL(10,2);
    DECLARE v_serviceSales DECIMAL(10,2) DEFAULT 1001;
    DECLARE v_totalDiscounts DECIMAL(10,2);
    DECLARE v_Returns DECIMAL(10,2);
    DECLARE v_TotalTax DECIMAL(10,2);
    DECLARE v_NetSales DECIMAL(10,2);
    DECLARE v_NoOfUnVoidedTransactions INT;
    DECLARE v_atvNet DECIMAL(10,2) DEFAULT 0;
    DECLARE v_atvGross DECIMAL(10,2) DEFAULT 0;
    DECLARE v_netCashSales DECIMAL(10,2);
    DECLARE v_netCardSales DECIMAL(10,2);
    DECLARE v_openingAmount DECIMAL(10,2);
    DECLARE v_cashAdditions DECIMAL(10,2);
    DECLARE v_cashRemovals DECIMAL(10,2);
    DECLARE v_expectedCash DECIMAL(10,2);

    
    SET v_noOfTransactions = IFNULL((SELECT COUNT(OrderId) FROM order_header WHERE sessionId = p_sessionId AND storeId = p_storeId), 0);
    SET v_noOfVoidedTransactions = IFNULL((SELECT COUNT(OrderId) FROM order_header WHERE isVoided = 1 AND sessionId = p_sessionId AND storeId = p_storeId), 0);
    SET v_NoOfUnVoidedTransactions = v_noOfTransactions - v_noOfVoidedTransactions;
    SET v_noOfCustomers = IFNULL((SELECT COUNT(DISTINCT c.contactID) FROM contact c INNER JOIN order_header oh ON c.contactID = oh.customerId WHERE isVoided = 0 AND sessionId = p_sessionId AND storeId = p_storeId), 0);
    SET v_noOfProductsSold = IFNULL((SELECT SUM(od.Qty) FROM order_header oh INNER JOIN order_details od ON oh.OrderId = od.OrderId WHERE isVoided = 0 AND sessionId = p_sessionId AND storeId = p_storeId), 0);
    SET v_noOfProductsReturned = IFNULL((SELECT -1 * SUM(od.Qty) FROM order_header oh INNER JOIN order_details od ON oh.OrderId = od.OrderId WHERE isVoided = 0 AND od.IsReturned = 1 AND sessionId = p_sessionId AND storeId = p_storeId), 0);
    SET v_productSales = IFNULL((SELECT SUM(osp.GrossAmount_total) FROM order_header oh INNER JOIN order_summary_processed osp ON oh.OrderId = osp.OrderId WHERE isVoided = 0 AND sessionId = p_sessionId AND storeId = p_storeId), 0);
    SET v_totalDiscounts = IFNULL((SELECT SUM(osp.All_DiscountAmount_total) FROM order_header oh INNER JOIN order_summary_processed osp ON oh.OrderId = osp.OrderId WHERE isVoided = 0 AND sessionId = p_sessionId AND storeId = p_storeId), 0);
    SET v_Returns = IFNULL((SELECT -1 * SUM(od.NetAmount) FROM order_header oh INNER JOIN order_details od ON oh.OrderId = od.OrderId WHERE isVoided = 0 AND od.IsReturned = 1 AND sessionId = p_sessionId AND storeId = p_storeId), 0);
    SET v_TotalTax = IFNULL((SELECT SUM(osp.LineTaxAmount_total + osp.Overall_TaxAmount) FROM order_header oh INNER JOIN order_summary_processed osp ON oh.OrderId = osp.OrderId WHERE isVoided = 0 AND sessionId = p_sessionId AND storeId = p_storeId), 0);
    SET v_NetSales = IFNULL((SELECT SUM(osp.GrandTotal) FROM order_header oh INNER JOIN order_summary_processed osp ON oh.OrderId = osp.OrderId WHERE isVoided = 0 AND sessionId = p_sessionId AND storeId = p_storeId), 0);

    
    IF v_NetSales != 0 AND v_NoOfUnVoidedTransactions != 0 THEN
        SET v_atvNet = v_NetSales / v_NoOfUnVoidedTransactions;
    END IF;

    IF v_productSales != 0 AND v_NoOfUnVoidedTransactions != 0 THEN
        SET v_atvGross = v_productSales / v_NoOfUnVoidedTransactions;
    END IF;

    
    SET v_netCashSales = IFNULL((SELECT SUM(op.amountPaid - cp.BalanceAmount) FROM order_header oh INNER JOIN order_payments op ON oh.OrderId = op.OrderId INNER JOIN cash_payments cp ON op.paymentId = cp.paymentId WHERE isVoided = 0 AND op.MethodId = 1 AND sessionId = p_sessionId AND oh.storeId = p_storeId), 0);
    SET v_netCardSales = IFNULL((SELECT SUM(amountPaid) FROM order_header oh INNER JOIN order_payments op ON oh.OrderId = op.OrderId WHERE isVoided = 0 AND op.MethodId = 2 AND oh.sessionId = p_sessionId AND oh.storeId = p_storeId), 0);
    SET v_openingAmount = IFNULL((SELECT openingCash FROM session_period sp  INNER join order_header oh on sp.sessionId = oh.sessionId WHERE oh.sessionId = p_sessionId AND oh.storeId = p_storeId), 0);
    SET v_cashAdditions = IFNULL((SELECT cashAdditions FROM session_period  sp  INNER join order_header oh on sp.sessionId = oh.sessionId WHERE oh.sessionId = p_sessionId AND oh.storeId = p_storeId), 0);
    SET v_cashRemovals = IFNULL((SELECT cashRemovals FROM session_period  sp  INNER join order_header oh on sp.sessionId = oh.sessionId WHERE oh.sessionId = p_sessionId AND oh.storeId = p_storeId), 0);
    SET v_expectedCash = v_openingAmount + v_netCashSales + v_cashAdditions - v_cashRemovals;

  
    TRUNCATE TABLE session_details_summary_temp;

    
    INSERT INTO session_details_summary_temp VALUES (
        v_noOfTransactions, v_noOfVoidedTransactions, v_noOfCustomers,
        v_noOfProductsSold, v_noOfProductsReturned, 10, 10,
        v_productSales, 10, v_productSales,
        v_totalDiscounts, v_Returns, 10, v_TotalTax, v_NetSales,
        v_netCashSales, v_netCardSales, v_atvNet, v_atvGross,
        v_openingAmount, v_cashAdditions, v_cashRemovals, v_expectedCash,
        v_NoOfUnVoidedTransactions
    );

    SET p_ResponseStatus='success';
    SET p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SessionEndDetails_Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SessionEndDetails_Select`(
	IN p_SessionId INT,
    
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

	

	call  sessionDetails_Select (p_SessionId,p_ResponseStatus,p_OutputMessage);
	
	SELECT noOfTransactions, noOfVoidedTransactions,voidedTransactionsAmount,totalCostAmount, noOfCustomers, noOfProductsSold, noOfProductsReturned,
	noOfServices, noOfServicesReturned, productSales, nonProductSales, totalSales, totalDiscounts, totalReturns, 
	totalRefunds,totalTax, netSales, netCashSales, netCardSales, averageTransactionValueNet, 
	averageTransactionValueGross,openingCashAmount, cashAdditions, cashRemovals, expectedCash, 
	noOfUnVoidedTransactions FROM session_details_summary_temp where sessionId=p_SessionId;
	


set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sessionMismatchCheck` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sessionMismatchCheck`(
	IN p_SessionId INT,
    in p_TerminalId int,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
    out p_isSessionMismatched bit
)
sp: BEGIN

	declare v_sessionIdFromDb int;
	set p_isSessionMismatched=0;

	set v_sessionIdFromDb=(select max(sessionId) from session_period where terminalId=p_TerminalId and isSessionEnded=0);
		if v_sessionIdFromDb!=p_SessionID then
		set p_isSessionMismatched=1;
	end if; 
    
	


set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Session_End` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Session_End`(
    IN p_sessionId INT,
    IN p_actualCash DECIMAL(10, 2),
    IN p_short DECIMAL(10, 2),
    IN p_IsConfirm BIT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

  
    

   	  DECLARE v_noOfTransactions INT;
	   DECLARE v_noOfVoidedTransactions INT;
	    DECLARE v_noOfCustomers INT;
	     DECLARE v_noOfProductsSold INT;
	        DECLARE v_noOfProductsReturned INT;
	       
	     DECLARE v_productSales decimal(10,2);
	       DECLARE v_totalDiscounts decimal(10,2);
	       DECLARE v_Returns decimal(10,2);
	      DECLARE v_Refunds decimal(10,2);
	      DECLARE v_TotalTax decimal(10,2);
	         DECLARE v_NetSales decimal(10,2);
	        
	        DECLARE v_NoOfUnVoidedTransactions decimal(10,2);
	       DECLARE v_atvNet decimal(10,2);
	       DECLARE v_atvGross decimal(10,2);
	       
	            DECLARE v_netCashSales decimal(10,2);
	                DECLARE v_netCardSales decimal(10,2);
	               
 DECLARE v_openingAmount decimal(10,2);
 DECLARE v_cashAdditions decimal(10,2);
 DECLARE v_cashRemovals decimal(10,2);
 DECLARE v_expectedCash decimal(10,2);         
	
  
    START TRANSACTION;
   
    
    IF NOT EXISTS (SELECT * FROM session_period WHERE sessionId = p_sessionId) THEN
        SET p_OutputMessage = CONCAT('Invlaid session: ', p_sessionId);
        SET p_ResponseStatus = 'failed';
        LEAVE sp;
    END IF;

    
    IF EXISTS (SELECT * FROM session_period where isSessionEnded=1 and sessionId = p_sessionId) THEN
        SET p_OutputMessage = CONCAT('The session: ', p_sessionId, ' is already closed');
        SET p_ResponseStatus = 'failed';
        LEAVE sp;
    END IF;



	
set v_noOfTransactions=(SELECT count(OrderId) FROM order_header where SessionId=p_sessionId);


set v_noOfVoidedTransactions=(SELECT count(oh.OrderId) FROM order_header as oh  where isVoided=1 and SessionId=p_sessionId);

set v_NoOfUnVoidedTransactions=v_noOfTransactions-v_noOfVoidedTransactions;


set v_noOfCustomers=(SELECT count(distinct c.contactID) from contact c inner join order_header as oh on c.contactID=oh.customerId
where isVoided=0 and SessionId=p_sessionId);



set v_noOfProductsSold=(SELECT sum(od.Qty) from order_header as oh inner join order_details od  on oh.OrderId =od.OrderId
where isVoided=0 and SessionId=p_sessionId);


set v_noOfProductsReturned=(SELECT -1*sum(od.Qty) from order_header as oh inner join order_details od  on oh.OrderId =od.OrderId
where isVoided=0 and od.IsReturned=1 and SessionId=p_sessionId);


set v_productSales=(SELECT sum(osp.GrossAmount_total) from order_header as oh inner join order_summary_processed osp   on oh.OrderId =osp.OrderId
where isVoided=0  and SessionId=p_sessionId);


set v_totalDiscounts=(SELECT sum(osp.All_DiscountAmount_total) from order_header as oh inner join order_summary_processed osp   on oh.OrderId =osp.OrderId
where isVoided=0  and SessionId=p_sessionId);



set v_Returns=(SELECT -1*sum(od.NetAmount) from order_header as oh inner join order_details od  on oh.OrderId =od.OrderId
where isVoided=0 and od.IsReturned=1 and SessionId=p_sessionId);

set v_TotalTax=(SELECT sum(osp.LineTaxAmount_total) from order_header as oh inner join order_summary_processed osp   on oh.OrderId =osp.OrderId
where isVoided=0  and SessionId=p_sessionId);


set v_NetSales=(SELECT sum(osp.GrandTotal) from order_header as oh inner join order_summary_processed osp   on oh.OrderId =osp.OrderId
where isVoided=0  and SessionId=p_sessionId);

set v_atvNet=v_NetSales/v_NoOfUnVoidedTransactions;
set v_atvGross=v_productSales/v_NoOfUnVoidedTransactions;


set v_netCashSales=(select sum(amountPaid) from order_header oh inner join order_payments op on oh.OrderId =op.OrderId
where isVoided=0 and op.MethodId=1  and SessionId=p_sessionId);

set v_netCardSales=(select sum(amountPaid) from order_header oh inner join order_payments op on oh.OrderId =op.OrderId
where isVoided=0 and op.MethodId=2  and SessionId=p_sessionId);

set v_openingAmount=(select openingCash from session_period where SessionId=p_sessionId);
set v_cashAdditions=(select cashAdditions from session_period where SessionId=p_sessionId);
set v_cashRemovals=(select cashRemovals from session_period where SessionId=p_sessionId);

set v_expectedCash=v_openingAmount+v_netCashSales+v_cashAdditions-v_cashRemovals;

   

UPDATE session_period
SET 
    noOfTransactions = v_noOfTransactions,
    noOfVoidedTransactions = v_noOfVoidedTransactions,
    noOfCustomers = v_noOfCustomers,
    noOfProductsSold = v_noOfProductsSold,
    noOfProductsReturned = v_noOfProductsReturned,
    noOfServices = 0,
    noOfServicesReturned = 0,
    productSales = v_productSales,
    serviceFees = 0,
    totalSales = v_productSales,
    totalDiscounts = v_totalDiscounts,
    totalReturns = v_Returns,
    totalRefunds = v_Refunds,
    totalTax = v_TotalTax,
    netSales = v_NetSales,
    netCashSales = v_netCashSales,
    netCardSales = v_netCardSales,
    averageTransactionValueNet = v_atvNet,
    averageTransactionValueGross = v_atvGross,
    openingcashAmount = v_openingAmount,
    cashAdditions = v_cashAdditions,
    cashRemovals = v_cashRemovals,
    expectedCash = v_expectedCash,
    userLogId = 1,
    isSessionEnded = 1,
    sessionEndDate_UTC = utc_timestamp(),
        sessionEndDate_ServerTime = current_timestamp()
WHERE sessionId = p_sessionId;



    
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = CONCAT('Session: ', p_sessionId, ' ended successfully.');

    
    COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Session_get_latest_Session_details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Session_get_latest_Session_details`(
   IN p_TerminalId INT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
BEGIN

	if not exists 
	(SELECT 1
FROM 
    session_period ssd 
WHERE 
    terminalId = p_TerminalId) then 
    select true as isSessionEnded;
else


SELECT 
    sessionName,
    openingCash,
    sessionId,
    sessionStartDate_UTC,
    CASE WHEN isSessionEnded = 1 THEN TRUE ELSE FALSE END AS isSessionEnded,
    userLogId,
    CreatedDate_UTC,
    CreatedDate_ServerTime,
    CashAdditions,
    CashRemovals
FROM 
    session_period ssd 
WHERE 
    terminalId = p_TerminalId 
ORDER BY 
    sessionId DESC 
LIMIT 1;

end if;


set p_ResponseStatus='success';
set p_OutputMessage='loaded';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Session_Start` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Session_Start`(
    IN p_sessionName VARCHAR(100),
    IN p_terminalId INT,
    IN p_openingCash DECIMAL(10, 2),
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    IN p_IsConfirm BIT,
    
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
    OUT p_sessionId int
)
sp: BEGIN

    START TRANSACTION;
    

       
	if not exists (select * from terminal where terminalId=p_terminalId) then
		set p_OutputMessage=concat('Invalid terminal id :',p_terminalId);
        set p_ResponseStatus='failed';
        set p_sessionId=p_sessionId;
        leave sp;
end if;
   

    
set @_maxSessionIdOfTerminalId=(select max(sessionId) from session_period where terminalId=p_terminalId);
   
   if exists (select * from session_period where isSessionEnded=0 and sessionId=@_maxSessionIdOfTerminalId) then
		set p_OutputMessage=concat('The current session is already open for terminal :',p_terminalId);
        set p_ResponseStatus='failed';
        set p_sessionId=@_maxSessionIdOfTerminalId;
        leave sp;
end if;


    
INSERT INTO session_period(`sessionName`,`openingCash`,`userLogId`,DC_systemInfoId,terminalId)
values (p_sessionName,p_openingCash,p_userLogId,0,p_terminalId);

SET p_sessionId = LAST_INSERT_ID();

	SET p_ResponseStatus = 'success';
	SET p_OutputMessage = 'Session created successfully.';
    COMMIT;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spchild` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spchild`()
BEGIN
   DECLARE result INT;
    DECLARE err_message VARCHAR(255);

    
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
        BEGIN
            
            GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
            
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
        END;

    
    SET result = 10 / 0;  
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spparent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spparent`()
BEGIN
     
    DECLARE err_message VARCHAR(255);
   
    
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
        BEGIN
            
            GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
            
           set err_message=concat('parent:',err_message);
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =err_message;
        END;

    
    CALL spchild();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_fast_moving_items` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`remoteuser`@`%` PROCEDURE `sp_update_fast_moving_items`(
    IN p_product_id BIGINT,
    IN p_store_id BIGINT,
    IN p_terminal_id BIGINT,
    IN p_quantity INT,
    IN p_order_timestamp DATETIME
)
BEGIN
    DECLARE v_exists INT DEFAULT 0;
    DECLARE v_rank_score DECIMAL(12,6);

    
    START TRANSACTION;

    
    SELECT COUNT(*) INTO v_exists
    FROM fast_moving_items
    WHERE store_id = p_store_id
      AND product_id = p_product_id
      AND (terminal_id = p_terminal_id OR (terminal_id IS NULL AND p_terminal_id IS NULL));

    IF v_exists > 0 THEN
        
        UPDATE fast_moving_items
        SET sales_count = sales_count + p_quantity,
            last_sold_at = p_order_timestamp,
            updated_at = CURRENT_TIMESTAMP
        WHERE store_id = p_store_id
          AND product_id = p_product_id
          AND (terminal_id = p_terminal_id OR (terminal_id IS NULL AND p_terminal_id IS NULL));
    ELSE
        
        INSERT INTO fast_moving_items (
            product_id, store_id, terminal_id, sales_count, last_sold_at
        ) VALUES (
            p_product_id, p_store_id, p_terminal_id, p_quantity, p_order_timestamp
        );
    END IF;

    
    
    
    SET v_rank_score = p_quantity;

    
    IF TIMESTAMPDIFF(HOUR, p_order_timestamp, NOW()) <= 1 THEN
        SET v_rank_score = v_rank_score * 1.5;
    ELSEIF TIMESTAMPDIFF(HOUR, p_order_timestamp, NOW()) <= 24 THEN
        SET v_rank_score = v_rank_score * 1.2;
    END IF;

    






    UPDATE fast_moving_items fmi
JOIN (
    SELECT id,
           @rank := @rank + 1 AS new_rank
    FROM fast_moving_items
    WHERE store_id = p_store_id
      AND terminal_id = p_terminal_id   
    ORDER BY rank_score DESC, sales_count DESC
) ranked ON fmi.id = ranked.id
SET fmi.rank_position = ranked.new_rank;

    
    
    SET @rank = 0;
    UPDATE fast_moving_items fmi
    JOIN (
        SELECT id,
               @rank := @rank + 1 AS new_rank
        FROM fast_moving_items
        WHERE store_id = p_store_id
          AND (terminal_id = p_terminal_id OR (terminal_id IS NULL AND p_terminal_id IS NULL))
        ORDER BY rank_score DESC, sales_count DESC, last_sold_at DESC
    ) ranked ON fmi.id = ranked.id
    SET fmi.rank_position = ranked.new_rank;

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `StockEntry_full_Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `StockEntry_full_Select`(
  in p_stockEntryId int,
    IN p_UserLogID INT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

SELECT 
    SUM(sd.qtyAdded * sd.unitCost) AS total,
    s.stockEntryId,
    s.stockReceivedDate,
    s.stockEntryRefNo,
s.supplierBillNo,
    c.contactCode AS SupplierCode,
    c.contactName AS supplierName,
    s.CreatedDate_UTC,
    CAST(s.isVoided AS UNSIGNED) AS isVoided,
     ur.displayName
FROM 
    stockentry s
INNER JOIN contact c ON s.supplierId = c.contactId
INNER JOIN  stockentrydetails sd ON s.stockEntryId = sd.stockEntryId
inner join user_registration ur on s.userId=ur.userId 
where  s.stockEntryId=p_stockEntryId
  GROUP BY s.stockEntryId, s.stockReceivedDate, s.stockEntryRefNo,s.supplierBillNo, c.contactCode,
  c.contactName, s.CreatedDate_UTC, s.isVoided 
 order by s.createdDate_UTC desc;


 SELECT 
    s.stockEntryDetailsId,
    s.stockEntryId,
    s.qtyAdded,
    s.unitCost,
    s.unitPrice,
    s.batchNo,
    p.ProductNo AS productNo,
    mu.MeasurementUnitName AS measurementUnitName,
    p.ProductName AS productName,
    CONCAT(
        p.ProductName, 
        IFNULL(
            CONCAT(' - ', GROUP_CONCAT(svpd.variationValue ORDER BY svpd.variationProductDetail_id SEPARATOR '|')),
            ''
        )
    ) AS detailedProductName,
   vp.SKU AS sku,
    s.expirationDate,
    s.productionDate
FROM 
    stockentrydetails s
INNER JOIN 
    all_product sap ON s.allProductId = sap.allProductId
LEFT JOIN 
    variation_product vp ON sap.variationProductId = vp.variationProductId
LEFT JOIN 
    variation_product_detail svpd ON vp.variationProductId = svpd.variationProductId
LEFT JOIN 
    product p ON p.ProductId = vp.productId
LEFT JOIN 
    measurement_unit mu ON p.MeasurementUnitId = mu.MeasurementUnitId
 WHERE   s.stockEntryId = p_stockEntryId
GROUP BY 
    sap.allProductId;

       
   
set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `StockEntry_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `StockEntry_Insert`(
  
   IN p_supplierId INT,
    IN p_StoreId INT,
  IN  p_stockReceivedDate date,
 IN p_amountPaid decimal(10,2),
 in p_remark VARCHAR(100),
 in p_supplierBillNo varchar(50),
     
    IN p_orderList_json JSON,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    IN p_IsConfirm BIT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
    OUT p_StockEntryId int
)
sp: BEGIN

DECLARE v_systemInfoId INT;

    DECLARE v_DC_StoreId INT;
   
   DECLARE v_orderDiscount JSON; 
    DECLARE v_orderId INT;
    DECLARE v_orderNo VARCHAR(50);

 DECLARE noOfItemsInOrderList int;
DECLARE i_orderList int default 0;

 DECLARE noOfItemsInPaymentList int;
DECLARE i_paymentList int default 0;

 DECLARE _totalPaid decimal(10,2) default 0;

declare v_allProductId varchar(11);

declare v_unitPrice varchar(11);
declare v_unitCost varchar(11);

declare v_batchNo varchar(11);

declare v_qty decimal(10,2);

declare o_grossAmount decimal(10,2);
declare o_netAmount decimal(10,2);
  
   
   declare v_pre_OrderDetail_Qty decimal(10,2);
      declare v_pre_OrderDetail_customer int;
    
	declare v_pre_OrderDetail_productId int;
    
    

	declare v_totalItems_tblPaymentList int;


DECLARE v_amountPaid DECIMAL(10, 2);

  DECLARE v_paymentId INT;
 
DECLARE v_totalItems_tblOrderList INT;

    DECLARE v_orderDetailId int;


declare v_DC_CompanyId int;
declare v_CompanyId int;

declare v_UserId int;
declare v_DC_UserId int;

declare v_UTC_offset varchar(50);
declare v_CountryId int;
declare v_CurrencyId int;
declare v_PrimaryLanguageId int;
declare v_TaxRate DECIMAL(10, 2);

declare v_productTypeId int;

declare  v_measurementUnitId int;

declare v_stockEntryDetailsId int;
declare v_inventoryId int;

DECLARE po_isStockTracked BIT;


declare v_productionDate date;
declare v_expirationDate date;

   DECLARE v_batchQueueNo INT;



    DECLARE inputUserLogId INT;
    DECLARE outputUserId INT;
    DECLARE outputLoginTime_UTC DATETIME;
    DECLARE outputLoginStatus VARCHAR(10);
    DECLARE outputIpAddress VARCHAR(45);
    DECLARE outputUserAgent VARCHAR(255);
    DECLARE outputSessionId VARCHAR(255);
    DECLARE outputAdditionalInfo TEXT;
    DECLARE outputGMT_Offset VARCHAR(10);
    DECLARE outputCreatedDate_UTC DATETIME;
    DECLARE outputCreatedDate_ServerTime DATETIME;
       
         DECLARE err_message VARCHAR(255);
   

     DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        
        ROLLBACK;
        
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        
        SET err_message = CONCAT('Parent error: ', err_message);
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;

 	
    START TRANSACTION;

  
    SET inputUserLogId = p_UserLogID;

    
    CALL getUserLogDetailsByUserLogId(inputUserLogId, outputUserId, outputLoginTime_UTC, outputLoginStatus, outputIpAddress, outputUserAgent, outputSessionId,
        outputAdditionalInfo, outputGMT_Offset, outputCreatedDate_UTC, outputCreatedDate_ServerTime);
        
       set v_UserId=outputUserId;
  
      
      
      IF p_StoreId is null THEN
	        SET p_ResponseStatus = 'failed';
	        SET p_OutputMessage = concat('p_StoreId is required');
	        leave sp;
		END IF; 
	
	
	
	
	

if p_supplierId is not null then
 if not exists (select * from contact c where contactTypeId in (2,3) and contactId=p_supplierId) then
	set p_ResponseStatus='failed';
set p_OutputMessage=concat('Invalid supplier Id : ',p_supplierId);
leave sp;
end if;
end if;

    
    


    SET noOfItemsInOrderList = JSON_LENGTH(p_orderList_json);

   DROP TEMPORARY TABLE IF EXISTS tblOrderList;
   create temporary table tblOrderList(allProductId int,productTypeId int,unitPrice decimal(10,2),unitCost decimal(10,2),qty decimal(10,2),isDiscountExists bit,
  discountTypeId int, discountValue decimal(10,2),discountReasonId int,discountRemark varchar(500),lineDiscountAmount decimal(10,2),
  lineTaxAmount decimal(10,2),lineTaxRate decimal(10,2),grossAmount decimal(10,2),netAmount decimal(10,2),
  isReturned BIT(1),pre_orderDetailId_return int,productionDate date,expirationDate date);


	 

while i_orderList < noOfItemsInOrderList do
set v_allProductId=JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].allProductId')));

set v_unitPrice=JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].unitPrice')));
set v_unitCost=JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].unitCost')));

set v_qty=JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].qty')));

set v_productionDate=JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].productionDate')));
set v_expirationDate=JSON_UNQUOTE(JSON_EXTRACT(p_orderList_json, CONCAT('$[', i_orderList, '].expirationDate')));

call _getProductTypeIdByAllProductId(v_allProductId,v_productTypeId);

select v_productTypeId as v_productTypeId;

if not exists(select * from store_inventory_product sip where sip.allProductId=v_allProductId and storeId=p_StoreId)
 then 
 	set p_ResponseStatus='failed';
	set p_OutputMessage=concat('Invalid v_allProductId:',v_allProductId,' for store: ',p_StoreId);
	leave sp;
else
set v_inventoryId=(select inventoryId from store_inventory_product sip where sip.allProductId=v_allProductId and storeId=p_StoreId);

if v_inventoryId is null then
set p_ResponseStatus='failed';
set p_OutputMessage=concat('v_allProductId:',v_allProductId,' is not a stock tracked.');
	leave sp;
end if;

 end if;


if not exists (select * from all_product where allProductId=v_allProductId) then
	set p_ResponseStatus='failed';
	set p_OutputMessage=concat('Invalid v_allProductId : ',v_allProductId);
	leave sp;
end if;



 if not isNumeric(v_unitPrice) then
	set p_ResponseStatus='failed';
    set p_OutputMessage=concat('Invalid unitPrice : ',v_unitPrice);
    leave sp;
end if;

 if v_unitPrice<=0 then
	set p_ResponseStatus='failed';
    set p_OutputMessage=concat('UnitPrice can not be zero or less than zero: ');
    leave sp;
end if;

 if not isNumeric(v_qty) then
	set p_ResponseStatus='failed';
    set p_OutputMessage=concat('Invalid qty : ',v_qty);
    leave sp;
end if;

	if v_qty=0 then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('Qty can not be zero : ',v_qty);
		leave sp;
	end if;




	if v_qty<0 then
			set p_ResponseStatus='failed';
			set p_OutputMessage=concat('items should have positive qty: ');
			leave sp;
	end if;

if v_productTypeId=1 then 

if exists (select * from product p inner join all_product ap on p.productId=ap.singleProductId where isExpiringProduct=true and allProductId=v_allProductId) then
	if v_productionDate is null  or v_expirationDate is null then
set p_ResponseStatus='failed';
	set p_OutputMessage=concat('v_productionDate and v_expirationDate are required ');
	leave sp;
	end if;

end if;

end if;

if v_productTypeId=2 then 


select v_expirationDate as v_expirationDate,v_productionDate as v_productionDate;
if exists (
select * from product p 
	inner join variation_product vp on p.productId=vp.productId 
	inner join all_product ap on vp.variationProductId=ap.variationProductId
 	where isExpiringProduct=true and ap.allProductId=v_allProductId
) then
	if v_productionDate is null  or v_expirationDate is null then
set p_ResponseStatus='failed';
	set p_OutputMessage=concat('v_productionDate and v_expirationDate are required ');
	leave sp;
	end if;

end if;


end if;

if v_productTypeId=3 then 

if exists (select * from product p inner join all_product ap on p.productId=ap.comboProductId where isExpiringProduct=true and allProductId=v_allProductId) then
	if v_productionDate is null  or v_expirationDate is null then
set p_ResponseStatus='failed';
	set p_OutputMessage=concat('v_productionDate and v_expirationDate are required ');
	leave sp;
	end if;
end if;

end if;

select v_allProductId as v_allProductId;

 insert into tblOrderList(allProductId,productTypeId,unitPrice,unitCost,qty,grossAmount,
 netAmount,productionDate,expirationDate)
values (v_allProductId,v_productTypeId,v_unitPrice,v_unitCost,v_qty,o_grossAmount,
o_netAmount,v_productionDate,v_expirationDate);
 
        SET i_orderList = i_orderList + 1;
end while;


INSERT INTO stockentry
(supplierId, stockReceivedDate, storeId,supplierBillNo, UserLogId,userId)
VALUES(p_supplierId, p_stockReceivedDate, p_StoreId,p_supplierBillNo,p_UserLogID,v_UserId);

SET v_orderId = LAST_INSERT_ID();
SET v_orderNo = LPAD(v_orderId, 5, '0');

UPDATE `stockentry` SET `stockEntryRefNo` =v_orderNo WHERE `stockEntryId`=v_orderId;
  


set v_totalItems_tblOrderList=(select count(*) from tblOrderList);
while (0< v_totalItems_tblOrderList) do
select v_allProductId as v_allProductId;
set v_allProductId=(select allProductId from tblOrderList  limit 1);

set v_productTypeId=(select productTypeId from tblOrderList  limit 1);

set v_unitPrice=(select unitPrice from tblOrderList  limit 1);
set v_unitCost=(select unitCost from tblOrderList  limit 1);
set v_qty=(select qty from tblOrderList  limit 1);

set o_grossAmount=(select grossAmount from tblOrderList  limit 1);
set o_netAmount=(select netAmount from tblOrderList  limit 1);

set v_productionDate=(select productionDate from tblOrderList  limit 1);
set v_expirationDate=(select expirationDate from tblOrderList  limit 1);
set v_inventoryId=(select inventoryId from store_inventory_product sip where sip.allProductId=v_allProductId and storeId=p_StoreId);


if v_productTypeId=1 then 
	set v_measurementUnitId=(select MeasurementUnitId from product p 
	inner join all_product ap on p.productId=ap.singleProductId where allProductId=v_allProductId);
end if;

if v_productTypeId=2 then 
	set v_measurementUnitId=(select MeasurementUnitId from product p 
	inner join variation_product vp on p.productId=vp.productId 
	inner join all_product ap on vp.variationProductId=ap.variationProductId
 	where ap.allProductId=v_allProductId);
end if;

if v_productTypeId=3 then 
	set v_measurementUnitId=(select MeasurementUnitId from product p 
	inner join all_product ap on p.productId=ap.comboProductId where allProductId=v_allProductId);
end if;


INSERT INTO stockentrydetails(stockEntryId, allProductId, qtyAdded,
unitcost,productionDate,expirationDate)
VALUES(v_orderId, v_allProductId, v_qty,
v_unitCost,v_productionDate,v_expirationDate);

set v_stockEntryDetailsId =LAST_INSERT_ID();
SET v_batchNo = LPAD(v_stockEntryDetailsId, 5, '0');

update stockentrydetails set batchNo=v_batchNo where stockEntryDetailsId=v_stockEntryDetailsId;

set v_batchQueueNo=(select ifnull(max(batchQueueNumber),0) from non_serialized_item where inventoryId=v_inventoryId);
set v_batchQueueNo=v_batchQueueNo+1;

select v_inventoryId as v_inventoryId;

 INSERT INTO non_serialized_item
 (inventoryId, batchNumber, prodDate, expDate, StockQty, supplierId, batchQueueNumber, unitCost, taxPerc)
 VALUES( v_inventoryId, v_batchNo, v_productionDate, v_expirationDate, v_qty, p_supplierId, v_batchQueueNo, v_unitCost, 0);


	if v_qty is null  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('v_qty is null.');
	rollback;
		leave sp;
	end if;

	if v_allProductId is null  then
		set p_ResponseStatus='failed';
		set p_OutputMessage=concat('v_allProductId is null.');
	rollback;
		leave sp;
	end if;


 
delete  from tblOrderList limit 1;
set v_totalItems_tblOrderList=(select count(*) from tblOrderList);
end while;



INSERT INTO supplier_payments (stockEntryId, AmountPaid, remark)
VALUES(v_orderId,p_amountPaid,p_remark);



    set p_StockEntryId=v_orderId;
	SET p_ResponseStatus = 'success';
	SET p_OutputMessage = 'Added Successfully.';
    
     DROP TEMPORARY TABLE IF EXISTS tblOrderList;
     DROP TEMPORARY TABLE IF EXISTS tblPaymentList;
    COMMIT;
    

     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `StockEntry_Select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `StockEntry_Select`(
  in p_stockEntryId int,
in p_storeId int,
  IN p_stockEntryRefNo VARCHAR(50),
  
  IN p_OrderFromDate date,
   IN p_OrderToDate date,
   
    IN p_supplierId INT,
     IN p_supplierCode VARCHAR(50),
       IN p_suppliertName VARCHAR(100),
     
	IN p_Skip INT,
    IN p_Limit INT,
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
	OUT p_TotalRows INT
)
sp: BEGIN


DECLARE _PagingQuery VARCHAR(1000);
DECLARE _filter varchar(1000);


SET _filter = ' WHERE 1 = 1 ';

set _PagingQuery='';
IF p_Skip IS NOT NULL AND p_Limit IS NOT NULL THEN
    SET _PagingQuery = CONCAT(' LIMIT ', p_Skip, ', ', p_Limit);
    
ELSEIF p_Skip IS NOT NULL AND p_Limit IS NULL THEN
    SET p_ResponseStatus = 'invalid';
    SET p_OutputMessage = 'The _Limit parameter is not passed or set _Skip parameter to null for unlimited data.';
	leave sp;
    
ELSEIF p_Skip IS NULL AND p_Limit IS NOT NULL THEN
    SET p_ResponseStatus = 'invalid';
    SET p_OutputMessage = 'The _Skip parameter is not passed or set _Limit parameter to null for unlimited data.';
	leave sp;
END IF;

   IF p_stockEntryId IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND s.stockEntryId = ', p_stockEntryId);
        END IF;

        IF p_storeId IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND s.storeId = ', p_storeId);
        END IF;
        
        IF p_OrderFromDate IS NOT NULL and p_OrderToDate IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND s.CreatedDate_UTC between ''', p_OrderFromDate, ''' and ''',p_OrderToDate, '''');
       elseif p_OrderFromDate IS NOT NULL AND p_OrderToDate IS  NULL OR 
       p_OrderFromDate IS NULL AND p_OrderToDate IS NOT NULL THEN
          SET p_ResponseStatus = 'invalid';
		SET p_OutputMessage = 'You have to supply both fromDate and toDate';
		leave sp;
       END IF;
        
        
               IF p_stockEntryRefNo IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND s.stockEntryRefNo = ''', p_stockEntryRefNo, '''');
        END IF;
        
        
        IF p_supplierId IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND s.supplierId = ''', p_supplierId, '''');
        END IF;
        
          IF p_supplierCode IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND c.contactCode = ''', p_supplierCode, '''');
        END IF;
        
            IF p_suppliertName IS NOT NULL THEN
            SET _filter = CONCAT(_filter, ' AND c.contactName  LIKE ''%', p_suppliertName, '%''');
        END IF;
       
SET @_query = CONCAT('
              

SELECT 
    SUM(sd.qtyAdded * sd.unitCost) AS total,
    s.stockEntryId,
    s.stockReceivedDate,
    s.stockEntryRefNo,
s.supplierBillNo,
    c.contactCode AS SupplierCode,
    c.contactName AS supplierName,
    s.CreatedDate_UTC,
    CAST(s.isVoided AS UNSIGNED) AS isVoided
FROM 
    stockentry s
INNER JOIN 
    contact c ON s.supplierId = c.contactId
INNER JOIN 
    stockentrydetails sd ON s.stockEntryId = sd.stockEntryId



      ',_filter,
 ' GROUP BY s.stockEntryId, s.stockReceivedDate, s.stockEntryRefNo,s.supplierBillNo, c.contactCode, c.contactName, s.CreatedDate_UTC, s.isVoided', 
' order by s.createdDate_UTC desc ',_PagingQuery);

	
	PREPARE stmt FROM @_query;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;


    SET @queryTotal = CONCAT('SELECT COUNT(stockEntryId) INTO @totalRows from stockentry s ', _filter);
        
    PREPARE stmt FROM @queryTotal;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    
    SET p_TotalRows = @totalRows;

   
set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `StockEntry_void` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `StockEntry_void`(
  
   IN p_StockEntryId INT,
   in p_voiding_reason_id int,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

if exists(select * from stockentry where isVoided=true and stockEntryId=p_StockEntryId) then 
SET p_ResponseStatus = 'failed';
	SET p_OutputMessage = 'The Entry is already voided.';
leave sp;
end if;

	
update stockentry set isVoided=true where stockEntryId=p_StockEntryId;
	
INSERT INTO stock_entry_voided
( stockEntryId, voiding_reason_id) VALUES(p_StockEntryId,p_voiding_reason_id);




	SET p_ResponseStatus = 'success';
	SET p_OutputMessage = 'Voided Successfully.';
    
    COMMIT;
    

     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `stock_adjust` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `stock_adjust`(
    IN p_stockBatchId INT, 
    IN p_adjustedQty DECIMAL(10,2),
    IN p_adjustmentTypeId INT,
    IN p_adjustmentReasonId INT,
    IN p_adjustmentReasonOtherRemark VARCHAR(100),
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN
    DECLARE err_message VARCHAR(255);
    DECLARE currentStockQty DECIMAL(10,2);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;

    START TRANSACTION;

    
    IF p_adjustedQty <= 0 THEN
        SET p_OutputMessage = 'Adjusted quantity must be greater than zero';
        SET p_ResponseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;

    
    SELECT stockQty INTO currentStockQty
    FROM non_serialized_item
    WHERE stockBatchId = p_stockBatchId;

    
    IF currentStockQty IS NULL THEN
        SET p_OutputMessage = 'Invalid stockBatchId';
        SET p_ResponseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;

    
    INSERT INTO log_stock_adjustment (
        stockBatchId,
        adjustedQty,
        adjustmentTypeId,
        adjustmentReasonId,
        adjustmentReasonOtherRemark,
        CreatedDate,
        CreatedDate_UTC,
        existingStockQty
    ) VALUES (
        p_stockBatchId,
        p_adjustedQty,
        p_adjustmentTypeId,
        p_adjustmentReasonId,
        p_adjustmentReasonOtherRemark,
        CURRENT_TIMESTAMP(),
        UTC_TIMESTAMP(),
        currentStockQty
    );

    SET @_Id = LAST_INSERT_ID();

    
    UPDATE non_serialized_item
    SET stockQty = 
        CASE 
            WHEN p_adjustmentTypeId = 1 THEN stockQty + p_adjustedQty 
            WHEN p_adjustmentTypeId = 2 THEN stockQty - p_adjustedQty 
            ELSE stockQty 
        END
    WHERE stockBatchId = p_stockBatchId;

    
    IF @_Id IS NULL THEN
        SET p_OutputMessage = 'Stock adjustment insertion failed';
        SET p_ResponseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;

 
       
    CALL log_user_action(
        p_UserLogID,
        p_UTC_Offset,
        p_PageName,
      CONCAT('Stock adjustment confirmed for stockBatchId: ', p_stockBatchId, 
               ', adjustmentTypeId: ', p_adjustmentTypeId, 
               ', adjustedQty: ', p_adjustedQty, 
               ', existingStockQty: ', currentStockQty)
    );
   

    SET p_OutputMessage = 'Stock adjustment successful';
    SET p_ResponseStatus = 'success';

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `systemData_initialize` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `systemData_initialize`(
    IN p_storeName VARCHAR(50),
    IN p_terminalName VARCHAR(50),
    IN p_currencyId INT,
    IN p_timeZoneId INT,
    IN p_utcOffset INT,
    IN p_CountryCode VARCHAR(50),
    IN p_CountryName VARCHAR(50),
    IN p_languageId INT,
    IN p_companyName VARCHAR(50),
    IN p_Address VARCHAR(50),
    IN p_City VARCHAR(50),
    IN p_Province VARCHAR(50),
    IN p_emailAddress VARCHAR(50),
    IN p_tel1 VARCHAR(50),
    IN p_tel2 VARCHAR(50),
    IN p_userLogId INT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp:BEGIN
    DECLARE v_storeId INT DEFAULT NULL;
    DECLARE v_GeneratedStoreCode VARCHAR(50);
    DECLARE v_terminalId INT DEFAULT NULL;
    DECLARE v_companyId INT DEFAULT NULL;
    DECLARE v_existingStoreUserCount INT;
    DECLARE v_existingStoreTerminalCount INT;
    DECLARE v_existingStoreCompanyCount INT;
    DECLARE v_existingTerminalUserCount INT;
    DECLARE v_userId int;

    
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
    DECLARE v_sqlstate CHAR(5);
    DECLARE v_errno INT;
    DECLARE v_errmsg TEXT;

    GET DIAGNOSTICS CONDITION 1
        v_sqlstate = RETURNED_SQLSTATE,
        v_errno    = MYSQL_ERRNO,
        v_errmsg   = MESSAGE_TEXT;

    ROLLBACK;

  
    
    SET p_ResponseStatus = 'failed';
    SET p_OutputMessage = CONCAT(
        'Error [', v_errno, '] (', v_sqlstate, '): ', v_errmsg
    );
    
      select p_OutputMessage;
END;


    
    IF EXISTS (SELECT 1 FROM system_info) THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'System is already initialized.';
        LEAVE sp;
    END IF;

    
    START TRANSACTION;

    
      SELECT userId INTO v_userId FROM user_registration LIMIT 1;
        IF v_userId is null THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'User can not be found.';
        LEAVE sp;
    END IF;
    
    
    
    SELECT StoreId INTO v_storeId FROM store LIMIT 1;

    IF v_storeId IS NULL THEN
        INSERT INTO store
        (StoreName, ModifiedDate_UTC, ModifiedDate_ServerTime,
         Address, City, Province, emailAddress, tel1, tel2)
        VALUES
        (p_storeName, UTC_TIMESTAMP(), CURRENT_TIMESTAMP(),
         p_Address, p_City, p_Province, p_emailAddress, p_tel1, p_tel2);

        SET v_storeId = LAST_INSERT_ID();
        SET v_GeneratedStoreCode = CONCAT('S', LPAD(v_storeId, 4, '0'));

        UPDATE store SET StoreCode = v_GeneratedStoreCode WHERE storeId = v_storeId;
    END IF;

    
    SELECT COUNT(*) INTO v_existingStoreUserCount FROM user_store;
    IF v_existingStoreUserCount = 0 THEN
        INSERT INTO user_store (userId, storeId)
        VALUES (v_userId, v_storeId);
    END IF;

    
    SELECT TerminalId INTO v_terminalId FROM terminal LIMIT 1;
    IF v_terminalId IS NULL THEN
        INSERT INTO terminal (TerminalName)
        VALUES (p_terminalName);
        SET v_terminalId = LAST_INSERT_ID();
    END IF;

    
    SELECT COUNT(*) INTO v_existingTerminalUserCount FROM user_terminal;
    IF v_existingTerminalUserCount = 0 THEN
        INSERT INTO user_terminal (userId, terminalId)
        VALUES (v_userId, v_terminalId);
    END IF;

    
    SELECT COUNT(*) INTO v_existingStoreTerminalCount FROM store_terminal;
    IF v_existingStoreTerminalCount = 0 THEN
        INSERT INTO store_terminal (storeId, terminalId)
        VALUES (v_storeId, v_terminalId);
    END IF;


    
    
    SELECT CompanyId INTO v_companyId FROM company LIMIT 1;
    IF v_companyId IS NULL THEN
        INSERT INTO company (companyName)
        VALUES (p_companyName);
        SET v_companyId = LAST_INSERT_ID();
    END IF;

    
    SELECT COUNT(*) INTO v_existingStoreCompanyCount FROM store_company;
    IF v_existingStoreCompanyCount = 0 THEN
        INSERT INTO store_company (storeId, companyId)
        VALUES (v_storeId, v_companyId);
    END IF;

  
    
    INSERT INTO system_info
    (utcOffset, countryCode,countryName, CurrencyId, PrimaryLanguageId, userLogId, receiptAdDescription, timeZoneId)
    VALUES
    (p_utcOffset, p_CountryCode, p_CountryName,p_currencyId, p_languageId, p_userLogId, NULL, p_timeZoneId);
 
    
    COMMIT;

    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Setup Successful.';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `systemData_isExists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `systemData_isExists`(
    IN p_userLogId INT,
    OUT p_isExists BIT
)
BEGIN
    DECLARE v_storeCount INT;
    DECLARE v_terminalCount INT;
    DECLARE v_storeTerminalCount INT;
    DECLARE v_systemInfoCount INT;
    DECLARE v_companyCount INT;
    DECLARE v_storeCompanyCount INT;

    
    SELECT COUNT(*) INTO v_storeCount FROM store_terminal_user;
    
    
    SELECT COUNT(*) INTO v_companyCount FROM company;
        
    
    SELECT COUNT(*) INTO v_terminalCount FROM terminal;

    
    SELECT COUNT(*) INTO v_storeTerminalCount FROM store_terminal_user;

    
    SELECT COUNT(*) INTO v_systemInfoCount FROM system_info;

    
    SELECT COUNT(*) INTO v_storeCompanyCount FROM store_company;

    
    

    
    IF v_companyCount > 0 AND v_storeCount > 0 AND v_terminalCount > 0 AND v_storeTerminalCount > 0 AND v_systemInfoCount > 0 AND v_storeCompanyCount > 0 THEN
        SET p_isExists = 1;
    ELSE
        SET p_isExists = 0;
        
        SELECT utcOffset, countryId, currencyId, primaryLanguageId, timeZoneId FROM system_info;
        SELECT * FROM company;

        SELECT * FROM terminal;
        SELECT * FROM store_terminal_user;
        SELECT * FROM store_company;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `system_info_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `system_info_save`(
   IN p_tableId int,
   IN p_TerminalId int,
   	IN p_UTC_Offset VARCHAR(50),
    IN p_CountryId int,
    IN p_CurrencyId int,
	IN p_LanguageId int,
    IN p_UserLogID INT,
    IN p_PageName VARCHAR(50),
    IN p_IsConfirm BIT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
    OUT p_systemInfoId int
)
sp: BEGIN

    START TRANSACTION;
   if not exists(select * from system_info where terminalId=p_TerminalId) then
INSERT INTO `system_info`(systemInfoId,`TerminalId`,`UTC_offset`,`CountryId`,`CurrencyId`,`LanguageId`,`UserLogId`)
values (p_tableId,p_TerminalId,p_UTC_Offset,p_CountryId,p_CurrencyId,p_LanguageId,p_UserLogID);
set p_systemInfoId=LAST_INSERT_ID();
else
update system_info set UTC_offset=p_UTC_Offset,CountryId=p_CountryId,CurrencyId=p_CurrencyId,
LanguageId=p_LanguageId,UserLogID=p_UserLogID,
ModifiedDate_UTC=utc_timestamp(),ModifiedDate_ServerTime=CURRENT_TIMESTAMP where TerminalId=p_TerminalId;
set p_systemInfoId=(select systemInfoId from system_info where terminalId=p_TerminalId);
end if;
		SET p_ResponseStatus = 'success';
        SET p_OutputMessage = 'Saved Successfully.';
        
    COMMIT;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `testcheck` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `testcheck`(
    IN p_sessionName VARCHAR(100),
    
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

    START TRANSACTION;
    

       select 'hellllo';

	SET p_ResponseStatus = 'success';
	SET p_OutputMessage = 'Session created successfully.';
    COMMIT;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateStockQtyOrderBybatchQueueNumber_toRemove` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`remoteuser`@`%` PROCEDURE `UpdateStockQtyOrderBybatchQueueNumber_toRemove`(
    in p_stockBatchId int,
    IN p_qty DECIMAL(10,2),
    IN p_validate BOOLEAN,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN


   
  
    
    

   

   
   
    IF p_validate THEN
        LEAVE sp;
    END IF;

    
    START TRANSACTION;
   
  
    
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_price_cost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_price_cost`(
    IN p_stockBatchId INT,
    IN p_newUnitPrice DECIMAL(10,2),
    IN p_newUnitCost DECIMAL(10,2),
    IN p_changeReason VARCHAR(100),
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN
    DECLARE err_message VARCHAR(255);
    DECLARE currentUnitPrice DECIMAL(10,2);
    DECLARE currentUnitCost DECIMAL(10,2);
    DECLARE singleProductId INT;
    DECLARE variationProductId INT;
    DECLARE comboProductId INT;

declare vo_isCurrentlyReleased bit;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;

    START TRANSACTION;

    
    SELECT unitPrice, unitCost INTO currentUnitPrice, currentUnitCost
    FROM non_serialized_item
    WHERE stockBatchId = p_stockBatchId;

    IF currentUnitPrice IS NULL OR currentUnitCost IS NULL THEN
        SET p_OutputMessage = 'Invalid stockBatchId';
        SET p_ResponseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;

    
    UPDATE non_serialized_item
    SET
        unitPrice = p_newUnitPrice,
        unitCost = p_newUnitCost,
        ModifiedDate_ServerTime = CURRENT_TIMESTAMP(),
        ModifiedDate_UTC = UTC_TIMESTAMP()  
    WHERE stockBatchId = p_stockBatchId;

    IF ROW_COUNT() = 0 THEN
        SET p_OutputMessage = 'Failed to update the unit price and unit cost';
        SET p_ResponseStatus = 'failed';
        ROLLBACK;
        LEAVE sp;
    END IF;

    
    INSERT INTO log_price_change (
        stockBatchId,
        oldUnitPrice,
        newUnitPrice,
        oldUnitCost,
        newUnitCost,
        CreatedDate_ServerTime,
        CreatedDate_UTC,
        UserLogID,
        changeReason
    ) VALUES (
        p_stockBatchId,
        currentUnitPrice,
        p_newUnitPrice,
        currentUnitCost,
        p_newUnitCost,
        CURRENT_TIMESTAMP(),
        UTC_TIMESTAMP(),
        p_UserLogID,
        p_changeReason
    );



    
     CALL `_isCurrentlyReleasedBatch`(p_stockBatchId,vo_isCurrentlyReleased);

     select vo_isCurrentlyReleased as vo_isCurrentlyReleased;
     if(vo_isCurrentlyReleased=1) then   
     
     call _updateSellingProductPriceByStockBatchId(p_stockBatchId,p_ResponseStatus,p_OutputMessage);
     
     select  p_OutputMessage as priceUpdate;
     
     if(p_ResponseStatus='failed') then
    	 rollback;
    	 leave sp;
     end if;
     
     end if;

   
       
    CALL log_user_action(
        p_UserLogID,
        p_UTC_Offset,
        p_PageName,
        CONCAT('Updated price and cost for stockBatchId: ', p_stockBatchId, 
               ', New Unit Price: ', p_newUnitPrice, 
               ', New Unit Cost: ', p_newUnitCost, 
               ', Old Unit Price: ', currentUnitPrice, 
               ', Old Unit Cost: ', currentUnitCost)
    );
   
   
   
    SET p_OutputMessage = 'Price and cost updated successfully';
    SET p_ResponseStatus = 'success';

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userAssignedStores_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userAssignedStores_select`(
	IN p_userId int
)
sp: BEGIN

select us.storeId,s.storeCode,s.storeName from store_terminal_user us 
inner join store s on us.storeId=s.storeId where us.userId=p_userId;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UserLog_Insert_Update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UserLog_Insert_Update`(
    IN p_UserId INT,
    IN p_LoginStatus VARCHAR(50),
    IN p_IpAddress VARCHAR(45),
    IN p_UserAgent VARCHAR(255),
    IN p_SessionId VARCHAR(255),
    IN p_AdditionalInfo TEXT,
    IN p_UtcOffset VARCHAR(10),
    IN p_PageName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
    OUT p_userLogId int
)
sp: BEGIN
        
      DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
    
     DECLARE custom_error_low CONDITION FOR SQLSTATE '45001';  
    DECLARE custom_error_high CONDITION FOR SQLSTATE '45002'; 
    
        SHOW ERRORS;  
        ROLLBACK;   
    END;
    
    START TRANSACTION;
    

        INSERT INTO userlog (
            UserId,
            LoginStatus,
            IpAddress,
            UserAgent,
            SessionId,
            AdditionalInfo,
            utcOffset
        )
        VALUES (
            p_UserId,
            p_LoginStatus,
            p_IpAddress,
            p_UserAgent,
            p_SessionId,
            p_AdditionalInfo,
            p_UtcOffset
        );

      set  p_userLogId=LAST_INSERT_ID();
      
      select c.CurrencyCode,c.Symbol ,c.CurrencyName from system_info as si 
      inner join currency c on si.CurrencyId=c.CurrencyID;
 
        SET p_ResponseStatus = 'success';
        SET p_OutputMessage = 'Added Successfully';
        

    COMMIT;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userPassword_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userPassword_update`(
	IN p_userName VARCHAR(50),
    IN p_passwordHash VARCHAR(1000),
	IN p_passwordSalt VARCHAR(1000),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

if not exists(select * from user_registration where uName=p_userName) then
	set p_ResponseStatus='failed';
	set p_OutputMessage='Invalid username ';
	leave sp;
end if;

update user_registration set passwordHash=p_passwordHash,passwordSalt=p_passwordSalt where uName=p_userName;

set p_ResponseStatus='success';
set p_OutputMessage='Password updated successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userRegistration_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userRegistration_delete`(
    IN p_userId INT,
    
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    IN p_IsConfirm bit,
    
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN
  
    START TRANSACTION;
    
    SET p_OutputMessage = 'null'; 
    
     if not exists (select * from user_registration where userId=p_userId) then
		set p_OutputMessage='userId is not exists';
        set p_ResponseStatus='failed';
        leave sp;
	end if;
    
    IF p_IsConfirm is null or p_IsConfirm=0 THEN
        SET p_ResponseStatus = 'confirm';
        SET p_OutputMessage = 'Are you sure you want to delete this customer?.';
        leave sp;
      END IF;
      
	
        DELETE FROM user_registration WHERE userId = p_userId;
        SET p_ResponseStatus = 'success';
        SET p_OutputMessage = 'Deleted Successfully.';


    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userRegistration_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userRegistration_insert`(
	IN p_userName VARCHAR(50),
    IN p_passwordHash VARCHAR(1000),
	IN p_passwordSalt VARCHAR(1000),
	IN p_displayName VARCHAR(50),
	in p_userRoleId int,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

if exists(select * from user_registration where uName=p_userName or email=p_userName) then
	set p_ResponseStatus='failed';
	set p_OutputMessage='username or password already exists';
	leave sp;
end if;

INSERT INTO `user_registration` (`uName`,`passwordHash`,`passwordSalt`,`email`,`displayName`,userRoleId)
values(p_userName,p_passwordHash,p_passwordSalt,p_userName,p_displayName,p_userRoleId);

set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userRegistration_insert_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userRegistration_insert_update`(
    IN p_tableID INT,
    IN p_userRoleId int,
    IN p_uName VARCHAR(100),
    IN p_passwordHash text,
    IN p_passwordSalt VARCHAR(50),
    IN p_email  VARCHAR(50),
	IN p_displayName  VARCHAR(50),
	IN p_profilePic  VARCHAR(50),
	IN p_isActive BIT,	
    
    IN p_SaveType VARCHAR(1),
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
    OUT p_userId_out int
)
sp: BEGIN

	declare v_userId int;
	      DECLARE err_message VARCHAR(255);
     
	   DECLARE EXIT HANDLER FOR SQLEXCEPTION
       begin
	        ROLLBACK;
            
            GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
            
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
        END;
       
	
    START TRANSACTION;
        
	if (p_tableID<1) then
		set p_OutputMessage='Invalid tableId';
        set p_ResponseStatus='failed';
       rollback;
        leave sp;
	end if;
        
    IF p_SaveType = 'I' THEN

 if exists (select * from user_registration where uName=p_uName) then
		set p_OutputMessage='Username already exists';
        set p_ResponseStatus='failed';
        rollback;
        leave sp;
end if;

   INSERT into user_registration (uName,userRoleId, passwordHash, passwordSalt, email, displayName, profilePic, isActive,userLogId)
VALUES( p_uName,p_userRoleId,p_passwordHash, p_passwordSalt, p_email, p_displayName, p_profilePic,p_isActive,p_userLogId);

SET v_userId = LAST_INSERT_ID();
set p_userId_out=v_userId;


        SET p_ResponseStatus = 'success';
        SET p_OutputMessage = 'Added Successfully.';
        
    ELSEIF p_SaveType = 'U' THEN
    
	if not exists (select * from user_registration where userId=p_tableID) then
		set p_OutputMessage='Invalid userId';
        set p_ResponseStatus='failed';
        rollback;
        leave sp;
	end if;
    

	if exists (select * from user_registration where uName=p_uName
    and userId!=p_tableID) then
		set p_OutputMessage='Username already exists u';
        set p_ResponseStatus='failed';
        rollback;
        leave sp;
        end if;
        
      
  UPDATE `user_registration` set `uName` = p_uName,userRoleId=p_userRoleId,`passwordHash` =p_passwordHash,
  `passwordSalt` =p_passwordSalt,`email` =p_email,displayName=p_displayName,
`profilePic` =p_profilePic,
isActive=p_isActive,userLogId=p_userLogId,
ModifiedDate_ServerTime = CURRENT_TIME(),ModifiedDate_UTC = UTC_TIMESTAMP() 
WHERE `userId` =p_tableID;

	SET p_ResponseStatus = 'success';
	SET p_OutputMessage = 'Updated Successfully.';

    END IF;
    
      if(p_tableID is not null) then  SET p_userId_out=p_tableID; end if;
      
    COMMIT;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userRegistration_select` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userRegistration_select`(
	in p_userId int,
    IN p_userRoleId VARCHAR(255),
    IN p_uName VARCHAR(100),
    IN p_email  VARCHAR(50),

    IN p_SearchByKeyword BIT,
	IN p_Skip INT,
    IN p_Limit INT,
    IN p_UserLogID INT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000),
	OUT p_TotalRows INT
)
sp: BEGIN


DECLARE _PagingQuery VARCHAR(1000);
DECLARE _filter varchar(1000);

IF (p_userRoleId IS NULL OR p_userRoleId = '') THEN
    SET p_ResponseStatus = 'invalid';
    SET p_OutputMessage = 'At least one p_userRoleId must be provided.';
    LEAVE sp;
END IF;

SET _filter = ' WHERE 1=1 ';

set _PagingQuery='';
IF p_Skip IS NOT NULL AND p_Limit IS NOT NULL THEN
    SET _PagingQuery = CONCAT(' LIMIT ', p_Skip, ', ', p_Limit);
    
ELSEIF p_Skip IS NOT NULL AND p_Limit IS NULL THEN
    SET p_ResponseStatus = 'invalid';
    SET p_OutputMessage = 'The _Limit parameter is not passed or set _Skip parameter to null for unlimited data.';
	leave sp;
    
ELSEIF p_Skip IS NULL AND p_Limit IS NOT NULL THEN
    SET p_ResponseStatus = 'invalid';
    SET p_OutputMessage = 'The _Skip parameter is not passed or set _Limit parameter to null for unlimited data.';
	leave sp;
END IF;


IF p_SearchByKeyword = 0 THEN
   IF p_userId IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND i.userId = ', p_userId);
    END IF;

    IF p_userRoleId IS NOT NULL AND p_userRoleId != '' THEN
        SET _filter = CONCAT(_filter, ' AND FIND_IN_SET(i.userRoleId, ''', p_userRoleId, ''') > 0');
    END IF;


ELSE
    IF p_userId IS NOT NULL THEN
        SET p_ResponseStatus = 'invalid';
        SET p_OutputMessage = 'userId and userRoleId are not supported for keyword search.';
        LEAVE sp;
    END IF;

    IF p_uName IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND i.uName LIKE ''%', p_uName, '%''');
    END IF;

    IF p_email IS NOT NULL THEN
        SET _filter = CONCAT(_filter, ' AND i.email LIKE ''%', p_email, '%''');
    END IF;

END IF;

   

SET @_query = CONCAT('SELECT userId,uName,ur.userRoleName, ''*****'' as password, email, 
displayName, profilePic,CAST(isActive AS UNSIGNED) as isActive,userLogId,i.modifiedDate_UTC FROM user_registration as i 
inner join userrole ur ON i.userroleId=ur.userroleId ',_filter,
       ' ORDER BY displayName ASC ',
_PagingQuery);

	
	PREPARE stmt FROM @_query;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;


    SET @queryTotal = CONCAT('SELECT COUNT(userId) INTO @totalRows FROM user_registration as i ', _filter);
        
    PREPARE stmt FROM @queryTotal;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    
    SET p_TotalRows = @totalRows;

set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userRegistration_select_by_userName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userRegistration_select_by_userName`(
	IN p_userName VARCHAR(50),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

SELECT userId,userRoleId,uName,passwordHash,passwordSalt,email,displayName,profilePic,
CAST(isActive AS UNSIGNED) as isActive,CreatedDate_UTC,CreatedDate_ServerTime,
ModifiedDate_UTC,ModifiedDate_ServerTime FROM user_registration where uName=p_userName;

set p_ResponseStatus='success';
set p_OutputMessage='loaded successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_CLEAN_ALL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `util_CLEAN_ALL`(
)
sp: BEGIN
  
   
	
	
	
   delete from cash_payments;
    ALTER TABLE cash_payments AUTO_INCREMENT = 1;
    
    delete from card_payments;
    ALTER TABLE card_payments AUTO_INCREMENT = 1;
    
	delete from order_payments;
    ALTER TABLE order_payments AUTO_INCREMENT = 1;

	delete from order_return;
    ALTER TABLE order_return AUTO_INCREMENT = 1;
    
   	delete from order_voided;
    ALTER TABLE order_voided AUTO_INCREMENT = 1;
    
   
   
    	delete from order_line_discount;
    ALTER TABLE order_line_discount AUTO_INCREMENT = 1;
    
        	delete from order_line_tax;
    ALTER TABLE order_line_tax AUTO_INCREMENT = 1;
    
	delete from order_details;
    ALTER TABLE order_details AUTO_INCREMENT = 1;
    
    delete from order_overall_discount;
    ALTER TABLE order_overall_discount AUTO_INCREMENT = 1;
    
    
         delete from order_summary_processed;
    ALTER TABLE order_summary_processed AUTO_INCREMENT = 1;
    
         
         
         
         

  
	
	delete from log_stock_adjustment;
    ALTER TABLE log_stock_adjustment AUTO_INCREMENT = 1;
					
	delete from stock_batch_order_mapping;
    ALTER TABLE stock_batch_order_mapping AUTO_INCREMENT = 1;
	

  
			
		delete from supplier_payments;
    ALTER TABLE supplier_payments AUTO_INCREMENT = 1;
	
		
			delete from stockentryDetails;
    ALTER TABLE stockentryDetails AUTO_INCREMENT = 1;
		
	delete from stockentry;
    ALTER TABLE stockentry AUTO_INCREMENT = 1;
	

		
	
		delete from snapshot_combo_product_detail;
    ALTER TABLE snapshot_combo_product_detail AUTO_INCREMENT = 1;
	
		
			delete from snapshot_variation_product_detail;
    ALTER TABLE snapshot_variation_product_detail AUTO_INCREMENT = 1;
			
	delete from snapshot_all_product;
    ALTER TABLE snapshot_all_product AUTO_INCREMENT = 1;
	
	
	
	
			delete from log_stock_adjustment;
    ALTER TABLE log_stock_adjustment AUTO_INCREMENT = 1;
	
			delete from log_stock_adjustment;
    ALTER TABLE log_stock_adjustment AUTO_INCREMENT = 1;
	
			
	
			delete from log_price_change;
    ALTER TABLE log_price_change AUTO_INCREMENT = 1;
	
			
               
               		delete from userlog;
    ALTER TABLE userlog AUTO_INCREMENT = 1;
               
               
               
               
               
              
         
	delete from order_header;
    ALTER TABLE order_header AUTO_INCREMENT = 1;
    
   
  
					delete from session_details_summary_temp  ;
			ALTER TABLE session_details_summary_temp AUTO_INCREMENT = 1;				
							
    	
	delete from session_period;
    ALTER TABLE session_period AUTO_INCREMENT = 1;
	
			
	delete from supplier_payments;
    ALTER TABLE supplier_payments AUTO_INCREMENT = 1;
	
		delete from stock_entry_voided;
    ALTER TABLE stock_entry_voided AUTO_INCREMENT = 1;
	
			delete from stockentrydetails;
    ALTER TABLE stockentrydetails AUTO_INCREMENT = 1;
			
			
				delete from stock_entry_voided;
			ALTER TABLE stock_entry_voided AUTO_INCREMENT = 1;
				
		delete from stockentry;
    ALTER TABLE stockentry AUTO_INCREMENT = 1;
	
		

 
		
			delete from order_payments;
			ALTER TABLE order_payments AUTO_INCREMENT = 1;
		
		

		
	
	 
	
			delete from store_inventory_product;
			ALTER TABLE store_inventory_product AUTO_INCREMENT = 1;
		
			
				
						
									delete from store_terminal;
			ALTER TABLE store_terminal AUTO_INCREMENT = 1;
									
									
											delete from user_terminal ;
			ALTER TABLE user_terminal AUTO_INCREMENT = 1;	
									
									
											delete from terminal ;
			ALTER TABLE terminal AUTO_INCREMENT = 1;
											
											
									
											delete from store_company;
			ALTER TABLE store_company AUTO_INCREMENT = 1;
											
											
												delete from company;
			ALTER TABLE company AUTO_INCREMENT = 1;	
												
												
													delete from user_store ;
			ALTER TABLE user_store AUTO_INCREMENT = 1;	
													
													
													
													
												
			delete from store;
			ALTER TABLE store AUTO_INCREMENT = 1;
			
			
			
			
				delete from non_serialized_item ;
			ALTER TABLE non_serialized_item AUTO_INCREMENT = 1;
				
								delete from inventory ;
			ALTER TABLE inventory AUTO_INCREMENT = 1;
								
								
								
								
			delete from variation_product_detail  ;
			ALTER TABLE variation_product_detail AUTO_INCREMENT = 1;
			
			
			
			delete from sub_product_detail;
			ALTER TABLE sub_product_detail AUTO_INCREMENT = 1;
			
				delete from all_product   ;
			ALTER TABLE all_product AUTO_INCREMENT = 1;
				
					delete from variation_product  ;
			ALTER TABLE variation_product AUTO_INCREMENT = 1;
					
					
							delete from product_category  ;
			ALTER TABLE product_category AUTO_INCREMENT = 1;	
							
							
			delete from category  ;
			ALTER TABLE category AUTO_INCREMENT = 1;
							
			
			
			INSERT into category
(CategoryName, CreatedDate_Server, ModifiedDate_Server, CreatedDate_UTC, ModifiedDate_UTC, isHiddenFromPOSMenu)
VALUES
('Beverages', CURRENT_TIMESTAMP(), NULL, UTC_TIMESTAMP(), NULL, b'0'),
('Snacks', CURRENT_TIMESTAMP(), NULL, UTC_TIMESTAMP(), NULL, b'0'),
('Dairy Products', CURRENT_TIMESTAMP(), NULL, UTC_TIMESTAMP(), NULL, b'0'),
( 'Fruits & Vegetables', CURRENT_TIMESTAMP(), NULL, UTC_TIMESTAMP(), NULL, b'0'),
( 'Bakery', CURRENT_TIMESTAMP(), NULL, UTC_TIMESTAMP(), NULL, b'0'),
( 'Meat & Seafood', CURRENT_TIMESTAMP(), NULL, UTC_TIMESTAMP(), NULL, b'0'),
( 'Frozen Foods', CURRENT_TIMESTAMP(), NULL, UTC_TIMESTAMP(), NULL, b'0'),
( 'Household Items', CURRENT_TIMESTAMP(), NULL, UTC_TIMESTAMP(), NULL, b'0'),
( 'Personal Care', CURRENT_TIMESTAMP(), NULL, UTC_TIMESTAMP(), NULL, b'0'),
( 'Electronics & Accessories', CURRENT_TIMESTAMP(), NULL, UTC_TIMESTAMP(), NULL, b'0'),
( 'Clothing & Apparel', CURRENT_TIMESTAMP(), NULL, UTC_TIMESTAMP(), NULL, b'0'),
( 'Services', CURRENT_TIMESTAMP(), NULL, UTC_TIMESTAMP(), NULL, b'0');

			
			
			
							
				delete from product  ;
			ALTER TABLE product AUTO_INCREMENT = 1;	
					
				
				
							delete from snapshot_all_product  ;
			ALTER TABLE snapshot_all_product AUTO_INCREMENT = 1;	
							
							
							
							
								delete from snapshot_all_product  ;
			ALTER TABLE snapshot_all_product AUTO_INCREMENT = 1;
								
								
			delete from dc_store;
			ALTER TABLE dc_store AUTO_INCREMENT = 1;					
								
					delete from snapshot_combo_product_detail ; 
			ALTER TABLE snapshot_combo_product_detail AUTO_INCREMENT = 1;	
					
					
					
										
					delete from snapshot_contact ;
			ALTER TABLE snapshot_contact AUTO_INCREMENT = 1;	
					
					
														
					delete from contact ;
			ALTER TABLE contact AUTO_INCREMENT = 1;	
						
					
							delete from snapshot_variation_product_detail ;
			ALTER TABLE snapshot_variation_product_detail AUTO_INCREMENT = 1;	
								
							
					
								
													delete from user_action_log  ;
			ALTER TABLE user_action_log AUTO_INCREMENT = 1;	
													
													
										
													delete from system_info  ;
			ALTER TABLE system_info AUTO_INCREMENT = 1;								
													
													
			
																							
		delete from user_registration;
	ALTER TABLE user_registration AUTO_INCREMENT = 1;	
													
					
													
						
		delete from log_stock_adjustment;
			ALTER TABLE log_stock_adjustment AUTO_INCREMENT = 1;	
		
				delete from log_price_change;
			ALTER TABLE log_price_change AUTO_INCREMENT = 1;	
													
													
					delete from inventory_stock_update_order;
			ALTER TABLE inventory_stock_update_order AUTO_INCREMENT = 1;											
													
								
					

	  
                   
	   
                      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_CLEAN_TRANSACTIONAL_DATA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `util_CLEAN_TRANSACTIONAL_DATA`(
)
sp: BEGIN
  
   
	
	
   delete from cash_payments;
    ALTER TABLE cash_payments AUTO_INCREMENT = 1;
    
    delete from card_payments;
    ALTER TABLE card_payments AUTO_INCREMENT = 1;
    
	delete from order_payments;
    ALTER TABLE order_payments AUTO_INCREMENT = 1;

	delete from order_return;
    ALTER TABLE order_return AUTO_INCREMENT = 1;
    
   	delete from order_voided;
    ALTER TABLE order_voided AUTO_INCREMENT = 1;
    
   
   
    	delete from order_line_discount;
    ALTER TABLE order_line_discount AUTO_INCREMENT = 1;
    
        	delete from order_line_tax;
    ALTER TABLE order_line_tax AUTO_INCREMENT = 1;
    
	delete from order_details;
    ALTER TABLE order_details AUTO_INCREMENT = 1;
    
    delete from order_overall_discount;
    ALTER TABLE order_overall_discount AUTO_INCREMENT = 1;
    
    
         delete from order_summary_processed;
    ALTER TABLE order_summary_processed AUTO_INCREMENT = 1;
    
      
               

  

	
  

		


		

  


  
	
	
	
   
	
	
	
   
	

  
	
	
  
	

  
	
	delete from log_stock_adjustment;
    ALTER TABLE log_stock_adjustment AUTO_INCREMENT = 1;
					
	delete from stock_batch_order_mapping_toremove;
    ALTER TABLE stock_batch_order_mapping_toremove AUTO_INCREMENT = 1;
	

  
			
		delete from supplier_payments;
    ALTER TABLE supplier_payments AUTO_INCREMENT = 1;
	
		
			delete from stockentryDetails;
    ALTER TABLE stockentryDetails AUTO_INCREMENT = 1;
		
	delete from stockentry;
    ALTER TABLE stockentry AUTO_INCREMENT = 1;
	

		
	
		delete from snapshot_combo_product_detail;
    ALTER TABLE snapshot_combo_product_detail AUTO_INCREMENT = 1;
	
		
			delete from snapshot_variation_product_detail;
    ALTER TABLE snapshot_variation_product_detail AUTO_INCREMENT = 1;
			
	delete from snapshot_all_product;
    ALTER TABLE snapshot_all_product AUTO_INCREMENT = 1;
	
	
	
	
			delete from log_stock_adjustment;
    ALTER TABLE log_stock_adjustment AUTO_INCREMENT = 1;
	
			delete from log_stock_adjustment;
    ALTER TABLE log_stock_adjustment AUTO_INCREMENT = 1;
	
			
	
			delete from log_price_change;
    ALTER TABLE log_price_change AUTO_INCREMENT = 1;
	
			
               
               		delete from userlog;
    ALTER TABLE userlog AUTO_INCREMENT = 1;
               
               
               
               
               
              
         
	delete from order_header;
    ALTER TABLE order_header AUTO_INCREMENT = 1;
    
   
  
	
    	
	delete from session_period;
    ALTER TABLE session_period AUTO_INCREMENT = 1;
	
			
	delete from supplier_payments;
    ALTER TABLE supplier_payments AUTO_INCREMENT = 1;
	
		delete from stock_entry_voided;
    ALTER TABLE stock_entry_voided AUTO_INCREMENT = 1;
	
			delete from stockentrydetails;
    ALTER TABLE stockentrydetails AUTO_INCREMENT = 1;
			
			
				delete from stock_entry_voided;
			ALTER TABLE stock_entry_voided AUTO_INCREMENT = 1;
				
		delete from stockentry;
    ALTER TABLE stockentry AUTO_INCREMENT = 1;
	
		

 
		
		
    
            
      
               
        
                   
	   
                      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_Product_Delete_force` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `util_Product_Delete_force`(
    IN p_allProductId INT,
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    IN p_IsConfirm BIT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN
    DECLARE v_singleProductId INT;
    DECLARE v_variationProductId INT;
    DECLARE v_comboProductId INT;
    DECLARE v_productTypeId INT;
    DECLARE v_inventoryId INT;
    DECLARE v_productId INT;
    DECLARE v_orderId INT;
    DECLARE v_isValidated BIT;
    DECLARE v_skus TEXT;
    DECLARE err_message VARCHAR(255);

   
     
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        
        ROLLBACK;
        
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        
        SET err_message = CONCAT('Parent error: ', err_message);
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;
     
    
    SET p_ResponseStatus = 'failed';
    SET p_OutputMessage = 'null';


    
    IF p_allProductId IS NULL THEN
        SET p_OutputMessage = 'allProductId is required.';
        LEAVE sp;
    END IF;

    IF p_IsConfirm IS NULL OR p_IsConfirm = 0 THEN
        SET p_ResponseStatus = 'confirm';
        SET p_OutputMessage = 'Are you sure you want to delete this product?';
        LEAVE sp;
    END IF;

    
    IF NOT EXISTS (SELECT 1 FROM all_product WHERE allProductId = p_allProductId) THEN
        SET p_OutputMessage = 'allProductId does not exist.';
        LEAVE sp;
    END IF;
 
    
    SELECT singleProductId, variationProductId, comboProductId, productTypeId
    INTO v_singleProductId, v_variationProductId, v_comboProductId, v_productTypeId
    FROM all_product
    WHERE allProductId = p_allProductId;

    
    CALL _validateProductIsUsedAsASubProductOfAnotherProduct(p_allProductId, v_isValidated, v_skus);
    IF v_isValidated = FALSE THEN
        SET p_OutputMessage = CONCAT('Cannot delete product. It is used as a sub-product in: ', v_skus);
    select p_OutputMessage;
        LEAVE sp;
    END IF;

    
    SELECT inventoryId INTO v_inventoryId
    FROM store_inventory_product
    WHERE allProductId = p_allProductId
    LIMIT 1;

    
    START TRANSACTION;

    
    SET v_orderId = (
        SELECT oh.orderId
        FROM order_header oh
        INNER JOIN order_details od ON oh.orderId = od.orderId
        WHERE od.allProductId = p_allProductId
        LIMIT 1
    );

    IF v_orderId IS NOT NULL THEN
        
        DELETE FROM stock_batch_order_mapping WHERE orderId = v_orderId;
        DELETE cp
        FROM cash_payments cp
        INNER JOIN order_payments op ON cp.paymentId = op.paymentId
        WHERE op.orderId = v_orderId;
        DELETE FROM order_payments WHERE orderId = v_orderId;
        DELETE FROM order_details WHERE orderId = v_orderId;
        DELETE FROM order_summary_processed WHERE orderId = v_orderId;
        DELETE FROM order_header WHERE orderId = v_orderId;
    END IF;
 
    
    IF v_productTypeId = 1 then
    
        
        SET v_productId = v_singleProductId;

        
        IF v_inventoryId IS NOT NULL THEN
            DELETE FROM stockentrydetails WHERE allProductId = p_allProductId;
            DELETE FROM non_serialized_item WHERE inventoryId = v_inventoryId;
            DELETE FROM inventory WHERE inventoryId = v_inventoryId;
        END IF;

        
        DELETE FROM product_category WHERE productId = v_singleProductId;
        DELETE FROM sub_product_detail WHERE allProductId = p_allProductId;
        DELETE FROM store_inventory_product WHERE allProductId = p_allProductId;
        DELETE FROM all_product WHERE allProductId = p_allProductId;
        DELETE FROM single_product WHERE productId = v_singleProductId;
        DELETE FROM product WHERE productId = v_singleProductId;

    ELSEIF v_productTypeId = 2 THEN
        
        SET v_productId = (SELECT productId FROM variation_product WHERE variationProductId = v_variationProductId);

        
        IF v_inventoryId IS NOT NULL THEN
            DELETE FROM stockentrydetails WHERE allProductId = p_allProductId;
            DELETE FROM non_serialized_item WHERE inventoryId = v_inventoryId;
            DELETE FROM inventory WHERE inventoryId = v_inventoryId;
        END IF;

   
        
        DELETE FROM variation_product_detail WHERE variationProductId = v_variationProductId;
        DELETE FROM store_inventory_product WHERE allProductId = p_allProductId;

        DELETE FROM product_category WHERE productId = v_productId;
           select p_allProductId,v_productTypeId,v_productId,v_variationProductId,v_inventoryId;
           
                DELETE FROM sub_product_detail WHERE allProductId = p_allProductId;
        DELETE FROM all_product WHERE allProductId = p_allProductId;
               
        DELETE FROM variation_product WHERE variationProductId = v_variationProductId;
        
               
        DELETE FROM product WHERE productId = v_productId;
     
        
    ELSEIF v_productTypeId = 3 THEN
        
        SET v_productId = v_comboProductId;

        
        IF v_inventoryId IS NOT NULL THEN
            DELETE FROM stockentrydetails WHERE allProductId = p_allProductId;
            DELETE FROM non_serialized_item WHERE inventoryId = v_inventoryId;
            DELETE FROM inventory WHERE inventoryId = v_inventoryId;
        END IF;

        
        DELETE FROM product_category WHERE productId = v_comboProductId;
        DELETE FROM store_inventory_product WHERE allProductId = p_allProductId;
        DELETE FROM all_product WHERE allProductId = p_allProductId;
        DELETE FROM combo_product WHERE productId = v_comboProductId;
        DELETE FROM product WHERE productId = v_comboProductId;

    ELSE
        ROLLBACK;
        SET p_OutputMessage = 'Invalid productTypeId.';
        LEAVE sp;
    END IF;

    
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Product deleted successfully.';
select p_OutputMessage;
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_Product_ForceDelete_By_Sku` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `util_Product_ForceDelete_By_Sku`(
    IN p_sku VARCHAR(255),
    IN p_UserLogID INT,
    IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
    IN p_IsConfirm BIT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN
    DECLARE v_allProductId INT;
    DECLARE v_singleProductId INT;
    DECLARE v_variationProductId INT;
    DECLARE v_comboProductId INT;
    DECLARE v_productTypeId INT;
    DECLARE v_inventoryId INT;
    DECLARE v_productId INT;
    DECLARE v_orderId INT;
    DECLARE v_isValidated BIT;
    DECLARE v_skus TEXT;
    DECLARE err_message VARCHAR(255);

 
     
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        
        ROLLBACK;
        
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        
        SET err_message = CONCAT('Parent error: ', err_message);
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;

    
    SET p_ResponseStatus = 'failed';
    SET p_OutputMessage = 'null';

    
    IF p_sku IS NULL OR p_sku = '' THEN
        SET p_OutputMessage = 'SKU is required.';
        LEAVE sp;
    END IF;

    IF p_IsConfirm IS NULL OR p_IsConfirm = 0 THEN
        SET p_ResponseStatus = 'confirm';
        SET p_OutputMessage = 'Are you sure you want to delete this product?';
        LEAVE sp;
    END IF;

  
SELECT ap.allProductId, ap.productTypeId
INTO v_allProductId, v_productTypeId
FROM all_product ap
LEFT JOIN single_product sp ON ap.singleProductId = sp.productId
LEFT JOIN variation_product vp ON ap.variationProductId = vp.variationProductId
WHERE sp.sku = p_sku OR vp.sku = p_sku
LIMIT 1;

IF v_allProductId IS NULL THEN
    SET p_OutputMessage = 'Product with specified SKU does not exist.';
    SET p_ResponseStatus = 'failed';
    LEAVE sp;
END IF;

    
    SELECT singleProductId, variationProductId, comboProductId, productTypeId
    INTO v_singleProductId, v_variationProductId, v_comboProductId, v_productTypeId
    FROM all_product
    WHERE allProductId = v_allProductId;

    
    IF v_productTypeId NOT IN (1, 2, 3) THEN
        SET p_OutputMessage = 'Invalid productTypeId. Must be 1, 2, or 3.';
        LEAVE sp;
    END IF;

    
    CALL _validateProductIsUsedAsASubProductOfAnotherProduct(v_allProductId, v_isValidated, v_skus);
    IF v_isValidated = FALSE THEN
        SET p_OutputMessage = CONCAT('Cannot delete product. It is used as a sub-product in: ', v_skus);
        LEAVE sp;
    END IF;

    
    SELECT inventoryId INTO v_inventoryId
    FROM store_inventory_product
    WHERE allProductId = v_allProductId
    LIMIT 1;

    
    START TRANSACTION;

    
    SET v_orderId = (
        SELECT oh.orderId
        FROM order_header oh
        INNER JOIN order_details od ON oh.orderId = od.orderId
        WHERE od.allProductId = v_allProductId
        LIMIT 1
    );

    IF v_orderId IS NOT NULL THEN
        
        DELETE FROM stock_batch_order_mapping WHERE orderId = v_orderId;
        DELETE cp
        FROM cash_payments cp
        INNER JOIN order_payments op ON cp.paymentId = op.paymentId
        WHERE op.orderId = v_orderId;
        DELETE FROM order_payments WHERE orderId = v_orderId;
        DELETE FROM order_details WHERE orderId = v_orderId;
        DELETE FROM order_summary_processed WHERE orderId = v_orderId;
        DELETE FROM order_header WHERE orderId = v_orderId;
    END IF;

    
    IF v_productTypeId = 1 THEN
        
        SET v_productId = v_singleProductId;

        
        IF v_inventoryId IS NOT NULL THEN
            DELETE FROM stockentrydetails WHERE allProductId = v_allProductId;
            DELETE FROM non_serialized_item WHERE inventoryId = v_inventoryId;
            DELETE FROM inventory WHERE inventoryId = v_inventoryId;
        END IF;

        
        DELETE FROM product_category WHERE productId = v_singleProductId;
        DELETE FROM sub_product_detail WHERE allProductId = v_allProductId;
        DELETE FROM store_inventory_product WHERE allProductId = v_allProductId;
             DELETE FROM sub_product_detail WHERE allProductId = v_allProductId;
        DELETE FROM all_product WHERE allProductId = v_allProductId;
        DELETE FROM single_product WHERE productId = v_singleProductId;
        DELETE FROM product WHERE productId = v_singleProductId;

    ELSEIF v_productTypeId = 2 THEN
        
        SET v_productId = (SELECT productId FROM variation_product WHERE variationProductId = v_variationProductId);

        
        IF v_inventoryId IS NOT NULL THEN
            DELETE FROM stockentrydetails WHERE allProductId = v_allProductId;
            DELETE FROM non_serialized_item WHERE inventoryId = v_inventoryId;
            DELETE FROM inventory WHERE inventoryId = v_inventoryId;
        END IF;
        
        
        
        
        
        
delete FROM variation_product_detail 
           WHERE variationProductId in (select variationProductId from variation_product
           								WHERE productId = v_productId);
   
      delete FROM store_inventory_product  
           WHERE variationProductId in (select variationProductId from variation_product
           								WHERE productId = v_productId);
    
    DELETE FROM sub_product_detail WHERE allProductId in 
                (select allProductId from all_product where variationProductId in (select variationProductId from variation_product
           								WHERE productId = v_productId));
    
    delete FROM all_product 
           WHERE variationProductId in (select variationProductId from variation_product
           								WHERE productId = v_productId);
    
    
   
delete  FROM variation_product WHERE productId = v_productId;
  
              
        DELETE FROM product_category WHERE productId = v_productId;
     
    
        DELETE FROM product WHERE productId = v_productId;
 
    ELSEIF v_productTypeId = 3 THEN
        
        SET v_productId = v_comboProductId;

        
        IF v_inventoryId IS NOT NULL THEN
            DELETE FROM stockentrydetails WHERE allProductId = v_allProductId;
            DELETE FROM non_serialized_item WHERE inventoryId = v_inventoryId;
            DELETE FROM inventory WHERE inventoryId = v_inventoryId;
        END IF;

        
        DELETE FROM product_category WHERE productId = v_comboProductId;
        DELETE FROM store_inventory_product WHERE allProductId = v_allProductId;
        DELETE FROM all_product WHERE allProductId = v_allProductId;
        DELETE FROM combo_product WHERE productId = v_comboProductId;
        DELETE FROM product WHERE productId = v_comboProductId;
    END IF;

    
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Product deleted successfully.';

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_remove_stock_tracked_from_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `util_remove_stock_tracked_from_product`(
    IN p_productId INT,
    IN p_productTypeId INT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN
    DECLARE err_message VARCHAR(255);

    
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SET err_message = CONCAT('Error: ', err_message);
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;

    
    SET p_ResponseStatus = 'failed';
    SET p_OutputMessage = 'null';

    
    IF p_productId IS NULL OR p_productTypeId IS NULL THEN
        SET p_OutputMessage = 'productId and productTypeId are required.';
        LEAVE sp;
    END IF;

    START TRANSACTION;

    
    IF p_productTypeId = 1 THEN
        DELETE lsa
        FROM log_stock_adjustment lsa
        JOIN non_serialized_item nsi ON lsa.stockBatchId = nsi.stockBatchId
        JOIN store_inventory_product sip ON nsi.inventoryId = sip.inventoryId
        WHERE sip.singleProductId = p_productId;

    DELETE sbom
FROM stock_batch_order_mapping sbom
JOIN non_serialized_item nsi ON sbom.stockBatchId = nsi.stockBatchId
JOIN store_inventory_product sip ON nsi.inventoryId = sip.inventoryId
WHERE sip.singleProductId = p_productId;

        DELETE nsi
        FROM non_serialized_item nsi
        JOIN store_inventory_product sip ON nsi.inventoryId = sip.inventoryId
        WHERE sip.singleProductId = p_productId;

     
        
        DELETE inv
        FROM inventory inv
        JOIN store_inventory_product sip ON inv.inventoryId = sip.inventoryId
        WHERE sip.singleProductId = p_productId;

      
        UPDATE store_inventory_product
        SET inventoryId = NULL
        WHERE singleProductId = p_productId;
    END IF;

    
    IF p_productTypeId = 2 THEN
        DELETE lsa
        FROM log_stock_adjustment lsa
        JOIN non_serialized_item nsi ON lsa.stockBatchId = nsi.stockBatchId
        JOIN store_inventory_product sip ON nsi.inventoryId = sip.inventoryId
        JOIN variation_product vp ON sip.variationProductId = vp.variationProductId
        WHERE vp.productId = p_productId;

        DELETE sbom
        FROM stock_batch_order_mapping sbom
        JOIN non_serialized_item nsi ON sbom.stockBatchId = nsi.stockBatchId
        JOIN store_inventory_product sip ON nsi.inventoryId = sip.inventoryId
        JOIN variation_product vp ON sip.variationProductId = vp.variationProductId
        WHERE vp.productId = p_productId;

        DELETE nsi
        FROM non_serialized_item nsi
        JOIN store_inventory_product sip ON nsi.inventoryId = sip.inventoryId
        JOIN variation_product vp ON sip.variationProductId = vp.variationProductId
        WHERE vp.productId = p_productId;

        DELETE inv
        FROM inventory inv
        JOIN store_inventory_product sip ON inv.inventoryId = sip.inventoryId
        JOIN variation_product vp ON sip.variationProductId = vp.variationProductId
        WHERE vp.productId = p_productId;

        UPDATE store_inventory_product sip
        JOIN variation_product vp ON sip.variationProductId = vp.variationProductId
        SET sip.inventoryId = NULL
        WHERE vp.productId = p_productId;
    END IF;

    COMMIT;

    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Product updated successfully.';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VoidOrderByOrderId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `VoidOrderByOrderId`(
  IN p_OrderId INT,
IN p_reason_id int,
    IN p_UserLogID INT,
	IN p_UTC_Offset VARCHAR(50),
    IN p_PageName VARCHAR(50),
        IN p_IsConfirm bit,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN

select p_reason_id;
  if not exists( select * from  order_header  where  OrderId=p_OrderId) then
          SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'Order is not found.';
        leave sp;
      END IF;

    IF p_IsConfirm is null or p_IsConfirm=0 THEN
        SET p_ResponseStatus = 'confirm';
        SET p_OutputMessage = 'Are you sure you want to void this order?.';
        leave sp;
      END IF;
      
    if exists( select * from  order_header  where isVoided=1 and OrderId=p_OrderId) then
          SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'Order was already voided.';
        leave sp;
      END IF;
      
update order_header set isVoided=1 where OrderId=p_OrderId;

INSERT INTO `order_voided`(`orderId`,`order_voiding_reason_id`)
VALUES(p_OrderId,p_reason_id);


set p_ResponseStatus='success';
set p_OutputMessage='Voided successfully';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `_getIsProductItemByAllProductId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `_getIsProductItemByAllProductId`(
  IN p_allProductId INT,
  OUT p_isProductItem bit
)
sp: BEGIN

declare  v_singleProductId int;
declare v_variationProductId int;

set v_singleProductId=(select singleProductid from all_product ap where ap.allProductId=p_allProductId);
set v_variationProductId=(select variationProductId from all_product ap where ap.allProductId=p_allProductId);

if v_singleProductId is not null then 
	if exists(select 1 from product where productId=v_singleProductId and isProductId=true) then
	set p_isProductItem=true;
	end if;
end if;

if v_variationProductId is not null then 
	if exists(select 1 from product p inner join variation_product as vp on p.productId=vp.productId
	where vp.variationProductId=v_variationProductId and isProductId=true) then
	set p_isProductItem=true;
	end if;	
end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `_getProductTypeIdByAllProductId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `_getProductTypeIdByAllProductId`(
  IN p_allProductId INT,
  OUT p_productTypeId_o int
)
sp: BEGIN

	declare v_productTypeId int;

declare  v_singleProductId int;
declare v_variationProductId int;
declare v_comboProductId int;

set v_singleProductId=(select singleProductid from all_product ap where ap.allProductId=p_allProductId);
set v_variationProductId=(select variationProductId from all_product ap where ap.allProductId=p_allProductId);
set v_comboProductId=(select comboProductId from all_product ap where ap.allProductId=p_allProductId);

if v_singleProductId is not null then 
	set v_productTypeId=1;	
end if;

if v_variationProductId is not null then 
	set v_productTypeId=2;	
end if;

if v_comboProductId is not null then 
	set v_productTypeId=3;	
end if;

set p_productTypeId_o=v_productTypeId;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `_getSkuByInventoryId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `_getSkuByInventoryId`(
  IN p_inventoryId INT,
  OUT p_sku_o varchar(100)
)
sp: BEGIN

	declare v_productTypeId int;

declare  v_singleProductId int;
declare v_variationProductId int;
declare v_comboProductId int;
declare p_allProductId int;

set p_allProductId=(select allProductId from store_inventory_product where inventoryId=p_inventoryId);

set v_singleProductId=(select singleProductid from all_product ap where ap.allProductId=p_allProductId);
set v_variationProductId=(select variationProductId from all_product ap where ap.allProductId=p_allProductId);
set v_comboProductId=(select comboProductId from all_product ap where ap.allProductId=p_allProductId);

if v_singleProductId is not null then 
	set p_sku_o=(select sku from single_product where productId=v_singleProductId);
end if;

if v_variationProductId is not null then 
	set p_sku_o=(select sku from variation_product where variationProductId=v_variationProductId);
end if;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `_isCurrentlyReleasedBatch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `_isCurrentlyReleasedBatch`(
    IN p_stockBatchId INT,
    OUT p_isReleased bit
)
BEGIN
 
    DECLARE err_message VARCHAR(255);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END; 



if exists(select * from non_serialized_item where stockBatchId=p_stockBatchId and stockQty>0 and isBatchReleased=1) then
	set p_isReleased=1;
else
	set p_isReleased=0;
END IF;

select p_isReleased as p_isReleased;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `_updateSellingProductPriceByStockBatchId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `_updateSellingProductPriceByStockBatchId`(
    IN p_stockBatchId INT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN
 
	
    if not exists( SELECT *  FROM non_serialized_item  WHERE stockBatchId = p_stockBatchId) then
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'Invalid Stock batch Id.';
        LEAVE sp;
    END IF;
    
        
      UPDATE single_product sp
    inner join store_inventory_product sip on sp.productId=sip.singleProductId
    JOIN non_serialized_item nsi ON sip.inventoryId = nsi.inventoryId
    SET sp.unitPrice = nsi.unitPrice, sp.unitCost = nsi.unitCost
    WHERE nsi.stockBatchId = p_stockBatchId;

   
   
   
   

    UPDATE variation_product vp
    inner join store_inventory_product sip on vp.variationProductId=sip.variationProductId
    JOIN non_serialized_item nsi ON sip.inventoryId = nsi.inventoryId
    SET vp.unitPrice = nsi.unitPrice, vp.unitCost = nsi.unitCost
    WHERE nsi.stockBatchId = p_stockBatchId;
        
        
        SET p_ResponseStatus = 'success';
        SET p_OutputMessage = 'Selling Product price has been updated.';
  
    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `_updateStockQty` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `_updateStockQty`(
    IN p_inventoryId INT,
    IN p_qty DECIMAL(10,2),
    IN p_validate BOOLEAN,
    OUT p_stockBatchId INT,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN
    DECLARE v_totalStockQty DECIMAL(10,2) DEFAULT 0;
    DECLARE v_stockBatchId INT;
    DECLARE err_message VARCHAR(255);
declare v_sku varchar(100);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = err_message;
    END;

    CALL _getSkuByInventoryId(p_inventoryId, v_sku);
    
    
    SELECT IFNULL(SUM(StockQty), 0) INTO v_totalStockQty
    FROM non_serialized_item
    WHERE inventoryId = p_inventoryId AND isBatchReleased = 1;

    
    IF v_totalStockQty = 0 THEN
        
        SELECT IFNULL(SUM(StockQty), 0) INTO v_totalStockQty
        FROM non_serialized_item
        WHERE inventoryId = p_inventoryId AND isBatchReleased = 0;

        IF v_totalStockQty > 0 THEN
            SET p_ResponseStatus = 'failed';
            SET p_OutputMessage = concat('The stock is not released for the specified inventory ID:',v_sku);
            SET p_stockBatchId = NULL;
            LEAVE sp;
        END IF;

        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'No stock available for the specified inventory ID.';
        SET p_stockBatchId = NULL;
        LEAVE sp;
    END IF;

    
    IF v_totalStockQty < p_qty THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'Insufficient stock quantity available for released batches.';
        SET p_stockBatchId = NULL;
        LEAVE sp;
    ELSE
        SET p_ResponseStatus = 'success';
        SET p_OutputMessage = 'Sufficient stock quantity is available for released batches.';
    END IF;

    
    IF p_validate THEN
        SET p_stockBatchId = NULL;
        LEAVE sp;
    END IF;

    START TRANSACTION;

    
    SELECT stockBatchId INTO v_stockBatchId
    FROM non_serialized_item nsi
    INNER JOIN inventory i ON nsi.inventoryId = i.inventoryId
    WHERE nsi.inventoryId = p_inventoryId
      AND nsi.isBatchReleased = 1
      AND nsi.StockQty > 0
    ORDER BY nsi.stockBatchId ASC
    LIMIT 1;

    IF v_stockBatchId IS NOT NULL THEN
        
        UPDATE non_serialized_item
        SET StockQty = StockQty - p_qty
        WHERE stockBatchId = v_stockBatchId;

        SET p_stockBatchId = v_stockBatchId;
        COMMIT;
    ELSE
        ROLLBACK;
        SET p_stockBatchId = NULL;
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'No valid stock batch found or no stock available.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `_updateStockQty_by_allProductId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `_updateStockQty_by_allProductId`(
    in p_stockBatchId int,
    IN p_qty DECIMAL(10,2),

    IN p_dryrun BOOLEAN,
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN
    DECLARE v_totalStockQty DECIMAL(10,2) DEFAULT 0;
    DECLARE v_singleProductId INT;
    DECLARE v_variationProductId INT;
    DECLARE v_comboProductId INT;
    DECLARE v_inventoryId INT;
    DECLARE v_qty DECIMAL(10,2);
    DECLARE v_allProductId_mat INT;
    DECLARE v_totalItems_tempTableSubItemDetail INT;
    DECLARE v_stockBatchId INT DEFAULT 0;
    DECLARE v_productName VARCHAR(50);
    DECLARE v_isStockItem BIT;
    DECLARE v_isAssemblyProduct BIT;
    DECLARE err_message VARCHAR(255);
       declare v_allProductId int;


    declare v_sku varchar(50);


    

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 err_message = MESSAGE_TEXT;
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = CONCAT('SQL Error: ', err_message);
        DROP TEMPORARY TABLE IF EXISTS tempTableSubItemDetail;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = p_OutputMessage;
    END;

    
    SET p_ResponseStatus = 'failed';
    SET p_OutputMessage = '';





    

    IF NOT EXISTS (SELECT 1 FROM non_serialized_item WHERE stockBatchId = p_stockBatchId) then
     	SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'stockBatchId does not exist';
        LEAVE sp;
    END IF;
    
    set v_allProductId=(select allProductId from store_inventory_product sip inner join non_serialized_item ni 
    on sip.inventoryid=ni.inventoryId where ni.stockBatchId=p_stockBatchId);

    



    

                IF p_qty=0 or p_qty is null THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'Invalid Qty.';
        LEAVE sp;
    end if;
    
                
     SELECT IFNULL(StockQty, 0) INTO v_totalStockQty FROM non_serialized_item  WHERE stockBatchId = p_stockBatchId;     
    
        SELECT sip.variationProductId into v_variationProductId 
    FROM store_inventory_product sip inner join non_serialized_item ni on sip.inventoryId=ni.inventoryId
    WHERE ni.stockBatchId = p_stockBatchId;
    
   
     if(v_variationProductId is null) then 
        
     	SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = concat('v_variationProductId for stockBatchId :',p_stockBatchId,'  is not exists in the stock_inventory_product');
        LEAVE sp;

      end if;
     
    set v_sku=(select sku from variation_product where variationProductId=v_variationProductId);

   select p_stockBatchId,v_sku,p_qty,v_totalStockQty;
    
    IF v_totalStockQty = 0 then
        
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = concat('No stock available in the p_stockBatchId:',p_stockBatchId,'. sku:',v_sku);
        LEAVE sp;
    END IF;

   
    IF v_totalStockQty < p_qty THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = concat('Insufficient stock quantity available for the SKU:',v_sku);
        LEAVE sp;
    ELSE
        SET p_ResponseStatus = 'success';
        SET p_OutputMessage = 'Sufficient stock quantity is available.';
    END IF;
          
                    
                    

    START TRANSACTION;

    
    SELECT sip.inventoryId 
    INTO v_inventoryId
    FROM store_inventory_product sip inner join non_serialized_item ni on sip.inventoryId=ni.inventoryId
    WHERE ni.stockBatchId = p_stockBatchId;

    SET v_isStockItem = IF(v_inventoryId IS NOT NULL, TRUE, FALSE);


    if v_isStockItem=false then
    
    set v_sku=(select sku from variation_product vp 
    inner join store_inventory_product sip on vp.variationProductId=sip.variationProductId 
    where sip.inventoryId=v_inventoryId
    );
    
     SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = concat('sku:',v_sku,' is not a stock item.');
        LEAVE sp;
    
    end if;
    
    
    

    
    IF p_dryrun = false then
                
  		 UPDATE non_serialized_item
    	SET StockQty = StockQty - p_qty ,ModifiedDate_UTC = UTC_TIMESTAMP() WHERE stockBatchId = p_stockBatchId;
  		 
     end if;
     
     

        DROP TEMPORARY TABLE IF EXISTS tempTableSubItemDetail;
        CREATE TEMPORARY TABLE tempTableSubItemDetail (
            allProductId_mat INT,
            qty DECIMAL(10,2)
        );

        
          SELECT sip.allProductId INTO v_allProductId
    FROM store_inventory_product sip inner join non_serialized_item ni on sip.inventoryId=ni.inventoryId
    WHERE ni.stockBatchId = p_stockBatchId;
        
        INSERT INTO tempTableSubItemDetail (allProductId_mat, qty)
        SELECT allProductId_mat, qty
        FROM sub_product_detail WHERE allProductId = v_allProductId;
        
        SET v_totalItems_tempTableSubItemDetail = (SELECT COUNT(*) FROM tempTableSubItemDetail);

        select v_totalItems_tempTableSubItemDetail as v_totalItems_tempTableSubItemDetail;
        
      
        WHILE v_totalItems_tempTableSubItemDetail > 0 DO
            SELECT allProductId_mat, qty INTO v_allProductId_mat, v_qty FROM tempTableSubItemDetail LIMIT 1;
        
            
SELECT sip.inventoryId 
    INTO v_inventoryId
    FROM store_inventory_product sip inner join non_serialized_item ni on sip.inventoryId=ni.inventoryId
    WHERE ni.stockBatchId = p_stockBatchId AND allProductId = v_allProductId_mat;
             
               
             IF v_inventoryId IS NULL THEN
                SET p_OutputMessage = CONCAT('No inventory found for sub-product allProductId: ', v_allProductId_mat);
                ROLLBACK;
                DROP TEMPORARY TABLE IF EXISTS tempTableSubItemDetail;
                 LEAVE sp;
            END IF;   
            

             if(p_dryrun=false)
		           then  
  		 UPDATE non_serialized_item
    	SET StockQty = StockQty - v_qty,ModifiedDate_UTC = UTC_TIMESTAMP() WHERE stockBatchId = p_stockBatchId;
end if;







            DELETE FROM tempTableSubItemDetail LIMIT 1;
            SET v_totalItems_tempTableSubItemDetail = (SELECT COUNT(*) FROM tempTableSubItemDetail);
        END WHILE;

        DROP TEMPORARY TABLE IF EXISTS tempTableSubItemDetail;


    
    SET p_ResponseStatus = 'success';
    SET p_OutputMessage = 'Stock quantity updated successfully';

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `_updateStockQty_validate_tempremoved` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `_updateStockQty_validate_tempremoved`(
    IN p_inventoryId INT,
    IN p_qty DECIMAL(10,2),
    OUT p_ResponseStatus VARCHAR(50),
    OUT p_OutputMessage VARCHAR(1000)
)
sp: BEGIN
    DECLARE v_totalStockQty DECIMAL(10,2) DEFAULT 0;



    
    SELECT ifnull(sum(stockQty),0) INTO v_totalStockQty
    FROM non_serialized_item
    WHERE inventoryId = p_inventoryId
      AND isBatchReleased = 1;

 
    IF v_totalStockQty = 0 then
    
           
    SELECT ifnull(sum(stockQty),0) INTO v_totalStockQty
    FROM non_serialized_item
    WHERE inventoryId = p_inventoryId
      AND isBatchReleased = 0;

    IF v_totalStockQty > 0 THEN
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'The stock is not released for the specified inventory ID.';
        LEAVE sp;
    END IF;
    
    
        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'No stock available for the specified inventory ID.';
        LEAVE sp;
    END IF;


    IF v_totalStockQty < p_qty then

        SET p_ResponseStatus = 'failed';
        SET p_OutputMessage = 'Insufficient stock quantity available for released batches.';
    ELSE
        SET p_ResponseStatus = 'success';
        SET p_OutputMessage = 'Sufficient stock quantity is available for released batches.';
    END IF;
    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `_validateProductIsUsedAsASubProductOfAnotherProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `_validateProductIsUsedAsASubProductOfAnotherProduct`(
    IN p_allProductId INT,
    out p_isValidated bit,
    out p_skus text
)
sp: BEGIN

    DECLARE v_sku_list TEXT;

    
    SELECT GROUP_CONCAT(sp.sku)
    INTO v_sku_list
    FROM sub_product_detail spd
    INNER JOIN all_product ap ON spd.allProductId = ap.allProductId
    INNER JOIN single_product sp ON ap.singleProductId = sp.productId
    WHERE spd.allProductId_mat = p_allProductId;

    
    SELECT GROUP_CONCAT(vp.sku)
    INTO @v_variation_skus
    FROM sub_product_detail spd
    INNER JOIN all_product ap ON spd.allProductId = ap.allProductId
    INNER JOIN variation_product vp ON ap.variationProductId = vp.variationProductId
    WHERE spd.allProductId_mat = p_allProductId;

    
    IF @v_variation_skus IS NOT NULL AND @v_variation_skus <> '' THEN
        IF v_sku_list IS NULL OR v_sku_list = '' THEN
            SET v_sku_list = @v_variation_skus;
        ELSE
            SET v_sku_list = CONCAT(v_sku_list, ',', @v_variation_skus);
        END IF;
    END IF;

    
    IF v_sku_list IS NOT NULL AND v_sku_list <> '' then
    	set p_isValidated=false;
        SET p_skus = v_sku_list;
         select v_sku_list;
    LEAVE sp;
    END IF;

    
    	set p_isValidated=true;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-09 16:05:56
