-- MySQL dump 10.13  Distrib 5.7.31-34, for Linux (x86_64)
--
-- Host: localhost    Database: a0447222_demo2
-- ------------------------------------------------------
-- Server version	5.7.26-29

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
/*!50717 SELECT COUNT(*) INTO @rocksdb_has_p_s_session_variables FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'session_variables' */;
/*!50717 SET @rocksdb_get_is_supported = IF (@rocksdb_has_p_s_session_variables, 'SELECT COUNT(*) INTO @rocksdb_is_supported FROM performance_schema.session_variables WHERE VARIABLE_NAME=\'rocksdb_bulk_load\'', 'SELECT 0') */;
/*!50717 PREPARE s FROM @rocksdb_get_is_supported */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50717 SET @rocksdb_enable_bulk_load = IF (@rocksdb_is_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @rocksdb_dummy_bulk_load = 0') */;
/*!50717 PREPARE s FROM @rocksdb_enable_bulk_load */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;

--
-- Table structure for table `db_bonus`
--

DROP TABLE IF EXISTS `db_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_bonus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user` varchar(25) NOT NULL,
  `sum` double NOT NULL,
  `date_add` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_bonus`
--

LOCK TABLES `db_bonus` WRITE;
/*!40000 ALTER TABLE `db_bonus` DISABLE KEYS */;
INSERT INTO `db_bonus` VALUES (1,1,'AdminAdmin',0.14,1570695601),(5,1,'AdminAdmin',0.78,1585908136),(8,1,'AdminAdmin',0.39,1586095045),(12,1,'AdminAdmin',0.84,1586593715),(13,1,'AdminAdmin',0.48,1586705568),(14,1,'AdminAdmin',0.5,1586801673),(16,1,'AdminAdmin',0.18,1606047739);
/*!40000 ALTER TABLE `db_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_config`
--

DROP TABLE IF EXISTS `db_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(80) CHARACTER SET utf8 NOT NULL,
  `password` varchar(80) CHARACTER SET utf8 NOT NULL,
  `date_start` int(11) NOT NULL DEFAULT '0',
  `ref_lvls` int(1) NOT NULL DEFAULT '3',
  `ref1` double NOT NULL DEFAULT '0',
  `ref2` double NOT NULL DEFAULT '0',
  `ref3` double NOT NULL DEFAULT '0',
  `ref4` double NOT NULL DEFAULT '0',
  `ref5` double NOT NULL DEFAULT '0',
  `min_ins` double NOT NULL DEFAULT '10',
  `max_ins` double NOT NULL DEFAULT '50000',
  `min_pay` double NOT NULL DEFAULT '15',
  `max_pay` double NOT NULL DEFAULT '500',
  `pay_timeout` int(11) NOT NULL DEFAULT '6',
  `min_bonus` double NOT NULL DEFAULT '0.01',
  `max_bonus` double NOT NULL DEFAULT '1',
  `ref_bonus` double NOT NULL DEFAULT '1',
  `reg_bonus` int(2) NOT NULL DEFAULT '1',
  `vk_quest_bonus` int(2) NOT NULL DEFAULT '1',
  `ref_quest_bonus` double NOT NULL DEFAULT '50',
  `insert_r_bonus` double NOT NULL DEFAULT '5',
  `insert_b_bonus` double NOT NULL DEFAULT '5',
  `serf_quest_bonus` double NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_config`
--

LOCK TABLES `db_config` WRITE;
/*!40000 ALTER TABLE `db_config` DISABLE KEYS */;
INSERT INTO `db_config` VALUES (1,'$2y$10$0c9b87ae97e9295475f79uGo2bL7MrsZbw4GlSUKKI5oHHADIAeMG','$2y$10$0c9b87ae97e9295475f79uGo2bL7MrsZbw4GlSUKKI5oHHADIAeMG',1570100763,5,15,10,5,3,1,1,50000,1,1000,0,0.01,1,0,1,1,1,0,0,1);
/*!40000 ALTER TABLE `db_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_deposits`
--

DROP TABLE IF EXISTS `db_deposits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_deposits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user` varchar(15) NOT NULL,
  `plan` int(2) NOT NULL DEFAULT '1',
  `date_add` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_deposits`
--

LOCK TABLES `db_deposits` WRITE;
/*!40000 ALTER TABLE `db_deposits` DISABLE KEYS */;
INSERT INTO `db_deposits` VALUES (1,1,'AdminAdmin',1,1570694821),(2,1,'AdminAdmin',1,1570694821),(3,1,'AdminAdmin',1,1570694821),(4,1,'AdminAdmin',1,1570694821),(5,1,'AdminAdmin',1,1570694821),(6,1,'AdminAdmin',1,1570694821),(7,1,'AdminAdmin',3,1570694821),(8,1,'AdminAdmin',6,1570694821),(9,1,'AdminAdmin',1,1585906335),(10,1,'AdminAdmin',1,1586100778),(11,1,'AdminAdmin',1,1586100782),(12,2,'testtest',1,1586268848),(14,1,'AdminAdmin',1,1586690948),(15,1,'AdminAdmin',1,1586690955),(16,1,'AdminAdmin',1,1586690958),(17,1,'AdminAdmin',1,1586693954),(18,1,'AdminAdmin',1,1586695876),(19,1,'AdminAdmin',1,1586768189),(20,1,'AdminAdmin',1,1586768198),(21,1,'AdminAdmin',1,1586768215),(22,1,'AdminAdmin',1,1586768217),(23,1,'AdminAdmin',1,1586801655);
/*!40000 ALTER TABLE `db_deposits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_feedback`
--

DROP TABLE IF EXISTS `db_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user` varchar(25) NOT NULL,
  `text` varchar(500) NOT NULL,
  `date_add` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_feedback`
--

LOCK TABLES `db_feedback` WRITE;
/*!40000 ALTER TABLE `db_feedback` DISABLE KEYS */;
INSERT INTO `db_feedback` VALUES (1,1,'AdminAdmin','Test Test Test Test Test ',1585907164,1);
/*!40000 ALTER TABLE `db_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_insert`
--

DROP TABLE IF EXISTS `db_insert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_insert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(15) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `payment_system` varchar(20) NOT NULL DEFAULT 'ab',
  `sum` double NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `type` int(1) NOT NULL DEFAULT '1',
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_insert`
--

LOCK TABLES `db_insert` WRITE;
/*!40000 ALTER TABLE `db_insert` DISABLE KEYS */;
INSERT INTO `db_insert` VALUES (1,'AdminAdmin',1,'py',5,1570694911,1,1),(2,'AdminAdmin',1,'py',5,1570694959,2,1),(3,'AdminAdmin',1,'ac',15,1586081797,1,0),(4,'AdminAdmin',1,'fk',25,1586081805,1,0),(5,'AdminAdmin',1,'ac',44,1586093784,1,0),(6,'AdminAdmin',1,'fk',343,1586093792,1,0),(7,'AdminAdmin',1,'ac',25,1586094094,1,0),(8,'AdminAdmin',1,'py',3234,1586094340,2,0),(9,'AdminAdmin',1,'fk',234,1586094348,2,0),(10,'AdminAdmin',1,'fk',10,1586525929,1,0),(11,'AdminAdmin',1,'ym',20,1586526492,1,0),(12,'AdminAdmin',1,'py',545,1586526839,1,0),(13,'AdminAdmin',1,'py',9000,1586526875,1,0),(14,'AdminAdmin',1,'fk',4234,1586527129,1,0),(15,'AdminAdmin',1,'fk',77,1586527327,1,0),(16,'AdminAdmin',1,'ac',1,1586697151,1,0),(17,'AdminAdmin',1,'py',1,1586697156,1,0);
/*!40000 ALTER TABLE `db_insert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_inv_competition`
--

DROP TABLE IF EXISTS `db_inv_competition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_inv_competition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `1m_sum` double NOT NULL DEFAULT '0',
  `2m_sum` double NOT NULL DEFAULT '0',
  `3m_sum` double NOT NULL DEFAULT '0',
  `4m_sum` double NOT NULL DEFAULT '0',
  `5m_sum` double NOT NULL DEFAULT '0',
  `1m_perc` double DEFAULT '0',
  `2m_perc` double NOT NULL DEFAULT '0',
  `3m_perc` double NOT NULL DEFAULT '0',
  `4m_perc` double NOT NULL DEFAULT '0',
  `5m_perc` double NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_end` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_inv_competition`
--

LOCK TABLES `db_inv_competition` WRITE;
/*!40000 ALTER TABLE `db_inv_competition` DISABLE KEYS */;
INSERT INTO `db_inv_competition` VALUES (1,1000,1000,1000,1000,1000,5,4,3,2,1,1,1570105871,1571850726);
/*!40000 ALTER TABLE `db_inv_competition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_inv_competition_users`
--

DROP TABLE IF EXISTS `db_inv_competition_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_inv_competition_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(10) CHARACTER SET utf8 NOT NULL,
  `user_id` int(11) NOT NULL,
  `points` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_inv_competition_users`
--

LOCK TABLES `db_inv_competition_users` WRITE;
/*!40000 ALTER TABLE `db_inv_competition_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_inv_competition_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_inv_competition_winers`
--

DROP TABLE IF EXISTS `db_inv_competition_winers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_inv_competition_winers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place` int(1) NOT NULL,
  `comp_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user` varchar(25) NOT NULL,
  `sum` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_inv_competition_winers`
--

LOCK TABLES `db_inv_competition_winers` WRITE;
/*!40000 ALTER TABLE `db_inv_competition_winers` DISABLE KEYS */;
INSERT INTO `db_inv_competition_winers` VALUES (1,1,1,1,'AdminAdmin',1000.5);
/*!40000 ALTER TABLE `db_inv_competition_winers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_leaders`
--

DROP TABLE IF EXISTS `db_leaders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_leaders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `term` int(11) NOT NULL,
  `1m` double NOT NULL,
  `2m` double NOT NULL,
  `3m` double NOT NULL,
  `4m` double NOT NULL,
  `5m` double NOT NULL,
  `next_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_leaders`
--

LOCK TABLES `db_leaders` WRITE;
/*!40000 ALTER TABLE `db_leaders` DISABLE KEYS */;
INSERT INTO `db_leaders` VALUES (1,'day',1,7,6,5,3,2,1570773312),(2,'week',7,8,7,6,5,4,1510156681),(3,'month',30,9,8,7,6,5,1573365312),(4,'year',365,12,11,10,9,8,1602309312);
/*!40000 ALTER TABLE `db_leaders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_payment`
--

DROP TABLE IF EXISTS `db_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(15) NOT NULL,
  `user_id` int(11) NOT NULL,
  `purse` varchar(30) NOT NULL,
  `sum` double NOT NULL DEFAULT '0',
  `payment_system` varchar(100) NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `type` int(1) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_payment`
--

LOCK TABLES `db_payment` WRITE;
/*!40000 ALTER TABLE `db_payment` DISABLE KEYS */;
INSERT INTO `db_payment` VALUES (1,'AdminAdmin',1,'P1016034322',5,'py',1570695319,1,1);
/*!40000 ALTER TABLE `db_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_paysystems`
--

DROP TABLE IF EXISTS `db_paysystems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_paysystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `valuta` varchar(5) NOT NULL,
  `comis` double NOT NULL DEFAULT '0',
  `min_pay` double NOT NULL DEFAULT '1',
  `max_pay` double NOT NULL DEFAULT '100',
  `active_insert` int(1) NOT NULL DEFAULT '1',
  `active_payment` int(1) NOT NULL DEFAULT '1',
  `active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_paysystems`
--

LOCK TABLES `db_paysystems` WRITE;
/*!40000 ALTER TABLE `db_paysystems` DISABLE KEYS */;
INSERT INTO `db_paysystems` VALUES (1,'ac','AdvancedCash','RUB',0,1,10000,1,1,1),(2,'py','Payeer','RUB',1,1,10000,1,1,1),(3,'fk','FreeKassa','RUB',0,1,10000,1,0,1),(4,'ym','YandexMoney','RUB',1,15,10000,1,1,1),(5,'pyb','Beeline','RUB',3,15,100,0,1,0),(6,'pymt','Mts','RUB',3,15,100,0,1,0),(7,'pymf','Megafon','RUB',3,15,100,0,1,0),(8,'pyt','Tele2','RUB',3,15,100,0,1,0),(9,'pokp','OkPay','RUB',6.2,20,100,0,1,0);
/*!40000 ALTER TABLE `db_paysystems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_plans`
--

DROP TABLE IF EXISTS `db_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `perc` double NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_plans`
--

LOCK TABLES `db_plans` WRITE;
/*!40000 ALTER TABLE `db_plans` DISABLE KEYS */;
INSERT INTO `db_plans` VALUES (1,'NAME 1 LVL',0.0137,25),(2,'NAME 2 LVL',0.1272,400),(3,'NAME 3 LVL',0.3549,1000),(4,'NAME 4 LVL',0.9275,2500),(5,'NAME 5 LVL',2.0761,5000),(6,'NAME 6 LVL',3.3178,7000),(7,'NAME 7 LVL',4.0761,11000),(8,'NAME 8 LVL',5.3178,15000);
/*!40000 ALTER TABLE `db_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_recovery`
--

DROP TABLE IF EXISTS `db_recovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_recovery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `_key` varchar(80) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_recovery`
--

LOCK TABLES `db_recovery` WRITE;
/*!40000 ALTER TABLE `db_recovery` DISABLE KEYS */;
INSERT INTO `db_recovery` VALUES (1,'Admin@ya.ru',1,109252,1586268748,'$2y$10$0c9b87ae97e9295475f79uopUvDmlbJ3d7lsUrIeus5mPb9ZgIk7y',0);
/*!40000 ALTER TABLE `db_recovery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_ref_competition`
--

DROP TABLE IF EXISTS `db_ref_competition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_ref_competition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `1m_sum` double NOT NULL DEFAULT '0',
  `2m_sum` double NOT NULL DEFAULT '0',
  `3m_sum` double NOT NULL DEFAULT '0',
  `4m_sum` double NOT NULL DEFAULT '0',
  `5m_sum` double NOT NULL DEFAULT '0',
  `1m_perc` double NOT NULL DEFAULT '0',
  `2m_perc` double NOT NULL DEFAULT '0',
  `3m_perc` double NOT NULL DEFAULT '0',
  `4m_perc` double NOT NULL DEFAULT '0',
  `5m_perc` double NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_end` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_ref_competition`
--

LOCK TABLES `db_ref_competition` WRITE;
/*!40000 ALTER TABLE `db_ref_competition` DISABLE KEYS */;
INSERT INTO `db_ref_competition` VALUES (1,1000,1000,1000,1000,1000,5,4,3,2,1,0,1570105888,1571850726);
/*!40000 ALTER TABLE `db_ref_competition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_ref_competition_users`
--

DROP TABLE IF EXISTS `db_ref_competition_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_ref_competition_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(10) CHARACTER SET utf8 NOT NULL,
  `user_id` int(11) NOT NULL,
  `points` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_ref_competition_users`
--

LOCK TABLES `db_ref_competition_users` WRITE;
/*!40000 ALTER TABLE `db_ref_competition_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_ref_competition_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_ref_competition_winers`
--

DROP TABLE IF EXISTS `db_ref_competition_winers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_ref_competition_winers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place` int(1) NOT NULL,
  `comp_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user` varchar(25) NOT NULL,
  `sum` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_ref_competition_winers`
--

LOCK TABLES `db_ref_competition_winers` WRITE;
/*!40000 ALTER TABLE `db_ref_competition_winers` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_ref_competition_winers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_serfing`
--

DROP TABLE IF EXISTS `db_serfing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_serfing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `time_add` int(11) NOT NULL DEFAULT '0',
  `title` varchar(55) CHARACTER SET utf8 NOT NULL,
  `plan` int(1) NOT NULL DEFAULT '1',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `money` double(10,2) NOT NULL DEFAULT '0.00',
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_serfing`
--

LOCK TABLES `db_serfing` WRITE;
/*!40000 ALTER TABLE `db_serfing` DISABLE KEYS */;
INSERT INTO `db_serfing` VALUES (1,1,'AdminAdmin',1570698364,'Test Test',1,'https://test.test',0,13.00,1),(2,1,'AdminAdmin',1570698354,'Test Test',2,'https://test.test',0,33.00,1);
/*!40000 ALTER TABLE `db_serfing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_serfing_plans`
--

DROP TABLE IF EXISTS `db_serfing_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_serfing_plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transition` int(1) NOT NULL DEFAULT '1',
  `view_time` int(3) NOT NULL DEFAULT '20',
  `highlight` int(1) NOT NULL DEFAULT '1',
  `price` double NOT NULL DEFAULT '0.04',
  `click_price` double NOT NULL DEFAULT '0.025',
  `name` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_serfing_plans`
--

LOCK TABLES `db_serfing_plans` WRITE;
/*!40000 ALTER TABLE `db_serfing_plans` DISABLE KEYS */;
INSERT INTO `db_serfing_plans` VALUES (1,1,40,3,0.08,0.065,'Премиум'),(2,1,30,2,0.06,0.045,'Обычный'),(3,0,20,1,0.04,0.025,'Эконом');
/*!40000 ALTER TABLE `db_serfing_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_serfing_view`
--

DROP TABLE IF EXISTS `db_serfing_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_serfing_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ident` int(11) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_serfing_view`
--

LOCK TABLES `db_serfing_view` WRITE;
/*!40000 ALTER TABLE `db_serfing_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_serfing_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_001`
--

DROP TABLE IF EXISTS `users_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(80) CHARACTER SET utf8 NOT NULL,
  `date_reg` int(11) NOT NULL DEFAULT '0',
  `date_login` int(11) NOT NULL DEFAULT '0',
  `ref_visits` int(11) NOT NULL DEFAULT '0',
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `banned` int(1) NOT NULL DEFAULT '0',
  `sault` varchar(32) CHARACTER SET utf8 NOT NULL,
  `vk_user_id` int(11) NOT NULL,
  `vk_first_name` varchar(25) NOT NULL,
  `vk_last_name` varchar(25) NOT NULL,
  `vk_bdate` varchar(25) NOT NULL,
  `vk_dateadd` int(11) NOT NULL,
  `ref_bonus` int(1) NOT NULL DEFAULT '0',
  `serf_bonus` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_001`
--

LOCK TABLES `users_001` WRITE;
/*!40000 ALTER TABLE `users_001` DISABLE KEYS */;
INSERT INTO `users_001` VALUES (1,'AdminAdmin','Admin@ya.ru','$2y$10$0c9b87ae97e9295475f79uGo2bL7MrsZbw4GlSUKKI5oHHADIAeMG',1570694821,1606047591,2,3107229394,0,'038622a1214784fecf0e73d8d4ed235a',0,'','','',0,0,0),(2,'testtest','testtest@ya.ru','$2y$10$0c9b87ae97e9295475f79uXsIpKbGQ2bqjCElQcbVo318IZICYw1u',1570694821,1586676745,0,1385659148,0,'7043e9b14b6df55f2cf1e8b5136e62ad',0,'','','',0,0,0);
/*!40000 ALTER TABLE `users_001` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_002`
--

DROP TABLE IF EXISTS `users_002`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_002` (
  `id` int(11) NOT NULL,
  `user` varchar(50) CHARACTER SET utf8 NOT NULL,
  `money_b` double NOT NULL DEFAULT '0',
  `money_p` double NOT NULL DEFAULT '0',
  `money_r` double NOT NULL DEFAULT '0',
  `money_k` double NOT NULL DEFAULT '0',
  `lastupdate` int(11) NOT NULL DEFAULT '0',
  `insert_sum` double NOT NULL DEFAULT '0',
  `payment_sum` double NOT NULL DEFAULT '0',
  `day` double NOT NULL DEFAULT '0',
  `week` double NOT NULL DEFAULT '0',
  `month` double NOT NULL DEFAULT '0',
  `year` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_002`
--

LOCK TABLES `users_002` WRITE;
/*!40000 ALTER TABLE `users_002` DISABLE KEYS */;
INSERT INTO `users_002` VALUES (1,'AdminAdmin',535.7299999999999,22942.618763416664,69,16.57540999999988,1606047732,10,5,0,0,0,0),(2,'testtest',0,0,0,0.3867776388888912,1586370492,0,0,0,0,0,0);
/*!40000 ALTER TABLE `users_002` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_003`
--

DROP TABLE IF EXISTS `users_003`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_003` (
  `id` int(11) NOT NULL,
  `user` varchar(15) NOT NULL,
  `referer1_id` int(11) NOT NULL,
  `referer2_id` int(11) NOT NULL,
  `referer3_id` int(11) NOT NULL,
  `referer4_id` int(11) NOT NULL,
  `referer5_id` int(11) NOT NULL,
  `referer1` varchar(15) NOT NULL,
  `referer2` varchar(15) NOT NULL,
  `referer3` varchar(15) NOT NULL,
  `referer4` varchar(15) NOT NULL,
  `referer5` varchar(15) NOT NULL,
  `to_referer1` double NOT NULL DEFAULT '0',
  `to_referer2` double NOT NULL DEFAULT '0',
  `to_referer3` double NOT NULL DEFAULT '0',
  `to_referer4` double NOT NULL DEFAULT '0',
  `to_referer5` double NOT NULL DEFAULT '0',
  `from_referals1` double NOT NULL DEFAULT '0',
  `from_referals2` double NOT NULL DEFAULT '0',
  `from_referals3` double NOT NULL DEFAULT '0',
  `from_referals4` double NOT NULL DEFAULT '0',
  `from_referals5` double NOT NULL DEFAULT '0',
  `count_ref1` int(11) NOT NULL,
  `count_ref2` int(11) NOT NULL,
  `count_ref3` int(11) NOT NULL,
  `count_ref4` int(11) NOT NULL,
  `count_ref5` int(11) NOT NULL,
  `serf_clicks` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_003`
--

LOCK TABLES `users_003` WRITE;
/*!40000 ALTER TABLE `users_003` DISABLE KEYS */;
INSERT INTO `users_003` VALUES (1,'AdminAdmin',0,0,0,0,0,'','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,'testtest',0,0,0,0,0,'','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `users_003` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_004`
--

DROP TABLE IF EXISTS `users_004`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_004` (
  `id` int(11) NOT NULL,
  `py` varchar(50) NOT NULL DEFAULT '0',
  `ac` varchar(50) NOT NULL DEFAULT '0',
  `ym` varchar(20) NOT NULL DEFAULT '0',
  `pyb` varchar(50) NOT NULL DEFAULT '0',
  `pymt` varchar(50) NOT NULL DEFAULT '0',
  `pymf` varchar(50) NOT NULL DEFAULT '0',
  `pyt` varchar(50) NOT NULL DEFAULT '0',
  `pokp` varchar(50) NOT NULL DEFAULT '0',
  `pay_pass` varchar(80) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_004`
--

LOCK TABLES `users_004` WRITE;
/*!40000 ALTER TABLE `users_004` DISABLE KEYS */;
INSERT INTO `users_004` VALUES (1,'0','0','0','0','0','0','0','0','0'),(2,'0','0','0','0','0','0','0','0','0');
/*!40000 ALTER TABLE `users_004` ENABLE KEYS */;
UNLOCK TABLES;
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-24  7:01:34
