-- MySQL dump 10.13  Distrib 5.6.51, for Linux (x86_64)
--
-- Host: localhost    Database: lbscloud
-- ------------------------------------------------------
-- Server version	5.6.51

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=677 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can view permission',1,'view_permission'),(5,'Can add group',2,'add_group'),(6,'Can change group',2,'change_group'),(7,'Can delete group',2,'delete_group'),(8,'Can view group',2,'view_group'),(9,'Can add content type',3,'add_contenttype'),(10,'Can change content type',3,'change_contenttype'),(11,'Can delete content type',3,'delete_contenttype'),(12,'Can view content type',3,'view_contenttype'),(13,'Can add session',4,'add_session'),(14,'Can change session',4,'change_session'),(15,'Can delete session',4,'delete_session'),(16,'Can view session',4,'view_session'),(17,'Can add site',5,'add_site'),(18,'Can change site',5,'change_site'),(19,'Can delete site',5,'delete_site'),(20,'Can view site',5,'view_site'),(21,'Can add log entry',6,'add_logentry'),(22,'Can change log entry',6,'change_logentry'),(23,'Can delete log entry',6,'delete_logentry'),(24,'Can view log entry',6,'view_logentry'),(25,'Can add content',7,'add_content'),(26,'Can change content',7,'change_content'),(27,'Can delete content',7,'delete_content'),(28,'Can view content',7,'view_content'),(29,'Can add page',8,'add_page'),(30,'Can change page',8,'change_page'),(31,'Can delete page',8,'delete_page'),(32,'Can view page',8,'view_page'),(33,'Can freeze page',8,'can_freeze'),(34,'Can publish page',8,'can_publish'),(35,'Manage German',8,'can_manage_de'),(36,'Manage Français',8,'can_manage_fr_ch'),(37,'Manage US English',8,'can_manage_en_us'),(38,'Can add page alias',9,'add_pagealias'),(39,'Can change page alias',9,'change_pagealias'),(40,'Can delete page alias',9,'delete_pagealias'),(41,'Can view page alias',9,'view_pagealias'),(42,'Can add media',10,'add_media'),(43,'Can change media',10,'change_media'),(44,'Can delete media',10,'delete_media'),(45,'Can view media',10,'view_media'),(46,'Can add source',11,'add_source'),(47,'Can change source',11,'change_source'),(48,'Can delete source',11,'delete_source'),(49,'Can view source',11,'view_source'),(50,'Can add thumbnail',12,'add_thumbnail'),(51,'Can change thumbnail',12,'change_thumbnail'),(52,'Can delete thumbnail',12,'delete_thumbnail'),(53,'Can view thumbnail',12,'view_thumbnail'),(54,'Can add thumbnail dimensions',13,'add_thumbnaildimensions'),(55,'Can change thumbnail dimensions',13,'change_thumbnaildimensions'),(56,'Can delete thumbnail dimensions',13,'delete_thumbnaildimensions'),(57,'Can view thumbnail dimensions',13,'view_thumbnaildimensions'),(58,'Can add caller',14,'add_caller'),(59,'Can change caller',14,'change_caller'),(60,'Can delete caller',14,'delete_caller'),(61,'Can view caller',14,'view_caller'),(62,'Can add credential',15,'add_credential'),(63,'Can change credential',15,'change_credential'),(64,'Can delete credential',15,'delete_credential'),(65,'Can view credential',15,'view_credential'),(66,'Can add application',16,'add_application'),(67,'Can change application',16,'change_application'),(68,'Can delete application',16,'delete_application'),(69,'Can view application',16,'view_application'),(70,'Can add access token',17,'add_accesstoken'),(71,'Can change access token',17,'change_accesstoken'),(72,'Can delete access token',17,'delete_accesstoken'),(73,'Can view access token',17,'view_accesstoken'),(74,'Can add grant',18,'add_grant'),(75,'Can change grant',18,'change_grant'),(76,'Can delete grant',18,'delete_grant'),(77,'Can view grant',18,'view_grant'),(78,'Can add refresh token',19,'add_refreshtoken'),(79,'Can change refresh token',19,'change_refreshtoken'),(80,'Can delete refresh token',19,'delete_refreshtoken'),(81,'Can view refresh token',19,'view_refreshtoken'),(82,'Can add date',20,'add_date'),(83,'Can change date',20,'change_date'),(84,'Can delete date',20,'delete_date'),(85,'Can view date',20,'view_date'),(86,'Can add param',21,'add_param'),(87,'Can change param',21,'change_param'),(88,'Can delete param',21,'delete_param'),(89,'Can view param',21,'view_param'),(90,'Can add recurrence',22,'add_recurrence'),(91,'Can change recurrence',22,'change_recurrence'),(92,'Can delete recurrence',22,'delete_recurrence'),(93,'Can view recurrence',22,'view_recurrence'),(94,'Can add rule',23,'add_rule'),(95,'Can change rule',23,'change_rule'),(96,'Can delete rule',23,'delete_rule'),(97,'Can view rule',23,'view_rule'),(98,'Can add task result',24,'add_taskresult'),(99,'Can change task result',24,'change_taskresult'),(100,'Can delete task result',24,'delete_taskresult'),(101,'Can view task result',24,'view_taskresult'),(102,'Can add crontab',25,'add_crontabschedule'),(103,'Can change crontab',25,'change_crontabschedule'),(104,'Can delete crontab',25,'delete_crontabschedule'),(105,'Can view crontab',25,'view_crontabschedule'),(106,'Can add interval',26,'add_intervalschedule'),(107,'Can change interval',26,'change_intervalschedule'),(108,'Can delete interval',26,'delete_intervalschedule'),(109,'Can view interval',26,'view_intervalschedule'),(110,'Can add periodic task',27,'add_periodictask'),(111,'Can change periodic task',27,'change_periodictask'),(112,'Can delete periodic task',27,'delete_periodictask'),(113,'Can view periodic task',27,'view_periodictask'),(114,'Can add periodic tasks',28,'add_periodictasks'),(115,'Can change periodic tasks',28,'change_periodictasks'),(116,'Can delete periodic tasks',28,'delete_periodictasks'),(117,'Can view periodic tasks',28,'view_periodictasks'),(118,'Can add solar event',29,'add_solarschedule'),(119,'Can change solar event',29,'change_solarschedule'),(120,'Can delete solar event',29,'delete_solarschedule'),(121,'Can view solar event',29,'view_solarschedule'),(122,'Can add clocked',30,'add_clockedschedule'),(123,'Can change clocked',30,'change_clockedschedule'),(124,'Can delete clocked',30,'delete_clockedschedule'),(125,'Can view clocked',30,'view_clockedschedule'),(126,'Can add agent',31,'add_agent'),(127,'Can change agent',31,'change_agent'),(128,'Can delete agent',31,'delete_agent'),(129,'Can view agent',31,'view_agent'),(130,'Can view agent',31,'lbs_view_agent'),(131,'Can manage agents',31,'manage_agents'),(132,'Can add City',32,'add_city'),(133,'Can change City',32,'change_city'),(134,'Can delete City',32,'delete_city'),(135,'Can view City',32,'view_city'),(136,'Can add code',33,'add_code'),(137,'Can change code',33,'change_code'),(138,'Can delete code',33,'delete_code'),(139,'Can view code',33,'view_code'),(140,'Can add company',34,'add_company'),(141,'Can change company',34,'change_company'),(142,'Can delete company',34,'delete_company'),(143,'Can view company',34,'view_company'),(144,'Can view company',34,'lbs_view_company'),(145,'Can manage company',34,'manage_company'),(146,'Can manage settings',34,'manage_settings'),(147,'Can track drivers',34,'can_track'),(148,'Can manage reports',34,'manage_reports'),(149,'Can add company info',35,'add_companyinfo'),(150,'Can change company info',35,'change_companyinfo'),(151,'Can delete company info',35,'delete_companyinfo'),(152,'Can view company info',35,'view_companyinfo'),(153,'Can add customer',36,'add_customer'),(154,'Can change customer',36,'change_customer'),(155,'Can delete customer',36,'delete_customer'),(156,'Can view customer',36,'view_customer'),(157,'Can add customer address',37,'add_customeraddress'),(158,'Can change customer address',37,'change_customeraddress'),(159,'Can delete customer address',37,'delete_customeraddress'),(160,'Can view customer address',37,'view_customeraddress'),(161,'Can add Customer Device',38,'add_customerdevice'),(162,'Can change Customer Device',38,'change_customerdevice'),(163,'Can delete Customer Device',38,'delete_customerdevice'),(164,'Can view Customer Device',38,'view_customerdevice'),(165,'Can add driver',39,'add_driver'),(166,'Can change driver',39,'change_driver'),(167,'Can delete driver',39,'delete_driver'),(168,'Can view driver',39,'view_driver'),(169,'Can view driver',39,'lbs_view_driver'),(170,'Can manage driver',39,'manage_driver'),(171,'Can add VerficationPhoneEmail',40,'add_verficationphoneemail'),(172,'Can change VerficationPhoneEmail',40,'change_verficationphoneemail'),(173,'Can delete VerficationPhoneEmail',40,'delete_verficationphoneemail'),(174,'Can view VerficationPhoneEmail',40,'view_verficationphoneemail'),(175,'Can add blocked agent',41,'add_blockedagent'),(176,'Can change blocked agent',41,'change_blockedagent'),(177,'Can delete blocked agent',41,'delete_blockedagent'),(178,'Can view blocked agent',41,'view_blockedagent'),(179,'Can add blocked interface',42,'add_blockedinterface'),(180,'Can change blocked interface',42,'change_blockedinterface'),(181,'Can delete blocked interface',42,'delete_blockedinterface'),(182,'Can view blocked interface',42,'view_blockedinterface'),(183,'Can add customer contact',43,'add_customercontact'),(184,'Can change customer contact',43,'change_customercontact'),(185,'Can delete customer contact',43,'delete_customercontact'),(186,'Can view customer contact',43,'view_customercontact'),(187,'Can add booking',44,'add_booking'),(188,'Can change booking',44,'change_booking'),(189,'Can delete booking',44,'delete_booking'),(190,'Can view booking',44,'view_booking'),(191,'Can add booking status',45,'add_bookingstatus'),(192,'Can change booking status',45,'change_bookingstatus'),(193,'Can delete booking status',45,'delete_bookingstatus'),(194,'Can view booking status',45,'view_bookingstatus'),(195,'Can add cancellation',46,'add_cancellation'),(196,'Can change cancellation',46,'change_cancellation'),(197,'Can delete cancellation',46,'delete_cancellation'),(198,'Can view cancellation',46,'view_cancellation'),(199,'Can add cancel reason',47,'add_cancelreason'),(200,'Can change cancel reason',47,'change_cancelreason'),(201,'Can delete cancel reason',47,'delete_cancelreason'),(202,'Can view cancel reason',47,'view_cancelreason'),(203,'Can add driver message',48,'add_drivermessage'),(204,'Can change driver message',48,'change_drivermessage'),(205,'Can delete driver message',48,'delete_drivermessage'),(206,'Can view driver message',48,'view_drivermessage'),(207,'Can add point',49,'add_point'),(208,'Can change point',49,'change_point'),(209,'Can delete point',49,'delete_point'),(210,'Can view point',49,'view_point'),(211,'Can add push message',50,'add_pushmessage'),(212,'Can change push message',50,'change_pushmessage'),(213,'Can delete push message',50,'delete_pushmessage'),(214,'Can view push message',50,'view_pushmessage'),(215,'Can add review',51,'add_review'),(216,'Can change review',51,'change_review'),(217,'Can delete review',51,'delete_review'),(218,'Can view review',51,'view_review'),(219,'Can add status code',52,'add_statuscode'),(220,'Can change status code',52,'change_statuscode'),(221,'Can delete status code',52,'delete_statuscode'),(222,'Can view status code',52,'view_statuscode'),(223,'Can add zone',53,'add_zone'),(224,'Can change zone',53,'change_zone'),(225,'Can delete zone',53,'delete_zone'),(226,'Can view zone',53,'view_zone'),(227,'Can add customer message',54,'add_customermessage'),(228,'Can change customer message',54,'change_customermessage'),(229,'Can delete customer message',54,'delete_customermessage'),(230,'Can view customer message',54,'view_customermessage'),(231,'Can add booking attachment',55,'add_bookingattachment'),(232,'Can change booking attachment',55,'change_bookingattachment'),(233,'Can delete booking attachment',55,'delete_bookingattachment'),(234,'Can view booking attachment',55,'view_bookingattachment'),(235,'Can add route',56,'add_route'),(236,'Can change route',56,'change_route'),(237,'Can delete route',56,'delete_route'),(238,'Can view route',56,'view_route'),(239,'Can add route stop',57,'add_routestop'),(240,'Can change route stop',57,'change_routestop'),(241,'Can delete route stop',57,'delete_routestop'),(242,'Can view route stop',57,'view_routestop'),(243,'Can add Car',58,'add_car'),(244,'Can change Car',58,'change_car'),(245,'Can delete Car',58,'delete_car'),(246,'Can view Car',58,'view_car'),(247,'Can add Car Type',59,'add_cartype'),(248,'Can change Car Type',59,'change_cartype'),(249,'Can delete Car Type',59,'delete_cartype'),(250,'Can view Car Type',59,'view_cartype'),(251,'Can add map entry',60,'add_mapentry'),(252,'Can change map entry',60,'change_mapentry'),(253,'Can delete map entry',60,'delete_mapentry'),(254,'Can view map entry',60,'view_mapentry'),(255,'Can add map log',61,'add_maplog'),(256,'Can change map log',61,'change_maplog'),(257,'Can delete map log',61,'delete_maplog'),(258,'Can view map log',61,'view_maplog'),(259,'Can add status change',62,'add_statuschange'),(260,'Can change status change',62,'change_statuschange'),(261,'Can delete status change',62,'delete_statuschange'),(262,'Can view status change',62,'view_statuschange'),(263,'Can add app version',63,'add_appversion'),(264,'Can change app version',63,'change_appversion'),(265,'Can delete app version',63,'delete_appversion'),(266,'Can view app version',63,'view_appversion'),(267,'Can add config',64,'add_config'),(268,'Can change config',64,'change_config'),(269,'Can delete config',64,'delete_config'),(270,'Can view config',64,'view_config'),(271,'Can add SMSConfig',65,'add_smsconfig'),(272,'Can change SMSConfig',65,'change_smsconfig'),(273,'Can delete SMSConfig',65,'delete_smsconfig'),(274,'Can view SMSConfig',65,'view_smsconfig'),(275,'Can add company plan',66,'add_companyplan'),(276,'Can change company plan',66,'change_companyplan'),(277,'Can delete company plan',66,'delete_companyplan'),(278,'Can view company plan',66,'view_companyplan'),(279,'Can add company service',67,'add_companyservice'),(280,'Can change company service',67,'change_companyservice'),(281,'Can delete company service',67,'delete_companyservice'),(282,'Can view company service',67,'view_companyservice'),(283,'Can add discount',68,'add_discount'),(284,'Can change discount',68,'change_discount'),(285,'Can delete discount',68,'delete_discount'),(286,'Can view discount',68,'view_discount'),(287,'Can add extra service',69,'add_extraservice'),(288,'Can change extra service',69,'change_extraservice'),(289,'Can delete extra service',69,'delete_extraservice'),(290,'Can view extra service',69,'view_extraservice'),(291,'Can add plan',70,'add_plan'),(292,'Can change plan',70,'change_plan'),(293,'Can delete plan',70,'delete_plan'),(294,'Can view plan',70,'view_plan'),(295,'Can add invoice',71,'add_invoice'),(296,'Can change invoice',71,'change_invoice'),(297,'Can delete invoice',71,'delete_invoice'),(298,'Can view invoice',71,'view_invoice'),(299,'Can add SES Messages',72,'add_message'),(300,'Can change SES Messages',72,'change_message'),(301,'Can delete SES Messages',72,'delete_message'),(302,'Can view SES Messages',72,'view_message'),(303,'Can add Favorite',73,'add_favorite'),(304,'Can change Favorite',73,'change_favorite'),(305,'Can delete Favorite',73,'delete_favorite'),(306,'Can view Favorite',73,'view_favorite'),(307,'Can add Customer',74,'add_socialcustomer'),(308,'Can change Customer',74,'change_socialcustomer'),(309,'Can delete Customer',74,'delete_socialcustomer'),(310,'Can view Customer',74,'view_socialcustomer'),(311,'Can add Social id',75,'add_socialid'),(312,'Can change Social id',75,'change_socialid'),(313,'Can delete Social id',75,'delete_socialid'),(314,'Can view Social id',75,'view_socialid'),(315,'Can add Taxi Call',76,'add_taxicalls'),(316,'Can change Taxi Call',76,'change_taxicalls'),(317,'Can delete Taxi Call',76,'delete_taxicalls'),(318,'Can view Taxi Call',76,'view_taxicalls'),(319,'Can add company tariff',77,'add_companytariff'),(320,'Can change company tariff',77,'change_companytariff'),(321,'Can delete company tariff',77,'delete_companytariff'),(322,'Can view company tariff',77,'view_companytariff'),(323,'Can add Distance And Car Type Tariff',78,'add_distanceandcartypetariff'),(324,'Can change Distance And Car Type Tariff',78,'change_distanceandcartypetariff'),(325,'Can delete Distance And Car Type Tariff',78,'delete_distanceandcartypetariff'),(326,'Can view Distance And Car Type Tariff',78,'view_distanceandcartypetariff'),(327,'Can add range tariff',79,'add_rangetariff'),(328,'Can change range tariff',79,'change_rangetariff'),(329,'Can delete range tariff',79,'delete_rangetariff'),(330,'Can view range tariff',79,'view_rangetariff'),(331,'Can add tariff',80,'add_tariff'),(332,'Can change tariff',80,'change_tariff'),(333,'Can delete tariff',80,'delete_tariff'),(334,'Can view tariff',80,'view_tariff'),(335,'Can add zone tariff',81,'add_zonetariff'),(336,'Can change zone tariff',81,'change_zonetariff'),(337,'Can delete zone tariff',81,'delete_zonetariff'),(338,'Can view zone tariff',81,'view_zonetariff'),(339,'Can add BandTariff',82,'add_bandtariff'),(340,'Can change BandTariff',82,'change_bandtariff'),(341,'Can delete BandTariff',82,'delete_bandtariff'),(342,'Can view BandTariff',82,'view_bandtariff'),(343,'Can add Settings',83,'add_settings'),(344,'Can change Settings',83,'change_settings'),(345,'Can delete Settings',83,'delete_settings'),(346,'Can view Settings',83,'view_settings'),(347,'Can add Topic',84,'add_topic'),(348,'Can change Topic',84,'change_topic'),(349,'Can delete Topic',84,'delete_topic'),(350,'Can view Topic',84,'view_topic'),(351,'Can add hierarchy',85,'add_hierarchy'),(352,'Can change hierarchy',85,'change_hierarchy'),(353,'Can delete hierarchy',85,'delete_hierarchy'),(354,'Can view hierarchy',85,'view_hierarchy'),(355,'Can add staff',86,'add_staff'),(356,'Can change staff',86,'change_staff'),(357,'Can delete staff',86,'delete_staff'),(358,'Can view staff',86,'view_staff'),(359,'Can add category',87,'add_category'),(360,'Can change category',87,'change_category'),(361,'Can delete category',87,'delete_category'),(362,'Can view category',87,'view_category'),(363,'Can add invoice detail',88,'add_invoicedetail'),(364,'Can change invoice detail',88,'change_invoicedetail'),(365,'Can delete invoice detail',88,'delete_invoicedetail'),(366,'Can view invoice detail',88,'view_invoicedetail'),(367,'Can add invoices',89,'add_invoices'),(368,'Can change invoices',89,'change_invoices'),(369,'Can delete invoices',89,'delete_invoices'),(370,'Can view invoices',89,'view_invoices'),(371,'Can add payment detail',90,'add_paymentdetail'),(372,'Can change payment detail',90,'change_paymentdetail'),(373,'Can delete payment detail',90,'delete_paymentdetail'),(374,'Can view payment detail',90,'view_paymentdetail'),(375,'Can add payments',91,'add_payments'),(376,'Can change payments',91,'change_payments'),(377,'Can delete payments',91,'delete_payments'),(378,'Can view payments',91,'view_payments'),(379,'Can add Product',92,'add_products'),(380,'Can change Product',92,'change_products'),(381,'Can delete Product',92,'delete_products'),(382,'Can view Product',92,'view_products'),(383,'Can add agent discount',93,'add_agentdiscount'),(384,'Can change agent discount',93,'change_agentdiscount'),(385,'Can delete agent discount',93,'delete_agentdiscount'),(386,'Can view agent discount',93,'view_agentdiscount'),(387,'Can add customer credit',94,'add_customercredit'),(388,'Can change customer credit',94,'change_customercredit'),(389,'Can delete customer credit',94,'delete_customercredit'),(390,'Can view customer credit',94,'view_customercredit'),(391,'Can add invoice prd log',95,'add_invoiceprdlog'),(392,'Can change invoice prd log',95,'change_invoiceprdlog'),(393,'Can delete invoice prd log',95,'delete_invoiceprdlog'),(394,'Can view invoice prd log',95,'view_invoiceprdlog'),(395,'Can add product requisition',96,'add_productrequisition'),(396,'Can change product requisition',96,'change_productrequisition'),(397,'Can delete product requisition',96,'delete_productrequisition'),(398,'Can view product requisition',96,'view_productrequisition'),(399,'Can add product requisition detail',97,'add_productrequisitiondetail'),(400,'Can change product requisition detail',97,'change_productrequisitiondetail'),(401,'Can delete product requisition detail',97,'delete_productrequisitiondetail'),(402,'Can view product requisition detail',97,'view_productrequisitiondetail'),(403,'Can add staff inventory',98,'add_staffinventory'),(404,'Can change staff inventory',98,'change_staffinventory'),(405,'Can delete staff inventory',98,'delete_staffinventory'),(406,'Can view staff inventory',98,'view_staffinventory'),(407,'Can add return',99,'add_return'),(408,'Can change return',99,'change_return'),(409,'Can delete return',99,'delete_return'),(410,'Can view return',99,'view_return'),(411,'Can add addition request',100,'add_additionrequest'),(412,'Can change addition request',100,'change_additionrequest'),(413,'Can delete addition request',100,'delete_additionrequest'),(414,'Can view addition request',100,'view_additionrequest'),(415,'Can add Addition Request Summary',101,'add_requestproduct'),(416,'Can change Addition Request Summary',101,'change_requestproduct'),(417,'Can delete Addition Request Summary',101,'delete_requestproduct'),(418,'Can view Addition Request Summary',101,'view_requestproduct'),(419,'Can add consumption',102,'add_consumption'),(420,'Can change consumption',102,'change_consumption'),(421,'Can delete consumption',102,'delete_consumption'),(422,'Can view consumption',102,'view_consumption'),(423,'Can add customer return',103,'add_customerreturn'),(424,'Can change customer return',103,'change_customerreturn'),(425,'Can delete customer return',103,'delete_customerreturn'),(426,'Can view customer return',103,'view_customerreturn'),(427,'Can add customer return detail',104,'add_customerreturndetail'),(428,'Can change customer return detail',104,'change_customerreturndetail'),(429,'Can delete customer return detail',104,'delete_customerreturndetail'),(430,'Can view customer return detail',104,'view_customerreturndetail'),(431,'Can add quotation',105,'add_quotation'),(432,'Can change quotation',105,'change_quotation'),(433,'Can delete quotation',105,'delete_quotation'),(434,'Can view quotation',105,'view_quotation'),(435,'Can add quotation detail',106,'add_quotationdetail'),(436,'Can change quotation detail',106,'change_quotationdetail'),(437,'Can delete quotation detail',106,'delete_quotationdetail'),(438,'Can view quotation detail',106,'view_quotationdetail'),(439,'Can add inventory transfer',107,'add_inventorytransfer'),(440,'Can change inventory transfer',107,'change_inventorytransfer'),(441,'Can delete inventory transfer',107,'delete_inventorytransfer'),(442,'Can view inventory transfer',107,'view_inventorytransfer'),(443,'Can add inventory transfer detail',108,'add_inventorytransferdetail'),(444,'Can change inventory transfer detail',108,'change_inventorytransferdetail'),(445,'Can delete inventory transfer detail',108,'delete_inventorytransferdetail'),(446,'Can view inventory transfer detail',108,'view_inventorytransferdetail'),(447,'Can add cancelled payment',109,'add_cancelledpayment'),(448,'Can change cancelled payment',109,'change_cancelledpayment'),(449,'Can delete cancelled payment',109,'delete_cancelledpayment'),(450,'Can view cancelled payment',109,'view_cancelledpayment'),(451,'Can add cancelled payment detail',110,'add_cancelledpaymentdetail'),(452,'Can change cancelled payment detail',110,'change_cancelledpaymentdetail'),(453,'Can delete cancelled payment detail',110,'delete_cancelledpaymentdetail'),(454,'Can view cancelled payment detail',110,'view_cancelledpaymentdetail'),(455,'Can add product adjustment',111,'add_productadjustment'),(456,'Can change product adjustment',111,'change_productadjustment'),(457,'Can delete product adjustment',111,'delete_productadjustment'),(458,'Can view product adjustment',111,'view_productadjustment'),(459,'Can add inventory audit',112,'add_inventoryaudit'),(460,'Can change inventory audit',112,'change_inventoryaudit'),(461,'Can delete inventory audit',112,'delete_inventoryaudit'),(462,'Can view inventory audit',112,'view_inventoryaudit'),(463,'Can add inventory audit detail',113,'add_inventoryauditdetail'),(464,'Can change inventory audit detail',113,'change_inventoryauditdetail'),(465,'Can delete inventory audit detail',113,'delete_inventoryauditdetail'),(466,'Can view inventory audit detail',113,'view_inventoryauditdetail'),(467,'Can add Custom Field',114,'add_customfield'),(468,'Can change Custom Field',114,'change_customfield'),(469,'Can delete Custom Field',114,'delete_customfield'),(470,'Can view Custom Field',114,'view_customfield'),(471,'Can add custom field value',115,'add_customfieldvalue'),(472,'Can change custom field value',115,'change_customfieldvalue'),(473,'Can delete custom field value',115,'delete_customfieldvalue'),(474,'Can view custom field value',115,'view_customfieldvalue'),(475,'Can add model custom field',116,'add_modelcustomfield'),(476,'Can change model custom field',116,'change_modelcustomfield'),(477,'Can delete model custom field',116,'delete_modelcustomfield'),(478,'Can view model custom field',116,'view_modelcustomfield'),(479,'Can add custom field choice',117,'add_customfieldchoice'),(480,'Can change custom field choice',117,'change_customfieldchoice'),(481,'Can delete custom field choice',117,'delete_customfieldchoice'),(482,'Can view custom field choice',117,'view_customfieldchoice'),(483,'Can add Messages Configuration',118,'add_messagesconfig'),(484,'Can change Messages Configuration',118,'change_messagesconfig'),(485,'Can delete Messages Configuration',118,'delete_messagesconfig'),(486,'Can view Messages Configuration',118,'view_messagesconfig'),(487,'Can add answer',119,'add_answer'),(488,'Can change answer',119,'change_answer'),(489,'Can delete answer',119,'delete_answer'),(490,'Can view answer',119,'view_answer'),(491,'Can add choice',120,'add_choice'),(492,'Can change choice',120,'change_choice'),(493,'Can delete choice',120,'delete_choice'),(494,'Can view choice',120,'view_choice'),(495,'Can add question',121,'add_question'),(496,'Can change question',121,'change_question'),(497,'Can delete question',121,'delete_question'),(498,'Can view question',121,'view_question'),(499,'Can add response',122,'add_response'),(500,'Can change response',122,'change_response'),(501,'Can delete response',122,'delete_response'),(502,'Can view response',122,'view_response'),(503,'Can add section',123,'add_section'),(504,'Can change section',123,'change_section'),(505,'Can delete section',123,'delete_section'),(506,'Can view section',123,'view_section'),(507,'Can add survey',124,'add_survey'),(508,'Can change survey',124,'change_survey'),(509,'Can delete survey',124,'delete_survey'),(510,'Can view survey',124,'view_survey'),(511,'Can add MapEntry',125,'add_mapentry'),(512,'Can change MapEntry',125,'change_mapentry'),(513,'Can delete MapEntry',125,'delete_mapentry'),(514,'Can view MapEntry',125,'view_mapentry'),(515,'Can add Zone',126,'add_zone'),(516,'Can change Zone',126,'change_zone'),(517,'Can delete Zone',126,'delete_zone'),(518,'Can view Zone',126,'view_zone'),(519,'Can add customer address',127,'add_customeraddress'),(520,'Can change customer address',127,'change_customeraddress'),(521,'Can delete customer address',127,'delete_customeraddress'),(522,'Can view customer address',127,'view_customeraddress'),(523,'Can add employee check in',128,'add_employeecheckin'),(524,'Can change employee check in',128,'change_employeecheckin'),(525,'Can delete employee check in',128,'delete_employeecheckin'),(526,'Can view employee check in',128,'view_employeecheckin'),(527,'Can add work place',129,'add_workplace'),(528,'Can change work place',129,'change_workplace'),(529,'Can delete work place',129,'delete_workplace'),(530,'Can view work place',129,'view_workplace'),(531,'Can add invoice location',130,'add_invoicelocation'),(532,'Can change invoice location',130,'change_invoicelocation'),(533,'Can delete invoice location',130,'delete_invoicelocation'),(534,'Can view invoice location',130,'view_invoicelocation'),(535,'Can add payment location',131,'add_paymentlocation'),(536,'Can change payment location',131,'change_paymentlocation'),(537,'Can delete payment location',131,'delete_paymentlocation'),(538,'Can view payment location',131,'view_paymentlocation'),(539,'Can add customer return location',132,'add_customerreturnlocation'),(540,'Can change customer return location',132,'change_customerreturnlocation'),(541,'Can delete customer return location',132,'delete_customerreturnlocation'),(542,'Can view customer return location',132,'view_customerreturnlocation'),(543,'Can add Route',133,'add_route'),(544,'Can change Route',133,'change_route'),(545,'Can delete Route',133,'delete_route'),(546,'Can view Route',133,'view_route'),(547,'Can add Stop',134,'add_stop'),(548,'Can change Stop',134,'change_stop'),(549,'Can delete Stop',134,'delete_stop'),(550,'Can view Stop',134,'view_stop'),(551,'Can add Stop Time',135,'add_stoptime'),(552,'Can change Stop Time',135,'change_stoptime'),(553,'Can delete Stop Time',135,'delete_stoptime'),(554,'Can view Stop Time',135,'view_stoptime'),(555,'Can add Trip',136,'add_trip'),(556,'Can change Trip',136,'change_trip'),(557,'Can delete Trip',136,'delete_trip'),(558,'Can view Trip',136,'view_trip'),(559,'Can add user feedback',137,'add_userfeedback'),(560,'Can change user feedback',137,'change_userfeedback'),(561,'Can delete user feedback',137,'delete_userfeedback'),(562,'Can view user feedback',137,'view_userfeedback'),(563,'Can add queue',138,'add_queue'),(564,'Can change queue',138,'change_queue'),(565,'Can delete queue',138,'delete_queue'),(566,'Can add message',139,'add_message'),(567,'Can change message',139,'change_message'),(568,'Can delete message',139,'delete_message'),(569,'Can add task state',140,'add_taskmeta'),(570,'Can change task state',140,'change_taskmeta'),(571,'Can delete task state',140,'delete_taskmeta'),(572,'Can add saved group result',141,'add_tasksetmeta'),(573,'Can change saved group result',141,'change_tasksetmeta'),(574,'Can delete saved group result',141,'delete_tasksetmeta'),(575,'Can add periodic task',142,'add_periodictask'),(576,'Can change periodic task',142,'change_periodictask'),(577,'Can delete periodic task',142,'delete_periodictask'),(578,'Can add periodic tasks',143,'add_periodictasks'),(579,'Can change periodic tasks',143,'change_periodictasks'),(580,'Can delete periodic tasks',143,'delete_periodictasks'),(581,'Can add crontab',144,'add_crontabschedule'),(582,'Can change crontab',144,'change_crontabschedule'),(583,'Can delete crontab',144,'delete_crontabschedule'),(584,'Can add worker',145,'add_workerstate'),(585,'Can change worker',145,'change_workerstate'),(586,'Can delete worker',145,'delete_workerstate'),(587,'Can add interval',146,'add_intervalschedule'),(588,'Can change interval',146,'change_intervalschedule'),(589,'Can delete interval',146,'delete_intervalschedule'),(590,'Can add task',147,'add_taskstate'),(591,'Can change task',147,'change_taskstate'),(592,'Can delete task',147,'delete_taskstate'),(593,'Can add sap call log',148,'add_sapcalllog'),(594,'Can change sap call log',148,'change_sapcalllog'),(595,'Can delete sap call log',148,'delete_sapcalllog'),(596,'Can add change log',149,'add_changelog'),(597,'Can change change log',149,'change_changelog'),(598,'Can delete change log',149,'delete_changelog'),(599,'Can add change log detail',150,'add_changelogdetail'),(600,'Can change change log detail',150,'change_changelogdetail'),(601,'Can delete change log detail',150,'delete_changelogdetail'),(602,'Can add zone address log',151,'add_zoneaddresslog'),(603,'Can change zone address log',151,'change_zoneaddresslog'),(604,'Can delete zone address log',151,'delete_zoneaddresslog'),(605,'Can add route action',152,'add_routeaction'),(606,'Can change route action',152,'change_routeaction'),(607,'Can delete route action',152,'delete_routeaction'),(608,'Can add route assignment',153,'add_routeassignment'),(609,'Can change route assignment',153,'change_routeassignment'),(610,'Can delete route assignment',153,'delete_routeassignment'),(611,'Can add integration config',154,'add_integrationconfig'),(612,'Can change integration config',154,'change_integrationconfig'),(613,'Can delete integration config',154,'delete_integrationconfig'),(614,'Can add bulk return',155,'add_bulkreturn'),(615,'Can change bulk return',155,'change_bulkreturn'),(616,'Can delete bulk return',155,'delete_bulkreturn'),(617,'Can add product update log',156,'add_productupdatelog'),(618,'Can change product update log',156,'change_productupdatelog'),(619,'Can delete product update log',156,'delete_productupdatelog'),(620,'Can add staff inventory product log',157,'add_staffinventoryproductlog'),(621,'Can change staff inventory product log',157,'change_staffinventoryproductlog'),(622,'Can delete staff inventory product log',157,'delete_staffinventoryproductlog'),(623,'Can add customer price segment detail',158,'add_customerpricesegmentdetail'),(624,'Can change customer price segment detail',158,'change_customerpricesegmentdetail'),(625,'Can delete customer price segment detail',158,'delete_customerpricesegmentdetail'),(626,'Can add payment attachment',159,'add_paymentattachment'),(627,'Can change payment attachment',159,'change_paymentattachment'),(628,'Can delete payment attachment',159,'delete_paymentattachment'),(629,'Can add customer price segment',160,'add_customerpricesegment'),(630,'Can change customer price segment',160,'change_customerpricesegment'),(631,'Can delete customer price segment',160,'delete_customerpricesegment'),(632,'Can add invoice attachment',161,'add_invoiceattachment'),(633,'Can change invoice attachment',161,'change_invoiceattachment'),(634,'Can delete invoice attachment',161,'delete_invoiceattachment'),(635,'Can add deposit refund detail',162,'add_depositrefunddetail'),(636,'Can change deposit refund detail',162,'change_depositrefunddetail'),(637,'Can delete deposit refund detail',162,'delete_depositrefunddetail'),(638,'Can add segment product log',163,'add_segmentproductlog'),(639,'Can change segment product log',163,'change_segmentproductlog'),(640,'Can delete segment product log',163,'delete_segmentproductlog'),(641,'Can add product image',164,'add_productimage'),(642,'Can change product image',164,'change_productimage'),(643,'Can delete product image',164,'delete_productimage'),(644,'Can add bonus rule',165,'add_bonusrule'),(645,'Can change bonus rule',165,'change_bonusrule'),(646,'Can delete bonus rule',165,'delete_bonusrule'),(647,'Can add job timer location',166,'add_jobtimerlocation'),(648,'Can change job timer location',166,'change_jobtimerlocation'),(649,'Can delete job timer location',166,'delete_jobtimerlocation'),(650,'Can add car driver log',167,'add_cardriverlog'),(651,'Can change car driver log',167,'change_cardriverlog'),(652,'Can delete car driver log',167,'delete_cardriverlog'),(653,'Can add category group',168,'add_categorygroup'),(654,'Can change category group',168,'change_categorygroup'),(655,'Can delete category group',168,'delete_categorygroup'),(656,'Can add tariff range',169,'add_tariffrange'),(657,'Can change tariff range',169,'change_tariffrange'),(658,'Can delete tariff range',169,'delete_tariffrange'),(659,'Can add api config',170,'add_apiconfig'),(660,'Can change api config',170,'change_apiconfig'),(661,'Can delete api config',170,'delete_apiconfig'),(662,'Can add api header',171,'add_apiheader'),(663,'Can change api header',171,'change_apiheader'),(664,'Can delete api header',171,'delete_apiheader'),(665,'Can add external system',172,'add_externalsystem'),(666,'Can change external system',172,'change_externalsystem'),(667,'Can delete external system',172,'delete_externalsystem'),(668,'Can add external system object mapping',173,'add_externalsystemobjectmapping'),(669,'Can change external system object mapping',173,'change_externalsystemobjectmapping'),(670,'Can delete external system object mapping',173,'delete_externalsystemobjectmapping'),(671,'Can add api call log',174,'add_apicalllog'),(672,'Can change api call log',174,'change_apicalllog'),(673,'Can delete api call log',174,'delete_apicalllog'),(674,'Can add external system constant mapping',175,'add_externalsystemconstantmapping'),(675,'Can change external system constant mapping',175,'change_externalsystemconstantmapping'),(676,'Can delete external system constant mapping',175,'delete_externalsystemconstantmapping');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_booking`
--

DROP TABLE IF EXISTS `booking_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pickup_location` varchar(500) NOT NULL,
  `pickup_time` datetime(6) NOT NULL,
  `destination` varchar(500) DEFAULT NULL,
  `comments` longtext,
  `added_time` datetime(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `point_from` varchar(200) DEFAULT NULL,
  `point_to` varchar(200) DEFAULT NULL,
  `min_cost` decimal(19,2) DEFAULT NULL,
  `actual_cost` decimal(19,2) DEFAULT NULL,
  `distance` double DEFAULT NULL,
  `actual_distance` double DEFAULT NULL,
  `est_time` double DEFAULT NULL,
  `waiting_time` double DEFAULT NULL,
  `car_type` varchar(300) DEFAULT NULL,
  `subid` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `car_id` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `zone_from_id` int(11) DEFAULT NULL,
  `zone_to_id` int(11) DEFAULT NULL,
  `is_fake` tinyint(1) DEFAULT NULL,
  `is_suspected_fraud` tinyint(1) NOT NULL,
  `timer_end` datetime(6) DEFAULT NULL,
  `timer_start` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `booking_booking_subid_company_id_bda47d19_uniq` (`subid`,`company_id`),
  KEY `booking_booking_agent_id_b4ed911f_fk_profiles_agent_id` (`agent_id`),
  KEY `booking_booking_car_id_5c95e0b2_fk_tracking_car_id` (`car_id`),
  KEY `booking_booking_company_id_a91846a2_fk_profiles_company_id` (`company_id`),
  KEY `booking_booking_customer_id_4ba0ea8c_fk_profiles_customer_id` (`customer_id`),
  KEY `booking_booking_driver_id_ff14ee72_fk_profiles_driver_id` (`driver_id`),
  KEY `booking_booking_zone_from_id_9e0034c9_fk_booking_zone_id` (`zone_from_id`),
  KEY `booking_booking_zone_to_id_ada5d692_fk_booking_zone_id` (`zone_to_id`),
  CONSTRAINT `booking_booking_agent_id_b4ed911f_fk_profiles_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `booking_booking_car_id_5c95e0b2_fk_tracking_car_id` FOREIGN KEY (`car_id`) REFERENCES `tracking_car` (`id`),
  CONSTRAINT `booking_booking_company_id_a91846a2_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `booking_booking_customer_id_4ba0ea8c_fk_profiles_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `profiles_customer` (`id`),
  CONSTRAINT `booking_booking_driver_id_ff14ee72_fk_profiles_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `profiles_driver` (`id`),
  CONSTRAINT `booking_booking_zone_from_id_9e0034c9_fk_booking_zone_id` FOREIGN KEY (`zone_from_id`) REFERENCES `booking_zone` (`id`),
  CONSTRAINT `booking_booking_zone_to_id_ada5d692_fk_booking_zone_id` FOREIGN KEY (`zone_to_id`) REFERENCES `booking_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_booking`
--

LOCK TABLES `booking_booking` WRITE;
/*!40000 ALTER TABLE `booking_booking` DISABLE KEYS */;
INSERT INTO `booking_booking` VALUES (1,'Point 17 Cafe, Al Abageyah, El-Khalifa, Egypt','2020-04-02 14:18:00.000000',NULL,'','2020-04-02 12:20:52.116505','Assigned','(30.0161619, 31.2996324)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,1,2,1,2,1,NULL,0,NULL,NULL),(2,'Event House Company, Gaafar Waly, Shagret Mariem, El Matareya, Egypt','2020-04-02 15:10:00.000000',NULL,'','2020-04-02 13:10:28.310244','Assigned','(30.1253747, 31.3135229)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,1,NULL,1,2,1,1,1,NULL,0,NULL,NULL),(3,'test','2020-04-02 15:46:00.000000',NULL,'','2020-04-02 13:46:36.457639','Assigned','(30.0396471, 31.2056471)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,1,NULL,1,1,1,1,1,NULL,0,NULL,NULL),(4,'h','2020-04-02 16:04:00.000000',NULL,'','2020-04-02 14:04:49.516094','Assigned','(30.0130557, 31.2088526)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,1,NULL,1,3,1,3,1,NULL,0,NULL,NULL),(5,'Point 1','2020-04-05 15:38:00.000000',NULL,'','2020-04-05 13:38:47.100488','Assigned','(30.1067298,31.36462129999999)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,1,NULL,1,3,2,2,1,NULL,0,NULL,NULL),(6,'Dandy Mall, Alexandria Desert Road, Al Giza Desert, Egypt','2020-04-05 15:53:00.000000',NULL,'','2020-04-05 13:53:34.945941','Assigned','(30.0633737, 31.0277081)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,1,NULL,1,3,1,1,1,NULL,0,NULL,NULL),(7,'h','2020-04-07 16:05:00.000000',NULL,NULL,'2020-04-05 14:03:26.218326','Assigned','(30.0130557, 31.2088526)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,1,NULL,1,3,1,3,NULL,NULL,0,NULL,NULL),(8,'h','2020-04-07 16:35:00.000000',NULL,NULL,'2020-04-05 14:03:26.285998','Assigned','(30.0130557, 31.2088526)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,1,NULL,1,3,1,3,NULL,NULL,0,NULL,NULL),(9,'sh','2020-04-07 16:55:00.000000',NULL,NULL,'2020-04-05 14:03:26.336766','Assigned','(30.1386966, 31.39708630000001)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,1,NULL,1,3,1,3,NULL,NULL,0,NULL,NULL),(10,'h','2020-04-08 16:05:00.000000',NULL,NULL,'2020-04-06 08:10:09.046346','Assigned','(30.0130557, 31.2088526)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1,NULL,1,3,2,3,NULL,NULL,0,NULL,NULL),(11,'h','2020-04-08 16:35:00.000000',NULL,NULL,'2020-04-06 08:10:09.094159','Assigned','(30.0130557, 31.2088526)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11,1,NULL,1,3,2,3,NULL,NULL,0,NULL,NULL),(12,'sh','2020-04-08 16:55:00.000000',NULL,NULL,'2020-04-06 08:10:09.154940','Assigned','(30.1386966, 31.39708630000001)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,1,NULL,1,3,2,3,NULL,NULL,0,NULL,NULL),(13,'Old Makkah Rd, Al Mutanazahat District, Jeddah 22353 6266, Saudi Arabia','2020-04-06 10:27:00.000000',NULL,'','2020-04-06 08:31:53.197080','Assigned','(21.449330226931732, 39.29281139592287)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13,1,NULL,1,4,2,3,1,NULL,0,NULL,NULL),(14,'Old Makkah Rd, Al Mutanazahat District, Jeddah 22353 6266, Saudi Arabia','2020-04-14 10:50:00.000000',NULL,NULL,'2020-04-06 08:50:36.952190','Assigned','(21.449330226931732, 39.29281139592287)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,1,NULL,1,4,1,3,NULL,NULL,0,NULL,NULL),(15,'hhh','2020-04-14 11:40:00.000000',NULL,NULL,'2020-04-06 08:50:37.034141','Assigned','(21.4537239, 39.2721262)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,1,NULL,1,2,1,3,NULL,NULL,0,NULL,NULL),(16,'Old Makkah Rd, Al Mutanazahat District, Jeddah 22353 6266, Saudi Arabia','2020-04-06 12:00:00.000000',NULL,'','2020-04-06 13:08:37.202109','New','(21.449330226931732, 39.29281139592287)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16,5,NULL,1,4,4,1,NULL,NULL,0,NULL,NULL),(17,'Old Makkah Rd, Al Mutanazahat District, Jeddah 22353 6266, Saudi Arabia','2020-04-06 12:00:00.000000',NULL,'','2020-04-06 13:09:30.759254','New','(21.449330226931732, 39.29281139592287)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17,5,NULL,1,4,4,1,NULL,NULL,0,NULL,NULL),(18,'Old Makkah Rd, Al Mutanazahat District, Jeddah 22353 6266, Saudi Arabia','2020-04-06 12:00:00.000000',NULL,'','2020-04-06 13:10:03.579703','New','(21.449330226931732, 39.29281139592287)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,18,5,NULL,1,4,4,1,NULL,NULL,0,NULL,NULL),(19,'Old Makkah Rd, Al Mutanazahat District, Jeddah 22353 6266, Saudi Arabia','2020-04-06 12:00:00.000000',NULL,'','2020-04-06 13:23:38.640232','New','(21.449330226931732, 39.29281139592287)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,5,NULL,1,4,4,1,NULL,NULL,0,NULL,NULL),(20,'Old Makkah Rd, Al Mutanazahat District, Jeddah 22353 6266, Saudi Arabia','2020-04-06 12:00:00.000000',NULL,'','2020-04-06 13:24:54.535055','New','(21.449330226931732, 39.29281139592287)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,5,NULL,1,4,4,1,NULL,NULL,0,NULL,NULL),(21,'Old Makkah Rd, Al Mutanazahat District, Jeddah 22353 6266, Saudi Arabia','2020-04-06 12:00:00.000000',NULL,'','2020-04-06 13:25:58.666793','New','(21.449330226931732, 39.29281139592287)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,21,5,NULL,1,4,4,1,NULL,NULL,0,NULL,NULL),(22,'Old Makkah Rd, Al Mutanazahat District, Jeddah 22353 6266, Saudi Arabia','2020-04-06 12:00:00.000000',NULL,'','2020-04-06 14:11:37.240786','Assigned','(21.449330226931732, 39.29281139592287)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,22,5,NULL,1,4,1,1,NULL,NULL,0,NULL,NULL),(23,'Point 1','2020-04-06 16:54:00.000000',NULL,'','2020-04-06 14:54:32.729906','Assigned','(30.1067298,31.36462129999999)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,23,1,NULL,1,5,2,2,1,NULL,0,NULL,NULL),(24,'Old Makkah Rd, Al Mutanazahat District, Jeddah 22353 6266, Saudi Arabia','2020-04-06 12:00:00.000000',NULL,'','2020-04-06 14:57:59.288844','Completed','(21.449330226931732, 39.29281139592287)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,24,5,NULL,1,4,4,1,NULL,NULL,0,NULL,NULL),(25,'h','2020-04-06 12:00:00.000000',NULL,'','2020-04-06 14:58:00.159677','Canceled','(30.0130557, 31.2088526)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,25,5,NULL,1,3,4,1,NULL,NULL,0,NULL,NULL),(26,'مدينة تبارك،سرياقوس، مركز الخانكة،، Saryaqos, Al Khankah, Al Qalyubia Governorate, Egypt ','2020-04-07 12:00:00.000000',NULL,'','2020-04-06 14:58:25.221824','Completed','(30.180294024196108, 31.305717341601852)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,26,5,NULL,1,2,4,1,NULL,NULL,0,NULL,NULL),(27,'Old Makkah Rd, Al Mutanazahat District, Jeddah 22353 6266, Saudi Arabia','2020-04-07 12:00:00.000000',NULL,'','2020-04-06 15:24:50.657466','Planned','(21.449330226931732, 39.29281139592287)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,27,5,NULL,1,4,4,1,NULL,NULL,0,NULL,NULL),(28,'h','2020-04-07 12:00:00.000000',NULL,'','2020-04-06 15:24:51.478930','Planned','(30.0130557, 31.2088526)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,5,NULL,1,3,4,1,NULL,NULL,0,NULL,NULL),(29,'Old Makkah Rd, Al Mutanazahat District, Jeddah 22353 6266, Saudi Arabia','2020-04-07 12:00:00.000000',NULL,'','2020-04-07 10:20:02.291252','Completed','(21.449330226931732, 39.29281139592287)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,29,5,NULL,1,4,4,1,NULL,NULL,0,NULL,NULL),(30,'sh','2020-04-07 12:00:00.000000',NULL,'','2020-04-07 10:20:03.045692','Planned','(30.1386966, 31.39708630000001)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,5,NULL,1,3,4,1,NULL,NULL,0,NULL,NULL),(31,'sh','2020-04-07 12:00:00.000000',NULL,'','2020-04-07 10:20:03.543702','Planned','(30.1386966, 31.39708630000001)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,31,5,NULL,1,3,4,1,NULL,NULL,0,NULL,NULL),(32,'Event House Company, Gaafar Waly, Shagret Mariem, El Matareya, Egypt','2020-04-07 12:00:00.000000',NULL,'','2020-04-07 10:22:10.116473','Canceled','(30.1253747, 31.3135229)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,32,5,NULL,1,2,4,1,NULL,NULL,0,NULL,NULL),(33,'test','2020-04-08 12:00:00.000000',NULL,'','2020-04-07 10:23:41.461807','Planned','(30.0396471, 31.2056471)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,33,5,NULL,1,1,4,1,NULL,NULL,0,NULL,NULL),(34,'test','2020-04-09 12:00:00.000000',NULL,'','2020-04-07 10:26:21.261580','Assigned','(30.0396471, 31.2056471)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,34,5,NULL,1,1,4,1,NULL,NULL,0,NULL,NULL),(35,'(30.0396471, 31.2056471)','2020-04-08 01:01:00.000000','','','2020-04-08 11:57:44.404377','Planned','(30.0396471, 31.2056471)','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,35,5,NULL,1,1,4,1,NULL,NULL,0,NULL,NULL),(36,'Event House Company, Gaafar Waly, Shagret Mariem, El Matareya, Egypt','2020-04-09 15:25:00.000000',NULL,NULL,'2020-04-08 13:26:40.965884','Assigned','(30.1253747, 31.3135229)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,36,1,NULL,1,2,1,1,NULL,NULL,0,NULL,NULL),(37,'مدينة تبارك،سرياقوس، مركز الخانكة،، Saryaqos, Al Khankah, Al Qalyubia Governorate, Egypt ','2020-04-09 15:35:00.000000',NULL,NULL,'2020-04-08 13:26:41.014698','Assigned','(30.180294024196108, 31.305717341601852)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37,1,NULL,1,2,1,1,NULL,NULL,0,NULL,NULL),(38,'Event House Company, Gaafar Waly, Shagret Mariem, El Matareya, Egypt','2020-04-16 15:25:00.000000',NULL,NULL,'2020-04-08 13:26:41.076473','Assigned','(30.1253747, 31.3135229)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,38,1,NULL,1,2,1,1,NULL,NULL,0,NULL,NULL),(39,'مدينة تبارك،سرياقوس، مركز الخانكة،، Saryaqos, Al Khankah, Al Qalyubia Governorate, Egypt ','2020-04-16 15:35:00.000000',NULL,NULL,'2020-04-08 13:26:41.136749','Assigned','(30.180294024196108, 31.305717341601852)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,39,1,NULL,1,2,1,1,NULL,NULL,0,NULL,NULL),(40,'مدينة تبارك،سرياقوس، مركز الخانكة،، Saryaqos, Al Khankah, Al Qalyubia Governorate, Egypt ','2020-04-23 15:30:00.000000',NULL,NULL,'2020-04-08 13:28:44.992448','Assigned','(30.180294024196108, 31.305717341601852)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,1,NULL,1,2,2,1,NULL,NULL,0,NULL,NULL),(41,'Event House Company, Gaafar Waly, Shagret Mariem, El Matareya, Egypt','2020-04-23 15:35:00.000000',NULL,NULL,'2020-04-08 13:28:45.041686','Assigned','(30.1253747, 31.3135229)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,41,1,NULL,1,2,2,1,NULL,NULL,0,NULL,NULL),(42,'مدينة تبارك،سرياقوس، مركز الخانكة،، Saryaqos, Al Khankah, Al Qalyubia Governorate, Egypt ','2020-04-30 15:30:00.000000',NULL,NULL,'2020-04-08 13:28:45.095720','Completed','(30.180294024196108, 31.305717341601852)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,42,1,NULL,1,2,2,1,NULL,NULL,0,NULL,NULL),(43,'Event House Company, Gaafar Waly, Shagret Mariem, El Matareya, Egypt','2020-04-30 15:35:00.000000',NULL,NULL,'2020-04-08 13:28:45.155448','Completed','(30.1253747, 31.3135229)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,43,1,NULL,1,2,2,1,NULL,0,0,NULL,NULL),(44,'Event House Company, Gaafar Waly, Shagret Mariem, El Matareya, Egypt','2020-04-17 16:31:00.000000',NULL,NULL,'2020-04-08 14:02:06.312430','Assigned','(30.1253747, 31.3135229)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,1,NULL,1,2,1,1,NULL,NULL,0,NULL,NULL),(45,'مدينة تبارك،سرياقوس، مركز الخانكة،، Saryaqos, Al Khankah, Al Qalyubia Governorate, Egypt ','2020-04-17 17:00:00.000000',NULL,NULL,'2020-04-08 14:02:06.360311','Assigned','(30.180294024196108, 31.305717341601852)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,45,1,NULL,1,2,1,1,NULL,NULL,0,NULL,NULL),(46,'Event House Company, Gaafar Waly, Shagret Mariem, El Matareya, Egypt','2020-04-24 16:31:00.000000',NULL,NULL,'2020-04-08 14:02:06.412111','Assigned','(30.1253747, 31.3135229)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,46,1,NULL,1,2,1,1,NULL,NULL,0,NULL,NULL),(47,'مدينة تبارك،سرياقوس، مركز الخانكة،، Saryaqos, Al Khankah, Al Qalyubia Governorate, Egypt ','2020-04-24 17:00:00.000000',NULL,NULL,'2020-04-08 14:02:06.461813','Completed','(30.180294024196108, 31.305717341601852)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,47,1,NULL,1,2,1,1,NULL,NULL,0,NULL,NULL),(48,'h','2020-04-08 16:05:00.000000',NULL,NULL,'2020-04-08 14:05:19.860819','Assigned','(30.0130557, 31.2088526)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,48,1,NULL,1,3,1,3,NULL,NULL,0,NULL,NULL),(49,'h','2020-04-08 16:35:00.000000',NULL,NULL,'2020-04-08 14:05:19.908347','Assigned','(30.0130557, 31.2088526)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,49,1,NULL,1,3,1,3,NULL,NULL,0,NULL,NULL),(50,'hhh','2020-04-08 16:40:00.000000',NULL,NULL,'2020-04-08 14:05:19.979676','Assigned','(21.4537239, 39.2721262)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,1,NULL,1,2,1,3,NULL,NULL,0,NULL,NULL),(51,'dd','2020-04-29 12:00:00.000000',NULL,'','2020-04-22 11:20:02.392584','Planned','(30.063262273872205, 31.027643726983623)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,51,3,NULL,1,3,2,2,NULL,NULL,0,NULL,NULL),(52,'Saad Zagloul Sq., اول القاهرة الجديدة، محافظة القاهرة‬، مصر','2020-04-23 12:00:00.000000',NULL,'','2020-04-22 11:24:13.759757','Planned','(30.02928768634586,31.47514242678881)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,52,5,NULL,1,10,4,2,NULL,NULL,0,NULL,NULL),(53,'El-Mansheya Rd, Madinet Al Khankah, Al Khankah, Al Qalyubia Governorate, Egypt','2020-04-30 12:00:00.000000',NULL,'bbbbbb','2020-04-22 11:24:52.051340','Planned','(30.145261131912513,31.397536061704155)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,53,5,NULL,1,11,4,2,NULL,NULL,0,NULL,NULL),(54,'13 N 90th Street - Service Ln, First New Cairo, Cairo Governorate, Egypt','2020-04-22 12:00:00.000000',NULL,'','2020-04-22 12:29:23.298238','Assigned','(30.03131086093997,31.464086025953293)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,54,5,NULL,1,6,4,1,NULL,NULL,0,NULL,NULL),(55,'Unnamed Road،، اول القاهرة الجديدة، محافظة القاهرة‬، مصر','2020-04-22 12:00:00.000000',NULL,'','2020-04-22 12:33:14.978853','Planned','(30.022337462264485,31.443029344081882)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,55,5,NULL,1,8,4,2,NULL,NULL,0,NULL,NULL),(56,'Old Makkah Rd, Al Mutanazahat District, Jeddah 22353 6266, Saudi Arabia','2020-04-22 12:00:00.000000',NULL,'','2020-04-22 12:33:44.777222','Planned','(21.449330226931732, 39.29281139592287)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,56,5,NULL,1,4,4,1,NULL,NULL,0,NULL,NULL),(57,'El-Mansheya Rd, Madinet Al Khankah, Al Khankah, Al Qalyubia Governorate, Egypt','2020-04-22 12:00:00.000000',NULL,'','2020-04-22 12:43:07.170278','Planned','(30.145261131912513,31.397536061704155)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,57,5,NULL,1,11,4,2,NULL,NULL,0,NULL,NULL),(58,'Saad Zagloul Sq., اول القاهرة الجديدة، محافظة القاهرة‬، مصر','2020-04-22 12:00:00.000000',NULL,'','2020-04-22 12:43:07.962125','Planned','(30.02928768634586,31.47514242678881)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,58,5,NULL,1,10,4,2,NULL,NULL,0,NULL,NULL),(59,'Unnamed Road،، اول القاهرة الجديدة، محافظة القاهرة‬، مصر','2020-04-22 12:00:00.000000',NULL,'','2020-04-22 12:43:08.524358','Planned','(30.022337462264485,31.443029344081882)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,59,5,NULL,1,8,4,2,NULL,NULL,0,NULL,NULL),(60,'El-Mansheya Rd, Madinet Al Khankah, Al Khankah, Al Qalyubia Governorate, Egypt','2020-04-22 12:00:00.000000',NULL,'bb','2020-04-22 13:43:11.416566','Planned','(30.145261131912513,31.397536061704155)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,60,5,NULL,1,11,4,2,NULL,NULL,0,NULL,NULL),(61,'13 N 90th Street - Service Ln, First New Cairo, Cairo Governorate, Egypt','2020-05-05 12:00:00.000000',NULL,'njja','2020-04-22 13:44:00.022336','Planned','(30.03131086093997,31.464086025953293)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,61,5,NULL,1,6,4,1,NULL,NULL,0,NULL,NULL),(62,'El-Mansheya Rd, Madinet Al Khankah, Al Khankah, Al Qalyubia Governorate, Egypt','2020-04-23 12:00:00.000000',NULL,'وووو','2020-04-22 13:54:14.194225','Planned','(30.145261131912513,31.397536061704155)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,62,5,NULL,1,11,4,2,NULL,NULL,0,NULL,NULL),(63,'Saad Zagloul Sq., اول القاهرة الجديدة، محافظة القاهرة‬، مصر','2020-04-23 12:00:00.000000',NULL,'وووو','2020-04-22 13:54:14.810011','Planned','(30.02928768634586,31.47514242678881)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63,5,NULL,1,10,4,2,NULL,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `booking_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_bookingattachment`
--

DROP TABLE IF EXISTS `booking_bookingattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_bookingattachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `notes` longtext,
  `booking_id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `tag` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_bookingattac_booking_id_498b45f0_fk_booking_b` (`booking_id`),
  KEY `booking_bookingattac_created_by_id_06a79c30_fk_profiles_` (`created_by_id`),
  CONSTRAINT `booking_bookingattac_booking_id_498b45f0_fk_booking_b` FOREIGN KEY (`booking_id`) REFERENCES `booking_booking` (`id`),
  CONSTRAINT `booking_bookingattac_created_by_id_06a79c30_fk_profiles_` FOREIGN KEY (`created_by_id`) REFERENCES `profiles_agent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_bookingattachment`
--

LOCK TABLES `booking_bookingattachment` WRITE;
/*!40000 ALTER TABLE `booking_bookingattachment` DISABLE KEYS */;
INSERT INTO `booking_bookingattachment` VALUES (1,'','\"test\" \nCreated By Staff-4',24,'2020-04-06 17:31:10.000000',5,'notes'),(2,'','24-Wael Mohamed-Staff-40604201734.wav',24,'2020-04-06 17:32:22.000000',5,'audio'),(3,'attachments/1/booking_24/employee_signature/Mon_Apr_06_173440_GMT0200_2020.png','',24,'2020-04-06 17:32:28.000000',5,'employee_signature'),(4,'attachments/1/booking_24/image/IMG-20200406-WA0005.jpg','',24,'2020-04-06 17:32:37.000000',5,'image'),(5,'attachments/1/booking_29/employee_signature/Tue_Apr_07_123250_GMT0200_2020.png','',29,'2020-04-07 12:30:37.000000',5,'employee_signature'),(6,'','29-Wael Mohamed-Staff-40704201232.wav',29,'2020-04-07 12:30:41.000000',5,'audio'),(7,'','\"test\" \nCreated By Staff-4',29,'2020-04-07 12:30:46.000000',5,'notes'),(8,'attachments/1/booking_29/image/IMG_20200406_121245.jpg','',29,'2020-04-07 12:31:04.000000',5,'image');
/*!40000 ALTER TABLE `booking_bookingattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_bookingstatus`
--

DROP TABLE IF EXISTS `booking_bookingstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_bookingstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_time` datetime(6) NOT NULL,
  `lat` varchar(100) DEFAULT NULL,
  `lng` varchar(100) DEFAULT NULL,
  `booking_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `accuracy` varchar(50) DEFAULT NULL,
  `mock` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_bookingstatus_booking_id_edf389a9_fk_booking_booking_id` (`booking_id`),
  KEY `booking_bookingstatu_status_id_87640471_fk_booking_s` (`status_id`),
  KEY `booking_bookingstatus_user_id_ce2b99c4_fk_profiles_agent_id` (`user_id`),
  CONSTRAINT `booking_bookingstatu_status_id_87640471_fk_booking_s` FOREIGN KEY (`status_id`) REFERENCES `booking_statuscode` (`id`),
  CONSTRAINT `booking_bookingstatus_booking_id_edf389a9_fk_booking_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking_booking` (`id`),
  CONSTRAINT `booking_bookingstatus_user_id_ce2b99c4_fk_profiles_agent_id` FOREIGN KEY (`user_id`) REFERENCES `profiles_agent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_bookingstatus`
--

LOCK TABLES `booking_bookingstatus` WRITE;
/*!40000 ALTER TABLE `booking_bookingstatus` DISABLE KEYS */;
INSERT INTO `booking_bookingstatus` VALUES (1,'2020-04-02 12:20:52.131414','0','0',1,1,1,NULL,NULL),(2,'2020-04-02 13:10:28.329247','0','0',2,1,1,NULL,NULL),(3,'2020-04-02 13:46:36.486649','0','0',3,1,1,NULL,NULL),(4,'2020-04-02 14:04:49.544517','0','0',4,1,1,NULL,NULL),(5,'2020-04-05 13:38:47.124039','0','0',5,1,1,NULL,NULL),(6,'2020-04-05 13:53:34.975027','0','0',6,1,1,NULL,NULL),(7,'2020-04-05 14:03:26.252843','0','0',7,1,1,NULL,NULL),(8,'2020-04-05 14:03:26.272689','0','0',7,2,1,NULL,NULL),(9,'2020-04-05 14:03:26.313377','0','0',8,1,1,NULL,NULL),(10,'2020-04-05 14:03:26.323554','0','0',8,2,1,NULL,NULL),(11,'2020-04-05 14:03:26.364114','0','0',9,1,1,NULL,NULL),(12,'2020-04-05 14:03:26.374226','0','0',9,2,1,NULL,NULL),(13,'2020-04-06 08:10:09.070809','0','0',10,1,1,NULL,NULL),(14,'2020-04-06 08:10:09.080776','0','0',10,2,1,NULL,NULL),(15,'2020-04-06 08:10:09.121357','0','0',11,1,1,NULL,NULL),(16,'2020-04-06 08:10:09.141663','0','0',11,2,1,NULL,NULL),(17,'2020-04-06 08:10:09.192540','0','0',12,1,1,NULL,NULL),(18,'2020-04-06 08:10:09.202909','0','0',12,2,1,NULL,NULL),(19,'2020-04-06 08:31:53.215662','0','0',13,1,1,NULL,NULL),(20,'2020-04-06 08:50:36.988418','0','0',14,1,1,NULL,NULL),(21,'2020-04-06 08:50:37.023708','0','0',14,2,1,NULL,NULL),(22,'2020-04-06 08:50:37.061326','0','0',15,1,1,NULL,NULL),(23,'2020-04-06 08:50:37.071523','0','0',15,2,1,NULL,NULL),(24,'2020-04-06 13:08:37.205892','0','0',16,1,5,NULL,NULL),(25,'2020-04-06 13:08:37.216591','0','0',16,11,5,NULL,NULL),(26,'2020-04-06 13:09:30.773659','0','0',17,1,5,NULL,NULL),(27,'2020-04-06 13:09:30.784476','0','0',17,11,5,NULL,NULL),(28,'2020-04-06 13:10:03.583780','0','0',18,1,5,NULL,NULL),(29,'2020-04-06 13:10:03.595299','0','0',18,11,5,NULL,NULL),(30,'2020-04-06 13:23:38.644150','0','0',19,1,5,NULL,NULL),(31,'2020-04-06 13:23:38.654531','0','0',19,11,5,NULL,NULL),(32,'2020-04-06 13:24:54.538845','0','0',20,1,5,NULL,NULL),(33,'2020-04-06 13:24:54.559858','0','0',20,11,5,NULL,NULL),(34,'2020-04-06 13:25:58.681179','0','0',21,1,5,NULL,NULL),(35,'2020-04-06 13:25:58.691780','0','0',21,11,5,NULL,NULL),(36,'2020-04-06 14:11:37.244971','0','0',22,1,5,NULL,NULL),(37,'2020-04-06 14:11:37.255464','0','0',22,11,5,NULL,NULL),(38,'2020-04-06 14:54:32.743081','0','0',23,1,1,NULL,NULL),(39,'2020-04-06 14:57:59.292864','0','0',24,1,5,NULL,NULL),(40,'2020-04-06 14:57:59.303636','0','0',24,11,5,NULL,NULL),(41,'2020-04-06 14:58:00.163449','0','0',25,1,5,NULL,NULL),(42,'2020-04-06 14:58:00.184770','0','0',25,11,5,NULL,NULL),(43,'2020-04-06 14:58:25.225771','0','0',26,1,5,NULL,NULL),(44,'2020-04-06 14:58:25.237107','0','0',26,11,5,NULL,NULL),(45,'2020-04-06 14:58:36.512808','0','0',26,2,1,NULL,NULL),(46,'2020-04-06 14:58:36.669452','0','0',25,2,1,NULL,NULL),(47,'2020-04-06 14:58:36.821868','0','0',24,2,1,NULL,NULL),(48,'2020-04-06 15:24:50.670326','0','0',27,1,5,NULL,NULL),(49,'2020-04-06 15:24:50.674309','0','0',27,11,5,NULL,NULL),(50,'2020-04-06 15:24:51.482461','0','0',28,1,5,NULL,NULL),(51,'2020-04-06 15:24:51.493492','0','0',28,11,5,NULL,NULL),(52,'2020-04-06 15:31:01.859109','30.0542742','31.4643582',24,9,5,NULL,NULL),(53,'2020-04-06 15:32:39.452446','30.05425','31.4643776',24,10,5,NULL,NULL),(54,'2020-04-06 15:32:44.237634','30.05425','31.4643776',25,6,5,NULL,NULL),(55,'2020-04-06 15:33:01.048065','30.05425','31.4643776',26,9,5,NULL,NULL),(56,'2020-04-07 10:20:02.295776','0','0',29,1,5,NULL,NULL),(57,'2020-04-07 10:20:02.311290','0','0',29,11,5,NULL,NULL),(58,'2020-04-07 10:20:03.049695','0','0',30,1,5,NULL,NULL),(59,'2020-04-07 10:20:03.060947','0','0',30,11,5,NULL,NULL),(60,'2020-04-07 10:20:03.550239','0','0',31,1,5,NULL,NULL),(61,'2020-04-07 10:20:03.558804','0','0',31,11,5,NULL,NULL),(62,'2020-04-07 10:22:10.140297','0','0',32,1,5,NULL,NULL),(63,'2020-04-07 10:22:10.151160','0','0',32,11,5,NULL,NULL),(64,'2020-04-07 10:23:41.465888','0','0',33,1,5,NULL,NULL),(65,'2020-04-07 10:23:41.476708','0','0',33,11,5,NULL,NULL),(66,'2020-04-07 10:26:21.265403','0','0',34,1,5,NULL,NULL),(67,'2020-04-07 10:26:21.274982','0','0',34,11,5,NULL,NULL),(68,'2020-04-07 10:28:07.101822','0','0',34,2,1,NULL,NULL),(69,'2020-04-07 10:28:07.310690','0','0',32,2,1,NULL,NULL),(70,'2020-04-07 10:28:07.412684','0','0',29,2,1,NULL,NULL),(71,'2020-04-07 10:30:08.739223','0','0',26,10,5,NULL,NULL),(72,'2020-04-07 10:30:13.334793','0','0',29,9,5,NULL,NULL),(73,'2020-04-07 10:31:17.146652','0','0',29,10,5,NULL,NULL),(74,'2020-04-07 10:31:22.531211','0','0',32,6,5,NULL,NULL),(75,'2020-04-08 11:57:44.410059','0','0',35,1,5,NULL,NULL),(76,'2020-04-08 11:57:44.420909','0','0',35,11,5,NULL,NULL),(77,'2020-04-08 13:26:40.990445','0','0',36,1,1,NULL,NULL),(78,'2020-04-08 13:26:41.000877','0','0',36,2,1,NULL,NULL),(79,'2020-04-08 13:26:41.051667','0','0',37,1,1,NULL,NULL),(80,'2020-04-08 13:26:41.061897','0','0',37,2,1,NULL,NULL),(81,'2020-04-08 13:26:41.103006','0','0',38,1,1,NULL,NULL),(82,'2020-04-08 13:26:41.123419','0','0',38,2,1,NULL,NULL),(83,'2020-04-08 13:26:41.164515','0','0',39,1,1,NULL,NULL),(84,'2020-04-08 13:26:41.174584','0','0',39,2,1,NULL,NULL),(85,'2020-04-08 13:28:45.017135','0','0',40,1,1,NULL,NULL),(86,'2020-04-08 13:28:45.027096','0','0',40,2,1,NULL,NULL),(87,'2020-04-08 13:28:45.070251','0','0',41,1,1,NULL,NULL),(88,'2020-04-08 13:28:45.080730','0','0',41,2,1,NULL,NULL),(89,'2020-04-08 13:28:45.131356','0','0',42,1,1,NULL,NULL),(90,'2020-04-08 13:28:45.141379','0','0',42,2,1,NULL,NULL),(91,'2020-04-08 13:28:45.214299','0','0',43,1,1,NULL,NULL),(92,'2020-04-08 13:28:45.224434','0','0',43,2,1,NULL,NULL),(93,'2020-04-08 14:02:06.336883','0','0',44,1,1,NULL,NULL),(94,'2020-04-08 14:02:06.347043','0','0',44,2,1,NULL,NULL),(95,'2020-04-08 14:02:06.387479','0','0',45,1,1,NULL,NULL),(96,'2020-04-08 14:02:06.397417','0','0',45,2,1,NULL,NULL),(97,'2020-04-08 14:02:06.438377','0','0',46,1,1,NULL,NULL),(98,'2020-04-08 14:02:06.448393','0','0',46,2,1,NULL,NULL),(99,'2020-04-08 14:02:06.490757','0','0',47,1,1,NULL,NULL),(100,'2020-04-08 14:02:06.501056','0','0',47,2,1,NULL,NULL),(101,'2020-04-08 14:05:19.885399','0','0',48,1,1,NULL,NULL),(102,'2020-04-08 14:05:19.894949','0','0',48,2,1,NULL,NULL),(103,'2020-04-08 14:05:19.945327','0','0',49,1,1,NULL,NULL),(104,'2020-04-08 14:05:19.955450','0','0',49,2,1,NULL,NULL),(105,'2020-04-08 14:05:20.007137','0','0',50,1,1,NULL,NULL),(106,'2020-04-08 14:05:20.017474','0','0',50,2,1,NULL,NULL),(107,'2020-04-22 11:20:02.412029','0','0',51,1,3,NULL,NULL),(108,'2020-04-22 11:20:02.428970','0','0',51,11,3,NULL,NULL),(109,'2020-04-22 11:24:13.763617','0','0',52,1,5,NULL,NULL),(110,'2020-04-22 11:24:13.773878','0','0',52,11,5,NULL,NULL),(111,'2020-04-22 11:24:52.054759','0','0',53,1,5,NULL,NULL),(112,'2020-04-22 11:24:52.065348','0','0',53,11,5,NULL,NULL),(113,'2020-04-22 12:29:23.301556','0','0',54,1,5,NULL,NULL),(114,'2020-04-22 12:29:23.310922','0','0',54,11,5,NULL,NULL),(115,'2020-04-22 12:30:26.524537','0','0',54,2,1,NULL,NULL),(116,'2020-04-22 12:33:14.982190','0','0',55,1,5,NULL,NULL),(117,'2020-04-22 12:33:14.992751','0','0',55,11,5,NULL,NULL),(118,'2020-04-22 12:33:44.780596','0','0',56,1,5,NULL,NULL),(119,'2020-04-22 12:33:44.791186','0','0',56,11,5,NULL,NULL),(120,'2020-04-22 12:43:07.183172','0','0',57,1,5,NULL,NULL),(121,'2020-04-22 12:43:07.186930','0','0',57,11,5,NULL,NULL),(122,'2020-04-22 12:43:07.965578','0','0',58,1,5,NULL,NULL),(123,'2020-04-22 12:43:07.974900','0','0',58,11,5,NULL,NULL),(124,'2020-04-22 12:43:08.527811','0','0',59,1,5,NULL,NULL),(125,'2020-04-22 12:43:08.538865','0','0',59,11,5,NULL,NULL),(126,'2020-04-22 13:43:11.420097','0','0',60,1,5,NULL,NULL),(127,'2020-04-22 13:43:11.430788','0','0',60,11,5,NULL,NULL),(128,'2020-04-22 13:44:00.027488','0','0',61,1,5,NULL,NULL),(129,'2020-04-22 13:44:00.041068','0','0',61,11,5,NULL,NULL),(130,'2020-04-22 13:54:14.197985','0','0',62,1,5,NULL,NULL),(131,'2020-04-22 13:54:14.208610','0','0',62,11,5,NULL,NULL),(132,'2020-04-22 13:54:14.813612','0','0',63,1,5,NULL,NULL),(133,'2020-04-22 13:54:14.822841','0','0',63,11,5,NULL,NULL),(134,'2021-12-30 07:05:10.022737','0','0',43,9,1,NULL,NULL),(135,'2021-12-30 07:05:10.029030','0','0',43,10,1,NULL,NULL);
/*!40000 ALTER TABLE `booking_bookingstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_cancellation`
--

DROP TABLE IF EXISTS `booking_cancellation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_cancellation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` longtext,
  `booking_id` int(11) NOT NULL,
  `reason_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_cancellation_booking_id_e16bd5e1_fk_booking_booking_id` (`booking_id`),
  KEY `booking_cancellation_reason_id_54392fa7_fk_booking_c` (`reason_id`),
  CONSTRAINT `booking_cancellation_booking_id_e16bd5e1_fk_booking_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking_booking` (`id`),
  CONSTRAINT `booking_cancellation_reason_id_54392fa7_fk_booking_c` FOREIGN KEY (`reason_id`) REFERENCES `booking_cancelreason` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_cancellation`
--

LOCK TABLES `booking_cancellation` WRITE;
/*!40000 ALTER TABLE `booking_cancellation` DISABLE KEYS */;
INSERT INTO `booking_cancellation` VALUES (1,NULL,25,5),(2,NULL,32,5);
/*!40000 ALTER TABLE `booking_cancellation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_cancelreason`
--

DROP TABLE IF EXISTS `booking_cancelreason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_cancelreason` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_cancelreason`
--

LOCK TABLES `booking_cancelreason` WRITE;
/*!40000 ALTER TABLE `booking_cancelreason` DISABLE KEYS */;
INSERT INTO `booking_cancelreason` VALUES (1,'No show customer',''),(2,'No show driver',''),(3,'Customer request',''),(4,'Driver request',''),(5,'Driver App','');
/*!40000 ALTER TABLE `booking_cancelreason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_customermessage`
--

DROP TABLE IF EXISTS `booking_customermessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_customermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_body` longtext,
  `message_type` varchar(128) DEFAULT NULL,
  `message_time` datetime(6) NOT NULL,
  `subid` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_customermess_company_id_b223f22d_fk_profiles_` (`company_id`),
  KEY `booking_customermess_customer_id_97a5ffe4_fk_profiles_` (`customer_id`),
  CONSTRAINT `booking_customermess_company_id_b223f22d_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `booking_customermess_customer_id_97a5ffe4_fk_profiles_` FOREIGN KEY (`customer_id`) REFERENCES `profiles_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_customermessage`
--

LOCK TABLES `booking_customermessage` WRITE;
/*!40000 ALTER TABLE `booking_customermessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking_customermessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_drivermessage`
--

DROP TABLE IF EXISTS `booking_drivermessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_drivermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_response` varchar(100) DEFAULT NULL,
  `driver_response_time` datetime(6) DEFAULT NULL,
  `push_response` varchar(100) DEFAULT NULL,
  `push_response_time` datetime(6) DEFAULT NULL,
  `subid` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_drivermessage_driver_id_6afa0f36_fk_profiles_driver_id` (`driver_id`),
  KEY `booking_drivermessag_message_id_261ec1b7_fk_booking_p` (`message_id`),
  CONSTRAINT `booking_drivermessag_message_id_261ec1b7_fk_booking_p` FOREIGN KEY (`message_id`) REFERENCES `booking_pushmessage` (`id`),
  CONSTRAINT `booking_drivermessage_driver_id_6afa0f36_fk_profiles_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `profiles_driver` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_drivermessage`
--

LOCK TABLES `booking_drivermessage` WRITE;
/*!40000 ALTER TABLE `booking_drivermessage` DISABLE KEYS */;
INSERT INTO `booking_drivermessage` VALUES (1,NULL,NULL,NULL,NULL,1,1,1),(2,NULL,NULL,NULL,NULL,2,1,2),(3,NULL,NULL,NULL,NULL,3,1,3),(4,NULL,NULL,NULL,NULL,4,1,4),(5,NULL,NULL,NULL,NULL,5,1,5),(6,NULL,NULL,NULL,NULL,6,1,6),(7,NULL,NULL,NULL,NULL,7,1,7),(8,NULL,NULL,NULL,NULL,8,2,8),(9,NULL,NULL,NULL,NULL,9,2,9),(10,NULL,NULL,NULL,NULL,10,1,10),(11,NULL,NULL,NULL,NULL,11,1,11),(12,NULL,NULL,NULL,NULL,12,1,12),(13,NULL,NULL,NULL,NULL,13,1,13),(14,NULL,NULL,NULL,NULL,14,1,14),(15,NULL,NULL,NULL,NULL,15,1,15),(16,NULL,NULL,NULL,NULL,16,1,16),(17,NULL,NULL,NULL,NULL,17,1,17),(18,NULL,NULL,NULL,NULL,18,1,18),(19,NULL,NULL,NULL,NULL,19,1,19),(20,NULL,NULL,NULL,NULL,20,1,20),(21,NULL,NULL,NULL,NULL,21,1,21),(22,NULL,NULL,NULL,NULL,22,2,22),(23,NULL,NULL,NULL,NULL,23,2,23),(24,NULL,NULL,NULL,NULL,24,2,24),(25,NULL,NULL,NULL,NULL,25,1,25),(26,NULL,NULL,NULL,NULL,26,1,26),(27,NULL,NULL,NULL,NULL,27,1,27),(28,NULL,NULL,NULL,NULL,28,2,28),(29,NULL,NULL,NULL,NULL,29,2,29),(30,NULL,NULL,NULL,NULL,30,2,30),(31,NULL,NULL,NULL,NULL,31,2,31),(32,NULL,NULL,NULL,NULL,32,2,32),(33,NULL,NULL,NULL,NULL,33,2,33),(34,NULL,NULL,NULL,NULL,34,2,34),(35,NULL,NULL,NULL,NULL,35,2,35),(36,NULL,NULL,NULL,NULL,36,2,36),(37,NULL,NULL,NULL,NULL,37,3,37),(38,NULL,NULL,NULL,NULL,38,3,38),(39,NULL,NULL,NULL,NULL,39,3,39),(40,NULL,NULL,NULL,NULL,40,2,40),(41,NULL,NULL,NULL,NULL,41,3,41),(42,NULL,NULL,NULL,NULL,42,2,42),(43,NULL,NULL,NULL,NULL,43,2,43),(44,NULL,NULL,NULL,NULL,44,2,44),(45,NULL,NULL,NULL,NULL,45,2,45),(46,NULL,NULL,NULL,NULL,46,1,46),(47,NULL,NULL,NULL,NULL,47,1,47),(48,NULL,NULL,NULL,NULL,48,1,48),(49,NULL,NULL,NULL,NULL,49,1,49),(50,NULL,NULL,NULL,NULL,50,1,50),(51,NULL,NULL,NULL,NULL,51,2,51),(52,NULL,NULL,NULL,NULL,52,2,52),(53,NULL,NULL,NULL,NULL,53,2,53),(54,NULL,NULL,NULL,NULL,54,2,54),(55,NULL,NULL,NULL,NULL,55,2,55),(56,NULL,NULL,NULL,NULL,56,1,56),(57,NULL,NULL,NULL,NULL,57,1,57),(58,NULL,NULL,NULL,NULL,58,1,58),(59,NULL,NULL,NULL,NULL,59,1,59),(60,NULL,NULL,NULL,NULL,60,2,60),(61,NULL,NULL,NULL,NULL,61,2,61),(62,NULL,NULL,NULL,NULL,62,2,62),(63,NULL,NULL,NULL,NULL,63,2,63),(64,NULL,NULL,NULL,NULL,64,1,64),(65,NULL,NULL,NULL,NULL,65,1,65),(66,NULL,NULL,NULL,NULL,66,1,66),(67,NULL,NULL,NULL,NULL,67,3,67),(68,NULL,NULL,NULL,NULL,68,3,68),(69,NULL,NULL,NULL,NULL,69,3,69),(70,NULL,NULL,NULL,NULL,70,3,70),(71,NULL,NULL,NULL,NULL,71,4,71),(72,NULL,NULL,NULL,NULL,72,4,72),(73,NULL,NULL,NULL,NULL,73,4,73),(74,NULL,NULL,NULL,NULL,74,4,74),(75,NULL,NULL,NULL,NULL,75,4,75),(76,NULL,NULL,NULL,NULL,76,4,76),(77,NULL,NULL,NULL,NULL,77,4,77),(78,NULL,NULL,NULL,NULL,78,4,78),(79,NULL,NULL,NULL,NULL,79,1,79),(80,NULL,NULL,NULL,NULL,80,1,80),(81,NULL,NULL,NULL,NULL,81,3,81),(82,NULL,NULL,NULL,NULL,82,3,82),(83,NULL,NULL,NULL,NULL,83,2,83),(84,NULL,NULL,NULL,NULL,84,4,84),(85,NULL,NULL,NULL,NULL,85,1,85),(86,NULL,NULL,NULL,NULL,86,4,86),(87,NULL,NULL,NULL,NULL,87,4,87),(88,NULL,NULL,NULL,NULL,88,4,88),(89,NULL,NULL,NULL,NULL,89,4,89),(90,NULL,NULL,NULL,NULL,90,2,90),(91,NULL,NULL,NULL,NULL,91,4,90),(92,NULL,NULL,NULL,NULL,92,4,91),(93,NULL,NULL,NULL,NULL,93,4,92),(94,NULL,NULL,NULL,NULL,94,4,93),(95,NULL,NULL,NULL,NULL,95,1,94),(96,NULL,NULL,NULL,NULL,96,1,95),(97,NULL,NULL,NULL,NULL,97,1,96),(98,NULL,NULL,NULL,NULL,98,1,97),(99,NULL,NULL,NULL,NULL,99,2,98),(100,NULL,NULL,NULL,NULL,100,2,99),(101,NULL,NULL,NULL,NULL,101,2,100),(102,NULL,NULL,NULL,NULL,102,2,101),(103,NULL,NULL,NULL,NULL,103,1,102),(104,NULL,NULL,NULL,NULL,104,1,103),(105,NULL,NULL,NULL,NULL,105,1,104),(106,NULL,NULL,NULL,NULL,106,1,105),(107,NULL,NULL,NULL,NULL,107,1,106),(108,NULL,NULL,NULL,NULL,108,1,107),(109,NULL,NULL,NULL,NULL,109,1,108),(110,NULL,NULL,NULL,NULL,110,4,109),(111,NULL,NULL,NULL,NULL,111,4,110),(112,NULL,NULL,NULL,NULL,112,2,111),(113,NULL,NULL,NULL,NULL,113,4,112),(114,NULL,NULL,NULL,NULL,114,1,113),(115,NULL,NULL,NULL,NULL,115,5,114),(116,NULL,NULL,NULL,NULL,116,4,115),(117,NULL,NULL,NULL,NULL,117,3,116),(118,NULL,NULL,NULL,NULL,118,4,117),(119,NULL,NULL,NULL,NULL,119,3,118),(120,NULL,NULL,NULL,NULL,120,4,119),(121,NULL,NULL,NULL,NULL,121,3,120),(122,NULL,NULL,NULL,NULL,122,4,121),(123,NULL,NULL,NULL,NULL,123,4,122),(124,NULL,NULL,NULL,NULL,124,3,123),(125,NULL,NULL,NULL,NULL,125,1,124),(126,NULL,NULL,NULL,NULL,126,4,125);
/*!40000 ALTER TABLE `booking_drivermessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_point`
--

DROP TABLE IF EXISTS `booking_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_point` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `company_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_point_company_id_f28466b9_fk_profiles_company_id` (`company_id`),
  KEY `booking_point_zone_id_82d740df_fk_booking_zone_id` (`zone_id`),
  CONSTRAINT `booking_point_company_id_f28466b9_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `booking_point_zone_id_82d740df_fk_booking_zone_id` FOREIGN KEY (`zone_id`) REFERENCES `booking_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_point`
--

LOCK TABLES `booking_point` WRITE;
/*!40000 ALTER TABLE `booking_point` DISABLE KEYS */;
INSERT INTO `booking_point` VALUES (1,'Point 1','30.1067298','31.36462129999999','Home Business',1,2);
/*!40000 ALTER TABLE `booking_point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_pushmessage`
--

DROP TABLE IF EXISTS `booking_pushmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_pushmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `push_time` datetime(6) DEFAULT NULL,
  `body` longtext NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `agent_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_pushmessage_agent_id_ab2c1de1_fk_profiles_agent_id` (`agent_id`),
  KEY `booking_pushmessage_company_id_045d5f47_fk_profiles_company_id` (`company_id`),
  CONSTRAINT `booking_pushmessage_agent_id_ab2c1de1_fk_profiles_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `booking_pushmessage_company_id_045d5f47_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_pushmessage`
--

LOCK TABLES `booking_pushmessage` WRITE;
/*!40000 ALTER TABLE `booking_pushmessage` DISABLE KEYS */;
INSERT INTO `booking_pushmessage` VALUES (1,'2020-04-02 13:47:21.390083','Task 3 is assigned to you','Added Task',3,1,1),(2,'2020-04-02 13:49:42.657912','Task 3 is re-assigned to another colleague.','Removed Task',3,1,1),(3,'2020-04-02 13:49:43.244677','Task 3 is re-assigned to another colleague.','Removed Task',3,1,1),(4,'2020-04-02 14:04:57.048330','Task 4 is assigned to you','Added Task',4,1,1),(5,'2020-04-02 14:12:38.114722','New requisition number 1, containing:\n jelly cola: (20)','New Requisition',NULL,1,1),(6,'2020-04-02 14:25:22.181271','New inventory transfer number 1 from Staff-1 to Staff-2 containing:\n jelly cola: (10)','New Transfer From',NULL,1,1),(7,'2020-04-02 14:25:23.831066','New inventory transfer number 2 from Staff-1 to Staff-2 containing:\n jelly cola: (10)','New Transfer From',NULL,1,1),(8,'2020-04-02 14:26:37.101970','New inventory transfer number 3 from Staff-2 to Staff-1 containing:\n jelly cola: (10)','New Transfer From',NULL,1,1),(9,'2020-04-02 14:26:42.894243','New inventory transfer number 4 from Staff-2 to Staff-1 containing:\n jelly cola: (10)','New Transfer From',NULL,1,1),(10,'2020-04-05 10:57:17.097321','Task 1 is assigned to you','Added Task',1,1,1),(11,'2020-04-05 10:57:18.804502','Task 1 is re-assigned to another colleague.','Removed Task',1,1,1),(12,'2020-04-05 10:57:23.588481','Task 1 is re-assigned to another colleague.','Removed Task',1,1,1),(13,'2020-04-05 10:57:51.142171','Task 1 is re-assigned to another colleague.','Removed Task',1,1,1),(14,'2020-04-05 10:57:52.605673','Task 1 is re-assigned to another colleague.','Removed Task',1,1,1),(15,'2020-04-05 10:57:56.491152','Task 1 is re-assigned to another colleague.','Removed Task',1,1,1),(16,'2020-04-05 10:58:24.894624','Task 1 is re-assigned to another colleague.','Removed Task',1,1,1),(17,'2020-04-05 10:58:26.292573','Task 1 is re-assigned to another colleague.','Removed Task',1,1,1),(18,'2020-04-05 10:58:28.959757','Task 1 is re-assigned to another colleague.','Removed Task',1,1,1),(19,'2020-04-05 10:58:56.502518','Task 1 is re-assigned to another colleague.','Removed Task',1,1,1),(20,'2020-04-05 10:58:59.067507','Task 1 is re-assigned to another colleague.','Removed Task',1,1,1),(21,'2020-04-05 11:11:23.988349','Task 2 is assigned to you','Added Task',2,1,1),(22,'2020-04-05 12:32:06.975596','New requisition number 6, containing:\n jelly cola: (20)','New Requisition',NULL,1,1),(23,'2020-04-05 12:32:56.385079','New inventory transfer number 5 from Staff-2 to Staff-3 containing:\n jelly cola: (2)','New Transfer From',NULL,1,1),(24,'2020-04-05 12:33:00.798446','New inventory transfer number 6 from Staff-2 to Staff-3 containing:\n jelly cola: (2)','New Transfer From',NULL,1,1),(25,'2020-04-05 13:01:03.587826','New inventory transfer number 7 from Staff-1 to Staff-3 containing:\n jelly cola: (10)','New Transfer From',NULL,1,1),(26,'2020-04-05 13:01:45.483226','New inventory transfer number 8 from Staff-1 to Staff-2 containing:\n jelly cola: (5)','New Transfer From',NULL,1,1),(27,'2020-04-05 13:07:15.490099','New inventory transfer number 9 from Staff-1 to Staff-3 containing:\n jelly cola: (3)','New Transfer From',NULL,1,1),(28,'2020-04-05 13:07:49.951929','New inventory transfer number 10 from Staff-2 to Staff-3 containing:\n jelly cola: (2)','New Transfer From',NULL,1,1),(29,'2020-04-05 13:07:55.500901','New inventory transfer number 11 from Staff-2 to Staff-3 containing:\n jelly cola: (2)','New Transfer From',NULL,1,1),(30,'2020-04-05 13:07:58.361483','New inventory transfer number 12 from Staff-2 to Staff-3 containing:\n jelly cola: (2)','New Transfer From',NULL,1,1),(31,'2020-04-05 13:08:23.008377','New inventory transfer number 13 from Staff-2 to Staff-1 containing:\n jelly cola: (2)','New Transfer From',NULL,1,1),(32,'2020-04-05 13:09:00.373131','New inventory transfer number 14 from Staff-2 to Staff-3 containing:\n jelly cola: (3)','New Transfer From',NULL,1,1),(33,'2020-04-05 13:09:17.891843','New inventory transfer number 15 from Staff-2 to Staff-3 containing:\n jelly cola: (3)','New Transfer From',NULL,1,1),(34,'2020-04-05 13:09:19.332173','New inventory transfer number 16 from Staff-2 to Staff-3 containing:\n jelly cola: (3)','New Transfer From',NULL,1,1),(35,'2020-04-05 13:09:32.401110','New inventory transfer number 17 from Staff-2 to Staff-3 containing:\n jelly cola: (3)','New Transfer From',NULL,1,1),(36,'2020-04-05 13:10:10.587711','New inventory transfer number 18 from Staff-2 to Staff-1 containing:\n jelly cola: (1)','New Transfer From',NULL,1,1),(37,'2020-04-05 13:16:24.482815','New inventory transfer number 19 from Staff-3 to Staff-2 containing:\n jelly cola: (3)','New Transfer From',NULL,1,1),(38,'2020-04-05 13:16:51.731218','New inventory transfer number 20 from Staff-3 to Staff-2 containing:\n jelly cola: (3)','New Transfer From',NULL,1,1),(39,'2020-04-05 13:38:40.818366','New inventory transfer number 21 from Staff-3 to Staff-2 containing:\n jelly cola: (1)','New Transfer From',NULL,1,1),(40,'2020-04-05 13:38:58.818645','Task 5 is assigned to you','Added Task',5,1,1),(41,'2020-04-05 13:40:20.804246','New inventory transfer number 22 from Staff-3 to Staff-2 containing:\n jelly cola: (1)','New Transfer From',NULL,1,1),(42,'2020-04-05 13:41:48.866042','Task 5 is re-assigned to another colleague.','Removed Task',5,1,1),(43,'2020-04-05 13:42:00.203755','Task 5 is re-assigned to another colleague.','Removed Task',5,1,1),(44,'2020-04-05 13:42:03.221036','Task 5 is re-assigned to another colleague.','Removed Task',5,1,1),(45,'2020-04-05 13:42:21.846845','Task 5 is re-assigned to another colleague.','Removed Task',5,1,1),(46,'2020-04-05 13:44:17.074166','Task 4 is re-assigned to another colleague.','Removed Task',4,1,1),(47,'2020-04-05 13:44:33.467814','Task 4 is re-assigned to another colleague.','Removed Task',4,1,1),(48,'2020-04-05 13:44:35.027121','Task 4 is re-assigned to another colleague.','Removed Task',4,1,1),(49,'2020-04-05 13:45:45.461233','Task 4 is re-assigned to another colleague.','Removed Task',4,1,1),(50,'2020-04-05 13:45:52.581388','Task 4 is re-assigned to another colleague.','Removed Task',4,1,1),(51,'2020-04-05 13:46:52.722527','Task 5 is re-assigned to another colleague.','Removed Task',5,1,1),(52,'2020-04-05 13:49:25.538472','Task 5 is re-assigned to another colleague.','Removed Task',5,1,1),(53,'2020-04-05 13:50:06.999482','Task 5 is re-assigned to another colleague.','Removed Task',5,1,1),(54,'2020-04-05 13:51:35.851049','Task 5 is re-assigned to another colleague.','Removed Task',5,1,1),(55,'2020-04-05 13:52:09.508216','Task 5 is re-assigned to another colleague.','Removed Task',5,1,1),(56,'2020-04-05 13:53:39.558029','Task 6 is assigned to you','Added Task',6,1,1),(57,'2020-04-05 14:03:26.234005','Multiple Tasks are assigned to you. (7)','Added Multiple',7,1,1),(58,'2020-04-05 14:03:26.292849','Multiple Tasks are assigned to you. (8)','Added Multiple',8,1,1),(59,'2020-04-05 14:03:26.343973','Multiple Tasks are assigned to you. (9)','Added Multiple',9,1,1),(60,'2020-04-06 08:10:09.052011','Multiple Tasks are assigned to you. (10)','Added Multiple',10,1,1),(61,'2020-04-06 08:10:09.101499','Multiple Tasks are assigned to you. (11)','Added Multiple',11,1,1),(62,'2020-04-06 08:10:09.172187','Multiple Tasks are assigned to you. (12)','Added Multiple',12,1,1),(63,'2020-04-06 08:32:01.009022','Task 13 is assigned to you','Added Task',13,1,1),(64,'2020-04-06 08:50:36.968377','Multiple Tasks are assigned to you. (14)','Added Multiple',14,1,1),(65,'2020-04-06 08:50:37.041292','Multiple Tasks are assigned to you. (15)','Added Multiple',15,1,1),(66,'2020-04-06 09:16:50.437602','New requisition number 25, containing:\n Fairy: (20)\n Luxe: (20)','New Requisition',NULL,1,1),(67,'2020-04-06 09:27:01.685425','New inventory transfer number 23 from Staff-3 to Staff-1 containing:\n jelly cola: (7)','New Transfer From',NULL,1,1),(68,'2020-04-06 09:27:04.073129','New inventory transfer number 24 from Staff-3 to Staff-1 containing:\n jelly cola: (7)','New Transfer From',NULL,1,1),(69,'2020-04-06 09:27:06.628618','New inventory transfer number 25 from Staff-3 to Staff-1 containing:\n jelly cola: (7)','New Transfer From',NULL,1,1),(70,'2020-04-06 09:27:34.540379','New inventory transfer number 26 from Staff-3 to Staff-1 containing:\n jelly cola: (7)','New Transfer From',NULL,1,1),(71,'2020-04-06 14:20:47.448720','Task 22 is re-assigned to another colleague.','Removed Task',22,1,1),(72,'2020-04-06 14:23:44.588004','Task 22 is re-assigned to another colleague.','Removed Task',22,1,1),(73,'2020-04-06 14:25:34.556836','Task 22 is re-assigned to another colleague.','Removed Task',22,1,1),(74,'2020-04-06 14:28:53.972851','Task 22 is re-assigned to another colleague.','Removed Task',22,1,1),(75,'2020-04-06 14:34:27.632150','Task 22 is re-assigned to another colleague.','Removed Task',22,1,1),(76,'2020-04-06 14:38:28.844475','Task 22 is re-assigned to another colleague.','Removed Task',22,1,1),(77,'2020-04-06 14:42:33.267616','Task 22 is re-assigned to another colleague.','Removed Task',22,1,1),(78,'2020-04-06 14:46:24.114225','Task 22 is re-assigned to another colleague.','Removed Task',22,1,1),(79,'2020-04-06 14:46:24.403124','Task 22 is assigned to you','Added Task',22,1,1),(80,'2020-04-06 14:49:20.868781','New inventory transfer number 27 from Staff-1 to Staff-3 containing:\n Luxe: (5)','New Transfer From',NULL,1,1),(81,'2020-04-06 14:49:21.034953','New inventory transfer number 27 from Staff-1 to Staff-3 containing:\n Luxe: (5)','New Transfer To',NULL,1,1),(82,'2020-04-06 14:51:02.510158','New requisition number 36, containing:\n Fairy: (7)','New Requisition',NULL,1,1),(83,'2020-04-06 14:54:39.728304','Task 23 is assigned to you','Added Task',23,1,1),(84,'2020-04-06 14:56:14.233615','New requisition number 37, containing:\n jelly cola: (40)','New Requisition',NULL,1,1),(85,'2020-04-06 14:56:56.822309','New inventory transfer number 28 from Staff-1 to Staff-4 containing:\n jelly cola: (4)','New Transfer From',NULL,1,1),(86,'2020-04-06 14:56:56.909110','New inventory transfer number 28 from Staff-1 to Staff-4 containing:\n jelly cola: (4)','New Transfer To',NULL,1,1),(87,'2020-04-06 14:58:36.408612','Task 26 is assigned to you.','Approved Task',26,1,1),(88,'2020-04-06 14:58:36.524544','Task 25 is assigned to you.','Approved Task',25,1,1),(89,'2020-04-06 14:58:36.681339','Task 24 is assigned to you.','Approved Task',24,1,1),(90,'2020-04-06 15:13:30.868037','test',NULL,NULL,1,1),(91,'2020-04-07 10:28:06.813097','Task 34 is assigned to you.','Approved Task',34,1,1),(92,'2020-04-07 10:28:07.113612','Task 32 is assigned to you.','Approved Task',32,1,1),(93,'2020-04-07 10:28:07.322185','Task 29 is assigned to you.','Approved Task',29,1,1),(94,'2020-04-08 13:26:40.971296','Multiple Tasks are assigned to you. (36)','Added Multiple',36,1,1),(95,'2020-04-08 13:26:41.032180','Multiple Tasks are assigned to you. (37)','Added Multiple',37,1,1),(96,'2020-04-08 13:26:41.082490','Multiple Tasks are assigned to you. (38)','Added Multiple',38,1,1),(97,'2020-04-08 13:26:41.144055','Multiple Tasks are assigned to you. (39)','Added Multiple',39,1,1),(98,'2020-04-08 13:28:44.998006','Multiple Tasks are assigned to you. (40)','Added Multiple',40,1,1),(99,'2020-04-08 13:28:45.048802','Multiple Tasks are assigned to you. (41)','Added Multiple',41,1,1),(100,'2020-04-08 13:28:45.101193','Multiple Tasks are assigned to you. (42)','Added Multiple',42,1,1),(101,'2020-04-08 13:28:45.173069','Multiple Tasks are assigned to you. (43)','Added Multiple',43,1,1),(102,'2020-04-08 14:02:06.317745','Multiple Tasks are assigned to you. (44)','Added Multiple',44,1,1),(103,'2020-04-08 14:02:06.367287','Multiple Tasks are assigned to you. (45)','Added Multiple',45,1,1),(104,'2020-04-08 14:02:06.418071','Multiple Tasks are assigned to you. (46)','Added Multiple',46,1,1),(105,'2020-04-08 14:02:06.470247','Multiple Tasks are assigned to you. (47)','Added Multiple',47,1,1),(106,'2020-04-08 14:05:19.866025','Multiple Tasks are assigned to you. (48)','Added Multiple',48,1,1),(107,'2020-04-08 14:05:19.925575','Multiple Tasks are assigned to you. (49)','Added Multiple',49,1,1),(108,'2020-04-08 14:05:19.986433','Multiple Tasks are assigned to you. (50)','Added Multiple',50,1,1),(109,'2020-04-22 12:30:26.354147','Task 54 is assigned to you.','Approved Task',54,1,1),(110,'2021-12-16 08:46:52.143282','New requisition number 45, containing:\n Luxe: (100)','New Requisition',NULL,1,1),(111,'2021-12-30 07:05:09.306307','Job 43 has been marked complete by Test','Job Marked Complete',43,1,1),(112,'2022-01-02 11:51:47.527001','New requisition number 77, containing:\n Luxe: (10)','New Requisition',NULL,1,1),(113,'2022-03-10 10:23:01.674699','New requisition number 82, containing:\n jelly cola: (50)','New Requisition',NULL,1,1),(114,'2022-03-10 10:23:24.801512','New requisition number 83, containing:\n jelly cola: (30)','New Requisition',NULL,1,1),(115,'2022-03-10 10:24:55.192356','New requisition number 84, containing:\n Fairy: (10)','New Requisition',NULL,1,1),(116,'2022-03-10 10:58:37.212050','New requisition number 86, containing:\n jelly cola: (50)','New Requisition',NULL,1,1),(117,'2022-03-10 11:31:34.719120','New inventory transfer number 29 from Staff-4 to Staff-3 containing:\n jelly cola: (5)','New Transfer From',NULL,1,1),(118,'2022-03-10 11:31:35.506203','New inventory transfer number 29 from Staff-4 to Staff-3 containing:\n jelly cola: (5)','New Transfer To',NULL,1,1),(119,'2022-03-10 11:31:59.094202','New inventory transfer number 30 from Staff-4 to Staff-3 containing:\n Luxe: (15)','New Transfer From',NULL,1,1),(120,'2022-03-10 11:31:59.478896','New inventory transfer number 30 from Staff-4 to Staff-3 containing:\n Luxe: (15)','New Transfer To',NULL,1,1),(121,'2022-03-10 12:39:48.213410','New requisition number 92, containing:\n jelly cola: (15)\n Fairy: (6)','New Requisition',NULL,1,1),(122,'2022-03-10 12:47:05.815441','New requisition number 93, containing:\n jelly cola: (15)','New Requisition',NULL,1,1),(123,'2022-03-10 13:31:01.467815','New requisition number 95, containing:\n jelly cola: (10)','New Requisition',NULL,1,1),(124,'2022-03-10 13:31:58.774128','New requisition number 96, containing:\n Luxe: (12)','New Requisition',NULL,1,1),(125,'2022-08-31 11:51:00.809432','New requisition number 103, containing:\n jelly cola: (5)','New Requisition',NULL,1,1);
/*!40000 ALTER TABLE `booking_pushmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_review`
--

DROP TABLE IF EXISTS `booking_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rating` int(11) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `review_date` datetime(6) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_review_booking_id_aecf042d_fk_booking_booking_id` (`booking_id`),
  KEY `booking_review_customer_id_b47ce80c_fk_profiles_customer_id` (`customer_id`),
  KEY `booking_review_driver_id_8298ae8b_fk_profiles_driver_id` (`driver_id`),
  CONSTRAINT `booking_review_booking_id_aecf042d_fk_booking_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking_booking` (`id`),
  CONSTRAINT `booking_review_customer_id_b47ce80c_fk_profiles_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `profiles_customer` (`id`),
  CONSTRAINT `booking_review_driver_id_8298ae8b_fk_profiles_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `profiles_driver` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_review`
--

LOCK TABLES `booking_review` WRITE;
/*!40000 ALTER TABLE `booking_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_route`
--

DROP TABLE IF EXISTS `booking_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `optimized` tinyint(1) NOT NULL,
  `total_distance` int(10) unsigned DEFAULT NULL,
  `total_duration` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_route_agent_id_78bd843b_fk_profiles_agent_id` (`agent_id`),
  KEY `booking_route_company_id_a074fc61_fk_profiles_company_id` (`company_id`),
  CONSTRAINT `booking_route_agent_id_78bd843b_fk_profiles_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `booking_route_company_id_a074fc61_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_route`
--

LOCK TABLES `booking_route` WRITE;
/*!40000 ALTER TABLE `booking_route` DISABLE KEYS */;
INSERT INTO `booking_route` VALUES (1,1,'Giza','2020-04-05 16:02:13.821146',1,1,0,NULL,NULL),(2,2,'c1','2020-04-06 10:49:29.474373',1,1,0,NULL,NULL),(3,3,'test','2020-04-08 15:26:22.023675',1,1,0,NULL,NULL),(4,4,'test','2020-04-08 15:28:28.683050',1,1,0,NULL,NULL),(5,5,'test','2020-04-08 16:01:56.026326',1,1,1,45798,1740000000);
/*!40000 ALTER TABLE `booking_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_routeaction`
--

DROP TABLE IF EXISTS `booking_routeaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_routeaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_type` varchar(50) NOT NULL,
  `audit_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `customer_return_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `quotation_id` int(11) DEFAULT NULL,
  `route_assignment_id` int(11) NOT NULL,
  `stop_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_routeaction_audit_id_00fdf9d4_fk_inventory` (`audit_id`),
  KEY `booking_routeaction_booking_id_43beecee_fk_booking_booking_id` (`booking_id`),
  KEY `booking_routeaction_customer_return_id_25e07806_fk_inventory` (`customer_return_id`),
  KEY `booking_routeaction_invoice_id_54e87c9e_fk_inventory_invoices_id` (`invoice_id`),
  KEY `booking_routeaction_payment_id_2516017c_fk_inventory_payments_id` (`payment_id`),
  KEY `booking_routeaction_quotation_id_dfa15cee_fk_inventory` (`quotation_id`),
  KEY `booking_routeaction_route_assignment_id_328f73eb_fk_booking_r` (`route_assignment_id`),
  KEY `booking_routeaction_stop_id_0f8168fa_fk_booking_routestop_id` (`stop_id`),
  CONSTRAINT `booking_routeaction_audit_id_00fdf9d4_fk_inventory` FOREIGN KEY (`audit_id`) REFERENCES `inventory_inventoryaudit` (`id`),
  CONSTRAINT `booking_routeaction_booking_id_43beecee_fk_booking_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking_booking` (`id`),
  CONSTRAINT `booking_routeaction_customer_return_id_25e07806_fk_inventory` FOREIGN KEY (`customer_return_id`) REFERENCES `inventory_customerreturn` (`id`),
  CONSTRAINT `booking_routeaction_invoice_id_54e87c9e_fk_inventory_invoices_id` FOREIGN KEY (`invoice_id`) REFERENCES `inventory_invoices` (`id`),
  CONSTRAINT `booking_routeaction_payment_id_2516017c_fk_inventory_payments_id` FOREIGN KEY (`payment_id`) REFERENCES `inventory_payments` (`id`),
  CONSTRAINT `booking_routeaction_quotation_id_dfa15cee_fk_inventory` FOREIGN KEY (`quotation_id`) REFERENCES `inventory_quotation` (`id`),
  CONSTRAINT `booking_routeaction_route_assignment_id_328f73eb_fk_booking_r` FOREIGN KEY (`route_assignment_id`) REFERENCES `booking_routeassignment` (`id`),
  CONSTRAINT `booking_routeaction_stop_id_0f8168fa_fk_booking_routestop_id` FOREIGN KEY (`stop_id`) REFERENCES `booking_routestop` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_routeaction`
--

LOCK TABLES `booking_routeaction` WRITE;
/*!40000 ALTER TABLE `booking_routeaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking_routeaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_routeassignment`
--

DROP TABLE IF EXISTS `booking_routeassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_routeassignment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `date_assigned` datetime(6) NOT NULL,
  `route_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `assigner_id` int(11) DEFAULT NULL,
  `subid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_routeassignment_route_id_3e12fd47_fk_booking_route_id` (`route_id`),
  KEY `booking_routeassignment_staff_id_77739924_fk_profiles_driver_id` (`staff_id`),
  KEY `booking_routeassignm_assigner_id_f15ebfbe_fk_profiles_` (`assigner_id`),
  CONSTRAINT `booking_routeassignm_assigner_id_f15ebfbe_fk_profiles_` FOREIGN KEY (`assigner_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `booking_routeassignment_route_id_3e12fd47_fk_booking_route_id` FOREIGN KEY (`route_id`) REFERENCES `booking_route` (`id`),
  CONSTRAINT `booking_routeassignment_staff_id_77739924_fk_profiles_driver_id` FOREIGN KEY (`staff_id`) REFERENCES `profiles_driver` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_routeassignment`
--

LOCK TABLES `booking_routeassignment` WRITE;
/*!40000 ALTER TABLE `booking_routeassignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking_routeassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_routestop`
--

DROP TABLE IF EXISTS `booking_routestop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_routestop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` int(10) unsigned NOT NULL,
  `visit_time` time(6) NOT NULL,
  `address_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_routestop_address_id_c08202de_fk_profiles_` (`address_id`),
  KEY `booking_routestop_route_id_a728c7e1_fk_booking_route_id` (`route_id`),
  CONSTRAINT `booking_routestop_address_id_c08202de_fk_profiles_` FOREIGN KEY (`address_id`) REFERENCES `profiles_customeraddress` (`id`),
  CONSTRAINT `booking_routestop_route_id_a728c7e1_fk_booking_route_id` FOREIGN KEY (`route_id`) REFERENCES `booking_route` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_routestop`
--

LOCK TABLES `booking_routestop` WRITE;
/*!40000 ALTER TABLE `booking_routestop` DISABLE KEYS */;
INSERT INTO `booking_routestop` VALUES (1,1,'16:05:00.000000',5,1),(2,2,'16:35:00.000000',4,1),(4,3,'16:40:00.000000',9,1),(5,1,'10:50:00.000000',11,2),(6,2,'11:40:00.000000',9,2),(7,1,'15:25:00.000000',1,3),(8,2,'15:35:00.000000',13,3),(9,1,'15:30:00.000000',13,4),(10,2,'15:35:00.000000',1,4),(11,2,'17:00:00.000000',13,5),(12,1,'16:31:00.000000',1,5);
/*!40000 ALTER TABLE `booking_routestop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_statuscode`
--

DROP TABLE IF EXISTS `booking_statuscode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_statuscode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short_name` varchar(30) NOT NULL,
  `name` varchar(300) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_statuscode`
--

LOCK TABLES `booking_statuscode` WRITE;
/*!40000 ALTER TABLE `booking_statuscode` DISABLE KEYS */;
INSERT INTO `booking_statuscode` VALUES (1,'new','Created',''),(2,'assgined','Assigned to a Driver',''),(3,'customer_on_board','Customer on Board',''),(4,'trip_completed','Marked Completed by Driver',''),(5,'reviewed','Reviewed',''),(6,'canceled','Canceled',''),(7,'going_to_customer','Going to Customer',''),(8,'waiting_for_customer','Waiting for customer','Waiting for customer'),(9,'started','job started','Job is started'),(10,'job_completed','Job Completed','The job is marked completed by the employee.'),(11,'planned','Planned','Planned task need to be approved from manager.');
/*!40000 ALTER TABLE `booking_statuscode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_tariffrange`
--

DROP TABLE IF EXISTS `booking_tariffrange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_tariffrange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `range_from` int(11) DEFAULT NULL,
  `range_to` int(11) DEFAULT NULL,
  `range_value` double DEFAULT NULL,
  `unit` varchar(30) NOT NULL,
  `notes` varchar(300) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_tariffrange_company_id_6ed79c10_fk_profiles_company_id` (`company_id`),
  CONSTRAINT `booking_tariffrange_company_id_6ed79c10_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_tariffrange`
--

LOCK TABLES `booking_tariffrange` WRITE;
/*!40000 ALTER TABLE `booking_tariffrange` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking_tariffrange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_zone`
--

DROP TABLE IF EXISTS `booking_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `description` longtext NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_zone_company_id_8d7765e5_fk_profiles_company_id` (`company_id`),
  CONSTRAINT `booking_zone_company_id_8d7765e5_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_zone`
--

LOCK TABLES `booking_zone` WRITE;
/*!40000 ALTER TABLE `booking_zone` DISABLE KEYS */;
INSERT INTO `booking_zone` VALUES (1,'Cair','',1),(2,'Cairo','',1),(3,'Default Zone','',1);
/*!40000 ALTER TABLE `booking_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_zoneaddresslog`
--

DROP TABLE IF EXISTS `booking_zoneaddresslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_zoneaddresslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_zone_name` varchar(300) NOT NULL,
  `new_zone_name` varchar(300) NOT NULL,
  `zone_addresses_effected` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `changed_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_zoneaddressl_company_id_2167c6a6_fk_profiles_` (`company_id`),
  KEY `booking_zoneaddresslog_zone_id_8b8dc095_fk_booking_zone_id` (`zone_id`),
  CONSTRAINT `booking_zoneaddressl_company_id_2167c6a6_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `booking_zoneaddresslog_zone_id_8b8dc095_fk_booking_zone_id` FOREIGN KEY (`zone_id`) REFERENCES `booking_zone` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_zoneaddresslog`
--

LOCK TABLES `booking_zoneaddresslog` WRITE;
/*!40000 ALTER TABLE `booking_zoneaddresslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking_zoneaddresslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `celery_taskmeta`
--

DROP TABLE IF EXISTS `celery_taskmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `celery_taskmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `result` longtext,
  `date_done` datetime(6) NOT NULL,
  `traceback` longtext,
  `hidden` tinyint(1) NOT NULL,
  `meta` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `celery_taskmeta_hidden_23fd02dc` (`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `celery_taskmeta`
--

LOCK TABLES `celery_taskmeta` WRITE;
/*!40000 ALTER TABLE `celery_taskmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `celery_taskmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `celery_tasksetmeta`
--

DROP TABLE IF EXISTS `celery_tasksetmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `celery_tasksetmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskset_id` varchar(255) NOT NULL,
  `result` longtext NOT NULL,
  `date_done` datetime(6) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskset_id` (`taskset_id`),
  KEY `celery_tasksetmeta_hidden_593cfc24` (`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `celery_tasksetmeta`
--

LOCK TABLES `celery_tasksetmeta` WRITE;
/*!40000 ALTER TABLE `celery_tasksetmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `celery_tasksetmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_appversion`
--

DROP TABLE IF EXISTS `config_appversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_appversion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `platform` varchar(100) NOT NULL,
  `app_name` varchar(100) NOT NULL,
  `version` varchar(100) NOT NULL,
  `latest_ver` varchar(100) NOT NULL,
  `upgrade_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_appversion`
--

LOCK TABLES `config_appversion` WRITE;
/*!40000 ALTER TABLE `config_appversion` DISABLE KEYS */;
INSERT INTO `config_appversion` VALUES (1,'android','tracking_app','4.7','4.7','https://drive.google.com/open?id=1p42Cv6IprdD5ug_C8WmEM_eTP9DB9zi0');
/*!40000 ALTER TABLE `config_appversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_config`
--

DROP TABLE IF EXISTS `config_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `value` varchar(300) NOT NULL,
  `description` longtext NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `config_config_company_id_6d222e4b_fk_profiles_company_id` (`company_id`),
  CONSTRAINT `config_config_company_id_6d222e4b_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_config`
--

LOCK TABLES `config_config` WRITE;
/*!40000 ALTER TABLE `config_config` DISABLE KEYS */;
INSERT INTO `config_config` VALUES (1,'Distance Unit','KM','Kilo Meters',1),(2,'Average Speed','40','Used to estimate the trip time - set to 0 to use Google estimated driving time                                 for your orders',1),(3,'Idle Time','30','Minutes- If no location is received from the driverup to this value; the car icon switches to IDLE',1),(4,'Currency','$','USD',1),(5,'Logout URL Redirect','','Set this field to the url that you want to be redirected toafter logging out from the system, or leave blank.',1),(6,'GTC Message','Driver &driver is on the way, you can call him &phone','This Message will appear for customer app when GTC',1),(7,'WC Message','Driver &driver is waiting, you can call him &phone','This Message will appear for customer app when WC',1),(8,'TC Message','Trip is compeleted and cost is &cost','This Message will appear for customer app when TC',1),(9,'Radius For Automated Dispatch','10','Set this field for automated dispatch orders from customer app.',1),(10,'Audio Path Directory','C:\\','Set the folder path where the audio         files are stored on your company server or your PC.',1),(11,'Customer Max Discount','10','The default maximum discount for new customer on the sales invoice',1),(12,'Customer Credit Limit','5000','Maximum negative balance the customer can reach',1),(13,'Agent and Staff Max Discount','10','The default maximum discount for new agent or staff on the sales invoice',1),(14,'Company Title',' ','The company title that will appear in the invoice printing',1),(15,'Invoice Footer',' ','The invoice printing footer',1),(16,'Invoice Taxes','0','DEPRACATED - MUST BE ZERO',1),(17,'Invoice Grace Period','15','Grace period for invoices.',1),(18,'Dispatch Rule #1','Online and Nearest','First rule to apply while assigning orders (Affects ordering)',1),(19,'Dispatch Rule #2','Least Loaded','Second rule to apply while assigning orders',1),(20,'Dispatch Rule #3','Staff Custom Fields','Third rule to apply while assigning orders',1);
/*!40000 ALTER TABLE `config_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_integrationconfig`
--

DROP TABLE IF EXISTS `config_integrationconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_integrationconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` longtext NOT NULL,
  `description` longtext NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `config_integrationco_company_id_810c165a_fk_profiles_` (`company_id`),
  CONSTRAINT `config_integrationco_company_id_810c165a_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_integrationconfig`
--

LOCK TABLES `config_integrationconfig` WRITE;
/*!40000 ALTER TABLE `config_integrationconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_integrationconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_smsconfig`
--

DROP TABLE IF EXISTS `config_smsconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_smsconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_type` varchar(3) NOT NULL,
  `recipient` varchar(1) NOT NULL,
  `message_body` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `company_id` int(11) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `config_smsconfig_company_id_0241dae4_fk_profiles_company_id` (`company_id`),
  CONSTRAINT `config_smsconfig_company_id_0241dae4_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_smsconfig`
--

LOCK TABLES `config_smsconfig` WRITE;
/*!40000 ALTER TABLE `config_smsconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_smsconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_customfield`
--

DROP TABLE IF EXISTS `custom_fields_customfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_customfield` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `company_id` int(11) NOT NULL,
  `module` varchar(20) NOT NULL,
  `on_app` tinyint(1) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `custom_fields_customfield_company_id_name_40ac156a_uniq` (`company_id`,`name`),
  CONSTRAINT `custom_fields_custom_company_id_17e8f494_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_customfield`
--

LOCK TABLES `custom_fields_customfield` WRITE;
/*!40000 ALTER TABLE `custom_fields_customfield` DISABLE KEYS */;
INSERT INTO `custom_fields_customfield` VALUES (1,'Test 1','Description of Test 1',1,'customer',1,'TEXT'),(2,'Test 2','Description of Test 2',1,'customer',1,'TEXT');
/*!40000 ALTER TABLE `custom_fields_customfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_customfieldchoice`
--

DROP TABLE IF EXISTS `custom_fields_customfieldchoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_customfieldchoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choice` varchar(255) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `custom_fields_custom_custom_field_id_55168856_fk_custom_fi` (`custom_field_id`),
  CONSTRAINT `custom_fields_custom_custom_field_id_55168856_fk_custom_fi` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields_customfield` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_customfieldchoice`
--

LOCK TABLES `custom_fields_customfieldchoice` WRITE;
/*!40000 ALTER TABLE `custom_fields_customfieldchoice` DISABLE KEYS */;
INSERT INTO `custom_fields_customfieldchoice` VALUES (1,'first',1),(2,'second',1),(3,'Mr',2),(4,'Ms',2);
/*!40000 ALTER TABLE `custom_fields_customfieldchoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_customfieldvalue`
--

DROP TABLE IF EXISTS `custom_fields_customfieldvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_customfieldvalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `custom_fields_custom_custom_field_id_0e2e366b_fk_custom_fi` (`custom_field_id`),
  CONSTRAINT `custom_fields_custom_custom_field_id_0e2e366b_fk_custom_fi` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields_customfield` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_customfieldvalue`
--

LOCK TABLES `custom_fields_customfieldvalue` WRITE;
/*!40000 ALTER TABLE `custom_fields_customfieldvalue` DISABLE KEYS */;
INSERT INTO `custom_fields_customfieldvalue` VALUES (1,'first',1),(2,'Mr',2),(3,'',1),(4,'',2),(5,'',1),(6,'',2),(7,'',1),(8,'',2),(9,'',1),(10,'',2),(11,'',1),(12,'',2);
/*!40000 ALTER TABLE `custom_fields_customfieldvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_modelcustomfield`
--

DROP TABLE IF EXISTS `custom_fields_modelcustomfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_modelcustomfield` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `custom_fields_modelc_content_type_id_03e1dd99_fk_django_co` (`content_type_id`),
  KEY `custom_fields_modelc_custom_field_value_i_8546f456_fk_custom_fi` (`custom_field_value_id`),
  CONSTRAINT `custom_fields_modelc_content_type_id_03e1dd99_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `custom_fields_modelc_custom_field_value_i_8546f456_fk_custom_fi` FOREIGN KEY (`custom_field_value_id`) REFERENCES `custom_fields_customfieldvalue` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_modelcustomfield`
--

LOCK TABLES `custom_fields_modelcustomfield` WRITE;
/*!40000 ALTER TABLE `custom_fields_modelcustomfield` DISABLE KEYS */;
INSERT INTO `custom_fields_modelcustomfield` VALUES (1,4,36,1),(2,4,36,2),(3,12,36,3),(4,12,36,4),(5,8,36,5),(6,8,36,6),(7,14,36,7),(8,14,36,8),(9,5,36,9),(10,5,36,10),(11,6,36,11),(12,6,36,12);
/*!40000 ALTER TABLE `custom_fields_modelcustomfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_profiles_agent_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_profiles_agent_id` FOREIGN KEY (`user_id`) REFERENCES `profiles_agent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-03-31 14:34:46.352170','1','Test',1,'[{\"added\": {}}]',34,1),(2,'2020-03-31 14:35:11.305027','1','Test',2,'[{\"changed\": {\"fields\": [\"is_sales_module\", \"geo_attendance_enabled\", \"is_surveys_enabled\"]}}]',34,1),(3,'2020-03-31 14:35:36.781489','1','Test',2,'[{\"changed\": {\"fields\": [\"username\", \"company\", \"name\"]}}]',31,1),(4,'2020-03-31 15:42:21.312097','1','Test',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',34,1),(5,'2020-03-31 15:42:40.912689','1','Test',2,'[{\"changed\": {\"fields\": [\"is_company_admin\"]}}]',31,1),(6,'2020-03-31 15:45:53.605228','1','CompanyPlan object (1)',1,'[{\"added\": {}}]',66,1),(7,'2020-03-31 15:46:27.706072','1','company: Test tariff: tiered distance & time status: None',1,'[{\"added\": {}}]',77,1),(8,'2020-04-02 13:06:42.000175','2','Test',1,'[{\"added\": {}}]',93,1),(9,'2020-04-02 13:13:28.351306','3','Default Zone',1,'[{\"added\": {}}]',53,1),(10,'2020-04-02 13:32:47.606787','1','Test',2,'[{\"changed\": {\"fields\": [\"inventory_type\"]}}]',34,1),(11,'2020-04-06 10:28:25.584069','1','Sw0BaWEfJH1RjNksTnzPdaADWcGXu9uOpjq3lkAi',1,'[{\"added\": {}}]',16,1),(12,'2020-04-06 10:29:51.621287','2','i93klsSZ0uLpYD8pSz0pZRxczFY6nKqH0L3DLApU',1,'[{\"added\": {}}]',16,1),(13,'2020-04-06 10:30:56.381558','1','Dev_Mobile_App',2,'[{\"changed\": {\"fields\": [\"client_secret\", \"name\"]}}]',16,1),(14,'2020-04-06 10:31:41.149186','2','App',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',16,1),(15,'2020-04-06 10:54:22.481433','1','AppVersion object (1)',1,'[{\"added\": {}}]',63,1),(16,'2021-11-21 12:41:13.174292','2','7 for 50',2,'[{\"changed\": {\"fields\": [\"started_at\", \"ended_at\"]}}]',165,1),(17,'2021-11-22 11:53:06.663853','4','Staff-4',2,'[{\"changed\": {\"fields\": [\"name_ar\"]}}]',39,1),(18,'2021-12-20 14:21:51.515367','3','Luxe',2,'[{\"changed\": {\"fields\": [\"product_code\"]}}]',92,1),(19,'2022-01-29 09:02:37.644372','2','Test',2,'[{\"changed\": {\"fields\": [\"products_adjustment_allowed\"]}}]',93,1),(20,'2022-03-03 13:38:52.784438','1','Staff-1',2,'[{\"changed\": {\"fields\": [\"name_ar\"]}}]',39,1),(21,'2022-03-03 13:39:14.270030','2','Staff-2',2,'[{\"changed\": {\"fields\": [\"name_ar\"]}}]',39,1),(22,'2022-03-03 13:39:19.190090','3','Staff-3',2,'[{\"changed\": {\"fields\": [\"name_ar\"]}}]',39,1),(23,'2022-03-03 13:39:23.461313','4','Staff-4',2,'[{\"changed\": {\"fields\": [\"name_ar\"]}}]',39,1),(24,'2022-03-03 13:41:39.449203','3','مندوب-3',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',39,1),(25,'2022-03-03 14:15:33.147939','6','Ameer Ahmed',2,'[{\"changed\": {\"fields\": [\"name_ar\"]}}]',39,1),(26,'2022-03-03 14:15:39.939285','6','Ameer Ahmed',2,'[{\"changed\": {\"fields\": [\"name_ar\"]}}]',39,1),(27,'2022-03-03 14:15:54.835313','5','Test',2,'[{\"changed\": {\"fields\": [\"name_ar\"]}}]',39,1),(28,'2022-03-03 14:16:14.196612','3','Staff-3',2,'[{\"changed\": {\"fields\": [\"name_ar\"]}}]',39,1),(29,'2022-03-03 14:16:20.237128','1','Staff-1',2,'[{\"changed\": {\"fields\": [\"name_ar\"]}}]',39,1),(30,'2022-03-08 09:42:34.876918','4','Staff-4',2,'[{\"changed\": {\"fields\": [\"name_ar\"]}}]',39,1),(31,'2022-03-10 09:55:42.344987','4','Staff-4',2,'[{\"changed\": {\"fields\": [\"name\", \"name_en\"]}}]',39,1),(32,'2022-03-10 10:40:12.294611','86','82',1,'[{\"added\": {}}]',96,1),(33,'2022-03-10 10:42:49.560377','86','82',3,'',96,1),(34,'2022-03-10 12:19:33.360193','24','24',3,'',89,1),(35,'2022-03-10 12:19:33.371501','23','23',3,'',89,1),(36,'2022-03-10 12:19:33.376637','22','22',3,'',89,1),(37,'2022-03-10 12:19:33.383193','21','21',3,'',89,1),(38,'2022-03-10 12:19:33.388020','20','20',3,'',89,1),(39,'2022-03-24 13:47:41.832415','4','Wael Mohamed',2,'[{\"changed\": {\"fields\": [\"account_manager\"]}}]',36,1),(40,'2022-03-24 13:47:53.764928','3','Sphinx',2,'[{\"changed\": {\"fields\": [\"account_manager\"]}}]',36,1),(41,'2022-03-24 13:48:32.666363','1','mohamed Ali',2,'[{\"changed\": {\"fields\": [\"account_manager\"]}}, {\"changed\": {\"fields\": [\"zone\"], \"object\": \"(30.0396471, 31.2056471)\", \"name\": \"customer address\"}}]',36,1),(42,'2022-03-24 13:48:53.603469','14','Jack',2,'[{\"changed\": {\"fields\": [\"account_manager\"]}}]',36,1),(43,'2022-09-01 13:24:41.378292','1','Test',2,'[{\"changed\": {\"fields\": [\"inventory_type\"]}}]',34,1),(44,'2022-09-01 13:52:16.700400','1','Test',2,'[{\"changed\": {\"fields\": [\"inventory_type\"]}}]',34,1),(45,'2022-09-03 14:09:11.650051','4','Segment 4',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',160,1),(46,'2022-09-03 14:10:58.425387','5','Segment 5',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',160,1),(47,'2022-09-03 19:56:25.511309','1','Test',2,'[{\"changed\": {\"fields\": [\"inventory_type\"]}}]',34,1),(48,'2022-09-04 00:57:22.292917','1','Test',2,'[{\"changed\": {\"fields\": [\"inventory_type\"]}}]',34,1),(49,'2022-09-04 09:57:03.592208','1','Test',2,'[{\"changed\": {\"fields\": [\"inventory_type\"]}}]',34,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_clockedschedule`
--

DROP TABLE IF EXISTS `django_celery_beat_clockedschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_celery_beat_clockedschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clocked_time` datetime(6) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_clockedschedule`
--

LOCK TABLES `django_celery_beat_clockedschedule` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_clockedschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_beat_clockedschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_crontabschedule`
--

DROP TABLE IF EXISTS `django_celery_beat_crontabschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_celery_beat_crontabschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minute` varchar(240) NOT NULL,
  `hour` varchar(96) NOT NULL,
  `day_of_week` varchar(64) NOT NULL,
  `day_of_month` varchar(124) NOT NULL,
  `month_of_year` varchar(64) NOT NULL,
  `timezone` varchar(63) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_crontabschedule`
--

LOCK TABLES `django_celery_beat_crontabschedule` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_crontabschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_beat_crontabschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_intervalschedule`
--

DROP TABLE IF EXISTS `django_celery_beat_intervalschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_celery_beat_intervalschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `every` int(11) NOT NULL,
  `period` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_intervalschedule`
--

LOCK TABLES `django_celery_beat_intervalschedule` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_intervalschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_beat_intervalschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_periodictask`
--

DROP TABLE IF EXISTS `django_celery_beat_periodictask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_celery_beat_periodictask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `args` longtext NOT NULL,
  `kwargs` longtext NOT NULL,
  `queue` varchar(200) DEFAULT NULL,
  `exchange` varchar(200) DEFAULT NULL,
  `routing_key` varchar(200) DEFAULT NULL,
  `expires` datetime(6) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) DEFAULT NULL,
  `total_run_count` int(10) unsigned NOT NULL,
  `date_changed` datetime(6) NOT NULL,
  `description` longtext NOT NULL,
  `crontab_id` int(11) DEFAULT NULL,
  `interval_id` int(11) DEFAULT NULL,
  `solar_id` int(11) DEFAULT NULL,
  `one_off` tinyint(1) NOT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `priority` int(10) unsigned DEFAULT NULL,
  `headers` longtext NOT NULL,
  `clocked_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` (`crontab_id`),
  KEY `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` (`interval_id`),
  KEY `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` (`solar_id`),
  KEY `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` (`clocked_id`),
  CONSTRAINT `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` FOREIGN KEY (`clocked_id`) REFERENCES `django_celery_beat_clockedschedule` (`id`),
  CONSTRAINT `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` FOREIGN KEY (`crontab_id`) REFERENCES `django_celery_beat_crontabschedule` (`id`),
  CONSTRAINT `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` FOREIGN KEY (`interval_id`) REFERENCES `django_celery_beat_intervalschedule` (`id`),
  CONSTRAINT `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` FOREIGN KEY (`solar_id`) REFERENCES `django_celery_beat_solarschedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_periodictask`
--

LOCK TABLES `django_celery_beat_periodictask` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_periodictask` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_beat_periodictask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_periodictasks`
--

DROP TABLE IF EXISTS `django_celery_beat_periodictasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_celery_beat_periodictasks` (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_periodictasks`
--

LOCK TABLES `django_celery_beat_periodictasks` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_periodictasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_beat_periodictasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_solarschedule`
--

DROP TABLE IF EXISTS `django_celery_beat_solarschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_celery_beat_solarschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` varchar(24) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq` (`event`,`latitude`,`longitude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_solarschedule`
--

LOCK TABLES `django_celery_beat_solarschedule` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_solarschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_beat_solarschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_results_taskresult`
--

DROP TABLE IF EXISTS `django_celery_results_taskresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_celery_results_taskresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `content_type` varchar(128) NOT NULL,
  `content_encoding` varchar(64) NOT NULL,
  `result` longtext,
  `date_done` datetime(6) NOT NULL,
  `traceback` longtext,
  `hidden` tinyint(1) NOT NULL,
  `meta` longtext,
  `task_args` longtext,
  `task_kwargs` longtext,
  `task_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `django_celery_results_taskresult_hidden_cd77412f` (`hidden`),
  KEY `django_celery_results_taskresult_date_done_49edada6` (`date_done`),
  KEY `django_celery_results_taskresult_status_cbbed23a` (`status`),
  KEY `django_celery_results_taskresult_task_name_90987df3` (`task_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_results_taskresult`
--

LOCK TABLES `django_celery_results_taskresult` WRITE;
/*!40000 ALTER TABLE `django_celery_results_taskresult` DISABLE KEYS */;
INSERT INTO `django_celery_results_taskresult` VALUES (1,'34a5fefb-dadf-475e-b984-f68840911655','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"profiles.tasks.clean_daily\"], \"exc_module\": \"celery.exceptions\"}','2020-04-07 00:01:00.108596',NULL,0,'{\"children\": []}',NULL,NULL,NULL),(2,'1b1efcbe-bb90-42ad-88f3-6dcee50de747','SUCCESS','application/json','utf-8','null','2020-04-07 00:01:00.123340',NULL,0,'{\"children\": []}','()','{}','accounts.tasks.change_plan_daily'),(3,'ce3a22ba-ad03-4ecb-955b-675d050017cd','SUCCESS','application/json','utf-8','null','2020-04-07 04:00:00.100566',NULL,0,'{\"children\": []}','()','{}','celery.backend_cleanup'),(4,'94329cd3-1daf-459d-9cc6-af151ac7e149','SUCCESS','application/json','utf-8','null','2020-04-21 10:04:53.894510',NULL,0,'{\"children\": []}','()','{}','accounts.tasks.change_plan_daily'),(5,'4c70edd1-5cd6-4df8-ace0-9d0e93aed70d','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"profiles.tasks.clean_daily\"], \"exc_module\": \"celery.exceptions\"}','2020-04-21 10:04:54.075444',NULL,0,'{\"children\": []}',NULL,NULL,NULL),(6,'44ad9805-a8a0-4fb4-8326-d706c7f6c3f4','SUCCESS','application/json','utf-8','null','2020-04-21 10:04:54.109576',NULL,0,'{\"children\": []}','()','{}','accounts.tasks.change_plan_daily');
/*!40000 ALTER TABLE `django_celery_results_taskresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (6,'admin','logentry'),(2,'auth','group'),(1,'auth','permission'),(44,'booking','booking'),(55,'booking','bookingattachment'),(45,'booking','bookingstatus'),(46,'booking','cancellation'),(47,'booking','cancelreason'),(54,'booking','customermessage'),(48,'booking','drivermessage'),(49,'booking','point'),(50,'booking','pushmessage'),(51,'booking','review'),(56,'booking','route'),(152,'booking','routeaction'),(153,'booking','routeassignment'),(57,'booking','routestop'),(52,'booking','statuscode'),(169,'booking','tariffrange'),(53,'booking','zone'),(151,'booking','zoneaddresslog'),(63,'config','appversion'),(64,'config','config'),(154,'config','integrationconfig'),(65,'config','smsconfig'),(3,'contenttypes','contenttype'),(114,'custom_fields','customfield'),(117,'custom_fields','customfieldchoice'),(115,'custom_fields','customfieldvalue'),(116,'custom_fields','modelcustomfield'),(30,'django_celery_beat','clockedschedule'),(25,'django_celery_beat','crontabschedule'),(26,'django_celery_beat','intervalschedule'),(27,'django_celery_beat','periodictask'),(28,'django_celery_beat','periodictasks'),(29,'django_celery_beat','solarschedule'),(24,'django_celery_results','taskresult'),(14,'django_twilio','caller'),(15,'django_twilio','credential'),(144,'djcelery','crontabschedule'),(146,'djcelery','intervalschedule'),(142,'djcelery','periodictask'),(143,'djcelery','periodictasks'),(140,'djcelery','taskmeta'),(141,'djcelery','tasksetmeta'),(147,'djcelery','taskstate'),(145,'djcelery','workerstate'),(83,'driver_tracking','settings'),(84,'driver_tracking','topic'),(11,'easy_thumbnails','source'),(12,'easy_thumbnails','thumbnail'),(13,'easy_thumbnails','thumbnaildimensions'),(127,'geozone','customeraddress'),(132,'geozone','customerreturnlocation'),(128,'geozone','employeecheckin'),(130,'geozone','invoicelocation'),(166,'geozone','jobtimerlocation'),(125,'geozone','mapentry'),(131,'geozone','paymentlocation'),(129,'geozone','workplace'),(126,'geozone','zone'),(85,'hierarchy','hierarchy'),(86,'hierarchy','staff'),(174,'integrations','apicalllog'),(170,'integrations','apiconfig'),(171,'integrations','apiheader'),(172,'integrations','externalsystem'),(175,'integrations','externalsystemconstantmapping'),(173,'integrations','externalsystemobjectmapping'),(100,'inventory','additionrequest'),(93,'inventory','agentdiscount'),(155,'inventory','bulkreturn'),(109,'inventory','cancelledpayment'),(110,'inventory','cancelledpaymentdetail'),(87,'inventory','category'),(168,'inventory','categorygroup'),(102,'inventory','consumption'),(94,'inventory','customercredit'),(160,'inventory','customerpricesegment'),(158,'inventory','customerpricesegmentdetail'),(103,'inventory','customerreturn'),(104,'inventory','customerreturndetail'),(162,'inventory','depositrefunddetail'),(112,'inventory','inventoryaudit'),(113,'inventory','inventoryauditdetail'),(107,'inventory','inventorytransfer'),(108,'inventory','inventorytransferdetail'),(161,'inventory','invoiceattachment'),(88,'inventory','invoicedetail'),(95,'inventory','invoiceprdlog'),(89,'inventory','invoices'),(159,'inventory','paymentattachment'),(90,'inventory','paymentdetail'),(91,'inventory','payments'),(111,'inventory','productadjustment'),(164,'inventory','productimage'),(96,'inventory','productrequisition'),(97,'inventory','productrequisitiondetail'),(92,'inventory','products'),(156,'inventory','productupdatelog'),(105,'inventory','quotation'),(106,'inventory','quotationdetail'),(101,'inventory','requestproduct'),(99,'inventory','return'),(163,'inventory','segmentproductlog'),(98,'inventory','staffinventory'),(157,'inventory','staffinventoryproductlog'),(139,'kombu_transport_django','message'),(138,'kombu_transport_django','queue'),(118,'messages_config','messagesconfig'),(17,'oauth2_provider','accesstoken'),(16,'oauth2_provider','application'),(18,'oauth2_provider','grant'),(19,'oauth2_provider','refreshtoken'),(7,'pages','content'),(10,'pages','media'),(8,'pages','page'),(9,'pages','pagealias'),(71,'payments','invoice'),(31,'profiles','agent'),(41,'profiles','blockedagent'),(42,'profiles','blockedinterface'),(149,'profiles','changelog'),(150,'profiles','changelogdetail'),(32,'profiles','city'),(33,'profiles','code'),(34,'profiles','company'),(35,'profiles','companyinfo'),(36,'profiles','customer'),(37,'profiles','customeraddress'),(43,'profiles','customercontact'),(38,'profiles','customerdevice'),(39,'profiles','driver'),(148,'profiles','sapcalllog'),(40,'profiles','verficationphoneemail'),(165,'promotions','bonusrule'),(20,'recurrence','date'),(21,'recurrence','param'),(22,'recurrence','recurrence'),(23,'recurrence','rule'),(4,'sessions','session'),(72,'ses_mailer','message'),(5,'sites','site'),(73,'social_taxi','favorite'),(74,'social_taxi','socialcustomer'),(75,'social_taxi','socialid'),(76,'social_taxi','taxicalls'),(66,'subscriptions','companyplan'),(67,'subscriptions','companyservice'),(68,'subscriptions','discount'),(69,'subscriptions','extraservice'),(70,'subscriptions','plan'),(119,'surveys','answer'),(120,'surveys','choice'),(121,'surveys','question'),(122,'surveys','response'),(123,'surveys','section'),(124,'surveys','survey'),(82,'tariffs','bandtariff'),(77,'tariffs','companytariff'),(78,'tariffs','distanceandcartypetariff'),(79,'tariffs','rangetariff'),(80,'tariffs','tariff'),(81,'tariffs','zonetariff'),(58,'tracking','car'),(167,'tracking','cardriverlog'),(59,'tracking','cartype'),(60,'tracking','mapentry'),(61,'tracking','maplog'),(62,'tracking','statuschange'),(133,'transit','route'),(134,'transit','stop'),(135,'transit','stoptime'),(136,'transit','trip'),(137,'transit','userfeedback');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=406 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-03-31 14:31:12.775240'),(2,'contenttypes','0002_remove_content_type_name','2020-03-31 14:31:13.039314'),(3,'auth','0001_initial','2020-03-31 14:31:13.284085'),(4,'auth','0002_alter_permission_name_max_length','2020-03-31 14:31:14.014797'),(5,'auth','0003_alter_user_email_max_length','2020-03-31 14:31:14.118548'),(6,'auth','0004_alter_user_username_opts','2020-03-31 14:31:14.126435'),(7,'auth','0005_alter_user_last_login_null','2020-03-31 14:31:14.135909'),(8,'auth','0006_require_contenttypes_0002','2020-03-31 14:31:14.141116'),(9,'auth','0007_alter_validators_add_error_messages','2020-03-31 14:31:14.156053'),(10,'profiles','0001_initial','2020-03-31 14:31:15.457776'),(11,'admin','0001_initial','2020-03-31 14:31:18.359189'),(12,'admin','0002_logentry_remove_auto_add','2020-03-31 14:31:18.750070'),(13,'admin','0003_logentry_add_action_flag_choices','2020-03-31 14:31:18.764877'),(14,'auth','0008_alter_user_username_max_length','2020-03-31 14:31:18.776290'),(15,'auth','0009_alter_user_last_name_max_length','2020-03-31 14:31:18.787258'),(16,'auth','0010_alter_group_name_max_length','2020-03-31 14:31:18.810131'),(17,'auth','0011_update_proxy_permissions','2020-03-31 14:31:18.841785'),(18,'profiles','0002_auto_20160713_1046','2020-03-31 14:31:18.856219'),(19,'profiles','0003_auto_20160728_1448','2020-03-31 14:31:18.884465'),(20,'profiles','0004_auto_20161025_1308','2020-03-31 14:31:19.056674'),(21,'tracking','0001_initial','2020-03-31 14:31:19.881189'),(22,'booking','0001_initial','2020-03-31 14:31:23.340357'),(23,'booking','0002_customermessage','2020-03-31 14:31:27.724615'),(24,'booking','0003_auto_20160809_1037','2020-03-31 14:31:28.163661'),(25,'profiles','0005_driver_zone','2020-03-31 14:31:28.343845'),(26,'profiles','0006_auto_20161026_1651','2020-03-31 14:31:28.904577'),(27,'profiles','0007_auto_20161031_1639','2020-03-31 14:31:29.195463'),(28,'profiles','0008_auto_20161107_1509','2020-03-31 14:31:29.219405'),(29,'profiles','0009_auto_20161108_1324','2020-03-31 14:31:29.605478'),(30,'profiles','0010_auto_20170117_1045','2020-03-31 14:31:29.813110'),(31,'profiles','0011_auto_20170117_1256','2020-03-31 14:31:30.181246'),(32,'profiles','0012_auto_20170123_1157','2020-03-31 14:31:30.562468'),(33,'profiles','0013_auto_20170315_1522','2020-03-31 14:31:30.879172'),(34,'profiles','0014_auto_20170420_1008','2020-03-31 14:31:30.931035'),(35,'profiles','0015_auto_20170724_1658','2020-03-31 14:31:30.999866'),(36,'profiles','0016_auto_20170821_1225','2020-03-31 14:31:31.175630'),(37,'profiles','0017_auto_20171109_1210','2020-03-31 14:31:31.792421'),(38,'profiles','0018_driver_auto_assign','2020-03-31 14:31:31.977711'),(39,'profiles','0019_auto_20171120_0827','2020-03-31 14:31:32.005097'),(40,'profiles','0020_auto_20171130_1456','2020-03-31 14:31:32.148820'),(41,'profiles','0021_auto_20180121_1544','2020-03-31 14:31:32.174210'),(42,'profiles','0022_company_inventory_type','2020-03-31 14:31:32.325147'),(43,'profiles','0023_auto_20180225_1533','2020-03-31 14:31:32.352546'),(44,'profiles','0024_auto_20180415_1615','2020-03-31 14:31:32.371460'),(45,'profiles','0025_auto_20180513_1445','2020-03-31 14:31:32.408520'),(46,'profiles','0026_auto_20180620_1235','2020-03-31 14:31:32.427717'),(47,'profiles','0027_customer_account_manager','2020-03-31 14:31:32.584791'),(48,'profiles','0028_auto_20180917_1141','2020-03-31 14:31:32.838087'),(49,'profiles','0028_auto_20180910_1107','2020-03-31 14:31:33.062042'),(50,'profiles','0029_merge_20180930_1617','2020-03-31 14:31:33.065529'),(51,'profiles','0030_auto_20181031_1233','2020-03-31 14:31:33.728331'),(52,'profiles','0031_driver_returns_alowed','2020-03-31 14:31:33.920250'),(53,'profiles','0031_auto_20190108_2137','2020-03-31 14:31:33.948282'),(54,'profiles','0032_merge_20190313_1226','2020-03-31 14:31:33.951406'),(55,'profiles','0033_auto_20190324_1357','2020-03-31 14:31:33.978110'),(56,'profiles','0034_auto_20190819_1516','2020-03-31 14:31:34.147627'),(57,'profiles','0035_auto_20190827_2236','2020-03-31 14:31:34.436925'),(58,'profiles','0036_auto_20190923_1333','2020-03-31 14:31:35.011125'),(59,'profiles','0037_auto_20191103_1245','2020-03-31 14:31:35.355337'),(60,'profiles','0038_auto_20191113_2234','2020-03-31 14:31:35.379699'),(61,'profiles','0039_company_is_surveys_enabled','2020-03-31 14:31:35.531741'),(62,'profiles','0040_customercontact','2020-03-31 14:31:35.631447'),(63,'profiles','0041_auto_20200129_1348','2020-03-31 14:31:36.026884'),(64,'profiles','0042_auto_20200217_1231','2020-03-31 14:31:36.539659'),(65,'booking','0004_bookingattachment','2020-03-31 14:31:36.630970'),(66,'booking','0005_auto_20161108_1559','2020-03-31 14:31:37.583866'),(67,'booking','0006_auto_20161109_1502','2020-03-31 14:31:37.802543'),(68,'booking','0007_auto_20161113_1402','2020-03-31 14:31:37.828501'),(69,'booking','0008_auto_20161115_1644','2020-03-31 14:31:38.044925'),(70,'booking','0009_auto_20161117_1205','2020-03-31 14:31:38.761175'),(71,'booking','0010_auto_20161123_1444','2020-03-31 14:31:38.944006'),(72,'booking','0011_auto_20161129_1516','2020-03-31 14:31:38.986668'),(73,'booking','0012_auto_20161220_1031','2020-03-31 14:31:39.028548'),(74,'booking','0013_auto_20170117_1045','2020-03-31 14:31:39.050617'),(75,'booking','0014_auto_20170315_1522','2020-03-31 14:31:39.114742'),(76,'booking','0015_auto_20170716_1352','2020-03-31 14:31:39.138925'),(77,'booking','0016_auto_20170717_1707','2020-03-31 14:31:39.161607'),(78,'booking','0017_auto_20170724_1210','2020-03-31 14:31:39.187090'),(79,'booking','0018_auto_20171120_0827','2020-03-31 14:31:39.255277'),(80,'booking','0019_auto_20180527_1603','2020-03-31 14:31:39.280124'),(81,'booking','0020_route_routestop','2020-03-31 14:31:39.466586'),(82,'booking','0020_auto_20191022_0104','2020-03-31 14:31:40.514624'),(83,'booking','0021_merge_20200323_1201','2020-03-31 14:31:40.518119'),(84,'config','0001_initial','2020-03-31 14:31:40.685400'),(85,'config','0002_smsconfig','2020-03-31 14:31:40.960459'),(86,'config','0003_auto_20160808_1223','2020-03-31 14:31:41.168460'),(87,'config','0004_auto_20160809_1037','2020-03-31 14:31:41.194305'),(88,'config','0005_auto_20160809_1158','2020-03-31 14:31:41.417439'),(89,'config','0006_auto_20191022_0104','2020-03-31 14:31:41.462176'),(90,'custom_fields','0001_initial','2020-03-31 14:31:41.812614'),(91,'custom_fields','0002_auto_20180110_1507','2020-03-31 14:31:42.966127'),(92,'custom_fields','0003_auto_20180121_1544','2020-03-31 14:31:43.515080'),(93,'custom_fields','0004_customfield_on_app','2020-03-31 14:31:43.660236'),(94,'custom_fields','0005_customfield_type','2020-03-31 14:31:43.812071'),(95,'django_celery_beat','0001_initial','2020-03-31 14:31:44.117630'),(96,'django_celery_beat','0002_auto_20161118_0346','2020-03-31 14:31:44.737612'),(97,'django_celery_beat','0003_auto_20161209_0049','2020-03-31 14:31:45.028098'),(98,'django_celery_beat','0004_auto_20170221_0000','2020-03-31 14:31:45.045125'),(99,'django_celery_beat','0005_add_solarschedule_events_choices','2020-03-31 14:31:45.053688'),(100,'django_celery_beat','0006_auto_20180322_0932','2020-03-31 14:31:45.255288'),(101,'django_celery_beat','0007_auto_20180521_0826','2020-03-31 14:31:45.597938'),(102,'django_celery_beat','0008_auto_20180914_1922','2020-03-31 14:31:45.632663'),(103,'django_celery_beat','0006_auto_20180210_1226','2020-03-31 14:31:45.650561'),(104,'django_celery_beat','0006_periodictask_priority','2020-03-31 14:31:45.814602'),(105,'django_celery_beat','0009_periodictask_headers','2020-03-31 14:31:45.986499'),(106,'django_celery_beat','0010_auto_20190429_0326','2020-03-31 14:31:46.855385'),(107,'django_celery_beat','0011_auto_20190508_0153','2020-03-31 14:31:47.104956'),(108,'django_celery_results','0001_initial','2020-03-31 14:31:47.557864'),(109,'django_celery_results','0002_add_task_name_args_kwargs','2020-03-31 14:31:48.052773'),(110,'django_celery_results','0003_auto_20181106_1101','2020-03-31 14:31:48.066481'),(111,'django_celery_results','0004_auto_20190516_0412','2020-03-31 14:31:48.292700'),(112,'django_twilio','0001_initial','2020-03-31 14:31:48.481708'),(113,'driver_tracking','0001_initial','2020-03-31 14:31:48.862989'),(114,'driver_tracking','0002_auto_20191022_0104','2020-03-31 14:31:49.240643'),(115,'easy_thumbnails','0001_initial','2020-03-31 14:31:49.521103'),(116,'easy_thumbnails','0002_thumbnaildimensions','2020-03-31 14:31:50.043929'),(117,'geozone','0001_initial','2020-03-31 14:31:50.237093'),(118,'geozone','0002_customeraddress','2020-03-31 14:31:50.243858'),(119,'geozone','0003_customeraddress_address_id','2020-03-31 14:31:50.255049'),(120,'geozone','0004_auto_20181031_1151','2020-03-31 14:31:50.276519'),(121,'geozone','0005_workplace_radius','2020-03-31 14:31:50.285235'),(122,'geozone','0006_auto_20181101_0909','2020-03-31 14:31:50.303369'),(123,'geozone','0007_auto_20181101_1443','2020-03-31 14:31:50.324871'),(124,'geozone','0008_auto_20181121_1708','2020-03-31 14:31:50.338907'),(125,'geozone','0009_auto_20181127_1349','2020-03-31 14:31:50.358813'),(126,'geozone','0010_employeecheckin_duration','2020-03-31 14:31:50.368293'),(127,'geozone','0011_invoicelocation_paymentlocation','2020-03-31 14:31:50.378390'),(128,'geozone','0012_auto_20190822_1544','2020-03-31 14:31:50.392523'),(129,'geozone','0013_auto_20191103_1246','2020-03-31 14:31:50.407942'),(130,'hierarchy','0001_initial','2020-03-31 14:31:50.502243'),(131,'hierarchy','0002_auto_20170725_1013','2020-03-31 14:31:51.660551'),(132,'hierarchy','0003_remove_hierarchy_staff','2020-03-31 14:31:52.068489'),(133,'hierarchy','0004_auto_20170726_1118','2020-03-31 14:31:52.465810'),(134,'hierarchy','0005_auto_20170726_1142','2020-03-31 14:31:53.314827'),(135,'hierarchy','0006_auto_20170726_1427','2020-03-31 14:31:53.562930'),(136,'profiles','0043_auto_20200318_1632','2020-03-31 14:31:53.592272'),(137,'inventory','0001_initial','2020-03-31 14:31:54.908283'),(138,'inventory','0002_auto_20170703_1247','2020-03-31 14:31:57.497605'),(139,'inventory','0003_auto_20170706_1040','2020-03-31 14:31:57.851726'),(140,'inventory','0004_auto_20170706_1331','2020-03-31 14:31:57.868763'),(141,'inventory','0005_auto_20170706_1347','2020-03-31 14:31:58.026367'),(142,'inventory','0006_auto_20170706_1350','2020-03-31 14:31:58.223584'),(143,'inventory','0007_payments_used','2020-03-31 14:31:58.392095'),(144,'inventory','0008_payments_remaining','2020-03-31 14:31:58.555545'),(145,'inventory','0009_auto_20170720_1137','2020-03-31 14:31:58.578215'),(146,'inventory','0010_auto_20170731_1219','2020-03-31 14:32:00.391321'),(147,'inventory','0011_auto_20170820_1312','2020-03-31 14:32:00.976713'),(148,'inventory','0012_invoices_subid','2020-03-31 14:32:01.160203'),(149,'inventory','0013_auto_20170828_0840','2020-03-31 14:32:01.192293'),(150,'inventory','0014_payments_subid','2020-03-31 14:32:01.351858'),(151,'inventory','0015_auto_20170828_1338','2020-03-31 14:32:02.276561'),(152,'inventory','0016_category_used','2020-03-31 14:32:02.424655'),(153,'inventory','0017_auto_20170912_1121','2020-03-31 14:32:03.165274'),(154,'inventory','0018_auto_20170919_1307','2020-03-31 14:32:03.488559'),(155,'inventory','0019_products_company','2020-03-31 14:32:03.656958'),(156,'inventory','0020_category_company','2020-03-31 14:32:04.003294'),(157,'inventory','0021_auto_20180204_1504','2020-03-31 14:32:04.983556'),(158,'inventory','0022_auto_20180205_1433','2020-03-31 14:32:08.528452'),(159,'inventory','0023_productrequisitiondetail_remaining_quantity','2020-03-31 14:32:08.700565'),(160,'inventory','0024_return','2020-03-31 14:32:08.986189'),(161,'inventory','0025_return_subid','2020-03-31 14:32:10.463247'),(162,'inventory','0026_auto_20180217_1750','2020-03-31 14:32:11.196420'),(163,'inventory','0027_additionrequest_date','2020-03-31 14:32:11.986210'),(164,'inventory','0028_invoices_create_date','2020-03-31 14:32:12.161571'),(165,'inventory','0029_payments_create_date','2020-03-31 14:32:12.341230'),(166,'inventory','0030_auto_20180225_1451','2020-03-31 14:32:12.399076'),(167,'inventory','0031_auto_20180225_1533','2020-03-31 14:32:12.767875'),(168,'inventory','0032_auto_20180402_1352','2020-03-31 14:32:12.851468'),(169,'inventory','0033_auto_20180415_1615','2020-03-31 14:32:13.634586'),(170,'inventory','0034_auto_20180416_1109','2020-03-31 14:32:13.881687'),(171,'inventory','0035_auto_20180416_1140','2020-03-31 14:32:14.169519'),(172,'inventory','0036_auto_20180416_1141','2020-03-31 14:32:14.408161'),(173,'inventory','0037_auto_20180416_1147','2020-03-31 14:32:14.437905'),(174,'inventory','0038_auto_20180416_1448','2020-03-31 14:32:14.948899'),(175,'inventory','0039_auto_20180417_1616','2020-03-31 14:32:16.439467'),(176,'inventory','0040_auto_20180417_1644','2020-03-31 14:32:16.499969'),(177,'inventory','0041_auto_20180419_1149','2020-03-31 14:32:16.791857'),(178,'inventory','0042_requestproduct_subid','2020-03-31 14:32:17.572608'),(179,'inventory','0043_auto_20180422_1536','2020-03-31 14:32:18.219162'),(180,'inventory','0044_auto_20180426_1339','2020-03-31 14:32:18.465998'),(181,'inventory','0045_auto_20180426_1423','2020-03-31 14:32:18.757845'),(182,'inventory','0046_requestproduct_created_at','2020-03-31 14:32:18.938162'),(183,'inventory','0047_auto_20180513_1445','2020-03-31 14:32:19.299823'),(184,'inventory','0048_auto_20180520_1431','2020-03-31 14:32:19.831302'),(185,'inventory','0049_auto_20180522_1328','2020-03-31 14:32:20.267096'),(186,'inventory','0050_auto_20180523_1031','2020-03-31 14:32:20.606991'),(187,'inventory','0051_auto_20180523_1120','2020-03-31 14:32:21.162311'),(188,'inventory','0052_auto_20180523_1415','2020-03-31 14:32:21.380410'),(189,'inventory','0053_auto_20180523_1426','2020-03-31 14:32:21.724445'),(190,'inventory','0054_auto_20180523_1540','2020-03-31 14:32:21.918265'),(191,'inventory','0055_auto_20180527_1603','2020-03-31 14:32:22.181298'),(192,'inventory','0056_auto_20180527_2022','2020-03-31 14:32:22.500558'),(193,'inventory','0057_auto_20180530_1335','2020-03-31 14:32:22.870783'),(194,'inventory','0058_auto_20180531_1009','2020-03-31 14:32:25.021514'),(195,'inventory','0059_auto_20180603_1302','2020-03-31 14:32:25.365389'),(196,'inventory','0060_auto_20180620_1235','2020-03-31 14:32:25.891161'),(197,'inventory','0061_auto_20180620_1309','2020-03-31 14:32:25.989313'),(198,'inventory','0062_auto_20180627_1517','2020-03-31 14:32:26.301011'),(199,'inventory','0063_auto_20181031_1233','2020-03-31 14:32:27.578740'),(200,'inventory','0064_auto_20181223_1734','2020-03-31 14:32:28.308490'),(201,'inventory','0065_invoicedetail_final_price','2020-03-31 14:32:28.470604'),(202,'inventory','0066_invoices_last_updated','2020-03-31 14:32:28.653199'),(203,'inventory','0067_auto_20190324_1357','2020-03-31 14:32:29.344787'),(204,'inventory','0068_auto_20190513_0530','2020-03-31 14:32:30.515098'),(205,'inventory','0069_payments_returned_goods','2020-03-31 14:32:30.678578'),(206,'inventory','0070_staffinventory__product_quantity','2020-03-31 14:32:30.876211'),(207,'inventory','0071_auto_20190805_1548','2020-03-31 14:32:31.117185'),(208,'inventory','0072_auto_20190806_1352','2020-03-31 14:32:31.792387'),(209,'inventory','0073_auto_20190809_1611','2020-03-31 14:32:32.015103'),(210,'inventory','0074_auto_20190819_1253','2020-03-31 14:32:32.249051'),(211,'inventory','0075_auto_20190916_1710','2020-03-31 14:32:32.657981'),(212,'inventory','0076_auto_20191001_1249','2020-03-31 14:32:33.631676'),(213,'inventory','0077_auto_20191117_1226','2020-03-31 14:32:35.972615'),(214,'inventory','0078_auto_20191231_1159','2020-03-31 14:32:37.842819'),(215,'inventory','0079_cancelledpayment_cancelledpaymentdetail','2020-03-31 14:32:38.057525'),(216,'inventory','0080_auto_20200206_1325','2020-03-31 14:32:39.207838'),(217,'inventory','0081_productadjustment','2020-03-31 14:32:39.321738'),(218,'inventory','0082_auto_20200224_1300','2020-03-31 14:32:39.951297'),(219,'inventory','0083_auto_20200227_1000','2020-03-31 14:32:40.390440'),(220,'inventory','0084_auto_20200312_1419','2020-03-31 14:32:40.736352'),(221,'inventory','0085_auto_20200318_1710','2020-03-31 14:32:41.043454'),(222,'inventory','0077_auto_20191022_0104','2020-03-31 14:32:42.237307'),(223,'inventory','0082_merge_20200211_1215','2020-03-31 14:32:42.241553'),(224,'inventory','0086_merge_20200323_1201','2020-03-31 14:32:42.261277'),(225,'messages_config','0001_initial','2020-03-31 14:32:42.449472'),(226,'messages_config','0002_auto_20191022_0104','2020-03-31 14:32:42.733175'),(227,'oauth2_provider','0001_initial','2020-03-31 14:32:43.152910'),(228,'oauth2_provider','0002_08_updates','2020-03-31 14:32:45.711400'),(229,'oauth2_provider','0003_auto_20160316_1503','2020-03-31 14:32:46.150524'),(230,'oauth2_provider','0004_auto_20160525_1623','2020-03-31 14:32:46.484766'),(231,'oauth2_provider','0005_auto_20170514_1141','2020-03-31 14:32:52.184934'),(232,'sites','0001_initial','2020-03-31 14:32:52.264410'),(233,'pages','0001_initial','2020-03-31 14:32:52.711468'),(234,'pages','0002_page_sites','2020-03-31 14:32:54.072624'),(235,'pages','0003_page_uuid','2020-03-31 14:32:54.764643'),(236,'pages','0004_auto_20161209_0648','2020-03-31 14:32:55.167031'),(237,'pages','0005_media','2020-03-31 14:32:55.248547'),(238,'pages','0006_auto_20170119_0628','2020-03-31 14:32:55.391979'),(239,'pages','0007_language_code','2020-03-31 14:32:55.422914'),(240,'pages','0008_auto_20181102_0818','2020-03-31 14:32:56.276938'),(241,'payments','0001_initial','2020-03-31 14:32:56.388734'),(242,'profiles','0037_auto_20191022_0104','2020-03-31 14:32:56.872072'),(243,'profiles','0038_merge_20191115_2206','2020-03-31 14:32:56.876788'),(244,'profiles','0042_merge_20200211_1215','2020-03-31 14:32:56.886440'),(245,'profiles','0044_merge_20200323_1201','2020-03-31 14:32:56.896029'),(246,'recurrence','0001_initial','2020-03-31 14:32:57.450838'),(247,'ses_mailer','0001_initial','2020-03-31 14:32:58.076292'),(248,'sessions','0001_initial','2020-03-31 14:32:58.154404'),(249,'sites','0002_alter_domain_unique','2020-03-31 14:32:58.285543'),(250,'social_taxi','0001_initial','2020-03-31 14:32:59.337335'),(251,'social_taxi','0002_socialcustomer_password','2020-03-31 14:33:01.013252'),(252,'social_taxi','0003_auto_20160713_1046','2020-03-31 14:33:01.047508'),(253,'social_taxi','0004_auto_20191022_0104','2020-03-31 14:33:01.078345'),(254,'subscriptions','0001_initial','2020-03-31 14:33:02.456831'),(255,'subscriptions','0002_companyplan_number_of_agents','2020-03-31 14:33:04.272663'),(256,'subscriptions','0003_companyplan_active_surveys_limit','2020-03-31 14:33:04.478395'),(257,'subscriptions','0004_companyplan_grace_notification_date','2020-03-31 14:33:04.673619'),(258,'subscriptions','0005_companyplan_number_of_sales_licenses','2020-03-31 14:33:04.882203'),(259,'surveys','0001_initial','2020-03-31 14:33:06.950209'),(260,'surveys','0002_auto_20191223_1244','2020-03-31 14:33:10.434535'),(261,'surveys','0003_response_subid','2020-03-31 14:33:10.621940'),(262,'tariffs','0001_initial','2020-03-31 14:33:11.246192'),(263,'tariffs','0002_bandtariff','2020-03-31 14:33:12.475522'),(264,'tariffs','0003_auto_20191022_0104','2020-03-31 14:33:12.756418'),(265,'tracking','0002_auto_20161113_1402','2020-03-31 14:33:13.077486'),(266,'tracking','0003_auto_20161114_1210','2020-03-31 14:33:13.710592'),(267,'tracking','0004_auto_20161116_1203','2020-03-31 14:33:13.744086'),(268,'tracking','0005_auto_20161129_1516','2020-03-31 14:33:14.056745'),(269,'tracking','0006_auto_20180513_1445','2020-03-31 14:33:14.385306'),(270,'tracking','0007_auto_20191022_0104','2020-03-31 14:33:14.549025'),(271,'transit','0001_initial','2020-03-31 14:33:14.589764'),(272,'transit','0002_auto_20161220_1214','2020-03-31 14:33:14.613585'),(273,'transit','0003_route_city_id','2020-03-31 14:33:14.626382'),(274,'transit','0004_auto_20161220_1250','2020-03-31 14:33:14.667052'),(275,'transit','0005_auto_20161220_1330','2020-03-31 14:33:14.690881'),(276,'transit','0006_auto_20161222_1429','2020-03-31 14:33:14.721137'),(277,'transit','0007_auto_20161222_1553','2020-03-31 14:33:14.749560'),(278,'transit','0008_auto_20161222_1605','2020-03-31 14:33:14.770584'),(279,'transit','0009_auto_20161226_1116','2020-03-31 14:33:14.807328'),(280,'transit','0010_auto_20161227_1124','2020-03-31 14:33:14.852925'),(281,'transit','0011_stop_city_id','2020-03-31 14:33:14.869488'),(282,'transit','0012_auto_20161227_1432','2020-03-31 14:33:14.916773'),(283,'transit','0013_auto_20161228_1402','2020-03-31 14:33:14.954606'),(284,'transit','0014_auto_20170117_1045','2020-03-31 14:33:15.000070'),(285,'transit','0015_auto_20170117_1256','2020-03-31 14:33:15.048693'),(286,'transit','0016_auto_20170117_1307','2020-03-31 14:33:15.077217'),(287,'transit','0017_auto_20170117_1340','2020-03-31 14:33:15.098776'),(288,'transit','0018_auto_20170117_1555','2020-03-31 14:33:15.121411'),(289,'transit','0019_auto_20170315_1522','2020-03-31 14:33:15.157534'),(290,'transit','0020_auto_20170725_1013','2020-03-31 14:33:15.200423'),(291,'transit','0021_auto_20171109_1210','2020-03-31 14:33:15.287182'),(292,'transit','0022_auto_20171109_1219','2020-03-31 14:33:15.312358'),(293,'transit','0023_auto_20171120_0827','2020-03-31 14:33:15.336800'),(294,'transit','0024_auto_20171130_1310','2020-03-31 14:33:15.362899'),(295,'transit','0025_auto_20180110_1429','2020-03-31 14:33:15.387338'),(296,'transit','0026_auto_20180121_1544','2020-03-31 14:33:15.403880'),(297,'transit','0027_auto_20180225_1533','2020-03-31 14:33:15.420600'),(298,'transit','0028_auto_20180415_1615','2020-03-31 14:33:15.439021'),(299,'transit','0029_auto_20180513_1445','2020-03-31 14:33:15.455241'),(300,'transit','0030_auto_20180620_1235','2020-03-31 14:33:15.471702'),(301,'transit','0031_auto_20191022_0104','2020-03-31 14:33:15.507475'),(302,'booking','0021_auto_20200402_1828','2020-04-08 13:47:30.710641'),(303,'booking','0022_merge_20200408_1346','2020-04-08 13:47:30.720143'),(304,'subscriptions','0006_auto_20200406_1238','2020-04-08 13:47:31.293023'),(305,'geozone','0014_auto_20200428_1337','2020-05-04 16:03:47.239944'),(306,'inventory','0086_auto_20200622_0912','2021-11-19 14:37:39.039292'),(307,'inventory','0087_auto_20200624_1058','2021-11-19 14:37:39.253054'),(308,'inventory','0088_auto_20200624_1131','2021-11-19 14:37:39.603055'),(309,'inventory','0089_auto_20200701_1047','2021-11-19 14:37:39.727589'),(310,'inventory','0090_auto_20200701_1137','2021-11-19 14:37:39.842076'),(311,'inventory','0091_auto_20200701_1206','2021-11-19 14:37:40.015334'),(312,'inventory','0092_auto_20200705_0901','2021-11-19 14:37:40.167064'),(313,'inventory','0093_auto_20200714_0849','2021-11-19 14:37:40.263000'),(314,'inventory','0094_auto_20200714_1036','2021-11-19 14:37:42.922659'),(315,'inventory','0095_auto_20200714_1210','2021-11-19 14:37:43.266383'),(316,'inventory','0096_auto_20201011_1108','2021-11-19 14:37:43.787511'),(317,'inventory','0096_auto_20201004_0951','2021-11-19 14:37:43.968004'),(318,'inventory','0097_merge_20201013_1457','2021-11-19 14:37:43.977429'),(319,'inventory','0098_auto_20201013_1458','2021-11-19 14:37:44.197598'),(320,'inventory','0099_auto_20201020_1517','2021-11-19 14:37:44.762383'),(321,'profiles','0044_auto_20201020_1517','2021-11-19 14:37:45.248510'),(322,'profiles','0045_auto_20201203_1254','2021-11-19 14:37:45.807268'),(323,'profiles','0046_remove_driver_make_cn_allowed','2021-11-19 14:37:46.032403'),(324,'profiles','0047_auto_20210118_1501','2021-11-19 14:37:46.100481'),(325,'inventory','0099_cancelledpayment_cash_deposit','2021-11-19 14:37:46.187185'),(326,'inventory','0100_merge_20201027_1723','2021-11-19 14:37:46.198823'),(327,'inventory','0101_auto_20201115_1532','2021-11-19 14:37:47.090549'),(328,'inventory','0102_auto_20201124_1128','2021-11-19 14:37:47.344329'),(329,'inventory','0103_cancelledpayment_credit_note','2021-11-19 14:37:47.437398'),(330,'inventory','0104_auto_20201206_1208','2021-11-19 14:37:47.867740'),(331,'inventory','0105_agentdiscount_make_cn_allowed','2021-11-19 14:37:47.958269'),(332,'inventory','0106_auto_20201207_1235','2021-11-19 14:37:48.034756'),(333,'inventory','0107_auto_20201209_1057','2021-11-19 14:37:48.448143'),(334,'inventory','0108_auto_20201209_1101','2021-11-19 14:37:48.582593'),(335,'inventory','0109_auto_20201209_1111','2021-11-19 14:37:48.646601'),(336,'inventory','0110_auto_20201210_1032','2021-11-19 14:37:48.925418'),(337,'inventory','0111_agentdiscount_pd_limit','2021-11-19 14:37:49.101721'),(338,'inventory','0112_auto_20201215_1439','2021-11-19 14:37:49.336535'),(339,'inventory','0113_auto_20201229_1257','2021-11-19 14:37:49.395210'),(340,'inventory','0114_auto_20210103_1326','2021-11-19 14:37:49.473233'),(341,'inventory','0115_auto_20210119_1524','2021-11-19 14:37:49.797406'),(342,'booking','0022_auto_20210107_1247','2021-11-19 14:37:49.997014'),(343,'booking','0023_zoneaddresslog_changed_at','2021-11-19 14:37:50.074607'),(344,'booking','0024_auto_20210119_1600','2021-11-19 14:37:50.904498'),(345,'booking','0025_auto_20210201_1643','2021-11-19 14:37:51.282267'),(346,'booking','0026_auto_20210329_1343','2021-11-19 14:37:52.194023'),(347,'booking','0027_auto_20210331_1412','2021-11-19 14:37:52.424736'),(348,'booking','0028_auto_20210419_1446','2021-11-19 14:37:52.691244'),(349,'profiles','0048_auto_20210419_1446','2021-11-19 14:37:52.985772'),(350,'profiles','0049_driver_restrict_end_timer_fence_to_start_location','2021-11-19 14:37:53.131421'),(351,'profiles','0050_auto_20210524_1512','2021-11-19 14:37:53.717502'),(352,'config','0006_integrationconfig','2021-11-19 14:37:53.884793'),(353,'djcelery','0001_initial','2021-11-19 14:37:54.534114'),(354,'geozone','0015_jobtimerlocation','2021-11-19 14:37:54.559691'),(355,'inventory','0116_auto_20210309_1550','2021-11-19 14:37:55.072375'),(356,'inventory','0117_auto_20210317_0911','2021-11-19 14:37:55.447968'),(357,'inventory','0118_auto_20210317_0914','2021-11-19 14:37:55.584376'),(358,'inventory','0119_agentdiscount_block_sales_other_customers','2021-11-19 14:37:55.740137'),(359,'inventory','0120_auto_20210503_0923','2021-11-19 14:37:56.316087'),(360,'inventory','0121_return_notes','2021-11-19 14:37:56.976502'),(361,'inventory','0122_productrequisitiondetail_product_notes','2021-11-19 14:37:57.113200'),(362,'inventory','0123_add_new_choice_to_reason_product_adjustment','2021-11-19 14:37:57.648342'),(363,'inventory','0124_productimage','2021-11-19 14:37:57.811267'),(364,'inventory','0125_auto_20210811_1222','2021-11-19 14:37:58.009733'),(365,'inventory','0126_auto_20210826_0800','2021-11-19 14:37:58.086313'),(366,'inventory','0127_auto_20210920_1237','2021-11-19 14:37:58.280810'),(367,'inventory','0128_auto_20210927_1156','2021-11-19 14:37:58.415488'),(368,'inventory','0129_customerreturn_qr_code','2021-11-19 14:37:58.505134'),(369,'inventory','0130_products_on_portal','2021-11-19 14:37:58.594698'),(370,'promotions','0001_initial','2021-11-19 14:37:58.762559'),(371,'inventory','0131_auto_20211025_0906','2021-11-19 14:37:59.098696'),(372,'kombu_transport_django','0001_initial','2021-11-19 14:37:59.261638'),(373,'messages_config','0002_auto_20210616_1459','2021-11-19 14:37:59.313102'),(374,'profiles','0050_add_is_active_customer_field','2021-11-19 14:37:59.414930'),(375,'profiles','0051_merge_20210531_1333','2021-11-19 14:37:59.423170'),(376,'profiles','0052_driver_is_allowed_add_jobs_other_staff_customers','2021-11-19 14:37:59.536953'),(377,'profiles','0053_company_parent_company','2021-11-19 14:37:59.890721'),(378,'profiles','0054_auto_20210715_1332','2021-11-19 14:38:01.044235'),(379,'profiles','0055_auto_20210927_1105','2021-11-19 14:38:02.354816'),(380,'profiles','0056_company_is_einvoice_enabled','2021-11-19 14:38:02.527770'),(381,'profiles','0057_auto_20211005_1615','2021-11-19 14:38:02.676523'),(382,'profiles','0058_auto_20211101_1325','2021-11-19 14:38:03.034685'),(383,'profiles','0059_changelog_changelogdetail','2021-11-19 14:38:03.613410'),(384,'surveys','0004_auto_20200924_1413','2021-11-19 14:38:04.009170'),(385,'inventory','0132_quotation_staff_notes','2021-12-04 08:10:01.884954'),(386,'profiles','0060_auto_20211202_1510','2021-12-04 08:10:01.949936'),(387,'tracking','0007_cardriverlog','2021-12-04 08:10:02.306555'),(388,'inventory','0133_auto_20211229_1523','2021-12-30 06:16:10.324345'),(389,'inventory','0134_auto_20220129_0832','2022-01-29 08:33:58.405539'),(390,'profiles','0061_auto_20220119_1349','2022-03-01 17:08:43.431745'),(391,'booking','0029_tariffrange','2022-03-01 17:08:43.802735'),(392,'profiles','0062_auto_20220220_1348','2022-03-01 17:08:43.893012'),(393,'integrations','0001_initial','2022-03-01 17:08:46.359031'),(394,'inventory','0135_auto_20220301_1707','2022-03-01 17:08:46.537117'),(395,'inventory','0136_auto_20220309_1316','2022-03-09 13:18:19.393826'),(396,'profiles','0063_auto_20220818_1211','2022-08-31 14:11:01.150134'),(397,'booking','0030_auto_20220818_1211','2022-08-31 14:11:01.384055'),(398,'integrations','0002_externalsystemconstantmapping','2022-08-31 14:11:01.651642'),(399,'inventory','0137_auto_20220322_1324','2022-08-31 14:11:01.848940'),(400,'inventory','0138_auto_20220622_0958','2022-08-31 14:11:02.554274'),(401,'profiles','0064_auto_20220831_1404','2022-08-31 14:11:02.885639'),(402,'surveys','0005_auto_20220810_2340','2022-08-31 14:11:03.002289'),(403,'surveys','0006_auto_20220816_0907','2022-08-31 14:11:03.079451'),(404,'profiles','0065_auto_20220904_1105','2022-09-04 11:06:20.387266'),(405,'profiles','0065_auto_20220904_1112','2022-09-04 11:13:06.340098');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('01uuud6yk7pi8n3zlcfy2wo62x3dtypa','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-03-28 21:57:49.075137'),('0zl29fu2xthgzzkvvvtnhbh3mw1ypb1y','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-01-02 10:59:01.679579'),('11e5ihq2sqw7j079adu2yg30ru92k8dg','YzUzNTYwODhjMzY2ZTkzNTFmY2ZkYThkZTIzMTI2Y2Y3NjI5MTk5MDp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZDgxOGVlN2Q4MzM1ODM2N2UyMTVkMmU1MGNmMjcyOTQyZDY2NmE2IiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIwLTA1LTI1VDEzOjQ4OjIwLjM3NDcxMCJ9','2020-06-08 13:48:20.436915'),('163l1bwf416m4t93ochi798kziwsmq2r','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-04-19 21:01:34.800131'),('1ffyifvvomqcoimllqrnze6stqfrjyjr','OWY5NmVhMDcwMTAzM2EzMGRhYzg0NWEyMjRkYjg0MTIyZDhhMTkzZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmJhY2tlbmRzLkFnZW50QmFja2VuZCIsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAyMS0xMi0yMFQxNDoyODo0NC4xODgwNTQiLCJlYXN5Y2FydCI6eyJpdGVtcyI6e319LCJfYXV0aF91c2VyX2hhc2giOiI3MTQxYjFhOGYyNjU4NDIxNjhkNDhiYTdhOGZmODA0ODc2NDEzZWZhIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2022-01-03 14:28:44.230888'),('1gjt6lxin6brti18xhioui5e61urzjg1','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-04-19 15:07:34.800113'),('280cvrp2brsbijrayxx0375pntkk1w7i','MWY0YTZlODVhYjk0ZGE2YjFmZWM2M2RiMDJlYjViYmRlYzQ5MjZkYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA4LTI1VDE3OjM5OjQ0LjgyMDEwMyIsImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaGFzaCI6IjEwZmQxZTcyOWU5NGJiZjJkNzEzZDNlNWNjNzAyMmIzYThiYzEzNGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2022-08-25 18:39:44.905220'),('29pm3udgfepx6iginzjg1eo6ndww6czo','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-04-20 15:11:46.948833'),('2dvf4v1zk3xggq1ajdt1wkokuvvxhveb','NmNiM2Q5ZTllYjA3ZmE2NTY2ZjQ4Yzg2YjFlYzFkZjY2YjZiYzZmZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmJhY2tlbmRzLkFnZW50QmFja2VuZCIsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAyMi0wMy0yOVQwMDo1MDo0My4zODQ5MTAiLCJlYXN5Y2FydCI6eyJpdGVtcyI6e319LCJfYXV0aF91c2VyX2hhc2giOiIxMGZkMWU3MjllOTRiYmYyZDcxM2QzZTVjYzcwMjJiM2E4YmMxMzRiIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2022-03-29 01:50:43.443243'),('2p5jl2cljqf2akx342dit0k48a8q2zwy','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-03-28 18:09:02.763030'),('365vumut94uhbs5zoi62cd6x3541tp6d','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-03-27 18:28:17.458277'),('3ef6wxtdlp33u0vptabaib55gy1ae8yv','OGYzZjRiMzZjYjliNWEzNGY5Njk5ZGRhZjE5MTRjOWExNzA3NTdkMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmJhY2tlbmRzLkFnZW50QmFja2VuZCIsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAyMi0wOS0wNFQxNTo1MTowNS42Nzg4NjgiLCJlYXN5Y2FydCI6eyJpdGVtcyI6e319LCJfYXV0aF91c2VyX2hhc2giOiIxMGZkMWU3MjllOTRiYmYyZDcxM2QzZTVjYzcwMjJiM2E4YmMxMzRiIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2022-09-04 16:51:05.910180'),('3molrhpbooi86vnq8bx6dwuxcvg5olg0','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-05-18 17:33:42.185771'),('3tlgio0d8eyhchsho1iu9nj9qkgsy9ll','YTdjMzhjNDgwZTZmZTA5MTNiN2NjZjg4OWQ2MjMwM2MyZjZhNTAzZTp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYmFja2VuZHMuQWdlbnRCYWNrZW5kIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTAxLTAzVDE5OjMzOjA0LjgwMjAxOCIsIl9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzE0MWIxYThmMjY1ODQyMTY4ZDQ4YmE3YThmZjgwNDg3NjQxM2VmYSJ9','2022-01-17 19:33:04.867386'),('46gc5p3rr2eifwgrtigda4c7i3k2ugfy','M2ZmYTc2MWM0NzI0MDMwOWM5YzczZjJkMjIwNjlkNTIyMWVhZWIyYzp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA5LTA0VDAxOjA4OjI1LjQ4Mjk3OCIsImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaGFzaCI6IjJkMzM0ZTg1YWE1ZTIxYmM2OTI1M2M0MDA3MjQ2ODgxYTJmMDNlYjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2022-09-04 02:08:25.539227'),('477w3vcgipcrq8rxtq427gu8cff9vuy7','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-06-07 08:51:34.971271'),('4rkb82elaqys1nd87uai72gjf2d2fg1e','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2021-12-05 06:58:53.150224'),('57r88comnsggtt7s6qjaid89g2aw29yv','Zjc1MTI4NTJjMTUzNmE3MDk5OTAxMDk5NzAzNzM2ZGQzMjI0ZmM4Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA0LTAxVDIyOjU1OjMxLjI2NjgwOCIsImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaGFzaCI6IjEwZmQxZTcyOWU5NGJiZjJkNzEzZDNlNWNjNzAyMmIzYThiYzEzNGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2022-04-02 00:10:27.267785'),('5gi1cde7klmuaohy6l8t5gtk9sicxf36','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-09-03 19:31:57.027364'),('638lwvktn0qqeymhz6rox37tcfszi5hy','NWQ3MzNiNGVkODMzZTBmZTE1NWQ0ZTc0NmYzM2NiNWNmMmFlMGM2MDp7Il9zZXNzaW9uX3NlY3VyaXR5IjoiMjAyMi0wMy0yOFQxNTo0MDowOS45NDkwNjMiLCJfYXV0aF91c2VyX2hhc2giOiIxMGZkMWU3MjllOTRiYmYyZDcxM2QzZTVjYzcwMjJiM2E4YmMxMzRiIiwiZWFzeWNhcnQiOnsiaXRlbXMiOnt9fSwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2022-03-28 16:40:33.819046'),('6dd9qa8vnnttscqyna1fjr6qpzr6457v','NGNjZjA5YWNmOThmYmUwYzRiZDU5M2UwZDkxYjg2YTBmMDAyMTY5NDp7Il9sYW5ndWFnZSI6ImVuIn0=','2022-03-21 22:07:52.378013'),('6km4swi8pwao92tqqvxkepldulh7gzel','Y2Y5YWM4ZjgwZTgwYTdmYThiNzVlZThiMWE4YzZkZTliYWMzZDVlYTp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX19','2022-03-28 11:25:57.220222'),('73u3ap3sv4nugwcrjrk04pty413uo7ks','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-05-05 13:28:19.719120'),('741ij8puogf6snsj4hnr5v68lv33o3o6','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-04-14 15:40:36.405432'),('76f65sbnhf4i33hefnahxz0yeh8re47z','NDI0ODI5NGI0YTBhNmJmOGUyODBiNjQ2NmU5ZGYxYTgxZmY0Y2MzZTp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYmFja2VuZHMuQWdlbnRCYWNrZW5kIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIxLTExLTIyVDEyOjAwOjM4LjU4NjE5MSIsIl9sYW5ndWFnZSI6ImFyIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzE0MWIxYThmMjY1ODQyMTY4ZDQ4YmE3YThmZjgwNDg3NjQxM2VmYSJ9','2021-12-06 12:00:38.636739'),('7u06yfbx5ql9o4lcvyna8fnednip6fu9','ZTQ3ZTQ0OWJmZTUwOTZmYzVmY2M0YzI0OGY1OGYwYmM1Zjk4YTkzZTp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYmFja2VuZHMuQWdlbnRCYWNrZW5kIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIxLTEyLTA1VDExOjMxOjIxLjA5OTkzMiIsIl9sYW5ndWFnZSI6ImFyIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzE0MWIxYThmMjY1ODQyMTY4ZDQ4YmE3YThmZjgwNDg3NjQxM2VmYSJ9','2021-12-19 11:31:21.127068'),('88iamxrhdqp2ygw8en97tgm3h7hoxb28','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-04-14 17:35:40.041134'),('8sqcntv58oszxjxtm7vew9l8yo8976u9','NTE1YTY3NDFmYzY2NGEyMWNmYTFiMTYxNGZhNWRjNjMzMzJhYmYwYjp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYmFja2VuZHMuQWdlbnRCYWNrZW5kIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA5LTAzVDIxOjE4OjIyLjI4NDc2MiIsIl9hdXRoX3VzZXJfaGFzaCI6IjEwZmQxZTcyOWU5NGJiZjJkNzEzZDNlNWNjNzAyMmIzYThiYzEzNGIiLCJkamFuZ29fbGFuZ3VhZ2UiOiJlbiJ9','2022-09-03 22:51:56.937327'),('9ootylygntkxy0wd60u612z1acljn0qv','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-02-12 10:25:31.834988'),('9rbu5dm5w2mnip9aqbatgo30xu6x9kfq','N2RhZmFmMjdlZjI4NjVjNTczZmQ0MTVlN2VkN2I2Mzk0MDIwNmQ4YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTAzLTMwVDE4OjA4OjUxLjA3MzQ2NiIsImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaGFzaCI6IjEwZmQxZTcyOWU5NGJiZjJkNzEzZDNlNWNjNzAyMmIzYThiYzEzNGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2022-03-30 19:08:54.607759'),('9s39efyjgq00ms2wnvjb2zqedm4t2ww0','MDkwMzAzM2JkZTkxYWZjNWFjY2ZlY2FmNTJlZDA4ODk5OGZjYjRmMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmJhY2tlbmRzLkFnZW50QmFja2VuZCIsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAyMi0wOS0wNFQwODo0NDozNC4xODQ3NjciLCJlYXN5Y2FydCI6eyJpdGVtcyI6e319LCJfYXV0aF91c2VyX2hhc2giOiIyZDMzNGU4NWFhNWUyMWJjNjkyNTNjNDAwNzI0Njg4MWEyZjAzZWIyIiwiX2F1dGhfdXNlcl9pZCI6IjUifQ==','2022-09-04 09:44:34.254312'),('a7fdo7el8oim1ppmr4xb20289kibiv5j','YjZhODhmYjJmYzA2YTliZDEwMzkzMjhjOGRhYjJkMjAzMGI0MTU2MDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYmFja2VuZHMuQWdlbnRCYWNrZW5kIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIxLTEyLTE1VDEwOjIzOjQ2LjI3NjY3MiIsIl9sYW5ndWFnZSI6ImFyIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzE0MWIxYThmMjY1ODQyMTY4ZDQ4YmE3YThmZjgwNDg3NjQxM2VmYSJ9','2021-12-29 10:23:46.318065'),('aiwg2lh74im5yh1ok0wk1rf5osnkopfv','Y2Y5YWM4ZjgwZTgwYTdmYThiNzVlZThiMWE4YzZkZTliYWMzZDVlYTp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX19','2022-03-23 13:49:12.599208'),('aunfslg6baum9rtpsq1schdh981q34se','NGNjZjA5YWNmOThmYmUwYzRiZDU5M2UwZDkxYjg2YTBmMDAyMTY5NDp7Il9sYW5ndWFnZSI6ImVuIn0=','2022-03-17 21:11:26.109652'),('b3yuu8u1ut8vlng8wcqm6a1i75ns201u','ZjY4M2M3YmY4ZmQwNTg0YzQ3Njc1MjhkODc0M2RhZTQzZDg0ZmUzMzp7Il9sYW5ndWFnZSI6ImVuIiwiZGphbmdvX2xhbmd1YWdlIjoiZW4ifQ==','2020-05-10 14:48:16.355073'),('ba4z04e9nhkzgijf2qtkdqqyo17uq8x0','YmM0MGY3NzYzMDIwOTJjM2M0ZTYyNDIzOTk2NWU5ODRiN2E3ZWE1YTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA5LTAzVDIxOjAxOjEwLjg3ODk3MSIsImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaGFzaCI6IjJkMzM0ZTg1YWE1ZTIxYmM2OTI1M2M0MDA3MjQ2ODgxYTJmMDNlYjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2022-09-03 22:01:11.118117'),('bicf5mc8ntaxjch1cwlnuypapf73ictb','OWViNjYzMzdjMzlkYTJiOTIyMjdlZjVjNzdiNjgzNjc5NTQ4Mzg3NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYmFja2VuZHMuQWdlbnRCYWNrZW5kIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTAzLTIyVDIwOjU2OjU3LjY5OTk2MCIsIl9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTBmZDFlNzI5ZTk0YmJmMmQ3MTNkM2U1Y2M3MDIyYjNhOGJjMTM0YiJ9','2022-03-22 21:56:57.807155'),('bkr1r0b8z2dhuvtz3oc3dsmvr80tdxgb','NGNjZjA5YWNmOThmYmUwYzRiZDU5M2UwZDkxYjg2YTBmMDAyMTY5NDp7Il9sYW5ndWFnZSI6ImVuIn0=','2022-03-21 22:07:52.378956'),('bl05lcemo5q42jf45r4pter3aeg1gnl3','MWNkNzY5ZmEzMzEwNjA3ZDUxZDQ3NmE5Y2E4NDEwMTgxOTI4YmNkZjp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYmFja2VuZHMuQWdlbnRCYWNrZW5kIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIxLTExLTIyVDExOjQ0OjI0Ljg0MDY0MSIsIl9sYW5ndWFnZSI6ImFyIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzE0MWIxYThmMjY1ODQyMTY4ZDQ4YmE3YThmZjgwNDg3NjQxM2VmYSJ9','2021-12-06 11:44:24.916964'),('bramglbtvbu3y2m1qfl12oyjclbi0vz8','MjExNGRkYTkwODE2MzIzNDljYWY4ZGMzN2E5NGMyMWEyODM2ZDJkNjp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYmFja2VuZHMuQWdlbnRCYWNrZW5kIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA5LTAxVDE0OjI2OjQ3LjQ4OTAzNSIsIl9hdXRoX3VzZXJfaGFzaCI6IjJkMzM0ZTg1YWE1ZTIxYmM2OTI1M2M0MDA3MjQ2ODgxYTJmMDNlYjIiLCJkamFuZ29fbGFuZ3VhZ2UiOiJlbiJ9','2022-09-01 15:27:15.429124'),('btw7ic43k3whfeow42mx2pxd56ut7f2y','NGNjZjA5YWNmOThmYmUwYzRiZDU5M2UwZDkxYjg2YTBmMDAyMTY5NDp7Il9sYW5ndWFnZSI6ImVuIn0=','2022-02-14 14:18:44.663960'),('cozhy3sgjl0yomx2galfoq2e3zmsmt27','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-09-04 20:51:07.428546'),('d20gj4nfpagwx8j2bzdlbcl9ds19rmhw','ZjVmMTY2ZjZiNzQ3MjkyNWI4ODFmYWRmZjc1N2Y0MWQ2Y2JjZDUxNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA5LTA3VDAzOjM0OjE1LjMzMzIzNiIsImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaGFzaCI6IjEwZmQxZTcyOWU5NGJiZjJkNzEzZDNlNWNjNzAyMmIzYThiYzEzNGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2022-09-07 04:34:15.474275'),('d9h1n8f6ugibx1pnw87q8k9jwias7h0f','YTI2Zjg1NzkxNWIzZWZjMTk2OTRhN2U4MDE3NGU5NmExMmE2NGExYzp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA5LTA1VDAwOjQxOjE2LjIyMzY5NSIsImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaGFzaCI6IjJkMzM0ZTg1YWE1ZTIxYmM2OTI1M2M0MDA3MjQ2ODgxYTJmMDNlYjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2022-09-05 01:41:16.244470'),('dcnma6agsizmq0q4z3kwgsfubbj6zm4d','NGIzNmY1Y2UyOTc0MTliMGNjMDliN2VjOWI2NmM5NzNkMDFmMmZmOTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA5LTA3VDExOjMzOjEzLjExNTc0MyIsImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaGFzaCI6IjJkMzM0ZTg1YWE1ZTIxYmM2OTI1M2M0MDA3MjQ2ODgxYTJmMDNlYjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2022-09-07 12:33:36.211528'),('dl8yz8tpyethv1zhqreozj3i832il316','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-04-19 15:07:35.067257'),('dlkrawqsi2oxg6j36a5ymknj1j955tsq','ZjRhZjVkZjY1MmRmNDlkZDhhOWZjYWE1OTA3NTMzYzg4NTUwMDYyOTp7Il9sYW5ndWFnZSI6ImFyIiwiZWFzeWNhcnQiOnsiaXRlbXMiOnt9fSwiZGphbmdvX2xhbmd1YWdlIjoiZW4ifQ==','2022-08-28 17:30:26.426844'),('dv0ma3tysk0b1gppbxh9a8ltjnqjagcm','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-09-03 19:32:28.018063'),('e0ig4vkxrtks4bijxlchynuojdf3y1n6','MTQ0ZTg4ZmE1ZTBhMTZlNmZiYzJjM2EwZjk0MmNhMmI4NzljOGY1NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA4LTMxVDE1OjAzOjQxLjczODkxNiIsImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaGFzaCI6IjEwZmQxZTcyOWU5NGJiZjJkNzEzZDNlNWNjNzAyMmIzYThiYzEzNGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2022-08-31 16:03:41.813994'),('e8jx0od2tii4imyku7pkjp45ulzbbevy','NWJiMmRhZGQyNzU2M2ZiMjczYjAxZDU4NjdlMWEzYWExYTYxYjJlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA5LTA3VDExOjI3OjI4LjQ5Njc5MCIsImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaGFzaCI6IjEwZmQxZTcyOWU5NGJiZjJkNzEzZDNlNWNjNzAyMmIzYThiYzEzNGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2022-09-07 12:27:28.585639'),('eb47lrcgtjcucktoqbycsak0wao7mh1h','MDk2Nzc5ODA5MzY3ZTliYWYwM2M3OTQ3YTJhODQ5MTgzMjEzNTkwZDp7Il9sYW5ndWFnZSI6ImFyIiwiZGphbmdvX2xhbmd1YWdlIjoiZW4ifQ==','2020-05-05 10:34:22.792778'),('ejgg89mv38leks1td2howpcx1fv6sjt8','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-08-25 19:39:47.002445'),('eu468d63jzic5cbadki7o85qexntucjw','MmI1ZTEwZjQxMTI5Mzk0MjY3Y2FiMmQ3NDlkNzg4MTkyMDg0Mzk3ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTAzLTA3VDExOjAwOjA1Ljc3NTkxMSIsImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaGFzaCI6IjEwZmQxZTcyOWU5NGJiZjJkNzEzZDNlNWNjNzAyMmIzYThiYzEzNGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2022-03-21 11:08:08.779204'),('fiirke5rbxvz7uwmlmkwg5479nen13xs','MzQwYTlhMGRkNTUyZDhiNmI3NTVlODAzMTFhMTVlMzkzNDU4ZTEyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmJhY2tlbmRzLkFnZW50QmFja2VuZCIsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAyMi0wMy0yNFQxMzo1NDo1OS40Mzc0MjciLCJlYXN5Y2FydCI6eyJpdGVtcyI6e319LCJfYXV0aF91c2VyX2hhc2giOiIxMGZkMWU3MjllOTRiYmYyZDcxM2QzZTVjYzcwMjJiM2E4YmMxMzRiIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2022-03-24 14:54:59.449608'),('fn213n9rxg77e7rt5p4hi2b9aoh7etog','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-03-23 13:49:13.230588'),('g3209t1xvh91volqn2e2est7n70y4kgu','NzM1MDE1ZTEwMTIxMjVkNTc3NmRjN2QzNTFkOTdjYzMzODEyMmJlNDp7Il9sYW5ndWFnZSI6ImFyIn0=','2020-04-20 10:37:18.296093'),('g38q0nmoj16qgdbmxe3immnr4s8z2q9m','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-02-12 10:25:31.975069'),('gapgt31tp4o7sek6dhsobc1vop363erl','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-04-21 15:19:42.624461'),('gcmdowlddr7e3l2egewvsu0d0iaon7a0','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-02-12 13:28:56.015890'),('geb4r89ljfv22v9aw4tqba1qcn2r6qzk','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-09-03 14:02:56.323772'),('gouzj691rqv72cqk2wz3nek43t6j3964','Y2Y5YWM4ZjgwZTgwYTdmYThiNzVlZThiMWE4YzZkZTliYWMzZDVlYTp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX19','2022-03-24 14:46:30.861881'),('h5xf0m33wbkpj8zdra1raumtst467ypb','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-09-04 18:49:02.362783'),('hhrz6tp94e89c31r179ts86t23q78wvn','ZTg0MjEwODI3YWU2MGYyMmI1YzcwOGNmMTU5ODFlMjIxOTE4MWY5NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmJhY2tlbmRzLkFnZW50QmFja2VuZCIsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAyMi0wOS0wNlQxNjo0ODozMy40NDU5NjkiLCJlYXN5Y2FydCI6eyJpdGVtcyI6e319LCJfYXV0aF91c2VyX2hhc2giOiIxMGZkMWU3MjllOTRiYmYyZDcxM2QzZTVjYzcwMjJiM2E4YmMxMzRiIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2022-09-06 17:48:33.500297'),('ht83hvfftufv1nl1yry2r2fylqn13c7k','Y2Y5YWM4ZjgwZTgwYTdmYThiNzVlZThiMWE4YzZkZTliYWMzZDVlYTp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX19','2022-09-05 19:31:45.879919'),('hu2bkbx457khytdnr316o6bbjzei55to','MmFhMmU4ZDRmNGFiNmE3YjU4MGI3MmJkMGNjOWJmZTMxNjJhNDNkNDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYmFja2VuZHMuQWdlbnRCYWNrZW5kIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA4LTMwVDE1OjQyOjI1Ljc5OTI3MyIsIl9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTBmZDFlNzI5ZTk0YmJmMmQ3MTNkM2U1Y2M3MDIyYjNhOGJjMTM0YiJ9','2022-08-30 16:42:26.112046'),('imfskv7e68irxv01zwpd2qyc6bzdhywl','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-06-08 14:02:26.018297'),('imkg2gmdlj849ckbj60lib99433atc3s','MDY5ZTFjZTc4MjA5ZDE2OThlM2UwNmI4N2Q4YjhlNmEwZDk4ZDI3NTp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYmFja2VuZHMuQWdlbnRCYWNrZW5kIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA4LTI4VDAyOjE2OjAwLjA5NTkyOCIsIl9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTBmZDFlNzI5ZTk0YmJmMmQ3MTNkM2U1Y2M3MDIyYjNhOGJjMTM0YiJ9','2022-08-28 03:16:00.205479'),('ini9vmmycie79tiztumd31uquu2zpaoa','YWI0NGU1ZWFlZjM2YzY0Y2RkNzcyZTcyNWNmODRhM2I5YmQzMWYxMDp7Il9sYW5ndWFnZSI6ImVuIiwiZWFzeWNhcnQiOnsiaXRlbXMiOnt9fSwiZGphbmdvX2xhbmd1YWdlIjoiZW4ifQ==','2022-02-14 10:17:35.121820'),('itxfv4enlnwsxsy7xbo7q5ci0z0ow8xj','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-09-06 17:44:12.243245'),('jm7c5g6i8dtb06s8890j0s7ge3rpkgsp','NGVjMjJkNGI4NmE3MDM3ODQ0YjM3Yzc5ZmM3NDQ5ZGUxOTVjZTM3ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTAzLTI3VDIyOjUzOjAyLjczMDA0MSIsImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaGFzaCI6IjEwZmQxZTcyOWU5NGJiZjJkNzEzZDNlNWNjNzAyMmIzYThiYzEzNGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2022-03-27 23:53:30.303642'),('k15dx9763lrhoztrpfi2uqkrhcg6c7s9','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-05-18 15:12:42.799738'),('kod7p2j2dvzlcp5uyogl1nlvaicpqkv8','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-05-18 17:33:51.853796'),('ktrsdc3rfkfqaj7eplui2d4qgr7n332l','MDk2Nzc5ODA5MzY3ZTliYWYwM2M3OTQ3YTJhODQ5MTgzMjEzNTkwZDp7Il9sYW5ndWFnZSI6ImFyIiwiZGphbmdvX2xhbmd1YWdlIjoiZW4ifQ==','2020-04-20 17:21:09.711205'),('kvus2ghs4335xomkkync1o22f2zshobl','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-04-20 10:37:18.744805'),('kxn2e6spb7bjw4geg1gm1ek74hk5g6wz','NDI2N2ExNDc4ODRlNDJhZDIyNDhiMTFlNGUwM2JhY2FkOGMzZDI5Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmJhY2tlbmRzLkFnZW50QmFja2VuZCIsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAyMi0wOS0wNlQxNTozMDoxOS42NzIyMDEiLCJlYXN5Y2FydCI6eyJpdGVtcyI6e319LCJfYXV0aF91c2VyX2hhc2giOiIxMGZkMWU3MjllOTRiYmYyZDcxM2QzZTVjYzcwMjJiM2E4YmMxMzRiIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2022-09-06 16:30:20.182415'),('l8mq4de810sowkbx2cbla1qkeltm78im','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-04-26 11:33:29.702134'),('lkevdxo87g0jjup5914gvor0rojur2l5','NGNjZjA5YWNmOThmYmUwYzRiZDU5M2UwZDkxYjg2YTBmMDAyMTY5NDp7Il9sYW5ndWFnZSI6ImVuIn0=','2022-03-21 22:07:52.374046'),('lxgxqismg4i51gxeew0xww2ywwo7fu43','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-01-02 10:59:01.671213'),('lxldbvdm23nhmfjae1zxpy26bnr510jh','NGNjZjA5YWNmOThmYmUwYzRiZDU5M2UwZDkxYjg2YTBmMDAyMTY5NDp7Il9sYW5ndWFnZSI6ImVuIn0=','2022-03-17 11:56:49.564404'),('mqft1c7sxujikzp1ll4fps73i2ah09bf','MWUxNzBhZWMyNmFjMjgxYWJlOGQ4M2QwN2Q0NDJkNzI2NjBlMzc4YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmJhY2tlbmRzLkFnZW50QmFja2VuZCIsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAyMi0wOC0zMFQxNzoxMTozMC42ODY5MzUiLCJlYXN5Y2FydCI6eyJpdGVtcyI6e319LCJfYXV0aF91c2VyX2hhc2giOiIyZDMzNGU4NWFhNWUyMWJjNjkyNTNjNDAwNzI0Njg4MWEyZjAzZWIyIiwiX2F1dGhfdXNlcl9pZCI6IjUifQ==','2022-08-30 18:11:31.178778'),('mtz4hcrko7n0wkwr07tl295bwyvo4kd4','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-03-28 18:08:57.889407'),('n53e9wik2wroexv5pxujapijmhbuxiwz','ZjY4M2M3YmY4ZmQwNTg0YzQ3Njc1MjhkODc0M2RhZTQzZDg0ZmUzMzp7Il9sYW5ndWFnZSI6ImVuIiwiZGphbmdvX2xhbmd1YWdlIjoiZW4ifQ==','2020-04-22 17:06:31.856886'),('n5zf8r3l89bwt2b2qcffrokdodw8feul','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-02-12 10:25:32.247653'),('n8ffi0gssa4fzzapgl99r26d6rdfm75c','Y2Y5YWM4ZjgwZTgwYTdmYThiNzVlZThiMWE4YzZkZTliYWMzZDVlYTp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX19','2022-09-03 20:51:03.560826'),('n8vhn79h6tad199ahxw7ixjq1lhx0lpj','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-05-12 13:29:00.217513'),('n9bo5egrniu532d7u81sbcqgxbx9nzgj','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-04-15 12:23:31.325109'),('ni84kemx2peqj6elys57l3fkg0i2whht','YjQ5MGU0NTg2MTg3Zjg0ZmVlOTkwMGUxZTU4ZTA0MDgxODA2NmIzMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYmFja2VuZHMuQWdlbnRCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2Q4MThlZTdkODMzNTgzNjdlMjE1ZDJlNTBjZjI3Mjk0MmQ2NjZhNiIsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAyMC0wNC0wMlQxNToyMTowMi43NTE0MTAifQ==','2020-04-16 15:21:02.755833'),('o2gtm9627nnscq59p3l6hma9f2e6m3xz','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-03-28 18:08:58.047950'),('o8v181l7y6r00yo1htixqn5tgnhoaik3','OTUwOTA4ZmY3ZTU1ZDU4YTlkOWNjZmQ2OGVmNTZkNTM3ODk3NDYyMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA5LTA0VDEyOjU2OjE4LjIyNDUzMyIsImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaGFzaCI6IjEwZmQxZTcyOWU5NGJiZjJkNzEzZDNlNWNjNzAyMmIzYThiYzEzNGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2022-09-04 13:56:18.291676'),('oyk9j7373p5dcglq0t5aumlbfvtv5yvf','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-02-12 10:25:31.905012'),('ozpfhfsw000ok3ho8juvzgwidlv4dbiq','ZjA3ZjljNDRmMDkwNDgxM2Y1NDhhYzJmMmQ4ZjUzMTYyMjMwNTI3NTp7Il9sYW5ndWFnZSI6ImFyIn0=','2022-03-22 12:32:08.352780'),('p1jq611azwg7dvcy74mebaqoctplw4wq','NzM1ZGVhY2Q5OTExMjViYTI1YmY3MTQwYTgwNTY2ZGYxYzUzNmVmZTp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIiwiY3VzdG9tZXIiOiJXYWVsIE1vaGFtZWQiLCJib29raW5nIjoyOX0=','2020-04-21 10:30:29.598431'),('pf4ld4ziuwi2k19miya4tga4llul2l5l','YWI0NGU1ZWFlZjM2YzY0Y2RkNzcyZTcyNWNmODRhM2I5YmQzMWYxMDp7Il9sYW5ndWFnZSI6ImVuIiwiZWFzeWNhcnQiOnsiaXRlbXMiOnt9fSwiZGphbmdvX2xhbmd1YWdlIjoiZW4ifQ==','2022-02-14 18:35:23.809469'),('pq7pwwww7d9lh7poovf4kgdjae42m23l','ZjA3ZjljNDRmMDkwNDgxM2Y1NDhhYzJmMmQ4ZjUzMTYyMjMwNTI3NTp7Il9sYW5ndWFnZSI6ImFyIn0=','2022-03-16 15:00:57.748013'),('pz1ht9hmbvlsx3n1toxe6a9peyyqbgju','ZWRhM2YxMzhlZTEwODY2ZTRmMmNkMjgyMTVjZmQyZjMyNzJmNDRjZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYmFja2VuZHMuQWdlbnRCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2Q4MThlZTdkODMzNTgzNjdlMjE1ZDJlNTBjZjI3Mjk0MmQ2NjZhNiIsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAyMC0wNS0wNFQxNzoxODo0NS4zOTI4ODIifQ==','2020-05-18 17:18:45.403584'),('q2a12pvkmn6q2706r33aokaxa6beuasi','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-03-28 21:57:49.060818'),('q4dcbf96rpegqei46d8bbjsb4wqxlvpk','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-06-08 14:02:25.784545'),('q5o0tfqw4x6azo6vlj1mxgmy71vm788t','N2UzODA2MmQ5M2ZhODcyNzZjMzkyMjg5OWMyZGRiZTgwNDU0NDRkOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmJhY2tlbmRzLkFnZW50QmFja2VuZCIsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAyMi0wMy0zMFQxNDoyOTo0MC45NTM2NTciLCJlYXN5Y2FydCI6eyJpdGVtcyI6e319LCJfYXV0aF91c2VyX2hhc2giOiIxMGZkMWU3MjllOTRiYmYyZDcxM2QzZTVjYzcwMjJiM2E4YmMxMzRiIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2022-03-30 15:30:06.245695'),('qk2axgg422xrg7xnhorcw8i2jyj7a3pa','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-06-08 14:02:26.226601'),('qqg4d2rqucy4veb1wxp0avpzx3uyuvtc','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-02-12 10:25:32.161215'),('r8831zqwwyg0akriyu9ne12acvmj4rkn','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-04-19 22:09:09.992582'),('rd0qxyljphf8oq2dmzz7mmnuu84hl2ld','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-03-27 18:28:16.892347'),('ro349joviurezum78eglms9h4pgroi0k','NGNjZjA5YWNmOThmYmUwYzRiZDU5M2UwZDkxYjg2YTBmMDAyMTY5NDp7Il9sYW5ndWFnZSI6ImVuIn0=','2022-03-17 11:56:49.567796'),('rvm57d4qfvw9mznyza78gg2kastj9fe4','MGU5ZTEzYzMxYmJiOTU1MWYzZWJjZmJlOTlmZGQzYTQyMjQ5ZGVjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA5LTA2VDIzOjE4OjIwLjA1MzUyOCIsImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaGFzaCI6IjEwZmQxZTcyOWU5NGJiZjJkNzEzZDNlNWNjNzAyMmIzYThiYzEzNGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2022-09-07 00:18:47.753609'),('rvulvkeuz6ipiqlpzjxxterw3x7sp8m4','ZGM3MWFmMmRjZDkxOTc2NGJjYTQzNDMxYzY3NTE4NjBlNWQ3NTU1ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTAzLTI4VDE4OjM2OjA3LjczMDkyNyIsImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaGFzaCI6IjEwZmQxZTcyOWU5NGJiZjJkNzEzZDNlNWNjNzAyMmIzYThiYzEzNGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2022-03-28 19:36:07.778392'),('rvxd2dmpui19ika5ybw68hfxgkefwbtu','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-08-30 19:15:51.939216'),('s61vsv9ga0a649xtxjrvsez90cf07l6o','NDQ0Y2RmYTVjZDczMmU1N2M2NmE0NWFjZWZjNmQ2YTI2N2RiODFlNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYmFja2VuZHMuQWdlbnRCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2Q4MThlZTdkODMzNTgzNjdlMjE1ZDJlNTBjZjI3Mjk0MmQ2NjZhNiIsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAyMC0wNC0yMlQxMjozNDo1MS40NzU2MzAifQ==','2020-05-06 12:34:51.486397'),('sig395euin6oj4exxa3njadt0gag9rcz','NGNjZjA5YWNmOThmYmUwYzRiZDU5M2UwZDkxYjg2YTBmMDAyMTY5NDp7Il9sYW5ndWFnZSI6ImVuIn0=','2021-12-30 14:56:33.275455'),('sr35s231omdkzpvi9k1hkm7syghfa9h1','Y2Y5YWM4ZjgwZTgwYTdmYThiNzVlZThiMWE4YzZkZTliYWMzZDVlYTp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX19','2022-09-05 19:32:48.872950'),('szdim1pnf97pv6p8ik1k2pp22zbr9js1','ZTUxMGIxZTcwMDg5MWJiNGY5YzZjMzY5NTc5ZDE3MTVhYmE0NDEyNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmJhY2tlbmRzLkFnZW50QmFja2VuZCIsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAyMi0wOC0zMVQxMjowMDo1Ny43NzE0NDMiLCJlYXN5Y2FydCI6eyJpdGVtcyI6e319LCJfYXV0aF91c2VyX2hhc2giOiIyZDMzNGU4NWFhNWUyMWJjNjkyNTNjNDAwNzI0Njg4MWEyZjAzZWIyIiwiX2F1dGhfdXNlcl9pZCI6IjUifQ==','2022-08-31 13:01:18.399669'),('szsmpcfzfle8j0r6wfn788ue5mpqexiu','MzNiMTY1MzM0ZjQ0ODBjN2ZiNzQxMjY0MjFhNzE1NTZiMmM5MjIyZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmJhY2tlbmRzLkFnZW50QmFja2VuZCIsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAyMi0wOC0zMVQxMDozOTozMi43NjI0NjciLCJlYXN5Y2FydCI6eyJpdGVtcyI6e319LCJfYXV0aF91c2VyX2hhc2giOiIyZDMzNGU4NWFhNWUyMWJjNjkyNTNjNDAwNzI0Njg4MWEyZjAzZWIyIiwiX2F1dGhfdXNlcl9pZCI6IjUifQ==','2022-08-31 11:39:32.969038'),('t3bs1l4iskemujg8z3primhm0nq3qe3n','YWI0NGU1ZWFlZjM2YzY0Y2RkNzcyZTcyNWNmODRhM2I5YmQzMWYxMDp7Il9sYW5ndWFnZSI6ImVuIiwiZWFzeWNhcnQiOnsiaXRlbXMiOnt9fSwiZGphbmdvX2xhbmd1YWdlIjoiZW4ifQ==','2022-01-17 12:15:39.911797'),('ti72u7yj7em29g3et3ab1w54vveedvlk','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-04-20 15:11:28.744081'),('tjk1yj08nupywaso6th55b2wan5tdpvc','ODhmZTQ3NDc4YjU3MzRhNTdjZGRmYmI2ZDQ0MTFiYThlM2M1ZTNiZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYmFja2VuZHMuQWdlbnRCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2Q4MThlZTdkODMzNTgzNjdlMjE1ZDJlNTBjZjI3Mjk0MmQ2NjZhNiIsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAyMC0wNC0wNVQxMTo0MjoyMC41MjMxNTgifQ==','2020-04-19 11:42:20.797996'),('tlql0dbewpx8uit1dn16c6hkno13p8gj','OGI5NTIxZDhlOWY1OWMwZjBkOGIxNWY0MzVmNmQ0Nzg2NjdiOWMzODp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2020-04-16 14:04:13.275619'),('tptyqpr94vaihmed36v9xylk4bghym8z','MDBjNzljMzJkM2QxODUzMmE5Y2EyMmIzNTRlODFlZjljMzQ1M2ZmZTp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYmFja2VuZHMuQWdlbnRCYWNrZW5kIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTAzLTI5VDE1OjQ3OjI0LjkxNzU1MiIsIl9sYW5ndWFnZSI6ImFyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTBmZDFlNzI5ZTk0YmJmMmQ3MTNkM2U1Y2M3MDIyYjNhOGJjMTM0YiJ9','2022-03-29 16:47:25.053824'),('ttkr4f9c3nn32mjzb1sbenwt8c35rab6','OGFjOGJhM2E2MTQ1YjE0YTRiZTJkMDE0MDllZDExYTYyNWQwMTNiNjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA4LTMwVDE1OjE2OjM3LjUxNTUyOCIsImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaGFzaCI6IjJkMzM0ZTg1YWE1ZTIxYmM2OTI1M2M0MDA3MjQ2ODgxYTJmMDNlYjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2022-08-30 16:16:57.925869'),('u6jwofipnwymwq4el4ou05zhjyqjxnr6','YzFiNTA4NTBlMGY5N2MyMzhjOWU1MDFhZmQ3MmY1YWI5ZWU3YmQ3ZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmJhY2tlbmRzLkFnZW50QmFja2VuZCIsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAyMi0wMy0yN1QxNTo0NzoxNy41ODYwMzgiLCJlYXN5Y2FydCI6eyJpdGVtcyI6e319LCJfYXV0aF91c2VyX2hhc2giOiJmNzEzNzZiYjdmNTljOGEwNjNhYmVmOWEzNzU1MWU5MTdiYmRhMGYwIiwiX2F1dGhfdXNlcl9pZCI6IjUifQ==','2022-03-27 16:47:44.450595'),('ulvhivhy5dvfiovwnakyubeq0n9bgx7i','NzM1MDE1ZTEwMTIxMjVkNTc3NmRjN2QzNTFkOTdjYzMzODEyMmJlNDp7Il9sYW5ndWFnZSI6ImFyIn0=','2020-05-05 10:34:21.960315'),('unovbtuirrl7tjr1wpzrrvp7sea6acdd','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-03-28 18:09:02.910833'),('urvsc57x4swi5h5u72y02qgsypbqqgxf','ZGZlM2FmMTM5NzcxMjVhYzMzYzBiMzY1OTgwZDFkNDZhYjU0YmUzNjp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYmFja2VuZHMuQWdlbnRCYWNrZW5kIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTAzLTAzVDE0OjQ5OjAxLjAwMDgwOCIsIl9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTBmZDFlNzI5ZTk0YmJmMmQ3MTNkM2U1Y2M3MDIyYjNhOGJjMTM0YiJ9','2022-03-17 14:49:01.054777'),('uvsaigqzuatmxcpmwf7t3g964gymwrb4','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-08-29 19:01:50.995357'),('v9yyxi5inoi23nurzp297caq202jigvr','NGNjZjA5YWNmOThmYmUwYzRiZDU5M2UwZDkxYjg2YTBmMDAyMTY5NDp7Il9sYW5ndWFnZSI6ImVuIn0=','2022-03-24 09:50:41.512917'),('vd09okwn6jjroupbnjyagmcf9ohapkze','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-02-13 15:43:52.955430'),('vf7g0xdao63fmsnjlb7tvfq7dpzyah9h','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-01-02 10:59:01.690812'),('vxp5uct6p6g38omhpgd9swhnowefykvk','MmJiMmU2OGZjMTk0ODJmOWM3OTcxYjY1NTBlN2IxOTg5MDk5OTNjOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmJhY2tlbmRzLkFnZW50QmFja2VuZCIsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAyMi0wMS0yOVQxMTowNjoxNS4wNzYyNjgiLCJlYXN5Y2FydCI6eyJpdGVtcyI6e319LCJfYXV0aF91c2VyX2hhc2giOiIyMWYyN2YwOGI3OTljNmQxYjAyZWVhZDUzY2ZhMDFlMTZhYmEzOWYxIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2022-02-12 11:06:15.158035'),('waf4355vxfx2k1n0xo8jfvtu6pe53qcl','MmU0MjIzN2JiMGMzZGRkZDJiZDVmZjczNGEzNGZiZDRlNTFiZmUzZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmJhY2tlbmRzLkFnZW50QmFja2VuZCIsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAyMi0wOC0zMVQxNjowMzo1NS41ODM5OTQiLCJlYXN5Y2FydCI6eyJpdGVtcyI6e319LCJfYXV0aF91c2VyX2hhc2giOiIyZDMzNGU4NWFhNWUyMWJjNjkyNTNjNDAwNzI0Njg4MWEyZjAzZWIyIiwiX2F1dGhfdXNlcl9pZCI6IjUifQ==','2022-08-31 17:03:56.571430'),('wcckjlzeca1zlt66hk394e8krln9fqd5','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-09-06 17:44:12.252319'),('wep5u769io8q3mpz6ut9l6hu5jk20fa9','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-08-25 22:11:47.046970'),('x0nrevo0cpu8tv64bjoayecabv5qu7ov','NGNjZjA5YWNmOThmYmUwYzRiZDU5M2UwZDkxYjg2YTBmMDAyMTY5NDp7Il9sYW5ndWFnZSI6ImVuIn0=','2021-12-05 00:22:31.698063'),('x91bxizt0jojqc5qa14o6l68u88ccpp7','YWU5NGY2OGRmOWJmNzZlODZjZjg1YzBhY2U3NTY0NDRiOTIyOWRhZDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYmFja2VuZHMuQWdlbnRCYWNrZW5kIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA4LTI5VDE1OjE0OjUzLjg1MTQ2MCIsIl9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTBmZDFlNzI5ZTk0YmJmMmQ3MTNkM2U1Y2M3MDIyYjNhOGJjMTM0YiJ9','2022-08-29 16:14:53.982581'),('xi4xz15thccajrnh375gxozkdihz919g','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-09-04 18:49:02.337762'),('xq1agv85ddes94or1qwjfhvcwlqqe509','YWI4N2RhZDEzZGZiNjI1ZmQxZmI4YzU2ZTc5NmI3ZWMzMTVlNjdiNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA5LTA0VDAwOjU3OjQ4LjYwMDk0OCIsImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaGFzaCI6IjEwZmQxZTcyOWU5NGJiZjJkNzEzZDNlNWNjNzAyMmIzYThiYzEzNGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2022-09-04 01:57:48.617821'),('y1el10kn32lnylk0vjwncfe93tl8ca10','OWJiNWM3ZDRmMmUwNjc4MDdmNDYxNDFkZjc2NWI4YjI3ZDUwOWUwMzp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYmFja2VuZHMuQWdlbnRCYWNrZW5kIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA5LTAzVDE2OjU1OjE5Ljc4MDUzNCIsIl9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTBmZDFlNzI5ZTk0YmJmMmQ3MTNkM2U1Y2M3MDIyYjNhOGJjMTM0YiIsImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-09-03 17:55:20.332117'),('y3n60z6bc1xrf2xzljqeh4o1ry1280mx','NzNkNGI5NGY5ZGVkMjU0NDVhZDczNzk4NzdlMzAyZjA0M2MxMTc2NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYmFja2VuZHMuQWdlbnRCYWNrZW5kIiwiX2xhbmd1YWdlIjoiYXIiLCJfYXV0aF91c2VyX2hhc2giOiI3MTQxYjFhOGYyNjU4NDIxNjhkNDhiYTdhOGZmODA0ODc2NDEzZWZhIiwiZGphbmdvX2xhbmd1YWdlIjoiYXIifQ==','2021-12-06 10:36:47.195517'),('y9c6oid2oxy72y8zivx6w793f8127439','MTI2N2U3MDA0YzRjZGNjOTk5ODI1OGE0YjA4NjZjZDRlYzExNmZjOTp7ImRqYW5nb19sYW5ndWFnZSI6ImFyIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZDgxOGVlN2Q4MzM1ODM2N2UyMTVkMmU1MGNmMjcyOTQyZDY2NmE2IiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIwLTA0LTA3VDExOjUwOjU0LjQxNTQwOSJ9','2020-04-21 11:50:54.423448'),('yc2ulza7au4oebpumgf8sqsvc1diyl1a','MjYwNTdjODM2OWJiMDc5NWJmMTc0ZTUzNjAwMmU2M2EzNjEwZTk2MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA5LTAxVDE1OjQ1OjMwLjk5OTI0MSIsImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaGFzaCI6IjEwZmQxZTcyOWU5NGJiZjJkNzEzZDNlNWNjNzAyMmIzYThiYzEzNGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2022-09-01 16:45:31.071685'),('ygrywhvputjb0m83ejtdrcass4qdlcdu','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-03-23 12:03:04.585292'),('ywtz6sm7pc0km8z4yb5uzxl2sek8yaa9','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-09-01 15:44:19.497419'),('z1ld29s42xk4q0vxks5sp448obe1c6nw','ZTA1MmZjNzcyZTQ4ZjRkN2RkMWE2YjdlMWRhMGZmMDdlM2Q2MDI5YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIyLTA5LTA1VDE4OjM0OjEyLjM0Nzc1OCIsImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaGFzaCI6IjEwZmQxZTcyOWU5NGJiZjJkNzEzZDNlNWNjNzAyMmIzYThiYzEzNGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2022-09-05 19:34:12.381545'),('z7ukt6xa4bzahvvlf97vjg2ilp5aoa4z','NmU5ZDJlMmJjMGJkODQ2YmM1MDRiNTliNWZiYTBjODJlZmYyODUxODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmJhY2tlbmRzLkFnZW50QmFja2VuZCIsIl9zZXNzaW9uX3NlY3VyaXR5IjoiMjAyMi0wOS0wNFQwOToyNzozMy4yNDcyODgiLCJlYXN5Y2FydCI6eyJpdGVtcyI6e319LCJfYXV0aF91c2VyX2hhc2giOiIxMGZkMWU3MjllOTRiYmYyZDcxM2QzZTVjYzcwMjJiM2E4YmMxMzRiIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2022-09-04 10:27:57.741064'),('z9dff6a9c8o5dopmm3wrkj83pms7v5gk','NDFiZTRlZWYzODdjYzk5NzMwY2Y2OGQzM2MzY2Q0NzkwZTM5ZjVhZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX3Nlc3Npb25fc2VjdXJpdHkiOiIyMDIxLTEyLTA0VDE0OjM0OjA2LjEzNjYxNCIsImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sIl9hdXRoX3VzZXJfaGFzaCI6IjcxNDFiMWE4ZjI2NTg0MjE2OGQ0OGJhN2E4ZmY4MDQ4NzY0MTNlZmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhY2NvdW50cy5iYWNrZW5kcy5BZ2VudEJhY2tlbmQifQ==','2021-12-18 14:34:06.174054'),('zn6c9zua51zz72gy8utgd0ckjsn7vonc','NGNjZjA5YWNmOThmYmUwYzRiZDU5M2UwZDkxYjg2YTBmMDAyMTY5NDp7Il9sYW5ndWFnZSI6ImVuIn0=','2022-03-21 22:07:52.384446'),('zv12elyw0rrwl9q028f5hppimb68ra2p','MmQ3ZjljMjIzZjE2MWIzZjRkMGE4N2Q3YWFjYzFlYjJhYzc2ZDU0NDp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX0sImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2022-01-02 12:56:15.290840');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_twilio_caller`
--

DROP TABLE IF EXISTS `django_twilio_caller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_twilio_caller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blacklisted` tinyint(1) NOT NULL,
  `phone_number` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_twilio_caller`
--

LOCK TABLES `django_twilio_caller` WRITE;
/*!40000 ALTER TABLE `django_twilio_caller` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_twilio_caller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_twilio_credential`
--

DROP TABLE IF EXISTS `django_twilio_credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_twilio_credential` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `account_sid` varchar(34) NOT NULL,
  `auth_token` varchar(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `django_twilio_credential_user_id_29c9a22d_fk_profiles_agent_id` FOREIGN KEY (`user_id`) REFERENCES `profiles_agent` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_twilio_credential`
--

LOCK TABLES `django_twilio_credential` WRITE;
/*!40000 ALTER TABLE `django_twilio_credential` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_twilio_credential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_crontabschedule`
--

DROP TABLE IF EXISTS `djcelery_crontabschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_crontabschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minute` varchar(64) NOT NULL,
  `hour` varchar(64) NOT NULL,
  `day_of_week` varchar(64) NOT NULL,
  `day_of_month` varchar(64) NOT NULL,
  `month_of_year` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_crontabschedule`
--

LOCK TABLES `djcelery_crontabschedule` WRITE;
/*!40000 ALTER TABLE `djcelery_crontabschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_crontabschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_intervalschedule`
--

DROP TABLE IF EXISTS `djcelery_intervalschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_intervalschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `every` int(11) NOT NULL,
  `period` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_intervalschedule`
--

LOCK TABLES `djcelery_intervalschedule` WRITE;
/*!40000 ALTER TABLE `djcelery_intervalschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_intervalschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_periodictask`
--

DROP TABLE IF EXISTS `djcelery_periodictask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_periodictask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `args` longtext NOT NULL,
  `kwargs` longtext NOT NULL,
  `queue` varchar(200) DEFAULT NULL,
  `exchange` varchar(200) DEFAULT NULL,
  `routing_key` varchar(200) DEFAULT NULL,
  `expires` datetime(6) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) DEFAULT NULL,
  `total_run_count` int(10) unsigned NOT NULL,
  `date_changed` datetime(6) NOT NULL,
  `description` longtext NOT NULL,
  `crontab_id` int(11) DEFAULT NULL,
  `interval_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `djcelery_periodictas_crontab_id_75609bab_fk_djcelery_` (`crontab_id`),
  KEY `djcelery_periodictas_interval_id_b426ab02_fk_djcelery_` (`interval_id`),
  CONSTRAINT `djcelery_periodictas_crontab_id_75609bab_fk_djcelery_` FOREIGN KEY (`crontab_id`) REFERENCES `djcelery_crontabschedule` (`id`),
  CONSTRAINT `djcelery_periodictas_interval_id_b426ab02_fk_djcelery_` FOREIGN KEY (`interval_id`) REFERENCES `djcelery_intervalschedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_periodictask`
--

LOCK TABLES `djcelery_periodictask` WRITE;
/*!40000 ALTER TABLE `djcelery_periodictask` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_periodictask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_periodictasks`
--

DROP TABLE IF EXISTS `djcelery_periodictasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_periodictasks` (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_periodictasks`
--

LOCK TABLES `djcelery_periodictasks` WRITE;
/*!40000 ALTER TABLE `djcelery_periodictasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_periodictasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_taskstate`
--

DROP TABLE IF EXISTS `djcelery_taskstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_taskstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(64) NOT NULL,
  `task_id` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `tstamp` datetime(6) NOT NULL,
  `args` longtext,
  `kwargs` longtext,
  `eta` datetime(6) DEFAULT NULL,
  `expires` datetime(6) DEFAULT NULL,
  `result` longtext,
  `traceback` longtext,
  `runtime` double DEFAULT NULL,
  `retries` int(11) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `worker_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `djcelery_taskstate_state_53543be4` (`state`),
  KEY `djcelery_taskstate_name_8af9eded` (`name`),
  KEY `djcelery_taskstate_tstamp_4c3f93a1` (`tstamp`),
  KEY `djcelery_taskstate_hidden_c3905e57` (`hidden`),
  KEY `djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_workerstate_id` (`worker_id`),
  CONSTRAINT `djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_workerstate_id` FOREIGN KEY (`worker_id`) REFERENCES `djcelery_workerstate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_taskstate`
--

LOCK TABLES `djcelery_taskstate` WRITE;
/*!40000 ALTER TABLE `djcelery_taskstate` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_taskstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_workerstate`
--

DROP TABLE IF EXISTS `djcelery_workerstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_workerstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) NOT NULL,
  `last_heartbeat` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostname` (`hostname`),
  KEY `djcelery_workerstate_last_heartbeat_4539b544` (`last_heartbeat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_workerstate`
--

LOCK TABLES `djcelery_workerstate` WRITE;
/*!40000 ALTER TABLE `djcelery_workerstate` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_workerstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djkombu_message`
--

DROP TABLE IF EXISTS `djkombu_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djkombu_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visible` tinyint(1) NOT NULL,
  `sent_at` datetime(6) DEFAULT NULL,
  `payload` longtext NOT NULL,
  `queue_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djkombu_message_visible_3ca5f33e` (`visible`),
  KEY `djkombu_message_sent_at_680ecd55` (`sent_at`),
  KEY `djkombu_message_queue_id_38d205a7_fk_djkombu_queue_id` (`queue_id`),
  CONSTRAINT `djkombu_message_queue_id_38d205a7_fk_djkombu_queue_id` FOREIGN KEY (`queue_id`) REFERENCES `djkombu_queue` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djkombu_message`
--

LOCK TABLES `djkombu_message` WRITE;
/*!40000 ALTER TABLE `djkombu_message` DISABLE KEYS */;
INSERT INTO `djkombu_message` VALUES (1,1,'2021-12-16 08:46:52.239146','{\"body\": \"gAJ9cQEoVQdleHBpcmVzcQJOVQN1dGNxA4hVBGFyZ3NxBFUHdG9waWNfNHEFfXEGKFUGbXNnX2lkcQdVAzExMVUEdHlwZXEIVQ9uZXcgcmVxdWlzaXRpb25xCVUOcmVxdWlzaXRpb25faWRxClUCNDV1hnELVQVjaG9yZHEMTlUJY2FsbGJhY2tzcQ1OVQhlcnJiYWNrc3EOTlUHdGFza3NldHEPTlUCaWRxEFUkMTEwM2I2MjEtYWQ2MS00NjEzLWI1MGQtODk4ZTcxM2JkNzA2cRFVB3JldHJpZXNxEksAVQR0YXNrcRNVGmJvb2tpbmcudGFza3MuTXF0dFNlbmRUYXNrcRRVCXRpbWVsaW1pdHEVTk6GVQNldGFxFk5VBmt3YXJnc3EXfXEYdS4=\", \"headers\": {}, \"content-type\": \"application/x-python-serialize\", \"properties\": {\"body_encoding\": \"base64\", \"correlation_id\": \"1103b621-ad61-4613-b50d-898e713bd706\", \"reply_to\": \"0653927d-940a-3bfa-a953-ef3a39eb505f\", \"delivery_info\": {\"priority\": 0, \"routing_key\": \"celery\", \"exchange\": \"celery\"}, \"delivery_mode\": 2, \"delivery_tag\": \"58c30ade-27b7-4678-b5ba-5d4f7183c596\"}, \"content-encoding\": \"binary\"}',1),(2,1,'2021-12-30 07:05:09.363662','{\"body\": \"gAJ9cQEoVQdleHBpcmVzcQJOVQN1dGNxA4hVBGFyZ3NxBFUHdG9waWNfMnEFfXEGKFUEbGF0MXEHWAoAAAAzMC4xMjUzNzQ3VQhvcmRlcl9pZHEIVQI0M1UIYWRkcmVzczFxCVhEAAAARXZlbnQgSG91c2UgQ29tcGFueSwgR2FhZmFyIFdhbHksIFNoYWdyZXQgTWFyaWVtLCBFbCBNYXRhcmV5YSwgRWd5cHRxClUIYWRkcmVzczJxC05VBm1zZ19pZHEMVQMxMTJVBHRpbWVxDVUQMzAvMDQvMjAyMC0xNTozNVUHbWVzc2FnZXEOVQBVBHR5cGVxD1UMY2FuY2VsIG9yZGVycRBVBWxvbmcxcRFYCwAAACAzMS4zMTM1MjI5dYZxElUFY2hvcmRxE05VCWNhbGxiYWNrc3EUTlUIZXJyYmFja3NxFU5VB3Rhc2tzZXRxFk5VAmlkcRdVJDRmOWNjMjNkLTJhOTEtNGU5NS05OTlmLTE0MGI2MDMxZmVjM3EYVQdyZXRyaWVzcRlLAFUEdGFza3EaVRpib29raW5nLnRhc2tzLk1xdHRTZW5kVGFza3EbVQl0aW1lbGltaXRxHE5OhlUDZXRhcR1OVQZrd2FyZ3NxHn1xH3Uu\", \"headers\": {}, \"content-type\": \"application/x-python-serialize\", \"properties\": {\"body_encoding\": \"base64\", \"correlation_id\": \"4f9cc23d-2a91-4e95-999f-140b6031fec3\", \"reply_to\": \"96a62070-7d8f-3ef1-b077-297b2bb84a68\", \"delivery_info\": {\"priority\": 0, \"routing_key\": \"celery\", \"exchange\": \"celery\"}, \"delivery_mode\": 2, \"delivery_tag\": \"c7ce0878-1bd7-4585-9ad0-08a617b01596\"}, \"content-encoding\": \"binary\"}',1),(3,1,'2022-01-02 11:51:47.762072','{\"body\": \"gAJ9cQEoVQdleHBpcmVzcQJOVQN1dGNxA4hVBGFyZ3NxBFUHdG9waWNfNHEFfXEGKFUGbXNnX2lkcQdVAzExM1UEdHlwZXEIVQ9uZXcgcmVxdWlzaXRpb25xCVUOcmVxdWlzaXRpb25faWRxClUCNzd1hnELVQVjaG9yZHEMTlUJY2FsbGJhY2tzcQ1OVQhlcnJiYWNrc3EOTlUHdGFza3NldHEPTlUCaWRxEFUkNzcyYTMzZGMtYzk2NS00ZjZmLTgwN2UtYjhiMjMzNGZjZTgwcRFVB3JldHJpZXNxEksAVQR0YXNrcRNVGmJvb2tpbmcudGFza3MuTXF0dFNlbmRUYXNrcRRVCXRpbWVsaW1pdHEVTk6GVQNldGFxFk5VBmt3YXJnc3EXfXEYdS4=\", \"headers\": {}, \"content-type\": \"application/x-python-serialize\", \"properties\": {\"body_encoding\": \"base64\", \"correlation_id\": \"772a33dc-c965-4f6f-807e-b8b2334fce80\", \"reply_to\": \"418cbaa7-398f-3d98-9444-b22bffbf5189\", \"delivery_info\": {\"priority\": 0, \"routing_key\": \"celery\", \"exchange\": \"celery\"}, \"delivery_mode\": 2, \"delivery_tag\": \"8330ba91-d08e-41da-939b-adf26f2946ca\"}, \"content-encoding\": \"binary\"}',1);
/*!40000 ALTER TABLE `djkombu_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djkombu_queue`
--

DROP TABLE IF EXISTS `djkombu_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djkombu_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djkombu_queue`
--

LOCK TABLES `djkombu_queue` WRITE;
/*!40000 ALTER TABLE `djkombu_queue` DISABLE KEYS */;
INSERT INTO `djkombu_queue` VALUES (1,'celery');
/*!40000 ALTER TABLE `djkombu_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_tracking_settings`
--

DROP TABLE IF EXISTS `driver_tracking_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver_tracking_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_tracking_sett_company_id_610bf07d_fk_profiles_` (`company_id`),
  CONSTRAINT `driver_tracking_sett_company_id_610bf07d_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_tracking_settings`
--

LOCK TABLES `driver_tracking_settings` WRITE;
/*!40000 ALTER TABLE `driver_tracking_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `driver_tracking_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_tracking_topic`
--

DROP TABLE IF EXISTS `driver_tracking_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver_tracking_topic` (
  `slug` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  `expired_date` datetime(6) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `lat` varchar(100) DEFAULT NULL,
  `lng` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  UNIQUE KEY `slug` (`slug`),
  CONSTRAINT `driver_tracking_topic_booking_id_bb1ca0e8_fk_booking_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking_booking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_tracking_topic`
--

LOCK TABLES `driver_tracking_topic` WRITE;
/*!40000 ALTER TABLE `driver_tracking_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `driver_tracking_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_source`
--

DROP TABLE IF EXISTS `easy_thumbnails_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_source_storage_hash_name_481ce32d_uniq` (`storage_hash`,`name`),
  KEY `easy_thumbnails_source_storage_hash_946cbcc9` (`storage_hash`),
  KEY `easy_thumbnails_source_name_5fe0edc6` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_source`
--

LOCK TABLES `easy_thumbnails_source` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnail`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `source_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  KEY `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` (`source_id`),
  KEY `easy_thumbnails_thumbnail_storage_hash_f1435f49` (`storage_hash`),
  KEY `easy_thumbnails_thumbnail_name_b5882c31` (`name`),
  CONSTRAINT `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnail`
--

LOCK TABLES `easy_thumbnails_thumbnail` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnaildimensions`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnaildimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail_id` int(11) NOT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thumbnail_id` (`thumbnail_id`),
  CONSTRAINT `easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnaildimensions`
--

LOCK TABLES `easy_thumbnails_thumbnaildimensions` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hierarchy_hierarchy`
--

DROP TABLE IF EXISTS `hierarchy_hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hierarchy_hierarchy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `head_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hierarchy_hierarchy_agent_id_head_id_f04d5613_uniq` (`agent_id`,`head_id`),
  KEY `hierarchy_hierarchy_company_id_b9580ab0_fk_profiles_company_id` (`company_id`),
  KEY `hierarchy_hierarchy_head_id_3641b779_fk_profiles_agent_id` (`head_id`),
  CONSTRAINT `hierarchy_hierarchy_agent_id_055d9cc3_fk_profiles_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `hierarchy_hierarchy_company_id_b9580ab0_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `hierarchy_hierarchy_head_id_3641b779_fk_profiles_agent_id` FOREIGN KEY (`head_id`) REFERENCES `profiles_agent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hierarchy_hierarchy`
--

LOCK TABLES `hierarchy_hierarchy` WRITE;
/*!40000 ALTER TABLE `hierarchy_hierarchy` DISABLE KEYS */;
INSERT INTO `hierarchy_hierarchy` VALUES (1,2,1,1),(2,3,1,1),(3,4,1,1),(4,5,1,1);
/*!40000 ALTER TABLE `hierarchy_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hierarchy_staff`
--

DROP TABLE IF EXISTS `hierarchy_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hierarchy_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hierarchy_staff_manager_id_df89933d_fk_profiles_agent_id` (`manager_id`),
  CONSTRAINT `hierarchy_staff_manager_id_df89933d_fk_profiles_agent_id` FOREIGN KEY (`manager_id`) REFERENCES `profiles_agent` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hierarchy_staff`
--

LOCK TABLES `hierarchy_staff` WRITE;
/*!40000 ALTER TABLE `hierarchy_staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `hierarchy_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hierarchy_staff_member`
--

DROP TABLE IF EXISTS `hierarchy_staff_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hierarchy_staff_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `hierarchy_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hierarchy_staff_member_staff_id_hierarchy_id_df67cb01_uniq` (`staff_id`,`hierarchy_id`),
  KEY `hierarchy_staff_memb_hierarchy_id_0a0108e1_fk_hierarchy` (`hierarchy_id`),
  CONSTRAINT `hierarchy_staff_memb_hierarchy_id_0a0108e1_fk_hierarchy` FOREIGN KEY (`hierarchy_id`) REFERENCES `hierarchy_hierarchy` (`id`),
  CONSTRAINT `hierarchy_staff_member_staff_id_5965b44d_fk_hierarchy_staff_id` FOREIGN KEY (`staff_id`) REFERENCES `hierarchy_staff` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hierarchy_staff_member`
--

LOCK TABLES `hierarchy_staff_member` WRITE;
/*!40000 ALTER TABLE `hierarchy_staff_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `hierarchy_staff_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integrations_apicalllog`
--

DROP TABLE IF EXISTS `integrations_apicalllog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `integrations_apicalllog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `request_json` longtext NOT NULL,
  `response_json` longtext NOT NULL,
  `response_status_code` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `integrations_apicall_api_id_dd1c1ae8_fk_integrati` (`api_id`),
  KEY `integrations_apicall_content_type_id_c1ff5fd4_fk_django_co` (`content_type_id`),
  CONSTRAINT `integrations_apicall_api_id_dd1c1ae8_fk_integrati` FOREIGN KEY (`api_id`) REFERENCES `integrations_apiconfig` (`id`),
  CONSTRAINT `integrations_apicall_content_type_id_c1ff5fd4_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrations_apicalllog`
--

LOCK TABLES `integrations_apicalllog` WRITE;
/*!40000 ALTER TABLE `integrations_apicalllog` DISABLE KEYS */;
/*!40000 ALTER TABLE `integrations_apicalllog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integrations_apiconfig`
--

DROP TABLE IF EXISTS `integrations_apiconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `integrations_apiconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `last_modified` datetime(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` longtext NOT NULL,
  `payload` longtext NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `request_method` varchar(10) NOT NULL,
  `response_object_field_name` varchar(64) DEFAULT NULL,
  `api_type` varchar(10) NOT NULL,
  `company_id` int(11) NOT NULL,
  `external_system_id` int(11) DEFAULT NULL,
  `followup_api_id` int(11) DEFAULT NULL,
  `start_model_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `integrations_apiconf_company_id_fb518f51_fk_profiles_` (`company_id`),
  KEY `integrations_apiconf_external_system_id_bf86a303_fk_integrati` (`external_system_id`),
  KEY `integrations_apiconf_followup_api_id_406721b1_fk_integrati` (`followup_api_id`),
  KEY `integrations_apiconf_start_model_id_340e5613_fk_django_co` (`start_model_id`),
  CONSTRAINT `integrations_apiconf_company_id_fb518f51_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `integrations_apiconf_external_system_id_bf86a303_fk_integrati` FOREIGN KEY (`external_system_id`) REFERENCES `integrations_externalsystem` (`id`),
  CONSTRAINT `integrations_apiconf_followup_api_id_406721b1_fk_integrati` FOREIGN KEY (`followup_api_id`) REFERENCES `integrations_apiconfig` (`id`),
  CONSTRAINT `integrations_apiconf_start_model_id_340e5613_fk_django_co` FOREIGN KEY (`start_model_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrations_apiconfig`
--

LOCK TABLES `integrations_apiconfig` WRITE;
/*!40000 ALTER TABLE `integrations_apiconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `integrations_apiconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integrations_apiheader`
--

DROP TABLE IF EXISTS `integrations_apiheader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `integrations_apiheader` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header_name` longtext NOT NULL,
  `header_value` longtext NOT NULL,
  `api_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `integrations_apihead_api_id_9b7c2ec7_fk_integrati` (`api_id`),
  CONSTRAINT `integrations_apihead_api_id_9b7c2ec7_fk_integrati` FOREIGN KEY (`api_id`) REFERENCES `integrations_apiconfig` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrations_apiheader`
--

LOCK TABLES `integrations_apiheader` WRITE;
/*!40000 ALTER TABLE `integrations_apiheader` DISABLE KEYS */;
/*!40000 ALTER TABLE `integrations_apiheader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integrations_externalsystem`
--

DROP TABLE IF EXISTS `integrations_externalsystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `integrations_externalsystem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `integrations_externa_company_id_af69f1aa_fk_profiles_` (`company_id`),
  CONSTRAINT `integrations_externa_company_id_af69f1aa_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrations_externalsystem`
--

LOCK TABLES `integrations_externalsystem` WRITE;
/*!40000 ALTER TABLE `integrations_externalsystem` DISABLE KEYS */;
/*!40000 ALTER TABLE `integrations_externalsystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integrations_externalsystemconstantmapping`
--

DROP TABLE IF EXISTS `integrations_externalsystemconstantmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `integrations_externalsystemconstantmapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(64) NOT NULL,
  `constant` varchar(64) NOT NULL,
  `map_name` varchar(64) NOT NULL,
  `system_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `integrations_externa_system_id_8add0794_fk_integrati` (`system_id`),
  CONSTRAINT `integrations_externa_system_id_8add0794_fk_integrati` FOREIGN KEY (`system_id`) REFERENCES `integrations_externalsystem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrations_externalsystemconstantmapping`
--

LOCK TABLES `integrations_externalsystemconstantmapping` WRITE;
/*!40000 ALTER TABLE `integrations_externalsystemconstantmapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `integrations_externalsystemconstantmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integrations_externalsystemobjectmapping`
--

DROP TABLE IF EXISTS `integrations_externalsystemobjectmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `integrations_externalsystemobjectmapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `external_system_object_id` varchar(64) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `system_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `integrations_externa_content_type_id_34b450db_fk_django_co` (`content_type_id`),
  KEY `integrations_externa_system_id_e2c3054b_fk_integrati` (`system_id`),
  CONSTRAINT `integrations_externa_content_type_id_34b450db_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `integrations_externa_system_id_e2c3054b_fk_integrati` FOREIGN KEY (`system_id`) REFERENCES `integrations_externalsystem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrations_externalsystemobjectmapping`
--

LOCK TABLES `integrations_externalsystemobjectmapping` WRITE;
/*!40000 ALTER TABLE `integrations_externalsystemobjectmapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `integrations_externalsystemobjectmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_additionrequest`
--

DROP TABLE IF EXISTS `inventory_additionrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_additionrequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` decimal(10,3) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `add_request_id` int(11) DEFAULT NULL,
  `price` decimal(9,2) NOT NULL,
  `discount` decimal(9,2) NOT NULL,
  `purchasing_price` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_additionrequest_agent_id_7f9460ea_fk_profiles_agent_id` (`agent_id`),
  KEY `inventory_additionre_company_id_e339277c_fk_profiles_` (`company_id`),
  KEY `inventory_additionre_add_request_id_636bd175_fk_inventory` (`add_request_id`),
  KEY `inventory_additionre_product_id_bf8e4916_fk_inventory` (`product_id`),
  CONSTRAINT `inventory_additionre_add_request_id_636bd175_fk_inventory` FOREIGN KEY (`add_request_id`) REFERENCES `inventory_requestproduct` (`id`),
  CONSTRAINT `inventory_additionre_company_id_e339277c_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `inventory_additionre_product_id_bf8e4916_fk_inventory` FOREIGN KEY (`product_id`) REFERENCES `inventory_products` (`id`),
  CONSTRAINT `inventory_additionrequest_agent_id_7f9460ea_fk_profiles_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_additionrequest`
--

LOCK TABLES `inventory_additionrequest` WRITE;
/*!40000 ALTER TABLE `inventory_additionrequest` DISABLE KEYS */;
INSERT INTO `inventory_additionrequest` VALUES (1,1000.000,1,1,1,'2020-04-01 12:46:26.706152',1,5.00,0.00,NULL),(2,200.000,1,1,3,'2020-04-06 11:16:11.309881',2,2.00,0.00,NULL),(3,200.000,1,1,2,'2020-04-06 11:16:11.320109',2,25.00,0.00,NULL),(4,200.000,1,1,3,'2021-12-16 13:39:24.374972',3,2.00,0.00,NULL),(5,50.000,1,1,1,'2022-03-06 15:17:05.469734',4,7.00,0.00,6.00),(6,30.000,1,1,1,'2022-03-06 15:17:47.784184',5,9.00,0.00,8.00),(7,80.000,1,1,1,'2022-03-06 15:17:59.945111',6,4.00,0.00,3.00),(8,50.000,1,1,3,'2022-03-07 12:12:44.523807',7,2.00,0.00,2.00),(9,30.000,1,1,3,'2022-03-07 12:14:02.370052',8,5.00,0.00,4.50),(10,200.000,1,1,1,'2022-03-08 12:46:06.599344',9,60.00,0.00,55.00),(11,120.000,1,1,1,'2022-03-08 13:13:54.771419',10,20.00,0.00,15.00),(12,600.000,1,1,2,'2022-03-09 13:29:11.027575',11,25.00,0.00,NULL),(13,4.000,1,1,1,'2022-03-10 16:48:22.018473',12,20.00,0.00,NULL);
/*!40000 ALTER TABLE `inventory_additionrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_agentdiscount`
--

DROP TABLE IF EXISTS `inventory_agentdiscount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_agentdiscount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `max_discount` decimal(9,2) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `cn_cap` decimal(9,2) DEFAULT NULL,
  `cn_limit` decimal(9,2) DEFAULT NULL,
  `cn_allowed` tinyint(1) NOT NULL,
  `cp_allowed` tinyint(1) NOT NULL,
  `deposit_allowed` tinyint(1) NOT NULL,
  `dr_allowed` tinyint(1) NOT NULL,
  `pd_limit` decimal(9,2),
  `bulk_return_allowed` tinyint(1) NOT NULL,
  `block_sales_other_customers` tinyint(1) NOT NULL,
  `cl_cap` decimal(9,2),
  `products_adjustment_allowed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `agent_id` (`agent_id`),
  CONSTRAINT `inventory_agentdiscount_agent_id_ef2dbbe8_fk_profiles_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_agentdiscount`
--

LOCK TABLES `inventory_agentdiscount` WRITE;
/*!40000 ALTER TABLE `inventory_agentdiscount` DISABLE KEYS */;
INSERT INTO `inventory_agentdiscount` VALUES (1,10.00,2,0.00,0.00,0,0,0,0,0.00,0,0,1000000.00,0),(2,100.00,1,0.00,0.00,1,0,1,0,0.00,0,0,1000000.00,1),(3,10.00,3,0.00,0.00,0,0,0,0,0.00,0,0,1000000.00,0),(4,10.00,4,0.00,0.00,0,0,0,0,0.00,0,0,1000000.00,0),(5,10.00,5,0.00,0.00,0,0,0,0,0.00,0,0,1000000.00,0),(6,10.00,6,11528.00,NULL,0,0,1,0,100.00,0,0,11528.00,0),(7,10.00,7,NULL,NULL,0,0,1,0,100.00,0,0,9999999.99,0),(8,10.00,8,0.00,0.00,0,0,0,0,100.00,0,0,9999999.00,0),(9,10.00,9,0.00,0.00,0,0,0,0,100.00,0,0,9999999.00,0);
/*!40000 ALTER TABLE `inventory_agentdiscount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_bulkreturn`
--

DROP TABLE IF EXISTS `inventory_bulkreturn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_bulkreturn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subid` int(10) unsigned NOT NULL,
  `date` datetime(6) NOT NULL,
  `agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_bulkreturn_agent_id_bb5eab62_fk_profiles_agent_id` (`agent_id`),
  CONSTRAINT `inventory_bulkreturn_agent_id_bb5eab62_fk_profiles_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_bulkreturn`
--

LOCK TABLES `inventory_bulkreturn` WRITE;
/*!40000 ALTER TABLE `inventory_bulkreturn` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_bulkreturn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_cancelledpayment`
--

DROP TABLE IF EXISTS `inventory_cancelledpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_cancelledpayment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_number` varchar(100) NOT NULL,
  `amount` decimal(9,2) NOT NULL,
  `date` datetime(6) NOT NULL,
  `used` tinyint(1) NOT NULL,
  `remaining` decimal(9,2) NOT NULL,
  `subid` int(11) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `returned_goods` tinyint(1) NOT NULL,
  `delete_date` datetime(6) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `deleted_by_id` int(11) NOT NULL,
  `cash_deposit` tinyint(1) NOT NULL,
  `credit_note` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_cancelledp_agent_id_530e8cef_fk_profiles_` (`agent_id`),
  KEY `inventory_cancelledp_customer_id_12e0cd46_fk_profiles_` (`customer_id`),
  KEY `inventory_cancelledp_deleted_by_id_0a4a96c0_fk_profiles_` (`deleted_by_id`),
  CONSTRAINT `inventory_cancelledp_agent_id_530e8cef_fk_profiles_` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `inventory_cancelledp_customer_id_12e0cd46_fk_profiles_` FOREIGN KEY (`customer_id`) REFERENCES `profiles_customer` (`id`),
  CONSTRAINT `inventory_cancelledp_deleted_by_id_0a4a96c0_fk_profiles_` FOREIGN KEY (`deleted_by_id`) REFERENCES `profiles_agent` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_cancelledpayment`
--

LOCK TABLES `inventory_cancelledpayment` WRITE;
/*!40000 ALTER TABLE `inventory_cancelledpayment` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_cancelledpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_cancelledpaymentdetail`
--

DROP TABLE IF EXISTS `inventory_cancelledpaymentdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_cancelledpaymentdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(9,2) NOT NULL,
  `cancelled_payment_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_cancelledp_cancelled_payment_id_46479479_fk_inventory` (`cancelled_payment_id`),
  KEY `inventory_cancelledp_invoice_id_4df4d36c_fk_inventory` (`invoice_id`),
  CONSTRAINT `inventory_cancelledp_cancelled_payment_id_46479479_fk_inventory` FOREIGN KEY (`cancelled_payment_id`) REFERENCES `inventory_cancelledpayment` (`id`),
  CONSTRAINT `inventory_cancelledp_invoice_id_4df4d36c_fk_inventory` FOREIGN KEY (`invoice_id`) REFERENCES `inventory_invoices` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_cancelledpaymentdetail`
--

LOCK TABLES `inventory_cancelledpaymentdetail` WRITE;
/*!40000 ALTER TABLE `inventory_cancelledpaymentdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_cancelledpaymentdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_category`
--

DROP TABLE IF EXISTS `inventory_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `used` tinyint(1) NOT NULL,
  `company_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_category_company_id_d08f32ff_fk_profiles_company_id` (`company_id`),
  KEY `inventory_category_group_id_97ffe963_fk_inventory` (`group_id`),
  CONSTRAINT `inventory_category_company_id_d08f32ff_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `inventory_category_group_id_97ffe963_fk_inventory` FOREIGN KEY (`group_id`) REFERENCES `inventory_categorygroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_category`
--

LOCK TABLES `inventory_category` WRITE;
/*!40000 ALTER TABLE `inventory_category` DISABLE KEYS */;
INSERT INTO `inventory_category` VALUES (1,'Sweets',1,1,NULL),(2,'Detergents',1,1,NULL),(3,'a',0,1,NULL);
/*!40000 ALTER TABLE `inventory_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_categorygroup`
--

DROP TABLE IF EXISTS `inventory_categorygroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_categorygroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL,
  `parent_group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_categorygr_company_id_679b9ac4_fk_profiles_` (`company_id`),
  KEY `inventory_categorygr_parent_group_id_79237bc9_fk_inventory` (`parent_group_id`),
  CONSTRAINT `inventory_categorygr_company_id_679b9ac4_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `inventory_categorygr_parent_group_id_79237bc9_fk_inventory` FOREIGN KEY (`parent_group_id`) REFERENCES `inventory_categorygroup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_categorygroup`
--

LOCK TABLES `inventory_categorygroup` WRITE;
/*!40000 ALTER TABLE `inventory_categorygroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_categorygroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_consumption`
--

DROP TABLE IF EXISTS `inventory_consumption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_consumption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(9,2) NOT NULL,
  `quantity` decimal(10,3) NOT NULL,
  `remaining` decimal(10,3) NOT NULL,
  `on_hold` decimal(10,3) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `company_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_consumption_company_id_4884ec81_fk_profiles_company_id` (`company_id`),
  KEY `inventory_consumptio_product_id_bbd69ad1_fk_inventory` (`product_id`),
  CONSTRAINT `inventory_consumptio_product_id_bbd69ad1_fk_inventory` FOREIGN KEY (`product_id`) REFERENCES `inventory_products` (`id`),
  CONSTRAINT `inventory_consumption_company_id_4884ec81_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_consumption`
--

LOCK TABLES `inventory_consumption` WRITE;
/*!40000 ALTER TABLE `inventory_consumption` DISABLE KEYS */;
INSERT INTO `inventory_consumption` VALUES (1,5.00,1000.000,564.000,0.000,'2020-04-01 12:46:26.727043','2022-08-31 13:51:00.732793',1,1),(2,2.00,450.000,0.000,0.000,'2020-04-06 11:16:11.351774','2022-03-30 15:40:30.136609',1,3),(3,25.00,800.000,568.000,0.000,'2020-04-06 11:16:11.372068','2022-03-21 17:52:35.412958',1,2),(4,7.00,50.000,50.000,0.000,'2022-03-06 15:17:05.500760','2022-03-21 17:52:35.351740',1,1),(5,9.00,30.000,30.000,0.000,'2022-03-06 15:17:47.808313','2022-03-21 17:52:35.343244',1,1),(6,4.00,80.000,80.000,0.000,'2022-03-06 15:17:59.961529','2022-03-21 17:52:35.337806',1,1),(7,5.00,30.000,0.000,0.000,'2022-03-07 12:14:02.382446','2022-04-02 00:14:59.908081',1,3),(8,60.00,200.000,200.000,0.000,'2022-03-08 12:46:06.623406','2022-03-21 17:52:35.331067',1,1),(9,20.00,124.000,124.000,0.000,'2022-03-08 13:13:54.800486','2022-03-21 17:52:35.323771',1,1);
/*!40000 ALTER TABLE `inventory_consumption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_customercredit`
--

DROP TABLE IF EXISTS `inventory_customercredit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_customercredit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credit_limit` int(11) NOT NULL,
  `grace_period` int(11) NOT NULL,
  `balance` decimal(9,2) NOT NULL,
  `max_discount` decimal(9,2) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `deposit` decimal(9,2) NOT NULL,
  `vat_number` varchar(50) DEFAULT NULL,
  `other_buyer_id` varchar(50) DEFAULT NULL,
  `other_buyer_id_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_id` (`customer_id`),
  CONSTRAINT `inventory_customercr_customer_id_3a538224_fk_profiles_` FOREIGN KEY (`customer_id`) REFERENCES `profiles_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_customercredit`
--

LOCK TABLES `inventory_customercredit` WRITE;
/*!40000 ALTER TABLE `inventory_customercredit` DISABLE KEYS */;
INSERT INTO `inventory_customercredit` VALUES (1,0,15,0.00,0.00,1,0.00,NULL,NULL,NULL),(2,5000,15,-35.00,10.00,2,0.00,NULL,NULL,NULL),(3,5000,15,10.00,10.00,3,0.00,NULL,NULL,NULL),(4,13000,40,-1122.00,5.00,4,0.00,NULL,'test','PAS'),(5,5000,15,0.00,10.00,5,102.00,NULL,NULL,NULL),(6,5000,15,0.00,10.00,6,0.00,NULL,NULL,NULL),(7,5000,15,0.00,10.00,7,0.00,NULL,NULL,NULL),(8,5000,15,-18.00,10.00,8,0.00,NULL,NULL,NULL),(9,5000,15,0.00,10.00,9,100.00,NULL,NULL,NULL),(10,5000,15,0.00,10.00,10,0.00,NULL,NULL,NULL),(11,5000,15,-1775.00,10.00,11,0.00,NULL,NULL,NULL),(12,5000,15,-140.00,10.00,12,0.00,NULL,NULL,NULL),(13,5000,15,-784.00,10.00,14,0.00,NULL,NULL,NULL);
/*!40000 ALTER TABLE `inventory_customercredit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_customerpricesegment`
--

DROP TABLE IF EXISTS `inventory_customerpricesegment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_customerpricesegment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `created_at` datetime(6) NOT NULL,
  `company_id` int(11) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_customerpr_company_id_9c285255_fk_profiles_` (`company_id`),
  KEY `inventory_customerpr_creator_id_9b89a18b_fk_profiles_` (`creator_id`),
  CONSTRAINT `inventory_customerpr_company_id_9c285255_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `inventory_customerpr_creator_id_9b89a18b_fk_profiles_` FOREIGN KEY (`creator_id`) REFERENCES `profiles_agent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_customerpricesegment`
--

LOCK TABLES `inventory_customerpricesegment` WRITE;
/*!40000 ALTER TABLE `inventory_customerpricesegment` DISABLE KEYS */;
INSERT INTO `inventory_customerpricesegment` VALUES (1,'Segment 1','','2021-12-30 09:22:26.613698',1,1),(2,'Segment 2','','2021-12-30 09:22:36.588574',1,1),(3,'Segment 3','','2021-12-30 09:22:42.207444',1,1),(4,'Segment 4','','2022-01-02 17:03:01.000000',1,1),(5,'Segment 5','','2022-01-02 17:03:19.000000',1,1);
/*!40000 ALTER TABLE `inventory_customerpricesegment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_customerpricesegmentdetail`
--

DROP TABLE IF EXISTS `inventory_customerpricesegmentdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_customerpricesegmentdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_price` decimal(9,2) NOT NULL,
  `product_discount` decimal(10,5) NOT NULL,
  `product_id` int(11) NOT NULL,
  `segment_id` int(11) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `last_modified` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_customerpr_product_id_f341c049_fk_inventory` (`product_id`),
  KEY `inventory_customerpr_segment_id_671d4d42_fk_inventory` (`segment_id`),
  KEY `inventory_customerpr_creator_id_94685c60_fk_profiles_` (`creator_id`),
  CONSTRAINT `inventory_customerpr_creator_id_94685c60_fk_profiles_` FOREIGN KEY (`creator_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `inventory_customerpr_product_id_f341c049_fk_inventory` FOREIGN KEY (`product_id`) REFERENCES `inventory_products` (`id`),
  CONSTRAINT `inventory_customerpr_segment_id_671d4d42_fk_inventory` FOREIGN KEY (`segment_id`) REFERENCES `inventory_customerpricesegment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_customerpricesegmentdetail`
--

LOCK TABLES `inventory_customerpricesegmentdetail` WRITE;
/*!40000 ALTER TABLE `inventory_customerpricesegmentdetail` DISABLE KEYS */;
INSERT INTO `inventory_customerpricesegmentdetail` VALUES (1,5.00,0.00000,1,3,'2022-01-02 09:59:20.008221',1,'2022-01-02 09:59:20.008244'),(2,3.00,0.00000,1,1,'2022-01-02 09:59:37.241232',1,'2022-01-02 09:59:37.241249');
/*!40000 ALTER TABLE `inventory_customerpricesegmentdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_customerreturn`
--

DROP TABLE IF EXISTS `inventory_customerreturn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_customerreturn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subid` int(10) unsigned NOT NULL,
  `return_number` varchar(100) DEFAULT NULL,
  `date` datetime(6) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `notes` longtext,
  `qr_code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `return_number` (`return_number`),
  KEY `inventory_customerreturn_agent_id_e5c6546b_fk_profiles_agent_id` (`agent_id`),
  KEY `inventory_customerre_customer_id_8a593e5a_fk_profiles_` (`customer_id`),
  CONSTRAINT `inventory_customerre_customer_id_8a593e5a_fk_profiles_` FOREIGN KEY (`customer_id`) REFERENCES `profiles_customer` (`id`),
  CONSTRAINT `inventory_customerreturn_agent_id_e5c6546b_fk_profiles_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_customerreturn`
--

LOCK TABLES `inventory_customerreturn` WRITE;
/*!40000 ALTER TABLE `inventory_customerreturn` DISABLE KEYS */;
INSERT INTO `inventory_customerreturn` VALUES (1,1,'R-200402-1-2-1-1','2020-04-02 14:17:35.543602','2020-04-02 16:17:35.543304','Valid',1,2,NULL,NULL),(2,2,'R-200406-1-4-1-2','2020-04-06 09:29:53.163471','2020-04-06 11:29:53.163158','Valid',1,4,NULL,NULL),(3,3,'R-200406-1-4-4-3','2020-04-06 14:13:30.041347','2020-04-06 16:13:30.037896','Valid',5,4,NULL,NULL),(4,4,'R-200407-1-8-4-4','2020-04-07 10:35:49.430166','2020-04-07 12:35:49.426808','Valid',5,8,NULL,NULL),(5,5,'R-200407-1-8-4-5','2020-04-07 10:36:22.906040','2020-04-07 12:36:22.902778','Valid',5,8,NULL,NULL),(6,6,'R-200422-1-10-4-6','2020-04-22 11:23:17.925192','2020-04-22 13:23:17.922125','Valid',5,10,NULL,NULL),(7,7,'R-211215-1-4-4-7','2021-12-15 12:23:20.716596','2021-12-15 14:23:20.711551','Valid',5,4,NULL,''),(8,8,'R-211215-1-4-4-8','2021-12-15 12:23:48.071515','2021-12-15 14:23:48.064445','Valid',5,4,NULL,''),(9,9,'R-211215-1-4-1-9','2021-12-15 13:40:19.338192','2021-12-15 15:40:19.337431','Valid',1,4,'',''),(10,10,'R-211215-1-4-4-10','2021-12-15 16:07:24.672920','2021-12-15 18:07:24.665285','Valid',5,4,NULL,''),(11,11,'R-211215-1-4-4-11','2021-12-15 16:09:32.297887','2021-12-15 18:09:32.292554','Valid',5,4,NULL,''),(12,12,'R-211216-1-4-4-12','2021-12-16 11:37:52.093626','2021-12-16 13:37:52.090012','Valid',5,4,NULL,''),(13,13,'R-211216-1-4-4-13','2021-12-16 11:39:52.268923','2021-12-16 13:39:52.264454','Valid',5,4,NULL,''),(14,14,'R-211216-1-4-4-14','2021-12-16 14:57:52.779291','2021-12-16 16:57:52.770953','Valid',5,4,NULL,''),(15,15,'R-211216-1-4-4-15','2021-12-16 15:00:07.731626','2021-12-16 17:00:07.720958','Valid',5,4,NULL,''),(16,16,'R-211216-1-4-4-16','2021-12-16 15:07:23.579813','2021-12-16 17:07:23.574466','Valid',5,4,NULL,''),(17,17,'R-211216-1-4-4-17','2021-12-16 15:11:04.135734','2021-12-16 17:11:04.129754','Valid',5,4,NULL,''),(18,18,'R-211216-1-4-4-18','2021-12-16 15:19:49.628382','2021-12-16 17:19:49.621750','Valid',5,4,NULL,''),(19,19,'R-211219-1-4-4-19','2021-12-19 08:21:28.366708','2021-12-19 10:21:28.361792','Valid',5,4,NULL,''),(20,20,'R-211219-1-4-4-20','2021-12-19 08:21:50.224788','2021-12-19 10:21:50.220135','Valid',5,4,NULL,''),(21,21,'R-211219-1-4-4-21','2021-12-19 08:28:22.995879','2021-12-19 10:28:22.989950','Valid',5,4,NULL,''),(22,22,'R-211219-1-4-4-22','2021-12-19 08:28:39.049687','2021-12-19 10:28:39.045387','Valid',5,4,NULL,''),(23,23,'R-211219-1-4-4-23','2021-12-19 08:34:45.712557','2021-12-19 10:34:45.707517','Valid',5,4,NULL,''),(24,24,'R-211219-1-4-4-24','2021-12-19 08:36:54.386546','2021-12-19 10:36:54.380218','Damaged',5,4,NULL,''),(25,25,'R-211219-1-4-4-25','2021-12-19 08:37:33.651865','2021-12-19 10:37:33.646850','Damaged',5,4,NULL,''),(26,26,'R-211219-1-4-4-26','2021-12-19 08:42:04.680087','2021-12-19 10:42:04.676364','Damaged',5,4,NULL,''),(27,27,'R-211219-1-4-4-27','2021-12-19 08:57:46.126973','2021-12-19 10:57:46.123071','Damaged',5,4,NULL,''),(28,28,'R-211219-1-4-4-28','2021-12-19 09:01:03.532598','2021-12-19 11:01:03.527386','Damaged',5,4,NULL,''),(29,29,'R-211219-1-4-4-29','2021-12-19 09:12:37.826529','2021-12-19 11:12:37.822142','Damaged',5,4,NULL,''),(30,30,'R-211219-1-4-4-30','2021-12-19 09:14:41.685053','2021-12-19 11:14:41.680533','Valid',5,4,NULL,''),(31,31,'R-211219-1-4-4-31','2021-12-19 09:19:49.234323','2021-12-19 11:19:49.230371','Valid',5,4,NULL,''),(32,32,'R-211219-1-4-4-32','2021-12-19 09:28:05.740344','2021-12-19 11:28:05.732222','Valid',5,4,NULL,''),(33,33,'R-211219-1-4-4-33','2021-12-19 09:36:00.030310','2021-12-19 11:36:00.025343','Valid',5,4,NULL,''),(34,34,'R-211219-1-4-4-34','2021-12-19 09:38:11.143211','2021-12-19 11:38:11.139053','Valid',5,4,NULL,''),(35,35,'R-211219-1-4-4-35','2021-12-19 09:40:42.441058','2021-12-19 11:40:42.436790','Valid',5,4,NULL,''),(36,36,'R-211219-1-4-4-36','2021-12-19 09:42:32.667864','2021-12-19 11:42:32.664606','Valid',5,4,NULL,''),(37,37,'R-211219-1-4-4-37','2021-12-19 09:52:26.256179','2021-12-19 11:52:26.251909','Valid',5,4,NULL,''),(38,38,'R-211219-1-4-4-38','2021-12-19 10:11:32.873772','2021-12-19 12:11:32.863294','Valid',5,4,NULL,''),(39,39,'R-211219-1-4-4-39','2021-12-19 10:36:29.339588','2021-12-19 12:36:29.333803','Valid',5,4,NULL,''),(40,40,'R-211219-1-4-4-40','2021-12-19 10:49:50.181042','2021-12-19 12:49:50.177105','Valid',5,4,NULL,''),(41,41,'R-211219-1-4-4-41','2021-12-19 10:49:52.040374','2021-12-19 12:49:52.033763','Valid',5,4,NULL,''),(42,42,'R-211219-1-4-4-42','2021-12-19 10:51:13.519376','2021-12-19 12:51:13.514334','Valid',5,4,NULL,''),(43,43,'R-211219-1-4-4-43','2021-12-19 10:52:58.121088','2021-12-19 12:52:58.116008','Valid',5,4,NULL,''),(44,44,'R-211219-1-4-4-44','2021-12-19 10:56:44.207737','2021-12-19 12:56:44.202007','Valid',5,4,NULL,''),(45,45,'R-211219-1-4-4-45','2021-12-19 10:59:38.416536','2021-12-19 12:59:38.413319','Valid',5,4,NULL,''),(46,46,'R-211219-1-4-4-46','2021-12-19 11:00:22.998561','2021-12-19 13:00:22.994775','Valid',5,4,NULL,''),(47,47,'R-211219-1-4-4-47','2021-12-19 11:01:39.675462','2021-12-19 13:01:39.671024','Valid',5,4,NULL,''),(48,48,'R-211219-1-4-4-48','2021-12-19 11:02:24.066770','2021-12-19 13:02:24.060924','Valid',5,4,NULL,''),(49,49,'R-211219-1-4-4-49','2021-12-19 11:04:26.199916','2021-12-19 13:04:26.196366','Valid',5,4,NULL,''),(50,50,'R-211219-1-4-4-50','2021-12-19 11:09:54.526797','2021-12-19 13:09:54.523314','Valid',5,4,NULL,''),(51,51,'R-211219-1-4-4-51','2021-12-19 11:10:05.847932','2021-12-19 13:10:05.841791','Valid',5,4,NULL,''),(52,52,'R-211219-1-4-4-52','2021-12-19 11:13:24.259221','2021-12-19 13:13:24.254348','Valid',5,4,NULL,''),(53,53,'R-211219-1-4-4-53','2021-12-19 11:13:39.093988','2021-12-19 13:13:39.089892','Valid',5,4,NULL,''),(54,54,'R-211219-1-4-4-54','2021-12-19 11:17:55.181584','2021-12-19 13:17:55.171998','Valid',5,4,NULL,''),(55,55,'R-211219-1-4-4-55','2021-12-19 11:27:36.725279','2021-12-19 13:27:36.720124','Valid',5,4,NULL,''),(56,56,'R-211219-1-4-4-56','2021-12-19 11:38:50.620929','2021-12-19 13:38:50.616553','Valid',5,4,NULL,''),(57,57,'R-211219-1-4-4-57','2021-12-19 11:43:05.027452','2021-12-19 13:43:05.021152','Valid',5,4,NULL,''),(58,58,'R-211219-1-4-4-58','2021-12-19 11:48:42.697103','2021-12-19 13:48:42.688388','Valid',5,4,NULL,''),(59,59,'R-211219-1-4-4-59','2021-12-19 12:02:10.483129','2021-12-19 14:02:10.479605','Valid',5,4,NULL,''),(60,60,'R-211219-1-4-4-60','2021-12-19 12:06:27.556987','2021-12-19 14:06:27.553317','Valid',5,4,NULL,''),(61,61,'R-211219-1-4-4-61','2021-12-19 12:15:36.509780','2021-12-19 14:15:36.505518','Valid',5,4,NULL,''),(62,62,'R-211219-1-4-4-62','2021-12-19 12:21:54.277233','2021-12-19 14:21:54.273242','Valid',5,4,NULL,''),(63,63,'R-211219-1-4-4-63','2021-12-19 12:23:39.812553','2021-12-19 14:23:39.808920','Valid',5,4,NULL,''),(64,64,'R-211219-1-4-4-64','2021-12-19 12:23:40.665744','2021-12-19 14:23:40.659906','Valid',5,4,NULL,''),(65,65,'R-211219-1-4-4-65','2021-12-19 12:23:57.123234','2021-12-19 14:23:57.117186','Valid',5,4,NULL,''),(66,66,'R-211219-1-4-4-66','2021-12-19 12:26:37.085785','2021-12-19 14:26:37.080176','Valid',5,4,NULL,''),(67,67,'R-211219-1-4-4-67','2021-12-19 12:27:14.650716','2021-12-19 14:27:14.643975','Valid',5,4,NULL,''),(68,68,'R-211219-1-4-4-68','2021-12-19 12:29:18.589322','2021-12-19 14:29:18.581062','Valid',5,4,NULL,''),(69,69,'R-211219-1-4-4-69','2021-12-19 12:29:31.932100','2021-12-19 14:29:31.927987','Valid',5,4,NULL,''),(70,70,'R-211219-1-4-4-70','2021-12-19 12:39:41.064580','2021-12-19 14:39:41.058411','Valid',5,4,NULL,''),(71,71,'R-211219-1-4-4-71','2021-12-19 12:41:00.321598','2021-12-19 14:41:00.317006','Valid',5,4,NULL,''),(72,72,'R-211219-1-4-4-72','2021-12-19 12:42:09.342585','2021-12-19 14:42:09.338897','Valid',5,4,NULL,''),(73,73,'R-211219-1-4-4-73','2021-12-19 12:43:49.149081','2021-12-19 14:43:49.145602','Valid',5,4,NULL,''),(74,74,'R-211219-1-4-4-74','2021-12-19 12:55:21.211450','2021-12-19 14:55:21.206779','Valid',5,4,NULL,''),(75,75,'R-211219-1-4-4-75','2021-12-19 12:57:46.818167','2021-12-19 14:57:46.805077','Valid',5,4,NULL,''),(76,76,'R-211219-1-4-4-76','2021-12-19 13:04:05.785636','2021-12-19 15:04:05.778457','Valid',5,4,NULL,''),(77,77,'R-211219-1-4-4-77','2021-12-19 13:05:56.661563','2021-12-19 15:05:56.658212','Valid',5,4,NULL,''),(78,78,'R-211219-1-4-4-78','2021-12-19 13:06:15.224573','2021-12-19 15:06:15.218638','Valid',5,4,NULL,''),(79,79,'R-211219-1-4-4-79','2021-12-19 13:29:42.552240','2021-12-19 15:29:42.546566','Valid',5,4,NULL,''),(80,80,'R-211219-1-4-4-80','2021-12-19 13:30:13.009628','2021-12-19 15:30:13.005653','Valid',5,4,NULL,''),(81,81,'R-211219-1-4-4-81','2021-12-19 13:33:23.200688','2021-12-19 15:33:23.193413','Valid',5,4,NULL,''),(82,82,'R-211219-1-4-4-82','2021-12-19 13:33:44.571915','2021-12-19 15:33:44.566090','Valid',5,4,NULL,''),(83,83,'R-211219-1-4-4-83','2021-12-19 13:35:24.147638','2021-12-19 15:35:24.142455','Valid',5,4,NULL,''),(84,84,'R-211219-1-4-4-84','2021-12-19 13:43:18.266943','2021-12-19 15:43:18.261441','Valid',5,4,NULL,''),(85,85,'R-220308-1-4-4-85','2022-03-08 09:27:15.609998','2022-03-08 11:27:15.604568','Valid',5,4,NULL,''),(86,86,'R-220308-1-4-4-86','2022-03-08 09:32:57.355268','2022-03-08 11:32:57.350113','Valid',5,4,NULL,''),(87,87,'R-220309-1-13-1-87','2022-03-09 13:27:53.754115','2022-03-09 15:27:53.750379','Valid',1,14,'',''),(88,88,'R-220309-1-5-4-88','2022-03-09 13:33:22.994178','2022-03-09 15:33:22.988436','Valid',5,5,NULL,''),(89,89,'R-220309-1-13-4-89','2022-03-09 13:34:47.841628','2022-03-09 15:34:47.836222','Valid',5,14,NULL,''),(90,90,'R-220310-1-3-1-90','2022-03-10 10:32:57.007804','2022-03-10 12:32:57.004046','Valid',1,3,'',''),(91,91,'R-220310-1-3-4-91','2022-03-10 10:36:55.579860','2022-03-10 12:36:55.573534','Valid',5,3,NULL,''),(92,92,'R-220313-1-13-4-92','2022-03-13 10:49:20.955103','2022-03-13 12:49:20.949786','Valid',5,14,NULL,''),(93,93,'R-220313-1-13-4-93','2022-03-13 10:50:40.476464','2022-03-13 12:50:40.473141','Valid',5,14,NULL,''),(94,94,'R-220313-1-13-4-94','2022-03-13 10:51:26.765867','2022-03-13 12:51:26.762610','Valid',5,14,NULL,''),(95,95,'R-220313-1-13-4-95','2022-03-13 11:01:47.473313','2022-03-13 13:01:47.468664','Valid',5,14,NULL,''),(96,96,'R-220313-1-13-4-96','2022-03-13 11:03:04.474390','2022-03-13 13:03:04.468640','Valid',5,14,NULL,''),(97,97,'R-220313-1-13-4-97','2022-03-13 11:11:42.114519','2022-03-13 13:11:42.109024','Valid',5,14,NULL,''),(98,98,'R-220321-1-13-1-98','2022-03-21 15:52:35.284920','2022-03-21 17:52:35.284049','Valid',1,14,'','');
/*!40000 ALTER TABLE `inventory_customerreturn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_customerreturndetail`
--

DROP TABLE IF EXISTS `inventory_customerreturndetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_customerreturndetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_price` decimal(9,2) NOT NULL,
  `returned_quantity` decimal(10,3) NOT NULL,
  `product_discount` decimal(10,5) NOT NULL,
  `tax_product` decimal(10,2) NOT NULL,
  `final_price` decimal(9,2) DEFAULT NULL,
  `customer_return_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `is_bonus` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_customerre_customer_return_id_826ae1c2_fk_inventory` (`customer_return_id`),
  KEY `inventory_customerre_invoice_id_8db1f644_fk_inventory` (`invoice_id`),
  KEY `inventory_customerre_product_id_0f173003_fk_inventory` (`product_id`),
  CONSTRAINT `inventory_customerre_customer_return_id_826ae1c2_fk_inventory` FOREIGN KEY (`customer_return_id`) REFERENCES `inventory_customerreturn` (`id`),
  CONSTRAINT `inventory_customerre_invoice_id_8db1f644_fk_inventory` FOREIGN KEY (`invoice_id`) REFERENCES `inventory_invoices` (`id`),
  CONSTRAINT `inventory_customerre_product_id_0f173003_fk_inventory` FOREIGN KEY (`product_id`) REFERENCES `inventory_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_customerreturndetail`
--

LOCK TABLES `inventory_customerreturndetail` WRITE;
/*!40000 ALTER TABLE `inventory_customerreturndetail` DISABLE KEYS */;
INSERT INTO `inventory_customerreturndetail` VALUES (1,5.00,1.000,0.00000,0.00,5.00,1,1,1,0),(2,2.00,2.000,0.00000,0.00,4.00,2,2,3,0),(3,2.00,2.000,0.00000,0.00,4.00,3,3,3,0),(4,2.00,1.000,0.00000,0.00,2.00,4,6,3,0),(5,5.00,2.000,0.00000,0.00,10.00,5,5,1,0),(6,25.00,5.000,0.00000,0.00,125.00,6,7,2,0),(7,5.00,1.000,0.00000,0.00,5.00,7,9,1,0),(8,5.00,3.000,0.00000,0.00,15.00,8,9,1,0),(9,2.00,2.000,0.00000,0.00,4.00,9,10,3,0),(10,2.00,1.000,2.00000,0.00,0.00,9,10,3,0),(11,2.00,2.000,1.00000,0.00,2.00,10,10,3,0),(12,2.00,2.000,1.00000,0.00,2.00,11,10,3,0),(13,2.00,2.000,0.00000,0.00,4.00,12,12,3,0),(14,2.00,10.000,0.00000,0.00,20.00,13,13,3,0),(15,2.00,3.000,0.00000,0.00,6.00,14,13,3,0),(16,2.00,3.000,0.00000,0.00,6.00,15,13,3,0),(17,2.00,1.000,0.00000,0.00,2.00,16,13,3,0),(18,2.00,1.000,0.00000,0.00,2.00,17,13,3,0),(19,2.00,1.000,0.00000,0.00,2.00,18,13,3,0),(20,2.00,1.000,2.00000,0.00,0.00,18,13,3,0),(21,2.00,2.000,0.00000,0.00,4.00,19,14,3,0),(22,2.00,2.000,0.00000,0.00,4.00,20,14,3,0),(23,2.00,1.000,2.00000,0.00,0.00,20,14,3,0),(24,2.00,2.000,0.00000,0.00,4.00,21,14,3,0),(25,2.00,1.000,2.00000,0.00,0.00,21,14,3,0),(26,2.00,2.000,0.00000,0.00,4.00,22,14,3,0),(27,2.00,2.000,0.00000,0.00,4.00,23,14,3,0),(28,2.00,1.000,2.00000,0.00,0.00,23,14,3,0),(29,2.00,2.000,0.00000,0.00,4.00,24,14,3,0),(30,2.00,2.000,0.00000,0.00,4.00,25,14,3,0),(31,2.00,2.000,0.00000,0.00,4.00,26,14,3,0),(32,2.00,2.000,2.00000,0.00,0.00,26,14,3,0),(33,2.00,2.000,0.00000,0.00,4.00,27,14,3,0),(34,2.00,2.000,0.00000,0.00,4.00,28,14,3,0),(35,2.00,2.000,0.00000,0.00,4.00,29,14,3,0),(36,2.00,2.000,0.00000,0.00,4.00,30,14,3,0),(37,2.00,2.000,0.00000,0.00,4.00,31,14,3,0),(38,2.00,2.000,0.00000,0.00,4.00,32,14,3,0),(39,2.00,1.000,0.00000,0.00,2.00,33,14,3,0),(40,2.00,1.000,0.00000,0.00,2.00,34,14,3,0),(41,2.00,1.000,0.00000,0.00,2.00,35,14,3,0),(42,2.00,1.000,0.00000,0.00,2.00,36,14,3,0),(43,2.00,1.000,0.00000,0.00,2.00,37,14,3,0),(44,2.00,1.000,0.00000,0.00,2.00,38,14,3,0),(45,2.00,1.000,0.00000,0.00,2.00,39,14,3,0),(46,2.00,1.000,0.00000,0.00,2.00,40,14,3,0),(47,2.00,1.000,0.00000,0.00,2.00,41,14,3,0),(48,2.00,1.000,0.00000,0.00,2.00,42,14,3,0),(49,2.00,1.000,0.00000,0.00,2.00,43,14,3,0),(50,2.00,1.000,0.00000,0.00,2.00,46,14,3,0),(51,2.00,1.000,0.00000,0.00,2.00,47,14,3,0),(52,2.00,1.000,0.00000,0.00,2.00,48,14,3,0),(53,2.00,1.000,0.00000,0.00,2.00,49,14,3,0),(54,2.00,1.000,0.00000,0.00,2.00,50,14,3,0),(55,2.00,1.000,0.00000,0.00,2.00,51,14,3,0),(56,2.00,1.000,0.00000,0.00,2.00,52,14,3,0),(57,2.00,1.000,0.00000,0.00,2.00,53,14,3,0),(58,2.00,1.000,0.00000,0.00,2.00,54,14,3,0),(59,2.00,1.000,0.00000,0.00,2.00,55,14,3,0),(60,2.00,1.000,0.00000,0.00,2.00,56,14,3,0),(61,2.00,1.000,0.00000,0.00,2.00,57,14,3,0),(62,2.00,1.000,0.00000,0.00,2.00,58,14,3,0),(63,2.00,1.000,0.00000,0.00,2.00,60,14,3,0),(64,2.00,1.000,0.00000,0.00,2.00,61,14,3,0),(65,2.00,1.000,0.00000,0.00,2.00,62,14,3,0),(66,2.00,1.000,0.00000,0.00,2.00,63,14,3,0),(67,2.00,1.000,0.00000,0.00,2.00,64,14,3,0),(68,2.00,1.000,0.00000,0.00,2.00,65,14,3,0),(69,2.00,1.000,0.00000,0.00,2.00,66,14,3,0),(70,2.00,1.000,0.00000,0.00,2.00,67,14,3,0),(71,2.00,1.000,0.00000,0.00,2.00,68,14,3,0),(72,2.00,1.000,0.00000,0.00,2.00,69,14,3,0),(73,2.00,1.000,0.00000,0.00,2.00,74,14,3,0),(74,2.00,1.000,0.00000,0.00,2.00,75,14,3,0),(75,2.00,1.000,2.00000,0.00,0.00,75,14,3,0),(76,2.00,1.000,0.00000,0.00,2.00,77,14,3,0),(77,2.00,1.000,0.00000,0.00,2.00,78,14,3,0),(78,2.00,1.000,0.00000,0.00,2.00,79,14,3,0),(79,2.00,1.000,0.00000,0.00,2.00,80,14,3,0),(80,2.00,2.000,0.00000,0.00,4.00,81,15,3,0),(81,5.00,1.000,0.00000,0.00,5.00,81,15,1,0),(82,2.00,2.000,0.00000,0.00,4.00,82,15,3,0),(83,5.00,1.000,0.00000,0.00,5.00,82,15,1,0),(84,5.00,1.000,5.00000,0.00,0.00,82,15,1,0),(85,2.00,2.000,0.00000,0.00,4.00,83,15,3,0),(86,2.00,1.000,2.00000,0.00,0.00,83,15,3,0),(87,5.00,1.000,0.00000,0.00,5.00,83,15,1,0),(88,5.00,2.000,5.00000,0.00,0.00,83,15,1,0),(89,2.00,2.000,0.00000,0.00,4.00,84,15,3,0),(90,5.00,1.000,0.00000,0.00,5.00,84,15,1,0),(91,25.00,5.000,0.00000,0.00,125.00,85,27,2,0),(92,25.00,1.000,25.00000,0.00,0.00,85,27,2,0),(93,25.00,5.000,0.00000,0.00,125.00,86,27,2,0),(94,25.00,1.000,25.00000,0.00,0.00,86,27,2,0),(95,5.00,5.000,0.00000,0.00,25.00,87,28,1,0),(96,5.00,1.000,5.00000,0.00,0.00,87,28,1,1),(97,25.00,3.000,0.00000,0.00,75.00,87,28,2,0),(98,25.00,1.000,25.00000,0.00,0.00,87,28,2,1),(99,2.00,1.000,0.00000,0.00,2.00,87,28,3,0),(100,25.00,5.000,0.00000,0.00,125.00,88,28,2,0),(101,25.00,1.000,25.00000,0.00,0.00,88,28,2,1),(102,2.00,1.000,0.00000,0.00,2.00,88,28,3,0),(103,25.00,5.000,0.00000,0.00,125.00,89,28,2,0),(104,25.00,1.000,25.00000,0.00,0.00,89,28,2,1),(105,2.00,1.000,0.00000,0.00,2.00,89,28,3,0),(106,5.00,1.000,0.00000,0.00,5.00,90,19,1,0),(107,5.00,1.000,0.00000,0.00,5.00,91,19,1,0),(108,25.00,5.000,0.00000,0.00,125.00,92,28,2,0),(109,25.00,2.000,0.00000,0.00,50.00,93,28,2,0),(110,25.00,1.000,25.00000,0.00,0.00,93,28,2,1),(111,25.00,2.000,0.00000,0.00,50.00,94,28,2,0),(112,25.00,2.000,0.00000,0.00,50.00,95,28,2,0),(113,25.00,2.000,0.00000,0.00,50.00,96,28,2,0),(114,25.00,1.000,0.00000,0.00,25.00,97,28,2,0),(115,5.00,3.000,0.00000,0.00,15.00,98,29,1,0),(116,5.00,1.000,5.00000,0.00,0.00,98,29,1,1),(117,25.00,2.000,0.00000,0.00,50.00,98,29,2,0),(118,25.00,1.000,25.00000,0.00,0.00,98,29,2,1);
/*!40000 ALTER TABLE `inventory_customerreturndetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_depositrefunddetail`
--

DROP TABLE IF EXISTS `inventory_depositrefunddetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_depositrefunddetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deposit_amount` decimal(9,2) NOT NULL,
  `refund_amount` decimal(9,2) NOT NULL,
  `deposit_remaining_before` decimal(9,2) NOT NULL,
  `deposit_remaining_after` decimal(9,2) NOT NULL,
  `date` datetime(6) NOT NULL,
  `deposit_id` int(11) NOT NULL,
  `refund_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inventory_depositrefunddetail_deposit_id_refund_id_2dc2648c_uniq` (`deposit_id`,`refund_id`),
  KEY `inventory_depositref_refund_id_e6b5c278_fk_inventory` (`refund_id`),
  CONSTRAINT `inventory_depositref_deposit_id_b7581bd8_fk_inventory` FOREIGN KEY (`deposit_id`) REFERENCES `inventory_payments` (`id`),
  CONSTRAINT `inventory_depositref_refund_id_e6b5c278_fk_inventory` FOREIGN KEY (`refund_id`) REFERENCES `inventory_payments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_depositrefunddetail`
--

LOCK TABLES `inventory_depositrefunddetail` WRITE;
/*!40000 ALTER TABLE `inventory_depositrefunddetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_depositrefunddetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_inventoryaudit`
--

DROP TABLE IF EXISTS `inventory_inventoryaudit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_inventoryaudit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `audit_number` varchar(100) DEFAULT NULL,
  `date` datetime(6) NOT NULL,
  `amount` decimal(9,2) DEFAULT NULL,
  `subid` int(10) unsigned NOT NULL,
  `agent_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `notes` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `audit_number` (`audit_number`),
  KEY `inventory_inventoryaudit_agent_id_bf729bc5_fk_profiles_agent_id` (`agent_id`),
  KEY `inventory_inventorya_customer_id_325a04c7_fk_profiles_` (`customer_id`),
  CONSTRAINT `inventory_inventorya_customer_id_325a04c7_fk_profiles_` FOREIGN KEY (`customer_id`) REFERENCES `profiles_customer` (`id`),
  CONSTRAINT `inventory_inventoryaudit_agent_id_bf729bc5_fk_profiles_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_inventoryaudit`
--

LOCK TABLES `inventory_inventoryaudit` WRITE;
/*!40000 ALTER TABLE `inventory_inventoryaudit` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_inventoryaudit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_inventoryauditdetail`
--

DROP TABLE IF EXISTS `inventory_inventoryauditdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_inventoryauditdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_price` decimal(9,2) DEFAULT NULL,
  `quantity` decimal(10,3) NOT NULL,
  `product_discount` decimal(10,5) DEFAULT NULL,
  `tax_product` decimal(10,2) DEFAULT NULL,
  `final_price` decimal(9,2) DEFAULT NULL,
  `audit_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_inventorya_audit_id_ffdfb758_fk_inventory` (`audit_id`),
  KEY `inventory_inventorya_product_id_b1de4e8f_fk_inventory` (`product_id`),
  CONSTRAINT `inventory_inventorya_audit_id_ffdfb758_fk_inventory` FOREIGN KEY (`audit_id`) REFERENCES `inventory_inventoryaudit` (`id`),
  CONSTRAINT `inventory_inventorya_product_id_b1de4e8f_fk_inventory` FOREIGN KEY (`product_id`) REFERENCES `inventory_products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_inventoryauditdetail`
--

LOCK TABLES `inventory_inventoryauditdetail` WRITE;
/*!40000 ALTER TABLE `inventory_inventoryauditdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_inventoryauditdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_inventorytransfer`
--

DROP TABLE IF EXISTS `inventory_inventorytransfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_inventorytransfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subid` int(10) unsigned NOT NULL,
  `quantity` decimal(10,3) NOT NULL,
  `date` datetime(6) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `staff_from_id` int(11) NOT NULL,
  `staff_to_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_inventoryt_agent_id_2a4d0d3f_fk_profiles_` (`agent_id`),
  KEY `inventory_inventoryt_company_id_2a48608f_fk_profiles_` (`company_id`),
  KEY `inventory_inventoryt_product_id_6cbf37bd_fk_inventory` (`product_id`),
  KEY `inventory_inventoryt_staff_from_id_9c686cd4_fk_profiles_` (`staff_from_id`),
  KEY `inventory_inventoryt_staff_to_id_b017b46c_fk_profiles_` (`staff_to_id`),
  CONSTRAINT `inventory_inventoryt_agent_id_2a4d0d3f_fk_profiles_` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `inventory_inventoryt_company_id_2a48608f_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `inventory_inventoryt_product_id_6cbf37bd_fk_inventory` FOREIGN KEY (`product_id`) REFERENCES `inventory_products` (`id`),
  CONSTRAINT `inventory_inventoryt_staff_from_id_9c686cd4_fk_profiles_` FOREIGN KEY (`staff_from_id`) REFERENCES `profiles_driver` (`id`),
  CONSTRAINT `inventory_inventoryt_staff_to_id_b017b46c_fk_profiles_` FOREIGN KEY (`staff_to_id`) REFERENCES `profiles_driver` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_inventorytransfer`
--

LOCK TABLES `inventory_inventorytransfer` WRITE;
/*!40000 ALTER TABLE `inventory_inventorytransfer` DISABLE KEYS */;
INSERT INTO `inventory_inventorytransfer` VALUES (1,1,10.000,'2020-04-02 16:25:22.050654',1,1,1,1,2),(2,2,10.000,'2020-04-02 16:25:23.686906',1,1,1,1,2),(3,3,10.000,'2020-04-02 16:26:36.966561',1,1,1,2,1),(4,4,10.000,'2020-04-02 16:26:42.738342',1,1,1,2,1),(5,5,2.000,'2020-04-05 14:32:56.280932',1,1,1,2,3),(6,6,2.000,'2020-04-05 14:33:00.653276',1,1,1,2,3),(7,7,10.000,'2020-04-05 15:01:03.419560',1,1,1,1,3),(8,8,5.000,'2020-04-05 15:01:45.378185',1,1,1,1,2),(9,9,3.000,'2020-04-05 15:07:15.357438',1,1,1,1,3),(10,10,2.000,'2020-04-05 15:07:49.850240',1,1,1,2,3),(11,11,2.000,'2020-04-05 15:07:55.399440',1,1,1,2,3),(12,12,2.000,'2020-04-05 15:07:58.237605',1,1,1,2,3),(13,13,2.000,'2020-04-05 15:08:22.905810',1,1,1,2,1),(14,14,3.000,'2020-04-05 15:09:00.271291',1,1,1,2,3),(15,15,3.000,'2020-04-05 15:09:17.769670',1,1,1,2,3),(16,16,3.000,'2020-04-05 15:09:19.179284',1,1,1,2,3),(17,17,3.000,'2020-04-05 15:09:32.298992',1,1,1,2,3),(18,18,1.000,'2020-04-05 15:10:10.475256',1,1,1,2,1),(19,19,3.000,'2020-04-05 15:16:24.038478',1,1,1,3,2),(20,20,3.000,'2020-04-05 15:16:51.577444',1,1,1,3,2),(21,21,1.000,'2020-04-05 15:38:40.705750',1,1,1,3,2),(22,22,1.000,'2020-04-05 15:40:20.711253',1,1,1,3,2),(23,23,7.000,'2020-04-06 11:27:01.529697',1,1,1,3,1),(24,24,7.000,'2020-04-06 11:27:03.818878',1,1,1,3,1),(25,25,7.000,'2020-04-06 11:27:06.413630',1,1,1,3,1),(26,26,7.000,'2020-04-06 11:27:34.338908',1,1,1,3,1),(27,27,5.000,'2020-04-06 16:49:20.772951',1,1,3,1,3),(28,28,4.000,'2020-04-06 16:56:56.617004',1,1,1,1,4),(29,29,5.000,'2022-03-10 13:31:34.553756',1,1,1,4,3),(30,30,15.000,'2022-03-10 13:31:59.042223',1,1,3,4,3);
/*!40000 ALTER TABLE `inventory_inventorytransfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_inventorytransferdetail`
--

DROP TABLE IF EXISTS `inventory_inventorytransferdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_inventorytransferdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` decimal(10,2) NOT NULL,
  `requisition_id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_inventoryt_requisition_id_a0e6aa1b_fk_inventory` (`requisition_id`),
  KEY `inventory_inventoryt_transfer_id_0a86d41a_fk_inventory` (`transfer_id`),
  CONSTRAINT `inventory_inventoryt_requisition_id_a0e6aa1b_fk_inventory` FOREIGN KEY (`requisition_id`) REFERENCES `inventory_productrequisition` (`id`),
  CONSTRAINT `inventory_inventoryt_transfer_id_0a86d41a_fk_inventory` FOREIGN KEY (`transfer_id`) REFERENCES `inventory_inventorytransfer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_inventorytransferdetail`
--

LOCK TABLES `inventory_inventorytransferdetail` WRITE;
/*!40000 ALTER TABLE `inventory_inventorytransferdetail` DISABLE KEYS */;
INSERT INTO `inventory_inventorytransferdetail` VALUES (1,10.00,1,1),(2,10.00,1,2),(3,10.00,2,3),(4,10.00,3,4),(5,2.00,6,5),(6,2.00,6,6),(7,8.00,4,7),(8,2.00,5,7),(9,5.00,5,8),(10,3.00,5,9),(11,2.00,6,10),(12,2.00,6,11),(13,2.00,6,12),(14,2.00,6,13),(15,3.00,6,14),(16,3.00,6,15),(17,2.00,6,16),(18,1.00,10,16),(19,3.00,10,17),(20,1.00,10,18),(21,2.00,7,19),(22,1.00,8,19),(23,1.00,8,20),(24,2.00,9,20),(25,1.00,9,21),(26,1.00,9,22),(27,6.00,9,23),(28,1.00,11,23),(29,2.00,11,24),(30,2.00,12,24),(31,2.00,13,24),(32,1.00,14,24),(33,1.00,14,25),(34,3.00,16,25),(35,3.00,17,25),(36,3.00,18,26),(37,3.00,19,26),(38,1.00,28,26),(39,5.00,25,27),(40,2.00,15,28),(41,1.00,20,28),(42,1.00,30,28),(43,1.00,29,29),(44,4.00,37,29),(45,15.00,45,30);
/*!40000 ALTER TABLE `inventory_inventorytransferdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_invoiceattachment`
--

DROP TABLE IF EXISTS `inventory_invoiceattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_invoiceattachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_invoiceatt_created_by_id_e75d7279_fk_profiles_` (`created_by_id`),
  KEY `inventory_invoiceatt_invoice_id_ac43bc05_fk_inventory` (`invoice_id`),
  CONSTRAINT `inventory_invoiceatt_created_by_id_e75d7279_fk_profiles_` FOREIGN KEY (`created_by_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `inventory_invoiceatt_invoice_id_ac43bc05_fk_inventory` FOREIGN KEY (`invoice_id`) REFERENCES `inventory_invoices` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_invoiceattachment`
--

LOCK TABLES `inventory_invoiceattachment` WRITE;
/*!40000 ALTER TABLE `inventory_invoiceattachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_invoiceattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_invoicedetail`
--

DROP TABLE IF EXISTS `inventory_invoicedetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_invoicedetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_description` longtext NOT NULL,
  `product_price` decimal(9,2) NOT NULL,
  `quantity_sold` decimal(10,3) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_discount` decimal(10,5) NOT NULL,
  `tax_product` decimal(10,2) NOT NULL,
  `final_price` decimal(9,2) DEFAULT NULL,
  `available_to_return` decimal(10,3) DEFAULT NULL,
  `bonus_rule_id` int(11) DEFAULT NULL,
  `is_bonus` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_invoicedet_invoice_id_1668c673_fk_inventory` (`invoice_id`),
  KEY `inventory_invoicedet_product_id_3d975dd2_fk_inventory` (`product_id`),
  KEY `inventory_invoicedet_bonus_rule_id_e234e475_fk_promotion` (`bonus_rule_id`),
  CONSTRAINT `inventory_invoicedet_bonus_rule_id_e234e475_fk_promotion` FOREIGN KEY (`bonus_rule_id`) REFERENCES `promotions_bonusrule` (`id`),
  CONSTRAINT `inventory_invoicedet_invoice_id_1668c673_fk_inventory` FOREIGN KEY (`invoice_id`) REFERENCES `inventory_invoices` (`id`),
  CONSTRAINT `inventory_invoicedet_product_id_3d975dd2_fk_inventory` FOREIGN KEY (`product_id`) REFERENCES `inventory_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_invoicedetail`
--

LOCK TABLES `inventory_invoicedetail` WRITE;
/*!40000 ALTER TABLE `inventory_invoicedetail` DISABLE KEYS */;
INSERT INTO `inventory_invoicedetail` VALUES (1,'',5.00,10.000,1,1,0.00000,0.00,50.00,9.000,NULL,0),(2,'',25.00,5.000,2,2,22.00000,0.00,15.00,5.000,NULL,0),(3,'',2.00,10.000,2,3,0.00000,0.00,20.00,8.000,NULL,0),(4,'',5.00,5.000,2,1,0.00000,0.00,25.00,5.000,NULL,0),(5,'',2.00,5.000,3,3,0.00000,0.00,10.00,3.000,NULL,0),(6,'',25.00,2.000,4,2,0.00000,0.00,50.00,2.000,NULL,0),(7,'',5.00,4.000,5,1,0.00000,0.00,20.00,2.000,NULL,0),(8,'',2.00,3.000,5,3,0.00000,0.00,6.00,3.000,NULL,0),(9,'',2.00,2.000,6,3,0.00000,0.00,4.00,1.000,NULL,0),(10,'',25.00,5.000,7,2,0.00000,0.00,125.00,0.000,NULL,0),(11,'',5.00,5.000,8,1,0.00000,0.00,25.00,5.000,NULL,0),(12,'',5.00,2.000,9,1,0.00000,0.00,10.00,-2.000,NULL,0),(13,'',2.00,22.000,10,3,0.00000,0.00,44.00,18.000,NULL,0),(14,'',2.00,2.000,10,3,2.00000,0.00,0.00,1.000,1,1),(15,'',2.00,22.000,11,3,0.00000,0.00,44.00,22.000,NULL,0),(16,'',2.00,2.000,11,3,2.00000,0.00,0.00,2.000,1,1),(17,'',2.00,5.000,12,3,0.00000,0.00,10.00,3.000,NULL,0),(18,'',2.00,22.000,13,3,0.00000,0.00,44.00,4.000,NULL,0),(19,'',2.00,2.000,13,3,2.00000,0.00,0.00,1.000,1,1),(20,'',2.00,60.000,14,3,0.00000,0.00,120.00,21.000,NULL,0),(21,'',2.00,6.000,14,3,2.00000,0.00,0.00,0.000,1,1),(22,'',2.00,30.000,15,3,0.00000,0.00,60.00,22.000,NULL,0),(23,'',2.00,3.000,15,3,2.00000,0.00,0.00,2.000,1,1),(24,'',5.00,8.000,15,1,0.00000,0.00,40.00,4.000,NULL,0),(25,'',5.00,4.000,15,1,5.00000,0.00,0.00,1.000,4,1),(26,'',2.00,8.000,16,3,0.00000,0.00,16.00,8.000,NULL,0),(27,'',25.00,71.000,17,2,0.00000,0.00,1775.00,71.000,NULL,0),(28,'',2.00,70.000,18,3,0.00000,0.00,140.00,70.000,NULL,0),(29,'',5.00,2.000,19,1,0.00000,0.00,10.00,0.000,NULL,0),(30,'',5.00,5.000,25,1,0.00000,0.00,25.00,5.000,NULL,0),(31,'',5.00,2.000,25,1,5.00000,0.00,0.00,2.000,4,1),(32,'',25.00,3.000,25,2,0.00000,0.00,75.00,3.000,NULL,0),(33,'',5.00,5.000,26,1,0.00000,0.00,25.00,5.000,NULL,0),(34,'',25.00,20.000,27,2,0.00000,0.00,500.00,10.000,NULL,0),(35,'',25.00,4.000,27,2,25.00000,0.00,0.00,2.000,5,1),(36,'',5.00,5.000,27,1,0.00000,0.00,25.00,5.000,NULL,0),(37,'',5.00,5.000,28,1,0.00000,0.00,25.00,0.000,NULL,0),(38,'',5.00,2.000,28,1,5.00000,0.00,0.00,1.000,4,1),(39,'',25.00,30.000,28,2,0.00000,0.00,750.00,3.000,NULL,0),(40,'',25.00,6.000,28,2,25.00000,0.00,0.00,2.000,5,1),(41,'',2.00,10.000,28,3,0.00000,0.00,20.00,7.000,NULL,0),(42,'',25.00,15.000,29,2,0.00000,0.00,375.00,13.000,NULL,0),(43,'',25.00,2.000,29,2,25.00000,0.00,0.00,1.000,5,1),(44,'',5.00,10.000,29,1,0.00000,0.00,50.00,7.000,NULL,0),(45,'',5.00,5.000,29,1,5.00000,0.00,0.00,4.000,4,1),(46,'',2.00,29.000,30,3,0.00000,0.00,58.00,29.000,NULL,0),(47,'',5.00,81.000,31,1,1.00000,0.00,324.00,81.000,NULL,0),(48,'',5.00,30.000,32,3,0.00000,0.00,150.00,30.000,NULL,0);
/*!40000 ALTER TABLE `inventory_invoicedetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_invoiceprdlog`
--

DROP TABLE IF EXISTS `inventory_invoiceprdlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_invoiceprdlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` decimal(10,2) NOT NULL,
  `date` datetime(6) NOT NULL,
  `detail_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `requisition_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_invoiceprd_detail_id_bbc1439c_fk_inventory` (`detail_id`),
  KEY `inventory_invoiceprd_invoice_id_52bb123a_fk_inventory` (`invoice_id`),
  KEY `inventory_invoiceprd_requisition_id_43e1001f_fk_inventory` (`requisition_id`),
  CONSTRAINT `inventory_invoiceprd_detail_id_bbc1439c_fk_inventory` FOREIGN KEY (`detail_id`) REFERENCES `inventory_productrequisitiondetail` (`id`),
  CONSTRAINT `inventory_invoiceprd_invoice_id_52bb123a_fk_inventory` FOREIGN KEY (`invoice_id`) REFERENCES `inventory_invoices` (`id`),
  CONSTRAINT `inventory_invoiceprd_requisition_id_43e1001f_fk_inventory` FOREIGN KEY (`requisition_id`) REFERENCES `inventory_productrequisition` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_invoiceprdlog`
--

LOCK TABLES `inventory_invoiceprdlog` WRITE;
/*!40000 ALTER TABLE `inventory_invoiceprdlog` DISABLE KEYS */;
INSERT INTO `inventory_invoiceprdlog` VALUES (1,5.00,'2020-04-06 14:12:39.175267',30,3,29),(2,2.00,'2020-04-06 14:13:03.419511',34,4,29),(3,4.00,'2020-04-07 10:35:05.462186',38,5,29),(4,3.00,'2020-04-07 10:35:05.511860',30,5,29),(5,2.00,'2020-04-07 10:35:28.560127',30,6,29),(6,5.00,'2020-04-22 11:19:29.821473',32,7,27),(7,5.00,'2020-04-22 11:21:29.338806',38,8,29),(8,0.00,'2021-12-16 08:47:14.471393',30,11,29),(9,2.00,'2021-12-16 08:47:14.484398',43,11,34),(10,1.00,'2021-12-16 08:47:14.498778',48,11,39),(11,2.00,'2021-12-16 08:47:14.511100',53,11,44),(12,19.00,'2021-12-16 08:47:14.524799',54,11,45),(13,0.00,'2021-12-16 08:48:06.959775',30,12,29),(14,5.00,'2021-12-16 08:48:06.969868',54,12,45),(15,36.00,'2022-03-30 13:56:00.435708',46,31,37),(16,4.00,'2022-03-30 13:56:00.559639',47,31,38),(17,2.00,'2022-03-30 13:56:00.672247',49,31,40),(18,1.00,'2022-03-30 13:56:00.790976',51,31,42),(19,3.00,'2022-03-30 13:56:00.898203',52,31,43),(20,1.00,'2022-03-30 13:56:01.007691',83,31,73),(21,1.00,'2022-03-30 13:56:01.082004',85,31,74),(22,1.00,'2022-03-30 13:56:01.144554',87,31,75),(23,1.00,'2022-03-30 13:56:01.206953',89,31,76),(24,1.00,'2022-03-30 13:56:01.276797',100,31,85),(25,15.00,'2022-03-30 13:56:01.367385',107,31,93),(26,15.00,'2022-03-30 13:56:01.434980',109,31,94);
/*!40000 ALTER TABLE `inventory_invoiceprdlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_invoices`
--

DROP TABLE IF EXISTS `inventory_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(100) DEFAULT NULL,
  `date` datetime(6) NOT NULL,
  `invoice_due_date` date DEFAULT NULL,
  `amount` decimal(9,2) DEFAULT NULL,
  `discount` int(10) unsigned NOT NULL,
  `status` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `remaining` decimal(9,2) DEFAULT NULL,
  `agent_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `tax` decimal(9,2) DEFAULT NULL,
  `last_updated` datetime(6) NOT NULL,
  `notes` longtext,
  `use_deposit` tinyint(1) NOT NULL,
  `qr_code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoice_number` (`invoice_number`),
  KEY `inventory_invoices_agent_id_0a49600a_fk_profiles_agent_id` (`agent_id`),
  KEY `inventory_invoices_customer_id_6c599564_fk_profiles_customer_id` (`customer_id`),
  CONSTRAINT `inventory_invoices_agent_id_0a49600a_fk_profiles_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `inventory_invoices_customer_id_6c599564_fk_profiles_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `profiles_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_invoices`
--

LOCK TABLES `inventory_invoices` WRITE;
/*!40000 ALTER TABLE `inventory_invoices` DISABLE KEYS */;
INSERT INTO `inventory_invoices` VALUES (1,'I-200402-1-2-1-1','2020-04-02 14:05:17.815120','2020-04-16',50.00,0,'Partial','Credit',35.00,1,2,1,'2020-04-02 16:05:17.814833',0.00,'2020-04-02 14:17:35.642726',NULL,1,NULL),(2,'I-200406-1-4-1-2','2020-04-06 09:23:08.702108','2020-05-15',60.00,0,'Closed','Credit',0.00,1,4,2,'2020-04-06 11:23:08.701827',0.00,'2021-12-16 11:37:52.182876',NULL,1,''),(3,'I-200406-1-4-4-3','2020-04-06 14:12:39.148433','2020-05-16',10.00,0,'Closed','Credit',0.00,5,4,3,'2020-04-06 16:12:39.148159',0.00,'2021-12-16 11:39:52.326626',NULL,1,''),(4,'I-200406-1-4-4-4','2020-04-06 14:13:03.382287','2020-05-16',50.00,0,'Closed','Credit',0.00,5,4,4,'2020-04-06 16:13:03.382004',0.00,'2021-12-19 08:36:54.431982',NULL,1,''),(5,'I-200407-1-8-4-5','2020-04-07 10:35:05.432043','2020-04-22',26.00,0,'Partial','Credit',14.00,5,8,5,'2020-04-07 12:35:05.431771',0.00,'2020-04-07 10:36:23.035588',NULL,1,NULL),(6,'I-200407-1-8-4-6','2020-04-07 10:35:28.533734','2020-04-22',4.00,0,'Open','Credit',4.00,5,8,6,'2020-04-07 12:35:28.533416',0.00,'2020-04-07 10:35:28.580659',NULL,1,NULL),(7,'I-200422-1-10-2-7','2020-04-22 11:19:29.778510','2020-05-07',125.00,0,'Closed','Credit',0.00,3,10,7,'2020-04-22 13:19:29.777863',0.00,'2020-04-22 11:23:18.030450',NULL,1,NULL),(8,'I-200422-1-5-4-8','2020-04-22 11:21:29.305911','2020-05-07',25.00,0,'Closed','Credit',0.00,5,5,8,'2020-04-22 13:21:29.305650',0.00,'2022-03-09 13:33:23.235845',NULL,1,''),(9,'I-211206-1-4-1-9','2021-12-06 14:38:02.465405','2022-01-14',10.00,0,'Closed','Credit',0.00,1,4,9,'2021-12-06 16:38:02.464882',0.00,'2021-12-19 09:01:03.583248','',0,''),(10,'I-211215-1-4-1-10','2021-12-15 12:56:43.944915','2022-01-23',44.00,0,'Closed','Credit',0.00,1,4,10,'2021-12-15 14:56:43.943582',0.00,'2021-12-19 13:30:13.068904','',0,''),(11,'I-211216-1-4-4-11','2021-12-16 08:47:14.157879','2021-12-20',44.00,0,'Closed','Credit',0.00,5,4,11,'2021-12-16 10:47:14.157018',0.00,'2022-03-07 23:12:06.381837','test notes',0,''),(12,'I-211216-1-4-4-12','2021-12-16 08:48:06.797089','2021-12-20',10.00,0,'Closed','Credit',0.00,5,4,12,'2021-12-16 10:48:06.795856',0.00,'2022-03-07 23:12:06.404791','test notes',0,''),(13,'I-211216-1-4-1-13','2021-12-16 11:39:30.285736','2022-01-24',44.00,0,'Closed','Credit',0.00,1,4,13,'2021-12-16 13:39:30.285291',0.00,'2022-03-08 09:32:57.447504','',0,''),(14,'I-211219-1-4-1-14','2021-12-19 08:19:37.903550','2022-01-27',120.00,0,'Partial','Credit',32.00,1,4,14,'2021-12-19 10:19:37.902957',0.00,'2022-03-08 09:32:57.471423','',0,''),(15,'I-211219-1-4-1-15','2021-12-19 13:31:55.691980','2022-01-27',100.00,0,'Open','Credit',100.00,1,4,15,'2021-12-19 15:31:55.691487',0.00,'2021-12-19 13:31:55.696061','',0,''),(16,'I-220102-1-4-1-16','2022-01-02 09:19:31.931312','2022-02-10',16.00,0,'Open','Credit',16.00,1,4,16,'2022-01-02 11:19:31.930476',0.00,'2022-01-02 09:19:31.939641','',0,''),(17,'I-220129-1-11-1-17','2022-01-29 08:56:37.707128','2022-02-12',1775.00,0,'Open','Credit',1775.00,1,11,17,'2022-01-29 10:56:37.706352',0.00,'2022-01-29 08:56:37.715985','',0,''),(18,'I-220129-1-12-1-18','2022-01-29 08:57:19.986751','2022-02-12',140.00,0,'Open','Credit',140.00,1,12,18,'2022-01-29 10:57:19.985796',0.00,'2022-01-29 08:57:19.990886','',0,''),(19,'I-220130-1-3-6-19','2022-01-30 14:42:55.209585','2022-02-13',10.00,0,'Closed','Credit',0.00,6,3,19,'2022-01-30 16:42:55.208992',0.00,'2022-01-30 14:43:46.745787','',0,''),(25,'I-220307-1-4-1-25','2022-03-07 22:28:57.397338','2022-04-16',100.00,0,'Open','Credit',100.00,1,4,25,'2022-03-08 00:28:57.396393',0.00,'2022-03-07 22:28:57.465207','',0,''),(26,'I-220307-1-4-1-26','2022-03-07 22:55:52.477664','2022-04-16',25.00,0,'Open','Credit',25.00,1,4,26,'2022-03-08 00:55:52.476774',0.00,'2022-03-07 22:55:52.575952','',0,''),(27,'I-220307-1-4-1-27','2022-03-07 23:13:36.568295','2022-04-16',525.00,0,'Open','Credit',525.00,1,4,27,'2022-03-08 01:13:36.567184',0.00,'2022-03-07 23:13:36.578819','',0,''),(28,'I-220309-1-13-1-28','2022-03-09 11:29:15.628404','2022-03-23',795.00,0,'Partial','Credit',151.00,1,14,28,'2022-03-09 13:29:15.627715',0.00,'2022-03-21 15:52:35.458620','',0,''),(29,'I-220321-1-13-1-29','2022-03-21 15:52:02.489633','2022-04-04',425.00,0,'Open','Credit',425.00,1,14,29,'2022-03-21 17:52:02.488102',0.00,'2022-03-21 15:52:02.662997','',0,''),(30,'I-220330-1-13-1-30','2022-03-30 13:40:29.908005','2022-04-13',58.00,0,'Open','Credit',58.00,1,14,30,'2022-03-30 15:40:29.906873',0.00,'2022-03-30 13:40:30.057529','',0,''),(31,'I-220330-1-4-4-31','2022-03-30 13:55:59.435863','2022-12-20',324.00,0,'Open','Credit',324.00,5,4,31,'2022-03-30 15:55:59.432650',0.00,'2022-03-30 13:56:01.550264','test notes',0,''),(32,'I-220401-1-13-1-32','2022-04-01 22:14:59.619699','2022-04-16',150.00,0,'Open','Credit',150.00,1,14,32,'2022-04-02 00:14:59.618229',0.00,'2022-04-01 22:14:59.787049','',0,'');
/*!40000 ALTER TABLE `inventory_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_paymentattachment`
--

DROP TABLE IF EXISTS `inventory_paymentattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_paymentattachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_paymentatt_created_by_id_84e07292_fk_profiles_` (`created_by_id`),
  KEY `inventory_paymentatt_payment_id_f59aab7f_fk_inventory` (`payment_id`),
  CONSTRAINT `inventory_paymentatt_created_by_id_84e07292_fk_profiles_` FOREIGN KEY (`created_by_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `inventory_paymentatt_payment_id_f59aab7f_fk_inventory` FOREIGN KEY (`payment_id`) REFERENCES `inventory_payments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_paymentattachment`
--

LOCK TABLES `inventory_paymentattachment` WRITE;
/*!40000 ALTER TABLE `inventory_paymentattachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_paymentattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_paymentdetail`
--

DROP TABLE IF EXISTS `inventory_paymentdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_paymentdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `amount` decimal(9,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_paymentdet_invoice_id_5de51913_fk_inventory` (`invoice_id`),
  KEY `inventory_paymentdet_payment_id_a8e3b971_fk_inventory` (`payment_id`),
  CONSTRAINT `inventory_paymentdet_invoice_id_5de51913_fk_inventory` FOREIGN KEY (`invoice_id`) REFERENCES `inventory_invoices` (`id`),
  CONSTRAINT `inventory_paymentdet_payment_id_a8e3b971_fk_inventory` FOREIGN KEY (`payment_id`) REFERENCES `inventory_payments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_paymentdetail`
--

LOCK TABLES `inventory_paymentdetail` WRITE;
/*!40000 ALTER TABLE `inventory_paymentdetail` DISABLE KEYS */;
INSERT INTO `inventory_paymentdetail` VALUES (1,1,1,10.00),(2,1,2,5.00),(3,2,3,20.00),(4,2,4,4.00),(5,2,5,4.00),(6,2,6,2.00),(7,5,7,2.00),(8,5,8,10.00),(9,7,9,125.00),(10,2,10,5.00),(11,2,11,15.00),(12,2,12,4.00),(13,2,13,2.00),(14,2,14,4.00),(15,3,15,10.00),(16,4,15,10.00),(17,4,16,6.00),(18,4,17,6.00),(19,4,18,2.00),(20,4,19,2.00),(21,4,20,4.00),(22,4,21,4.00),(23,4,22,4.00),(24,4,23,4.00),(25,4,24,4.00),(26,4,25,4.00),(27,9,26,4.00),(28,9,27,4.00),(29,9,28,2.00),(30,10,28,2.00),(31,10,29,4.00),(32,10,30,4.00),(33,10,31,4.00),(34,10,32,4.00),(35,10,33,2.00),(36,10,34,2.00),(37,10,35,2.00),(38,10,36,2.00),(39,10,37,2.00),(40,10,38,2.00),(41,10,39,2.00),(42,10,40,2.00),(43,10,41,2.00),(44,10,42,2.00),(45,10,43,2.00),(46,10,44,2.00),(47,10,45,2.00),(48,11,46,9.00),(49,11,47,9.00),(50,11,48,9.00),(51,11,49,9.00),(52,19,50,10.00),(53,11,52,8.00),(54,12,52,10.00),(55,13,52,7.00),(56,13,53,37.00),(57,13,54,37.00),(58,14,54,88.00),(59,28,55,102.00),(60,8,56,25.00),(61,28,57,127.00),(62,28,60,125.00),(63,28,61,50.00),(64,28,62,50.00),(65,28,63,50.00),(66,28,64,50.00),(67,28,65,25.00),(68,28,66,65.00);
/*!40000 ALTER TABLE `inventory_paymentdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_payments`
--

DROP TABLE IF EXISTS `inventory_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_number` varchar(100) NOT NULL,
  `amount` decimal(9,2) NOT NULL,
  `date` datetime(6) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `used` tinyint(1) NOT NULL,
  `remaining` decimal(9,2) NOT NULL,
  `subid` int(11) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `returned_goods` tinyint(1) NOT NULL,
  `notes` longtext,
  `cash_deposit` tinyint(1) NOT NULL,
  `credit_note` tinyint(1) NOT NULL,
  `deposit_refund` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_payments_agent_id_6fa7c4ae_fk_profiles_agent_id` (`agent_id`),
  KEY `inventory_payments_customer_id_4a7f14b4_fk_profiles_customer_id` (`customer_id`),
  CONSTRAINT `inventory_payments_agent_id_6fa7c4ae_fk_profiles_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `inventory_payments_customer_id_4a7f14b4_fk_profiles_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `profiles_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_payments`
--

LOCK TABLES `inventory_payments` WRITE;
/*!40000 ALTER TABLE `inventory_payments` DISABLE KEYS */;
INSERT INTO `inventory_payments` VALUES (1,'P-200402-2-1-1-1',10.00,'2020-04-02 14:15:38.208880',1,2,1,0.00,1,'2020-04-02 16:15:38.208594',0,NULL,0,0,0),(2,'P-200402-2-1-1-2',5.00,'2020-04-02 14:17:35.581189',1,2,1,0.00,2,'2020-04-02 16:17:35.580957',1,NULL,0,0,0),(3,'P-200406-4-1-1-3',20.00,'2020-04-06 09:25:12.498808',1,4,1,0.00,3,'2020-04-06 11:25:12.498501',0,NULL,0,0,0),(4,'P-200406-4-1-1-4',4.00,'2020-04-06 09:29:53.216375',1,4,1,0.00,4,'2020-04-06 11:29:53.216088',1,NULL,0,0,0),(5,'P-200406-4-1-4-5',4.00,'2020-04-06 14:13:30.098519',5,4,1,0.00,5,'2020-04-06 16:13:30.098256',1,NULL,0,0,0),(6,'P-200406-4-1-4-6',2.00,'2020-04-06 14:15:34.419994',5,4,1,0.00,6,'2020-04-06 16:15:34.419704',0,NULL,0,0,0),(7,'P-200407-8-1-4-7',2.00,'2020-04-07 10:35:49.509289',5,8,1,0.00,7,'2020-04-07 12:35:49.509024',1,NULL,0,0,0),(8,'P-200407-8-1-4-8',10.00,'2020-04-07 10:36:22.975391',5,8,1,0.00,8,'2020-04-07 12:36:22.975111',1,NULL,0,0,0),(9,'P-200422-10-1-4-9',125.00,'2020-04-22 11:23:17.991445',5,10,1,0.00,9,'2020-04-22 13:23:17.991181',1,NULL,0,0,0),(10,'P-211215-4-1-4-10',5.00,'2021-12-15 12:23:20.817917',5,4,1,0.00,10,'2021-12-15 14:23:20.816842',1,NULL,0,0,0),(11,'P-211215-4-1-4-11',15.00,'2021-12-15 12:23:48.122633',5,4,1,0.00,11,'2021-12-15 14:23:48.121980',1,NULL,0,0,0),(12,'P-211215-4-1-1-12',4.00,'2021-12-15 13:40:19.378093',1,4,1,0.00,12,'2021-12-15 15:40:19.377345',1,NULL,0,0,0),(13,'P-211215-4-1-4-13',2.00,'2021-12-15 16:09:32.380667',5,4,1,0.00,13,'2021-12-15 18:09:32.379665',1,NULL,0,0,0),(14,'P-211216-4-1-4-14',4.00,'2021-12-16 11:37:52.140723',5,4,1,0.00,14,'2021-12-16 13:37:52.139871',1,NULL,0,0,0),(15,'P-211216-4-1-4-15',20.00,'2021-12-16 11:39:52.308769',5,4,1,0.00,15,'2021-12-16 13:39:52.308325',1,NULL,0,0,0),(16,'P-211216-4-1-4-16',6.00,'2021-12-16 14:57:52.874032',5,4,1,0.00,16,'2021-12-16 16:57:52.872189',1,NULL,0,0,0),(17,'P-211216-4-1-4-17',6.00,'2021-12-16 15:00:07.802110',5,4,1,0.00,17,'2021-12-16 17:00:07.800717',1,NULL,0,0,0),(18,'P-211216-4-1-4-18',2.00,'2021-12-16 15:07:23.634733',5,4,1,0.00,18,'2021-12-16 17:07:23.633914',1,NULL,0,0,0),(19,'P-211216-4-1-4-19',2.00,'2021-12-16 15:19:49.702885',5,4,1,0.00,19,'2021-12-16 17:19:49.701536',1,NULL,0,0,0),(20,'P-211219-4-1-4-20',4.00,'2021-12-19 08:21:28.415964',5,4,1,0.00,20,'2021-12-19 10:21:28.415251',1,NULL,0,0,0),(21,'P-211219-4-1-4-21',4.00,'2021-12-19 08:21:50.283567',5,4,1,0.00,21,'2021-12-19 10:21:50.282984',1,NULL,0,0,0),(22,'P-211219-4-1-4-22',4.00,'2021-12-19 08:28:23.063979',5,4,1,0.00,22,'2021-12-19 10:28:23.063361',1,NULL,0,0,0),(23,'P-211219-4-1-4-23',4.00,'2021-12-19 08:28:39.081615',5,4,1,0.00,23,'2021-12-19 10:28:39.081212',1,NULL,0,0,0),(24,'P-211219-4-1-4-24',4.00,'2021-12-19 08:34:45.772758',5,4,1,0.00,24,'2021-12-19 10:34:45.772209',1,NULL,0,0,0),(25,'P-211219-4-1-4-25',4.00,'2021-12-19 08:36:54.413270',5,4,1,0.00,25,'2021-12-19 10:36:54.412662',1,NULL,0,0,0),(26,'P-211219-4-1-4-26',4.00,'2021-12-19 08:42:04.722536',5,4,1,0.00,26,'2021-12-19 10:42:04.721920',1,NULL,0,0,0),(27,'P-211219-4-1-4-27',4.00,'2021-12-19 08:57:46.157404',5,4,1,0.00,27,'2021-12-19 10:57:46.156678',1,NULL,0,0,0),(28,'P-211219-4-1-4-28',4.00,'2021-12-19 09:01:03.564025',5,4,1,0.00,28,'2021-12-19 11:01:03.563514',1,NULL,0,0,0),(29,'P-211219-4-1-4-29',4.00,'2021-12-19 09:12:37.865790',5,4,1,0.00,29,'2021-12-19 11:12:37.864702',1,NULL,0,0,0),(30,'P-211219-4-1-4-30',4.00,'2021-12-19 09:14:41.745604',5,4,1,0.00,30,'2021-12-19 11:14:41.745046',1,NULL,0,0,0),(31,'P-211219-4-1-4-31',4.00,'2021-12-19 09:19:49.282509',5,4,1,0.00,31,'2021-12-19 11:19:49.281687',1,NULL,0,0,0),(32,'P-211219-4-1-4-32',4.00,'2021-12-19 09:28:05.791121',5,4,1,0.00,32,'2021-12-19 11:28:05.790675',1,NULL,0,0,0),(33,'P-211219-4-1-4-33',2.00,'2021-12-19 09:36:00.091846',5,4,1,0.00,33,'2021-12-19 11:36:00.090992',1,NULL,0,0,0),(34,'P-211219-4-1-4-34',2.00,'2021-12-19 09:38:11.183210',5,4,1,0.00,34,'2021-12-19 11:38:11.182747',1,NULL,0,0,0),(35,'P-211219-4-1-4-35',2.00,'2021-12-19 09:40:42.497199',5,4,1,0.00,35,'2021-12-19 11:40:42.496593',1,NULL,0,0,0),(36,'P-211219-4-1-4-36',2.00,'2021-12-19 09:42:32.714453',5,4,1,0.00,36,'2021-12-19 11:42:32.713886',1,NULL,0,0,0),(37,'P-211219-4-1-4-37',2.00,'2021-12-19 09:52:26.302262',5,4,1,0.00,37,'2021-12-19 11:52:26.301692',1,NULL,0,0,0),(38,'P-211219-4-1-4-38',2.00,'2021-12-19 10:11:32.956820',5,4,1,0.00,38,'2021-12-19 12:11:32.956070',1,NULL,0,0,0),(39,'P-211219-4-1-4-39',2.00,'2021-12-19 10:36:29.401701',5,4,1,0.00,39,'2021-12-19 12:36:29.400197',1,NULL,0,0,0),(40,'P-211219-4-1-4-40',2.00,'2021-12-19 12:55:21.308489',5,4,1,0.00,40,'2021-12-19 14:55:21.307640',1,NULL,0,0,0),(41,'P-211219-4-1-4-41',2.00,'2021-12-19 12:57:46.887263',5,4,1,0.00,41,'2021-12-19 14:57:46.886251',1,NULL,0,0,0),(42,'P-211219-4-1-4-42',2.00,'2021-12-19 13:05:56.708811',5,4,1,0.00,42,'2021-12-19 15:05:56.708265',1,NULL,0,0,0),(43,'P-211219-4-1-4-43',2.00,'2021-12-19 13:06:15.276760',5,4,1,0.00,43,'2021-12-19 15:06:15.275548',1,NULL,0,0,0),(44,'P-211219-4-1-4-44',2.00,'2021-12-19 13:29:42.600639',5,4,1,0.00,44,'2021-12-19 15:29:42.599938',1,NULL,0,0,0),(45,'P-211219-4-1-4-45',2.00,'2021-12-19 13:30:13.052028',5,4,1,0.00,45,'2021-12-19 15:30:13.051315',1,NULL,0,0,0),(46,'P-211219-4-1-4-46',9.00,'2021-12-19 13:33:23.282734',5,4,1,0.00,46,'2021-12-19 15:33:23.281998',1,NULL,0,0,0),(47,'P-211219-4-1-4-47',9.00,'2021-12-19 13:33:44.656544',5,4,1,0.00,47,'2021-12-19 15:33:44.655935',1,NULL,0,0,0),(48,'P-211219-4-1-4-48',9.00,'2021-12-19 13:35:24.246966',5,4,1,0.00,48,'2021-12-19 15:35:24.246479',1,NULL,0,0,0),(49,'P-211219-4-1-4-49',9.00,'2021-12-19 13:43:18.341264',5,4,1,0.00,49,'2021-12-19 15:43:18.340452',1,NULL,0,0,0),(50,'P-220130-3-1-6-50',10.00,'2022-01-30 14:43:46.690427',6,3,1,0.00,50,'2022-01-30 16:43:46.689768',0,'',0,0,0),(51,'P-220301-9-1-1-51',100.00,'2022-03-01 17:28:46.938625',1,9,0,100.00,51,'2022-03-01 19:28:46.937049',0,'',1,0,0),(52,'P-220307-4-1-1-52',25.00,'2022-03-07 23:12:06.229919',1,4,1,0.00,52,'2022-03-08 01:12:06.229097',0,'',0,0,0),(53,'1',125.00,'2022-03-08 09:27:15.668500',5,4,0,0.00,53,'2022-03-08 11:27:15.667697',1,NULL,0,0,0),(54,'P-220308-4-1-4-54',125.00,'2022-03-08 09:32:57.416809',5,4,1,0.00,54,'2022-03-08 11:32:57.416141',1,NULL,0,0,0),(55,'P-220309-13-1-1-55',102.00,'2022-03-09 13:27:53.918306',1,14,1,0.00,55,'2022-03-09 15:27:53.917557',1,NULL,0,0,0),(56,'P-220309-5-1-4-56',127.00,'2022-03-09 13:33:23.123512',5,5,1,102.00,56,'2022-03-09 15:33:23.122575',1,NULL,1,0,0),(57,'P-220309-13-1-4-57',127.00,'2022-03-09 13:34:47.933754',5,14,1,0.00,57,'2022-03-09 15:34:47.933045',1,NULL,0,0,0),(58,'P-220310-3-1-1-58',5.00,'2022-03-10 10:32:57.101110',1,3,1,0.00,58,'2022-03-10 12:32:57.099629',1,NULL,1,0,0),(59,'P-220310-3-1-4-59',5.00,'2022-03-10 10:36:55.645661',5,3,1,0.00,59,'2022-03-10 12:36:55.645015',1,NULL,0,0,0),(60,'P-220313-13-1-4-60',125.00,'2022-03-13 10:49:21.011463',5,14,1,0.00,60,'2022-03-13 12:49:21.010220',1,NULL,0,0,0),(61,'P-220313-13-1-4-61',50.00,'2022-03-13 10:50:40.520348',5,14,1,0.00,61,'2022-03-13 12:50:40.519846',1,NULL,0,0,0),(62,'P-220313-13-1-4-62',50.00,'2022-03-13 10:51:26.820185',5,14,1,0.00,62,'2022-03-13 12:51:26.819633',1,NULL,0,0,0),(63,'P-220313-13-1-4-63',50.00,'2022-03-13 11:01:47.522283',5,14,1,0.00,63,'2022-03-13 13:01:47.521108',1,NULL,0,0,0),(64,'P-220313-13-1-4-64',50.00,'2022-03-13 11:03:04.514668',5,14,1,0.00,64,'2022-03-13 13:03:04.514213',1,NULL,0,0,0),(65,'P-220313-13-1-4-65',25.00,'2022-03-13 11:11:42.165351',5,14,1,0.00,65,'2022-03-13 13:11:42.164651',1,NULL,0,0,0),(66,'P-220321-13-1-1-66',65.00,'2022-03-21 15:52:35.430926',1,14,1,0.00,66,'2022-03-21 17:52:35.429985',1,NULL,0,0,0);
/*!40000 ALTER TABLE `inventory_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_productadjustment`
--

DROP TABLE IF EXISTS `inventory_productadjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_productadjustment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subid` int(11) NOT NULL,
  `quantity` decimal(10,3) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `date` datetime(6) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `notes` longtext,
  PRIMARY KEY (`id`),
  KEY `inventory_productadj_agent_id_35cbbd29_fk_profiles_` (`agent_id`),
  KEY `inventory_productadj_product_id_f60f478d_fk_inventory` (`product_id`),
  CONSTRAINT `inventory_productadj_agent_id_35cbbd29_fk_profiles_` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `inventory_productadj_product_id_f60f478d_fk_inventory` FOREIGN KEY (`product_id`) REFERENCES `inventory_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_productadjustment`
--

LOCK TABLES `inventory_productadjustment` WRITE;
/*!40000 ALTER TABLE `inventory_productadjustment` DISABLE KEYS */;
INSERT INTO `inventory_productadjustment` VALUES (1,1,50.000,'Return To Supplier','2020-04-06 11:10:29.545102',1,1,NULL),(2,2,7.000,'Correction','2022-03-01 19:12:36.602359',1,1,'test notes'),(3,3,5.000,'Correction','2022-03-01 19:12:55.112648',1,1,'test notes 2\r\n');
/*!40000 ALTER TABLE `inventory_productadjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_productimage`
--

DROP TABLE IF EXISTS `inventory_productimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_productimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_productima_product_id_7c2089a0_fk_inventory` (`product_id`),
  CONSTRAINT `inventory_productima_product_id_7c2089a0_fk_inventory` FOREIGN KEY (`product_id`) REFERENCES `inventory_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_productimage`
--

LOCK TABLES `inventory_productimage` WRITE;
/*!40000 ALTER TABLE `inventory_productimage` DISABLE KEYS */;
INSERT INTO `inventory_productimage` VALUES (1,'Test/products/1/download.jpg','2022-03-06 13:50:04.002121',1);
/*!40000 ALTER TABLE `inventory_productimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_productrequisition`
--

DROP TABLE IF EXISTS `inventory_productrequisition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_productrequisition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subid` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `customer_return_id` int(11) DEFAULT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  `notes` longtext,
  PRIMARY KEY (`id`),
  KEY `inventory_productreq_agent_id_840b80f1_fk_profiles_` (`agent_id`),
  KEY `inventory_productreq_company_id_1c1ce1fa_fk_profiles_` (`company_id`),
  KEY `inventory_productreq_staff_id_662e665d_fk_profiles_` (`staff_id`),
  KEY `inventory_productreq_customer_return_id_51cb5a90_fk_inventory` (`customer_return_id`),
  KEY `inventory_productreq_transfer_id_10cd8da1_fk_inventory` (`transfer_id`),
  CONSTRAINT `inventory_productreq_agent_id_840b80f1_fk_profiles_` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `inventory_productreq_company_id_1c1ce1fa_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `inventory_productreq_customer_return_id_51cb5a90_fk_inventory` FOREIGN KEY (`customer_return_id`) REFERENCES `inventory_customerreturn` (`id`),
  CONSTRAINT `inventory_productreq_staff_id_662e665d_fk_profiles_` FOREIGN KEY (`staff_id`) REFERENCES `profiles_driver` (`id`),
  CONSTRAINT `inventory_productreq_transfer_id_10cd8da1_fk_inventory` FOREIGN KEY (`transfer_id`) REFERENCES `inventory_inventorytransfer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_productrequisition`
--

LOCK TABLES `inventory_productrequisition` WRITE;
/*!40000 ALTER TABLE `inventory_productrequisition` DISABLE KEYS */;
INSERT INTO `inventory_productrequisition` VALUES (1,1,'2020-04-02 16:12:38.070736','Closed',1,1,1,NULL,NULL,NULL),(2,2,'2020-04-02 16:25:22.109824','Closed',1,1,2,NULL,1,NULL),(3,3,'2020-04-02 16:25:23.789777','Closed',1,1,2,NULL,2,NULL),(4,4,'2020-04-02 16:26:37.040618','Closed',1,1,1,NULL,3,NULL),(5,5,'2020-04-02 16:26:42.852786','Closed',1,1,1,NULL,4,NULL),(6,6,'2020-04-05 14:32:06.920827','Closed',1,1,2,NULL,NULL,NULL),(7,7,'2020-04-05 14:32:56.344624','Closed',1,1,3,NULL,5,NULL),(8,8,'2020-04-05 14:33:00.726723','Closed',1,1,3,NULL,6,NULL),(9,9,'2020-04-05 15:01:03.547810','Closed',1,1,3,NULL,7,NULL),(10,10,'2020-04-05 15:01:45.441937','Closed',1,1,2,NULL,8,NULL),(11,11,'2020-04-05 15:07:15.428983','Closed',1,1,3,NULL,9,NULL),(12,12,'2020-04-05 15:07:49.912610','Closed',1,1,3,NULL,10,NULL),(13,13,'2020-04-05 15:07:55.461392','Closed',1,1,3,NULL,11,NULL),(14,14,'2020-04-05 15:07:58.300190','Closed',1,1,3,NULL,12,NULL),(15,15,'2020-04-05 15:08:22.968259','Closed',1,1,1,NULL,13,NULL),(16,16,'2020-04-05 15:09:00.333469','Closed',1,1,3,NULL,14,NULL),(17,17,'2020-04-05 15:09:17.832004','Closed',1,1,3,NULL,15,NULL),(18,18,'2020-04-05 15:09:19.292245','Closed',1,1,3,NULL,16,NULL),(19,19,'2020-04-05 15:09:32.361298','Closed',1,1,3,NULL,17,NULL),(20,20,'2020-04-05 15:10:10.546956','Closed',1,1,1,NULL,18,NULL),(21,21,'2020-04-05 15:16:24.422515','Open',1,1,2,NULL,19,NULL),(22,22,'2020-04-05 15:16:51.690802','Open',1,1,2,NULL,20,NULL),(23,23,'2020-04-05 15:38:40.778668','Open',1,1,2,NULL,21,NULL),(24,24,'2020-04-05 15:40:20.764225','Open',1,1,2,NULL,22,NULL),(25,25,'2020-04-06 11:16:50.343350','Open',1,1,1,NULL,NULL,NULL),(26,26,'2020-04-06 11:20:49.288245','Open',1,1,1,NULL,NULL,NULL),(27,27,'2020-04-06 11:20:49.293954','Open',1,1,2,NULL,NULL,NULL),(28,28,'2020-04-06 11:20:49.304098','Open',1,1,3,NULL,NULL,NULL),(29,29,'2020-04-06 11:20:49.314240','Open',1,1,4,NULL,NULL,NULL),(30,30,'2020-04-06 11:27:01.644830','Open',1,1,1,NULL,23,NULL),(31,31,'2020-04-06 11:27:04.032874','Open',1,1,1,NULL,24,NULL),(32,32,'2020-04-06 11:27:06.587723','Open',1,1,1,NULL,25,NULL),(33,33,'2020-04-06 11:27:34.500515','Open',1,1,1,NULL,26,NULL),(34,34,'2020-04-06 16:13:30.078143','Closed',5,1,4,3,NULL,NULL),(35,35,'2020-04-06 16:49:20.828672','Open',1,1,3,NULL,27,NULL),(36,36,'2020-04-06 16:51:02.476225','Open',1,1,3,NULL,NULL,NULL),(37,37,'2020-04-06 16:56:14.200487','Closed',1,1,4,NULL,NULL,NULL),(38,38,'2020-04-06 16:56:56.771910','Closed',1,1,4,NULL,28,NULL),(39,39,'2020-04-07 12:35:49.479217','Closed',5,1,4,4,NULL,NULL),(40,40,'2020-04-07 12:36:22.955451','Closed',5,1,4,5,NULL,NULL),(41,41,'2020-04-22 13:23:17.965330','Open',5,1,4,6,NULL,NULL),(42,42,'2021-12-15 14:23:20.791780','Closed',5,1,4,7,NULL,NULL),(43,43,'2021-12-15 14:23:48.106990','Closed',5,1,4,8,NULL,NULL),(44,44,'2021-12-15 18:09:32.360965','Closed',5,1,4,11,NULL,NULL),(45,45,'2021-12-16 10:46:52.104463','Open',1,1,4,NULL,NULL,''),(46,46,'2021-12-16 13:37:52.124845','Open',5,1,4,12,NULL,NULL),(47,47,'2021-12-16 13:39:52.296346','Open',5,1,4,13,NULL,NULL),(48,48,'2021-12-16 16:57:52.845233','Open',5,1,4,14,NULL,NULL),(49,49,'2021-12-16 17:00:07.777557','Open',5,1,4,15,NULL,NULL),(50,50,'2021-12-16 17:07:23.616178','Open',5,1,4,16,NULL,NULL),(51,51,'2021-12-16 17:19:49.684246','Open',5,1,4,18,NULL,NULL),(52,52,'2021-12-19 10:21:28.400001','Open',5,1,4,19,NULL,NULL),(53,53,'2021-12-19 10:21:50.269153','Open',5,1,4,20,NULL,NULL),(54,54,'2021-12-19 10:28:23.048769','Open',5,1,4,21,NULL,NULL),(55,55,'2021-12-19 10:28:39.071240','Open',5,1,4,22,NULL,NULL),(56,56,'2021-12-19 10:34:45.757632','Open',5,1,4,23,NULL,NULL),(57,57,'2021-12-19 11:14:41.728471','Open',5,1,4,30,NULL,NULL),(58,58,'2021-12-19 11:19:49.268883','Open',5,1,4,31,NULL,NULL),(59,59,'2021-12-19 11:28:05.777286','Open',5,1,4,32,NULL,NULL),(60,60,'2021-12-19 11:36:00.072417','Open',5,1,4,33,NULL,NULL),(61,61,'2021-12-19 11:38:11.172126','Open',5,1,4,34,NULL,NULL),(62,62,'2021-12-19 11:40:42.482303','Open',5,1,4,35,NULL,NULL),(63,63,'2021-12-19 11:42:32.698314','Open',5,1,4,36,NULL,NULL),(64,64,'2021-12-19 11:52:26.288634','Open',5,1,4,37,NULL,NULL),(65,65,'2021-12-19 12:11:32.933697','Open',5,1,4,38,NULL,NULL),(66,66,'2021-12-19 12:36:29.383646','Open',5,1,4,39,NULL,NULL),(67,67,'2021-12-19 14:55:21.286901','Open',5,1,4,74,NULL,NULL),(68,68,'2021-12-19 14:57:46.868664','Open',5,1,4,75,NULL,NULL),(69,69,'2021-12-19 15:05:56.696746','Open',5,1,4,77,NULL,NULL),(70,70,'2021-12-19 15:06:15.261914','Open',5,1,4,78,NULL,NULL),(71,71,'2021-12-19 15:29:42.587266','Open',5,1,4,79,NULL,NULL),(72,72,'2021-12-19 15:30:13.039284','Open',5,1,4,80,NULL,NULL),(73,73,'2021-12-19 15:33:23.239183','Open',5,1,4,81,NULL,NULL),(74,74,'2021-12-19 15:33:44.603695','Open',5,1,4,82,NULL,NULL),(75,75,'2021-12-19 15:35:24.187948','Open',5,1,4,83,NULL,NULL),(76,76,'2021-12-19 15:43:18.296913','Open',5,1,4,84,NULL,NULL),(77,77,'2022-01-02 13:51:47.402289','Open',1,1,4,NULL,NULL,''),(78,78,'2022-03-08 11:27:15.649394','Open',5,1,4,85,NULL,NULL),(79,79,'2022-03-08 11:32:57.402477','Open',5,1,4,86,NULL,NULL),(80,80,'2022-03-09 15:33:23.061939','Open',5,1,4,88,NULL,NULL),(81,81,'2022-03-09 15:34:47.887504','Open',5,1,4,89,NULL,NULL),(82,82,'2022-03-10 12:23:01.614302','Open',1,1,1,NULL,NULL,''),(83,83,'2022-03-10 12:23:24.765415','Open',1,1,5,NULL,NULL,''),(84,84,'2022-03-10 12:24:55.148550','Open',1,1,4,NULL,NULL,''),(85,85,'2022-03-10 12:36:55.625469','Closed',5,1,4,91,NULL,NULL),(87,86,'2022-03-10 12:58:37.172195','Open',1,1,3,NULL,NULL,''),(88,87,'2022-03-10 13:31:34.684807','Open',1,1,3,NULL,29,NULL),(89,88,'2022-03-10 13:31:59.070142','Open',1,1,3,NULL,30,NULL),(90,89,'2022-03-10 13:32:40.684613','Open',1,1,3,NULL,NULL,''),(91,90,'2022-03-10 14:30:32.864800','Open',1,1,3,NULL,NULL,''),(92,91,'2022-03-10 14:35:12.642591','Open',1,1,3,NULL,NULL,''),(93,92,'2022-03-10 14:39:48.148201','Open',1,1,4,NULL,NULL,''),(94,93,'2022-03-10 14:47:05.778822','Closed',1,1,4,NULL,NULL,''),(95,94,'2022-03-10 14:47:22.174908','Open',1,1,3,NULL,NULL,''),(96,95,'2022-03-10 15:31:01.414193','Open',1,1,3,NULL,NULL,''),(97,96,'2022-03-10 15:31:58.744631','Open',1,1,1,NULL,NULL,''),(98,97,'2022-03-13 12:49:20.992459','Open',5,1,4,92,NULL,NULL),(99,98,'2022-03-13 12:50:40.510614','Open',5,1,4,93,NULL,NULL),(100,99,'2022-03-13 12:51:26.807308','Open',5,1,4,94,NULL,NULL),(101,100,'2022-03-13 13:01:47.505974','Open',5,1,4,95,NULL,NULL),(102,101,'2022-03-13 13:03:04.502741','Open',5,1,4,96,NULL,NULL),(103,102,'2022-03-13 13:11:42.150220','Open',5,1,4,97,NULL,NULL),(104,103,'2022-08-31 13:51:00.605718','Open',1,1,4,NULL,NULL,'');
/*!40000 ALTER TABLE `inventory_productrequisition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_productrequisitiondetail`
--

DROP TABLE IF EXISTS `inventory_productrequisitiondetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_productrequisitiondetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_description` longtext,
  `product_price` decimal(9,2) NOT NULL,
  `product_discount` decimal(9,2) NOT NULL,
  `original_quantity` decimal(10,3) NOT NULL,
  `product_id` int(11) NOT NULL,
  `requisition_id` int(11) NOT NULL,
  `remaining_quantity` decimal(10,3) NOT NULL,
  `returned` decimal(10,3),
  `soled` decimal(10,3),
  `product_notes` longtext,
  PRIMARY KEY (`id`),
  KEY `inventory_productreq_requisition_id_8d689c64_fk_inventory` (`requisition_id`),
  KEY `inventory_productreq_product_id_7db578d1_fk_inventory` (`product_id`),
  CONSTRAINT `inventory_productreq_product_id_7db578d1_fk_inventory` FOREIGN KEY (`product_id`) REFERENCES `inventory_products` (`id`),
  CONSTRAINT `inventory_productreq_requisition_id_8d689c64_fk_inventory` FOREIGN KEY (`requisition_id`) REFERENCES `inventory_productrequisition` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_productrequisitiondetail`
--

LOCK TABLES `inventory_productrequisitiondetail` WRITE;
/*!40000 ALTER TABLE `inventory_productrequisitiondetail` DISABLE KEYS */;
INSERT INTO `inventory_productrequisitiondetail` VALUES (1,'',5.00,0.00,20.000,1,1,0.000,10.000,0.000,NULL),(2,'',5.00,0.00,10.000,1,2,0.000,10.000,0.000,NULL),(3,'',5.00,0.00,10.000,1,3,0.000,10.000,0.000,NULL),(4,'',5.00,0.00,10.000,1,4,0.000,8.000,0.000,NULL),(5,'',5.00,0.00,10.000,1,5,0.000,3.000,0.000,NULL),(6,'',5.00,0.00,20.000,1,6,0.000,2.000,0.000,NULL),(7,'',5.00,0.00,2.000,1,7,0.000,2.000,0.000,NULL),(8,'',5.00,0.00,2.000,1,8,0.000,1.000,0.000,NULL),(9,'',5.00,0.00,10.000,1,9,0.000,6.000,0.000,NULL),(10,'',5.00,0.00,5.000,1,10,0.000,1.000,0.000,NULL),(11,'',5.00,0.00,3.000,1,11,0.000,2.000,0.000,NULL),(12,'',5.00,0.00,2.000,1,12,0.000,2.000,0.000,NULL),(13,'',5.00,0.00,2.000,1,13,0.000,2.000,0.000,NULL),(14,'',5.00,0.00,2.000,1,14,0.000,1.000,0.000,NULL),(15,'',5.00,0.00,2.000,1,15,0.000,2.000,0.000,NULL),(16,'',5.00,0.00,3.000,1,16,0.000,3.000,0.000,NULL),(17,'',5.00,0.00,3.000,1,17,0.000,3.000,0.000,NULL),(18,'',5.00,0.00,3.000,1,18,0.000,3.000,0.000,NULL),(19,'',5.00,0.00,3.000,1,19,0.000,3.000,0.000,NULL),(20,'',5.00,0.00,1.000,1,20,0.000,1.000,0.000,NULL),(21,'',5.00,0.00,3.000,1,21,3.000,0.000,0.000,NULL),(22,'',5.00,0.00,3.000,1,22,3.000,0.000,0.000,NULL),(23,'',5.00,0.00,1.000,1,23,1.000,0.000,0.000,NULL),(24,'',5.00,0.00,1.000,1,24,1.000,0.000,0.000,NULL),(25,'',25.00,0.00,20.000,2,25,20.000,0.000,0.000,NULL),(26,'',2.00,0.00,20.000,3,25,15.000,5.000,0.000,NULL),(27,'',2.00,0.00,10.000,3,26,10.000,0.000,0.000,NULL),(28,'',2.00,0.00,10.000,3,27,10.000,0.000,0.000,NULL),(29,'',2.00,0.00,10.000,3,28,10.000,0.000,0.000,NULL),(30,'',2.00,0.00,10.000,3,29,0.000,0.000,10.000,NULL),(31,'',25.00,0.00,10.000,2,26,10.000,0.000,0.000,NULL),(32,'',25.00,0.00,10.000,2,27,5.000,0.000,5.000,NULL),(33,'',25.00,0.00,10.000,2,28,10.000,0.000,0.000,NULL),(34,'',25.00,0.00,10.000,2,29,8.000,0.000,2.000,NULL),(35,'',5.00,0.00,10.000,1,26,0.000,10.000,0.000,NULL),(36,'',5.00,0.00,10.000,1,27,10.000,0.000,0.000,NULL),(37,'',5.00,0.00,10.000,1,28,9.000,1.000,0.000,NULL),(38,'',5.00,0.00,10.000,1,29,0.000,1.000,9.000,NULL),(39,'',5.00,0.00,7.000,1,30,6.000,1.000,0.000,NULL),(40,'',5.00,0.00,7.000,1,31,7.000,0.000,0.000,NULL),(41,'',5.00,0.00,7.000,1,32,7.000,0.000,0.000,NULL),(42,'',5.00,0.00,7.000,1,33,7.000,0.000,0.000,NULL),(43,'',2.00,0.00,2.000,3,34,0.000,0.000,2.000,NULL),(44,'',2.00,0.00,5.000,3,35,5.000,0.000,0.000,NULL),(45,'',25.00,0.00,7.000,2,36,7.000,0.000,0.000,NULL),(46,'',5.00,0.00,40.000,1,37,0.000,4.000,36.000,NULL),(47,'',5.00,0.00,4.000,1,38,0.000,0.000,4.000,NULL),(48,'',2.00,0.00,1.000,3,39,0.000,0.000,1.000,NULL),(49,'',5.00,0.00,2.000,1,40,0.000,0.000,2.000,NULL),(50,'',25.00,0.00,5.000,2,41,5.000,0.000,0.000,NULL),(51,'',5.00,0.00,1.000,1,42,0.000,0.000,1.000,NULL),(52,'',5.00,0.00,3.000,1,43,0.000,0.000,3.000,NULL),(53,'',2.00,0.00,2.000,3,44,0.000,0.000,2.000,NULL),(54,'',2.00,0.00,100.000,3,45,61.000,15.000,24.000,''),(55,'',2.00,0.00,2.000,3,46,2.000,0.000,0.000,NULL),(56,'',2.00,0.00,10.000,3,47,10.000,0.000,0.000,NULL),(57,'',2.00,0.00,3.000,3,48,3.000,0.000,0.000,NULL),(58,'',2.00,0.00,3.000,3,49,3.000,0.000,0.000,NULL),(59,'',2.00,0.00,1.000,3,50,1.000,0.000,0.000,NULL),(60,'',2.00,0.00,1.000,3,51,1.000,0.000,0.000,NULL),(61,'',2.00,0.00,2.000,3,52,2.000,0.000,0.000,NULL),(62,'',2.00,0.00,2.000,3,53,2.000,0.000,0.000,NULL),(63,'',2.00,0.00,2.000,3,54,2.000,0.000,0.000,NULL),(64,'',2.00,0.00,2.000,3,55,2.000,0.000,0.000,NULL),(65,'',2.00,0.00,2.000,3,56,2.000,0.000,0.000,NULL),(66,'',2.00,0.00,2.000,3,57,2.000,0.000,0.000,NULL),(67,'',2.00,0.00,2.000,3,58,2.000,0.000,0.000,NULL),(68,'',2.00,0.00,2.000,3,59,2.000,0.000,0.000,NULL),(69,'',2.00,0.00,1.000,3,60,1.000,0.000,0.000,NULL),(70,'',2.00,0.00,1.000,3,61,1.000,0.000,0.000,NULL),(71,'',2.00,0.00,1.000,3,62,1.000,0.000,0.000,NULL),(72,'',2.00,0.00,1.000,3,63,1.000,0.000,0.000,NULL),(73,'',2.00,0.00,1.000,3,64,1.000,0.000,0.000,NULL),(74,'',2.00,0.00,1.000,3,65,1.000,0.000,0.000,NULL),(75,'',2.00,0.00,1.000,3,66,1.000,0.000,0.000,NULL),(76,'',2.00,0.00,1.000,3,67,1.000,0.000,0.000,NULL),(77,'',2.00,0.00,1.000,3,68,1.000,0.000,0.000,NULL),(78,'',2.00,0.00,1.000,3,69,1.000,0.000,0.000,NULL),(79,'',2.00,0.00,1.000,3,70,1.000,0.000,0.000,NULL),(80,'',2.00,0.00,1.000,3,71,1.000,0.000,0.000,NULL),(81,'',2.00,0.00,1.000,3,72,1.000,0.000,0.000,NULL),(82,'',2.00,0.00,2.000,3,73,2.000,0.000,0.000,NULL),(83,'',5.00,0.00,1.000,1,73,0.000,0.000,1.000,NULL),(84,'',2.00,0.00,2.000,3,74,2.000,0.000,0.000,NULL),(85,'',5.00,0.00,1.000,1,74,0.000,0.000,1.000,NULL),(86,'',2.00,0.00,2.000,3,75,2.000,0.000,0.000,NULL),(87,'',5.00,0.00,1.000,1,75,0.000,0.000,1.000,NULL),(88,'',2.00,0.00,2.000,3,76,2.000,0.000,0.000,NULL),(89,'',5.00,0.00,1.000,1,76,0.000,0.000,1.000,NULL),(90,'',2.00,0.00,10.000,3,77,10.000,0.000,0.000,''),(91,'',25.00,0.00,5.000,2,78,5.000,0.000,0.000,NULL),(92,'',25.00,0.00,5.000,2,79,5.000,0.000,0.000,NULL),(93,'',25.00,0.00,5.000,2,80,5.000,0.000,0.000,NULL),(94,'',5.00,0.00,1.000,3,80,1.000,0.000,0.000,NULL),(95,'',25.00,0.00,5.000,2,81,5.000,0.000,0.000,NULL),(96,'',5.00,0.00,1.000,3,81,1.000,0.000,0.000,NULL),(97,'',20.00,0.00,50.000,1,82,50.000,0.000,0.000,''),(98,'',20.00,0.00,30.000,1,83,30.000,0.000,0.000,''),(99,'',25.00,0.00,10.000,2,84,10.000,0.000,0.000,''),(100,'',20.00,0.00,1.000,1,85,0.000,0.000,1.000,NULL),(101,'',20.00,0.00,50.000,1,87,50.000,0.000,0.000,''),(102,'',20.00,0.00,5.000,1,88,5.000,0.000,0.000,NULL),(103,'',5.00,0.00,15.000,3,89,15.000,0.000,0.000,NULL),(104,'',20.00,0.00,10.000,1,90,10.000,0.000,0.000,''),(105,'',20.00,0.00,10.000,1,91,10.000,0.000,0.000,''),(106,'',20.00,0.00,10.000,1,92,10.000,0.000,0.000,''),(107,'',20.00,0.00,15.000,1,93,0.000,0.000,15.000,''),(108,'',25.00,0.00,6.000,2,93,6.000,0.000,0.000,''),(109,'',20.00,0.00,15.000,1,94,0.000,0.000,15.000,''),(110,'',20.00,0.00,3.000,1,95,3.000,0.000,0.000,''),(111,'',20.00,0.00,10.000,1,96,10.000,0.000,0.000,''),(112,'',5.00,0.00,12.000,3,97,12.000,0.000,0.000,''),(113,'',25.00,0.00,5.000,2,98,5.000,0.000,0.000,NULL),(114,'',25.00,0.00,2.000,2,99,2.000,0.000,0.000,NULL),(115,'',25.00,0.00,2.000,2,100,2.000,0.000,0.000,NULL),(116,'',25.00,0.00,2.000,2,101,2.000,0.000,0.000,NULL),(117,'',25.00,0.00,2.000,2,102,2.000,0.000,0.000,NULL),(118,'',25.00,0.00,1.000,2,103,1.000,0.000,0.000,NULL),(119,'',20.00,3.00,5.000,1,104,5.000,0.000,0.000,'');
/*!40000 ALTER TABLE `inventory_productrequisitiondetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_products`
--

DROP TABLE IF EXISTS `inventory_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barcode` varchar(200) DEFAULT NULL,
  `product_code` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `quantity_in_stock` decimal(10,3) NOT NULL,
  `quantity_on_hold` decimal(10,3) NOT NULL,
  `expire_date` date DEFAULT NULL,
  `unit_price` decimal(9,2) DEFAULT NULL,
  `vendor` varchar(100) DEFAULT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `discount` decimal(9,2) NOT NULL,
  `category_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `tax` decimal(9,2) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `avg_purchase_price` decimal(10,3) NOT NULL,
  `quantity_purchased` decimal(10,3) NOT NULL,
  `on_portal` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_products_company_id_d7fe1a42_fk_profiles_company_id` (`company_id`),
  KEY `inventory_products_category_id_00a71f2b_fk_inventory_category_id` (`category_id`),
  CONSTRAINT `inventory_products_category_id_00a71f2b_fk_inventory_category_id` FOREIGN KEY (`category_id`) REFERENCES `inventory_category` (`id`),
  CONSTRAINT `inventory_products_company_id_d7fe1a42_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_products`
--

LOCK TABLES `inventory_products` WRITE;
/*!40000 ALTER TABLE `inventory_products` DISABLE KEYS */;
INSERT INTO `inventory_products` VALUES (1,'111','P-1','jelly cola','',0.000,0.000,NULL,20.00,NULL,NULL,3.00,1,1,0.00,'2020-04-01 12:40:42.083471','2022-03-30 14:34:06.060429',28.292,480.000,0),(2,'222','P-3','Fairy','',0.000,0.000,NULL,25.00,NULL,NULL,0.00,2,1,0.00,'2020-04-02 16:54:25.102214','2022-03-21 17:44:49.851174',0.000,0.000,0),(3,'6222001180145',NULL,'Luxe','',0.000,0.000,NULL,5.00,NULL,NULL,0.00,1,1,0.00,'2020-04-06 11:05:32.000000','2021-12-20 16:21:51.504144',2.938,80.000,0);
/*!40000 ALTER TABLE `inventory_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_productupdatelog`
--

DROP TABLE IF EXISTS `inventory_productupdatelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_productupdatelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `old_name` varchar(100) NOT NULL,
  `new_name` varchar(100) NOT NULL,
  `old_category` varchar(100) NOT NULL,
  `new_category` varchar(100) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_productupd_agent_id_dccd4bd7_fk_profiles_` (`agent_id`),
  KEY `inventory_productupd_product_id_33cae73e_fk_inventory` (`product_id`),
  CONSTRAINT `inventory_productupd_agent_id_dccd4bd7_fk_profiles_` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `inventory_productupd_product_id_33cae73e_fk_inventory` FOREIGN KEY (`product_id`) REFERENCES `inventory_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_productupdatelog`
--

LOCK TABLES `inventory_productupdatelog` WRITE;
/*!40000 ALTER TABLE `inventory_productupdatelog` DISABLE KEYS */;
INSERT INTO `inventory_productupdatelog` VALUES (1,'2021-12-20 13:12:40.600386','','','Sweets','Sweets',1,1),(2,'2021-12-20 13:12:49.230376','','','Sweets','Sweets',1,3),(3,'2021-12-20 13:12:54.807905','','','Detergents','Detergents',1,2),(4,'2022-03-21 17:36:37.642233','','','Sweets','Sweets',1,1),(5,'2022-03-21 17:44:49.835846','','','Detergents','Detergents',1,2),(6,'2022-03-30 14:34:05.964753','','','Sweets','Sweets',1,1);
/*!40000 ALTER TABLE `inventory_productupdatelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_quotation`
--

DROP TABLE IF EXISTS `inventory_quotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_quotation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quotation_number` varchar(100) DEFAULT NULL,
  `date` datetime(6) NOT NULL,
  `amount` decimal(9,2) DEFAULT NULL,
  `discount` decimal(5,2) NOT NULL,
  `tax` decimal(9,2) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `last_updated` datetime(6) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `valid_through` date DEFAULT NULL,
  `notes` longtext,
  `staff_notes` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `quotation_number` (`quotation_number`),
  KEY `inventory_quotation_agent_id_4721af84_fk_profiles_agent_id` (`agent_id`),
  KEY `inventory_quotation_customer_id_f1e9df84_fk_profiles_customer_id` (`customer_id`),
  CONSTRAINT `inventory_quotation_agent_id_4721af84_fk_profiles_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `inventory_quotation_customer_id_f1e9df84_fk_profiles_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `profiles_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_quotation`
--

LOCK TABLES `inventory_quotation` WRITE;
/*!40000 ALTER TABLE `inventory_quotation` DISABLE KEYS */;
INSERT INTO `inventory_quotation` VALUES (1,'Q-200402-1-1-1-1','2020-04-02 14:44:47.091903',8000.00,0.00,0.00,'Sent',1,'2020-04-02 16:44:47.091630','2020-04-02 14:44:47.120781',1,1,'2020-04-02','',NULL),(2,'Q-200406-1-3-1-2','2020-04-06 09:33:53.194210',35.00,0.00,0.00,'Sent',2,'2020-04-06 11:33:53.193970','2020-04-06 09:33:53.196972',1,3,'2020-04-06','',NULL),(3,'Q-200406-1-4-1-3','2020-04-06 09:34:26.983416',192.00,0.00,0.00,'Sent',3,'2020-04-06 11:34:26.983136','2020-04-06 09:34:26.986392',1,4,'2020-04-06','',NULL),(4,'Q-200407-1-8-1-4','2020-04-07 09:23:48.633707',2012814.00,0.00,0.00,'Sent',4,'2020-04-07 11:23:48.633420','2020-04-07 09:23:48.636959',1,8,'2020-04-07','',NULL),(5,'Q-200422-1-5-4-5','2020-04-22 11:22:03.210731',125.00,0.00,0.00,'Sent',5,'2020-04-22 13:22:03.210446','2020-04-22 11:22:03.231443',5,5,'2020-05-07','hhhhh',NULL);
/*!40000 ALTER TABLE `inventory_quotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_quotationdetail`
--

DROP TABLE IF EXISTS `inventory_quotationdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_quotationdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_price` decimal(9,2) NOT NULL,
  `quantity` decimal(10,3) NOT NULL,
  `product_discount` decimal(10,5) NOT NULL,
  `tax_product` decimal(10,2) NOT NULL,
  `final_price` decimal(9,2) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `quotation_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_quotationd_quotation_id_54a96b20_fk_inventory` (`quotation_id`),
  KEY `inventory_quotationd_product_id_d09af0cf_fk_inventory` (`product_id`),
  CONSTRAINT `inventory_quotationd_product_id_d09af0cf_fk_inventory` FOREIGN KEY (`product_id`) REFERENCES `inventory_products` (`id`),
  CONSTRAINT `inventory_quotationd_quotation_id_54a96b20_fk_inventory` FOREIGN KEY (`quotation_id`) REFERENCES `inventory_quotation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_quotationdetail`
--

LOCK TABLES `inventory_quotationdetail` WRITE;
/*!40000 ALTER TABLE `inventory_quotationdetail` DISABLE KEYS */;
INSERT INTO `inventory_quotationdetail` VALUES (1,4.00,2000.000,0.00000,0.00,8000.00,1,1),(2,5.00,7.000,0.00000,0.00,35.00,1,2),(3,2.00,8.000,0.00000,0.00,16.00,3,3),(4,2.00,88.000,0.00000,0.00,176.00,3,3),(5,2.00,1005888.000,0.00000,0.00,2011776.00,3,4),(6,2.00,444.000,0.00000,0.00,888.00,3,4),(7,25.00,4.000,0.00000,0.00,100.00,2,4),(8,5.00,10.000,0.00000,0.00,50.00,1,4),(9,25.00,5.000,0.00000,0.00,125.00,2,5);
/*!40000 ALTER TABLE `inventory_quotationdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_requestproduct`
--

DROP TABLE IF EXISTS `inventory_requestproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_requestproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `notes` longtext,
  PRIMARY KEY (`id`),
  KEY `inventory_requestpro_company_id_ce092c60_fk_profiles_` (`company_id`),
  KEY `inventory_requestproduct_agent_id_e55ef50a_fk_profiles_agent_id` (`agent_id`),
  CONSTRAINT `inventory_requestpro_company_id_ce092c60_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `inventory_requestproduct_agent_id_e55ef50a_fk_profiles_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_requestproduct`
--

LOCK TABLES `inventory_requestproduct` WRITE;
/*!40000 ALTER TABLE `inventory_requestproduct` DISABLE KEYS */;
INSERT INTO `inventory_requestproduct` VALUES (1,1,1,1,'2020-04-01 12:46:26.703918',NULL),(2,1,1,2,'2020-04-06 11:16:11.306169',NULL),(3,1,1,3,'2021-12-16 13:39:24.368954',''),(4,1,1,4,'2022-03-06 15:17:05.452984',''),(5,1,1,5,'2022-03-06 15:17:47.779848',''),(6,1,1,6,'2022-03-06 15:17:59.940380',''),(7,1,1,7,'2022-03-07 12:12:44.517913',''),(8,1,1,8,'2022-03-07 12:14:02.365487',''),(9,1,1,9,'2022-03-08 12:46:06.590739',''),(10,1,1,10,'2022-03-08 13:13:54.757728',''),(11,1,1,11,'2022-03-09 13:29:11.022719',''),(12,1,1,12,'2022-03-10 16:48:22.006405','');
/*!40000 ALTER TABLE `inventory_requestproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_return`
--

DROP TABLE IF EXISTS `inventory_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_return` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` decimal(10,3) NOT NULL,
  `date` datetime(6) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `detail_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `requisition_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `subid` int(11) NOT NULL,
  `bulk_return_id` int(11) DEFAULT NULL,
  `notes` longtext,
  `transfer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_return_agent_id_19cb3ee2_fk_profiles_agent_id` (`agent_id`),
  KEY `inventory_return_company_id_291d6139_fk_profiles_company_id` (`company_id`),
  KEY `inventory_return_detail_id_fbad910d_fk_inventory` (`detail_id`),
  KEY `inventory_return_product_id_5328060d_fk_inventory_products_id` (`product_id`),
  KEY `inventory_return_requisition_id_ecbca297_fk_inventory` (`requisition_id`),
  KEY `inventory_return_staff_id_158e6ab4_fk_profiles_driver_id` (`staff_id`),
  KEY `inventory_return_bulk_return_id_ce5f1db6_fk_inventory` (`bulk_return_id`),
  KEY `inventory_return_transfer_id_0176377e_fk_inventory` (`transfer_id`),
  CONSTRAINT `inventory_return_agent_id_19cb3ee2_fk_profiles_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `inventory_return_bulk_return_id_ce5f1db6_fk_inventory` FOREIGN KEY (`bulk_return_id`) REFERENCES `inventory_bulkreturn` (`id`),
  CONSTRAINT `inventory_return_company_id_291d6139_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `inventory_return_detail_id_fbad910d_fk_inventory` FOREIGN KEY (`detail_id`) REFERENCES `inventory_productrequisitiondetail` (`id`),
  CONSTRAINT `inventory_return_product_id_5328060d_fk_inventory_products_id` FOREIGN KEY (`product_id`) REFERENCES `inventory_products` (`id`),
  CONSTRAINT `inventory_return_requisition_id_ecbca297_fk_inventory` FOREIGN KEY (`requisition_id`) REFERENCES `inventory_productrequisition` (`id`),
  CONSTRAINT `inventory_return_staff_id_158e6ab4_fk_profiles_driver_id` FOREIGN KEY (`staff_id`) REFERENCES `profiles_driver` (`id`),
  CONSTRAINT `inventory_return_transfer_id_0176377e_fk_inventory` FOREIGN KEY (`transfer_id`) REFERENCES `inventory_inventorytransfer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_return`
--

LOCK TABLES `inventory_return` WRITE;
/*!40000 ALTER TABLE `inventory_return` DISABLE KEYS */;
INSERT INTO `inventory_return` VALUES (1,10.000,'2020-04-02 16:25:22.065793',1,1,1,1,1,1,1,NULL,NULL,NULL),(2,10.000,'2020-04-02 16:25:23.711213',1,1,1,1,1,1,2,NULL,NULL,NULL),(3,10.000,'2020-04-02 16:26:36.979877',1,1,2,1,2,2,3,NULL,NULL,NULL),(4,10.000,'2020-04-02 16:26:42.762879',1,1,3,1,3,2,4,NULL,NULL,NULL),(5,2.000,'2020-04-02 16:29:49.384474',1,1,4,1,4,1,5,NULL,NULL,NULL),(6,2.000,'2020-04-05 14:32:56.294448',1,1,6,1,6,2,6,NULL,NULL,NULL),(7,2.000,'2020-04-05 14:33:00.677324',1,1,6,1,6,2,7,NULL,NULL,NULL),(8,10.000,'2020-04-05 15:01:03.434342',1,1,4,1,4,1,8,NULL,NULL,NULL),(9,2.000,'2020-04-05 15:01:03.495275',1,1,5,1,5,1,9,NULL,NULL,NULL),(10,5.000,'2020-04-05 15:01:45.402007',1,1,5,1,5,1,10,NULL,NULL,NULL),(11,3.000,'2020-04-05 15:07:15.370488',1,1,5,1,5,1,11,NULL,NULL,NULL),(12,2.000,'2020-04-05 15:07:49.863303',1,1,6,1,6,2,12,NULL,NULL,NULL),(13,2.000,'2020-04-05 15:07:55.422672',1,1,6,1,6,2,13,NULL,NULL,NULL),(14,2.000,'2020-04-05 15:07:58.250844',1,1,6,1,6,2,14,NULL,NULL,NULL),(15,2.000,'2020-04-05 15:08:22.919202',1,1,6,1,6,2,15,NULL,NULL,NULL),(16,3.000,'2020-04-05 15:09:00.295057',1,1,6,1,6,2,16,NULL,NULL,NULL),(17,3.000,'2020-04-05 15:09:17.782756',1,1,6,1,6,2,17,NULL,NULL,NULL),(18,3.000,'2020-04-05 15:09:19.192238',1,1,6,1,6,2,18,NULL,NULL,NULL),(19,1.000,'2020-04-05 15:09:19.251899',1,1,10,1,10,2,19,NULL,NULL,NULL),(20,3.000,'2020-04-05 15:09:32.322035',1,1,10,1,10,2,20,NULL,NULL,NULL),(21,1.000,'2020-04-05 15:10:10.488295',1,1,10,1,10,2,21,NULL,NULL,NULL),(22,3.000,'2020-04-05 15:16:24.051755',1,1,7,1,7,3,22,NULL,NULL,NULL),(23,1.000,'2020-04-05 15:16:24.381957',1,1,8,1,8,3,23,NULL,NULL,NULL),(24,3.000,'2020-04-05 15:16:51.590707',1,1,8,1,8,3,24,NULL,NULL,NULL),(25,2.000,'2020-04-05 15:16:51.639862',1,1,9,1,9,3,25,NULL,NULL,NULL),(26,1.000,'2020-04-05 15:38:40.729720',1,1,9,1,9,3,26,NULL,NULL,NULL),(27,1.000,'2020-04-05 15:40:20.724684',1,1,9,1,9,3,27,NULL,NULL,NULL),(28,10.000,'2020-04-06 11:21:42.633059',1,1,35,1,26,1,28,NULL,NULL,NULL),(29,7.000,'2020-04-06 11:27:01.543683',1,1,9,1,9,3,29,NULL,NULL,NULL),(30,1.000,'2020-04-06 11:27:01.603580',1,1,11,1,11,3,30,NULL,NULL,NULL),(31,7.000,'2020-04-06 11:27:03.831959',1,1,11,1,11,3,31,NULL,NULL,NULL),(32,5.000,'2020-04-06 11:27:03.891197',1,1,12,1,12,3,32,NULL,NULL,NULL),(33,3.000,'2020-04-06 11:27:03.941961',1,1,13,1,13,3,33,NULL,NULL,NULL),(34,1.000,'2020-04-06 11:27:03.992079',1,1,14,1,14,3,34,NULL,NULL,NULL),(35,7.000,'2020-04-06 11:27:06.426717',1,1,14,1,14,3,35,NULL,NULL,NULL),(36,6.000,'2020-04-06 11:27:06.475991',1,1,16,1,16,3,36,NULL,NULL,NULL),(37,3.000,'2020-04-06 11:27:06.537781',1,1,17,1,17,3,37,NULL,NULL,NULL),(38,7.000,'2020-04-06 11:27:34.352232',1,1,18,1,18,3,38,NULL,NULL,NULL),(39,4.000,'2020-04-06 11:27:34.401799',1,1,19,1,19,3,39,NULL,NULL,NULL),(40,1.000,'2020-04-06 11:27:34.458570',1,1,37,1,28,3,40,NULL,NULL,NULL),(41,5.000,'2020-04-06 16:49:20.789404',1,1,26,3,25,1,41,NULL,NULL,NULL),(42,4.000,'2020-04-06 16:56:56.630305',1,1,15,1,15,1,42,NULL,NULL,NULL),(43,2.000,'2020-04-06 16:56:56.679580',1,1,20,1,20,1,43,NULL,NULL,NULL),(44,1.000,'2020-04-06 16:56:56.730720',1,1,39,1,30,1,44,NULL,NULL,NULL),(45,1.000,'2022-03-10 13:31:34.638589',1,1,38,1,29,4,45,NULL,NULL,NULL),(46,4.000,'2022-03-10 13:31:34.678554',1,1,46,1,37,4,46,NULL,NULL,NULL),(47,15.000,'2022-03-10 13:31:59.066366',1,1,54,3,45,4,47,NULL,NULL,NULL);
/*!40000 ALTER TABLE `inventory_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_segmentproductlog`
--

DROP TABLE IF EXISTS `inventory_segmentproductlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_segmentproductlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `old_price` decimal(9,2) DEFAULT NULL,
  `new_price` decimal(9,2) DEFAULT NULL,
  `old_discount` decimal(10,5) DEFAULT NULL,
  `new_discount` decimal(10,5) DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `segment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_segmentpro_agent_id_781779ea_fk_profiles_` (`agent_id`),
  KEY `inventory_segmentpro_product_id_f4914c8c_fk_inventory` (`product_id`),
  KEY `inventory_segmentpro_segment_id_982c3f25_fk_inventory` (`segment_id`),
  CONSTRAINT `inventory_segmentpro_agent_id_781779ea_fk_profiles_` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `inventory_segmentpro_product_id_f4914c8c_fk_inventory` FOREIGN KEY (`product_id`) REFERENCES `inventory_products` (`id`),
  CONSTRAINT `inventory_segmentpro_segment_id_982c3f25_fk_inventory` FOREIGN KEY (`segment_id`) REFERENCES `inventory_customerpricesegment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_segmentproductlog`
--

LOCK TABLES `inventory_segmentproductlog` WRITE;
/*!40000 ALTER TABLE `inventory_segmentproductlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_segmentproductlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_staffinventory`
--

DROP TABLE IF EXISTS `inventory_staffinventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_staffinventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_description` longtext,
  `product_price` decimal(9,2) NOT NULL,
  `product_discount` decimal(9,2) NOT NULL,
  `product_quantity` decimal(10,3) NOT NULL,
  `product_barcode` varchar(200) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `_product_quantity` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_staffinven_company_id_d6794118_fk_profiles_` (`company_id`),
  KEY `inventory_staffinven_product_id_bda41291_fk_inventory` (`product_id`),
  KEY `inventory_staffinven_product_category_id_7d819f50_fk_inventory` (`product_category_id`),
  KEY `inventory_staffinventory_staff_id_975c31eb_fk_profiles_driver_id` (`staff_id`),
  CONSTRAINT `inventory_staffinven_company_id_d6794118_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `inventory_staffinven_product_category_id_7d819f50_fk_inventory` FOREIGN KEY (`product_category_id`) REFERENCES `inventory_category` (`id`),
  CONSTRAINT `inventory_staffinven_product_id_bda41291_fk_inventory` FOREIGN KEY (`product_id`) REFERENCES `inventory_products` (`id`),
  CONSTRAINT `inventory_staffinventory_staff_id_975c31eb_fk_profiles_driver_id` FOREIGN KEY (`staff_id`) REFERENCES `profiles_driver` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_staffinventory`
--

LOCK TABLES `inventory_staffinventory` WRITE;
/*!40000 ALTER TABLE `inventory_staffinventory` DISABLE KEYS */;
INSERT INTO `inventory_staffinventory` VALUES (1,'',20.00,0.00,77.000,NULL,1,1,1,1,1,0.01),(2,'',5.00,0.00,18.000,NULL,1,1,1,2,2,0.01),(3,'',20.00,0.00,107.000,NULL,1,1,1,3,3,0.01),(4,'',25.00,0.00,30.000,NULL,1,2,2,1,4,0.01),(5,'',5.00,0.00,37.000,'6222001180145',1,3,1,1,5,0.01),(6,'',2.00,0.00,10.000,'6222001180145',1,3,1,2,6,0.01),(7,'',5.00,0.00,30.000,'6222001180145',1,3,1,3,7,0.01),(8,'',2.00,0.00,130.000,'6222001180145',1,3,1,4,8,0.01),(9,'',25.00,0.00,5.000,NULL,1,2,2,2,9,0.01),(10,'',25.00,0.00,17.000,NULL,1,2,2,3,10,0.01),(11,'',25.00,0.00,63.000,NULL,1,2,2,4,11,0.01),(12,'',20.00,3.00,5.000,'111',1,1,1,4,12,0.01),(13,'',20.00,0.00,30.000,NULL,1,1,1,5,13,0.01);
/*!40000 ALTER TABLE `inventory_staffinventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_staffinventoryproductlog`
--

DROP TABLE IF EXISTS `inventory_staffinventoryproductlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_staffinventoryproductlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `old_price` decimal(9,2) DEFAULT NULL,
  `new_price` decimal(9,2) DEFAULT NULL,
  `old_discount` decimal(10,5) DEFAULT NULL,
  `new_discount` decimal(10,5) DEFAULT NULL,
  `agent_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_staffinven_agent_id_3ca8a930_fk_profiles_` (`agent_id`),
  KEY `inventory_staffinven_inventory_id_6f6653ed_fk_inventory` (`inventory_id`),
  CONSTRAINT `inventory_staffinven_agent_id_3ca8a930_fk_profiles_` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `inventory_staffinven_inventory_id_6f6653ed_fk_inventory` FOREIGN KEY (`inventory_id`) REFERENCES `inventory_staffinventory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_staffinventoryproductlog`
--

LOCK TABLES `inventory_staffinventoryproductlog` WRITE;
/*!40000 ALTER TABLE `inventory_staffinventoryproductlog` DISABLE KEYS */;
INSERT INTO `inventory_staffinventoryproductlog` VALUES (1,'2022-03-30 14:40:20.873763',20.00,20.00,0.00000,1.00000,1,12);
/*!40000 ALTER TABLE `inventory_staffinventoryproductlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages_config_messagesconfig`
--

DROP TABLE IF EXISTS `messages_config_messagesconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages_config_messagesconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(5) NOT NULL,
  `template` longtext NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `messages_config_messagesconfig_name_company_id_2bd77744_uniq` (`name`,`company_id`),
  KEY `messages_config_mess_company_id_ed572c7d_fk_profiles_` (`company_id`),
  KEY `messages_config_messagesconfig_name_f3acd6ce` (`name`),
  CONSTRAINT `messages_config_mess_company_id_ed572c7d_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages_config_messagesconfig`
--

LOCK TABLES `messages_config_messagesconfig` WRITE;
/*!40000 ALTER TABLE `messages_config_messagesconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages_config_messagesconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_accesstoken`
--

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth2_provider_accesstoken_token_8af090f8_uniq` (`token`),
  KEY `oauth2_provider_acce_user_id_6e4c9a65_fk_profiles_` (`user_id`),
  KEY `oauth2_provider_accesstoken_application_id_b22886e1_fk` (`application_id`),
  CONSTRAINT `oauth2_provider_acce_user_id_6e4c9a65_fk_profiles_` FOREIGN KEY (`user_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `oauth2_provider_accesstoken_application_id_b22886e1_fk` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'fCt8VcKfqLaJM9cHc0Q3iHZVR2uYB1','2020-04-06 22:16:40.080561','read write',1,3,'2020-04-06 12:16:40.081134','2020-04-06 12:16:40.081153'),(2,'uKWsAhu1MeyhN8URcJ73J3UrhOdo4U','2020-04-06 23:01:51.940682','read write',1,5,'2020-04-06 13:01:51.941264','2020-04-06 13:01:51.941282'),(3,'HueG5T373GjlS1yzq8APOPVtj0YGGD','2020-04-06 23:23:18.490510','read write',1,5,'2020-04-06 13:23:18.491098','2020-04-06 13:23:18.491116'),(4,'nocM5YttuurDffZ1oM2C5cQluR3FAn','2020-04-07 00:04:44.663507','read write',1,5,'2020-04-06 14:04:44.664089','2020-04-06 14:04:44.664107'),(5,'cV8wn16cQCoJQJbrDXfY4SzCG7ShOw','2020-04-07 00:57:46.350825','read write',1,5,'2020-04-06 14:57:46.351478','2020-04-06 14:57:46.351495'),(6,'cnSZ1VXVnVjB91w67tTPP9oKsMBfFt','2020-04-07 20:19:01.221782','read write',1,5,'2020-04-07 10:19:01.222340','2020-04-07 10:19:01.222358'),(7,'tYC7Jt8g4ScotVypJdHkgpKjgFh2yX','2020-04-07 20:19:12.746765','read write',1,5,'2020-04-07 10:19:12.747337','2020-04-07 10:19:12.747355'),(8,'aE5sJ3wwmPP296YWen0u4oW00vXMiE','2020-04-07 20:38:28.428510','read write',1,5,'2020-04-07 10:38:28.428944','2020-04-07 10:38:28.428962'),(9,'MLOE14RBFhpGSsgdUL1bQ8CkBMlELc','2020-04-08 20:49:19.344307','read write',1,5,'2020-04-08 10:49:19.344734','2020-04-08 10:49:19.344751'),(10,'LdciPvO927oOL5CDaBYsi56CcMVkYD','2020-04-08 22:17:17.158192','read write',1,5,'2020-04-08 12:17:17.158794','2020-04-08 12:17:17.158812'),(11,'q8Xn2Dbf1kxsn9lGn33k7hIY13vL8X','2020-04-09 00:33:32.841915','read write',1,5,'2020-04-08 14:33:32.842397','2020-04-08 14:33:32.842420'),(12,'qYbk1y46FRwdvMqVHLHirTD2MXro67','2020-04-09 00:33:45.916590','read write',1,5,'2020-04-08 14:33:45.917084','2020-04-08 14:33:45.917101'),(13,'hMpwgpYAqW0zjFJKmjI6TMLRluvlW8','2020-04-09 00:38:49.209454','read write',1,5,'2020-04-08 14:38:49.209976','2020-04-08 14:38:49.209995'),(14,'uSGeJzPO8oaYv98d49hxLPoxqItzXh','2020-04-09 00:46:53.282537','read write',1,5,'2020-04-08 14:46:53.282949','2020-04-08 14:46:53.282967'),(15,'AefG1Fto1SB0EkMCGvfFhnPoO9mqki','2020-04-21 20:43:03.464484','read write',1,5,'2020-04-21 10:43:03.465027','2020-04-21 10:43:03.465045'),(16,'Dk2IzlUwuL2Tapeulx9deOSixSDrGw','2020-04-21 20:43:16.983911','read write',1,5,'2020-04-21 10:43:16.984450','2020-04-21 10:43:16.984467'),(17,'l2p2wfzQY9hzQyGjeK6UU9xyGtTOQd','2020-04-21 20:43:31.526533','read write',1,5,'2020-04-21 10:43:31.526944','2020-04-21 10:43:31.526962'),(18,'8X1yBH9SYHBCjZz4bfbnUgG1cBy1Nx','2020-04-21 20:43:51.643494','read write',1,5,'2020-04-21 10:43:51.644041','2020-04-21 10:43:51.644059'),(19,'QIfLFLNUxMscmcSEVmgmxCIS93VaEJ','2020-04-21 21:08:04.961244','read write',1,5,'2020-04-21 11:08:04.961648','2020-04-21 11:08:04.961666'),(20,'OyRricy4vM3FBMIZBhAiFPJeg8yz8c','2020-04-21 21:08:18.579559','read write',1,5,'2020-04-21 11:08:18.579977','2020-04-21 11:08:18.579995'),(21,'bpxbzWOKN5obZAHWOy6PtFEABlLqOA','2020-04-22 11:06:56.670805','read write',1,3,'2020-04-22 01:06:56.671208','2020-04-22 01:06:56.671226'),(22,'rnYAbVrevtkcpeTxBKwHHUvdZBCIQS','2020-04-22 11:14:26.223674','read write',1,3,'2020-04-22 01:14:26.224097','2020-04-22 01:14:26.224114'),(23,'Sik722zjUwGcTXpmH3XcmZYkJmsj24','2020-04-22 17:08:34.833602','read write',1,5,'2020-04-22 07:08:34.834012','2020-04-22 07:08:34.834030'),(24,'IIv6qg0r2mA7PMbZQrWr2U4phuDSfO','2020-04-22 17:38:57.057321','read write',1,3,'2020-04-22 07:38:57.057724','2020-04-22 07:38:57.057742'),(25,'DpZ0ebnToJvDRhtVewj3Y3FBrfXNTr','2020-04-22 17:49:49.546955','read write',1,5,'2020-04-22 07:49:49.547355','2020-04-22 07:49:49.547374'),(26,'X5LuCFiz5M6YEhjILcR1aEJn1oVTJo','2020-04-22 17:49:54.419165','read write',1,5,'2020-04-22 07:49:54.419591','2020-04-22 07:49:54.419608'),(27,'OaGsaDN1WI5lVJzgwKQ6pl27AIzoKA','2020-04-22 17:50:10.650687','read write',1,5,'2020-04-22 07:50:10.651096','2020-04-22 07:50:10.651113'),(28,'0XGXIFr4Z7OM1KjfwpvxVhiVH7dL8L','2020-04-22 17:50:43.205141','read write',1,2,'2020-04-22 07:50:43.205562','2020-04-22 07:50:43.205579'),(29,'BglY5Txy5J12MVUDMCqrSgWNA38V8o','2020-04-22 17:51:02.963550','read write',1,2,'2020-04-22 07:51:02.963972','2020-04-22 07:51:02.963990'),(30,'yOE7kIO0ZOiibmGJSSXmgTnMHvXOmh','2020-04-22 21:18:47.109419','read write',1,3,'2020-04-22 11:18:47.109830','2020-04-22 11:18:47.109848'),(31,'SsI2GG1tYjFakeYYKvj6RWfDfDnH26','2020-04-22 21:20:52.964526','read write',1,5,'2020-04-22 11:20:52.964953','2020-04-22 11:20:52.964970'),(32,'dJt9Q4O5955yZs1FgYNXMnyurjMcae','2020-04-22 21:37:10.460596','read write',1,3,'2020-04-22 11:37:10.461004','2020-04-22 11:37:10.461021'),(33,'Po92Anm8AnjpKegIdP4HayUG0pIV44','2020-04-22 21:39:23.914731','read write',1,3,'2020-04-22 11:39:23.915146','2020-04-22 11:39:23.915163'),(34,'NbL3I2SPtfOI4uKqSvKWecZL9YQ0b9','2020-04-22 21:39:51.863985','read write',1,3,'2020-04-22 11:39:51.864403','2020-04-22 11:39:51.864421'),(35,'tvCDlQzX7s8jePzxNqTlqt1twSdkvD','2020-04-22 21:40:09.456601','read write',1,3,'2020-04-22 11:40:09.457008','2020-04-22 11:40:09.457025'),(36,'nOqwGz2h8LgyHWhvehVHOOHlbHfPPC','2020-04-22 21:46:26.875616','read write',1,5,'2020-04-22 11:46:26.876029','2020-04-22 11:46:26.876051'),(37,'NOYoUTIMQ70irHUKVO5BnRVl9sAjzk','2020-04-22 21:55:27.784655','read write',1,3,'2020-04-22 11:55:27.785066','2020-04-22 11:55:27.785084'),(38,'BPqOM6PEgvoyl20WuPllRQ6MaXNNXL','2020-04-22 21:56:20.514591','read write',1,3,'2020-04-22 11:56:20.515010','2020-04-22 11:56:20.515028'),(39,'Opi3762YoTKbyQ61I2wLjQ3lASgvfx','2020-04-22 22:21:33.966863','read write',1,5,'2020-04-22 12:21:33.967283','2020-04-22 12:21:33.967301'),(40,'k4guqkeJweswIZus7qUnVoBXdTQqFU','2020-04-22 22:26:01.110069','read write',1,5,'2020-04-22 12:26:01.110842','2020-04-22 12:26:01.110860'),(41,'Dh0uvSaT1TPEKDrzUVKdyTIYLEQybH','2020-04-22 22:26:17.792860','read write',1,5,'2020-04-22 12:26:17.793268','2020-04-22 12:26:17.793286'),(42,'SV7I0wMTt6kDjUnAwt27DAlP34uO5A','2020-04-22 22:26:29.251202','read write',1,5,'2020-04-22 12:26:29.251621','2020-04-22 12:26:29.251651'),(43,'CCK5jYNZ1LhEdnzFBCEyxuWzoZR2Qr','2020-04-22 23:41:31.274310','read write',1,5,'2020-04-22 13:41:31.274727','2020-04-22 13:41:31.274745'),(44,'9gSVcRhphGnA13pB5mRLupar2PGiPp','2020-04-22 23:53:49.642251','read write',1,5,'2020-04-22 13:53:49.642659','2020-04-22 13:53:49.642677'),(45,'biYWZ8viCuvYJcF5V9OmrxlhpLRXTe','2020-04-23 04:29:16.164165','read write',1,5,'2020-04-22 18:29:16.164582','2020-04-22 18:29:16.164600'),(46,'RzkbJ9tVY9yseco0mcB3yQOtlLfIXZ','2020-05-12 18:11:57.013194','read write',1,5,'2020-05-12 08:11:57.013746','2020-05-12 08:11:57.013764'),(47,'gDvrDu3Bwtetog0XzgQuMOt5wcRao1','2021-11-22 22:35:37.632378','read write',2,2,'2021-11-22 12:35:37.653998','2021-11-22 12:35:37.654257'),(48,'CSD5Wjj7djyYY7hWnex65AcUmAMmZj','2021-11-22 22:36:21.027293','read write',2,5,'2021-11-22 12:36:21.028237','2021-11-22 12:36:21.028261'),(49,'ErOAIpqQejN9zhOgImM49JY5YHDSpL','2021-12-04 18:18:16.243473','read write',2,5,'2021-12-04 08:18:16.246110','2021-12-04 08:18:16.246172'),(50,'tdavyyTBy2Wnx1pPgdGD1yYBCsrYi9','2021-12-15 22:19:53.227045','read write',2,5,'2021-12-15 12:19:53.237021','2021-12-15 12:19:53.237066'),(51,'9O7FCD90COQwRrvS559mvdAs19hPZS','2021-12-16 02:05:36.035944','read write',2,5,'2021-12-15 16:05:36.072946','2021-12-15 16:05:36.073013'),(52,'TLnWzxAiw0n2TCHdVN7JuAdH3VYoWJ','2021-12-16 18:17:23.373994','read write',2,5,'2021-12-16 08:17:23.377165','2021-12-16 08:17:23.377184'),(53,'4JrQvuY5lZBQyX5Ob1aEtUgbB8fQYQ','2021-12-16 21:37:41.830029','read write',2,5,'2021-12-16 11:37:41.830667','2021-12-16 11:37:41.830685'),(54,'tbd597XHwuG1WQ0WH5Ohgx3XfVJqTk','2021-12-19 18:21:11.473877','read write',2,5,'2021-12-19 08:21:11.474499','2021-12-19 08:21:11.474513'),(55,'UCdUcFlfIsZ2NKM1fyv8DS7kwv6xHZ','2022-01-03 19:22:37.471968','read write',2,5,'2022-01-03 09:22:37.472432','2022-01-03 09:22:37.472444'),(56,'TdG9Wab5STH046uII2KEait6ZtmPyl','2022-03-07 00:18:49.349242','read write',2,5,'2022-03-06 14:18:49.353027','2022-03-06 14:18:49.353083'),(57,'YPvH7gv5kw72zqGpKYjzeZF4ExGT8G','2022-03-07 01:54:04.136788','read write',2,5,'2022-03-06 15:54:04.138305','2022-03-06 15:54:04.138324'),(58,'g6Ar1Tvz4DJUQeDJkFZfaPJmqsLtIO','2022-03-07 20:09:34.599122','read write',2,5,'2022-03-07 10:09:34.600657','2022-03-07 10:09:34.600702'),(59,'fOjPMpvKwv6jkawCfvw63IXXsN99oy','2022-03-08 07:00:30.394336','read write',2,5,'2022-03-07 21:00:30.407659','2022-03-07 21:00:30.407721'),(60,'899YTEMryuVHw3hdrhMtD0ytxI1AWF','2022-03-08 08:37:31.383877','read write',2,5,'2022-03-07 22:37:31.384905','2022-03-07 22:37:31.384930'),(61,'SSc9SiPju5QMLiBPBWG3PvGq12by8H','2022-03-08 19:12:41.879766','read write',2,5,'2022-03-08 09:12:41.888004','2022-03-08 09:12:41.888023'),(62,'LRfcjT8R3PdnfVjO0Hbf1BHTJ4BFz1','2022-03-08 19:24:24.851967','read write',2,5,'2022-03-08 09:24:24.852639','2022-03-08 09:24:24.852655'),(63,'ukJJUIDijnDbiUu6i5wSQX8z9LxaDv','2022-03-09 20:33:16.934792','read write',2,5,'2022-03-09 10:33:16.935838','2022-03-09 10:33:16.935879'),(64,'16wFjxq4nwc9MIa5S9Ga0TghKb3xgX','2022-03-09 23:28:48.714267','read write',2,5,'2022-03-09 13:28:48.722601','2022-03-09 13:28:48.722644'),(65,'yyudSapjKYhYtPuL26IS2IiTnJUuD0','2022-03-09 23:30:35.486434','read write',2,5,'2022-03-09 13:30:35.487257','2022-03-09 13:30:35.487291'),(66,'MLkFaBgZf1fosCf0HU9ZwV1PUQBvwI','2022-03-10 20:36:41.567362','read write',2,5,'2022-03-10 10:36:41.568765','2022-03-10 10:36:41.568788'),(67,'uW303lT8gVsmO0TtObKvOarfvYICba','2022-03-13 20:45:10.960535','read write',2,5,'2022-03-13 10:45:10.961116','2022-03-13 10:45:10.961129'),(68,'yvBRYGQVJvjTEllN27irQoLZogopzD','2022-03-15 19:15:38.371537','read write',2,5,'2022-03-15 09:15:38.373225','2022-03-15 09:15:38.373266'),(69,'8IhRsQdRmrmcu7dVIHJiGyg4kagzmZ','2022-03-22 01:35:12.591743','read write',2,5,'2022-03-21 15:35:12.592456','2022-03-21 15:35:12.592470'),(70,'BZmD8d8lvO0YWAIO7Nu6H89igO1QzG','2022-03-23 00:31:56.061888','read write',2,5,'2022-03-22 14:31:56.064941','2022-03-22 14:31:56.064980'),(71,'BOZ2ou5TUw42URWYF90J0GWqjBHpDF','2022-03-23 22:01:36.711560','read write',2,5,'2022-03-23 12:01:36.712326','2022-03-23 12:01:36.712346'),(72,'Fh55LGjwDW1EM3GubW4aAoOukJF5wH','2022-03-27 23:48:37.535304','read write',2,5,'2022-03-27 13:48:37.535968','2022-03-27 13:48:37.535982'),(73,'GxwS48b4n86y15AIgfxzk9glw5dRP9','2022-03-28 02:09:57.325818','read write',2,5,'2022-03-27 16:09:57.326136','2022-03-27 16:09:57.326148'),(74,'aHj99775C34xONUntPsJKyfrSX2O22','2022-03-28 02:09:57.322197','read write',2,5,'2022-03-27 16:09:57.325067','2022-03-27 16:09:57.325110'),(75,'OtaTeiuO3Ij6ecrShZ0QSN1ag4heFO','2022-03-28 02:10:27.140232','read write',2,5,'2022-03-27 16:10:27.140763','2022-03-27 16:10:27.140776'),(76,'ka4uaeINWZl4ZaNY3VxhMyugBgs3M8','2022-03-28 02:10:38.517893','read write',2,5,'2022-03-27 16:10:38.518424','2022-03-27 16:10:38.518438'),(77,'zRPncIhmc6zp7y47paqX5tGQcM5N2Y','2022-03-28 02:10:40.188832','read write',2,5,'2022-03-27 16:10:40.189294','2022-03-27 16:10:40.189307'),(78,'Kw7feJuRC95HKZtrXdEvxehOUIMDsG','2022-03-28 02:11:22.062632','read write',2,5,'2022-03-27 16:11:22.063227','2022-03-27 16:11:22.063241'),(79,'JWXMSNRgKt4w1L6kokNfns0BQTh9uC','2022-03-28 08:54:16.495391','read write',2,5,'2022-03-27 22:54:16.497197','2022-03-27 22:54:16.497276'),(80,'cPA0ogilIbfHDWdCCqAOKEEV8XCh5N','2022-03-28 20:29:25.358277','read write',2,5,'2022-03-28 10:29:25.359774','2022-03-28 10:29:25.359787'),(81,'5U970iFpUKFvODLbcRsKjwqQE1sbsp','2022-03-30 23:49:30.491707','read write',2,5,'2022-03-30 13:49:30.496456','2022-03-30 13:49:30.496500');
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_application`
--

DROP TABLE IF EXISTS `oauth2_provider_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_provider_application` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) NOT NULL,
  `redirect_uris` longtext NOT NULL,
  `client_type` varchar(32) NOT NULL,
  `authorization_grant_type` varchar(32) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`),
  KEY `oauth2_provider_appl_user_id_79829054_fk_profiles_` (`user_id`),
  CONSTRAINT `oauth2_provider_appl_user_id_79829054_fk_profiles_` FOREIGN KEY (`user_id`) REFERENCES `profiles_agent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` VALUES (1,'Sw0BaWEfJH1RjNksTnzPdaADWcGXu9uOpjq3lkAi','','public','password','rhp5wr8VlZASFqo272nC0qIXWC0XYXuT3PSBKJ8cqbXTyKcZJuW9kdTTqWD0QUH2Mcf369V00lihULbL2UwK1TUBShFsK2K2z7YkbvgHf2G6g44k7ugDITe0psaO9Q6r','Dev_Mobile_App',1,0,'2020-04-06 10:28:25.583517','2020-04-06 10:30:56.380642'),(2,'i93klsSZ0uLpYD8pSz0pZRxczFY6nKqH0L3DLApU','','public','password','eaTp2jJ62uqX4HtOHiwjfRjCTwkFjcM1Tdp4cxVaqd7EN3fGTE3B6p0ghHHli7792Txb39pZoAQn3hFmnHqIoIAMCWWaVIhs2P7DktPucsocCG7w92dtmKwWDVTsPGbX','App',1,0,'2020-04-06 10:29:51.617335','2020-04-06 10:31:41.148231');
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_grant`
--

DROP TABLE IF EXISTS `oauth2_provider_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_provider_grant` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` varchar(255) NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth2_provider_grant_code_49ab4ddf_uniq` (`code`),
  KEY `oauth2_provider_grant_application_id_81923564_fk` (`application_id`),
  KEY `oauth2_provider_grant_user_id_e8f62af8_fk_profiles_agent_id` (`user_id`),
  CONSTRAINT `oauth2_provider_grant_application_id_81923564_fk` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_grant_user_id_e8f62af8_fk_profiles_agent_id` FOREIGN KEY (`user_id`) REFERENCES `profiles_agent` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `access_token_id` bigint(20) NOT NULL,
  `application_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  UNIQUE KEY `oauth2_provider_refreshtoken_token_d090daa4_uniq` (`token`),
  KEY `oauth2_provider_refreshtoken_application_id_2d1c311b_fk` (`application_id`),
  KEY `oauth2_provider_refr_user_id_da837fce_fk_profiles_` (`user_id`),
  CONSTRAINT `oauth2_provider_refr_user_id_da837fce_fk_profiles_` FOREIGN KEY (`user_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `oauth2_provider_refreshtoken_access_token_id_775e84e8_fk` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  CONSTRAINT `oauth2_provider_refreshtoken_application_id_2d1c311b_fk` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'XoBNO0s9MbRAGyjq06SvHxiKyFJ7mn',1,1,3,'2020-04-06 12:16:40.082187','2020-04-06 12:16:40.082216'),(2,'wQ0vYPy6elNMTReGOYxycDB1pKT325',2,1,5,'2020-04-06 13:01:51.944405','2020-04-06 13:01:51.944437'),(3,'9UCXHLj3c87zqJI75X4mAoBBO0NKJA',3,1,5,'2020-04-06 13:23:18.491820','2020-04-06 13:23:18.491848'),(4,'MCYaFgZd3F4WP2ye2mCaY5nELcrN7B',4,1,5,'2020-04-06 14:04:44.665080','2020-04-06 14:04:44.665107'),(5,'JsPeuQbnvzR0vPgRBqZ9B0WWTRirlR',5,1,5,'2020-04-06 14:57:46.354119','2020-04-06 14:57:46.354147'),(6,'n8ZwTR6Ecl5Uzn7wqU6INUqrlyS3jo',6,1,5,'2020-04-07 10:19:01.223110','2020-04-07 10:19:01.223137'),(7,'dbLXceMbseqjIE2hKbvVvkFHVaVr0w',7,1,5,'2020-04-07 10:19:12.750492','2020-04-07 10:19:12.750520'),(8,'wXFuqn0VNGd1JeqEFlloUf9CMqgupy',8,1,5,'2020-04-07 10:38:28.429594','2020-04-07 10:38:28.429621'),(9,'cKqll9tpZXWkznlFP6vszMPB2fzDy3',9,1,5,'2020-04-08 10:49:19.347336','2020-04-08 10:49:19.347365'),(10,'enDt9SzozIZHANU3SQKyjeMBNbv6dp',10,1,5,'2020-04-08 12:17:17.159790','2020-04-08 12:17:17.159818'),(11,'9D1jJvAGLViFHogrc2Oo3l8fkVZ5Cs',11,1,5,'2020-04-08 14:33:32.843136','2020-04-08 14:33:32.843164'),(12,'3Z7do94HSPCe4SZFbOgd9TY0r2c4ZF',12,1,5,'2020-04-08 14:33:45.920207','2020-04-08 14:33:45.920235'),(13,'cF6ThF232IwJXXGhPLlF8lnW9jqhc8',13,1,5,'2020-04-08 14:38:49.210737','2020-04-08 14:38:49.210766'),(14,'8OXg8aaii0LWuofdmBIlhfvu4XU5aK',14,1,5,'2020-04-08 14:46:53.283571','2020-04-08 14:46:53.283598'),(15,'qPohOxrzXQuKxLUtk7vhMmoMSJJTAN',15,1,5,'2020-04-21 10:43:03.466821','2020-04-21 10:43:03.466849'),(16,'8H4vLtWqhxQ076q1xKMEOyN94xoHiA',16,1,5,'2020-04-21 10:43:16.985220','2020-04-21 10:43:16.985248'),(17,'NnnYFJheN6Bv40NbMTDvp73UMAvTdQ',17,1,5,'2020-04-21 10:43:31.530044','2020-04-21 10:43:31.530091'),(18,'aebLc1Wk8q2VyVY42CayN4TAWsiNht',18,1,5,'2020-04-21 10:43:51.644808','2020-04-21 10:43:51.644836'),(19,'VPXkdK5G2nq7zPb6Dtq9BHpeAPmPDm',19,1,5,'2020-04-21 11:08:04.962265','2020-04-21 11:08:04.962293'),(20,'uiYl3d7Aui5KKYkwlUFiAh21XiNhLz',20,1,5,'2020-04-21 11:08:18.580585','2020-04-21 11:08:18.580612'),(21,'5PT0lJ6mmtRcHgN1YrHjC4lrSe5oJi',21,1,3,'2020-04-22 01:06:56.674188','2020-04-22 01:06:56.674217'),(22,'h5kffDUI1XlBRKuqyD6ucwxcwgLhgi',22,1,3,'2020-04-22 01:14:26.224695','2020-04-22 01:14:26.224721'),(23,'SZZYmrAh6wamEmkuFu4R3hPDcmG1nC',23,1,5,'2020-04-22 07:08:34.834644','2020-04-22 07:08:34.834671'),(24,'BrtLisUOHyrMKqEQlup4L9TyTeaJ3P',24,1,3,'2020-04-22 07:38:57.058348','2020-04-22 07:38:57.058376'),(25,'V101pkB5OA5XaTGqvVr582an5fE3ZN',25,1,5,'2020-04-22 07:49:49.550346','2020-04-22 07:49:49.550376'),(26,'UoFCditgUibOezNtl8QiKkbvfvZtxf',26,1,5,'2020-04-22 07:49:54.420214','2020-04-22 07:49:54.420242'),(27,'0flSIzA3Bqx2HVBTqtchRaOo3gtg1O',27,1,5,'2020-04-22 07:50:10.651717','2020-04-22 07:50:10.651744'),(28,'ARpPa9jBHfBVOOclwUOIwAvQMYDy1C',28,1,2,'2020-04-22 07:50:43.206220','2020-04-22 07:50:43.206248'),(29,'YcgHbSyl4U0W4RHCtTkjTtcXsGlHM0',29,1,2,'2020-04-22 07:51:02.966962','2020-04-22 07:51:02.966990'),(30,'hc3YdW5KoX8adE5hkXGo3LZont1W46',30,1,3,'2020-04-22 11:18:47.110463','2020-04-22 11:18:47.110491'),(31,'ud1K5slLrPJeCS3PR04lY3PjJQlDkE',31,1,5,'2020-04-22 11:20:52.965575','2020-04-22 11:20:52.965602'),(32,'9L16ROOmDatYvJqeVXKBkEzLYaUfcE',32,1,3,'2020-04-22 11:37:10.461618','2020-04-22 11:37:10.461646'),(33,'JmEe7h5PTgzTQFVD7wYpMKsoNgsarO',33,1,3,'2020-04-22 11:39:23.915748','2020-04-22 11:39:23.915775'),(34,'mvACkhpy03vrxPWAmO3LQgYBZYadRh',34,1,3,'2020-04-22 11:39:51.867400','2020-04-22 11:39:51.867429'),(35,'XFcwxcUcKXK59m9QShcMm88fqDurG1',35,1,3,'2020-04-22 11:40:09.457632','2020-04-22 11:40:09.457660'),(36,'RKnWGPUuE0Qn61wZuLL4aWSycpQIm7',36,1,5,'2020-04-22 11:46:26.876645','2020-04-22 11:46:26.876673'),(37,'Gkyw3QgETWzq4TXeigkor2GL8KcLcH',37,1,3,'2020-04-22 11:55:27.785675','2020-04-22 11:55:27.785703'),(38,'fCiq9si7hqQTZt3wOxU1Z15nzzYF3r',38,1,3,'2020-04-22 11:56:20.515617','2020-04-22 11:56:20.515645'),(39,'VS7YEPQtAmbXwnTpvnPy8X9JrX5Due',39,1,5,'2020-04-22 12:21:33.969781','2020-04-22 12:21:33.969810'),(40,'xz1ZGgyKhP7etlPZveKfZojudzwgnL',40,1,5,'2020-04-22 12:26:01.111457','2020-04-22 12:26:01.111484'),(41,'A90lC5HTOO8w4s4jVHMTgoyNdg35wc',41,1,5,'2020-04-22 12:26:17.793873','2020-04-22 12:26:17.793900'),(42,'cAN4NBMPx4CfdCG6Xva2py9u63UySm',42,1,5,'2020-04-22 12:26:29.252242','2020-04-22 12:26:29.252270'),(43,'SxsqzyH52pkyZ3MbaHUnGi2a4txYTS',43,1,5,'2020-04-22 13:41:31.275342','2020-04-22 13:41:31.275370'),(44,'epUOJfIYHn2IhsJh8to7HId3C33dDj',44,1,5,'2020-04-22 13:53:49.643253','2020-04-22 13:53:49.643280'),(45,'GmL1LjJ6GZkpCYBV3UYm1vJx4HGi2U',45,1,5,'2020-04-22 18:29:16.167098','2020-04-22 18:29:16.167128'),(46,'a5Vd16Oea5FYwBxwcI6y4bXF3OHYdq',46,1,5,'2020-05-12 08:11:57.019899','2020-05-12 08:11:57.019942'),(47,'qDwnYIhyJwTbVdFqfbEUcBrw2GafzZ',47,2,2,'2021-11-22 12:35:37.685208','2021-11-22 12:35:37.685305'),(48,'KOGlQDdVpuUaiPMJxgWSxtJYOrApas',48,2,5,'2021-11-22 12:36:21.031018','2021-11-22 12:36:21.031061'),(49,'FVaeSM9ldB4NhoqozsiSF8bkXJNtV2',49,2,5,'2021-12-04 08:18:16.269984','2021-12-04 08:18:16.270039'),(50,'FE5mi1xUondMvhTPkk7Cl9KErZRqAE',50,2,5,'2021-12-15 12:19:53.253045','2021-12-15 12:19:53.253109'),(51,'VQWmmSjgxPPdyXVsTMzEFFwrZIpRT6',51,2,5,'2021-12-15 16:05:36.103943','2021-12-15 16:05:36.104013'),(52,'f7mWUDtOJvWpmUSw4un5AvEmQQL8iB',52,2,5,'2021-12-16 08:17:23.388165','2021-12-16 08:17:23.388201'),(53,'4cUybj9p9x9JeUnCLXpXQzQPX5ei2R',53,2,5,'2021-12-16 11:37:41.832786','2021-12-16 11:37:41.832819'),(54,'WnhXM7QxQfGXkpGY5noMJQrSXpi37l',54,2,5,'2021-12-19 08:21:11.476408','2021-12-19 08:21:11.476439'),(55,'pu5MW5k2QoIPKPe0gHK1ShjRiaPoei',55,2,5,'2022-01-03 09:22:37.477072','2022-01-03 09:22:37.477102'),(56,'GJ0EN9ToZtJOLvE2i0efe9GvG5oKir',56,2,5,'2022-03-06 14:18:49.374814','2022-03-06 14:18:49.374912'),(57,'ko3Ru1ER4jUkvynXm60qrvgsV9gMFw',57,2,5,'2022-03-06 15:54:04.150067','2022-03-06 15:54:04.150107'),(58,'VEfB9OTqSKB0tgNnLHb8yhuweuYHm6',58,2,5,'2022-03-07 10:09:34.616545','2022-03-07 10:09:34.616652'),(59,'xlKX7K1mC4BF3L7tu791aey4Pz0fi9',59,2,5,'2022-03-07 21:00:30.430721','2022-03-07 21:00:30.430821'),(60,'HAEFZRwuc1QLpEBgu5NOBvagSbdONZ',60,2,5,'2022-03-07 22:37:31.390310','2022-03-07 22:37:31.390375'),(61,'4kzPXr30ZBcnKZ4zJaPzgtQv0aL0Uh',61,2,5,'2022-03-08 09:12:41.900668','2022-03-08 09:12:41.900705'),(62,'X8Mlu79S5SGCwtQv7eikJEsj6s665y',62,2,5,'2022-03-08 09:24:24.854059','2022-03-08 09:24:24.854079'),(63,'1fRnCShNzuEvG54Cogut2Jt3BTj42M',63,2,5,'2022-03-09 10:33:16.939692','2022-03-09 10:33:16.939731'),(64,'8f3Oj8Mfh1YotcXoQdBeyfyEhvIjkv',64,2,5,'2022-03-09 13:28:48.733865','2022-03-09 13:28:48.733959'),(65,'stVB8IADJdG0lEDPX0nhWQ9yd9v5jJ',65,2,5,'2022-03-09 13:30:35.495352','2022-03-09 13:30:35.495387'),(66,'7LN3zpaODxl2YFmxjuR4IcPaMpRTVF',66,2,5,'2022-03-10 10:36:41.574470','2022-03-10 10:36:41.574557'),(67,'caYCa9wnyfhkNaCavAh8eRoE64sLwr',67,2,5,'2022-03-13 10:45:10.964413','2022-03-13 10:45:10.964471'),(68,'MNZEG9QbBHT2843XyUtw8gH8cACWny',68,2,5,'2022-03-15 09:15:38.378241','2022-03-15 09:15:38.378311'),(69,'axLJPo62UANfVwBsGbAkM9aRg3X9lc',69,2,5,'2022-03-21 15:35:12.596027','2022-03-21 15:35:12.596059'),(70,'qkLLmVjomJTAul0PpWpituKRoD9oVC',70,2,5,'2022-03-22 14:31:56.081851','2022-03-22 14:31:56.081913'),(71,'leX9cBckaMkq8IHQ4KEoppeA7W0thA',71,2,5,'2022-03-23 12:01:36.737715','2022-03-23 12:01:36.737782'),(72,'5kJlTRhpGEfpz2QGCTimNEef6GxPKr',72,2,5,'2022-03-27 13:48:37.551996','2022-03-27 13:48:37.552038'),(73,'Q4ZtlFUkTztDWUEb32UgemxBkXCi2w',74,2,5,'2022-03-27 16:09:57.369468','2022-03-27 16:09:57.369568'),(74,'2ypF10The7iXbXpRG3WjfTNmTYObTw',73,2,5,'2022-03-27 16:09:57.370661','2022-03-27 16:09:57.370729'),(75,'amFii5KlG0lAFzw23A9zfT2FxgI6T8',75,2,5,'2022-03-27 16:10:27.145866','2022-03-27 16:10:27.145950'),(76,'4WGIVrp2GFPUBL6VttqcdPgaR3QwZJ',76,2,5,'2022-03-27 16:10:38.523947','2022-03-27 16:10:38.524004'),(77,'6y3d8JqUr6ZrnziEZWjwg3BrsgPNWu',77,2,5,'2022-03-27 16:10:40.196914','2022-03-27 16:10:40.197025'),(78,'yYHUUbvhaUqhGf8i4YyY8et2bdjSML',78,2,5,'2022-03-27 16:11:22.075362','2022-03-27 16:11:22.075471'),(79,'hX3Yck9UrOt2m7VNNL1jfFrD2Upe42',79,2,5,'2022-03-27 22:54:16.523584','2022-03-27 22:54:16.523655'),(80,'NwbpKzt1dHd6TPcDa6X7Pq5p2sZm7W',80,2,5,'2022-03-28 10:29:25.367417','2022-03-28 10:29:25.367445'),(81,'d0cCbO67jHhlCwkPeqMnKj1TbYqbhR',81,2,5,'2022-03-30 13:49:30.516548','2022-03-30 13:49:30.516589');
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_content`
--

DROP TABLE IF EXISTS `pages_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(7) NOT NULL,
  `body` longtext NOT NULL,
  `type` varchar(100) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_content_type_fed4f50f` (`type`),
  KEY `pages_content_page_id_bd3ae0c3_fk_pages_page_id` (`page_id`),
  CONSTRAINT `pages_content_page_id_bd3ae0c3_fk_pages_page_id` FOREIGN KEY (`page_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_content`
--

LOCK TABLES `pages_content` WRITE;
/*!40000 ALTER TABLE `pages_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_media`
--

DROP TABLE IF EXISTS `pages_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `url` varchar(100) NOT NULL,
  `extension` varchar(32) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_media`
--

LOCK TABLES `pages_media` WRITE;
/*!40000 ALTER TABLE `pages_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_page`
--

DROP TABLE IF EXISTS `pages_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime(6) NOT NULL,
  `publication_date` datetime(6) DEFAULT NULL,
  `publication_end_date` datetime(6) DEFAULT NULL,
  `last_modification_date` datetime(6) NOT NULL,
  `status` int(11) NOT NULL,
  `template` varchar(100) DEFAULT NULL,
  `delegate_to` varchar(100) DEFAULT NULL,
  `freeze_date` datetime(6) DEFAULT NULL,
  `redirect_to_url` varchar(200) DEFAULT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `author_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `redirect_to_id` int(11) DEFAULT NULL,
  `uuid` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_page_author_id_fed45c98_fk_profiles_agent_id` (`author_id`),
  KEY `pages_page_lft_f44c5fed` (`lft`),
  KEY `pages_page_rght_5018ff1e` (`rght`),
  KEY `pages_page_tree_id_79dd5f63` (`tree_id`),
  KEY `pages_page_level_61d92bbf` (`level`),
  KEY `pages_page_parent_id_133fa4d3_fk_pages_page_id` (`parent_id`),
  KEY `pages_page_redirect_to_id_0e61cc5d_fk_pages_page_id` (`redirect_to_id`),
  CONSTRAINT `pages_page_author_id_fed45c98_fk_profiles_agent_id` FOREIGN KEY (`author_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `pages_page_parent_id_133fa4d3_fk_pages_page_id` FOREIGN KEY (`parent_id`) REFERENCES `pages_page` (`id`),
  CONSTRAINT `pages_page_redirect_to_id_0e61cc5d_fk_pages_page_id` FOREIGN KEY (`redirect_to_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_page`
--

LOCK TABLES `pages_page` WRITE;
/*!40000 ALTER TABLE `pages_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_page_sites`
--

DROP TABLE IF EXISTS `pages_page_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_page_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_page_sites_page_id_site_id_6471b047_uniq` (`page_id`,`site_id`),
  KEY `pages_page_sites_site_id_95dc61a5_fk_django_site_id` (`site_id`),
  CONSTRAINT `pages_page_sites_page_id_50a6ac50_fk_pages_page_id` FOREIGN KEY (`page_id`) REFERENCES `pages_page` (`id`),
  CONSTRAINT `pages_page_sites_site_id_95dc61a5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_page_sites`
--

LOCK TABLES `pages_page_sites` WRITE;
/*!40000 ALTER TABLE `pages_page_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_page_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_pagealias`
--

DROP TABLE IF EXISTS `pages_pagealias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_pagealias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`),
  KEY `pages_pagealias_page_id_a7bed9b4_fk_pages_page_id` (`page_id`),
  CONSTRAINT `pages_pagealias_page_id_a7bed9b4_fk_pages_page_id` FOREIGN KEY (`page_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_pagealias`
--

LOCK TABLES `pages_pagealias` WRITE;
/*!40000 ALTER TABLE `pages_pagealias` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_pagealias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments_invoice`
--

DROP TABLE IF EXISTS `payments_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(10) NOT NULL,
  `date` datetime(6) NOT NULL,
  `status` varchar(30) NOT NULL,
  `payment_response` varchar(30) NOT NULL,
  `payment_date` datetime(6) NOT NULL,
  `total_before` decimal(6,2) NOT NULL,
  `total_after` decimal(6,2) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_invoice_company_id_8226107f_fk_profiles_company_id` (`company_id`),
  CONSTRAINT `payments_invoice_company_id_8226107f_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments_invoice`
--

LOCK TABLES `payments_invoice` WRITE;
/*!40000 ALTER TABLE `payments_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_agent`
--

DROP TABLE IF EXISTS `profiles_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `name` varchar(200) NOT NULL,
  `is_company_admin` tinyint(1) NOT NULL,
  `phone` varchar(18) DEFAULT NULL,
  `photo` varchar(100) NOT NULL,
  `emailcode` varchar(200) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `agent_type` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `profiles_agent_company_id_30ec4974_fk_profiles_company_id` (`company_id`),
  CONSTRAINT `profiles_agent_company_id_30ec4974_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_agent`
--

LOCK TABLES `profiles_agent` WRITE;
/*!40000 ALTER TABLE `profiles_agent` DISABLE KEYS */;
INSERT INTO `profiles_agent` VALUES (1,'pbkdf2_sha256$36000$oUYX5a03L2TY$DlRR+6QfNR/NAsxP9l/YP/u3aAtWbfx+HJn9kbkWWnc=','2022-09-07 08:50:32.816288',1,'Test+admin','','','',1,1,'2020-03-31 14:33:39.000000','Test',1,'admin','','',1,'A'),(2,'pbkdf2_sha256$36000$NprnZbdSvHSR$TnCWav/P0MzKrVO2KyPw7kQ/C9b7/i/jc65zVHutp3Y=','2022-03-03 13:40:03.709886',0,'Test_staff01','','','',0,1,'2020-04-01 09:29:53.739775','Staff-1',0,NULL,'','',1,'D'),(3,'pbkdf2_sha256$150000$mxFCjJmrOKih$Yrg0yxPf3jpjkR7++Wg3AbiIyC87zSqPpmp4EIBKOGc=','2020-04-02 14:23:57.619211',0,'Test_staff02','','','',0,1,'2020-04-02 14:23:57.517151','Staff-2',0,NULL,'','',1,'D'),(4,'pbkdf2_sha256$36000$KaMrce09eEoV$pXxyJ8ut/D3RSSVkRtTOibSJBoqHy/FFooUurNwBe9E=','2022-03-03 14:01:17.042504',0,'Test_staff03','','','',0,1,'2020-04-02 14:24:30.790881','Staff-3',0,NULL,'','',1,'D'),(5,'pbkdf2_sha256$36000$7JD5X4ZNTReJ$hhz8exzxLVPkFNCn8D+ec3QXTLnIdGPioutSto30K3I=','2022-09-07 11:24:12.960181',0,'Test_staff04','','','',0,1,'2020-04-06 08:16:14.018904','Staff-4',0,NULL,'','',1,'D'),(6,'pbkdf2_sha256$36000$DADkzwacbHvh$cOTlw66MIAtpPl+Fi9pNZF2QBCsfQ4yRKS/73WjQCtY=','2022-01-30 14:42:20.790817',0,'Test+ameer','','','ameer.abdulaziz93@gmail.com',0,1,'2022-01-30 14:41:34.783073','Ameer Abdulaziz',0,'01113264340','','',1,'A'),(7,'pbkdf2_sha256$36000$hqg2q5MMgF54$FWSXhzVRpOiXdRfNqSXvWvYleOMS6QG3GiE9Nt3cQJY=','2022-03-01 16:13:14.982245',0,'Test+Support','','','',0,0,'2022-03-01 16:13:14.975427','Amir Ahmed',0,NULL,'','',1,'A'),(8,'pbkdf2_sha256$36000$wJ2V84T1C2WW$YAbZoMflPB6KsItMYN3QA382Lw+UoYIQdrTFFOZrAbE=','2022-03-10 10:23:58.574667',0,'Test_turki','','','',0,1,'2022-03-03 13:40:50.976039','Turki Abdallah',0,NULL,'','',1,'D'),(9,'pbkdf2_sha256$36000$Y38weSBXMPS1$/5veCA3rCQTmRMWzZ9FqrsSCmdxJ5W7+DiF4/th5UR8=','2022-03-03 14:08:56.447736',0,'Test_ameer','','','',0,1,'2022-03-03 14:07:46.692218','Ameer Ahmed',0,NULL,'','',1,'D');
/*!40000 ALTER TABLE `profiles_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_agent_groups`
--

DROP TABLE IF EXISTS `profiles_agent_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_agent_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profiles_agent_groups_agent_id_group_id_39af628c_uniq` (`agent_id`,`group_id`),
  KEY `profiles_agent_groups_group_id_fcab1a2e_fk_auth_group_id` (`group_id`),
  CONSTRAINT `profiles_agent_groups_agent_id_43ee7d7f_fk_profiles_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `profiles_agent_groups_group_id_fcab1a2e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_agent_groups`
--

LOCK TABLES `profiles_agent_groups` WRITE;
/*!40000 ALTER TABLE `profiles_agent_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_agent_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_agent_user_permissions`
--

DROP TABLE IF EXISTS `profiles_agent_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_agent_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profiles_agent_user_perm_agent_id_permission_id_bb7129ef_uniq` (`agent_id`,`permission_id`),
  KEY `profiles_agent_user__permission_id_a3840112_fk_auth_perm` (`permission_id`),
  CONSTRAINT `profiles_agent_user__agent_id_3cb47845_fk_profiles_` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `profiles_agent_user__permission_id_a3840112_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_agent_user_permissions`
--

LOCK TABLES `profiles_agent_user_permissions` WRITE;
/*!40000 ALTER TABLE `profiles_agent_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_agent_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_blockedagent`
--

DROP TABLE IF EXISTS `profiles_blockedagent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_blockedagent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `blocked_interface_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_blockedagent_agent_id_bb5fa1b2_fk_profiles_agent_id` (`agent_id`),
  KEY `profiles_blockedagen_blocked_interface_id_d453f95c_fk_profiles_` (`blocked_interface_id`),
  CONSTRAINT `profiles_blockedagen_blocked_interface_id_d453f95c_fk_profiles_` FOREIGN KEY (`blocked_interface_id`) REFERENCES `profiles_blockedinterface` (`id`),
  CONSTRAINT `profiles_blockedagent_agent_id_bb5fa1b2_fk_profiles_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `profiles_agent` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_blockedagent`
--

LOCK TABLES `profiles_blockedagent` WRITE;
/*!40000 ALTER TABLE `profiles_blockedagent` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_blockedagent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_blockedinterface`
--

DROP TABLE IF EXISTS `profiles_blockedinterface`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_blockedinterface` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) NOT NULL,
  `menu_name` varchar(100) DEFAULT NULL,
  `menu_base_name` varchar(100) NOT NULL,
  `function_url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_blockedinterface`
--

LOCK TABLES `profiles_blockedinterface` WRITE;
/*!40000 ALTER TABLE `profiles_blockedinterface` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_blockedinterface` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_changelog`
--

DROP TABLE IF EXISTS `profiles_changelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_changelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `by_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_changelog_by_id_a7503ee7_fk_profiles_agent_id` (`by_id`),
  KEY `profiles_changelog_company_id_32b19819_fk_profiles_company_id` (`company_id`),
  CONSTRAINT `profiles_changelog_by_id_a7503ee7_fk_profiles_agent_id` FOREIGN KEY (`by_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `profiles_changelog_company_id_32b19819_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_changelog`
--

LOCK TABLES `profiles_changelog` WRITE;
/*!40000 ALTER TABLE `profiles_changelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_changelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_changelogdetail`
--

DROP TABLE IF EXISTS `profiles_changelogdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_changelogdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `old_value` varchar(255) DEFAULT NULL,
  `new_value` varchar(255) DEFAULT NULL,
  `change_log_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_changelogde_change_log_id_07630f3c_fk_profiles_` (`change_log_id`),
  KEY `profiles_changelogde_content_type_id_4053224a_fk_django_co` (`content_type_id`),
  CONSTRAINT `profiles_changelogde_change_log_id_07630f3c_fk_profiles_` FOREIGN KEY (`change_log_id`) REFERENCES `profiles_changelog` (`id`),
  CONSTRAINT `profiles_changelogde_content_type_id_4053224a_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_changelogdetail`
--

LOCK TABLES `profiles_changelogdetail` WRITE;
/*!40000 ALTER TABLE `profiles_changelogdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_changelogdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_city`
--

DROP TABLE IF EXISTS `profiles_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  `arabic_name` varchar(100) DEFAULT NULL,
  `name_ar` varchar(100) DEFAULT NULL,
  `name_en` varchar(100) DEFAULT NULL,
  `name_es` varchar(100) DEFAULT NULL,
  `name_sv` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_city`
--

LOCK TABLES `profiles_city` WRITE;
/*!40000 ALTER TABLE `profiles_city` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_code`
--

DROP TABLE IF EXISTS `profiles_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL,
  `valid` tinyint(1) NOT NULL,
  `created_at` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_code`
--

LOCK TABLES `profiles_code` WRITE;
/*!40000 ALTER TABLE `profiles_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_company`
--

DROP TABLE IF EXISTS `profiles_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `signup_plan` varchar(50) NOT NULL,
  `country` varchar(2) NOT NULL,
  `map_center` varchar(200) DEFAULT NULL,
  `tz` varchar(32) NOT NULL,
  `language` varchar(5) NOT NULL,
  `website` varchar(300) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `hear_about` varchar(200) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `trial_end_date` date DEFAULT NULL,
  `directory` tinyint(1) NOT NULL,
  `driver_tracking_status_flag` tinyint(1) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `is_automated_dispatch` tinyint(1) NOT NULL,
  `verification_type_for_customer_app` varchar(10) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `is_sales_module` tinyint(1) DEFAULT NULL,
  `inventory_type` varchar(10) NOT NULL,
  `is_tracking_enabled` tinyint(1) DEFAULT NULL,
  `geo_attendance_enabled` tinyint(1) DEFAULT NULL,
  `is_surveys_enabled` tinyint(1) DEFAULT NULL,
  `fastest_tracking_update_interval` int(10) unsigned NOT NULL,
  `slowest_tracking_update_interval` int(10) unsigned NOT NULL,
  `parent_company_id` int(11) DEFAULT NULL,
  `is_portal_enabled` tinyint(1) NOT NULL,
  `is_einvoice_enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_company_city_id_21ba3722_fk_profiles_city_id` (`city_id`),
  KEY `profiles_company_parent_company_id_cfe3d30a_fk_profiles_` (`parent_company_id`),
  CONSTRAINT `profiles_company_city_id_21ba3722_fk_profiles_city_id` FOREIGN KEY (`city_id`) REFERENCES `profiles_city` (`id`),
  CONSTRAINT `profiles_company_parent_company_id_cfe3d30a_fk_profiles_` FOREIGN KEY (`parent_company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_company`
--

LOCK TABLES `profiles_company` WRITE;
/*!40000 ALTER TABLE `profiles_company` DISABLE KEYS */;
INSERT INTO `profiles_company` VALUES (1,'Test',NULL,'TeamTracking','EG','30.1124,31.13434','Africa/Cairo','en',NULL,'Active',NULL,'2020-03-31',NULL,1,0,'',0,'none',NULL,1,'S',1,1,1,35,55,NULL,0,0);
/*!40000 ALTER TABLE `profiles_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_companyinfo`
--

DROP TABLE IF EXISTS `profiles_companyinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_companyinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `sub_type` varchar(100) NOT NULL,
  `rank` int(11) NOT NULL,
  `text` longtext NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_companyinfo_company_id_89a1e394_fk_profiles_company_id` (`company_id`),
  CONSTRAINT `profiles_companyinfo_company_id_89a1e394_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_companyinfo`
--

LOCK TABLES `profiles_companyinfo` WRITE;
/*!40000 ALTER TABLE `profiles_companyinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_companyinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_customer`
--

DROP TABLE IF EXISTS `profiles_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `mobile_phone` varchar(15) DEFAULT NULL,
  `gender` varchar(1) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `subid` int(11) NOT NULL,
  `password` varchar(128) DEFAULT NULL,
  `is_phone_verfied` tinyint(1) NOT NULL,
  `is_email_verfied` tinyint(1) NOT NULL,
  `company_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_sms_enabled` tinyint(1) NOT NULL,
  `account_manager_id` int(11) DEFAULT NULL,
  `segment_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_customer_company_id_41dd13d2_fk_profiles_company_id` (`company_id`),
  KEY `profiles_customer_account_manager_id_a31349a4_fk_profiles_` (`account_manager_id`),
  KEY `profiles_customer_user_id_d57dea8b` (`user_id`),
  KEY `profiles_customer_segment_id_4e71f7d7_fk_inventory` (`segment_id`),
  CONSTRAINT `profiles_customer_account_manager_id_a31349a4_fk_profiles_` FOREIGN KEY (`account_manager_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `profiles_customer_company_id_41dd13d2_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `profiles_customer_segment_id_4e71f7d7_fk_inventory` FOREIGN KEY (`segment_id`) REFERENCES `inventory_customerpricesegment` (`id`),
  CONSTRAINT `profiles_customer_user_id_d57dea8b_fk_profiles_agent_id` FOREIGN KEY (`user_id`) REFERENCES `profiles_agent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_customer`
--

LOCK TABLES `profiles_customer` WRITE;
/*!40000 ALTER TABLE `profiles_customer` DISABLE KEYS */;
INSERT INTO `profiles_customer` VALUES (1,'mohamed Ali','0838339','N','fwefwe@dasda.cop','2020-03-31',1,NULL,0,0,1,NULL,0,8,NULL,1),(2,'Sherif Samy','024458','M','hanisamier@yahoo.com','2020-04-01',2,NULL,0,0,1,NULL,1,3,NULL,1),(3,'Sphinx','f','M',NULL,'2020-04-02',3,NULL,0,0,1,NULL,0,2,NULL,1),(4,'Wael Mohamed','011057','M',NULL,'2020-04-06',4,NULL,0,0,1,NULL,0,4,3,1),(5,'Banda House',NULL,'M',NULL,'2020-04-06',5,NULL,0,0,1,NULL,0,5,5,1),(6,'yahia eladal',NULL,'M',NULL,'2020-04-06',6,NULL,0,0,1,NULL,0,5,5,1),(7,'yahia ell','','M','','2020-04-06',7,NULL,0,0,1,NULL,0,5,NULL,1),(8,'fady',NULL,'M',NULL,'2020-04-06',8,NULL,0,0,1,NULL,0,5,4,1),(9,'فيا','','M','','2020-04-06',9,NULL,0,0,1,NULL,0,5,NULL,1),(10,'teadix','','M','','2020-04-07',10,NULL,0,0,1,NULL,0,5,NULL,1),(11,'fahd','','M','','2020-04-07',11,NULL,0,0,1,NULL,0,5,NULL,1),(12,'bbhh','08888888','M','bvv@ghhh.jjj','2020-04-22',12,NULL,0,0,1,NULL,0,5,1,1),(14,'Jack',NULL,'M',NULL,'2022-03-09',13,NULL,0,0,1,NULL,0,4,1,1);
/*!40000 ALTER TABLE `profiles_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_customeraddress`
--

DROP TABLE IF EXISTS `profiles_customeraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_customeraddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` longtext NOT NULL,
  `point` varchar(200) NOT NULL,
  `zone` varchar(200) NOT NULL,
  `tag` varchar(200) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `additional_number` varchar(255) DEFAULT NULL,
  `building_number` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `postal_code` varchar(15) DEFAULT NULL,
  `street_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_customeradd_customer_id_05456279_fk_profiles_` (`customer_id`),
  CONSTRAINT `profiles_customeradd_customer_id_05456279_fk_profiles_` FOREIGN KEY (`customer_id`) REFERENCES `profiles_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_customeraddress`
--

LOCK TABLES `profiles_customeraddress` WRITE;
/*!40000 ALTER TABLE `profiles_customeraddress` DISABLE KEYS */;
INSERT INTO `profiles_customeraddress` VALUES (1,'Event House Company, Gaafar Waly, Shagret Mariem, El Matareya, Egypt','(30.1253747, 31.3135229)','Cair','17 street from 45 street',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'test','(30.0396471, 31.2056471)','Cair',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'test','(30.0396471, 31.2056471)','Cair','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'h','(30.0130557, 31.2088526)','Default Zone',NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'h','(30.0130557, 31.2088526)','Default Zone','',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'dd','(30.063262273872205, 31.027643726983623)','Cairo',NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'sh','(30.1386966, 31.39708630000001)','Default Zone',NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'sh','(30.1386966, 31.39708630000001)','Default Zone',NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'hhh','(21.4537239, 39.2721262)','Default Zone',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Dandy Mall, Alexandria Desert Road, Al Giza Desert, Egypt','(30.0633737, 31.0277081)','Cair','',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Old Makkah Rd, Al Mutanazahat District, Jeddah 22353 6266, Saudi Arabia','(21.449330,39.292811)','Default Zone','wfwfwf',4,'2323','43423','cairo','EG','sdsd','11528','1066 Al Ayada Street - Zahraa Nasr City - Cairo, Egypt'),(12,'121 شارع عبد الله النديم، Industrial Area, Third New Cairo, Cairo Governorate, Egypt','(30.0006546144076,31.452101580798626)','Cairo','App',9,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'مدينة تبارك،سرياقوس، مركز الخانكة،، Saryaqos, Al Khankah, Al Qalyubia Governorate, Egypt ','(30.180294024196108, 31.305717341601852)','Cair','STAFF4',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Saad Zagloul Sq., اول القاهرة الجديدة، محافظة القاهرة‬، مصر','(30.02928768634586,31.47514242678881)','Cairo','App',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'(30.0396471, 31.2056471)','(30.0396471, 31.2056471)','Cairo',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'El-Mansheya Rd, Madinet Al Khankah, Al Khankah, Al Qalyubia Governorate, Egypt','(30.145261131912513,31.397536061704155)','Cairo','App',11,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'13 N 90th Street - Service Ln, First New Cairo, Cairo Governorate, Egypt','(30.03131086093997,31.464086025953293)','Default Zone','App',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Unnamed Road،، اول القاهرة الجديدة، محافظة القاهرة‬، مصر','(30.022337462264485,31.443029344081882)','Cairo','App',8,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'1066 Al Ayada Street - Zahraa Nasr City - Cairo, Egypt','(30.058848,31.310141)','Default Zone','Billing',4,NULL,NULL,'cairo','EG',NULL,'11528','1066 Al Ayada Street - Zahraa Nasr City - Cairo, Egypt'),(20,'Giza','(30.013056,31.208853)','Default Zone',NULL,4,NULL,'323',NULL,NULL,NULL,NULL,NULL),(21,'Maadi','(29.960156,31.256914)','Default Zone','billing',4,NULL,NULL,NULL,NULL,NULL,NULL,'Maadi');
/*!40000 ALTER TABLE `profiles_customeraddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_customercontact`
--

DROP TABLE IF EXISTS `profiles_customercontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_customercontact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `position` varchar(200) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone_1` varchar(15) DEFAULT NULL,
  `phone_2` varchar(15) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` datetime(6),
  `updated_at` datetime(6),
  PRIMARY KEY (`id`),
  KEY `profiles_customercon_company_id_2de99b3f_fk_profiles_` (`company_id`),
  KEY `profiles_customercon_customer_id_2cf13f46_fk_profiles_` (`customer_id`),
  CONSTRAINT `profiles_customercon_company_id_2de99b3f_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `profiles_customercon_customer_id_2cf13f46_fk_profiles_` FOREIGN KEY (`customer_id`) REFERENCES `profiles_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_customercontact`
--

LOCK TABLES `profiles_customercontact` WRITE;
/*!40000 ALTER TABLE `profiles_customercontact` DISABLE KEYS */;
INSERT INTO `profiles_customercontact` VALUES (1,'Ramy','Branch Manager','sherif@cndt.com','01868999',NULL,1,2,'2022-08-31 14:11:02.647678','2022-08-31 14:11:02.825701'),(2,'Ameer Abdulaziz','test','ameer@test.com','123',NULL,1,4,'2022-08-31 14:11:02.647678','2022-08-31 14:11:02.825701'),(3,'c','tc',NULL,NULL,NULL,1,4,'2022-08-31 14:14:03.934981','2022-09-04 10:58:15.221405'),(4,'e','te',NULL,NULL,NULL,1,4,'2022-08-31 14:15:34.269325','2022-09-04 10:54:54.860972'),(5,'f','tf',NULL,NULL,NULL,1,4,'2022-09-04 11:01:48.032040','2022-09-04 11:07:02.568341'),(6,'g','tg',NULL,NULL,NULL,1,4,'2022-09-04 13:13:12.902085','2022-09-04 13:14:50.304352');
/*!40000 ALTER TABLE `profiles_customercontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_customerdevice`
--

DROP TABLE IF EXISTS `profiles_customerdevice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_customerdevice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(200) NOT NULL,
  `os` varchar(200) NOT NULL,
  `imei` varchar(200) NOT NULL,
  `push_id` varchar(200) NOT NULL,
  `os_version` varchar(200) NOT NULL,
  `app_version` varchar(200) NOT NULL,
  `app_name` varchar(200) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profiles_customerdevice_customer_id_imei_44a60d90_uniq` (`customer_id`,`imei`),
  CONSTRAINT `profiles_customerdev_customer_id_1a45bad4_fk_profiles_` FOREIGN KEY (`customer_id`) REFERENCES `profiles_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_customerdevice`
--

LOCK TABLES `profiles_customerdevice` WRITE;
/*!40000 ALTER TABLE `profiles_customerdevice` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_customerdevice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_driver`
--

DROP TABLE IF EXISTS `profiles_driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_driver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(128) NOT NULL,
  `mobile_phone` varchar(13) DEFAULT NULL,
  `other_phones` varchar(100) DEFAULT NULL,
  `photo` varchar(100) NOT NULL,
  `car_number` varchar(300) DEFAULT NULL,
  `car_model` varchar(300) DEFAULT NULL,
  `car_color` varchar(300) DEFAULT NULL,
  `car_type` varchar(1) NOT NULL,
  `id_number` varchar(20) DEFAULT NULL,
  `license_number` varchar(100) DEFAULT NULL,
  `license_expire_date` date DEFAULT NULL,
  `gender` varchar(1) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `deactivated_date` date DEFAULT NULL,
  `car_expiry_date` date DEFAULT NULL,
  `average_rate` decimal(2,1) NOT NULL,
  `all_trips` int(11) NOT NULL,
  `month_trips` int(11) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `day_trips` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `area_update_time` datetime(6) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `subid` int(11) NOT NULL,
  `signup_stage` int(11) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `registration_id` longtext,
  `trip_id` int(11) DEFAULT NULL,
  `name_ar` varchar(200) DEFAULT NULL,
  `name_en` varchar(200) DEFAULT NULL,
  `direction_id` int(11) DEFAULT NULL,
  `name_es` varchar(200) DEFAULT NULL,
  `name_sv` varchar(200) DEFAULT NULL,
  `auto_assign` tinyint(1) NOT NULL,
  `is_allowed_to_add_customers` tinyint(1) NOT NULL,
  `returns_alowed` tinyint(1) NOT NULL,
  `can_view_inventory` tinyint(1) NOT NULL,
  `device_id` varchar(50) DEFAULT NULL,
  `is_sales_enabled` tinyint(1) NOT NULL,
  `restrict_end_timer_fence` tinyint(1) NOT NULL,
  `restrict_start_timer_fence` tinyint(1) NOT NULL,
  `restrict_end_timer_fence_to_start_location` tinyint(1) NOT NULL,
  `is_allowed_add_jobs_other_staff_customers` tinyint(1) NOT NULL,
  `can_edit_customer_info` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `profiles_driver_city_id_c3321eba_fk_profiles_city_id` (`city_id`),
  KEY `profiles_driver_company_id_201dc3ec_fk_profiles_company_id` (`company_id`),
  KEY `profiles_driver_zone_id_de7132e8_fk_booking_zone_id` (`zone_id`),
  CONSTRAINT `profiles_driver_city_id_c3321eba_fk_profiles_city_id` FOREIGN KEY (`city_id`) REFERENCES `profiles_city` (`id`),
  CONSTRAINT `profiles_driver_company_id_201dc3ec_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `profiles_driver_user_id_988bd3aa_fk_profiles_agent_id` FOREIGN KEY (`user_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `profiles_driver_zone_id_de7132e8_fk_booking_zone_id` FOREIGN KEY (`zone_id`) REFERENCES `booking_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_driver`
--

LOCK TABLES `profiles_driver` WRITE;
/*!40000 ALTER TABLE `profiles_driver` DISABLE KEYS */;
INSERT INTO `profiles_driver` VALUES (1,'Staff-1','staff01','123','0122',NULL,'','5','b/rr5','Blue','T',NULL,NULL,NULL,'M',NULL,'2020-04-01',NULL,NULL,0.0,0,0,NULL,0,0,NULL,1,1,0,NULL,1,2,2,'',NULL,'مندوب-1','Staff-1',NULL,'Staff-1','Staff-1',0,0,0,1,NULL,1,0,0,0,0,0),(2,'Staff-2','staff02','123','8',NULL,'',NULL,NULL,NULL,'T',NULL,NULL,NULL,'M',NULL,'2020-04-02',NULL,NULL,0.0,0,0,NULL,0,0,NULL,1,2,0,NULL,1,3,3,'cQ67xvse3IU:APA91bFMS-w9EsQInJq0y2cozveT2ebaF_E0Flc_w4sqNJyuve10a8fiC8UpmrywODNhGtUsHWWXNrLwRCUceuv613ujOPtSEtZMF1ADPXoovPtV9daMizQcbldYiuPYNy-HgKnnTEvx',NULL,'مندوب-2','Staff-2',NULL,'Staff-2','Staff-2',0,0,0,1,NULL,1,0,0,0,0,0),(3,'Staff-3','staff03','123','8',NULL,'',NULL,NULL,NULL,'T',NULL,NULL,NULL,'M',NULL,'2020-04-02',NULL,NULL,0.0,0,0,NULL,0,0,NULL,1,3,0,NULL,1,3,4,'',NULL,'مندوب-3','Staff-3',NULL,'Staff-3','Staff-3',0,0,0,1,NULL,1,0,0,0,0,0),(4,'Staff-4','staff04','123','025',NULL,'','5','b/rr5','Blue','T',NULL,NULL,NULL,'M',NULL,'2020-04-06','2021-11-21',NULL,0.0,3,3,NULL,3,0,NULL,1,4,0,NULL,1,3,5,'cAVPrQhgSnI:APA91bG3Oaa5Aa6_p30uwtTJmUC7HbUQg-29QaZRJx6C91sSKtCdSkB8kZ67cSLH6ZnfYqzVFXo2ZUUwnCaRM8YYRXFWi360ixVMrrKECSVSOK_ryWWn6dNJcdlEIsVWNACxMLe4hlYb',NULL,'مندوب4','Staff-4',NULL,'Staff-4','Staff-4',0,1,1,1,NULL,1,0,0,0,1,0),(5,'Turki Abdallah','turki','123','123',NULL,'',NULL,NULL,NULL,'T',NULL,NULL,NULL,'M',NULL,'2022-03-03',NULL,NULL,0.0,0,0,NULL,0,0,NULL,1,5,0,NULL,1,1,8,'',NULL,'تركى عبدالله','Turki Abdallah',NULL,'Test','Test',0,0,0,0,NULL,1,0,0,0,0,0),(6,'Ameer Ahmed','ameer','123','123',NULL,'',NULL,NULL,NULL,'T',NULL,NULL,NULL,'M',NULL,'2022-03-03',NULL,NULL,0.0,0,0,NULL,0,0,NULL,1,6,0,NULL,1,1,9,'',NULL,'امير احمد','Ameer Ahmed',NULL,'Ameer Ahmed','Ameer Ahmed',0,0,0,0,NULL,1,0,0,0,0,0);
/*!40000 ALTER TABLE `profiles_driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_sapcalllog`
--

DROP TABLE IF EXISTS `profiles_sapcalllog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_sapcalllog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime(6) NOT NULL,
  `action` varchar(55) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `response_code` int(10) unsigned NOT NULL,
  `result` longtext NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_sapcalllog_company_id_6d8b711e_fk_profiles_company_id` (`company_id`),
  CONSTRAINT `profiles_sapcalllog_company_id_6d8b711e_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_sapcalllog`
--

LOCK TABLES `profiles_sapcalllog` WRITE;
/*!40000 ALTER TABLE `profiles_sapcalllog` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_sapcalllog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_verficationphoneemail`
--

DROP TABLE IF EXISTS `profiles_verficationphoneemail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_verficationphoneemail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `code` varchar(200) NOT NULL,
  `created_at` date NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_verfication_company_id_c2dd0f37_fk_profiles_` (`company_id`),
  CONSTRAINT `profiles_verfication_company_id_c2dd0f37_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_verficationphoneemail`
--

LOCK TABLES `profiles_verficationphoneemail` WRITE;
/*!40000 ALTER TABLE `profiles_verficationphoneemail` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_verficationphoneemail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions_bonusrule`
--

DROP TABLE IF EXISTS `promotions_bonusrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotions_bonusrule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `quantity` decimal(9,2) DEFAULT NULL,
  `bonus` decimal(9,2) DEFAULT NULL,
  `started_at` date NOT NULL,
  `ended_at` date DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `promotions_bonusrule_created_by_id_f68c1bdd_fk_profiles_agent_id` (`created_by_id`),
  KEY `promotions_bonusrule_product_id_41efa50a_fk_inventory` (`product_id`),
  KEY `promotions_bonusrule_updated_by_id_05ff168a_fk_profiles_agent_id` (`updated_by_id`),
  CONSTRAINT `promotions_bonusrule_created_by_id_f68c1bdd_fk_profiles_agent_id` FOREIGN KEY (`created_by_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `promotions_bonusrule_product_id_41efa50a_fk_inventory` FOREIGN KEY (`product_id`) REFERENCES `inventory_products` (`id`),
  CONSTRAINT `promotions_bonusrule_updated_by_id_05ff168a_fk_profiles_agent_id` FOREIGN KEY (`updated_by_id`) REFERENCES `profiles_agent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions_bonusrule`
--

LOCK TABLES `promotions_bonusrule` WRITE;
/*!40000 ALTER TABLE `promotions_bonusrule` DISABLE KEYS */;
INSERT INTO `promotions_bonusrule` VALUES (1,'Buy 10 Get 1',10.00,1.00,'2021-11-21','2021-12-31',1,3,1),(2,'7 for 50',50.00,7.00,'2021-11-19','2021-11-20',1,1,NULL),(3,'4 for 20',20.00,4.00,'2021-12-16','2021-12-05',1,3,NULL),(4,'1 for 2',2.00,1.00,'2021-12-19','2022-03-31',1,1,NULL),(5,'test',10.00,2.00,'2022-03-08',NULL,1,2,NULL);
/*!40000 ALTER TABLE `promotions_bonusrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurrence_date`
--

DROP TABLE IF EXISTS `recurrence_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recurrence_date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mode` tinyint(1) NOT NULL,
  `dt` datetime(6) NOT NULL,
  `recurrence_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recurrence_date_recurrence_id_eb6cafba_fk_recurrenc` (`recurrence_id`),
  CONSTRAINT `recurrence_date_recurrence_id_eb6cafba_fk_recurrenc` FOREIGN KEY (`recurrence_id`) REFERENCES `recurrence_recurrence` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurrence_date`
--

LOCK TABLES `recurrence_date` WRITE;
/*!40000 ALTER TABLE `recurrence_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurrence_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurrence_param`
--

DROP TABLE IF EXISTS `recurrence_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recurrence_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `param` varchar(16) NOT NULL,
  `value` int(11) NOT NULL,
  `index` int(11) NOT NULL,
  `rule_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recurrence_param_rule_id_89d093fd_fk_recurrence_rule_id` (`rule_id`),
  CONSTRAINT `recurrence_param_rule_id_89d093fd_fk_recurrence_rule_id` FOREIGN KEY (`rule_id`) REFERENCES `recurrence_rule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurrence_param`
--

LOCK TABLES `recurrence_param` WRITE;
/*!40000 ALTER TABLE `recurrence_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurrence_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurrence_recurrence`
--

DROP TABLE IF EXISTS `recurrence_recurrence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recurrence_recurrence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dtstart` datetime(6) DEFAULT NULL,
  `dtend` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurrence_recurrence`
--

LOCK TABLES `recurrence_recurrence` WRITE;
/*!40000 ALTER TABLE `recurrence_recurrence` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurrence_recurrence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurrence_rule`
--

DROP TABLE IF EXISTS `recurrence_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recurrence_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mode` tinyint(1) NOT NULL,
  `freq` int(10) unsigned NOT NULL,
  `interval` int(10) unsigned NOT NULL,
  `wkst` int(10) unsigned DEFAULT NULL,
  `count` int(10) unsigned DEFAULT NULL,
  `until` datetime(6) DEFAULT NULL,
  `recurrence_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recurrence_rule_recurrence_id_b9b6b296_fk_recurrenc` (`recurrence_id`),
  CONSTRAINT `recurrence_rule_recurrence_id_b9b6b296_fk_recurrenc` FOREIGN KEY (`recurrence_id`) REFERENCES `recurrence_recurrence` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurrence_rule`
--

LOCK TABLES `recurrence_rule` WRITE;
/*!40000 ALTER TABLE `recurrence_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurrence_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ses_mailer_message`
--

DROP TABLE IF EXISTS `ses_mailer_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ses_mailer_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) NOT NULL,
  `to` varchar(50) NOT NULL,
  `time_sent` datetime(6) NOT NULL,
  `status` varchar(200) NOT NULL,
  `body` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ses_mailer_message`
--

LOCK TABLES `ses_mailer_message` WRITE;
/*!40000 ALTER TABLE `ses_mailer_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ses_mailer_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_taxi_favorite`
--

DROP TABLE IF EXISTS `social_taxi_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_taxi_favorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_taxi_favorite_driver_id_customer_id_11aaf4ef_uniq` (`driver_id`,`customer_id`),
  KEY `social_taxi_favorite_customer_id_234fc0dd_fk_social_ta` (`customer_id`),
  CONSTRAINT `social_taxi_favorite_customer_id_234fc0dd_fk_social_ta` FOREIGN KEY (`customer_id`) REFERENCES `social_taxi_socialcustomer` (`id`),
  CONSTRAINT `social_taxi_favorite_driver_id_deb1f8f6_fk_profiles_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `profiles_driver` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_taxi_favorite`
--

LOCK TABLES `social_taxi_favorite` WRITE;
/*!40000 ALTER TABLE `social_taxi_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_taxi_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_taxi_socialcustomer`
--

DROP TABLE IF EXISTS `social_taxi_socialcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_taxi_socialcustomer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `mobile_phone` varchar(15) DEFAULT NULL,
  `gender` varchar(1) NOT NULL,
  `email` varchar(254) NOT NULL,
  `join_date` date NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `subid` int(11) NOT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `imei` varchar(255) DEFAULT NULL,
  `phone_model` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `os_version` varchar(255) DEFAULT NULL,
  `app_version` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_taxi_socialcu_company_id_e7864b16_fk_profiles_` (`company_id`),
  KEY `social_taxi_socialcu_customer_id_7a75f0e9_fk_profiles_` (`customer_id`),
  CONSTRAINT `social_taxi_socialcu_company_id_e7864b16_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `social_taxi_socialcu_customer_id_7a75f0e9_fk_profiles_` FOREIGN KEY (`customer_id`) REFERENCES `profiles_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_taxi_socialcustomer`
--

LOCK TABLES `social_taxi_socialcustomer` WRITE;
/*!40000 ALTER TABLE `social_taxi_socialcustomer` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_taxi_socialcustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_taxi_socialid`
--

DROP TABLE IF EXISTS `social_taxi_socialid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_taxi_socialid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_taxi_socialid_customer_id_9b89d7c0_fk_social_ta` (`customer_id`),
  CONSTRAINT `social_taxi_socialid_customer_id_9b89d7c0_fk_social_ta` FOREIGN KEY (`customer_id`) REFERENCES `social_taxi_socialcustomer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_taxi_socialid`
--

LOCK TABLES `social_taxi_socialid` WRITE;
/*!40000 ALTER TABLE `social_taxi_socialid` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_taxi_socialid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_taxi_taxicalls`
--

DROP TABLE IF EXISTS `social_taxi_taxicalls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_taxi_taxicalls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime(6) NOT NULL,
  `dialed_number` varchar(15) NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_taxi_taxicalls_company_id_0cdd75b8_fk_profiles_company_id` (`company_id`),
  KEY `social_taxi_taxicall_customer_id_7130c3f2_fk_social_ta` (`customer_id`),
  KEY `social_taxi_taxicalls_driver_id_8bae72c5_fk_profiles_driver_id` (`driver_id`),
  CONSTRAINT `social_taxi_taxicall_customer_id_7130c3f2_fk_social_ta` FOREIGN KEY (`customer_id`) REFERENCES `social_taxi_socialcustomer` (`id`),
  CONSTRAINT `social_taxi_taxicalls_company_id_0cdd75b8_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `social_taxi_taxicalls_driver_id_8bae72c5_fk_profiles_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `profiles_driver` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_taxi_taxicalls`
--

LOCK TABLES `social_taxi_taxicalls` WRITE;
/*!40000 ALTER TABLE `social_taxi_taxicalls` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_taxi_taxicalls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions_companyplan`
--

DROP TABLE IF EXISTS `subscriptions_companyplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions_companyplan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number_of_drivers` int(10) unsigned NOT NULL,
  `subtotal_before` decimal(6,2) NOT NULL,
  `subtotal` decimal(6,2) NOT NULL,
  `insert_date` datetime(6) NOT NULL,
  `modify_date` datetime(6) DEFAULT NULL,
  `next_billing_date` date DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `plan_id` int(11) NOT NULL,
  `number_of_agents` int(10) unsigned NOT NULL,
  `active_surveys_limit` int(10) unsigned NOT NULL,
  `grace_notification_date` date DEFAULT NULL,
  `number_of_sales_licenses` int(10) unsigned NOT NULL,
  `route_optimization_calls` int(10) unsigned NOT NULL,
  `route_optimization_quota` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subscriptions_compan_company_id_728601fb_fk_profiles_` (`company_id`),
  KEY `subscriptions_compan_discount_id_8562f1a2_fk_subscript` (`discount_id`),
  KEY `subscriptions_compan_invoice_id_8f927657_fk_payments_` (`invoice_id`),
  KEY `subscriptions_compan_plan_id_33cfcd06_fk_subscript` (`plan_id`),
  CONSTRAINT `subscriptions_compan_company_id_728601fb_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `subscriptions_compan_discount_id_8562f1a2_fk_subscript` FOREIGN KEY (`discount_id`) REFERENCES `subscriptions_discount` (`id`),
  CONSTRAINT `subscriptions_compan_invoice_id_8f927657_fk_payments_` FOREIGN KEY (`invoice_id`) REFERENCES `payments_invoice` (`id`),
  CONSTRAINT `subscriptions_compan_plan_id_33cfcd06_fk_subscript` FOREIGN KEY (`plan_id`) REFERENCES `subscriptions_plan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions_companyplan`
--

LOCK TABLES `subscriptions_companyplan` WRITE;
/*!40000 ALTER TABLE `subscriptions_companyplan` DISABLE KEYS */;
INSERT INTO `subscriptions_companyplan` VALUES (1,10,100.00,100.00,'2020-03-31 15:45:53.604671',NULL,NULL,1,NULL,NULL,10,10,100,NULL,100,1,30);
/*!40000 ALTER TABLE `subscriptions_companyplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions_companyservice`
--

DROP TABLE IF EXISTS `subscriptions_companyservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions_companyservice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subtotal_before` decimal(6,2) NOT NULL,
  `subtotal` decimal(6,2) NOT NULL,
  `insert_date` datetime(6) NOT NULL,
  `modify_date` datetime(6) DEFAULT NULL,
  `next_billing_date` date DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `service_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subscriptions_compan_company_id_0d85b362_fk_profiles_` (`company_id`),
  KEY `subscriptions_compan_discount_id_19a3b457_fk_subscript` (`discount_id`),
  KEY `subscriptions_compan_invoice_id_4a7ff90f_fk_payments_` (`invoice_id`),
  KEY `subscriptions_compan_service_id_f547515e_fk_subscript` (`service_id`),
  CONSTRAINT `subscriptions_compan_company_id_0d85b362_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `subscriptions_compan_discount_id_19a3b457_fk_subscript` FOREIGN KEY (`discount_id`) REFERENCES `subscriptions_discount` (`id`),
  CONSTRAINT `subscriptions_compan_invoice_id_4a7ff90f_fk_payments_` FOREIGN KEY (`invoice_id`) REFERENCES `payments_invoice` (`id`),
  CONSTRAINT `subscriptions_compan_service_id_f547515e_fk_subscript` FOREIGN KEY (`service_id`) REFERENCES `subscriptions_extraservice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions_companyservice`
--

LOCK TABLES `subscriptions_companyservice` WRITE;
/*!40000 ALTER TABLE `subscriptions_companyservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions_companyservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions_discount`
--

DROP TABLE IF EXISTS `subscriptions_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions_discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(8) NOT NULL,
  `percent` int(10) unsigned NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `expire_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions_discount`
--

LOCK TABLES `subscriptions_discount` WRITE;
/*!40000 ALTER TABLE `subscriptions_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions_extraservice`
--

DROP TABLE IF EXISTS `subscriptions_extraservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions_extraservice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `price_one_time` decimal(6,2) NOT NULL,
  `price_per_unit` decimal(6,2) NOT NULL,
  `recurs` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions_extraservice`
--

LOCK TABLES `subscriptions_extraservice` WRITE;
/*!40000 ALTER TABLE `subscriptions_extraservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions_extraservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions_plan`
--

DROP TABLE IF EXISTS `subscriptions_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `end_date` datetime(6) NOT NULL,
  `min_drivers` int(10) unsigned NOT NULL,
  `max_drivers` int(10) unsigned NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `trial_days` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions_plan`
--

LOCK TABLES `subscriptions_plan` WRITE;
/*!40000 ALTER TABLE `subscriptions_plan` DISABLE KEYS */;
INSERT INTO `subscriptions_plan` VALUES (1,'Small','Up to 50 Drivers','2013-12-04 10:11:12.000000','2013-12-04 10:11:12.000000',1,50,20.00,30),(2,'Medium','From 51 to 100 Drivers','2013-12-05 00:00:00.000000','2013-12-05 00:00:00.000000',51,100,18.00,30),(3,'Large','From 101 to 200 Drivers','2013-12-05 00:00:00.000000','2013-12-05 00:00:00.000000',101,200,16.00,30),(4,'Micro','Free for up to 3 Drivers','2013-11-01 00:00:00.000000','2015-11-07 00:00:00.000000',1,20,0.00,0),(5,'Basic','Basic Service - Tracking Only & Attendance Report','2014-07-15 11:51:39.000000','2015-11-07 00:00:00.000000',10,100,5.00,14),(6,'Advanced','Advanced Dispatching Service','2014-07-15 11:52:20.000000','2015-11-07 00:00:00.000000',10,100,15.00,30),(7,'Full-Dispatch','All dispatching functionality ','2015-11-08 11:03:23.000000','2035-11-08 13:03:08.000000',1,50,15.00,30),(8,'Tracking-Only','Tracking and attendance/activity report ','2015-11-08 11:04:40.000000','2035-11-08 13:04:55.000000',1,50,5.00,15),(9,'Free-Directory','Tracking only and directory listing on finder app','2015-11-08 11:06:06.000000','2015-11-07 00:00:00.000000',0,3,0.00,0),(10,'Team-Tracking','Team-Tracking Plan','2016-03-30 15:20:32.000000','2015-06-08 17:19:45.000000',1,50,10.00,30);
/*!40000 ALTER TABLE `subscriptions_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys_answer`
--

DROP TABLE IF EXISTS `surveys_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `response_id` int(11) NOT NULL,
  `date_body` datetime(6) DEFAULT NULL,
  `text_body` varchar(200) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `surveys_answer_question_id_c0166f3c_fk_surveys_question_id` (`question_id`),
  KEY `surveys_answer_response_id_5416c873_fk_surveys_response_id` (`response_id`),
  CONSTRAINT `surveys_answer_question_id_c0166f3c_fk_surveys_question_id` FOREIGN KEY (`question_id`) REFERENCES `surveys_question` (`id`),
  CONSTRAINT `surveys_answer_response_id_5416c873_fk_surveys_response_id` FOREIGN KEY (`response_id`) REFERENCES `surveys_response` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys_answer`
--

LOCK TABLES `surveys_answer` WRITE;
/*!40000 ALTER TABLE `surveys_answer` DISABLE KEYS */;
INSERT INTO `surveys_answer` VALUES (1,3,1,NULL,'Dema',NULL),(2,4,1,NULL,'F',NULL),(3,5,1,NULL,'554',NULL),(4,6,1,'2020-04-07 15:43:00.000000',NULL,NULL),(5,3,2,NULL,'sara',NULL),(6,4,2,NULL,'F',NULL),(7,5,2,NULL,'3455',NULL),(8,6,2,'2020-04-05 16:00:00.000000',NULL,NULL),(9,3,3,NULL,'Gf',NULL),(10,4,3,NULL,'M',NULL),(11,5,3,NULL,'458',NULL),(12,6,3,'2020-04-15 17:33:00.000000',NULL,NULL),(13,3,4,NULL,'F',NULL),(14,4,4,NULL,'F',NULL),(15,5,4,NULL,'5',NULL),(16,6,4,'2020-04-23 12:32:00.000000',NULL,NULL);
/*!40000 ALTER TABLE `surveys_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys_choice`
--

DROP TABLE IF EXISTS `surveys_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choice_text` varchar(200) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `surveys_choice_question_id_03708b95_fk_surveys_question_id` (`question_id`),
  CONSTRAINT `surveys_choice_question_id_03708b95_fk_surveys_question_id` FOREIGN KEY (`question_id`) REFERENCES `surveys_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys_choice`
--

LOCK TABLES `surveys_choice` WRITE;
/*!40000 ALTER TABLE `surveys_choice` DISABLE KEYS */;
INSERT INTO `surveys_choice` VALUES (1,'M',4),(2,'F',4);
/*!40000 ALTER TABLE `surveys_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys_question`
--

DROP TABLE IF EXISTS `surveys_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subid` int(10) unsigned NOT NULL,
  `label` varchar(100) NOT NULL,
  `help_text` varchar(200) DEFAULT NULL,
  `section_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `range_max` int(11) DEFAULT NULL,
  `range_min` int(11) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `default` varchar(200) DEFAULT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `surveys_question_section_id_fc00d567_fk_surveys_section_id` (`section_id`),
  KEY `surveys_question_survey_id_0f30caa3_fk_surveys_survey_id` (`survey_id`),
  CONSTRAINT `surveys_question_section_id_fc00d567_fk_surveys_section_id` FOREIGN KEY (`section_id`) REFERENCES `surveys_section` (`id`),
  CONSTRAINT `surveys_question_survey_id_0f30caa3_fk_surveys_survey_id` FOREIGN KEY (`survey_id`) REFERENCES `surveys_survey` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys_question`
--

LOCK TABLES `surveys_question` WRITE;
/*!40000 ALTER TABLE `surveys_question` DISABLE KEYS */;
INSERT INTO `surveys_question` VALUES (1,1,'test',NULL,2,2,NULL,NULL,'DATE',NULL,1),(2,2,'test',NULL,2,2,NULL,NULL,'SCALE',NULL,1),(3,1,'Name',NULL,1,1,NULL,NULL,'TEXT',NULL,1),(4,2,'Gender',NULL,1,1,NULL,NULL,'MCQ',NULL,1),(5,3,'Mobile',NULL,1,1,NULL,NULL,'NUMBER',NULL,1),(6,4,'Visit date',NULL,1,1,NULL,NULL,'DATE',NULL,1),(7,1,'test',NULL,3,3,NULL,NULL,'DATE',NULL,1),(8,2,'test',NULL,3,3,10,2,'SCALE',NULL,1),(9,1,'test',NULL,4,4,NULL,NULL,'DATE',NULL,1),(10,2,'test',NULL,4,4,NULL,NULL,'SCALE',NULL,1);
/*!40000 ALTER TABLE `surveys_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys_response`
--

DROP TABLE IF EXISTS `surveys_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys_response` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `filled_by_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `subid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `surveys_response_booking_id_61916d1f_fk_booking_booking_id` (`booking_id`),
  KEY `surveys_response_customer_id_f79ad5a1_fk_profiles_customer_id` (`customer_id`),
  KEY `surveys_response_filled_by_id_04b45ce7_fk_profiles_agent_id` (`filled_by_id`),
  KEY `surveys_response_survey_id_907701cf_fk_surveys_survey_id` (`survey_id`),
  CONSTRAINT `surveys_response_booking_id_61916d1f_fk_booking_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking_booking` (`id`),
  CONSTRAINT `surveys_response_customer_id_f79ad5a1_fk_profiles_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `profiles_customer` (`id`),
  CONSTRAINT `surveys_response_filled_by_id_04b45ce7_fk_profiles_agent_id` FOREIGN KEY (`filled_by_id`) REFERENCES `profiles_agent` (`id`),
  CONSTRAINT `surveys_response_survey_id_907701cf_fk_surveys_survey_id` FOREIGN KEY (`survey_id`) REFERENCES `surveys_survey` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys_response`
--

LOCK TABLES `surveys_response` WRITE;
/*!40000 ALTER TABLE `surveys_response` DISABLE KEYS */;
INSERT INTO `surveys_response` VALUES (1,'2020-04-05 15:43:36.434198',5,3,1,1,1),(2,'2020-04-05 15:57:11.233095',1,2,1,1,2),(3,'2020-04-06 17:31:35.660363',24,4,5,1,3),(4,'2020-04-07 12:30:29.521104',29,4,5,1,4);
/*!40000 ALTER TABLE `surveys_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys_section`
--

DROP TABLE IF EXISTS `surveys_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `help_text` varchar(200) DEFAULT NULL,
  `survey_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `surveys_section_survey_id_41583111_fk_surveys_survey_id` (`survey_id`),
  CONSTRAINT `surveys_section_survey_id_41583111_fk_surveys_survey_id` FOREIGN KEY (`survey_id`) REFERENCES `surveys_survey` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys_section`
--

LOCK TABLES `surveys_section` WRITE;
/*!40000 ALTER TABLE `surveys_section` DISABLE KEYS */;
INSERT INTO `surveys_section` VALUES (1,1,'Customer Info.',NULL,1),(2,1,'test',NULL,2),(3,1,'test',NULL,3),(4,1,'test',NULL,4);
/*!40000 ALTER TABLE `surveys_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys_survey`
--

DROP TABLE IF EXISTS `surveys_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys_survey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `create_date` datetime(6) NOT NULL,
  `new` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `company_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `surveys_survey_company_id_12734784_fk_profiles_company_id` (`company_id`),
  KEY `surveys_survey_creator_id_1fb35575_fk_profiles_agent_id` (`creator_id`),
  CONSTRAINT `surveys_survey_company_id_12734784_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `surveys_survey_creator_id_1fb35575_fk_profiles_agent_id` FOREIGN KEY (`creator_id`) REFERENCES `profiles_agent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys_survey`
--

LOCK TABLES `surveys_survey` WRITE;
/*!40000 ALTER TABLE `surveys_survey` DISABLE KEYS */;
INSERT INTO `surveys_survey` VALUES (1,1,'Visit Report',NULL,'2020-04-01 12:15:54.946608',0,1,1,1),(2,2,'test',NULL,'2020-04-02 15:34:57.898254',0,0,1,1),(3,3,'test - Copy 01',NULL,'2020-04-05 14:47:29.474925',1,0,1,1),(4,4,'test - Copy 01',NULL,'2020-04-05 15:11:11.884075',1,0,1,1);
/*!40000 ALTER TABLE `surveys_survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariffs_bandtariff`
--

DROP TABLE IF EXISTS `tariffs_bandtariff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariffs_bandtariff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tariffs_bandtariff_company_id_c196eaf1_fk_profiles_company_id` (`company_id`),
  CONSTRAINT `tariffs_bandtariff_company_id_c196eaf1_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariffs_bandtariff`
--

LOCK TABLES `tariffs_bandtariff` WRITE;
/*!40000 ALTER TABLE `tariffs_bandtariff` DISABLE KEYS */;
/*!40000 ALTER TABLE `tariffs_bandtariff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariffs_companytariff`
--

DROP TABLE IF EXISTS `tariffs_companytariff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariffs_companytariff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deactive_date` datetime(6) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `tariff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tariffs_companytariff_company_id_2c0ed34c_fk_profiles_company_id` (`company_id`),
  KEY `tariffs_companytariff_tariff_id_fc9f2575_fk_tariffs_tariff_id` (`tariff_id`),
  CONSTRAINT `tariffs_companytariff_company_id_2c0ed34c_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `tariffs_companytariff_tariff_id_fc9f2575_fk_tariffs_tariff_id` FOREIGN KEY (`tariff_id`) REFERENCES `tariffs_tariff` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariffs_companytariff`
--

LOCK TABLES `tariffs_companytariff` WRITE;
/*!40000 ALTER TABLE `tariffs_companytariff` DISABLE KEYS */;
INSERT INTO `tariffs_companytariff` VALUES (1,NULL,1,1);
/*!40000 ALTER TABLE `tariffs_companytariff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariffs_distanceandcartypetariff`
--

DROP TABLE IF EXISTS `tariffs_distanceandcartypetariff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariffs_distanceandcartypetariff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `car_type_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tariffs_distanceandc_car_type_id_e22fa643_fk_tracking_` (`car_type_id`),
  KEY `tariffs_distanceandc_company_id_bf53dee9_fk_profiles_` (`company_id`),
  CONSTRAINT `tariffs_distanceandc_car_type_id_e22fa643_fk_tracking_` FOREIGN KEY (`car_type_id`) REFERENCES `tracking_cartype` (`id`),
  CONSTRAINT `tariffs_distanceandc_company_id_bf53dee9_fk_profiles_` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariffs_distanceandcartypetariff`
--

LOCK TABLES `tariffs_distanceandcartypetariff` WRITE;
/*!40000 ALTER TABLE `tariffs_distanceandcartypetariff` DISABLE KEYS */;
/*!40000 ALTER TABLE `tariffs_distanceandcartypetariff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariffs_rangetariff`
--

DROP TABLE IF EXISTS `tariffs_rangetariff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariffs_rangetariff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tariffs_rangetariff_company_id_0dc0d7fc_fk_profiles_company_id` (`company_id`),
  CONSTRAINT `tariffs_rangetariff_company_id_0dc0d7fc_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariffs_rangetariff`
--

LOCK TABLES `tariffs_rangetariff` WRITE;
/*!40000 ALTER TABLE `tariffs_rangetariff` DISABLE KEYS */;
/*!40000 ALTER TABLE `tariffs_rangetariff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariffs_tariff`
--

DROP TABLE IF EXISTS `tariffs_tariff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariffs_tariff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `type` varchar(10) NOT NULL,
  `model_name` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariffs_tariff`
--

LOCK TABLES `tariffs_tariff` WRITE;
/*!40000 ALTER TABLE `tariffs_tariff` DISABLE KEYS */;
INSERT INTO `tariffs_tariff` VALUES (1,'tiered distance & time','The traditional Taxi tariff in many countries where the price is calculated according to the trip total distance and the waiting time','Public','RangeTariff','2014-10-30 16:32:28.000000'),(2,'Zone-A-Zone-B','The trip price is based on the pickup zone and the drop-off zone, the operator needs to ensure that all possibilities are covered in the pricing table','Public','ZoneTariff','2014-10-30 16:33:05.000000'),(3,'Car type and total distance tariff','Car type and total distance rariff','Public','DistanceAndCarTypeTariff','2016-06-20 11:06:00.000000'),(4,'Band Tariff','BandTariff','Public','BandTariff','2016-07-19 14:43:43.000000');
/*!40000 ALTER TABLE `tariffs_tariff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariffs_zonetariff`
--

DROP TABLE IF EXISTS `tariffs_zonetariff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariffs_zonetariff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_a` varchar(100) NOT NULL,
  `zone_b` varchar(100) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tariffs_zonetariff_company_id_928d4c46_fk_profiles_company_id` (`company_id`),
  CONSTRAINT `tariffs_zonetariff_company_id_928d4c46_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariffs_zonetariff`
--

LOCK TABLES `tariffs_zonetariff` WRITE;
/*!40000 ALTER TABLE `tariffs_zonetariff` DISABLE KEYS */;
/*!40000 ALTER TABLE `tariffs_zonetariff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking_car`
--

DROP TABLE IF EXISTS `tracking_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracking_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(300) DEFAULT NULL,
  `make` varchar(300) DEFAULT NULL,
  `model` varchar(300) DEFAULT NULL,
  `color` varchar(300) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `other` longtext NOT NULL,
  `car_type_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `driver_id` (`driver_id`),
  KEY `tracking_car_car_type_id_44bbc11d_fk_tracking_cartype_id` (`car_type_id`),
  KEY `tracking_car_company_id_aacf5469_fk_profiles_company_id` (`company_id`),
  CONSTRAINT `tracking_car_car_type_id_44bbc11d_fk_tracking_cartype_id` FOREIGN KEY (`car_type_id`) REFERENCES `tracking_cartype` (`id`),
  CONSTRAINT `tracking_car_company_id_aacf5469_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `tracking_car_driver_id_f6ae6a06_fk_profiles_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `profiles_driver` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking_car`
--

LOCK TABLES `tracking_car` WRITE;
/*!40000 ALTER TABLE `tracking_car` DISABLE KEYS */;
INSERT INTO `tracking_car` VALUES (1,'5','b','rr5','Blue','2020-04-25','',1,1,4);
/*!40000 ALTER TABLE `tracking_car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking_cardriverlog`
--

DROP TABLE IF EXISTS `tracking_cardriverlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracking_cardriverlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(128) NOT NULL,
  `date` datetime(6) NOT NULL,
  `car_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tracking_cardriverlog_car_id_d5f3bca8_fk_tracking_car_id` (`car_id`),
  KEY `tracking_cardriverlog_driver_id_32c28e73_fk_profiles_driver_id` (`driver_id`),
  CONSTRAINT `tracking_cardriverlog_car_id_d5f3bca8_fk_tracking_car_id` FOREIGN KEY (`car_id`) REFERENCES `tracking_car` (`id`),
  CONSTRAINT `tracking_cardriverlog_driver_id_32c28e73_fk_profiles_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `profiles_driver` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking_cardriverlog`
--

LOCK TABLES `tracking_cardriverlog` WRITE;
/*!40000 ALTER TABLE `tracking_cardriverlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracking_cardriverlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking_cartype`
--

DROP TABLE IF EXISTS `tracking_cartype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracking_cartype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `description` longtext NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tracking_cartype_company_id_3efad16f_fk_profiles_company_id` (`company_id`),
  CONSTRAINT `tracking_cartype_company_id_3efad16f_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking_cartype`
--

LOCK TABLES `tracking_cartype` WRITE;
/*!40000 ALTER TABLE `tracking_cartype` DISABLE KEYS */;
INSERT INTO `tracking_cartype` VALUES (1,'test','',1),(2,'تيست','',1),(3,'test3','',1),(4,'te','',1);
/*!40000 ALTER TABLE `tracking_cartype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking_mapentry`
--

DROP TABLE IF EXISTS `tracking_mapentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracking_mapentry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lat` varchar(50) NOT NULL,
  `lng` varchar(50) NOT NULL,
  `push_id` varchar(500) NOT NULL,
  `last_time` datetime(6) NOT NULL,
  `status` int(11) NOT NULL,
  `accuracy` varchar(50) NOT NULL,
  `speed` varchar(50) NOT NULL,
  `added_time` datetime(6) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `battery` int(11) DEFAULT NULL,
  `heading` double DEFAULT NULL,
  `mock` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tracking_mapentry_company_id_22547d4c_fk_profiles_company_id` (`company_id`),
  KEY `tracking_mapentry_driver_id_db995792_fk_profiles_driver_id` (`driver_id`),
  CONSTRAINT `tracking_mapentry_company_id_22547d4c_fk_profiles_company_id` FOREIGN KEY (`company_id`) REFERENCES `profiles_company` (`id`),
  CONSTRAINT `tracking_mapentry_driver_id_db995792_fk_profiles_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `profiles_driver` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking_mapentry`
--

LOCK TABLES `tracking_mapentry` WRITE;
/*!40000 ALTER TABLE `tracking_mapentry` DISABLE KEYS */;
INSERT INTO `tracking_mapentry` VALUES (1,'37.4219983','-122.084','','2020-04-22 14:14:59.000000',0,'20','0.0','2020-04-22 12:14:59.895911',1,2,100,90,0),(2,'30.0536598','31.4643643','','2020-04-22 20:35:19.000000',2,'800','0.0','2020-04-22 18:35:19.457506',1,4,55,0,0);
/*!40000 ALTER TABLE `tracking_mapentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking_maplog`
--

DROP TABLE IF EXISTS `tracking_maplog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracking_maplog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lng` varchar(50) NOT NULL,
  `lat` varchar(50) NOT NULL,
  `last_time` datetime(6) NOT NULL,
  `accuracy` varchar(50) NOT NULL,
  `speed` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `added_time` datetime(6) DEFAULT NULL,
  `driver_id` int(11) NOT NULL,
  `battery` int(11) DEFAULT NULL,
  `heading` double DEFAULT NULL,
  `mock` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tracking_maplog_driver_id_06f5eb1f_fk_profiles_driver_id` (`driver_id`),
  CONSTRAINT `tracking_maplog_driver_id_06f5eb1f_fk_profiles_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `profiles_driver` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking_maplog`
--

LOCK TABLES `tracking_maplog` WRITE;
/*!40000 ALTER TABLE `tracking_maplog` DISABLE KEYS */;
INSERT INTO `tracking_maplog` VALUES (1,'31.3975498','30.1451777','2020-04-06 14:16:42.000000','17','0.0',0,'2020-04-06 12:16:42.746874',2,91,289.13263,0),(2,'31.3975498','30.1451761','2020-04-06 14:17:36.000000','17','0.0',0,'2020-04-06 12:17:36.930066',2,91,0,0),(3,'31.397551','30.1451764','2020-04-06 14:18:16.000000','16','0.0',0,'2020-04-06 12:18:16.461816',2,91,0,0),(4,'31.3975496','30.1451772','2020-04-06 14:18:58.000000','17','0.0',0,'2020-04-06 12:18:58.165588',2,92,0,0),(5,'31.3975499','30.1451776','2020-04-06 14:19:38.000000','16','0.0',0,'2020-04-06 12:19:38.592419',2,92,0,0),(6,'31.3975497','30.1451762','2020-04-06 14:20:18.000000','16','0.0',0,'2020-04-06 12:20:18.741277',2,92,0,0),(7,'31.3975514','30.1451762','2020-04-06 14:20:58.000000','16','0.0',0,'2020-04-06 12:20:58.695632',2,92,0,0),(8,'31.3975529','30.1451764','2020-04-06 14:21:38.000000','16','0.0',0,'2020-04-06 12:21:38.646240',2,92,0,0),(9,'31.3975485','30.1451759','2020-04-06 14:22:18.000000','17','0.0',0,'2020-04-06 12:22:18.796853',2,92,0,0),(10,'31.3975503','30.1451787','2020-04-06 14:22:58.000000','17','0.0',0,'2020-04-06 12:22:58.771744',2,93,0,0),(11,'31.3975503','30.1451788','2020-04-06 14:23:38.000000','17','0.0',0,'2020-04-06 12:23:38.759156',2,93,0,0),(12,'31.3975519','30.1451762','2020-04-06 14:24:18.000000','16','0.0',0,'2020-04-06 12:24:18.824091',2,93,0,0),(13,'31.3975531','30.1451765','2020-04-06 14:24:58.000000','16','0.0',0,'2020-04-06 12:24:58.915211',2,93,0,0),(14,'31.3975497','30.1451797','2020-04-06 14:25:38.000000','17','0.0',0,'2020-04-06 12:25:38.970008',2,93,0,0),(15,'31.3975531','30.1451764','2020-04-06 14:26:19.000000','16','0.0',0,'2020-04-06 12:26:19.069661',2,93,0,0),(16,'31.397547','30.1451797','2020-04-06 14:26:58.000000','17','0.0',0,'2020-04-06 12:26:58.988456',2,93,0,0),(17,'31.3975474','30.1451793','2020-04-06 14:27:38.000000','17','0.0',0,'2020-04-06 12:27:38.982589',2,94,0,0),(18,'31.3975364','30.1451744','2020-04-06 14:28:19.000000','17','0.0',0,'2020-04-06 12:28:19.067136',2,94,0,0),(19,'31.3975384','30.1451734','2020-04-06 14:28:59.000000','17','0.0',0,'2020-04-06 12:28:59.150404',2,94,0,0),(20,'31.3975507','30.145176','2020-04-06 14:29:39.000000','16','0.0',0,'2020-04-06 12:29:39.132927',2,94,0,0),(21,'31.3975505','30.1451761','2020-04-06 14:30:19.000000','16','0.0',0,'2020-04-06 12:30:19.076944',2,94,0,0),(22,'31.3975449','30.1451779','2020-04-06 14:31:19.000000','17','0.0',0,'2020-04-06 12:31:19.174409',2,94,0,0),(23,'31.3975526','30.1451761','2020-04-06 14:31:59.000000','16','0.0',0,'2020-04-06 12:31:59.119537',2,94,0,0),(24,'31.3975517','30.1451761','2020-04-06 14:32:39.000000','16','0.0',0,'2020-04-06 12:32:39.203448',2,95,0,0),(25,'31.3975516','30.145176','2020-04-06 14:33:19.000000','16','0.0',0,'2020-04-06 12:33:19.216603',2,95,0,0),(26,'31.3975505','30.1451761','2020-04-06 14:33:59.000000','16','0.0',0,'2020-04-06 12:33:59.204157',2,95,0,0),(27,'31.3975518','30.1451759','2020-04-06 14:34:39.000000','16','0.0',0,'2020-04-06 12:34:39.249629',2,95,0,0),(28,'31.3975527','30.1451758','2020-04-06 14:35:19.000000','16','0.0',0,'2020-04-06 12:35:19.366120',2,95,0,0),(29,'31.3975512','30.1451765','2020-04-06 14:35:59.000000','16','0.0',0,'2020-04-06 12:35:59.272805',2,95,0,0),(30,'31.3975526','30.1451761','2020-04-06 14:36:39.000000','16','0.0',0,'2020-04-06 12:36:39.312243',2,95,0,0),(31,'31.3975528','30.145176','2020-04-06 14:37:19.000000','16','0.0',0,'2020-04-06 12:37:19.313509',2,96,0,0),(32,'31.3975525','30.1451759','2020-04-06 14:37:59.000000','16','0.0',0,'2020-04-06 12:37:59.549190',2,96,0,0),(33,'31.3975528','30.145176','2020-04-06 14:38:39.000000','16','0.0',0,'2020-04-06 12:38:39.438525',2,96,0,0),(34,'31.3975496','30.1451791','2020-04-06 14:39:19.000000','16','0.0',0,'2020-04-06 12:39:19.557631',2,96,0,0),(35,'31.3975524','30.1451763','2020-04-06 14:39:59.000000','16','0.0',0,'2020-04-06 12:39:59.505777',2,96,0,0),(36,'31.3975523','30.1451762','2020-04-06 14:40:39.000000','16','0.0',0,'2020-04-06 12:40:39.581934',2,96,0,0),(37,'31.3975511','30.1451759','2020-04-06 14:41:19.000000','16','0.0',0,'2020-04-06 12:41:19.619764',2,97,0,0),(38,'31.3975528','30.1451757','2020-04-06 14:41:59.000000','16','0.0',0,'2020-04-06 12:41:59.546889',2,97,0,0),(39,'31.3975514','30.1451759','2020-04-06 14:42:39.000000','16','0.0',0,'2020-04-06 12:42:39.690443',2,97,0,0),(40,'31.3975517','30.1451761','2020-04-06 14:43:19.000000','16','0.0',0,'2020-04-06 12:43:19.745888',2,97,0,0),(41,'31.3975518','30.1451761','2020-04-06 14:43:59.000000','16','0.0',0,'2020-04-06 12:43:59.730971',2,97,0,0),(42,'31.3975526','30.1451761','2020-04-06 14:44:39.000000','16','0.0',0,'2020-04-06 12:44:39.805361',2,97,0,0),(43,'31.3975504','30.1451769','2020-04-06 14:45:19.000000','16','0.0',0,'2020-04-06 12:45:19.884100',2,97,0,0),(44,'31.3975503','30.1451769','2020-04-06 14:45:59.000000','16','0.0',0,'2020-04-06 12:45:59.778382',2,98,0,0),(45,'31.3975507','30.1451768','2020-04-06 14:46:39.000000','16','0.0',0,'2020-04-06 12:46:39.949794',2,98,0,0),(46,'31.39755','30.1451768','2020-04-06 14:47:17.000000','17','0.0',0,'2020-04-06 12:47:17.189142',2,98,0,0),(47,'31.3975495','30.1451768','2020-04-06 14:47:58.000000','17','0.0',0,'2020-04-06 12:47:58.115366',2,98,0,0),(48,'31.3975458','30.1451775','2020-04-06 14:48:37.000000','17','0.0',0,'2020-04-06 12:48:37.914250',2,98,0,0),(49,'31.3975514','30.1451759','2020-04-06 14:49:18.000000','16','0.0',0,'2020-04-06 12:49:18.682122',2,98,0,0),(50,'31.3975486','30.1451794','2020-04-06 14:49:58.000000','17','0.0',0,'2020-04-06 12:49:58.665029',2,98,0,0),(51,'31.3975362','30.1451761','2020-04-06 14:57:55.000000','17','0.0',0,'2020-04-06 12:57:55.224936',2,97,0,0),(52,'31.3975496','30.1451765','2020-04-06 14:58:37.000000','16','0.0',0,'2020-04-06 12:58:37.895656',2,97,0,0),(53,'31.3975506','30.1451764','2020-04-06 14:59:20.000000','16','0.0',0,'2020-04-06 12:59:20.078642',2,97,0,0),(54,'31.3975381','30.1451729','2020-04-06 15:00:00.000000','17','0.0',0,'2020-04-06 13:00:00.182020',2,97,0,0),(55,'31.3975486','30.1451779','2020-04-06 15:00:40.000000','17','0.0',0,'2020-04-06 13:00:40.179322',2,97,0,0),(56,'31.3975486','30.1451779','2020-04-06 15:00:58.000000','17','0.0',2,'2020-04-06 13:00:58.883688',2,97,0,0),(57,'31.4643911','30.054236','2020-04-06 15:01:57.000000','17','0.0',0,'2020-04-06 13:01:57.098297',4,99,0,0),(58,'31.4643596','30.0542725','2020-04-06 15:02:36.000000','25','0.49',0,'2020-04-06 13:02:36.905222',4,99,325.41223,0),(59,'31.4643661','30.0542659','2020-04-06 15:03:14.000000','42','0.07',0,'2020-04-06 13:03:14.170233',4,99,121.71365,0),(60,'31.4643776','30.05425','2020-04-06 15:04:00.000000','39','0.0',0,'2020-04-06 13:04:00.583676',4,99,0,0),(61,'31.4643776','30.05425','2020-04-06 15:04:37.000000','39','0.0',0,'2020-04-06 13:04:37.349350',4,99,0,0),(62,'31.4643776','30.05425','2020-04-06 15:05:17.000000','31','0.0',0,'2020-04-06 13:05:17.425558',4,99,0,0),(63,'31.4643776','30.05425','2020-04-06 15:05:57.000000','31','0.0',0,'2020-04-06 13:05:57.456317',4,99,0,0),(64,'31.4643782','30.0542505','2020-04-06 15:06:36.000000','17','0.0',0,'2020-04-06 13:06:36.881610',4,98,0,0),(65,'31.4643776','30.05425','2020-04-06 15:07:19.000000','31','0.0',0,'2020-04-06 13:07:19.486439',4,98,0,0),(66,'31.4643737','30.0542563','2020-04-06 15:07:57.000000','17','0.0',0,'2020-04-06 13:07:57.774751',4,98,0,0),(67,'31.4643776','30.05425','2020-04-06 15:09:00.000000','28','0.0',0,'2020-04-06 13:09:00.801838',4,98,0,0),(68,'31.4643776','30.05425','2020-04-06 15:09:41.000000','35','0.0',0,'2020-04-06 13:09:41.177968',4,98,0,0),(69,'31.4643776','30.05425','2020-04-06 15:10:18.000000','29','0.0',0,'2020-04-06 13:10:18.387488',4,98,0,0),(70,'31.4643776','30.05425','2020-04-06 15:11:12.000000','29','0.0',0,'2020-04-06 13:11:12.779081',4,97,0,0),(71,'31.4643581','30.0542745','2020-04-06 15:11:49.000000','17','0.1',0,'2020-04-06 13:11:50.209549',4,97,0,0),(72,'31.4643776','30.05425','2020-04-06 15:12:31.000000','26','0.1',0,'2020-04-06 13:12:31.534297',4,97,0,0),(73,'31.4643566','30.0542764','2020-04-06 15:13:10.000000','17','0.1',0,'2020-04-06 13:13:11.030796',4,97,0,0),(74,'31.4643725','30.0542576','2020-04-06 15:13:49.000000','17','0.1',0,'2020-04-06 13:13:49.196331',4,97,0,0),(75,'31.4643776','30.05425','2020-04-06 15:14:40.000000','28','0.0',0,'2020-04-06 13:14:40.823854',4,97,0,0),(76,'31.4643776','30.05425','2020-04-06 15:15:30.000000','26','0.0',0,'2020-04-06 13:15:30.488556',4,97,0,0),(77,'31.4643776','30.05425','2020-04-06 15:15:32.000000','26','0.0',2,'2020-04-06 13:15:32.410202',4,97,0,0),(78,'31.4643776','30.05425','2020-04-06 15:23:19.000000','31','0.0',0,'2020-04-06 13:23:19.575116',4,96,0,0),(79,'31.4643658','30.054246','2020-04-06 15:24:07.000000','17','0.0',0,'2020-04-06 13:24:07.826996',4,95,0,0),(80,'31.4643661','30.0542462','2020-04-06 15:24:48.000000','17','0.0',0,'2020-04-06 13:24:48.238499',4,95,0,0),(81,'31.4643572','30.0542755','2020-04-06 15:25:30.000000','17','0.1',0,'2020-04-06 13:25:30.475978',4,95,0,0),(82,'31.4643575','30.0542754','2020-04-06 15:26:09.000000','17','0.08',0,'2020-04-06 13:26:09.235267',4,95,154.27396,0),(83,'31.4643783','30.0542511','2020-04-06 15:26:50.000000','29','0.06',0,'2020-04-06 13:26:50.740856',4,95,216.73962,0),(84,'31.4643539','30.0542817','2020-04-06 15:27:40.000000','16','0.1',0,'2020-04-06 13:27:40.491447',4,95,0,0),(85,'31.4643807','30.0542521','2020-04-06 15:28:22.000000','29','0.14',0,'2020-04-06 13:28:22.682781',4,94,231.75716,0),(86,'31.4643776','30.05425','2020-04-06 15:29:10.000000','17','0.0',0,'2020-04-06 13:29:10.033711',4,94,0,0),(87,'31.4643776','30.05425','2020-04-06 15:29:50.000000','31','0.0',0,'2020-04-06 13:29:50.642773',4,94,0,0),(88,'31.4643539','30.0542817','2020-04-06 15:30:30.000000','16','0.1',0,'2020-04-06 13:30:30.163222',4,94,0,0),(89,'31.4643776','30.05425','2020-04-06 15:31:10.000000','28','0.1',0,'2020-04-06 13:31:10.626460',4,94,0,0),(90,'31.4643776','30.05425','2020-04-06 15:31:51.000000','29','0.0',0,'2020-04-06 13:31:51.486813',4,94,0,0),(91,'31.4643539','30.0542817','2020-04-06 15:32:31.000000','16','0.1',0,'2020-04-06 13:32:31.500633',4,94,0,0),(92,'31.4643776','30.05425','2020-04-06 15:33:11.000000','31','0.1',0,'2020-04-06 13:33:11.463375',4,94,0,0),(93,'31.4643558','30.0542779','2020-04-06 15:33:51.000000','17','0.1',0,'2020-04-06 13:33:51.501614',4,94,0,0),(94,'31.4643822','30.0542572','2020-04-06 15:34:31.000000','17','0.1',0,'2020-04-06 13:34:31.591642',4,94,0,0),(95,'31.4643776','30.05425','2020-04-06 15:35:12.000000','29','0.0',0,'2020-04-06 13:35:12.182260',4,94,0,0),(96,'31.4643776','30.05425','2020-04-06 15:35:51.000000','29','0.0',0,'2020-04-06 13:35:51.883429',4,94,0,0),(97,'31.4643776','30.05425','2020-04-06 15:37:15.000000','33','0.0',0,'2020-04-06 13:37:15.686291',4,94,0,0),(98,'31.4643776','30.05425','2020-04-06 15:38:06.000000','28','0.0',0,'2020-04-06 13:38:06.686299',4,94,0,0),(99,'31.4643739','30.0542594','2020-04-06 15:38:46.000000','17','0.0',0,'2020-04-06 13:38:46.569605',4,94,0,0),(100,'31.4643776','30.05425','2020-04-06 15:39:26.000000','28','0.0',0,'2020-04-06 13:39:26.627330',4,94,0,0),(101,'31.4643776','30.05425','2020-04-06 15:40:03.000000','29','0.0',0,'2020-04-06 13:40:04.018617',4,94,0,0),(102,'31.4643773','30.0542504','2020-04-06 15:40:42.000000','16','0.08',0,'2020-04-06 13:40:42.627744',4,94,145.09496,0),(103,'31.4643779','30.0542496','2020-04-06 15:41:19.000000','29','0.15',0,'2020-04-06 13:41:19.138754',4,94,147.1013,0),(104,'31.4643661','30.0542465','2020-04-06 15:41:59.000000','17','0.0',0,'2020-04-06 13:41:59.506615',4,93,0,0),(105,'31.4643742','30.0542517','2020-04-06 15:42:35.000000','17','0.0',0,'2020-04-06 13:42:35.380082',4,93,0,0),(106,'31.4643742','30.0542517','2020-04-06 15:43:04.000000','17','0.0',2,'2020-04-06 13:43:04.399502',4,93,0,0),(107,'31.4643776','30.05425','2020-04-06 16:04:45.000000','16','0.0',0,'2020-04-06 14:04:45.841629',4,90,90,0),(108,'31.4643717','30.0542592','2020-04-06 16:05:29.000000','16','0.0',0,'2020-04-06 14:05:29.782059',4,90,0,0),(109,'31.4643562','30.0542773','2020-04-06 16:06:11.000000','17','0.1',0,'2020-04-06 14:06:11.822979',4,90,0,0),(110,'31.4643737','30.0542564','2020-04-06 16:07:00.000000','16','0.1',0,'2020-04-06 14:07:00.437297',4,90,0,0),(111,'31.4643776','30.05425','2020-04-06 16:08:01.000000','26','0.0',0,'2020-04-06 14:08:01.053460',4,90,0,0),(112,'31.4643337','30.0536579','2020-04-06 16:08:41.000000','36','0.16',0,'2020-04-06 14:08:41.218685',4,90,183.19485,0),(113,'31.4643906','30.0542471','2020-04-06 16:09:25.000000','17','1.5',0,'2020-04-06 14:09:25.325856',4,90,0,0),(114,'31.4643776','30.05425','2020-04-06 16:10:04.000000','37','0.0',0,'2020-04-06 14:10:04.920235',4,90,0,0),(115,'31.4643776','30.05425','2020-04-06 16:10:45.000000','35','0.0',0,'2020-04-06 14:10:45.056612',4,90,0,0),(116,'31.4643782','30.0542497','2020-04-06 16:11:27.000000','29','0.01',0,'2020-04-06 14:11:27.662248',4,89,304.10107,0),(117,'31.4643576','30.0542753','2020-04-06 16:12:02.000000','17','0.1',0,'2020-04-06 14:12:02.758350',4,89,0,0),(118,'31.4643776','30.05425','2020-04-06 16:12:51.000000','17','0.1',0,'2020-04-06 14:12:51.899555',4,89,0,0),(119,'31.4643776','30.05425','2020-04-06 16:13:31.000000','29','0.0',0,'2020-04-06 14:13:31.875835',4,89,0,0),(120,'31.4643776','30.05425','2020-04-06 16:14:33.000000','35','0.0',0,'2020-04-06 14:14:33.128803',4,89,0,0),(121,'31.4643776','30.05425','2020-04-06 16:15:12.000000','33','0.0',0,'2020-04-06 14:15:12.571080',4,89,0,0),(122,'31.4643776','30.05425','2020-04-06 16:15:50.000000','29','0.0',0,'2020-04-06 14:15:50.121971',4,89,0,0),(123,'31.4643776','30.05425','2020-04-06 16:16:10.000000','29','0.0',2,'2020-04-06 14:16:10.623757',4,89,0,0),(124,'31.4643776','30.05425','2020-04-06 16:57:47.000000','28','0.0',0,'2020-04-06 14:57:47.594171',4,88,0,0),(125,'31.464365','30.0542896','2020-04-06 16:58:34.000000','17','0.1',0,'2020-04-06 14:58:34.074767',4,88,0,0),(126,'31.4643776','30.05425','2020-04-06 16:59:12.000000','26','0.1',0,'2020-04-06 14:59:12.417260',4,88,0,0),(127,'31.4643728','30.0542579','2020-04-06 16:59:54.000000','16','0.0',0,'2020-04-06 14:59:54.764076',4,88,0,0),(128,'31.4643605','30.0542981','2020-04-06 17:00:46.000000','17','0.10000000149011612',0,'2020-04-06 15:13:54.959718',4,88,0,0),(129,'31.4643776','30.0542501','2020-04-06 17:14:15.000000','35','0.03',0,'2020-04-06 15:14:15.830295',4,85,1.1174177,0),(130,'31.4643776','30.05425','2020-04-06 17:14:57.000000','26','0.0',0,'2020-04-06 15:14:57.676530',4,85,0,0),(131,'31.4643776','30.05425','2020-04-06 17:16:06.000000','26','0.0',0,'2020-04-06 15:16:06.083930',4,85,0,0),(132,'31.4643776','30.05425','2020-04-06 17:16:48.000000','37','0.0',0,'2020-04-06 15:16:48.800328',4,85,0,0),(133,'31.4643605','30.0542981','2020-04-06 17:00:46.000000','17','0.10000000149011612',0,'2020-04-06 15:17:20.184682',4,88,0,0),(134,'31.4643582','30.0542759','2020-04-06 17:17:28.000000','23','0.38',0,'2020-04-06 15:17:28.429628',4,85,327.09247,0),(135,'31.464378','30.0542494','2020-04-06 17:18:08.000000','52','0.01',0,'2020-04-06 15:18:08.687082',4,84,327.09247,0),(136,'31.4643539','30.0542817','2020-04-06 17:22:24.000000','28','0.0',0,'2020-04-06 15:22:24.322770',4,84,0,0),(137,'31.4643794','30.0542462','2020-04-06 17:23:08.000000','31','0.16',0,'2020-04-06 15:23:08.549588',4,84,340.16086,0),(138,'31.4643581','30.0542744','2020-04-06 17:23:49.000000','17','0.1',0,'2020-04-06 15:23:49.039938',4,82,0,0),(139,'31.4643558','30.054278','2020-04-06 17:24:29.000000','17','0.0',0,'2020-04-06 15:24:29.987926',4,82,0,0),(140,'31.4643776','30.05425','2020-04-06 17:25:23.000000','23','0.1',0,'2020-04-06 15:25:23.652637',4,82,0,0),(141,'31.4643776','30.05425','2020-04-06 17:26:05.000000','29','0.0',0,'2020-04-06 15:26:05.225818',4,82,0,0),(142,'31.4643776','30.05425','2020-04-06 17:27:00.000000','39','0.0',0,'2020-04-06 15:27:00.323698',4,82,0,0),(143,'31.4643539','30.0542817','2020-04-06 17:27:53.000000','16','0.1',0,'2020-04-06 15:27:53.889185',4,82,0,0),(144,'31.4643776','30.05425','2020-04-06 17:28:33.000000','37','0.1',0,'2020-04-06 15:28:33.612526',4,82,0,0),(145,'31.4643744','30.0542513','2020-04-06 17:29:13.000000','17','0.0',0,'2020-04-06 15:29:13.642134',4,82,0,0),(146,'31.4643776','30.05425','2020-04-06 17:29:53.000000','29','0.0',0,'2020-04-06 15:29:53.651587',4,82,0,0),(147,'31.4643582','30.0542742','2020-04-06 17:30:33.000000','17','0.1',0,'2020-04-06 15:30:33.719739',4,82,0,0),(148,'31.4643776','30.05425','2020-04-06 17:31:25.000000','17','0.1',0,'2020-04-06 15:31:25.064269',4,82,0,0),(149,'31.4643776','30.05425','2020-04-06 17:32:04.000000','17','0.0',0,'2020-04-06 15:32:04.965830',4,82,0,0),(150,'31.4643776','30.05425','2020-04-06 17:32:45.000000','23','0.0',0,'2020-04-06 15:32:45.101256',4,82,0,0),(151,'31.4643776','30.05425','2020-04-06 17:33:16.000000','23','0.0',2,'2020-04-06 15:33:16.130484',4,82,0,0),(152,'31.4643539','30.0542817','2020-04-07 12:19:14.000000','16','0.0',0,'2020-04-07 10:19:14.355732',4,95,337.1976,0),(153,'31.4643776','30.05425','2020-04-07 12:20:08.000000','29','0.1',0,'2020-04-07 10:20:08.178797',4,95,0,0),(154,'31.4643581','30.0542744','2020-04-07 12:38:29.000000','17','0.0',0,'2020-04-07 10:38:29.886519',4,92,0,0),(155,'31.4643581','30.0542744','2020-04-07 12:38:32.000000','17','0.0',1,'2020-04-07 10:38:32.591894',4,92,0,0),(156,'31.4643581','30.0542744','2020-04-07 12:38:37.000000','17','0.0',0,'2020-04-07 10:38:37.908757',4,92,0,0),(157,'31.4643581','30.0542744','2020-04-07 12:38:39.000000','17','0.0',1,'2020-04-07 10:38:39.733835',4,92,0,0),(158,'31.4643581','30.0542744','2020-04-07 12:38:48.000000','17','0.0',2,'2020-04-07 10:38:48.135452',4,92,0,0),(159,'31.4643776','30.05425','2020-04-08 12:49:24.000000','29','0.0',0,'2020-04-08 10:49:24.237449',4,77,0,0),(160,'31.4643776','30.05425','2020-04-08 14:17:19.000000','29','0.0',0,'2020-04-08 12:17:19.091149',4,70,0,0),(161,'31.4643947','30.0542267','2020-04-08 16:33:47.000000','16','0.17',0,'2020-04-08 14:33:47.526530',4,63,142.9714,0),(162,'31.4644126','30.0542442','2020-04-08 16:34:22.000000','4','0.69',0,'2020-04-08 14:34:22.491345',4,63,278.01596,0),(163,'31.4644492','30.0542424','2020-04-08 16:38:50.000000','6','0.09',0,'2020-04-08 14:38:50.847798',4,62,150.2685,0),(164,'31.4644581','30.0542399','2020-04-08 16:39:26.000000','3','0.0',0,'2020-04-08 14:39:26.401079',4,61,82.148735,0),(165,'31.4644535','30.0542398','2020-04-08 16:40:01.000000','10','0.07',0,'2020-04-08 14:40:01.482025',4,61,256.02417,0),(166,'31.4644512','30.0542398','2020-04-08 16:40:36.000000','10','0.0',0,'2020-04-08 14:40:36.368320',4,61,74.82569,0),(167,'31.4644462','30.0542388','2020-04-08 16:41:11.000000','13','1.09',0,'2020-04-08 14:41:11.387836',4,61,84.259514,0),(168,'31.4644457','30.0542391','2020-04-08 16:41:47.000000','13','0.53',0,'2020-04-08 14:41:47.378327',4,61,69.77847,0),(169,'31.4644398','30.0542379','2020-04-08 16:42:22.000000','10','0.03',0,'2020-04-08 14:42:22.387030',4,61,265.90128,0),(170,'31.4644389','30.0542382','2020-04-08 16:42:58.000000','11','0.0',0,'2020-04-08 14:42:58.391237',4,61,70.98439,0),(171,'31.4643663','30.054247','2020-04-08 16:44:09.000000','16','0.0',0,'2020-04-08 14:44:09.161482',4,60,0,0),(172,'31.4643668','30.0542456','2020-04-08 16:45:04.000000','17','0.0',0,'2020-04-08 14:45:04.213187',4,60,0,0),(173,'31.4644444','30.0542327','2020-04-08 16:45:38.000000','3','0.23',0,'2020-04-08 14:45:38.431450',4,60,58.265427,0),(174,'31.4644301','30.0542338','2020-04-08 16:46:13.000000','7','0.0',0,'2020-04-08 14:46:13.422100',4,60,280.20834,0),(175,'31.4644301','30.0542338','2020-04-08 16:46:25.000000','7','0.0',2,'2020-04-08 14:46:25.680195',4,60,280.20834,0),(176,'31.4645039','30.054117','2020-04-08 16:46:54.000000','17','0.58',0,'2020-04-08 14:46:55.004964',4,60,146.59187,0),(177,'31.4644181','30.0542234','2020-04-08 16:47:30.000000','4','0.23',0,'2020-04-08 14:47:30.374891',4,59,243.41966,0),(178,'31.4644159','30.0542254','2020-04-08 16:48:06.000000','12','0.0',0,'2020-04-08 14:48:06.846887',4,59,168.27881,0),(179,'31.4644139','30.0542255','2020-04-08 16:48:42.000000','12','0.0',0,'2020-04-08 14:48:42.363731',4,59,270.55753,0),(180,'31.464413','30.0542256','2020-04-08 16:49:19.000000','26','0.0',0,'2020-04-08 14:49:19.830738',4,59,90,0),(181,'31.3975414','30.1452541','2020-04-22 03:07:02.000000','14','0.0',0,'2020-04-22 01:07:02.727127',2,90,90,0),(182,'31.3975287','30.145254','2020-04-22 03:08:04.000000','14','0.31',0,'2020-04-22 01:08:04.105218',2,90,124.933716,0),(183,'31.3975209','30.1452638','2020-04-22 03:09:02.000000','14','0.0',0,'2020-04-22 01:09:02.531858',2,91,0,0),(184,'31.3975205','30.1452626','2020-04-22 03:10:02.000000','13','0.0',0,'2020-04-22 01:10:02.662841',2,91,0,0),(185,'31.3975386','30.145251','2020-04-22 03:10:58.000000','13','0.1',0,'2020-04-22 01:10:58.592477',2,91,137.87524,0),(186,'31.3975217','30.1452615','2020-04-22 03:11:54.000000','16','0.04',0,'2020-04-22 01:11:54.366371',2,91,314.6523,0),(187,'31.3975373','30.1452534','2020-04-22 03:12:49.000000','15','0.06',0,'2020-04-22 01:12:49.561741',2,91,161.08351,0),(188,'31.3975367','30.1452509','2020-04-22 03:13:45.000000','14','0.01',0,'2020-04-22 01:13:45.530445',2,92,334.71442,0),(189,'31.3975242','30.1452602','2020-04-22 03:14:29.000000','16','0.0',0,'2020-04-22 01:14:29.958236',2,92,0,0),(190,'31.3975373','30.1452506','2020-04-22 03:15:31.000000','17','0.0',0,'2020-04-22 01:15:31.608853',2,92,0,0),(191,'31.3975327','30.1452527','2020-04-22 03:16:31.000000','16','0.0',0,'2020-04-22 01:16:31.792582',2,92,0,0),(192,'31.3975325','30.1452545','2020-04-22 03:17:33.000000','17','0.0',0,'2020-04-22 01:17:33.805426',2,92,0,0),(193,'31.3975266','30.1452492','2020-04-22 03:18:33.000000','14','0.0',0,'2020-04-22 01:18:33.784947',2,92,0,0),(194,'31.3975213','30.1452606','2020-04-22 03:19:33.000000','13','0.0',0,'2020-04-22 01:19:33.773686',2,92,0,0),(195,'31.3975359','30.1452516','2020-04-22 03:20:33.000000','17','0.0',0,'2020-04-22 01:20:33.772066',2,93,0,0),(196,'31.3975379','30.1452481','2020-04-22 03:21:48.000000','13','0.0',0,'2020-04-22 01:21:48.216130',2,93,0,0),(197,'31.3975272','30.1452594','2020-04-22 03:22:48.000000','16','0.0',0,'2020-04-22 01:22:48.202491',2,93,0,0),(198,'31.397524','30.1452604','2020-04-22 03:23:47.000000','14','0.0',0,'2020-04-22 01:23:47.994238',2,93,0,0),(199,'31.3975352','30.1452537','2020-04-22 03:24:48.000000','14','0.0',0,'2020-04-22 01:24:48.072736',2,93,0,0),(200,'31.3975292','30.1452538','2020-04-22 05:19:36.000000','15','0.0',0,'2020-04-22 03:19:36.798972',2,92,0,0),(201,'31.3974959','30.1452549','2020-04-22 05:20:37.000000','25','0.1',0,'2020-04-22 03:20:37.439858',2,92,0,0),(202,'31.3975042','30.1452431','2020-04-22 08:56:32.000000','19','0.0',0,'2020-04-22 06:56:32.048022',2,89,0,0),(203,'31.3974954','30.1452447','2020-04-22 08:57:33.000000','19','0.0',0,'2020-04-22 06:57:33.284685',2,89,0,0),(204,'31.3975038','30.1452493','2020-04-22 08:58:32.000000','20','0.0',0,'2020-04-22 06:58:32.976449',2,89,0,0),(205,'31.3974431','30.1452476','2020-04-22 08:59:31.000000','26','0.1',0,'2020-04-22 06:59:31.586957',2,89,0,0),(206,'31.3974886','30.1452427','2020-04-22 09:00:31.000000','20','0.1',0,'2020-04-22 07:00:31.711058',2,89,0,0),(207,'31.3975055','30.1452433','2020-04-22 03:34:10.000000','23','0.0',0,'2020-04-22 10:56:37.837931',2,93,0,0),(208,'31.3975321','30.1452549','2020-04-22 03:35:10.000000','18','0.0',0,'2020-04-22 10:56:38.515930',2,93,0,0),(209,'31.3975181','30.145245','2020-04-22 03:37:12.000000','18','0.0',0,'2020-04-22 10:56:38.952873',2,93,0,0),(210,'31.397509','30.1452517','2020-04-22 03:43:40.000000','23','0.0',0,'2020-04-22 10:56:39.935439',2,93,0,0),(211,'31.3975356','30.1452526','2020-04-22 03:52:00.000000','19','0.0',0,'2020-04-22 10:56:40.379415',2,93,0,0),(212,'31.3975292','30.1452538','2020-04-22 04:25:43.000000','15','0.0',0,'2020-04-22 10:56:42.396933',2,92,0,0),(213,'31.3975292','30.1452538','2020-04-22 04:34:12.000000','15','0.0',0,'2020-04-22 10:56:43.822979',2,92,0,0),(214,'31.3974959','30.1452549','2020-04-22 07:20:25.000000','25','0.0',0,'2020-04-22 10:56:45.492366',2,91,0,0),(215,'31.3975265','30.1452518','2020-04-22 07:54:33.000000','16','0.0',0,'2020-04-22 10:56:46.071573',2,90,0,0),(216,'31.397471','30.145245','2020-04-22 07:57:09.000000','27','0.0',0,'2020-04-22 10:56:46.590434',2,90,0,0),(217,'31.3975193','30.1452559','2020-04-22 07:58:10.000000','19','0.10000000149011612',0,'2020-04-22 10:56:47.275975',2,90,0,0),(218,'31.3974883','30.1452494','2020-04-22 07:59:12.000000','21','0.0',0,'2020-04-22 10:56:47.741394',2,90,0,0),(219,'31.3974823','30.1452442','2020-04-22 08:00:12.000000','24','0.0',0,'2020-04-22 10:56:48.206938',2,90,0,0),(220,'31.3974846','30.1452647','2020-04-22 08:01:12.000000','20','0.0',0,'2020-04-22 10:56:48.898159',2,90,0,0),(221,'31.3974983','30.1452442','2020-04-22 08:02:12.000000','20','0.0',0,'2020-04-22 10:56:49.831693',2,90,0,0),(222,'31.3974597','30.1452502','2020-04-22 08:03:12.000000','25','0.10000000149011612',0,'2020-04-22 10:56:50.484024',2,90,0,0),(223,'31.3974794','30.1452541','2020-04-22 08:04:12.000000','21','0.0',0,'2020-04-22 10:56:51.233464',2,90,0,0),(224,'31.3975028','30.1452549','2020-04-22 08:05:12.000000','21','0.0',0,'2020-04-22 10:56:51.727749',2,90,0,0),(225,'31.3974711','30.1452449','2020-04-22 08:06:13.000000','24','0.10000000149011612',0,'2020-04-22 10:56:52.419975',2,90,0,0),(226,'31.3975269','30.1452531','2020-04-22 08:42:57.000000','16','0.0',0,'2020-04-22 10:56:53.001457',2,90,0,0),(227,'31.3974886','30.1452427','2020-04-22 09:01:18.000000','20','0.0',2,'2020-04-22 10:56:53.562366',2,89,0,0),(228,'31.3975381','30.145249','2020-04-22 13:18:49.000000','15','0.0',0,'2020-04-22 11:18:49.121122',2,83,0,0),(229,'31.3975203','30.1452658','2020-04-22 13:19:45.000000','14','0.0',0,'2020-04-22 11:19:45.607187',2,84,28.641647,0),(230,'31.3975337','30.1452534','2020-04-22 13:20:55.000000','13','0.04',0,'2020-04-22 11:20:55.269089',4,84,1.0377673,0),(231,'31.3975379','30.1452502','2020-04-22 13:21:50.000000','14','0.0',0,'2020-04-22 11:21:50.609374',4,84,0,0),(232,'31.3975227','30.1452645','2020-04-22 13:23:01.000000','14','0.0',0,'2020-04-22 11:23:01.157102',4,84,0,0),(233,'31.3975393','30.1452557','2020-04-22 13:24:00.000000','14','0.02',0,'2020-04-22 11:24:00.779559',4,84,134.04982,0),(234,'31.3975365','30.1452556','2020-04-22 13:25:07.000000','14','0.0',0,'2020-04-22 11:25:07.937819',4,84,18.397026,0),(235,'31.3975256','30.1452555','2020-04-22 13:26:13.000000','14','0.0',0,'2020-04-22 11:26:13.147435',4,84,0,0),(236,'31.3975375','30.145249','2020-04-22 13:27:13.000000','13','0.0',0,'2020-04-22 11:27:13.140296',4,85,0,0),(237,'31.397528','30.1452528','2020-04-22 13:28:13.000000','14','0.0',0,'2020-04-22 11:28:13.244282',4,85,0,0),(238,'31.3975303','30.145254','2020-04-22 13:29:11.000000','13','0.0',0,'2020-04-22 11:29:11.605718',4,85,281.07272,0),(239,'31.3975381','30.1452572','2020-04-22 13:30:06.000000','14','0.06',0,'2020-04-22 11:30:06.975260',4,85,81.01604,0),(240,'31.3975316','30.1452542','2020-04-22 13:31:02.000000','13','0.0',0,'2020-04-22 11:31:02.374216',4,85,0,0),(241,'31.3975367','30.1452503','2020-04-22 13:32:02.000000','14','0.0',0,'2020-04-22 11:32:02.395649',4,86,0,0),(242,'31.3975292','30.1452503','2020-04-22 13:33:02.000000','13','0.0',0,'2020-04-22 11:33:02.641029',4,86,0,0),(243,'31.3975198','30.1452603','2020-04-22 13:34:02.000000','13','0.0',0,'2020-04-22 11:34:02.236367',4,86,0,0),(244,'31.3975257','30.1452557','2020-04-22 13:36:18.000000','13','0.0',0,'2020-04-22 11:36:18.927436',4,86,0,0),(245,'31.3975257','30.1452557','2020-04-22 13:37:01.000000','13','0.0',2,'2020-04-22 11:37:01.138928',4,86,0,0),(246,'31.3973569','30.1451729','2020-04-22 13:37:14.000000','15','0.0',0,'2020-04-22 11:37:14.731631',2,54,0,0),(247,'-122.084','37.4219983','2020-04-22 13:46:34.000000','20','0.0',0,'2020-04-22 11:46:34.497945',4,100,90,0),(248,'-122.084','37.4219983','2020-04-22 13:46:47.000000','20','0.0',2,'2020-04-22 11:46:47.623677',4,100,90,0),(249,'-122.084','37.4219983','2020-04-22 13:55:59.000000','20','0.0',0,'2020-04-22 11:55:59.054618',2,100,0,0),(250,'-122.084','37.4219983','2020-04-22 13:56:12.000000','20','0.0',2,'2020-04-22 11:56:12.345900',2,100,0,0),(251,'-122.084','37.4219983','2020-04-22 13:56:22.000000','20','0.0',0,'2020-04-22 11:56:22.820140',2,100,0,0),(252,'-122.084','37.4219983','2020-04-22 13:57:17.000000','20','0.0',0,'2020-04-22 11:57:17.851985',2,100,0,0),(253,'-122.084','37.4219983','2020-04-22 13:57:31.000000','20','0.0',0,'2020-04-22 11:57:31.142691',2,100,0,0),(254,'-122.084','37.4219983','2020-04-22 13:58:25.000000','20','0.0',0,'2020-04-22 11:58:25.858613',2,100,90,0),(255,'-122.084','37.4219983','2020-04-22 13:59:20.000000','20','0.0',0,'2020-04-22 11:59:20.860698',2,100,90,0),(256,'-122.084','37.4219983','2020-04-22 14:00:15.000000','20','0.0',0,'2020-04-22 12:00:15.869741',2,100,90,0),(257,'-122.084','37.4219983','2020-04-22 14:01:10.000000','20','0.0',0,'2020-04-22 12:01:10.862640',2,100,90,0),(258,'-122.084','37.4219983','2020-04-22 14:02:05.000000','20','0.0',0,'2020-04-22 12:02:05.860260',2,100,90,0),(259,'-122.084','37.4219983','2020-04-22 14:03:00.000000','20','0.0',0,'2020-04-22 12:03:00.878606',2,100,90,0),(260,'-122.084','37.4219983','2020-04-22 14:03:55.000000','20','0.0',0,'2020-04-22 12:03:55.890265',2,100,90,0),(261,'-122.084','37.4219983','2020-04-22 14:04:54.000000','20','0.0',0,'2020-04-22 12:04:54.435512',2,100,90,0),(262,'-122.084','37.4219983','2020-04-22 14:05:46.000000','20','0.0',0,'2020-04-22 12:05:46.863937',2,100,90,0),(263,'-122.084','37.4219983','2020-04-22 14:06:41.000000','20','0.0',0,'2020-04-22 12:06:41.871246',2,100,90,0),(264,'-122.084','37.4219983','2020-04-22 14:07:36.000000','20','0.0',0,'2020-04-22 12:07:36.936431',2,100,90,0),(265,'-122.084','37.4219983','2020-04-22 14:08:31.000000','20','0.0',0,'2020-04-22 12:08:31.885014',2,100,90,0),(266,'-122.084','37.4219983','2020-04-22 14:09:26.000000','20','0.0',0,'2020-04-22 12:09:26.905053',2,100,90,0),(267,'-122.084','37.4219983','2020-04-22 14:10:22.000000','20','0.0',0,'2020-04-22 12:10:22.870473',2,100,90,0),(268,'-122.084','37.4219983','2020-04-22 14:11:17.000000','20','0.0',0,'2020-04-22 12:11:17.905966',2,100,90,0),(269,'-122.084','37.4219983','2020-04-22 14:12:13.000000','20','0.0',0,'2020-04-22 12:12:13.896972',2,100,90,0),(270,'-122.084','37.4219983','2020-04-22 14:13:08.000000','20','0.0',0,'2020-04-22 12:13:08.894871',2,100,90,0),(271,'-122.084','37.4219983','2020-04-22 14:14:03.000000','20','0.0',0,'2020-04-22 12:14:03.931579',2,100,90,0),(272,'-122.084','37.4219983','2020-04-22 14:14:59.000000','20','0.0',0,'2020-04-22 12:14:59.921630',2,100,90,0),(273,'31.4643672','30.0542118','2020-04-22 14:26:30.000000','10','0.05',0,'2020-04-22 12:26:30.498498',4,95,225.16026,0),(274,'31.4643679','30.0542127','2020-04-22 14:27:40.000000','10','0.01',0,'2020-04-22 12:27:40.664706',4,95,33.207706,0),(275,'31.4643878','30.0542431','2020-04-22 14:28:22.000000','13','0.1',0,'2020-04-22 12:28:22.442451',4,95,0,0),(276,'31.464387','30.0542425','2020-04-22 14:29:28.000000','11','0.35',0,'2020-04-22 12:29:28.612623',4,95,29.495052,0),(277,'31.4643741','30.0542213','2020-04-22 14:30:24.000000','16','0.0',0,'2020-04-22 12:30:24.710983',4,95,0,0),(278,'31.4643529','30.0541927','2020-04-22 14:31:28.000000','15','0.1',0,'2020-04-22 12:31:28.383950',4,94,0,0),(279,'31.4643609','30.0542006','2020-04-22 14:32:41.000000','12','0.0',0,'2020-04-22 12:32:41.824645',4,94,0,0),(280,'31.4643796','30.054231','2020-04-22 14:33:43.000000','11','0.1',0,'2020-04-22 12:33:43.980956',4,94,0,0),(281,'31.4643853','30.0542361','2020-04-22 14:34:39.000000','10','0.38',0,'2020-04-22 12:34:39.378835',4,94,27.99043,0),(282,'31.4643766','30.0542226','2020-04-22 14:35:45.000000','11','0.0',0,'2020-04-22 12:35:45.827221',4,94,0,0),(283,'31.4643873','30.0542427','2020-04-22 14:36:41.000000','12','0.0',0,'2020-04-22 12:36:41.692815',4,94,0,0),(284,'31.4643825','30.0542345','2020-04-22 14:37:41.000000','17','0.0',0,'2020-04-22 12:37:41.854633',4,94,0,0),(285,'31.4643695','30.0542167','2020-04-22 14:38:54.000000','10','0.0',0,'2020-04-22 12:38:54.967574',4,93,0,0),(286,'31.4643891','30.0542453','2020-04-22 14:39:56.000000','13','0.1',0,'2020-04-22 12:39:56.074175',4,93,0,0),(287,'31.4643766','30.054222','2020-04-22 14:42:26.000000','11','0.0',0,'2020-04-22 12:42:26.751314',4,93,0,0),(288,'31.4643891','30.054245','2020-04-22 14:43:26.000000','13','0.19',0,'2020-04-22 12:43:26.228047',4,93,351.0374,0),(289,'31.4643419','30.0541796','2020-04-22 14:44:39.000000','14','0.1',0,'2020-04-22 12:44:39.142167',4,92,0,0),(290,'31.4643404','30.054179','2020-04-22 14:45:36.000000','14','0.0',0,'2020-04-22 12:45:36.291363',4,92,0,0),(291,'31.464389','30.0542413','2020-04-22 14:46:36.000000','16','0.1',0,'2020-04-22 12:46:36.285495',4,92,0,0),(292,'31.4643878','30.054241','2020-04-22 14:47:47.000000','14','0.0',0,'2020-04-22 12:47:47.301127',4,92,0,0),(293,'31.4643489','30.0541845','2020-04-22 14:48:46.000000','11','0.1',0,'2020-04-22 12:48:46.948504',4,92,0,0),(294,'31.4643466','30.0541833','2020-04-22 14:49:46.000000','14','0.0',0,'2020-04-22 12:49:46.955348',4,92,0,0),(295,'31.4643907','30.0542448','2020-04-22 14:51:07.000000','11','0.1',0,'2020-04-22 12:51:07.040971',4,92,0,0),(296,'31.4643892','30.0542443','2020-04-22 14:54:47.000000','12','0.0',0,'2020-04-22 12:54:47.973709',4,92,0,0),(297,'31.4643892','30.0542443','2020-04-22 14:55:01.000000','12','0.0',2,'2020-04-22 12:55:02.133919',4,92,0,0),(298,'31.3973572','30.145177','2020-04-22 15:41:39.000000','15','0.0',0,'2020-04-22 13:41:39.762139',4,48,0,0),(299,'31.3973579','30.1451772','2020-04-22 15:42:32.000000','14','0.03',0,'2020-04-22 13:42:32.694507',4,48,109.50832,0),(300,'31.3973575','30.1451831','2020-04-22 15:43:29.000000','15','0.0',0,'2020-04-22 13:43:29.965407',4,47,114.49164,0),(301,'31.3973587','30.1451779','2020-04-22 15:44:38.000000','13','0.0',0,'2020-04-22 13:44:38.335734',4,47,0,0),(302,'31.3973648','30.1451741','2020-04-22 15:46:09.000000','17','0.0',0,'2020-04-22 13:46:09.784677',4,46,0,0),(303,'31.3973583','30.1451848','2020-04-22 15:47:09.000000','15','0.0',0,'2020-04-22 13:47:09.130923',4,45,0,0),(304,'31.3973572','30.1451838','2020-04-22 15:50:03.000000','14','0.0',0,'2020-04-22 13:50:03.946088',4,43,0,0),(305,'31.3973493','30.1451911','2020-04-22 15:51:18.000000','18','0.0',0,'2020-04-22 13:51:18.086782',4,42,0,0),(306,'31.397351','30.145177','2020-04-22 15:52:21.000000','15','0.0',0,'2020-04-22 13:52:21.273454',4,41,0,0),(307,'31.3973625','30.145177','2020-04-22 15:53:29.000000','19','0.0',2,'2020-04-22 13:53:29.710302',4,38,0,0),(308,'31.3973581','30.1451858','2020-04-22 15:53:52.000000','12','0.0',0,'2020-04-22 13:53:52.308683',4,39,0,0),(309,'31.397356','30.1451828','2020-04-22 15:54:47.000000','13','0.05',0,'2020-04-22 13:54:47.154414',4,39,37.692608,0),(310,'31.3973522','30.1451834','2020-04-22 15:55:45.000000','13','0.03',0,'2020-04-22 13:55:45.966022',4,40,268.09232,0),(311,'31.3973457','30.1451861','2020-04-22 15:56:43.000000','13','0.05',0,'2020-04-22 13:56:43.756998',4,41,144.31346,0),(312,'31.3973562','30.1451788','2020-04-22 15:57:44.000000','14','0.0',0,'2020-04-22 13:57:44.614155',4,42,0,0),(313,'31.3973524','30.1451902','2020-04-22 15:59:00.000000','13','0.0',0,'2020-04-22 13:59:00.928637',4,43,0,0),(314,'31.3973521','30.1451785','2020-04-22 16:00:04.000000','14','0.0',0,'2020-04-22 14:00:04.827018',4,44,0,0),(315,'31.3973551','30.1451796','2020-04-22 16:01:11.000000','16','0.0',0,'2020-04-22 14:01:11.685240',4,46,0,0),(316,'31.3973613','30.1451774','2020-04-22 16:02:10.000000','14','0.0',0,'2020-04-22 14:02:10.856915',4,47,0,0),(317,'31.397353','30.1451742','2020-04-22 16:03:30.000000','15','0.0',0,'2020-04-22 14:03:30.894891',4,48,0,0),(318,'31.3973524','30.1451833','2020-04-22 16:04:32.000000','14','0.0',0,'2020-04-22 14:04:32.778038',4,49,0,0),(319,'31.3973571','30.145176','2020-04-22 16:05:32.000000','16','0.0',0,'2020-04-22 14:05:32.769292',4,49,0,0),(320,'31.3973584','30.1451777','2020-04-22 16:06:53.000000','14','0.0',0,'2020-04-22 14:06:53.272044',4,49,0,0),(321,'31.3973547','30.1451893','2020-04-22 16:08:23.000000','13','0.0',0,'2020-04-22 14:08:23.877876',4,49,0,0),(322,'31.3973637','30.145179','2020-04-22 16:09:23.000000','14','0.0',0,'2020-04-22 14:09:23.606043',4,49,0,0),(323,'31.3973632','30.145175','2020-04-22 16:12:38.000000','18','0.0',0,'2020-04-22 14:12:38.312480',4,49,0,0),(324,'31.3973656','30.1451791','2020-04-22 16:13:38.000000','15','0.0',2,'2020-04-22 14:13:38.814670',4,49,0,0),(325,'31.3973586','30.145184','2020-04-22 16:54:33.000000','12','0.0',0,'2020-04-22 14:54:33.857397',4,49,0,0),(326,'31.3973586','30.145184','2020-04-22 16:54:34.000000','12','0.0',2,'2020-04-22 14:54:34.535086',4,49,0,0),(327,'31.39736','30.1451802','2020-04-22 16:54:38.000000','14','0.0',0,'2020-04-22 14:54:38.654595',4,49,162.32843,0),(328,'31.39736','30.1451802','2020-04-22 16:54:42.000000','14','0.0',2,'2020-04-22 14:54:42.970446',4,49,162.32843,0),(329,'31.4643643','30.0536598','2020-04-22 20:29:18.000000','800','0.0',0,'2020-04-22 18:29:18.744756',4,57,90,0),(330,'31.4643643','30.0536598','2020-04-22 20:35:19.000000','800','0.0',2,'2020-04-22 18:35:19.494527',4,55,0,0);
/*!40000 ALTER TABLE `tracking_maplog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking_statuschange`
--

DROP TABLE IF EXISTS `tracking_statuschange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracking_statuschange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lng` varchar(50) NOT NULL,
  `lat` varchar(50) NOT NULL,
  `status_time` datetime(6) NOT NULL,
  `old_status` int(11) NOT NULL,
  `new_status` int(11) NOT NULL,
  `tdelta` int(11) NOT NULL,
  `added_time` datetime(6) DEFAULT NULL,
  `imei` varchar(100) DEFAULT NULL,
  `device_type` varchar(100) DEFAULT NULL,
  `os_version` varchar(100) DEFAULT NULL,
  `app_version` varchar(100) DEFAULT NULL,
  `driver_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tracking_statuschange_driver_id_738ef05d_fk_profiles_driver_id` (`driver_id`),
  CONSTRAINT `tracking_statuschange_driver_id_738ef05d_fk_profiles_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `profiles_driver` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking_statuschange`
--

LOCK TABLES `tracking_statuschange` WRITE;
/*!40000 ALTER TABLE `tracking_statuschange` DISABLE KEYS */;
INSERT INTO `tracking_statuschange` VALUES (1,'31.3975498','30.1451777','2020-04-06 14:16:42.000000',2,0,0,'2020-04-06 12:16:42.729366','867796037625022','Xiaomi.Redmi 5A','7.1.2','4.7',2),(2,'31.3975486','30.1451779','2020-04-06 15:00:58.000000',0,2,44,'2020-04-06 13:00:58.863549','867796037625022','Xiaomi.Redmi 5A','7.1.2','4.7',2),(3,'31.4643911','30.054236','2020-04-06 15:01:57.000000',2,0,0,'2020-04-06 13:01:57.088250','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.7',4),(4,'31.4643776','30.05425','2020-04-06 15:15:32.000000',0,2,0,'2020-04-06 13:15:32.389860','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.7',4),(5,'31.4643776','30.05425','2020-04-06 15:23:19.000000',2,0,0,'2020-04-06 13:23:19.565123','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.7',4),(6,'31.4643742','30.0542517','2020-04-06 15:43:04.000000',0,2,0,'2020-04-06 13:43:04.389300','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.7',4),(7,'31.4643776','30.05425','2020-04-06 16:04:45.000000',2,0,0,'2020-04-06 14:04:45.831487','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.7',4),(8,'31.4643776','30.05425','2020-04-06 16:16:10.000000',0,2,11,'2020-04-06 14:16:10.603517','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.7',4),(9,'31.4643776','30.05425','2020-04-06 16:57:47.000000',2,0,0,'2020-04-06 14:57:47.583982','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.7',4),(10,'31.4643776','30.05425','2020-04-06 17:33:16.000000',0,2,19,'2020-04-06 15:33:16.120408','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.7',4),(11,'31.4643539','30.0542817','2020-04-07 12:19:14.000000',2,0,0,'2020-04-07 10:19:14.334654','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.7',4),(12,'31.4643581','30.0542744','2020-04-07 12:38:29.000000',2,0,0,'2020-04-07 10:38:29.876467','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.7',4),(13,'31.4643581','30.0542744','2020-04-07 12:38:32.000000',0,1,0,'2020-04-07 10:38:32.581223','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.7',4),(14,'31.4643581','30.0542744','2020-04-07 12:38:37.000000',1,0,0,'2020-04-07 10:38:37.888602','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.7',4),(15,'31.4643581','30.0542744','2020-04-07 12:38:39.000000',0,1,0,'2020-04-07 10:38:39.723459','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.7',4),(16,'31.4643581','30.0542744','2020-04-07 12:38:48.000000',1,2,0,'2020-04-07 10:38:48.125340','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.7',4),(17,'31.4643776','30.05425','2020-04-08 12:49:24.000000',2,0,0,'2020-04-08 10:49:24.217466','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.7',4),(18,'31.4643776','30.05425','2020-04-08 14:17:19.000000',2,0,0,'2020-04-08 12:17:19.081033','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.7',4),(19,'31.4643947','30.0542267','2020-04-08 16:33:47.000000',2,0,0,'2020-04-08 14:33:47.516326','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.7',4),(20,'31.4644492','30.0542424','2020-04-08 16:38:50.000000',2,0,0,'2020-04-08 14:38:50.837716','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.7',4),(21,'31.4644301','30.0542338','2020-04-08 16:46:25.000000',0,2,7,'2020-04-08 14:46:25.657320','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.7',4),(22,'31.4645039','30.054117','2020-04-08 16:46:54.000000',2,0,0,'2020-04-08 14:46:54.994577','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.7',4),(23,'31.3975414','30.1452541','2020-04-22 03:07:02.000000',2,0,0,'2020-04-22 01:07:02.715691','867796037625022','Xiaomi.Redmi 5A','7.1.2','4.9',2),(24,'31.3975242','30.1452602','2020-04-22 03:14:29.000000',2,0,0,'2020-04-22 01:14:29.948231','867796037625022','Xiaomi.Redmi 5A','7.1.2','4.9',2),(25,'','','2020-04-22 09:01:18.000000',0,2,346,'2020-04-22 10:56:53.559611','867796037625022','Xiaomi.Redmi 5A','7.1.2','4.9',2),(26,'31.3975381','30.145249','2020-04-22 13:18:49.000000',2,0,0,'2020-04-22 11:18:49.101173','867796037625022','Xiaomi.Redmi 5A','7.1.2','4.9',2),(27,'31.3975337','30.1452534','2020-04-22 13:20:55.000000',2,0,0,'2020-04-22 11:20:55.259197','867796037625022','Xiaomi.Redmi 5A','7.1.2','4.9',4),(28,'31.3975257','30.1452557','2020-04-22 13:37:01.000000',0,2,16,'2020-04-22 11:37:01.128698','867796037625022','Xiaomi.Redmi 5A','7.1.2','4.9',4),(29,'31.3973569','30.1451729','2020-04-22 13:37:14.000000',2,0,0,'2020-04-22 11:37:14.721788','867559035317566','Xiaomi.Mi A1','9','4.9',2),(30,'-122.084','37.4219983','2020-04-22 13:46:34.000000',2,0,0,'2020-04-22 11:46:34.487920','cox8FngtkzA','Google.Android SDK built for x86','10','4.9',4),(31,'-122.084','37.4219983','2020-04-22 13:46:47.000000',0,2,0,'2020-04-22 11:46:47.603970','cox8FngtkzA','Google.Android SDK built for x86','10','4.9',4),(32,'-122.084','37.4219983','2020-04-22 13:55:59.000000',2,0,0,'2020-04-22 11:55:59.044858','cQ67xvse3IU','Google.Android SDK built for x86','10','4.9',2),(33,'-122.084','37.4219983','2020-04-22 13:56:12.000000',0,2,0,'2020-04-22 11:56:12.336130','cQ67xvse3IU','Google.Android SDK built for x86','10','4.9',2),(34,'-122.084','37.4219983','2020-04-22 13:56:22.000000',2,0,0,'2020-04-22 11:56:22.810252','cQ67xvse3IU','Google.Android SDK built for x86','10','4.9',2),(35,'31.4643672','30.0542118','2020-04-22 14:26:30.000000',2,0,0,'2020-04-22 12:26:30.488370','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.9',4),(36,'31.4643892','30.0542443','2020-04-22 14:55:01.000000',0,2,0,'2020-04-22 12:55:02.065566','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.9',4),(37,'31.3973572','30.145177','2020-04-22 15:41:39.000000',2,0,0,'2020-04-22 13:41:39.752242','867559035317566','Xiaomi.Mi A1','9','4.9',4),(38,'31.3973625','30.145177','2020-04-22 15:53:29.000000',0,2,11,'2020-04-22 13:53:29.700246','867559035317566','Xiaomi.Mi A1','9','4.9',4),(39,'31.3973581','30.1451858','2020-04-22 15:53:52.000000',2,0,0,'2020-04-22 13:53:52.298608','867559035317566','Xiaomi.Mi A1','9','4.9',4),(40,'31.3973656','30.1451791','2020-04-22 16:13:38.000000',0,2,19,'2020-04-22 14:13:38.804988','867559035317566','Xiaomi.Mi A1','9','4.9',4),(41,'31.3973586','30.145184','2020-04-22 16:54:33.000000',2,0,0,'2020-04-22 14:54:33.846758','867559035317566','Xiaomi.Mi A1','9','4.9',4),(42,'31.3973586','30.145184','2020-04-22 16:54:34.000000',0,2,0,'2020-04-22 14:54:34.514772','867559035317566','Xiaomi.Mi A1','9','4.9',4),(43,'31.39736','30.1451802','2020-04-22 16:54:38.000000',2,0,0,'2020-04-22 14:54:38.644787','867559035317566','Xiaomi.Mi A1','9','4.9',4),(44,'31.39736','30.1451802','2020-04-22 16:54:42.000000',0,2,0,'2020-04-22 14:54:42.961519','867559035317566','Xiaomi.Mi A1','9','4.9',4),(45,'31.4643643','30.0536598','2020-04-22 20:29:18.000000',2,0,0,'2020-04-22 18:29:18.734558','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.9',4),(46,'31.4643643','30.0536598','2020-04-22 20:35:19.000000',0,2,6,'2020-04-22 18:35:19.483859','868931031820738','Xiaomi.Redmi Note 6 Pro','9','4.9',4);
/*!40000 ALTER TABLE `tracking_statuschange` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-07 12:53:52
