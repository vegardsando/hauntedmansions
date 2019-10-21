-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: mysql193383.mysql.sysedata.no	Database: mysql193383
-- ------------------------------------------------------
-- Server version 	5.7.27-0ubuntu0.16.04.1-log
-- Date: Mon, 21 Oct 2019 21:03:39 +0000

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
-- Table structure for table `craft_amnav_navs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_amnav_navs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_amnav_navs_handle_unq_idx` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_amnav_navs`
--

LOCK TABLES `craft_amnav_navs` WRITE;
/*!40000 ALTER TABLE `craft_amnav_navs` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_amnav_navs` VALUES (1,'Main menu','mainMenu','{\"entrySources\":\"*\",\"maxLevels\":\"\",\"canMoveFromLevel\":\"\",\"canDeleteFromLevel\":\"\"}','2018-02-09 21:54:52','2018-02-09 21:54:52','e8be7179-274b-4cfc-9481-7e9f7f2575b0');
/*!40000 ALTER TABLE `craft_amnav_navs` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_amnav_nodes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_amnav_nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `navId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `listClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `elementId` int(11) DEFAULT NULL,
  `elementType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_amnav_nodes_elementId_elementType_locale_idx` (`elementId`,`elementType`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_amnav_nodes`
--

LOCK TABLES `craft_amnav_nodes` WRITE;
/*!40000 ALTER TABLE `craft_amnav_nodes` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_amnav_nodes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_assetfiles`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `size` bigint(20) unsigned DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetfiles_filename_folderId_unq_idx` (`filename`,`folderId`),
  KEY `craft_assetfiles_sourceId_fk` (`sourceId`),
  KEY `craft_assetfiles_folderId_fk` (`folderId`),
  CONSTRAINT `craft_assetfiles_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfiles_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfiles_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assetfiles`
--

LOCK TABLES `craft_assetfiles` WRITE;
/*!40000 ALTER TABLE `craft_assetfiles` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_assetfiles` VALUES (24,1,1,'bg.jpg','image',2048,2048,1312525,'2018-02-10 00:36:42','2018-02-10 00:36:42','2018-02-10 00:36:42','9c366ec4-f2ba-4dce-9e15-8d425ea5c997'),(25,1,1,'bilde1.png','image',2048,1153,746345,'2018-02-10 00:36:55','2018-02-10 00:36:55','2018-02-10 00:36:55','fa9820fa-942b-4d84-9be5-b3c30961b2cc'),(26,1,1,'bilde1-ghost.png','image',2048,1153,797062,'2018-02-10 00:37:10','2018-02-10 00:37:10','2018-02-10 00:37:10','629a0094-c1ab-4431-a412-760c6cfe2eeb'),(27,1,1,'bilde1-stor.png','image',2048,2048,604791,'2018-02-10 00:37:14','2018-02-10 00:37:14','2018-02-10 00:37:14','ebe37714-199f-4853-bf37-019c896d59b6'),(28,1,1,'Bilde2.jpg','image',2048,1153,576811,'2018-02-10 00:37:15','2018-02-10 00:37:15','2018-02-10 00:37:15','7287dd17-705f-4eba-b0da-1409051932ba'),(29,1,1,'Bilde2.png','image',2048,1153,1096274,'2018-02-10 00:37:18','2018-02-10 00:37:19','2018-02-10 00:37:19','bf5c634a-87e0-40df-9399-5913482435fd'),(30,1,1,'Bilde2-ghost.png','image',2048,1153,1360172,'2018-02-10 00:37:22','2018-02-10 00:37:22','2018-02-10 00:37:22','1aee831e-72b6-4b6d-956f-5a293c853bd3'),(31,1,1,'bilde3-ghost.png','image',2048,1153,1203298,'2018-02-10 00:37:26','2018-02-10 00:37:26','2018-02-10 00:37:26','7c217122-a9de-4f2a-9704-00643604b224'),(32,1,1,'Bilde4.jpg','image',2048,1153,522921,'2018-02-10 00:37:27','2018-02-10 00:37:27','2018-02-10 00:37:27','37f131ea-73e7-4cbc-9f0b-aea73eef2411'),(33,1,1,'Bilde4.png','image',2048,1153,1068863,'2018-02-10 00:37:29','2018-02-10 00:37:30','2018-02-10 00:37:30','2c784e9f-c575-4ba4-b1c1-47b0cc6230df'),(35,1,3,'HM-logo.svg','image',711,195,4621,'2018-02-13 12:29:04','2018-02-10 00:40:01','2018-02-13 12:29:06','06fb4094-663b-4d30-b70f-e7420d7fa679'),(36,1,3,'icon-logo-emblem.svg','image',79,94,1226,'2018-02-10 00:41:36','2018-02-10 00:41:36','2018-02-10 00:41:36','1813db74-524b-4862-80ad-5fe31489d417'),(37,2,2,'icon-mute.svg','image',24,24,1554,'2018-02-10 01:02:58','2018-02-10 01:02:58','2018-02-10 01:02:58','8c9f6849-7e78-4ac2-91ac-133942f874e0'),(38,2,2,'icon-mute-hover.svg','image',24,24,1554,'2018-02-10 01:02:58','2018-02-10 01:02:58','2018-02-10 01:02:58','1b92c67b-dde5-4f27-a700-d0ee0ecc6747'),(39,2,2,'icon-next.svg','image',NULL,NULL,606,'2018-02-10 01:05:04','2018-02-10 01:05:04','2018-02-10 01:05:04','9aa3763b-b469-44fe-85d9-e20f8b3fd20f'),(40,2,2,'icon-prev.svg','image',NULL,NULL,748,'2018-02-10 01:05:04','2018-02-10 01:05:04','2018-02-10 01:05:04','15892343-47da-4027-89fa-d4a04215c48b'),(41,2,2,'icon-spotify.svg','image',567,171,5068,'2018-02-10 01:05:04','2018-02-10 01:05:04','2018-02-10 01:05:04','07d89abb-9995-40bc-ae73-7d556f3e292d'),(42,2,2,'Haunted-Mansions-Snippets-kort.mp3','audio',NULL,NULL,2207458,'2018-02-10 01:12:55','2018-02-10 01:12:55','2018-02-10 01:12:55','684867bd-8c79-49f3-b769-fa3b56d6d572'),(43,1,1,'27625326_10159919549415203_7567322317182933677_o.jpg','image',1851,1851,182159,'2018-02-10 01:48:57','2018-02-10 01:48:57','2018-02-10 01:48:57','68adbb62-9239-4578-afe3-db1ea87c36be'),(44,1,1,'27624891_10159898121280203_6290961494434247971_o.jpg','image',1763,1763,168005,'2018-02-10 01:50:11','2018-02-10 01:50:11','2018-02-10 01:50:11','aa9fa82e-124e-4997-b568-e0b99f237c41'),(45,1,1,'IMG_7423-ANIMATION.gif','image',972,730,9457682,'2018-02-10 01:54:33','2018-02-10 01:54:34','2018-02-10 01:54:34','87d1209a-b467-4621-90ce-113552bba775'),(47,1,4,'icon-spotify.svg','image',567,171,5068,'2018-02-10 15:19:10','2018-02-10 15:19:10','2018-02-10 15:19:10','37ea3668-7ebc-4ef2-a538-2c6967fa0eb4'),(49,1,4,'icon-facebook.svg','image',NULL,NULL,3889,'2018-02-10 15:35:58','2018-02-10 15:35:58','2018-02-10 15:35:58','c2106df2-aabb-4df7-9e34-a9f012a0b8b5'),(51,1,4,'icon-applemusic.svg','image',NULL,NULL,2204,'2018-02-10 16:08:39','2018-02-10 16:08:39','2018-02-10 16:08:39','29cacd0f-f8d0-4f9d-8138-7a3597aeb701'),(52,1,4,'icon-bandcamp.svg','image',NULL,NULL,2914,'2018-02-10 16:08:39','2018-02-10 16:08:39','2018-02-10 16:08:39','52d33393-6d59-4114-9033-426cb11a1d32'),(53,1,4,'icon-tidal.svg','image',NULL,NULL,2393,'2018-02-10 16:08:39','2018-02-10 16:08:39','2018-02-10 16:08:39','c4c6491a-223a-41d9-bd4f-45ae7e8ab679'),(56,1,4,'icon-instagram.svg','image',NULL,NULL,6265,'2018-02-12 19:50:26','2018-02-12 19:50:26','2018-02-12 19:50:26','82bade33-7db2-4780-81ac-7208bf934529');
/*!40000 ALTER TABLE `craft_assetfiles` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_assetfolders`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assetfolders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetfolders_name_parentId_sourceId_unq_idx` (`name`,`parentId`,`sourceId`),
  KEY `craft_assetfolders_parentId_fk` (`parentId`),
  KEY `craft_assetfolders_sourceId_fk` (`sourceId`),
  CONSTRAINT `craft_assetfolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfolders_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assetfolders`
--

LOCK TABLES `craft_assetfolders` WRITE;
/*!40000 ALTER TABLE `craft_assetfolders` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_assetfolders` VALUES (1,NULL,1,'Bilder','','2015-10-23 11:09:33','2015-10-23 11:09:33','f3142658-3fb9-4b94-92e5-763bed9dc7d7'),(2,NULL,2,'Filer','','2018-02-09 22:47:00','2018-02-09 22:47:00','bbf0c136-dc38-494a-80b4-7219a564d012'),(3,1,1,'Logo','Logo/','2018-02-10 00:39:47','2018-02-10 00:39:47','2d2210f5-8523-4398-bf45-a8b4fbba1470'),(4,1,1,'Ikoner','Ikoner/','2018-02-10 15:19:05','2018-02-10 15:19:05','fe4386ea-f4c7-41f1-a0db-9e0bfd8c55cc');
/*!40000 ALTER TABLE `craft_assetfolders` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_assetindexdata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assetindexdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(10) NOT NULL,
  `offset` int(10) NOT NULL,
  `uri` text COLLATE utf8_unicode_ci,
  `size` bigint(20) unsigned DEFAULT NULL,
  `recordId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetindexdata_sessionId_sourceId_offset_unq_idx` (`sessionId`,`sourceId`,`offset`),
  KEY `craft_assetindexdata_sourceId_fk` (`sourceId`),
  CONSTRAINT `craft_assetindexdata_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assetindexdata`
--

LOCK TABLES `craft_assetindexdata` WRITE;
/*!40000 ALTER TABLE `craft_assetindexdata` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_assetindexdata` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_assetsources`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assetsources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetsources_name_unq_idx` (`name`),
  UNIQUE KEY `craft_assetsources_handle_unq_idx` (`handle`),
  KEY `craft_assetsources_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_assetsources_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assetsources`
--

LOCK TABLES `craft_assetsources` WRITE;
/*!40000 ALTER TABLE `craft_assetsources` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_assetsources` VALUES (1,'Bilder','bilder','Local','{\"path\":\"dynamic\\/upload\\/bilder\\/\",\"publicURLs\":\"1\",\"url\":\"{cdnUrl}dynamic\\/upload\\/bilder\\/\"}',1,35,'2015-10-23 11:09:33','2016-06-08 08:27:39','5d69cfc0-d339-4cdc-a766-5021734e479a'),(2,'Filer','filer','Local','{\"path\":\"dynamic\\/upload\\/filer\\/\",\"publicURLs\":\"1\",\"url\":\"{cdnUrl}dynamic\\/upload\\/filer\\/\"}',2,68,'2018-02-09 22:47:00','2018-02-09 22:47:00','4ca275f9-3370-43eb-b188-3f26dcdd320a');
/*!40000 ALTER TABLE `craft_assetsources` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_assettransformindex`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assettransformindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT NULL,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_assettransformindex_sourceId_fileId_location_idx` (`sourceId`,`fileId`,`location`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assettransformindex`
--

LOCK TABLES `craft_assettransformindex` WRITE;
/*!40000 ALTER TABLE `craft_assettransformindex` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_assettransformindex` VALUES (1,27,'bilde1-stor.png',NULL,'_300xAUTO_crop_center-center',1,1,1,'2018-02-11 14:48:12','2018-02-11 14:48:12','2018-02-11 14:48:12','4966fb77-b067-4050-b052-147e4b80e45b'),(2,35,'HM-logo.svg',NULL,'_300xAUTO_crop_center-center',1,1,1,'2018-06-04 19:54:26','2018-06-04 19:54:26','2018-06-04 19:54:26','f11b9623-d162-48e5-81af-ea3389500cb3');
/*!40000 ALTER TABLE `craft_assettransformindex` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_assettransforms`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assettransforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `height` int(10) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(10) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`),
  UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assettransforms`
--

LOCK TABLES `craft_assettransforms` WRITE;
/*!40000 ALTER TABLE `craft_assettransforms` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_assettransforms` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_categories`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_categories_groupId_fk` (`groupId`),
  CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_categories`
--

LOCK TABLES `craft_categories` WRITE;
/*!40000 ALTER TABLE `craft_categories` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_categories` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_categorygroups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_categorygroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_categorygroups_name_unq_idx` (`name`),
  UNIQUE KEY `craft_categorygroups_handle_unq_idx` (`handle`),
  KEY `craft_categorygroups_structureId_fk` (`structureId`),
  KEY `craft_categorygroups_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_categorygroups`
--

LOCK TABLES `craft_categorygroups` WRITE;
/*!40000 ALTER TABLE `craft_categorygroups` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_categorygroups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_categorygroups_i18n`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_categorygroups_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_categorygroups_i18n_groupId_locale_unq_idx` (`groupId`,`locale`),
  KEY `craft_categorygroups_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_categorygroups_i18n_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_categorygroups_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_categorygroups_i18n`
--

LOCK TABLES `craft_categorygroups_i18n` WRITE;
/*!40000 ALTER TABLE `craft_categorygroups_i18n` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_categorygroups_i18n` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_content`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_fokuspunkt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_alt` text COLLATE utf8_unicode_ci,
  `field_overskrift` text COLLATE utf8_unicode_ci,
  `field_tekst` text COLLATE utf8_unicode_ci,
  `field_defaultField1` text COLLATE utf8_unicode_ci,
  `field_aboutTheMusic` text COLLATE utf8_unicode_ci,
  `field_enkelTekst` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_content_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_content_title_idx` (`title`),
  KEY `craft_content_locale_fk` (`locale`),
  CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_content_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_content`
--

LOCK TABLES `craft_content` WRITE;
/*!40000 ALTER TABLE `craft_content` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_content` VALUES (1,1,'nb_no',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-10-08 10:49:48','2018-02-10 15:00:05','22bdfcbe-634e-4e2b-aa58-5153c4ae4ef9'),(11,11,'nb_no','Forside',NULL,NULL,'Blablablablabla',NULL,NULL,'<p>Norwegian newcomers Haunted Mansions bring psychedelic warmth and understated confidence to their hiphop-inspired indie weirdness. Haunted Mansions namecheck Portugal The Man, Danger Mouse and Gorillaz when asked to describe their music and while those artists have inspired Haunted Mansions it\'s clear to all that they bring their own flavour to the music as well. The band combines old-school hiphop beats, almost shimmering acoustic guitars, textured synths and weird, smoky and infectious vocals to perfection. The songs are seductive in all their gloom, mildly psychedelic and strongly melodic, but most of all just really great<br /></p>','<p>Press stuffaeraswerawer</p>','2017-02-08 21:28:29','2018-02-12 19:44:22','b5ca18cc-f624-46fb-b6aa-c39b2e538fe3'),(12,15,'nb_no','Press stuff',NULL,NULL,NULL,NULL,NULL,NULL,'<p>Press photos and other goodies</p>','2018-02-09 18:01:34','2018-02-11 14:48:12','e3df9707-f4f4-4dc1-bdf7-36f2a6be03b9'),(14,19,'nb_no',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<p>The band: <a href=\"mailto:%20hello@hauntedmansions.no\" target=\"_blank\" rel=\"noreferrer noopener\">hello@hauntedmansions.no</a> Label: <a href=\"http://www.riotfactory.no\" target=\"_blank\" rel=\"noreferrer noopener\">Riot Factory</a></p>','2018-02-09 19:23:12','2018-02-12 19:50:47','86a45cfd-cb89-4e14-acd8-26791059ca06'),(17,24,'nb_no','Bg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 00:36:42','2018-02-10 00:36:42','fe9fa28a-c420-4b65-807c-9e37158c2be4'),(18,25,'nb_no','Bilde1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 00:36:55','2018-02-10 00:36:55','5c987012-5db4-4c6d-accd-d56d2e08248e'),(19,26,'nb_no','Bilde1 Ghost',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 00:37:10','2018-02-10 00:37:10','b21d4b8f-b67d-4fef-90b8-83149afbe3ec'),(20,27,'nb_no','Bilde1 Stor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 00:37:14','2018-02-10 00:37:14','49ba47e5-2ee4-4dd2-a4a2-71fac1a04e7c'),(21,28,'nb_no','Bilde2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 00:37:15','2018-02-10 00:37:15','f481466b-4fef-48e9-9807-b3f56a488ce6'),(22,29,'nb_no','Bilde2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 00:37:19','2018-02-10 00:37:19','c28b3ab0-1873-4860-a228-aa9478582871'),(23,30,'nb_no','Bilde2 Ghost',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 00:37:22','2018-02-10 00:37:22','f5262760-f9d4-40b6-8cb7-96b92cdce262'),(24,31,'nb_no','Bilde3 Ghost',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 00:37:26','2018-02-10 00:37:26','dd6e4b8f-7454-41a4-a02a-bae1f527f8ad'),(25,32,'nb_no','Bilde4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 00:37:27','2018-02-10 00:37:27','dc297bb6-e79a-4aac-9d2c-dbbcdb926746'),(26,33,'nb_no','Bilde4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 00:37:30','2018-02-10 00:37:30','ae3eeea4-7a2f-4ce0-b324-737cd7b37cbb'),(28,35,'nb_no','Hm Logo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 00:40:01','2018-02-13 12:29:06','8c34449a-2278-4aa0-ae5f-35f55e64d556'),(29,36,'nb_no','Icon Logo Emblem',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 00:41:36','2018-02-10 00:41:36','2bacf44d-fdf0-4a05-9d2a-5ee6e0aa4f40'),(30,37,'nb_no','Icon Mute',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 01:02:58','2018-02-10 01:02:58','160f828c-713b-4e1e-bb19-bf2eb5d8d8b3'),(31,38,'nb_no','Icon Mute Hover',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 01:02:58','2018-02-10 01:02:58','6648c9e6-e652-43d7-9525-07ebdf3bb9ee'),(32,39,'nb_no','Icon Next',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 01:05:04','2018-02-10 01:05:04','a8012491-ea50-4d79-bab3-0655b0bb4a45'),(33,40,'nb_no','Icon Prev',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 01:05:04','2018-02-10 01:05:04','a748d7f2-05e2-4886-baf5-ac9c25a83c45'),(34,41,'nb_no','Icon Spotify',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 01:05:04','2018-02-10 01:05:04','31bff887-ae39-4981-9814-af7232050df5'),(35,42,'nb_no','Haunted Mansions Snippets Kort',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 01:12:55','2018-02-10 01:12:55','04fffc04-134e-4366-b72d-b8bca8311c59'),(36,43,'nb_no','27625326 10159919549415203 7567322317182933677 O',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 01:48:57','2018-02-10 01:48:57','c5295ff1-6277-4632-a114-1bb6eba0566c'),(37,44,'nb_no','27624891 10159898121280203 6290961494434247971 O',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 01:50:11','2018-02-10 01:50:11','7f9d7ec5-8638-4d80-93aa-92389507f8ba'),(38,45,'nb_no','Img 7423 Animation',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 01:54:34','2018-02-10 01:54:34','22ff15c2-1cf2-4a44-ab17-c84e6f874244'),(39,47,'nb_no','Icon Spotify',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 15:19:10','2018-02-10 15:19:10','fa66340e-7f8e-4aea-bfd1-45dfc5a21416'),(40,49,'nb_no','Icon Facebook',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 15:35:58','2018-02-10 15:35:58','d1d6ec82-c5ca-40c2-9dfd-52089dc6b046'),(41,51,'nb_no','Icon Applemusic',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 16:08:39','2018-02-10 16:08:39','659c10fd-4947-4eb7-8d80-22f4b85845ab'),(42,52,'nb_no','Icon Bandcamp',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 16:08:39','2018-02-10 16:08:39','f533617a-11fa-4a88-8655-6d5dc57be76d'),(43,53,'nb_no','Icon Tidal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-10 16:08:39','2018-02-10 16:08:39','8ef25a7c-1c57-46e8-a8a9-63a30b36ff11'),(44,56,'nb_no','Icon Instagram',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-12 19:50:26','2018-02-12 19:50:26','4de11c1b-a1de-4575-941a-d1709dc789b9');
/*!40000 ALTER TABLE `craft_content` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_cpnav_layouts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_cpnav_layouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isDefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_cpnav_layouts`
--

LOCK TABLES `craft_cpnav_layouts` WRITE;
/*!40000 ALTER TABLE `craft_cpnav_layouts` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_cpnav_layouts` VALUES (1,'Default',1,NULL,'2015-10-25 12:33:16','2015-10-25 12:33:16','33b57956-f2e1-4083-8cab-fe3c86d701c2');
/*!40000 ALTER TABLE `craft_cpnav_layouts` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_cpnav_navs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_cpnav_navs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) DEFAULT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prevLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `order` int(10) DEFAULT '0',
  `prevUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customIcon` text COLLATE utf8_unicode_ci,
  `manualNav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `newWindow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_cpnav_navs_layoutId_fk` (`layoutId`),
  CONSTRAINT `craft_cpnav_navs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_cpnav_layouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_cpnav_navs`
--

LOCK TABLES `craft_cpnav_navs` WRITE;
/*!40000 ALTER TABLE `craft_cpnav_navs` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_cpnav_navs` VALUES (1,1,'dashboard','Kontrollpanel','Kontrollpanel',1,1,'dashboard','dashboard','gauge',NULL,0,0,'2015-10-25 12:33:16','2018-02-10 14:57:56','8389e86d-0c7f-4ab2-ae0e-dbfc180a967b'),(3,1,'assets','Filer','Filer',1,5,'assets','assets','assets',NULL,0,0,'2015-10-25 12:33:16','2018-02-10 14:57:56','e81b6a91-78f4-4302-9c73-99f416a526a0'),(5,1,'settings','Innstillinger','Innstillinger',1,7,'settings','settings','settings',NULL,0,0,'2016-01-19 15:33:51','2018-02-10 14:57:56','6fd29f8c-59cd-4003-835d-14a411012823'),(15,1,'seomatic','SEOmatic','SEOmatic',1,8,'seomatic','seomatic','iconSvg-seomatic',NULL,0,0,'2016-06-14 12:18:20','2018-02-10 14:57:56','f22a3452-e1b2-4c14-86b5-7de93e35175f'),(16,1,'entries','Artikler','Artikler',1,10,'entries','entries','section',NULL,0,0,'2017-02-08 21:28:36','2018-02-10 14:57:56','d4d2fc37-4e43-425d-9498-ffcc784a1b63'),(18,1,'sproutforms','Sprout Forms','Sprout Forms',1,9,'sproutforms','sproutforms','iconSvg-sproutforms',NULL,0,0,'2018-02-09 17:23:28','2018-02-10 14:57:56','2506f768-f075-42cf-acec-b1ad35f58372'),(19,1,'globals','Globaler','Footer og logo',1,6,'globals/footer','globals/footer','globe','',0,0,'2018-02-09 19:23:13','2018-02-10 14:58:17','0a380edf-7351-492e-a3fa-c4d11902f98f'),(20,1,'amnav','a&m nav','Hovedmeny',1,2,'amnav','amnav','iconSvg-amnav','',0,0,'2018-02-09 21:54:35','2018-02-10 14:57:56','b7689543-037b-4a1b-87b3-cd91b3c2516b'),(21,1,'forside','Forside','Forside',1,3,'dfg','https://193376-www.web.tornado-node.net/admin/entries/forside/11-forside',NULL,'',1,0,'2018-02-10 14:57:34','2018-02-10 14:58:47','0e2872a1-3683-4986-b81d-6e33c44a2831'),(22,1,'pressStuff','Press stuff','Press stuff',1,4,'dfg','https://193376-www.web.tornado-node.net/admin/entries/pressStuff/15-press-stuff',NULL,'',1,0,'2018-02-10 14:57:39','2018-02-10 14:58:37','c63355be-d83d-4d9f-a592-2030ccf33dbb'),(23,1,'oauth','OAuth','OAuth',1,5,'oauth','oauth','iconSvg-oauth',NULL,0,0,'2018-02-13 23:36:37','2018-02-13 23:36:37','65ec52f9-4f16-4dec-970f-843383bbe052');
/*!40000 ALTER TABLE `craft_cpnav_navs` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_deprecationerrors`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_deprecationerrors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) unsigned NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templateLine` smallint(6) unsigned DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_deprecationerrors`
--

LOCK TABLES `craft_deprecationerrors` WRITE;
/*!40000 ALTER TABLE `craft_deprecationerrors` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_deprecationerrors` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_elementindexsettings`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_elementindexsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elementindexsettings_type_unq_idx` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_elementindexsettings`
--

LOCK TABLES `craft_elementindexsettings` WRITE;
/*!40000 ALTER TABLE `craft_elementindexsettings` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_elementindexsettings` VALUES (1,'Asset','{\"sources\":{\"folder:1\":{\"tableAttributes\":{\"1\":\"filename\",\"2\":\"size\",\"3\":\"dateModified\",\"4\":\"kind\",\"5\":\"imageSize\"}}}}','2017-02-08 21:18:26','2017-02-08 21:18:26','ccc6f185-254a-49b2-b6da-15af96e9c7c0');
/*!40000 ALTER TABLE `craft_elementindexsettings` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_elements`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_elements_type_idx` (`type`),
  KEY `craft_elements_enabled_idx` (`enabled`),
  KEY `craft_elements_archived_dateCreated_idx` (`archived`,`dateCreated`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_elements`
--

LOCK TABLES `craft_elements` WRITE;
/*!40000 ALTER TABLE `craft_elements` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_elements` VALUES (1,'User',1,0,'2014-10-08 10:49:48','2018-02-10 15:00:05','ffb29a05-dcce-4b95-85c8-cba0b3353fca'),(11,'Entry',1,0,'2017-02-08 21:28:29','2018-02-12 19:44:22','b9362874-1f4d-4cec-8734-912e2dc5031b'),(14,'SproutForms_Form',1,0,'2018-02-09 17:23:31','2018-02-09 18:35:13','1ada1e70-efaa-4adc-92f2-02c61c50e100'),(15,'Entry',1,0,'2018-02-09 18:01:34','2018-02-11 14:48:12','5890bc99-acce-40b9-94ac-d9252eb6fa01'),(19,'GlobalSet',1,0,'2018-02-09 19:23:12','2018-02-12 19:50:47','8ef7d211-64ce-4d06-9d8f-584ffcdcd6b9'),(21,'MatrixBlock',1,0,'2018-02-09 21:09:04','2018-02-09 21:09:04','dffde981-b512-48f9-9626-98de4eb15190'),(24,'Asset',1,0,'2018-02-10 00:36:42','2018-02-10 00:36:42','9f3d0cca-2e0c-4abd-87c2-2d327c4b164c'),(25,'Asset',1,0,'2018-02-10 00:36:55','2018-02-10 00:36:55','9ced0e37-0412-468a-ac4c-af20e9ef6915'),(26,'Asset',1,0,'2018-02-10 00:37:10','2018-02-10 00:37:10','76c1b44c-ce7e-4854-92a8-26a49bfb0467'),(27,'Asset',1,0,'2018-02-10 00:37:14','2018-02-10 00:37:14','3dc57b4a-47c9-4d50-8bb5-e1e2358c16e5'),(28,'Asset',1,0,'2018-02-10 00:37:15','2018-02-10 00:37:15','cc1138c1-f729-4755-a6cd-acef50678c44'),(29,'Asset',1,0,'2018-02-10 00:37:19','2018-02-10 00:37:19','70109ba4-2f77-4e05-9b13-260f2bade5ce'),(30,'Asset',1,0,'2018-02-10 00:37:22','2018-02-10 00:37:22','da7ec8a8-a422-4203-b87d-0d0fc05331db'),(31,'Asset',1,0,'2018-02-10 00:37:26','2018-02-10 00:37:26','7d6d8407-6339-4994-920a-92ef6b0e22bd'),(32,'Asset',1,0,'2018-02-10 00:37:27','2018-02-10 00:37:27','db249a24-d8eb-4191-a575-e64d71f07422'),(33,'Asset',1,0,'2018-02-10 00:37:30','2018-02-10 00:37:30','5847feb8-c498-426c-bb93-cb798ff92173'),(35,'Asset',1,0,'2018-02-10 00:40:01','2018-02-13 12:29:06','0a3ef861-8233-44d2-a163-75b495c67f6c'),(36,'Asset',1,0,'2018-02-10 00:41:36','2018-02-10 00:41:36','d1d96e14-4b30-404c-92dd-380b3de03bb8'),(37,'Asset',1,0,'2018-02-10 01:02:58','2018-02-10 01:02:58','2313ac28-d7f4-4b3a-a2e3-703564609b0e'),(38,'Asset',1,0,'2018-02-10 01:02:58','2018-02-10 01:02:58','6e941c09-73b6-4c91-98dd-ebb02d649c8e'),(39,'Asset',1,0,'2018-02-10 01:05:04','2018-02-10 01:05:04','f1fced2f-d139-41d4-9bbf-4029824f4ec3'),(40,'Asset',1,0,'2018-02-10 01:05:04','2018-02-10 01:05:04','ce0bbb88-1046-457a-bdeb-3714105413ff'),(41,'Asset',1,0,'2018-02-10 01:05:04','2018-02-10 01:05:04','1cd65c8c-f3df-4efe-8862-b3f270b9ccce'),(42,'Asset',1,0,'2018-02-10 01:12:55','2018-02-10 01:12:55','e4e0a059-1fb4-4b26-95f7-ec471c7271d7'),(43,'Asset',1,0,'2018-02-10 01:48:57','2018-02-10 01:48:57','a538d717-65d2-456f-8dca-769c8fcb5f43'),(44,'Asset',1,0,'2018-02-10 01:50:11','2018-02-10 01:50:11','2b38a1c1-24d8-4a0f-a678-a6d06e4da183'),(45,'Asset',1,0,'2018-02-10 01:54:34','2018-02-10 01:54:34','b7f9c288-b05c-47cf-a714-928e091eccea'),(47,'Asset',1,0,'2018-02-10 15:19:10','2018-02-10 15:19:10','b000a080-70ed-4fb7-b194-bdd146b395a8'),(48,'MatrixBlock',1,0,'2018-02-10 15:19:36','2018-02-12 19:50:47','48a51778-775b-4a70-a811-edfee1e881e2'),(49,'Asset',1,0,'2018-02-10 15:35:58','2018-02-10 15:35:58','ef395225-e4f9-4fa6-a6cd-e0e32b8358ba'),(50,'MatrixBlock',1,0,'2018-02-10 15:36:29','2018-02-12 19:50:47','77610d6a-b5e8-4c1f-ab5c-362517fd9f00'),(51,'Asset',1,0,'2018-02-10 16:08:39','2018-02-10 16:08:39','61101874-a5e8-4bc0-b046-1aff9306f035'),(52,'Asset',1,0,'2018-02-10 16:08:39','2018-02-10 16:08:39','cacf31c5-4e8e-4df7-a4fa-ca74b2197190'),(53,'Asset',1,0,'2018-02-10 16:08:39','2018-02-10 16:08:39','738f62d7-10c4-47dd-a1be-f1e35e476c85'),(56,'Asset',1,0,'2018-02-12 19:50:26','2018-02-12 19:50:26','b1911627-f2d5-4ce6-9f2a-891be5252c18'),(57,'MatrixBlock',1,0,'2018-02-12 19:50:47','2018-02-12 19:50:47','c4b0bfa0-e8cb-4d92-b07c-7f424e98ac5f');
/*!40000 ALTER TABLE `craft_elements` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_elements_i18n`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_elements_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elements_i18n_elementId_locale_unq_idx` (`elementId`,`locale`),
  UNIQUE KEY `craft_elements_i18n_uri_locale_unq_idx` (`uri`,`locale`),
  KEY `craft_elements_i18n_slug_locale_idx` (`slug`,`locale`),
  KEY `craft_elements_i18n_enabled_idx` (`enabled`),
  KEY `craft_elements_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_elements_i18n_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_elements_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_elements_i18n`
--

LOCK TABLES `craft_elements_i18n` WRITE;
/*!40000 ALTER TABLE `craft_elements_i18n` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_elements_i18n` VALUES (1,1,'nb_no','',NULL,1,'2014-10-08 10:49:48','2018-02-10 15:00:05','43ed65e2-12cd-4f2c-bf52-00955b97ea18'),(11,11,'nb_no','forside','__home__',1,'2017-02-08 21:28:29','2018-02-12 19:44:22','47af93a5-3a46-4be6-886b-a088820bd182'),(14,14,'nb_no','',NULL,1,'2018-02-09 17:23:31','2018-02-09 18:35:13','4a7c96ba-f4c5-405b-8a7d-550d6742c9ab'),(15,15,'nb_no','press-stuff','press-stuff',1,'2018-02-09 18:01:34','2018-02-11 14:48:12','3ae94d0c-8c73-46e2-80c7-c7ece684f9bd'),(19,19,'nb_no','',NULL,1,'2018-02-09 19:23:12','2018-02-12 19:50:47','c78a8765-be85-43a5-9077-91482da8c640'),(21,21,'nb_no','',NULL,1,'2018-02-09 21:09:04','2018-02-09 21:09:04','fb7227e3-46ed-4a78-92f3-63009307b9b4'),(24,24,'nb_no','bg',NULL,1,'2018-02-10 00:36:42','2018-02-10 00:36:42','1180ece9-4579-4277-83b8-391fc7c67bfe'),(25,25,'nb_no','bilde1',NULL,1,'2018-02-10 00:36:55','2018-02-10 00:36:55','0b9647c7-c663-412d-9c25-72e0e4034536'),(26,26,'nb_no','bilde1-ghost',NULL,1,'2018-02-10 00:37:10','2018-02-10 00:37:10','5a011056-9fc1-4a8b-870c-d3a6c5847c0f'),(27,27,'nb_no','bilde1-stor',NULL,1,'2018-02-10 00:37:14','2018-02-10 00:37:14','1cc6c280-8d73-41fa-9f27-3652a72f065d'),(28,28,'nb_no','bilde2',NULL,1,'2018-02-10 00:37:15','2018-02-10 00:37:15','2f89422b-a463-431a-bc3b-6864804e774f'),(29,29,'nb_no','bilde2',NULL,1,'2018-02-10 00:37:19','2018-02-10 00:37:19','b78b6ce8-136e-4e61-bd5a-4c790ab6491e'),(30,30,'nb_no','bilde2-ghost',NULL,1,'2018-02-10 00:37:22','2018-02-10 00:37:22','8186ac82-9a77-4ef8-b9e1-98acccab313a'),(31,31,'nb_no','bilde3-ghost',NULL,1,'2018-02-10 00:37:26','2018-02-10 00:37:26','f3c6dd13-50fe-4908-901f-b61bbbb16c1e'),(32,32,'nb_no','bilde4',NULL,1,'2018-02-10 00:37:27','2018-02-10 00:37:27','b25500ac-11d6-4c4b-991b-8a6e5cfc993a'),(33,33,'nb_no','bilde4',NULL,1,'2018-02-10 00:37:30','2018-02-10 00:37:30','cd6224be-535f-4abe-a383-2c4dbf39b5c8'),(35,35,'nb_no','hm-logo',NULL,1,'2018-02-10 00:40:01','2018-02-13 12:29:06','782df825-5f61-48eb-ad37-6ed05000043c'),(36,36,'nb_no','icon-logo-emblem',NULL,1,'2018-02-10 00:41:36','2018-02-10 00:41:36','9a98bae4-ea91-47f0-92c2-d4296f02d2c8'),(37,37,'nb_no','icon-mute',NULL,1,'2018-02-10 01:02:58','2018-02-10 01:02:58','7a390428-9780-4d6e-be8f-fe6ec3941117'),(38,38,'nb_no','icon-mute-hover',NULL,1,'2018-02-10 01:02:58','2018-02-10 01:02:58','c8a66c1f-bad9-4335-985e-fe40d41872d3'),(39,39,'nb_no','icon-next',NULL,1,'2018-02-10 01:05:04','2018-02-10 01:05:04','6df20928-b24e-4882-8050-6efb53f19ee0'),(40,40,'nb_no','icon-prev',NULL,1,'2018-02-10 01:05:04','2018-02-10 01:05:04','6637fc37-85aa-42f5-83f7-b917b68f6f7d'),(41,41,'nb_no','icon-spotify',NULL,1,'2018-02-10 01:05:04','2018-02-10 01:05:04','b7739c45-34e3-404c-bc19-c265347ddb8b'),(42,42,'nb_no','haunted-mansions-snippets-kort',NULL,1,'2018-02-10 01:12:55','2018-02-10 01:12:55','5878acf9-4d0e-4d72-9a79-070382834c9b'),(43,43,'nb_no','27625326-10159919549415203-7567322317182933677-o',NULL,1,'2018-02-10 01:48:57','2018-02-10 01:48:57','97795d70-febb-4bd4-af65-8b772f2fff1b'),(44,44,'nb_no','27624891-10159898121280203-6290961494434247971-o',NULL,1,'2018-02-10 01:50:11','2018-02-10 01:50:11','63c5f20d-5463-41fc-9fa2-5c935f01ec85'),(45,45,'nb_no','img-7423-animation',NULL,1,'2018-02-10 01:54:34','2018-02-10 01:54:34','7fddebc8-7fc1-4d29-84c2-2c7f59a078ff'),(47,47,'nb_no','icon-spotify',NULL,1,'2018-02-10 15:19:10','2018-02-10 15:19:10','f55f193f-00ad-49e6-9e20-d32d56ccd506'),(48,48,'nb_no','',NULL,1,'2018-02-10 15:19:36','2018-02-12 19:50:47','a36bb0be-2084-45e0-a0c0-37af7efdd83a'),(49,49,'nb_no','icon-facebook',NULL,1,'2018-02-10 15:35:58','2018-02-10 15:35:58','56bd34ba-987d-4a3e-a35d-462a8114bfc8'),(50,50,'nb_no','',NULL,1,'2018-02-10 15:36:29','2018-02-12 19:50:47','ece26ebc-9cf5-4fdd-86cb-8be37af5e324'),(51,51,'nb_no','icon-applemusic',NULL,1,'2018-02-10 16:08:39','2018-02-10 16:08:39','49a4de84-e0be-4100-9102-f38c7e372c22'),(52,52,'nb_no','icon-bandcamp',NULL,1,'2018-02-10 16:08:39','2018-02-10 16:08:39','cce1cbcb-b212-4934-9b9c-29f7ea4c6331'),(53,53,'nb_no','icon-tidal',NULL,1,'2018-02-10 16:08:39','2018-02-10 16:08:39','27da59f6-d588-4d77-8687-4c6a0b0b5c62'),(56,56,'nb_no','icon-instagram',NULL,1,'2018-02-12 19:50:26','2018-02-12 19:50:26','d7fc2fa0-4a19-4f3c-8d8a-d2b72c42a201'),(57,57,'nb_no','',NULL,1,'2018-02-12 19:50:47','2018-02-12 19:50:47','036a6db0-e445-4474-8473-fd3e0bd08b04');
/*!40000 ALTER TABLE `craft_elements_i18n` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_emailmessages`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_emailmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_emailmessages_key_locale_unq_idx` (`key`,`locale`),
  KEY `craft_emailmessages_locale_fk` (`locale`),
  CONSTRAINT `craft_emailmessages_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_emailmessages`
--

LOCK TABLES `craft_emailmessages` WRITE;
/*!40000 ALTER TABLE `craft_emailmessages` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_emailmessages` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_entries`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entries_sectionId_idx` (`sectionId`),
  KEY `craft_entries_typeId_idx` (`typeId`),
  KEY `craft_entries_postDate_idx` (`postDate`),
  KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  KEY `craft_entries_authorId_fk` (`authorId`),
  CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_entries`
--

LOCK TABLES `craft_entries` WRITE;
/*!40000 ALTER TABLE `craft_entries` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_entries` VALUES (11,1,1,NULL,'2017-02-08 21:31:02',NULL,'2017-02-08 21:28:29','2018-02-12 19:44:22','c38d067f-56eb-4b51-b627-9613741e2780'),(15,3,NULL,NULL,'2018-02-09 18:01:34',NULL,'2018-02-09 18:01:34','2018-02-11 14:48:12','bab1b568-3f53-4b0b-9179-72722f8f4b2f');
/*!40000 ALTER TABLE `craft_entries` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_entrydrafts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_entrydrafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entrydrafts_entryId_locale_idx` (`entryId`,`locale`),
  KEY `craft_entrydrafts_sectionId_fk` (`sectionId`),
  KEY `craft_entrydrafts_creatorId_fk` (`creatorId`),
  KEY `craft_entrydrafts_locale_fk` (`locale`),
  CONSTRAINT `craft_entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entrydrafts_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_entrydrafts`
--

LOCK TABLES `craft_entrydrafts` WRITE;
/*!40000 ALTER TABLE `craft_entrydrafts` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_entrydrafts` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_entrytypes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_entrytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Title',
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_entrytypes_name_sectionId_unq_idx` (`name`,`sectionId`),
  UNIQUE KEY `craft_entrytypes_handle_sectionId_unq_idx` (`handle`,`sectionId`),
  KEY `craft_entrytypes_sectionId_fk` (`sectionId`),
  KEY `craft_entrytypes_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_entrytypes`
--

LOCK TABLES `craft_entrytypes` WRITE;
/*!40000 ALTER TABLE `craft_entrytypes` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_entrytypes` VALUES (1,1,72,'Forside','forside',0,NULL,'{section.name|raw}',1,'2017-02-08 21:28:29','2018-02-10 14:51:23','6b721e47-e6d5-4f8d-8189-935bd7c6993f'),(3,3,66,'Press stuff','pressStuff',0,NULL,'{section.name|raw}',1,'2018-02-09 18:01:34','2018-02-09 21:47:27','d064f51f-2a4f-4c10-83b6-7ee8285339c9');
/*!40000 ALTER TABLE `craft_entrytypes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_entryversions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_entryversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `num` smallint(6) unsigned NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entryversions_entryId_locale_idx` (`entryId`,`locale`),
  KEY `craft_entryversions_sectionId_fk` (`sectionId`),
  KEY `craft_entryversions_creatorId_fk` (`creatorId`),
  KEY `craft_entryversions_locale_fk` (`locale`),
  CONSTRAINT `craft_entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entryversions_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_entryversions`
--

LOCK TABLES `craft_entryversions` WRITE;
/*!40000 ALTER TABLE `craft_entryversions` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_entryversions` VALUES (1,11,1,1,'nb_no',1,NULL,'{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486589309,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}','2017-02-08 21:28:29','2017-02-08 21:28:29','604005e6-d51e-47d1-b9b4-fbf201028e59'),(2,15,3,1,'nb_no',1,NULL,'{\"typeId\":\"3\",\"authorId\":null,\"title\":\"Press stuff\",\"slug\":\"press-stuff\",\"postDate\":1518199294,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}','2018-02-09 18:01:34','2018-02-09 18:01:34','80a8e2fa-5ad3-484c-b5ce-5f551420aae1'),(3,11,1,1,'nb_no',2,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486589462,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"43\":\"<p><b>In a time where everything is about to go to shit. Haunted Mansions dystopic texts dissect, investigate and describe the darkness, and at the same time manages a slight glimmer of light - a quiet but incredibly important rebel strings towards the surface<\\/b><\\/p>\",\"22\":[\"16\"],\"39\":{\"new1\":{\"type\":\"event\",\"enabled\":\"1\",\"fields\":{\"navn\":\"Lorem ipsum\",\"dato\":{\"date\":\"16.03.2018\"},\"event_url\":\"www.ticketmaster.com\"}},\"new2\":{\"type\":\"event\",\"enabled\":\"1\",\"fields\":{\"navn\":\"Lorem ipsummmus\",\"dato\":{\"date\":\"15.02.2018\"},\"event_url\":\"www.balle.com\"}}}}}','2018-02-09 18:11:28','2018-02-09 18:11:28','719ad381-e255-49ce-8750-531612aae2d6'),(4,11,1,1,'nb_no',3,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486589462,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"43\":\"<p><strong>In a time where everything is about to go to shit. Haunted Mansions dystopic texts dissect, investigate and describe the darkness, and at the same time manages a slight glimmer of light - a quiet but incredibly important rebel strings towards the surface<\\/strong><\\/p>\",\"22\":[\"16\"],\"44\":\"Head over to the boring section\",\"39\":{\"17\":{\"type\":\"event\",\"enabled\":\"1\",\"fields\":{\"navn\":\"Lorem ipsum\",\"dato\":{\"date\":\"16.03.2018\"},\"event_url\":\"www.ticketmaster.com\"}},\"18\":{\"type\":\"event\",\"enabled\":\"1\",\"fields\":{\"navn\":\"Lorem ipsummmus\",\"dato\":{\"date\":\"15.02.2018\"},\"event_url\":\"www.balle.com\"}}}}}','2018-02-09 18:37:45','2018-02-09 18:37:45','111c29d8-1f15-4976-8453-ea75817fb44b'),(5,11,1,1,'nb_no',4,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486589462,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"43\":\"<p><strong>In a time where everything is about to go to shit. Haunted Mansions dystopic texts dissect, investigate and describe the darkness, and at the same time manages a slight glimmer of light - a quiet but incredibly important rebel strings towards the surface<\\/strong><\\/p>\",\"22\":[\"16\"],\"39\":{\"17\":{\"type\":\"event\",\"enabled\":\"1\",\"fields\":{\"navn\":\"Lorem ipsum\",\"dato\":{\"date\":\"16.03.2018\"},\"event_url\":\"www.ticketmaster.com\"}},\"18\":{\"type\":\"event\",\"enabled\":\"1\",\"fields\":{\"navn\":\"Lorem ipsummmus\",\"dato\":{\"date\":\"15.02.2018\"},\"event_url\":\"www.balle.com\"}}},\"44\":\"<p>Head over to the <a href=\\\"http:\\/\\/hauntedmansions.local\\/press-stuff#entry:15\\\"><strong>boring section<\\/strong><\\/a> for press stuff<\\/p>\"}}','2018-02-09 18:38:38','2018-02-09 18:38:38','90111fcd-76c5-4cb8-badb-7a77cc53f0f3'),(6,15,3,1,'nb_no',2,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Press stuff\",\"slug\":\"press-stuff\",\"postDate\":1518199294,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"22\":[\"16\"]}}','2018-02-09 18:44:07','2018-02-09 18:44:07','0d5c32f7-348b-4a6a-8269-3c9981c0b41b'),(7,11,1,1,'nb_no',5,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486589462,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"43\":\"<p><strong>In a time where everything is about to go to shit. Haunted Mansions dystopic texts dissect, investigate and describe the darkness, and at the same time manages a slight glimmer of light - a quiet but incredibly important rebel strings towards the surface<\\/strong><\\/p>\",\"22\":[\"16\"],\"39\":\"\",\"44\":\"<p>Head over to the <a href=\\\"http:\\/\\/hauntedmansions.local\\/press-stuff#entry:15:url\\\"><strong>boring section<\\/strong><\\/a> for press stuff<\\/p>\"}}','2018-02-09 19:30:36','2018-02-09 19:30:36','1ad1916b-da8b-421b-b752-3f1fe68e28bb'),(8,11,1,1,'nb_no',6,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486589462,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"43\":\"<p><strong>In a time where everything is about to go to shit. Haunted Mansions dystopic texts dissect, investigate and describe the darkness, and at the same time manages a slight glimmer of light - a quiet but incredibly important rebel strings towards the surface<\\/strong><\\/p>\",\"22\":[\"16\"],\"39\":{\"new1\":{\"type\":\"event\",\"enabled\":\"1\",\"fields\":{\"navn\":\"Gegeg\",\"dato\":{\"date\":\"22.02.2018\"},\"event_url\":\"ergerg\"}}},\"44\":\"<p>Head over to the <a href=\\\"http:\\/\\/hauntedmansions.local\\/press-stuff#entry:15:url\\\"><strong>boring section<\\/strong><\\/a> for press stuff<\\/p>\"}}','2018-02-09 19:32:29','2018-02-09 19:32:29','ebdbf4d3-daa1-4337-ae6e-954d96178af5'),(9,11,1,1,'nb_no',7,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486589462,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"43\":\"<p><strong>In a time where everything is about to go to shit. Haunted Mansions dystopic texts dissect, investigate and describe the darkness, and at the same time manages a slight glimmer of light - a quiet but incredibly important rebel strings towards the surface<\\/strong><\\/p>\",\"22\":[\"16\"],\"39\":{\"20\":{\"type\":\"event\",\"enabled\":\"1\",\"fields\":{\"navn\":\"Stokk\\u00f8ya\",\"dato\":{\"date\":\"22.02.2018\"},\"event_url\":\"ergerg\"}}},\"44\":\"<p>Head over to the <a href=\\\"http:\\/\\/hauntedmansions.local\\/press-stuff#entry:15:url\\\"><strong>boring section<\\/strong><\\/a> for press stuff<\\/p>\"}}','2018-02-09 19:32:44','2018-02-09 19:32:44','e2dde9d1-cfc0-43e8-803a-40855de3d755'),(10,11,1,1,'nb_no',8,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486589462,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"43\":\"<p><strong>In a time where everything is about to go to shit. Haunted Mansions dystopic texts dissect, investigate and describe the darkness, and at the same time manages a slight glimmer of light - a quiet but incredibly important rebel strings towards the surface<\\/strong><\\/p>\",\"22\":[\"16\"],\"39\":{\"20\":{\"type\":\"event\",\"enabled\":\"1\",\"fields\":{\"navn\":\"Stokk\\u00f8ya\",\"dato\":{\"date\":\"22.02.2018\"},\"event_url\":\"ergerg\"}}},\"44\":\"<p>Press stuff<\\/p>\"}}','2018-02-09 19:36:22','2018-02-09 19:36:22','281b83e6-abad-4d2c-82bc-7920866f06d6'),(11,11,1,1,'nb_no',9,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486589462,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"43\":\"<p><strong>In a time where everything is about to go to shit. Haunted Mansions dystopic texts dissect, investigate and describe the darkness, and at the same time manages a slight glimmer of light - a quiet but incredibly important rebel strings towards the surface<\\/strong><\\/p>\",\"22\":[\"16\"],\"39\":{\"20\":{\"type\":\"event\",\"enabled\":\"1\",\"fields\":{\"navn\":\"Stokk\\u00f8ya\",\"dato\":{\"date\":\"22.02.2018\"},\"event_url\":\"ergerg\"}}},\"23\":\"Blablablablabla\",\"44\":\"<p>Press stuffaeraswerawer<\\/p>\"}}','2018-02-09 19:37:32','2018-02-09 19:37:32','60ca8e03-906a-42af-bd8b-312f945a19f4'),(12,15,3,1,'nb_no',3,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Press stuff\",\"slug\":\"press-stuff\",\"postDate\":1518199294,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"22\":[\"16\"],\"45\":{\"new1\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"tittel\":\"\",\"bilde\":[\"16\"]}}}}}','2018-02-09 21:09:04','2018-02-09 21:09:04','77e23c6c-afdb-4ea1-a3a2-8a7d0e7a1820'),(13,15,3,1,'nb_no',4,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Press stuff\",\"slug\":\"press-stuff\",\"postDate\":1518199294,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"22\":[\"16\"],\"45\":[\"16\",\"2\",\"3\",\"7\",\"10\"]}}','2018-02-09 21:17:27','2018-02-09 21:17:27','b2bc6c13-24e2-4c45-a013-d4d72c5ce02c'),(14,15,3,1,'nb_no',5,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Press stuff\",\"slug\":\"press-stuff\",\"postDate\":1518199294,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"22\":[\"16\"],\"45\":[\"16\",\"2\",\"3\",\"7\",\"10\"],\"44\":\"<p>Lorem ipsum dolor sit amet<\\/p>\"}}','2018-02-09 21:47:52','2018-02-09 21:47:52','38ab13bb-1029-4b3b-8bd8-fb7f1e1d4a4a'),(15,15,3,1,'nb_no',6,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Press stuff\",\"slug\":\"press-stuff\",\"postDate\":1518199294,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"22\":[\"16\"],\"45\":[\"16\",\"10\",\"4\"],\"44\":\"<p>Press photos and other goodies<\\/p>\"}}','2018-02-09 22:20:42','2018-02-09 22:20:42','9fac8202-d7d4-46c0-8d3e-f9f9259e7612'),(16,11,1,1,'nb_no',10,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486589462,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"43\":\"<p><strong>In a time where everything is about to go to shit. Haunted Mansions dystopic texts dissect, investigate and describe the darkness, and at the same time manages a slight glimmer of light - a quiet but incredibly important rebel strings towards the surface<\\/strong><\\/p>\",\"22\":[\"16\"],\"39\":{\"20\":{\"type\":\"event\",\"enabled\":\"1\",\"fields\":{\"navn\":\"Stokk\\u00f8ya\",\"dato\":{\"date\":\"22.02.2018\"},\"event_url\":\"ergerg\"}}},\"48\":[\"23\"],\"23\":\"Blablablablabla\",\"44\":\"<p>Press stuffaeraswerawer<\\/p>\"}}','2018-02-09 22:49:27','2018-02-09 22:49:27','2b48b3e4-d531-4b9d-a91f-ebca26ca43d6'),(17,11,1,1,'nb_no',11,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486589462,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"43\":\"<p><strong>In a time where everything is about to go to shit. Haunted Mansions dystopic texts dissect, investigate and describe the darkness, and at the same time manages a slight glimmer of light - a quiet but incredibly important rebel strings towards the surface<\\/strong><\\/p>\",\"22\":[\"16\"],\"39\":{\"20\":{\"type\":\"event\",\"enabled\":\"1\",\"fields\":{\"navn\":\"Stokk\\u00f8ya\",\"dato\":{\"date\":\"22.02.2018\"},\"event_url\":\"ergerg\"}}},\"48\":[\"23\"],\"23\":\"Blablablablabla\",\"44\":\"<p>Press stuffaeraswerawer<\\/p>\"}}','2018-02-09 22:52:20','2018-02-09 22:52:20','b2933211-4298-40ec-8922-c262303c8fba'),(18,11,1,1,'nb_no',12,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486589462,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"43\":\"<p><strong>In a time where everything is about to go to shit. Haunted Mansions dystopic texts dissect, investigate and describe the darkness, and at the same time manages a slight glimmer of light - a quiet but incredibly important rebel strings towards the surface<\\/strong><\\/p>\",\"22\":[\"24\"],\"39\":{\"20\":{\"type\":\"event\",\"enabled\":\"1\",\"fields\":{\"navn\":\"Stokk\\u00f8ya\",\"dato\":{\"date\":\"22.02.2018\"},\"event_url\":\"ergerg\"}}},\"48\":[\"34\"],\"23\":\"Blablablablabla\",\"44\":\"<p>Press stuffaeraswerawer<\\/p>\"}}','2018-02-10 00:38:01','2018-02-10 00:38:01','846ef5c4-66c5-4bf8-b5dc-801215939b8b'),(19,15,3,1,'nb_no',7,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Press stuff\",\"slug\":\"press-stuff\",\"postDate\":1518199294,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"22\":[\"24\"],\"45\":[\"25\",\"30\",\"24\"],\"44\":\"<p>Press photos and other goodies<\\/p>\"}}','2018-02-10 00:38:23','2018-02-10 00:38:23','ea8f5296-fa9f-4e8c-9908-0d58ff6ab64c'),(20,11,1,1,'nb_no',13,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486589462,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"43\":\"<p><strong>In a time where everything is about to go to shit. Haunted Mansions dystopic texts dissect, investigate and describe the darkness, and at the same time manages a slight glimmer of light - a quiet but incredibly important rebel strings towards the surface<\\/strong><\\/p>\",\"22\":[\"24\"],\"39\":{\"20\":{\"type\":\"event\",\"enabled\":\"1\",\"fields\":{\"navn\":\"Stokk\\u00f8ya\",\"dato\":{\"date\":\"22.02.2018\"},\"event_url\":\"ergerg\"}}},\"48\":[\"42\"],\"23\":\"Blablablablabla\",\"44\":\"<p>Press stuffaeraswerawer<\\/p>\"}}','2018-02-10 01:13:09','2018-02-10 01:13:09','977ad89c-49dc-4de3-8458-f5a83a96eb65'),(21,15,3,1,'nb_no',8,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Press stuff\",\"slug\":\"press-stuff\",\"postDate\":1518199294,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"22\":[\"24\"],\"45\":[\"43\",\"25\",\"30\",\"24\"],\"44\":\"<p>Press photos and other goodies<\\/p>\"}}','2018-02-10 01:49:01','2018-02-10 01:49:01','50532879-a99d-45eb-a960-edfcca5c2037'),(22,15,3,1,'nb_no',9,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Press stuff\",\"slug\":\"press-stuff\",\"postDate\":1518199294,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"22\":[\"24\"],\"45\":[\"43\",\"24\",\"25\",\"30\"],\"44\":\"<p>Press photos and other goodies<\\/p>\"}}','2018-02-10 01:49:24','2018-02-10 01:49:24','5ce3b973-e644-46f2-af95-c2e972aaacf7'),(23,15,3,1,'nb_no',10,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Press stuff\",\"slug\":\"press-stuff\",\"postDate\":1518199294,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"22\":[\"24\"],\"45\":[\"43\",\"24\",\"44\",\"25\",\"30\"],\"44\":\"<p>Press photos and other goodies<\\/p>\"}}','2018-02-10 01:50:14','2018-02-10 01:50:14','d001a79a-15d1-484d-9ea5-4c0f9537ebab'),(24,15,3,1,'nb_no',11,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Press stuff\",\"slug\":\"press-stuff\",\"postDate\":1518199294,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"22\":[\"24\"],\"45\":[\"43\",\"24\",\"44\"],\"44\":\"<p>Press photos and other goodies<\\/p>\"}}','2018-02-10 01:50:41','2018-02-10 01:50:41','30bd1693-e75a-4214-b563-6364f17ca0bb'),(25,15,3,1,'nb_no',12,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Press stuff\",\"slug\":\"press-stuff\",\"postDate\":1518199294,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"22\":[\"24\"],\"45\":[\"43\",\"24\",\"44\",\"30\"],\"44\":\"<p>Press photos and other goodies<\\/p>\"}}','2018-02-10 01:50:54','2018-02-10 01:50:54','d216f55e-d106-4b10-94b8-664d870aa88a'),(26,15,3,1,'nb_no',13,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Press stuff\",\"slug\":\"press-stuff\",\"postDate\":1518199294,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"22\":[\"24\"],\"45\":[\"43\",\"24\",\"44\",\"27\",\"28\",\"29\",\"30\",\"31\",\"33\"],\"44\":\"<p>Press photos and other goodies<\\/p>\"}}','2018-02-10 01:51:29','2018-02-10 01:51:29','9f609435-b4de-4d2c-a9c3-3ac4385f7ede'),(27,15,3,1,'nb_no',14,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Press stuff\",\"slug\":\"press-stuff\",\"postDate\":1518199294,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"22\":[\"24\"],\"45\":[\"43\",\"24\",\"44\",\"45\"],\"44\":\"<p>Press photos and other goodies<\\/p>\"}}','2018-02-10 01:54:47','2018-02-10 01:54:47','08597b9e-7c52-4131-97ec-410a38f5fb27'),(28,15,3,1,'nb_no',15,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Press stuff\",\"slug\":\"press-stuff\",\"postDate\":1518199294,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"22\":[\"24\"],\"45\":[\"43\",\"24\",\"44\"],\"44\":\"<p>Press photos and other goodies<\\/p>\"}}','2018-02-10 01:59:09','2018-02-10 01:59:09','5e12fd9d-e322-4aaf-8f50-13cc5804a518'),(29,11,1,1,'nb_no',14,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486589462,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"43\":\"<p><strong>Bandcamp: \\u00abHaunted Mansions swagger through their psych rock with Quentin Tarantino-levels of cool confidence\\u00bb<br><\\/strong><\\/p>\\r\\n<p><strong>The Line of Best Fit: \\u00abHaunted Mansions reveal their brilliant psych-hop debut single \\u201cSunshine Crawlers\\u201d. The Norwegian duo might be based in the currently-frozen north of Trondheim, but their debut track is firmly fixed on Californian sunshine.\\u00bb<\\/strong><\\/p>\\r\\n<p><strong>JaJaJa Music: \\u00abHaunted Mansions are truly an awesome acquaintance, but they are relatively unknown for the time being. They most likely won\\u2019t be for long though, so if you want the bragging-right to say \\u201cI discovered them first\\u201d to your friends, you must hurry!\\u00bb<\\/strong><\\/p>\",\"22\":[\"24\"],\"39\":{\"20\":{\"type\":\"event\",\"enabled\":\"1\",\"fields\":{\"navn\":\"Stokk\\u00f8ya\",\"dato\":{\"date\":\"22.02.2018\"},\"event_url\":\"ergerg\"}}},\"48\":[\"42\"]}}','2018-02-10 14:52:37','2018-02-10 14:52:37','94396a00-9a00-4737-958f-25f11209779a'),(30,11,1,1,'nb_no',15,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486589462,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"43\":\"<p>Norwegian newcomers Haunted Mansions bring psychedelic warmth and understated confidence to their hiphop-inspired indie weirdness. Haunted Mansions namecheck Portugal The Man, Danger Mouse and Gorillaz when asked to describe their music and while those artists have inspired Haunted Mansions it\'s clear to all that they bring their own flavour to the music as well. The band combines old-school hiphop beats, almost shimmering acoustic guitars, textured synths and weird, smoky and infectious vocals to perfection. The songs are seductive in all their gloom, mildly psychedelic and strongly melodic, but most of all just really great<br><\\/p>\\r\\n\",\"22\":[\"24\"],\"39\":{\"20\":{\"type\":\"event\",\"enabled\":\"1\",\"fields\":{\"navn\":\"Stokk\\u00f8ya\",\"dato\":{\"date\":\"22.02.2018\"},\"event_url\":\"ergerg\"}}},\"48\":[\"42\"]}}','2018-02-10 14:53:26','2018-02-10 14:53:26','ed5185fe-adab-4dc8-895f-7341da3748bf'),(31,11,1,1,'nb_no',16,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486589462,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"43\":\"<p>Norwegian newcomers Haunted Mansions bring psychedelic warmth and understated confidence to their hiphop-inspired indie weirdness. Haunted Mansions namecheck Portugal The Man, Danger Mouse and Gorillaz when asked to describe their music and while those artists have inspired Haunted Mansions it\'s clear to all that they bring their own flavour to the music as well. The band combines old-school hiphop beats, almost shimmering acoustic guitars, textured synths and weird, smoky and infectious vocals to perfection. The songs are seductive in all their gloom, mildly psychedelic and strongly melodic, but most of all just really great<br><\\/p>\",\"22\":[\"24\"],\"39\":{\"20\":{\"type\":\"event\",\"enabled\":\"1\",\"fields\":{\"navn\":\"Stokk\\u00f8ya\",\"dato\":{\"date\":\"22.02.2018\"},\"event_url\":\"ergerg\"}},\"new1\":{\"type\":\"event\",\"enabled\":\"1\",\"fields\":{\"navn\":\"Blabla \",\"dato\":{\"date\":\"23.02.2018\"},\"event_url\":\"\"}}},\"48\":[\"42\"]}}','2018-02-10 14:53:39','2018-02-10 14:53:39','0e986bbb-cf58-477e-95c6-eff5e7604c4b'),(32,15,3,1,'nb_no',16,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Press stuff\",\"slug\":\"press-stuff\",\"postDate\":1518199294,\"expiryDate\":null,\"enabled\":0,\"parentId\":null,\"fields\":{\"22\":[\"24\"],\"45\":[\"43\",\"24\",\"44\"],\"44\":\"<p>Press photos and other goodies<\\/p>\"}}','2018-02-10 17:27:02','2018-02-10 17:27:02','1f6d1151-04cc-49d2-9236-94379d72b53c'),(33,15,3,1,'nb_no',17,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Press stuff\",\"slug\":\"press-stuff\",\"postDate\":1518199294,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"22\":[\"24\"],\"45\":[\"43\",\"24\",\"44\"],\"44\":\"<p>Press photos and other goodies<\\/p>\"}}','2018-02-10 17:27:55','2018-02-10 17:27:55','0d45e92a-1942-4a05-a848-b9b06f1f149b'),(34,11,1,1,'nb_no',17,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486589462,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"43\":\"<p>Norwegian newcomers Haunted Mansions bring psychedelic warmth and understated confidence to their hiphop-inspired indie weirdness. Haunted Mansions namecheck Portugal The Man, Danger Mouse and Gorillaz when asked to describe their music and while those artists have inspired Haunted Mansions it\'s clear to all that they bring their own flavour to the music as well. The band combines old-school hiphop beats, almost shimmering acoustic guitars, textured synths and weird, smoky and infectious vocals to perfection. The songs are seductive in all their gloom, mildly psychedelic and strongly melodic, but most of all just really great<br><\\/p>\",\"22\":[\"24\"],\"39\":{\"20\":{\"type\":\"event\",\"enabled\":\"1\",\"fields\":{\"navn\":\"Stokk\\u00f8ya\",\"dato\":{\"date\":\"12.07.2018\"},\"event_url\":\"ergerg\"}},\"46\":{\"type\":\"event\",\"enabled\":\"1\",\"fields\":{\"navn\":\"Blabla \",\"dato\":{\"date\":\"23.02.2018\"},\"event_url\":\"\"}}},\"48\":[\"42\"]}}','2018-02-11 14:47:22','2018-02-11 14:47:22','bd617077-cbca-40d0-828c-73a6cbf7df44'),(35,15,3,1,'nb_no',18,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Press stuff\",\"slug\":\"press-stuff\",\"postDate\":1518199294,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"22\":[\"24\"],\"45\":[\"43\",\"24\",\"44\",\"27\"],\"44\":\"<p>Press photos and other goodies<\\/p>\"}}','2018-02-11 14:48:12','2018-02-11 14:48:12','4fde6d7a-8f52-400e-b6b7-a612f03fc4a1'),(36,11,1,1,'nb_no',18,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Forside\",\"slug\":\"forside\",\"postDate\":1486589462,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"43\":\"<p>Norwegian newcomers Haunted Mansions bring psychedelic warmth and understated confidence to their hiphop-inspired indie weirdness. Haunted Mansions namecheck Portugal The Man, Danger Mouse and Gorillaz when asked to describe their music and while those artists have inspired Haunted Mansions it\'s clear to all that they bring their own flavour to the music as well. The band combines old-school hiphop beats, almost shimmering acoustic guitars, textured synths and weird, smoky and infectious vocals to perfection. The songs are seductive in all their gloom, mildly psychedelic and strongly melodic, but most of all just really great<br><\\/p>\",\"22\":[\"24\"],\"39\":\"\",\"48\":[\"42\"]}}','2018-02-12 19:44:22','2018-02-12 19:44:22','3328be45-4214-483b-97f7-b4619b55454d');
/*!40000 ALTER TABLE `craft_entryversions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_fieldgroups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fieldgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_fieldgroups`
--

LOCK TABLES `craft_fieldgroups` WRITE;
/*!40000 ALTER TABLE `craft_fieldgroups` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_fieldgroups` VALUES (1,'Standard','2014-10-08 10:49:50','2014-10-08 10:49:50','420d3eaa-0708-4cce-8c20-93409caf3560'),(3,'SEO','2015-10-23 14:49:57','2015-10-23 14:49:57','fa2e2850-530c-4e24-9889-99212610e4dc'),(4,'Kontaktskjema','2018-02-09 17:19:23','2018-02-09 17:19:23','448d5d77-cdeb-4053-b3bd-41e90f609aaf');
/*!40000 ALTER TABLE `craft_fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_fieldlayoutfields`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayoutfields_tabId_fk` (`tabId`),
  KEY `craft_fieldlayoutfields_fieldId_fk` (`fieldId`),
  CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_fieldlayoutfields`
--

LOCK TABLES `craft_fieldlayoutfields` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayoutfields` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_fieldlayoutfields` VALUES (75,35,26,21,0,1,'2016-06-08 08:27:39','2016-06-08 08:27:39','2688b460-dae3-4aaa-b276-0ae02239e680'),(77,35,26,18,0,3,'2016-06-08 08:27:39','2016-06-08 08:27:39','5ee3c7a7-0841-4434-8b2e-3053498fb03b'),(111,53,38,40,0,1,'2018-02-09 18:06:44','2018-02-09 18:06:44','166b38ef-b781-4380-81d1-4193cafe72cd'),(112,53,38,41,0,2,'2018-02-09 18:06:44','2018-02-09 18:06:44','48083101-860b-4be4-892b-790609278f24'),(113,53,38,42,0,3,'2018-02-09 18:06:44','2018-02-09 18:06:44','56cd8b4d-b4a0-48a2-9546-ccc5066edc20'),(118,56,41,36,0,1,'2018-02-09 18:35:13','2018-02-09 18:35:13','92c74afd-0664-4916-a178-641df1c6c2ee'),(119,56,41,37,0,2,'2018-02-09 18:35:13','2018-02-09 18:35:13','187207b7-59ae-41d9-be18-d9255a1e6b16'),(120,56,41,38,0,3,'2018-02-09 18:35:13','2018-02-09 18:35:13','3a354268-e66d-4fe2-a279-8d53837a9e79'),(142,65,50,46,0,1,'2018-02-09 21:15:29','2018-02-09 21:15:29','1add6b83-9407-48ca-a372-2a3458589c31'),(143,65,50,47,0,2,'2018-02-09 21:15:29','2018-02-09 21:15:29','08d235be-04c6-4876-811c-74d9113cbc7f'),(144,66,51,22,0,1,'2018-02-09 21:47:27','2018-02-09 21:47:27','40d5f106-6866-4488-acc3-1697e2dd2aeb'),(145,66,51,44,0,2,'2018-02-09 21:47:27','2018-02-09 21:47:27','8a5faac3-bc7b-4731-9898-39e9779e5a6c'),(146,66,51,45,0,3,'2018-02-09 21:47:27','2018-02-09 21:47:27','5dd74ea8-0082-4a4d-8422-1b145ac563a4'),(160,72,56,22,0,1,'2018-02-10 14:51:23','2018-02-10 14:51:23','e73694f9-0f56-4a7b-b100-a80bb9d1230b'),(161,72,56,48,0,2,'2018-02-10 14:51:23','2018-02-10 14:51:23','d81491ba-0682-454d-952b-af856946f320'),(162,72,56,43,0,3,'2018-02-10 14:51:23','2018-02-10 14:51:23','a9438f4b-7ed1-437d-899e-103de8c8818f'),(163,72,56,39,0,4,'2018-02-10 14:51:23','2018-02-10 14:51:23','73710cb7-de57-46f8-ad18-58771ced895f'),(164,73,57,51,1,1,'2018-02-10 15:18:38','2018-02-10 15:18:38','ddcb2fc6-15ff-421f-ab03-769f1050a029'),(165,73,57,52,1,2,'2018-02-10 15:18:38','2018-02-10 15:18:38','80835d1a-fcd2-4e08-95c6-dc05a50bc8d7'),(166,74,58,22,0,1,'2018-02-10 15:18:54','2018-02-10 15:18:54','07f53c52-411f-4ea6-be85-6cf7ff212435'),(167,74,58,49,0,2,'2018-02-10 15:18:54','2018-02-10 15:18:54','2a1ed646-456f-4b94-9ccd-8797955d06ae'),(168,74,58,44,0,3,'2018-02-10 15:18:54','2018-02-10 15:18:54','6206bbf3-8b2f-481e-8fc1-feeb5d585cf5'),(169,74,58,50,0,4,'2018-02-10 15:18:54','2018-02-10 15:18:54','616ef046-54ff-4fa2-af26-1f9d7d651b81');
/*!40000 ALTER TABLE `craft_fieldlayoutfields` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_fieldlayouts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fieldlayouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouts_type_idx` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_fieldlayouts`
--

LOCK TABLES `craft_fieldlayouts` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayouts` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_fieldlayouts` VALUES (1,'Tag','2014-10-08 10:49:50','2014-10-08 10:49:50','735aea8d-1467-42fe-a635-fe07456aef93'),(3,'Entry','2014-10-08 10:49:51','2014-10-08 10:49:51','34c943ee-38b2-46f1-977d-5a69371e7b36'),(5,'Entry','2014-10-08 10:49:51','2014-10-08 10:49:51','abf58a12-09f1-4aa1-a709-7f4b5c553eab'),(35,'Asset','2016-06-08 08:27:39','2016-06-08 08:27:39','2f62a4dc-1f0f-431b-845c-ccffcb78f627'),(36,'Asset','2016-09-14 09:29:21','2016-09-14 09:29:21','98cb2b92-aed8-4d5a-bbb7-828546174317'),(53,'MatrixBlock','2018-02-09 18:06:44','2018-02-09 18:06:44','57ed6c6c-ec98-460f-969f-0a3a85dd7f92'),(56,'SproutForms_Form','2018-02-09 18:35:13','2018-02-09 18:35:13','bdb92812-9ea8-4901-9a03-038df1e13779'),(65,'MatrixBlock','2018-02-09 21:15:29','2018-02-09 21:15:29','2b51463c-0fd0-49ec-afaa-9635a15792d9'),(66,'Entry','2018-02-09 21:47:27','2018-02-09 21:47:27','f3af6ba3-43d4-4de9-a380-13e4f834df3b'),(68,'Asset','2018-02-09 22:47:00','2018-02-09 22:47:00','5be0392e-5a7e-4ddb-99a4-f7501946cffc'),(72,'Entry','2018-02-10 14:51:23','2018-02-10 14:51:23','dfd4afef-589e-4f94-a366-9a5ed1c4c6c9'),(73,'MatrixBlock','2018-02-10 15:18:38','2018-02-10 15:18:38','c1429be2-a58c-4f13-9813-fe5e731aa4d2'),(74,'GlobalSet','2018-02-10 15:18:54','2018-02-10 15:18:54','6dde3fd7-1cb9-42fc-9c2d-669758d00a0f');
/*!40000 ALTER TABLE `craft_fieldlayouts` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_fieldlayouttabs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayouttabs_layoutId_fk` (`layoutId`),
  CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_fieldlayouttabs`
--

LOCK TABLES `craft_fieldlayouttabs` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayouttabs` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_fieldlayouttabs` VALUES (1,3,'Innhold',1,'2014-10-08 10:49:51','2014-10-08 10:49:51','d35bab09-a914-4602-91df-0a3c3baa2cfc'),(2,5,'Innhold',1,'2014-10-08 10:49:51','2014-10-08 10:49:51','c39b036d-dd74-43ad-b5f0-cc0dfbd18b00'),(4,1,'Content',1,'2014-12-12 08:34:38','2014-12-12 08:34:38','075c4aae-210e-47b1-b49d-741e200c9155'),(26,35,'Innhold',1,'2016-06-08 08:27:39','2016-06-08 08:27:39','ecb34c16-5ecd-4248-858f-4abe8652da43'),(38,53,'Content',1,'2018-02-09 18:06:44','2018-02-09 18:06:44','b0a7e62e-0f41-4429-a544-e591e5318c0d'),(41,56,' ',1,'2018-02-09 18:35:13','2018-02-09 18:35:13','d0dee2d7-a6f1-4c39-844e-f77c300d5fec'),(50,65,'Content',1,'2018-02-09 21:15:29','2018-02-09 21:15:29','38c82dbe-161f-4526-9be5-032e8155fc58'),(51,66,'Press stuff',1,'2018-02-09 21:47:27','2018-02-09 21:47:27','490ee935-858a-467b-80d1-062807d4b3c4'),(56,72,'Forside',1,'2018-02-10 14:51:23','2018-02-10 14:51:23','58364796-c0c1-46ec-8ada-2c2b94e6939b'),(57,73,'Content',1,'2018-02-10 15:18:38','2018-02-10 15:18:38','3ce4ccc3-8f7a-4466-a950-5da0739e12f8'),(58,74,'Innhold',1,'2018-02-10 15:18:54','2018-02-10 15:18:54','6025842f-3035-4937-85fc-373a7f91f9cc');
/*!40000 ALTER TABLE `craft_fieldlayouttabs` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_fields`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(58) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci,
  `translatable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`),
  KEY `craft_fields_context_idx` (`context`),
  KEY `craft_fields_groupId_fk` (`groupId`),
  CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_fields`
--

LOCK TABLES `craft_fields` WRITE;
/*!40000 ALTER TABLE `craft_fields` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_fields` VALUES (18,1,'Fokuspunkt','fokuspunkt','global','',0,'FocalPointField_FocalPoint','{\"defaultFocalPoint\":\"\"}','2016-01-19 15:58:29','2016-01-19 15:58:29','74a3919e-0f9f-4f9d-bc71-7e0335ce7f1d'),(21,1,'Alternativ tekst','alt','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2016-02-15 11:49:15','2016-02-15 11:49:15','7592614d-9607-4aa9-9f4b-cd073d7a7de5'),(22,1,'Bilde','bilde','global','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}','2017-02-08 21:32:01','2017-02-08 21:32:01','98c022ef-66ff-4035-a211-079a6e4562bb'),(23,1,'Overskrift','overskrift','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"1\",\"initialRows\":\"4\"}','2017-02-08 21:32:47','2017-02-08 21:32:47','ed5d03ff-0d01-49c2-824c-badf6b7f3f7c'),(24,1,'Tekst','tekst','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"1\",\"initialRows\":\"20\"}','2017-02-08 21:33:25','2017-02-08 21:33:25','359202c2-4752-443f-ab1d-640071e6514f'),(32,NULL,'Radio Buttons Field','radioButtons','sproutForms:14',NULL,0,'RadioButtons','{\"options\":[{\"label\":\"Option 1\",\"value\":\"option1\",\"default\":\"\"},{\"label\":\"Option 2\",\"value\":\"option2\",\"default\":\"\"},{\"label\":\"Option 3\",\"value\":\"option3\",\"default\":\"\"}]}','2018-02-09 17:23:32','2018-02-09 17:23:32','682aac8d-360f-4883-8d2c-c91a6c458e92'),(33,NULL,'Checkboxes Field','checkboxes','sproutForms:14',NULL,0,'Checkboxes','{\"options\":[{\"label\":\"Option 1\",\"value\":\"option1\",\"default\":\"\"},{\"label\":\"Option 2\",\"value\":\"option2\",\"default\":\"\"},{\"label\":\"Option 3\",\"value\":\"option3\",\"default\":\"\"}]}','2018-02-09 17:23:32','2018-02-09 17:23:32','f04aeb96-fb2f-4e0b-ac50-c114a179355d'),(34,NULL,'Multi-select Field','multiSelect','sproutForms:14',NULL,0,'MultiSelect','{\"options\":[{\"label\":\"Option 1\",\"value\":\"option1\",\"default\":\"\"},{\"label\":\"Option 2\",\"value\":\"option2\",\"default\":\"\"},{\"label\":\"Option 3\",\"value\":\"option3\",\"default\":\"\"}]}','2018-02-09 17:23:32','2018-02-09 17:23:32','a7d48ddf-c75d-41c2-b9a3-740e030f675b'),(35,NULL,'Textarea Field','textarea','sproutForms:14',NULL,0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":1,\"initialRows\":4}','2018-02-09 17:23:32','2018-02-09 17:23:32','d3ea1425-6107-49c9-b4a0-61b85e3640c2'),(36,NULL,'Name','form_name','sproutForms:14','',0,'PlainText','{\"placeholder\":\"Amanda Huggenkiss\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-02-09 17:26:09','2018-02-09 17:26:09','991c8da5-5b26-4bf5-b6d2-37fa41558f83'),(37,NULL,'Email','form_email','sproutForms:14','',0,'PlainText','{\"placeholder\":\"email@domain.com\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-02-09 17:26:38','2018-02-09 17:26:38','2875ab45-791c-40a3-8580-8ab478932aeb'),(38,NULL,'Message','form_message','sproutForms:14','',0,'PlainText','{\"placeholder\":\"Your band is amazing, here\'s two billion dollarz etc..\",\"maxLength\":\"\",\"multiline\":\"1\",\"initialRows\":\"6\"}','2018-02-09 17:27:23','2018-02-09 18:35:12','35b32ac5-0a5f-4323-84bb-8b80b6c61b18'),(39,1,'Events','events','global','',0,'Matrix','{\"maxBlocks\":null}','2018-02-09 18:06:44','2018-02-09 18:06:44','ea09da9d-53ab-41a1-b8f9-fbea71523bb8'),(40,NULL,'Navn','navn','matrixBlockType:1','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-02-09 18:06:44','2018-02-09 18:06:44','509624be-5709-4522-b858-bfa1025d1ed5'),(41,NULL,'Dato','dato','matrixBlockType:1','',0,'Date','{\"minuteIncrement\":\"30\",\"showDate\":1,\"showTime\":0}','2018-02-09 18:06:44','2018-02-09 18:06:44','1bf8fdd5-7b15-48d4-b1e4-e4fa603c8397'),(42,NULL,'Url','event_url','matrixBlockType:1','Link til billetter',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-02-09 18:06:44','2018-02-09 18:06:44','93710d88-4411-4d02-a2af-8783a543e979'),(43,4,'About The music','aboutTheMusic','global','',0,'RichText','{\"configFile\":\"\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\"}','2018-02-09 18:09:06','2018-02-09 18:09:38','f60e0f78-12ea-4d23-b39a-2a080eaa3f6a'),(44,4,'Tekst','enkelTekst','global','',0,'RichText','{\"configFile\":\"\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\"}','2018-02-09 18:37:08','2018-02-09 18:38:03','23db8c47-2c9c-44d3-863b-872f28b94c13'),(45,1,'Slideshow','slideshow','global','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":[\"folder:1\"],\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"\",\"viewMode\":\"list\",\"selectionLabel\":\"Legg til bilde\"}','2018-02-09 21:05:25','2018-02-09 21:17:11','26dad78f-24fd-4e3e-909f-135cf0fcbe71'),(46,NULL,'Tittel','tittel','matrixBlockType:2','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-02-09 21:05:25','2018-02-09 21:15:29','aa48494b-f76d-4156-9c97-30173d9ee7f5'),(47,NULL,'Bilde','bilde','matrixBlockType:2','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":[\"folder:1\"],\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"\",\"viewMode\":\"list\",\"selectionLabel\":\"Legg til bilde\"}','2018-02-09 21:05:25','2018-02-09 21:15:29','48eaba3d-f67d-4228-b7bd-37468d5d6704'),(48,4,'Lydfil','lydfil','global','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":[\"folder:2\"],\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}','2018-02-09 22:49:03','2018-02-09 22:49:03','fda5346e-746a-47f6-ad27-3b502752bb92'),(49,4,'Logo-element','logoElement','global','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}','2018-02-10 00:41:22','2018-02-10 00:41:22','23466feb-5c23-4004-a836-f38686349cc2'),(50,4,'Social','social','global','',0,'Matrix','{\"maxBlocks\":null}','2018-02-10 15:18:38','2018-02-10 15:18:38','ee9b79d2-222d-45a7-8994-feb16391fdfa'),(51,NULL,'Ikon','social_ikon','matrixBlockType:3','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"\",\"viewMode\":\"list\",\"selectionLabel\":\"Legg til ikon\"}','2018-02-10 15:18:38','2018-02-10 15:18:38','47b50cfb-6577-432d-b142-13fb3b04a1a9'),(52,NULL,'Url','social_url','matrixBlockType:3','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-02-10 15:18:38','2018-02-10 15:18:38','a0cc4395-dfc8-4bb7-b254-e89671a68139');
/*!40000 ALTER TABLE `craft_fields` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_globalsets`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_globalsets_name_unq_idx` (`name`),
  UNIQUE KEY `craft_globalsets_handle_unq_idx` (`handle`),
  KEY `craft_globalsets_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_globalsets`
--

LOCK TABLES `craft_globalsets` WRITE;
/*!40000 ALTER TABLE `craft_globalsets` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_globalsets` VALUES (19,'Footer','footer',74,'2018-02-09 19:23:12','2018-02-10 15:18:54','d176284b-215e-4af8-9fbc-69dad3e574be');
/*!40000 ALTER TABLE `craft_globalsets` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `edition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `siteName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siteUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_info`
--

LOCK TABLES `craft_info` WRITE;
/*!40000 ALTER TABLE `craft_info` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_info` VALUES (1,'2.6.3008','2.6.13',0,'Haunted Mansions','{siteUrl}','Europe/Oslo',1,0,'2014-10-08 10:49:45','2018-02-10 00:33:00','ce6e6378-3719-45f4-88b1-640f0e5e22c4');
/*!40000 ALTER TABLE `craft_info` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_locales`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_locales` (
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`locale`),
  KEY `craft_locales_sortOrder_idx` (`sortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_locales`
--

LOCK TABLES `craft_locales` WRITE;
/*!40000 ALTER TABLE `craft_locales` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_locales` VALUES ('nb_no',1,'2014-10-08 10:49:46','2014-10-08 10:49:46','60083433-3d9f-4116-8d2d-1c91c6e178bc');
/*!40000 ALTER TABLE `craft_locales` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_matrixblocks`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_matrixblocks_ownerId_idx` (`ownerId`),
  KEY `craft_matrixblocks_fieldId_idx` (`fieldId`),
  KEY `craft_matrixblocks_typeId_idx` (`typeId`),
  KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`),
  KEY `craft_matrixblocks_ownerLocale_fk` (`ownerLocale`),
  CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_matrixblocks`
--

LOCK TABLES `craft_matrixblocks` WRITE;
/*!40000 ALTER TABLE `craft_matrixblocks` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_matrixblocks` VALUES (21,15,45,2,1,NULL,'2018-02-09 21:09:04','2018-02-09 21:09:04','8143f4ce-5964-4216-81e4-bc9bb8ecb842'),(48,19,50,3,1,NULL,'2018-02-10 15:19:36','2018-02-12 19:50:47','3486d31a-a22f-48cd-8100-86e383cf50f5'),(50,19,50,3,2,NULL,'2018-02-10 15:36:29','2018-02-12 19:50:47','fcc38183-77a8-4c4f-af4f-5905d4369cd7'),(57,19,50,3,3,NULL,'2018-02-12 19:50:47','2018-02-12 19:50:47','8f4c9877-6716-49b5-b166-79cd4bf288c1');
/*!40000 ALTER TABLE `craft_matrixblocks` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_matrixblocktypes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixblocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  KEY `craft_matrixblocktypes_fieldId_fk` (`fieldId`),
  KEY `craft_matrixblocktypes_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_matrixblocktypes`
--

LOCK TABLES `craft_matrixblocktypes` WRITE;
/*!40000 ALTER TABLE `craft_matrixblocktypes` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_matrixblocktypes` VALUES (1,39,53,'event','event',1,'2018-02-09 18:06:44','2018-02-09 18:06:44','e9cade55-c6ea-43a9-b72c-3e0c00a7f3db'),(2,45,65,'slide','slide',1,'2018-02-09 21:05:25','2018-02-09 21:15:29','ef945be0-b64f-44d4-b9d8-d370f454f5b5'),(3,50,73,'Knapp','knapp',1,'2018-02-10 15:18:38','2018-02-10 15:18:38','ae591f52-e8f4-4927-a2f9-799b2840c44f');
/*!40000 ALTER TABLE `craft_matrixblocktypes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_matrixcontent_events`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixcontent_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_event_navn` text COLLATE utf8_unicode_ci,
  `field_event_dato` datetime DEFAULT NULL,
  `field_event_event_url` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_events_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_events_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_events_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_events_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_matrixcontent_events`
--

LOCK TABLES `craft_matrixcontent_events` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_events` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_matrixcontent_events` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_matrixcontent_slideshow`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixcontent_slideshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_slide_tittel` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_slideshow_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_slideshow_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_slideshow_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_slideshow_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_matrixcontent_slideshow`
--

LOCK TABLES `craft_matrixcontent_slideshow` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_slideshow` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_matrixcontent_slideshow` VALUES (1,21,'nb_no','','2018-02-09 21:09:04','2018-02-09 21:09:04','c9d9d219-475e-45d5-87fb-8a3d4edb8e37');
/*!40000 ALTER TABLE `craft_matrixcontent_slideshow` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_matrixcontent_social`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixcontent_social` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_knapp_social_url` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_social_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_social_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_social_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_social_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_matrixcontent_social`
--

LOCK TABLES `craft_matrixcontent_social` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_social` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_matrixcontent_social` VALUES (1,48,'nb_no','https://open.spotify.com/artist/3ZLXVwKiHZFjnif9gDkX9l','2018-02-10 15:19:36','2018-02-12 19:50:47','62bcba69-b550-440e-a022-d40ba94b4e7a'),(2,50,'nb_no','https://www.facebook.com/hauntedmansionsmusic/','2018-02-10 15:36:29','2018-02-12 19:50:47','e09679ae-3b81-43b8-8427-d0459652124e'),(5,57,'nb_no','https://www.instagram.com/hauntedmansionsmusic/','2018-02-12 19:50:47','2018-02-12 19:50:47','60ce7bf6-8bec-461d-a778-c8a14462d2c8');
/*!40000 ALTER TABLE `craft_matrixcontent_social` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_migrations`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginId` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_migrations_version_unq_idx` (`version`),
  KEY `craft_migrations_pluginId_fk` (`pluginId`),
  CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_migrations`
--

LOCK TABLES `craft_migrations` WRITE;
/*!40000 ALTER TABLE `craft_migrations` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_migrations` VALUES (1,NULL,'m000000_000000_base','2014-10-08 10:49:46','2014-10-08 10:49:46','2014-10-08 10:49:46','42d71bf0-6913-4eaa-9e38-d36bea1be5a8'),(2,NULL,'m140730_000001_add_filename_and_format_to_transformindex','2014-10-08 10:49:46','2014-10-08 10:49:46','2014-10-08 10:49:46','b3815782-326e-42bd-aab2-b7df98a331cc'),(3,NULL,'m140815_000001_add_format_to_transforms','2014-10-08 10:49:46','2014-10-08 10:49:46','2014-10-08 10:49:46','d16c46c4-1e70-4db1-a35b-369052650590'),(4,NULL,'m140822_000001_allow_more_than_128_items_per_field','2014-10-08 10:49:46','2014-10-08 10:49:46','2014-10-08 10:49:46','cfc81698-5ad6-4774-b348-8b83b7cb8f1e'),(5,NULL,'m140829_000001_single_title_formats','2014-10-08 10:49:46','2014-10-08 10:49:46','2014-10-08 10:49:46','198b1671-c688-4a74-9897-0211fddd2566'),(6,NULL,'m140831_000001_extended_cache_keys','2014-10-08 10:49:46','2014-10-08 10:49:46','2014-10-08 10:49:46','2d510d43-bb61-470e-a8ab-55672d6738ab'),(7,NULL,'m140922_000001_delete_orphaned_matrix_blocks','2014-10-08 10:49:46','2014-10-08 10:49:46','2014-10-08 10:49:46','399632eb-8668-43a1-a28d-2e933310cb4f'),(9,NULL,'m141008_000001_elements_index_tune','2014-12-12 08:34:38','2014-12-12 08:34:38','2014-12-12 08:34:38','1c96e5aa-cb60-4c43-bd6a-c0bd38773675'),(10,NULL,'m141009_000001_assets_source_handle','2014-12-12 08:34:38','2014-12-12 08:34:38','2014-12-12 08:34:38','ee995679-dce6-4bb5-814a-ef4eb48d9e5c'),(11,NULL,'m141024_000001_field_layout_tabs','2014-12-12 08:34:39','2014-12-12 08:34:39','2014-12-12 08:34:39','22887b9a-b1dc-456a-b5e3-14b8f6724926'),(12,NULL,'m141030_000001_drop_structure_move_permission','2014-12-12 08:34:39','2014-12-12 08:34:39','2014-12-12 08:34:39','10e7e46a-612f-43a8-b243-170934f67e38'),(13,NULL,'m141103_000001_tag_titles','2014-12-12 08:34:39','2014-12-12 08:34:39','2014-12-12 08:34:39','0ddd1195-7ac4-4f43-a185-e2a45012e324'),(14,NULL,'m141109_000001_user_status_shuffle','2014-12-12 08:34:40','2014-12-12 08:34:40','2014-12-12 08:34:40','8f737b06-2ba4-42bf-81d4-e06786ff9fa6'),(15,NULL,'m141126_000001_user_week_start_day','2014-12-12 08:34:40','2014-12-12 08:34:40','2014-12-12 08:34:40','f08d4d0a-045b-422f-b5ce-6a5976363598'),(16,NULL,'m150210_000001_adjust_user_photo_size','2015-03-11 17:02:58','2015-03-11 17:02:58','2015-03-11 17:02:58','1f89c6e6-0589-4f44-bbe3-046d140361f8'),(17,9,'m150901_144609_superTable_fixForContentTables','2015-10-23 15:33:35','2015-10-23 15:33:35','2015-10-23 15:33:35','f418c3f0-ce4e-4294-a5a9-7c359e000d76'),(18,16,'m150314_144609_cpNav_addUrlSupport','2015-10-25 12:33:15','2015-10-25 12:33:15','2015-10-25 12:33:15','711d1275-f8ec-497d-905c-5a010ada3f80'),(19,16,'m150314_144610_cpNav_addPrevUrlSupport','2015-10-25 12:33:15','2015-10-25 12:33:15','2015-10-25 12:33:15','dd743bff-ee3a-4484-b928-424ae65f72b2'),(20,16,'m150314_144611_cpNav_addManualNavItemSupport','2015-10-25 12:33:15','2015-10-25 12:33:15','2015-10-25 12:33:15','0df3e894-a476-47bf-a556-d28d6d7ba9e2'),(21,16,'m150314_144615_cpNav_layouts','2015-10-25 12:33:15','2015-10-25 12:33:15','2015-10-25 12:33:15','0a95d82b-dad0-464b-bdf1-4508dbe91a79'),(22,16,'m150321_144616_cpNav_newWindow','2015-10-25 12:33:15','2015-10-25 12:33:15','2015-10-25 12:33:15','a3f045bb-f280-43e6-845f-bbb4d1f812de'),(23,NULL,'m141030_000000_plugin_schema_versions','2016-01-19 15:32:54','2016-01-19 15:32:54','2016-01-19 15:32:54','08881d26-493b-496a-85c8-b6f4f73fa125'),(24,NULL,'m150724_000001_adjust_quality_settings','2016-01-19 15:32:54','2016-01-19 15:32:54','2016-01-19 15:32:54','0825fb2d-f665-41d5-90b2-11fff25d652a'),(25,NULL,'m150827_000000_element_index_settings','2016-01-19 15:32:55','2016-01-19 15:32:55','2016-01-19 15:32:55','e90f1ddc-643a-41ef-9d4f-0f3a5779a9fa'),(26,NULL,'m150918_000001_add_colspan_to_widgets','2016-01-19 15:32:55','2016-01-19 15:32:55','2016-01-19 15:32:55','5dcb9740-8fcf-4d63-a9de-4cdb8126836c'),(27,NULL,'m151007_000000_clear_asset_caches','2016-01-19 15:32:55','2016-01-19 15:32:55','2016-01-19 15:32:55','34c7e193-5c82-4958-b580-fa42f2f55620'),(28,NULL,'m151109_000000_text_url_formats','2016-01-19 15:32:55','2016-01-19 15:32:55','2016-01-19 15:32:55','203cfac4-935d-4813-bc6e-d1dd04bdf4e3'),(29,NULL,'m151110_000000_move_logo','2016-01-19 15:32:55','2016-01-19 15:32:55','2016-01-19 15:32:55','67fb9d27-93eb-4c66-a97f-80a41c8ef549'),(30,NULL,'m151117_000000_adjust_image_widthheight','2016-01-19 15:32:56','2016-01-19 15:32:56','2016-01-19 15:32:56','fa12e892-dffa-461a-8f61-7961713a0a90'),(31,NULL,'m151127_000000_clear_license_key_status','2016-01-19 15:32:56','2016-01-19 15:32:56','2016-01-19 15:32:56','401e83a8-8c79-4ddf-8e8c-2d8a6c66a49f'),(32,NULL,'m151127_000000_plugin_license_keys','2016-01-19 15:32:56','2016-01-19 15:32:56','2016-01-19 15:32:56','e1e28880-9184-4ab2-85d4-b7fc8b0867ee'),(33,NULL,'m151130_000000_update_pt_widget_feeds','2016-01-19 15:32:56','2016-01-19 15:32:56','2016-01-19 15:32:56','f84150f9-96c1-4c46-9a3d-37371593ea04'),(38,16,'m151126_144611_cpNav_addIconSupport','2016-01-19 15:49:53','2016-01-19 15:49:53','2016-01-19 15:49:53','c7915192-1955-4aed-9c46-72ffbfd98da8'),(39,16,'m151224_144611_cpNav_populateIcons','2016-01-19 15:49:53','2016-01-19 15:49:53','2016-01-19 15:49:53','b0c0de49-5d02-4b05-acf0-6326e9630a9e'),(40,25,'m151225_000000_seomatic_addHumansField','2016-01-19 16:04:43','2016-01-19 16:04:43','2016-01-19 16:04:43','be0031cc-a464-4f76-a2ca-9526c57266dd'),(41,25,'m151226_000000_seomatic_addTwitterFacebookFields','2016-01-19 16:04:43','2016-01-19 16:04:43','2016-01-19 16:04:43','8c60976c-cfb9-4e93-b561-191168cd942f'),(42,25,'m160101_000000_seomatic_addRobotsFields','2016-01-19 16:04:43','2016-01-19 16:04:43','2016-01-19 16:04:43','08150c39-519a-4222-8dfd-83db954844c5'),(43,25,'m160111_000000_seomatic_addTitleFields','2016-01-19 16:04:43','2016-01-19 16:04:43','2016-01-19 16:04:43','6c7d54bc-41f9-48a5-b739-00f2912505c7'),(48,20,'m160117_000000_reasons_addFieldLayoutIdColumn','2016-01-19 16:53:54','2016-01-19 16:53:54','2016-01-19 16:53:54','34724ab7-fe52-41f9-87ca-ee6b4435ea79'),(49,25,'m160122_000000_seomatic_addTypeFields','2016-02-08 09:46:07','2016-02-08 09:46:07','2016-02-08 09:46:07','8ce216a7-1575-4979-80bc-890db5a21f23'),(50,25,'m160123_000000_seomatic_addOpeningHours','2016-02-08 09:46:07','2016-02-08 09:46:07','2016-02-08 09:46:07','2006f848-5e1b-4b74-b4ed-32bfc0dd74a6'),(51,25,'m160202_000000_seomatic_addSocialHandles','2016-02-08 09:46:08','2016-02-08 09:46:08','2016-02-08 09:46:08','7e72ff9e-a95f-44d4-a0b5-0ea3ed55fe03'),(52,25,'m160204_000000_seomatic_addGoogleAnalytics','2016-02-08 09:46:08','2016-02-08 09:46:08','2016-02-08 09:46:08','c8d5c4d7-2519-47d4-8195-666cb2bd7a4c'),(53,25,'m160205_000000_seomatic_addResturantMenu','2016-02-08 09:46:09','2016-02-08 09:46:09','2016-02-08 09:46:09','f6600475-3680-47b4-93e5-827112386ab8'),(54,25,'m160206_000000_seomatic_addGoogleAnalyticsPlugins','2016-02-08 09:46:09','2016-02-08 09:46:09','2016-02-08 09:46:09','5012d302-c706-485c-bfc2-6f1005340cfa'),(55,25,'m160206_000000_seomatic_addGoogleAnalyticsSendPageView','2016-02-08 09:46:10','2016-02-08 09:46:10','2016-02-08 09:46:10','970c984b-836e-448f-9d92-b730e71ced36'),(56,25,'m160209_000000_seomatic_alterDescriptionsColumns','2016-02-15 11:47:46','2016-02-15 11:47:46','2016-02-15 11:47:46','8392a067-d5be-4ba2-b2a7-77e5da743115'),(57,25,'m160209_000001_seomatic_addRobotsTxt','2016-02-15 11:47:46','2016-02-15 11:47:46','2016-02-15 11:47:46','07257513-deb5-4878-a0d1-ef6ddc7f9535'),(58,NULL,'m160223_000000_sortorder_to_smallint','2016-02-26 12:40:37','2016-02-26 12:40:37','2016-02-26 12:40:37','9588b6e5-da78-40eb-b112-b1618688367a'),(59,25,'m160227_000000_seomatic_addFacebookAppId','2016-03-01 13:46:56','2016-03-01 13:46:56','2016-03-01 13:46:56','c15345dd-a775-4498-85f3-6b5c200bbb35'),(60,NULL,'m160114_000000_asset_sources_public_url_default_true','2016-03-14 09:38:38','2016-03-14 09:38:38','2016-03-14 09:38:38','76131bfa-aac9-4838-b024-06b06f161299'),(61,NULL,'m160229_000000_set_default_entry_statuses','2016-03-14 09:38:38','2016-03-14 09:38:38','2016-03-14 09:38:38','5a0baa99-1351-4f14-833f-c6e36fcad40c'),(62,NULL,'m160304_000000_client_permissions','2016-03-14 09:38:38','2016-03-14 09:38:38','2016-03-14 09:38:38','eba0ff49-3221-4919-9e73-7a74770b311f'),(63,NULL,'m160322_000000_asset_filesize','2016-04-11 13:35:59','2016-04-11 13:35:59','2016-04-11 13:35:59','234ddd8b-d410-40eb-96c6-7f334a512904'),(64,25,'m160416_000000_seomatic_addContactPoints','2016-04-20 17:24:14','2016-04-20 17:24:14','2016-04-20 17:24:14','d99fdc19-6841-41f9-870a-bf17b73cbd40'),(65,NULL,'m160503_000000_orphaned_fieldlayouts','2016-05-06 13:23:51','2016-05-06 13:23:51','2016-05-06 13:23:51','a75d0f00-3535-4273-abc6-54175df947bc'),(66,25,'m160509_000000_seomatic_addSiteLinksBing','2016-05-12 07:40:04','2016-05-12 07:40:04','2016-05-12 07:40:04','ce57b098-b788-4311-8e26-d3eece0a73b9'),(67,NULL,'m160510_000000_tasksettings','2016-05-20 08:59:14','2016-05-20 08:59:14','2016-05-20 08:59:14','eda5bc4f-1d2d-47f4-b0d3-cbb0cd48cdc4'),(71,16,'m160625_000000_cpNav_addCustomIconSupport','2016-08-01 10:06:58','2016-08-01 10:06:58','2016-08-01 10:06:58','4b067cb3-8b53-49de-8404-adbc98cd52f3'),(72,25,'m160707_000000_seomatic_addGoogleTagManager','2016-08-01 10:10:43','2016-08-01 10:10:43','2016-08-01 10:10:43','a79ca235-293d-490d-8ec7-0cb96d6a889f'),(73,25,'m160715_000000_seomatic_addSeoImageTransforms','2016-08-01 10:10:49','2016-08-01 10:10:49','2016-08-01 10:10:49','b6ff90c1-bcae-4c9a-acd5-9cbee968a208'),(74,25,'m160723_000000_seomatic_addSeoMainEntityOfPage','2016-08-01 10:10:49','2016-08-01 10:10:49','2016-08-01 10:10:49','a0f19231-24bd-4ee4-9843-c5d39c948634'),(75,25,'m160724_000000_seomatic_addSeoMainEntityCategory','2016-08-01 10:10:49','2016-08-01 10:10:49','2016-08-01 10:10:49','dab084ae-a963-49ba-920d-95e1e8e0c5b0'),(76,25,'m160811_000000_seomatic_addVimeo','2016-08-17 11:56:29','2016-08-17 11:56:29','2016-08-17 11:56:29','a58e7d90-90d1-4eb3-92f1-aaf8bc1a5ebc'),(77,NULL,'m160829_000000_pending_user_content_cleanup','2016-09-14 09:10:17','2016-09-14 09:10:17','2016-09-14 09:10:17','cabb6533-df2b-4b90-a500-3499ec1ac4dd'),(78,NULL,'m160830_000000_asset_index_uri_increase','2016-09-14 09:10:18','2016-09-14 09:10:18','2016-09-14 09:10:18','e956d954-22b8-45bc-a593-572c6a9ceb60'),(79,25,'m160904_000000_seomatic_addTwitterFacebookImages','2016-09-14 09:10:24','2016-09-14 09:10:24','2016-09-14 09:10:24','da78c383-fa7f-467e-afa2-a8c8985febf5'),(80,NULL,'m160919_000000_usergroup_handle_title_unique','2016-09-30 07:43:49','2016-09-30 07:43:49','2016-09-30 07:43:49','50ef647c-8d70-466a-bac7-11f587f8ecd3'),(81,NULL,'m161108_000000_new_version_format','2016-12-01 09:12:23','2016-12-01 09:12:23','2016-12-01 09:12:23','658a40d1-35f7-4855-baf0-576cb8a3f434'),(82,NULL,'m161109_000000_index_shuffle','2016-12-01 09:12:23','2016-12-01 09:12:23','2016-12-01 09:12:23','2db6a1e5-fe4b-417f-bc65-a7ebb934d59d'),(83,25,'m161220_000000_seomatic_addPriceRange','2017-01-12 08:45:43','2017-01-12 08:45:43','2017-01-12 08:45:43','e5a38355-ac8e-469a-95a2-2ca518807af9'),(99,45,'m151115_000000_sproutFields_addNotesStyles','2018-02-09 17:22:30','2018-02-09 17:22:30','2018-02-09 17:22:30','7a27c95e-9c48-41ff-899b-a5d043058841'),(100,46,'m141026_000000_sproutForms_addFormGroupsTable','2018-02-09 17:23:27','2018-02-09 17:23:27','2018-02-09 17:23:27','77aa57bc-8de8-4e2a-b996-8dc5bb774095'),(101,46,'m141026_020000_sproutForms_renameOldFormsTableAndCreateNewFormsTable','2018-02-09 17:23:27','2018-02-09 17:23:27','2018-02-09 17:23:27','23753b26-1e7c-4dac-9b19-f86672fe052b'),(102,46,'m141026_030000_sproutForms_addFormEntryTable','2018-02-09 17:23:27','2018-02-09 17:23:27','2018-02-09 17:23:27','323a4596-3ed1-4dbf-9c0e-2d533bb8d6e3'),(103,46,'m141026_060000_sproutForms_migrateFieldsFormsAndEntries','2018-02-09 17:23:27','2018-02-09 17:23:27','2018-02-09 17:23:27','3e846798-ac22-4c9d-b737-31a264942be4'),(104,46,'m150418_000000_sproutForms_addNotificationEnabledSetting','2018-02-09 17:23:27','2018-02-09 17:23:27','2018-02-09 17:23:27','b284ba70-7a98-4741-93dc-6e03c9dc5b8c'),(105,46,'m150629_000000_sproutForms_updateSproutEmailNotificationOptionsFormat','2018-02-09 17:23:27','2018-02-09 17:23:27','2018-02-09 17:23:27','18a1d794-c44f-4a6c-9f66-ccdf260e7588'),(106,46,'m151006_000000_sproutForms_addTemplateOverrides','2018-02-09 17:23:27','2018-02-09 17:23:27','2018-02-09 17:23:27','94e245f8-5c88-43f9-9ea7-cf077f83bd12'),(107,46,'m151007_000000_sproutForms_addFileAttachments','2018-02-09 17:23:27','2018-02-09 17:23:27','2018-02-09 17:23:27','8e143199-0bb3-4cbd-aaf1-fa0e0d2f3b01'),(108,46,'m160405_000000_sproutForms_addSavePayloadColumn','2018-02-09 17:23:27','2018-02-09 17:23:27','2018-02-09 17:23:27','f259beeb-8959-4d5f-9277-9f268810ceac'),(109,46,'m160509_000000_sproutForms_addEntryStatusTable','2018-02-09 17:23:27','2018-02-09 17:23:27','2018-02-09 17:23:27','9e5f37ad-eac2-4a07-919b-679123b3becb'),(110,46,'m160509_010000_sproutForms_addStatusIdColumn','2018-02-09 17:23:27','2018-02-09 17:23:27','2018-02-09 17:23:27','ea656e11-207a-4ed9-bfc4-23d386a8637e'),(111,46,'m160509_030000_sproutForms_addStatusIdFk','2018-02-09 17:23:27','2018-02-09 17:23:27','2018-02-09 17:23:27','47d8eca9-cf6f-4649-91a0-ae040ead124d'),(112,46,'m160510_000000_sproutForms_installDefaultEntryStatuses','2018-02-09 17:23:27','2018-02-09 17:23:27','2018-02-09 17:23:27','4668a657-9ea2-409e-88ed-3fedb7267b68'),(113,46,'m160511_000000_sproutForms_setDefaultColorToEntries','2018-02-09 17:23:27','2018-02-09 17:23:27','2018-02-09 17:23:27','3cfcfff6-b59a-420f-a084-bfb05ec080bd'),(114,46,'m160524_000000_sproutForms_setAdvancedSettings','2018-02-09 17:23:27','2018-02-09 17:23:27','2018-02-09 17:23:27','cf3d63b3-3ddb-4fc6-ac46-5efb792e9ca8'),(115,47,'m150212_145000_AmNav_renamePagesToNodes','2018-02-09 21:54:34','2018-02-09 21:54:34','2018-02-09 21:54:34','fba49a38-9071-4d2c-8c9b-9b40436f2080'),(116,47,'m150217_112800_AmNav_expandPageData','2018-02-09 21:54:34','2018-02-09 21:54:34','2018-02-09 21:54:34','aa20ae51-516d-47e3-97c8-880531fab846'),(117,47,'m150403_093000_AmNav_nodesWithElements','2018-02-09 21:54:34','2018-02-09 21:54:34','2018-02-09 21:54:34','cd62316a-a32a-49c6-8d02-24430f265269'),(118,47,'m150512_105600_AmNav_addOptionalClass','2018-02-09 21:54:34','2018-02-09 21:54:34','2018-02-09 21:54:34','c22df4ab-a6e3-427b-a9c6-cf824d1692c5'),(119,NULL,'m170612_000000_route_index_shuffle','2018-02-10 00:32:57','2018-02-10 00:32:57','2018-02-10 00:32:57','389979e3-e87b-4603-b275-595006b1d257'),(120,NULL,'m171107_000000_assign_group_permissions','2018-02-10 00:32:57','2018-02-10 00:32:57','2018-02-10 00:32:57','7b062f44-0637-4d84-a59a-61efba7d2ab5'),(121,NULL,'m171117_000001_templatecache_index_tune','2018-02-10 00:32:57','2018-02-10 00:32:57','2018-02-10 00:32:57','180ba9bd-8b5a-4b6e-9577-c4fd44143d96'),(122,NULL,'m171204_000001_templatecache_index_tune_deux','2018-02-10 00:32:57','2018-02-10 00:32:57','2018-02-10 00:32:57','09ef8e41-b94e-41be-9e6e-fdd832aa00ba'),(123,25,'m170212_000000_seomatic_addGoogleAnalyticsAnonymizeIp','2018-02-10 00:33:00','2018-02-10 00:33:00','2018-02-10 00:33:00','2aec3cee-4cff-4a57-84d3-02a0216ebb02'),(124,25,'m170212_000000_seomatic_addWikipedia','2018-02-10 00:33:00','2018-02-10 00:33:00','2018-02-10 00:33:00','ae69300d-7f0f-45d2-9049-d5103492ac9c'),(125,48,'m141009_105954_analytics_reportsWidgetToExplorerWidget','2018-02-13 23:36:08','2018-02-13 23:36:08','2018-02-13 23:36:08','601b29ef-9950-4e1a-9aa7-6af0e2e3f79b'),(126,48,'m150921_000001_explorer_widget_to_realtime_and_reports','2018-02-13 23:36:08','2018-02-13 23:36:08','2018-02-13 23:36:08','fd25200d-0fbb-4715-b89a-2fe24e9f5adb'),(127,48,'m161021_000001_force_connect','2018-02-13 23:36:08','2018-02-13 23:36:08','2018-02-13 23:36:08','972cc5d6-e26c-4cc9-9f03-6fbc500917cf'),(128,48,'m161117_000001_remove_account_explorer_data_setting','2018-02-13 23:36:08','2018-02-13 23:36:08','2018-02-13 23:36:08','04bfbbe6-7a46-42e6-8995-3ba99d640a5d'),(129,49,'m130715_191457_oauth_addUserMappingField','2018-02-13 23:36:37','2018-02-13 23:36:37','2018-02-13 23:36:37','2619889e-5248-4600-80cb-453fdc2981ee'),(130,49,'m130907_140340_oauth_renameOauth_providersProviderClassToClass','2018-02-13 23:36:37','2018-02-13 23:36:37','2018-02-13 23:36:37','270a30b2-4144-4885-8043-7bcaaef098d4'),(131,49,'m130912_153247_oauth_createTokenIndexes','2018-02-13 23:36:37','2018-02-13 23:36:37','2018-02-13 23:36:37','532c376c-3c3a-4af0-9479-000aae4cf287'),(132,49,'m140417_000003_changeTokenUniqueIndexes','2018-02-13 23:36:37','2018-02-13 23:36:37','2018-02-13 23:36:37','5c508806-1e6e-4a00-b362-8351d37859c8'),(133,49,'m140623_130304_oauth_new_tokens_table','2018-02-13 23:36:37','2018-02-13 23:36:37','2018-02-13 23:36:37','83db9327-36d7-42be-b344-da4084a05688'),(134,49,'m150112_220705_oauth_add_token_columns','2018-02-13 23:36:37','2018-02-13 23:36:37','2018-02-13 23:36:37','494653f0-e5a1-4fef-b637-d702cf37bf5e'),(135,49,'m150311_000001_oauth_remove_old_tokens','2018-02-13 23:36:37','2018-02-13 23:36:37','2018-02-13 23:36:37','b203ce30-2855-4f11-998f-0fb32bea8631'),(136,49,'m161025_000001_oauth_change_tokens_column_types','2018-02-13 23:36:37','2018-02-13 23:36:37','2018-02-13 23:36:37','02f01576-1734-4389-af1d-fee5dce6fa83');
/*!40000 ALTER TABLE `craft_migrations` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_oauth_providers`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_oauth_providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clientId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clientSecret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_oauth_providers_class_unq_idx` (`class`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_oauth_providers`
--

LOCK TABLES `craft_oauth_providers` WRITE;
/*!40000 ALTER TABLE `craft_oauth_providers` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_oauth_providers` VALUES (1,'google','962982635094-3nunv547i0i3gj4a8n1hsliuclo6k0ph.apps.googleusercontent.com','J1FTZ4HEL9lJmaLcMXkSp6Cx','2018-02-13 23:43:03','2018-02-13 23:43:03','3917caea-597b-42b6-8610-232ab1ceb9df');
/*!40000 ALTER TABLE `craft_oauth_providers` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_oauth_tokens`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_oauth_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `providerHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pluginHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `accessToken` text COLLATE utf8_unicode_ci,
  `secret` text COLLATE utf8_unicode_ci,
  `endOfLife` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refreshToken` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_oauth_tokens`
--

LOCK TABLES `craft_oauth_tokens` WRITE;
/*!40000 ALTER TABLE `craft_oauth_tokens` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_oauth_tokens` VALUES (1,'google','analytics','ya29.Gl0qBpbjyqOKPdp0E_kiXpQBs2DCVSqW_BwmdRl6CKxGI_czotjRQTE-sUVrgPGIgilZ1knuGExJv8U5p8v88EkVxoZiPYfNoiRsLhr5qJYEyvmHRB6CpfuHQTl_VV4',NULL,'1538482153','1/VsBR_9REWPY4Kva3mzeXFAzWtoNcqGKTjNgVZcd1bGk','2018-02-13 23:43:19','2018-10-02 11:09:13','ab923994-f1eb-4e8d-8afe-76e89e039625');
/*!40000 ALTER TABLE `craft_oauth_tokens` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_plugins`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKey` char(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_plugins`
--

LOCK TABLES `craft_plugins` WRITE;
/*!40000 ALTER TABLE `craft_plugins` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_plugins` VALUES (1,'Directory','1.0.12',NULL,NULL,'unknown',1,NULL,'2014-10-08 10:52:21','2014-10-08 10:52:21','2014-10-08 10:52:21','aba3661c-99d2-4d34-9788-30e05197134f'),(3,'ObsoleteRedirect','0.1.0',NULL,NULL,'unknown',1,NULL,'2015-05-14 10:49:46','2015-05-14 10:49:46','2019-05-04 15:38:42','94eaed70-d03e-430c-be1f-18f0a30612d4'),(5,'AssetRev','3.0.0',NULL,NULL,'unknown',1,'{\"manifestPath\":\"..\\/cachebust.json\"}','2015-06-16 14:53:46','2015-06-16 14:53:46','2019-05-04 15:38:42','5c6c2959-e9ef-49b3-b92b-8529b4157f0d'),(6,'Guano','0.2',NULL,NULL,'unknown',1,NULL,'2015-10-08 11:08:49','2015-10-08 11:08:49','2019-05-04 15:38:42','feba2548-9685-4cfb-ad7a-d1e4776bb9cc'),(8,'ImageResizer','1.0.1','1.0.0',NULL,'unknown',1,'{\"enabled\":\"1\",\"imageWidth\":\"2048\",\"imageHeight\":\"2048\",\"imageQuality\":\"100\",\"assetSources\":\"*\"}','2015-10-23 10:00:34','2015-10-23 10:00:34','2019-05-04 15:38:42','4c10ef35-fcc0-4f06-9d43-c6d14622a053'),(9,'SuperTable','1.0.2','1.0.0',NULL,'unknown',1,NULL,'2015-10-23 15:33:34','2015-10-23 15:33:34','2019-05-04 15:38:42','f99b9499-b2b3-4189-9f1d-c4554def3374'),(11,'EntryTitleEditable','1.0',NULL,NULL,'unknown',1,NULL,'2015-10-23 16:17:02','2015-10-23 16:17:02','2016-01-19 15:50:10','07dc8a59-da92-47cc-9f30-759d07e05ac3'),(12,'LabelEnvironment','0.1.0',NULL,NULL,'unknown',1,'{\"colorMappings\":{\"development\":\"#000000\",\"staging\":\"#0000ff\",\"preview\":\"#ff0000\",\"production\":\"#16c68e\"},\"prefix\":\"\",\"suffix\":\"\"}','2015-10-25 11:35:32','2015-10-25 11:35:32','2019-05-04 15:38:42','7b4fe278-6804-4f70-b0bf-e61c7fdf6d2c'),(16,'CpNav','1.7.8','1.1.0',NULL,'unknown',1,'{\"showQuickAddMenu\":\"\"}','2015-10-25 12:33:15','2015-10-25 12:33:15','2019-05-04 15:38:42','0b042902-349c-41ef-98d8-bb2a31b445cd'),(17,'Imager','1.6.4','1.0.0',NULL,'unknown',1,NULL,'2015-10-30 15:57:14','2015-10-30 15:57:14','2019-05-04 15:38:42','b0c87aa0-53d6-4420-a297-2211da547370'),(19,'CpFieldLinks','1.2.2','1.0',NULL,'unknown',1,NULL,'2015-11-13 09:56:41','2015-11-13 09:56:41','2019-05-04 15:38:42','d5fd8f41-473d-42e9-9145-bf64eea6d7f3'),(20,'Reasons','1.0.11','1.1',NULL,'unknown',1,NULL,'2015-11-13 10:49:20','2015-11-13 10:49:20','2019-05-04 15:38:42','208a9b9d-dc2c-48a3-92f5-7e6da66d905a'),(22,'QuickField','0.3.4','1.0.0',NULL,'unknown',1,NULL,'2015-12-08 09:34:10','2015-12-08 09:34:10','2019-05-04 15:38:42','e8aac0ec-e200-4781-aacb-465aa765abb4'),(24,'FocalPointField','1.0.2',NULL,NULL,'unknown',1,NULL,'2016-01-19 15:57:13','2016-01-19 15:57:13','2019-05-04 15:38:42','623245d2-1fe2-4cbb-b4d6-405c5667e449'),(25,'Seomatic','1.1.56','1.1.25',NULL,'unknown',1,NULL,'2016-01-19 16:04:43','2016-01-19 16:04:43','2019-05-04 15:38:42','8f159c1e-3a2a-4b08-adc7-1cac6fb79747'),(26,'Sitemap','v1.0.0-alpha.4',NULL,NULL,'unknown',1,NULL,'2016-01-19 16:13:28','2016-01-19 16:13:28','2019-05-04 15:38:42','273cbb5c-e494-4e7b-aabd-464c3e5fb078'),(29,'Relabel','0.1.3','1.0.0',NULL,'unknown',1,NULL,'2016-01-19 16:57:21','2016-01-19 16:57:21','2019-05-04 15:38:42','5294ce3b-08d7-4bd3-8e2f-6ff84c6cb5ca'),(35,'Inlin','1.1',NULL,NULL,'unknown',1,NULL,'2016-04-12 14:46:20','2016-04-12 14:46:20','2019-05-04 15:38:42','dc6d6c60-82fe-4d66-bf61-d6c6fad7a3d8'),(41,'SidebarEnhancer','1.0.9','1.0.0',NULL,'unknown',1,NULL,'2016-08-23 15:05:37','2016-08-23 15:05:37','2019-05-04 15:38:42','727e244d-3684-49e7-b6c9-175cd8bc7de3'),(43,'Minify','1.2.0','1.0.0',NULL,'unknown',1,NULL,'2016-09-14 09:50:49','2016-09-14 09:50:49','2019-05-04 15:38:42','43ad78cb-1618-4d15-b6d9-92ca5769fbfc'),(45,'SproutFields','2.1.0','2.0.3',NULL,'unknown',1,'{\"infoPrimaryDocumentation\":\".field[id$=fields-{{ name }}-field] {\\r\\n  background-color: #d9edf7;\\r\\n  padding: 10px;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] label {\\r\\n  color: #000;\\r\\n  cursor: pointer;\\r\\n  display: block;\\r\\n  font-size: 1em;\\r\\n  font-weight: bold;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] .input {\\r\\n  border-top: 1px solid #bbd2dd;\\r\\n  padding-top:.5em;\\r\\n  margin-top: .5em;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h1,\\r\\n.field[id$=fields-{{ name }}-field] h2,\\r\\n.field[id$=fields-{{ name }}-field] h3 {\\r\\n  color: #29323d;\\r\\n  font-size: 1em;\\r\\n  font-weight: bold;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h1,\\r\\n.field[id$=fields-{{ name }}-field] h2 {\\r\\n  border-bottom: 1px solid #c8dae2;\\r\\n  font-weight: bold;\\r\\n  padding: 0 0 .5em;\\r\\n  margin: .5em 0;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h1 {\\r\\n  text-transform: uppercase;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h3 {\\r\\n  color: #444;\\r\\n  margin-bottom: .2em;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h3 + p {\\r\\n  margin-top: 0;\\r\\n  padding-top: 0;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] p {\\r\\n  color: #232323;\\r\\n  font-size: 1em;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] ul {\\r\\n  color: #232323;\\r\\n  list-style-type: disc;\\r\\n  margin: 0 0 1em 3em;\\r\\n}\",\"infoSecondaryDocumentation\":\".field[id$=fields-{{ name }}-field] {\\r\\n  background-color: #eee;\\r\\n  padding: 10px;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] label {\\r\\n  color: #000;\\r\\n  cursor: pointer;\\r\\n  display: block;\\r\\n  font-size: 1em;\\r\\n  font-weight: bold;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] .input {\\r\\n  border-top: 1px solid #c6c6c6;\\r\\n  padding-top:.5em;\\r\\n  margin-top: .5em;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h1,\\r\\n.field[id$=fields-{{ name }}-field] h2,\\r\\n.field[id$=fields-{{ name }}-field] h3 {\\r\\n  color: #29323d;\\r\\n  font-size: 1em;\\r\\n  font-weight: bold;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h1,\\r\\n.field[id$=fields-{{ name }}-field] h2 {\\r\\n  border-bottom: 1px solid #dddddd;\\r\\n  font-weight: bold;\\r\\n  padding: 0 0 .5em;\\r\\n  margin: .5em 0;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h1 {\\r\\n  text-transform: uppercase;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h3 {\\r\\n  color: #444;\\r\\n  margin-bottom: .2em;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h3 + p {\\r\\n  margin-top: 0;\\r\\n  padding-top: 0;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] p {\\r\\n  color: #232323;\\r\\n  font-size: 1em;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] ul {\\r\\n  color: #232323;\\r\\n  list-style-type: disc;\\r\\n  margin: 0 0 1em 3em;\\r\\n}\",\"warningDocumentation\":\".field[id$=fields-{{ name }}-field] {\\r\\n  background-color: #fcf8e3;\\r\\n  padding: 10px;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] label {\\r\\n  color: #000;\\r\\n  cursor: pointer;\\r\\n  display: block;\\r\\n  font-size: 1em;\\r\\n  font-weight: bold;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] .input {\\r\\n  border-top: 1px solid #e4d1b0;\\r\\n  padding-top:.5em;\\r\\n  margin-top: .5em;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h1,\\r\\n.field[id$=fields-{{ name }}-field] h2,\\r\\n.field[id$=fields-{{ name }}-field] h3 {\\r\\n  color: #29323d;\\r\\n  font-size: 1em;\\r\\n  font-weight: bold;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h1,\\r\\n.field[id$=fields-{{ name }}-field] h2 {\\r\\n  border-bottom: 1px solid #f7e9d1;\\r\\n  font-weight: bold;\\r\\n  padding: 0 0 .5em;\\r\\n  margin: .5em 0;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h1 {\\r\\n  text-transform: uppercase;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h3 {\\r\\n  color: #444;\\r\\n  margin-bottom: .2em;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h3 + p {\\r\\n  margin-top: 0;\\r\\n  padding-top: 0;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] p {\\r\\n  color: #232323;\\r\\n  font-size: 1em;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] ul {\\r\\n  color: #232323;\\r\\n  list-style-type: disc;\\r\\n  margin: 0 0 1em 3em;\\r\\n}\",\"dangerDocumentation\":\".field[id$=fields-{{ name }}-field] {\\r\\n  background-color: #ffe1e1;\\r\\n  padding: 10px;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] label {\\r\\n  color: #000;\\r\\n  cursor: pointer;\\r\\n  display: block;\\r\\n  font-size: 1em;\\r\\n  font-weight: bold;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] .input {\\r\\n  border-top: 1px solid #ddb9b9;\\r\\n  padding-top:.5em;\\r\\n  margin-top: .5em;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h1,\\r\\n.field[id$=fields-{{ name }}-field] h2,\\r\\n.field[id$=fields-{{ name }}-field] h3 {\\r\\n  color: #29323d;\\r\\n  font-size: 1em;\\r\\n  font-weight: bold;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h1,\\r\\n.field[id$=fields-{{ name }}-field] h2 {\\r\\n  border-bottom: 1px solid #f3cccc;\\r\\n  font-weight: bold;\\r\\n  padding: 0 0 .5em;\\r\\n  margin: .5em 0;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h1 {\\r\\n  text-transform: uppercase;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h3 {\\r\\n  color: #444;\\r\\n  margin-bottom: .2em;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h3 + p {\\r\\n  margin-top: 0;\\r\\n  padding-top: 0;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] p {\\r\\n  color: #232323;\\r\\n  font-size: 1em;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] ul {\\r\\n  color: #232323;\\r\\n  list-style-type: disc;\\r\\n  margin: 0 0 1em 3em;\\r\\n}\",\"highlightDocumentation\":\".field[id$=fields-{{ name }}-field] {\\r\\n  background-color: #dbf7d9;\\r\\n  padding: 10px;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] label {\\r\\n  color: #000;\\r\\n  cursor: pointer;\\r\\n  display: block;\\r\\n  font-size: 1em;\\r\\n  font-weight: bold;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] .input {\\r\\n  border-top: 1px solid #b6c8b5;\\r\\n  padding-top:.5em;\\r\\n  margin-top: .5em;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h1,\\r\\n.field[id$=fields-{{ name }}-field] h2,\\r\\n.field[id$=fields-{{ name }}-field] h3 {\\r\\n  color: #29323d;\\r\\n  font-size: 1em;\\r\\n  font-weight: bold;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h1,\\r\\n.field[id$=fields-{{ name }}-field] h2 {\\r\\n  border-bottom: 1px solid #c5e1c3;\\r\\n  font-weight: bold;\\r\\n  padding: 0 0 .5em;\\r\\n  margin: .5em 0;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h1 {\\r\\n  text-transform: uppercase;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h3 {\\r\\n  color: #444;\\r\\n  margin-bottom: .2em;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] h3 + p {\\r\\n  margin-top: 0;\\r\\n  padding-top: 0;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] p {\\r\\n  color: #232323;\\r\\n  font-size: 1em;\\r\\n}\\r\\n.field[id$=fields-{{ name }}-field] ul {\\r\\n  color: #232323;\\r\\n  list-style-type: disc;\\r\\n  margin: 0 0 1em 3em;\\r\\n}\"}','2018-02-09 17:22:30','2018-02-09 17:22:30','2019-05-04 15:38:42','a291f829-fccb-48ce-8746-c000bc65a134'),(46,'SproutForms','2.3.5','2.3.0',NULL,'unknown',1,NULL,'2018-02-09 17:23:27','2018-02-09 17:23:27','2019-05-04 15:38:42','faa609c0-5f4d-4865-8b87-6e3615f849db'),(47,'AmNav','1.8.0','1.7.4',NULL,'unknown',1,NULL,'2018-02-09 21:54:34','2018-02-09 21:54:34','2019-05-04 15:38:42','08e6f121-9001-465a-9350-f4f2cfbfe8fd'),(48,'Analytics','3.4.4','1.0.2',NULL,'unknown',1,'{\"accountId\":\"114038478\",\"accountName\":\"Haunted Mansions\",\"webPropertyId\":\"UA-114038478-1\",\"webPropertyName\":\"Haunted Mansions\",\"internalWebPropertyId\":\"169769582\",\"profileId\":\"169688724\",\"profileName\":\"All Web Site Data\",\"profileCurrency\":\"USD\",\"realtimeRefreshInterval\":\"60\",\"forceConnect\":0,\"enableRealtime\":\"1\",\"tokenId\":\"1\"}','2018-02-13 23:36:08','2018-02-13 23:36:08','2019-05-04 15:38:42','520fb9d3-430c-462c-ab2c-a48ca90bff50'),(49,'Oauth','2.0.2','1.0.1',NULL,'unknown',1,NULL,'2018-02-13 23:36:37','2018-02-13 23:36:37','2019-05-04 15:38:42','9e616ce1-bdb1-4ff9-9e60-70c1f5b4382c');
/*!40000 ALTER TABLE `craft_plugins` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_rackspaceaccess`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_rackspaceaccess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `connectionKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdnUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_rackspaceaccess_connectionKey_unq_idx` (`connectionKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_rackspaceaccess`
--

LOCK TABLES `craft_rackspaceaccess` WRITE;
/*!40000 ALTER TABLE `craft_rackspaceaccess` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_rackspaceaccess` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_reasons`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_reasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `conditionals` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_reasons_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_reasons_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_reasons`
--

LOCK TABLES `craft_reasons` WRITE;
/*!40000 ALTER TABLE `craft_reasons` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_reasons` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_relabel`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_relabel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_relabel_fieldId_fk` (`fieldId`),
  KEY `craft_relabel_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_relabel_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_relabel_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_relabel`
--

LOCK TABLES `craft_relabel` WRITE;
/*!40000 ALTER TABLE `craft_relabel` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_relabel` VALUES (11,22,66,'Bakgrunnsbilde',NULL,'2018-02-09 21:47:27','2018-02-09 21:47:27','b29f0b35-a361-4f00-b9ae-ea50e6dcabab'),(12,44,66,'Ingress',NULL,'2018-02-09 21:47:27','2018-02-09 21:47:27','eb2b7173-c827-4ed4-9e5b-5895cfb6dabe'),(20,22,72,'Bakgrunnsbilde',NULL,'2018-02-10 14:51:23','2018-02-10 14:51:23','e31040a4-014e-4586-a807-09a0e515527d'),(21,44,72,'Press stuff',NULL,'2018-02-10 14:51:23','2018-02-10 14:51:23','944644a2-d8eb-4f63-bf4d-933de1fb5b02'),(22,23,72,'Digital stuff',NULL,'2018-02-10 14:51:23','2018-02-10 14:51:23','c036415d-b128-4f2c-bacc-31021b00eb7c'),(23,24,72,'Press stuff',NULL,'2018-02-10 14:51:23','2018-02-10 14:51:23','ebb86c00-5a1a-47c9-9546-635ec0dbcaba'),(24,22,74,'Logo',NULL,'2018-02-10 15:18:54','2018-02-10 15:18:54','c3050dcd-e13e-4c34-87c2-672c47180e76');
/*!40000 ALTER TABLE `craft_relabel` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_relations`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_relations_fieldId_sourceId_sourceLocale_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceLocale`,`targetId`),
  KEY `craft_relations_sourceId_fk` (`sourceId`),
  KEY `craft_relations_sourceLocale_fk` (`sourceLocale`),
  KEY `craft_relations_targetId_fk` (`targetId`),
  CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_relations_sourceLocale_fk` FOREIGN KEY (`sourceLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_relations`
--

LOCK TABLES `craft_relations` WRITE;
/*!40000 ALTER TABLE `craft_relations` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_relations` VALUES (116,22,15,NULL,24,1,'2018-02-11 14:48:12','2018-02-11 14:48:12','5152f878-283b-4641-895e-15f3676910d9'),(117,45,15,NULL,43,1,'2018-02-11 14:48:12','2018-02-11 14:48:12','77b89cdd-2fae-4260-a84d-22ca061e9f84'),(118,45,15,NULL,24,2,'2018-02-11 14:48:12','2018-02-11 14:48:12','94216ce6-4ea2-480c-b6f8-ce526db11dfd'),(119,45,15,NULL,44,3,'2018-02-11 14:48:12','2018-02-11 14:48:12','3fc0de57-64a4-457c-bc2a-364e96acc374'),(120,45,15,NULL,27,4,'2018-02-11 14:48:12','2018-02-11 14:48:12','c436543f-af06-40ec-ad62-6f8ccbea2e15'),(121,22,11,NULL,24,1,'2018-02-12 19:44:22','2018-02-12 19:44:22','fe64e47b-f9bc-4d45-9628-de3b8135f4a9'),(122,48,11,NULL,42,1,'2018-02-12 19:44:22','2018-02-12 19:44:22','16881e57-2af4-4c05-ab6a-7d57d3ae0201'),(123,22,19,NULL,35,1,'2018-02-12 19:50:47','2018-02-12 19:50:47','5e3f6736-1a6d-4dd9-9133-060547831029'),(124,49,19,NULL,36,1,'2018-02-12 19:50:47','2018-02-12 19:50:47','af68c2f0-9720-4341-a2c4-2063a54c8363'),(125,51,48,NULL,47,1,'2018-02-12 19:50:47','2018-02-12 19:50:47','8eed06c3-ec34-4883-b714-339f62286458'),(126,51,50,NULL,49,1,'2018-02-12 19:50:47','2018-02-12 19:50:47','b475b580-26b2-467a-b088-3119366f6431'),(127,51,57,NULL,56,1,'2018-02-12 19:50:47','2018-02-12 19:50:47','796758aa-2ed7-49f1-b3b8-4abdfc52f176');
/*!40000 ALTER TABLE `craft_relations` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_routes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlParts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlPattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_routes_locale_idx` (`locale`),
  KEY `craft_routes_urlPattern_idx` (`urlPattern`),
  CONSTRAINT `craft_routes_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_routes`
--

LOCK TABLES `craft_routes` WRITE;
/*!40000 ALTER TABLE `craft_routes` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_routes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_searchindex`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`locale`),
  FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_searchindex`
--

LOCK TABLES `craft_searchindex` WRITE;
/*!40000 ALTER TABLE `craft_searchindex` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_searchindex` VALUES (1,'username',0,'nb_no',' admin '),(1,'firstname',0,'nb_no',' hello '),(1,'lastname',0,'nb_no',' hauntedmansions '),(1,'fullname',0,'nb_no',' hello hauntedmansions '),(1,'email',0,'nb_no',' hello hauntedmansions no '),(1,'slug',0,'nb_no',''),(30,'title',0,'nb_no',' bilde2 ghost '),(30,'slug',0,'nb_no',' bilde2 ghost '),(30,'kind',0,'nb_no',' image '),(30,'extension',0,'nb_no',' png '),(30,'field',18,'nb_no',''),(30,'filename',0,'nb_no',' bilde2 ghost png '),(30,'field',21,'nb_no',''),(29,'title',0,'nb_no',' bilde2 '),(29,'slug',0,'nb_no',' bilde2 '),(29,'kind',0,'nb_no',' image '),(29,'extension',0,'nb_no',' png '),(29,'filename',0,'nb_no',' bilde2 png '),(29,'field',18,'nb_no',''),(29,'field',21,'nb_no',''),(28,'title',0,'nb_no',' bilde2 '),(28,'slug',0,'nb_no',' bilde2 '),(28,'kind',0,'nb_no',' image '),(28,'extension',0,'nb_no',' jpg '),(28,'field',18,'nb_no',''),(28,'filename',0,'nb_no',' bilde2 jpg '),(28,'field',21,'nb_no',''),(27,'title',0,'nb_no',' bilde1 stor '),(27,'slug',0,'nb_no',' bilde1 stor '),(27,'kind',0,'nb_no',' image '),(27,'extension',0,'nb_no',' png '),(27,'filename',0,'nb_no',' bilde1 stor png '),(27,'field',18,'nb_no',''),(27,'field',21,'nb_no',''),(26,'title',0,'nb_no',' bilde1 ghost '),(26,'slug',0,'nb_no',' bilde1 ghost '),(26,'kind',0,'nb_no',' image '),(26,'extension',0,'nb_no',' png '),(26,'filename',0,'nb_no',' bilde1 ghost png '),(26,'field',18,'nb_no',''),(26,'field',21,'nb_no',''),(25,'title',0,'nb_no',' bilde1 '),(25,'slug',0,'nb_no',' bilde1 '),(25,'kind',0,'nb_no',' image '),(25,'extension',0,'nb_no',' png '),(25,'filename',0,'nb_no',' bilde1 png '),(11,'slug',0,'nb_no',' forside '),(11,'title',0,'nb_no',' forside '),(15,'title',0,'nb_no',' press stuff '),(15,'slug',0,'nb_no',' press stuff '),(14,'name',0,'nb_no',' contact '),(14,'handle',0,'nb_no',' contact '),(14,'slug',0,'nb_no',''),(25,'field',18,'nb_no',''),(25,'field',21,'nb_no',''),(24,'title',0,'nb_no',' bg '),(24,'slug',0,'nb_no',' bg '),(24,'kind',0,'nb_no',' image '),(11,'field',22,'nb_no',' bg '),(11,'field',43,'nb_no',' norwegian newcomers haunted mansions bring psychedelic warmth and understated confidence to their hiphop inspired indie weirdness haunted mansions namecheck portugal the man danger mouse and gorillaz when asked to describe their music and while those artists have inspired haunted mansions it s clear to all that they bring their own flavour to the music as well the band combines old school hiphop beats almost shimmering acoustic guitars textured synths and weird smoky and infectious vocals to perfection the songs are seductive in all their gloom mildly psychedelic and strongly melodic but most of all just really great '),(11,'field',39,'nb_no',''),(56,'kind',0,'nb_no',' image '),(56,'extension',0,'nb_no',' svg '),(15,'field',45,'nb_no',' 27625326 10159919549415203 7567322317182933677 o bg 27624891 10159898121280203 6290961494434247971 o bilde1 stor '),(11,'field',23,'nb_no',' blablablablabla '),(11,'field',44,'nb_no',' press stuffaeraswerawer '),(15,'field',22,'nb_no',' bg '),(19,'field',44,'nb_no',' the band hello hauntedmansions no label riot factory '),(19,'slug',0,'nb_no',''),(21,'field',46,'nb_no',''),(21,'field',47,'nb_no',' bg '),(21,'slug',0,'nb_no',''),(15,'field',44,'nb_no',' press photos and other goodies '),(24,'extension',0,'nb_no',' jpg '),(24,'filename',0,'nb_no',' bg jpg '),(24,'field',18,'nb_no',''),(24,'field',21,'nb_no',''),(11,'field',48,'nb_no',' haunted mansions snippets kort '),(31,'field',21,'nb_no',''),(31,'field',18,'nb_no',''),(31,'filename',0,'nb_no',' bilde3 ghost png '),(31,'extension',0,'nb_no',' png '),(31,'kind',0,'nb_no',' image '),(31,'slug',0,'nb_no',' bilde3 ghost '),(31,'title',0,'nb_no',' bilde3 ghost '),(32,'field',21,'nb_no',''),(32,'field',18,'nb_no',''),(32,'filename',0,'nb_no',' bilde4 jpg '),(32,'extension',0,'nb_no',' jpg '),(32,'kind',0,'nb_no',' image '),(32,'slug',0,'nb_no',' bilde4 '),(32,'title',0,'nb_no',' bilde4 '),(33,'field',21,'nb_no',''),(33,'field',18,'nb_no',''),(33,'filename',0,'nb_no',' bilde4 png '),(33,'extension',0,'nb_no',' png '),(33,'kind',0,'nb_no',' image '),(33,'slug',0,'nb_no',' bilde4 '),(33,'title',0,'nb_no',' bilde4 '),(42,'kind',0,'nb_no',' audio '),(42,'extension',0,'nb_no',' mp3 '),(42,'filename',0,'nb_no',' haunted mansions snippets kort mp3 '),(19,'field',22,'nb_no',' hm logo '),(35,'field',21,'nb_no',''),(35,'field',18,'nb_no',''),(35,'filename',0,'nb_no',' hm logo svg '),(35,'extension',0,'nb_no',' svg '),(35,'kind',0,'nb_no',' image '),(35,'slug',0,'nb_no',' hm logo '),(35,'title',0,'nb_no',' hm logo '),(19,'field',49,'nb_no',' icon logo emblem '),(36,'field',21,'nb_no',''),(36,'field',18,'nb_no',''),(36,'filename',0,'nb_no',' icon logo emblem svg '),(36,'extension',0,'nb_no',' svg '),(36,'kind',0,'nb_no',' image '),(36,'slug',0,'nb_no',' icon logo emblem '),(36,'title',0,'nb_no',' icon logo emblem '),(37,'filename',0,'nb_no',' icon mute svg '),(37,'extension',0,'nb_no',' svg '),(37,'kind',0,'nb_no',' image '),(37,'slug',0,'nb_no',' icon mute '),(37,'title',0,'nb_no',' icon mute '),(38,'filename',0,'nb_no',' icon mute hover svg '),(38,'extension',0,'nb_no',' svg '),(38,'kind',0,'nb_no',' image '),(38,'slug',0,'nb_no',' icon mute hover '),(38,'title',0,'nb_no',' icon mute hover '),(39,'filename',0,'nb_no',' icon next svg '),(39,'extension',0,'nb_no',' svg '),(39,'kind',0,'nb_no',' image '),(39,'slug',0,'nb_no',' icon next '),(39,'title',0,'nb_no',' icon next '),(40,'filename',0,'nb_no',' icon prev svg '),(40,'extension',0,'nb_no',' svg '),(40,'kind',0,'nb_no',' image '),(40,'slug',0,'nb_no',' icon prev '),(40,'title',0,'nb_no',' icon prev '),(41,'filename',0,'nb_no',' icon spotify svg '),(41,'extension',0,'nb_no',' svg '),(41,'kind',0,'nb_no',' image '),(41,'slug',0,'nb_no',' icon spotify '),(41,'title',0,'nb_no',' icon spotify '),(42,'slug',0,'nb_no',' haunted mansions snippets kort '),(42,'title',0,'nb_no',' haunted mansions snippets kort '),(43,'field',21,'nb_no',''),(43,'field',18,'nb_no',''),(43,'filename',0,'nb_no',' 27625326_10159919549415203_7567322317182933677_o jpg '),(43,'extension',0,'nb_no',' jpg '),(43,'kind',0,'nb_no',' image '),(43,'slug',0,'nb_no',' 27625326 10159919549415203 7567322317182933677 o '),(43,'title',0,'nb_no',' 27625326 10159919549415203 7567322317182933677 o '),(44,'field',21,'nb_no',''),(44,'field',18,'nb_no',''),(44,'filename',0,'nb_no',' 27624891_10159898121280203_6290961494434247971_o jpg '),(44,'extension',0,'nb_no',' jpg '),(44,'kind',0,'nb_no',' image '),(44,'slug',0,'nb_no',' 27624891 10159898121280203 6290961494434247971 o '),(44,'title',0,'nb_no',' 27624891 10159898121280203 6290961494434247971 o '),(45,'field',21,'nb_no',''),(45,'field',18,'nb_no',''),(45,'filename',0,'nb_no',' img_7423 animation gif '),(45,'extension',0,'nb_no',' gif '),(45,'kind',0,'nb_no',' image '),(45,'slug',0,'nb_no',' img 7423 animation '),(45,'title',0,'nb_no',' img 7423 animation '),(56,'slug',0,'nb_no',' icon instagram '),(56,'filename',0,'nb_no',' icon instagram svg '),(56,'field',18,'nb_no',''),(56,'field',21,'nb_no',''),(19,'field',50,'nb_no',' icon spotify https open spotify com artist 3zlxvwkihzfjnif9gdkx9l icon facebook https www facebook com hauntedmansionsmusic icon instagram https www instagram com hauntedmansionsmusic '),(47,'field',21,'nb_no',''),(47,'field',18,'nb_no',''),(47,'filename',0,'nb_no',' icon spotify svg '),(47,'extension',0,'nb_no',' svg '),(47,'kind',0,'nb_no',' image '),(47,'slug',0,'nb_no',' icon spotify '),(47,'title',0,'nb_no',' icon spotify '),(48,'field',51,'nb_no',' icon spotify '),(48,'field',52,'nb_no',' https open spotify com artist 3zlxvwkihzfjnif9gdkx9l '),(48,'slug',0,'nb_no',''),(49,'field',21,'nb_no',''),(49,'field',18,'nb_no',''),(49,'filename',0,'nb_no',' icon facebook svg '),(49,'extension',0,'nb_no',' svg '),(49,'kind',0,'nb_no',' image '),(49,'slug',0,'nb_no',' icon facebook '),(49,'title',0,'nb_no',' icon facebook '),(50,'field',51,'nb_no',' icon facebook '),(50,'field',52,'nb_no',' https www facebook com hauntedmansionsmusic '),(50,'slug',0,'nb_no',''),(51,'field',21,'nb_no',''),(51,'field',18,'nb_no',''),(51,'filename',0,'nb_no',' icon applemusic svg '),(51,'extension',0,'nb_no',' svg '),(51,'kind',0,'nb_no',' image '),(51,'slug',0,'nb_no',' icon applemusic '),(51,'title',0,'nb_no',' icon applemusic '),(52,'field',21,'nb_no',''),(52,'field',18,'nb_no',''),(52,'filename',0,'nb_no',' icon bandcamp svg '),(52,'extension',0,'nb_no',' svg '),(52,'kind',0,'nb_no',' image '),(52,'slug',0,'nb_no',' icon bandcamp '),(52,'title',0,'nb_no',' icon bandcamp '),(53,'field',21,'nb_no',''),(53,'field',18,'nb_no',''),(53,'filename',0,'nb_no',' icon tidal svg '),(53,'extension',0,'nb_no',' svg '),(53,'kind',0,'nb_no',' image '),(53,'slug',0,'nb_no',' icon tidal '),(53,'title',0,'nb_no',' icon tidal '),(57,'field',51,'nb_no',' icon instagram '),(56,'title',0,'nb_no',' icon instagram '),(57,'field',52,'nb_no',' https www instagram com hauntedmansionsmusic '),(57,'slug',0,'nb_no','');
/*!40000 ALTER TABLE `craft_searchindex` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_sections`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableVersioning` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_name_unq_idx` (`name`),
  UNIQUE KEY `craft_sections_handle_unq_idx` (`handle`),
  KEY `craft_sections_structureId_fk` (`structureId`),
  CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sections`
--

LOCK TABLES `craft_sections` WRITE;
/*!40000 ALTER TABLE `craft_sections` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_sections` VALUES (1,NULL,'Forside','forside','single',1,'index',1,'2017-02-08 21:28:29','2017-02-08 21:31:02','429ae06d-c59e-4950-a40c-d53710b9e9fc'),(3,NULL,'Press stuff','pressStuff','single',1,'press-stuff',1,'2018-02-09 18:01:34','2018-02-09 18:01:34','ebbac650-9d2f-4e9f-be88-5f6134378b77');
/*!40000 ALTER TABLE `craft_sections` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_sections_i18n`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sections_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabledByDefault` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_i18n_sectionId_locale_unq_idx` (`sectionId`,`locale`),
  KEY `craft_sections_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_sections_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_sections_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sections_i18n`
--

LOCK TABLES `craft_sections_i18n` WRITE;
/*!40000 ALTER TABLE `craft_sections_i18n` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_sections_i18n` VALUES (1,1,'nb_no',1,'__home__',NULL,'2017-02-08 21:28:29','2017-02-08 21:28:29','a403b4f9-4757-4868-92d2-6dd6b88120f0'),(3,3,'nb_no',1,'press-stuff',NULL,'2018-02-09 18:01:34','2018-02-09 18:01:34','1c43c6b6-612d-4808-b3b9-51ee0373010b');
/*!40000 ALTER TABLE `craft_sections_i18n` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_seomatic_meta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_seomatic_meta` (
  `id` int(11) NOT NULL,
  `seoImageId` int(11) DEFAULT NULL,
  `seoFacebookImageId` int(11) DEFAULT NULL,
  `seoTwitterImageId` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'nb_no',
  `elementId` int(10) DEFAULT '0',
  `metaType` enum('default','template') COLLATE utf8_unicode_ci DEFAULT 'template',
  `metaPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `seoMainEntityCategory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seoMainEntityOfPage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seoTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `seoDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `seoKeywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `seoTwitterImageTransform` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seoFacebookImageTransform` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seoImageTransform` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitterCardType` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'summary',
  `openGraphType` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'website',
  `robots` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_seomatic_meta_seoImageId_fk` (`seoImageId`),
  CONSTRAINT `craft_seomatic_meta_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_seomatic_meta_seoImageId_fk` FOREIGN KEY (`seoImageId`) REFERENCES `craft_assetfiles` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_seomatic_meta`
--

LOCK TABLES `craft_seomatic_meta` WRITE;
/*!40000 ALTER TABLE `craft_seomatic_meta` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_seomatic_meta` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_seomatic_settings`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_seomatic_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteSeoImageId` int(11) DEFAULT NULL,
  `siteSeoFacebookImageId` int(11) DEFAULT NULL,
  `siteSeoTwitterImageId` int(11) DEFAULT NULL,
  `genericOwnerImageId` int(11) DEFAULT NULL,
  `genericCreatorImageId` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteSeoName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteSeoTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteSeoTitleSeparator` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteSeoTitlePlacement` enum('before','after','none') COLLATE utf8_unicode_ci DEFAULT 'after',
  `siteSeoDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteSeoKeywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteSeoTwitterImageTransform` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siteSeoFacebookImageTransform` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siteSeoImageTransform` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siteTwitterCardType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteOpenGraphType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteRobots` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteRobotsTxt` text COLLATE utf8_unicode_ci NOT NULL,
  `siteLinksQueryInput` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteLinksSearchTargets` text COLLATE utf8_unicode_ci NOT NULL,
  `googleSiteVerification` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bingSiteVerification` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleAnalyticsAdvertising` tinyint(1) NOT NULL,
  `googleAnalyticsLinker` tinyint(1) NOT NULL,
  `googleAnalyticsAnonymizeIp` tinyint(1) NOT NULL,
  `googleAnalyticsLinkAttribution` tinyint(1) NOT NULL,
  `googleAnalyticsEEcommerce` tinyint(1) NOT NULL,
  `googleAnalyticsEcommerce` tinyint(1) NOT NULL,
  `googleAnalyticsUID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleTagManagerID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleAnalyticsSendPageview` tinyint(1) NOT NULL,
  `siteOwnerType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteOwnerSpecificType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteOwnerSubType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genericOwnerName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerAlternateName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerDescription` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genericOwnerUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerTelephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerStreetAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerAddressLocality` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerAddressRegion` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerPostalCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerAddressCountry` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerGeoLatitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerGeoLongitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationOwnerDuns` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationOwnerFounder` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationOwnerFoundingDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationOwnerFoundingLocation` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationOwnerContactPoints` text COLLATE utf8_unicode_ci NOT NULL,
  `localBusinessPriceRange` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localBusinessOwnerOpeningHours` text COLLATE utf8_unicode_ci NOT NULL,
  `corporationOwnerTickerSymbol` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `restaurantOwnerServesCuisine` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `restaurantOwnerReservationsUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `restaurantOwnerMenuUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personOwnerGender` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `personOwnerBirthPlace` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `twitterHandle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebookHandle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebookProfileId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebookAppId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedInHandle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googlePlusHandle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtubeHandle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtubeChannelHandle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagramHandle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pinterestHandle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `githubHandle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vimeoHandle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wikipediaUrl` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteCreatorType` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteCreatorSpecificType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siteCreatorSubType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `genericCreatorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorAlternateName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorDescription` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genericCreatorUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorTelephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorStreetAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorAddressLocality` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorAddressRegion` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorPostalCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorAddressCountry` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorGeoLatitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorGeoLongitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationCreatorDuns` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationCreatorFounder` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationCreatorFoundingDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationCreatorFoundingLocation` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationCreatorContactPoints` text COLLATE utf8_unicode_ci NOT NULL,
  `localBusinessCreatorOpeningHours` text COLLATE utf8_unicode_ci NOT NULL,
  `corporationCreatorTickerSymbol` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `restaurantCreatorServesCuisine` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `restaurantCreatorReservationsUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `restaurantCreatorMenuUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personCreatorGender` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `personCreatorBirthPlace` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorHumansTxt` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_seomatic_settings_siteSeoImageId_fk` (`siteSeoImageId`),
  KEY `craft_seomatic_settings_genericOwnerImageId_fk` (`genericOwnerImageId`),
  KEY `craft_seomatic_settings_genericCreatorImageId_fk` (`genericCreatorImageId`),
  CONSTRAINT `craft_seomatic_settings_genericCreatorImageId_fk` FOREIGN KEY (`genericCreatorImageId`) REFERENCES `craft_assetfiles` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_seomatic_settings_genericOwnerImageId_fk` FOREIGN KEY (`genericOwnerImageId`) REFERENCES `craft_assetfiles` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_seomatic_settings_siteSeoImageId_fk` FOREIGN KEY (`siteSeoImageId`) REFERENCES `craft_assetfiles` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_seomatic_settings`
--

LOCK TABLES `craft_seomatic_settings` WRITE;
/*!40000 ALTER TABLE `craft_seomatic_settings` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_seomatic_settings` VALUES (1,24,NULL,NULL,NULL,NULL,'nb_no','Haunted | Mansions','Haunted | Mansions','|','none','Indie band from Trondheim, Norway. Hiphop-inspired indie weirdness where Danger Mouse meets Grandaddy.','hip-hop, trondheim, norway, pop, band, music, danger mouse, gorillaz, shins, haunted mansions, songwriting, song','','','','summary','website','','# robots.txt for {{ siteUrl }}\r\n\r\nSitemap: {{ siteUrl }}sitemap.xml\r\n\r\n# Don\'t allow web crawlers to index Craft\r\n\r\nUser-agent: *\r\nDisallow: /craft/\r\n','','[]','','',0,0,0,0,0,0,'UA-114038478-1','UA-114038478-1',1,'Organization','','Corporation','Haunted Mansions','','','http://www.hauntedmansions.no','','','','','','','','','','','','','','[]','$','[{\"open\":\"\",\"close\":\"\"},{\"open\":\"\",\"close\":\"\"},{\"open\":\"\",\"close\":\"\"},{\"open\":\"\",\"close\":\"\"},{\"open\":\"\",\"close\":\"\"},{\"open\":\"\",\"close\":\"\"},{\"open\":\"\",\"close\":\"\"}]','','','','','Male','','','','','','','','','','','','','','','LocalBusiness','','','Mustasj','','','http://mustasj.no','+4748313760','post@mustasj.no','Kjøpmannsgata 7','Trondheim','Sør Trøndelag','7014','Norge','63.42890269999999','10.4011382','','','','','[{\"telephone\":\"+4748313760\",\"contactType\":\"customer support\"}]','','','','','','Male','','/* TEAM */\r\n\r\n{% if seomaticCreator.name is defined and seomaticCreator.name %}\r\nCreator: {{ seomaticCreator.name }}\r\n{% endif %}\r\n{% if seomaticCreator.url is defined and seomaticCreator.url %}\r\nURL: {{ seomaticCreator.url }}\r\n{% endif %}\r\n{% if seomaticCreator.description is defined and seomaticCreator.description %}\r\nDescription: {{ seomaticCreator.description }}\r\n{% endif %}\r\n\r\n/* THANKS */\r\n\r\nPixel & Tonic - https://pixelandtonic.com\r\n\r\n/* SITE */\r\n\r\nStandards: HTML5, CSS3\r\nComponents: Craft CMS, Yii, PHP, Javascript, SEOmatic','2016-01-19 16:04:47','2018-02-14 13:50:14','17e178ee-774b-4217-97d0-4548dd640b67');
/*!40000 ALTER TABLE `craft_seomatic_settings` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_sessions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sessions_uid_idx` (`uid`),
  KEY `craft_sessions_token_idx` (`token`),
  KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  KEY `craft_sessions_userId_fk` (`userId`),
  CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sessions`
--

LOCK TABLES `craft_sessions` WRITE;
/*!40000 ALTER TABLE `craft_sessions` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_sessions` VALUES (53,1,'4893bef3c369df586e564b24061bf61b7cc38aa3czozMjoibldQaHBhdzVGMlFtYzdBWmVwVFRLUHhfaG5ZcmZ+MG4iOw==','2016-03-14 09:36:21','2016-03-14 09:36:21','5969dd47-805e-446c-a8f2-1b9864f85784'),(54,1,'36017137ebdc38be935a53fa9f3ede3bd3134846czozMjoiWkVkZWNGOUl4WXp3dG52RUdTbFNKd19vbk5ZRmZyanIiOw==','2016-03-15 14:27:23','2016-03-15 14:27:23','e975b2e2-d4c0-4248-a5df-440f68a0cde1'),(55,1,'82b5a4d5a78de76d120ef24a0121ade326160d14czozMjoiaWhjM05KZnpIX1B6S2NGSjRRbUtHSmw4aVNLVU1oQXEiOw==','2016-03-18 09:50:35','2016-03-18 09:50:35','56089d91-4731-4e3f-b205-eecacf2f0ba6'),(56,1,'35c2fa56be21797c9fdcf9ad36ab1112a0bfaf3bczozMjoiZUE3eFVGV2lfUmREV2NPdlFmUW1UYmNoSVBHemRUVlciOw==','2016-03-23 14:49:15','2016-03-23 14:49:15','d9125f70-1082-472e-98fd-e4be3c4b2be3'),(57,1,'4af3f2d2885e60b54cdcf06f2260fe9b9ed842f5czozMjoifmg1OWE0bjZvdDhoalJxNllWMjloUWdLTHNrcHZQV2wiOw==','2016-04-11 13:26:42','2016-04-11 13:26:42','bad8b6cb-52cb-4468-9980-a412255bd198'),(58,1,'2bebeae4bc62cc32e9438359bba2721227c42fcbczozMjoibmNWQjh1bkhVdUF6d3o3d185MkppNzJsbHBmbHVma1AiOw==','2016-04-12 14:45:38','2016-04-12 14:45:38','0028cafe-b363-4302-803b-96a1217579c2'),(59,1,'93982bf48378d278e89c5181578c1ef1b291b199czozMjoiOGVTRVBwSnJGTTRBWnZmdXpfSlRqRnFpOTJDYU5qUVUiOw==','2016-04-20 17:24:44','2016-04-20 17:24:44','cf15adf5-a2c8-4ed0-bda3-467ab4679182'),(60,1,'08e530b0f90255576b2cfa6dab822e7eeb722b18czozMjoiMUlid1NzVHVTdmtfMlA0SExZdklrQ3BHZGVsaHhrUE8iOw==','2016-04-26 11:07:10','2016-04-26 11:07:10','8953fec6-ce13-46ea-b188-29acf0daebb5'),(61,1,'c467fa26071f9348c29cab0fda4fb4d99e84dad3czozMjoiRjgxeE10SmVKc0IwSnoxajNSZHdzdGZ6QUVoMzZDT1oiOw==','2016-04-27 16:17:45','2016-04-27 16:17:45','f1aa051d-f85f-497e-9ab5-ad9ae6a1f9d3'),(62,1,'180823852cc582bfc4f803ab3e0cd7d796ba1be6czozMjoidXY4VlpWNDA1cXFIaFV3WTBFZmdDZn55VHVqbVJ2dXYiOw==','2016-04-29 15:12:50','2016-04-29 15:12:50','28ec656e-466c-4f19-b0e0-4af8493a2719'),(63,1,'475d52a0118759839fb87e90bbde9e8db443bdb0czozMjoiWkx3ZUo2TkJwTXVrck9hWU5iaXRiZVBRa2lIQ3gxcXkiOw==','2016-05-03 09:06:40','2016-05-03 09:06:40','80db662e-d0a0-41d3-80b4-3be2e629d90e'),(64,1,'02dd0c6652e90e0ea0b75778c3c28df0acd68c1cczozMjoiVFY3a09DXzNzMFFJUnFwRkRDbnEwa1lJckhDTFdnSngiOw==','2016-05-06 13:23:12','2016-05-06 13:23:12','fc38a153-0e41-476a-aa77-70f9c6855c7e'),(65,1,'6175a888ee253077c2d3e32afb232125088fe36dczozMjoiR0pkOEpsWkFNMXU2dlRqZVRUWGtCYWV0VDFzYjBnUzQiOw==','2016-05-09 10:56:50','2016-05-09 10:56:50','09a2e14d-6bd7-4c46-b45d-c52a9d6870d9'),(66,1,'81efffa26cf4259896a52d69b508bdee1d185042czozMjoiaVc0aXViM0NWWmtBN1pGdG5MbmRvVX5LbmlVTFNJUm8iOw==','2016-05-12 07:37:44','2016-05-12 07:37:44','f0471e5f-1389-4955-9056-ecb67a7d0de6'),(67,1,'495b9d0d119e5c1f8a4bb0f4e369cfd02b737939czozMjoiaXo0amZQR2VYQ34wUlFCfk12bTZYY3ltN1llekZrSDIiOw==','2016-05-13 14:52:00','2016-05-13 14:52:00','7a3b86d8-289a-4898-a33d-a066761ebc23'),(68,1,'ad8bbcc960a2a15e3f25b4adc85eb3fce43f0828czozMjoiZTdSeGdMWmdYVUhrVGFBWmo2aGVEU0ZWdGhBa2FnUGIiOw==','2016-05-20 08:58:11','2016-05-20 08:58:11','2cf41f3c-82d3-448c-889e-c5a40ee09f93'),(71,1,'d5a55979383a4f50847655aae1aa4e90e7a05213czozMjoia1NQfjFQT25qUzM2TzJrOTVNZW9Wa1dENU9GYXNmSHkiOw==','2016-05-25 09:56:09','2016-05-25 09:56:09','17a43c6b-fc7f-4e65-9cfd-1aa5d0823b63'),(72,1,'a29e5c409c332e141eaf74bf3dffcccf72b06764czozMjoiaTlkZGhhc3dEQU9rOHZPcGJzSTkwM0dMenFiX2ZVUlUiOw==','2016-06-03 08:20:18','2016-06-03 08:20:18','0345ad3b-b82f-4546-b01a-9df6621e0a3d'),(73,1,'44388df253fdec281d239483bd584da847fd6d5fczozMjoiRl92M1BmSUh4WWNHbHZLM0t+RUhhM3lySFJ5M1FkOEciOw==','2016-06-08 07:59:47','2016-06-08 12:34:48','75a63239-7e89-4af4-9205-3272e11b2499'),(74,1,'e09831dc4e4ac2c7ef0028b5c7c9d7234b0d9af6czozMjoiUHBHUHdZQnpoVGMwT0pMMGo0a1I4STdYeUR4RF83UF8iOw==','2016-06-10 07:36:42','2016-06-10 07:36:42','d0e01652-f6cd-4f1b-b441-cbaf73e8192d'),(75,1,'fa6c243428f428172a04a38fdaca340a188a29eeczozMjoib05wWUxKfmdaelFrT35uWXdzcEZiaTl6QjJuSkVod18iOw==','2016-06-14 07:14:28','2016-06-14 07:14:28','21259194-1de9-43c3-b722-52ef29a58fa3'),(76,1,'be201ca9d7234b1aac7d91ca449418b0b3899692czozMjoiaG42NVN+NUhFT1BjeWFXM2REUkZjUGdkQlRTVTZyZ3oiOw==','2016-08-01 10:07:11','2016-08-01 10:07:11','22bb5781-502a-4c7c-befc-685b653b5ddf'),(77,1,'cf642d761c968d67f6b3e37a695691796d321aa0czozMjoiVHpDQ3BEUk9ldjVqNExNaH50fmVxWVVYY3FYQkJuUm8iOw==','2016-08-01 10:41:26','2016-08-01 10:41:26','260f8739-4f1a-4f82-8fd1-9bb783074a98'),(78,1,'da8391b9922675b8a056bb11d464dc83ab7ae16cczozMjoiYTBNa0VLMk5OV0lzYUtiaFZNT25mRFZ2bkdFR0ExSFciOw==','2016-08-17 11:54:42','2016-08-17 11:54:42','467f3d6e-bc2e-439e-96f4-431f77b6bdca'),(79,1,'69812d4362ba7edb222763dcea11dad4bfe150bfczozMjoiYjh2S2ZqQkdKb3p1RjRFSmRZeFdzQWtIVlJWYjRkR34iOw==','2016-08-23 15:03:32','2016-08-23 15:03:32','03e0cad1-4ad9-478d-b1c5-bf294ec097ad'),(80,1,'c578675eaabe059ae56f4560caa1e1c49a719e62czozMjoiVTZtOHl4MU44cG1BUFlMaXF3dzkwWnd3TGNoVWNNQmMiOw==','2016-09-14 08:33:28','2016-09-14 08:33:28','3c99c03a-c802-41d1-9458-a7f3c07de6aa'),(81,1,'29058073eddc6773a511628f5a45289cd334d36bczozMjoiNnBlVEVMMTE5Z3VUTHNnR1FDalowVm5LTElsM1BDaWciOw==','2016-09-14 13:26:15','2016-09-14 13:26:15','ec72a6f0-e996-4fea-890e-960ee8f60601'),(82,1,'4bb2bbdc8992f03a9982d0b2a5f73bd402baee9dczozMjoiZG5JWmMwNjVffkFZblBqaGU1ZXZST21xUGNRcjdIV3AiOw==','2016-09-30 07:40:08','2016-09-30 07:40:08','77def9cd-6203-433c-aed4-ebcc15125c61'),(83,1,'e25cfc8a3dffc4303e8cc6b14754b9897116bc6aczozMjoiQjR3ZTN+SUxfZUt0czQ0ZjY2VlY0d35fNEpkYTVlODMiOw==','2016-10-13 07:58:15','2016-10-13 07:58:15','422953fa-3878-4d8f-a191-34024da92399'),(84,1,'3cb48e906f4fbfb4323a5d13b1c6b9a93fa36ad0czozMjoiNXExQV9BNGpjWTQxdnRWTFpoUzNIbVhBck5YZnBDRmoiOw==','2016-11-07 18:24:53','2016-11-07 18:24:53','c6cf1893-ad92-458d-8046-2fb33dcc176c'),(85,1,'90c1ca98d4224e3867335eadbbd0ecd978ab7ba1czozMjoieDhOcjZCamdaYkhWV3ZQbVJrN0toNXFfWDU2WmVkS1giOw==','2016-11-14 09:36:36','2016-11-14 09:36:36','cdde5745-f601-4d80-b84c-f2f3fd33f704'),(86,1,'4b1f749761ec6831b461da8955a2a1364f0b4aceczozMjoiaV9YRzhXbzBpamFpR1ZhZTFEVGptaHdsaFlDalYxOWMiOw==','2016-12-01 09:06:33','2016-12-01 09:06:33','5d58b5b8-3bbc-498a-ab29-b1ead1893ef1'),(87,1,'56d7eafd5420368bc2b7b04641f93e006e80b0ffczozMjoiYXpWNWhlTFlQckZnR1Z4bnZ2a1dUNG90NzI2TEw3RGsiOw==','2016-12-07 10:02:42','2016-12-07 10:02:42','e48a1463-4638-4f05-80ff-2c9ae02424f2'),(88,1,'342ef6751dcbebed174bd77219021326cf1f079aczozMjoiTXVRa0VNY2hhTlpnbTBTMTl3MExPM1lwQ3FDcjFISUEiOw==','2016-12-13 09:53:02','2016-12-13 09:53:02','8d800933-9ce7-4723-b6ee-4094a95d721b'),(89,1,'594abb7c2f95bb1f98d13980b38831cf242767b0czozMjoiOWlpcEZXblZmZmZ1OFpBelB2VnBHUzdxRF9neWwzR1QiOw==','2017-01-12 08:44:22','2017-01-12 08:44:22','75e95fc2-7f86-4e88-a8d1-cb8f7ddd02b7'),(90,1,'c1b9b62df6aa0c9b510459583a70c8af49c46108czozMjoieE1KeVJEaE9DOGU5Qk9pYjBLbFpKc21kTVV4MDZfRkIiOw==','2017-01-31 13:52:34','2017-01-31 13:52:34','db24202f-2405-4575-89aa-a0dd77b94599'),(91,1,'a69e82c514845761b6165ceb87542abc8fb885aeczozMjoiYUZrc2t2TDhDR3Y1aHRJSlJtMk9Leks2S0dnS0VBbkYiOw==','2017-02-08 21:15:46','2017-02-08 21:15:46','e9f1ea69-5d3a-4949-a01c-d3283444aa66'),(92,1,'0166aa6c4bbbd401178c565560e0f5d1ef6dfdc0czozMjoibUJacGtwYnhfRmlmWm5KbTBXdVlLRkVBOTk0WTNjX2YiOw==','2017-02-11 17:01:48','2017-02-11 17:01:48','f23334d5-bf4a-4fff-a23d-55705c859a4b'),(93,1,'fa214cbb5a5c4078856088a4b984263b5ab0326bczozMjoiM0hjZEk4RXNQMzlNcE52TnhxZDlMb1pGMndSb0tvUmciOw==','2018-02-09 17:17:54','2018-02-09 17:17:54','88f88247-1353-44b4-8c1f-6b7368e785dc'),(94,1,'98e86f6bd6b0d068440483417a09e2a4beac2eefczozMjoiVVlzYkNsNElHbmtucmJScjNQV2llZmFwOGYwWmZEWn4iOw==','2018-02-09 21:04:13','2018-02-09 21:04:13','4c8e1676-2e81-410a-9c2c-24dda2c4ad63'),(96,1,'c25b626cee0e5e665372bd3acbc9b8263f7e56f7czozMjoiYmZmWG0zSmRCMkl0c2Z1cXNPMXlYcld5bm9JeVZZYjAiOw==','2018-02-10 01:12:33','2018-02-10 01:12:33','89f2fc11-a621-476b-881e-96900d2065d8'),(97,1,'f9f71511b7818736ceac06925dc7593543c5bd28czozMjoiWVZrM0llNVdKUVlwcHhoWnpPaElPOHZoemlzbzRpc0ciOw==','2018-02-10 13:32:43','2018-02-10 13:32:43','adf96379-a705-42be-b53c-9fe6bf4b7f37'),(98,1,'158321717b958c227c3d3e7fd31dc637c99f966cczozMjoib1djc2lSR0NqdzUzcnpoQk5CTTFYXzRjeU9pZ2NTaV8iOw==','2018-02-10 15:00:17','2018-02-10 15:00:17','e92e6d12-51a8-4ab2-91f3-a81f4e485bac'),(99,1,'c72c622cb2b764c2bab6e4fac3f91d388581a7eaczozMjoiblVuR09ydmtFeUFwS343QkMzZFZMSWpDOUR2aXVERk0iOw==','2018-02-10 17:26:15','2018-02-10 17:26:15','869a1990-53ae-4019-b3ca-eb68cccd977d'),(100,1,'4e83ed5aad92294326cdeb157a7d1a162f3a1c40czozMjoiZzJBV1E2ZXljWDNJelFUa1dkU0NKRkxrTFZzdDY0eDEiOw==','2018-02-11 14:46:53','2018-02-11 14:46:53','a1c6bd61-401e-4a8f-bba7-9056885e6b81'),(101,1,'a44340e16993a05e2a1f5efecc179642b189a6a0czozMjoiWWo3fnNrUnhCdWhrUDNMYXFkMWZUaGl6QmV+YU5CdjkiOw==','2018-02-12 19:26:48','2018-02-12 19:26:48','046f39b7-08a5-4ceb-b669-fa4962e35349'),(102,1,'f9762b8ebd70f17b1b0b51a9904e1aa7ad073c0bczozMjoiNEpGOXk5fnVsaUlrbWRERDlUTWdzZzBoTnlrWHV4bmIiOw==','2018-02-12 20:05:11','2018-02-12 20:05:11','978ee180-4635-44fd-9be6-00742425d541'),(103,1,'24e92408a2adfeb87aa87dd725e5301a844ba0c6czozMjoiQ2xEWDJPQTVrSVgwZGt+NURzTE9xRkNQd0NFN2F+MWIiOw==','2018-02-12 20:34:48','2018-02-12 20:34:48','2f279268-c308-4a59-83fc-2637da00b29c'),(106,1,'303dcdd4a97e47be05fc3ac95ec13da023be913bczozMjoiYWxVd1B+WjFBTW5heUlVU3NHTEczc2REYm0xYTVHN0QiOw==','2018-02-13 12:32:16','2018-02-13 12:32:16','f87ef796-028e-464c-b666-65bb1f3137ac'),(107,1,'de8b8adc651755facfea8dff1bb267c214a0b0b4czozMjoieXQ3bTUyXzljTElodmxSQVNPVEROSkM4SFNiSGdwS08iOw==','2018-02-13 23:33:45','2018-02-13 23:33:45','cde75f86-6621-4952-b6cf-2a1dea6e8fce'),(108,1,'7ba4b391a41d8a2293de59cef441134625fed80cczozMjoib0hBNHVxUWl1dmlBY3pJT3RfbXFyYnB0RFQyUFAxMGYiOw==','2018-02-13 23:45:45','2018-02-13 23:45:45','c5aa6ccd-b79e-444d-9c9e-ead9f0609c91'),(109,1,'ba5b0d0766cd5ffddbd33100cae195a598f60fd9czozMjoiS01HNkZ5YlZQcGRhYUptck9MdkxpOWE5NzRBd2Y5c2UiOw==','2018-02-14 13:39:01','2018-02-14 13:39:01','a8bd564c-edf1-4be2-9ce0-e21c0bd870b5'),(110,1,'8f4fbf7cbbf9a57131d4805dc853771479840222czozMjoiS35pTnFQWnZjeHpEZmhqZ1BFdk1GVG1JeUx+ZDEzbVkiOw==','2018-02-14 13:41:21','2018-02-14 13:41:21','3dc51a92-4423-4ac4-bf0b-7b2100047860'),(111,1,'404a996ff898ee2b28ccda7b7802a4ab60773e19czozMjoiZDJBejd2UGhuUVBFa29nRk9JQUwzTmZWamdUVHNsZW0iOw==','2018-02-16 02:11:35','2018-02-16 02:11:35','c828571c-63e8-48fd-a6ef-e713f086e5f3'),(112,1,'e1f226d96473983583ec277bc838505b022f66f8czozMjoidWFxajJ0fkRDNEhLaEpzMFRoWFE2MHJ1cFF+OTA3MUEiOw==','2018-02-18 13:35:04','2018-02-18 13:35:04','e2435fea-c6b3-48f3-973d-cdfe7382a0f5'),(113,1,'3f03768198211cfec0f74c97945794007450e0e1czozMjoiU2hMTzVuSWoydG4zd1FZX2U0eW96Qk9PT3hYQjVTRjQiOw==','2018-02-21 17:37:08','2018-02-21 17:37:08','f1adde49-32c1-4552-9c2d-3854bb1a3da4'),(114,1,'04466531a44a5cc98326ba633284d3c7eccf5606czozMjoiS185V2EwYmxoYWJBRFJmblJRS3hlWFJxdXN5aDA1YjUiOw==','2018-03-02 22:05:03','2018-03-02 22:05:03','1df86259-fbb4-45b5-835e-37567cb2570f'),(115,1,'0e07f8731095db2a075ce6f2cd84c11dc8d6e0e6czozMjoiTlVoc0N1VlhYbUpNbExLX2dBbGpLfnRPdW90VjB5d3MiOw==','2018-03-24 16:50:01','2018-03-24 16:50:01','07cf215b-8ef4-4619-b011-2b5e03d9b491'),(116,1,'f3db6697b6c952bfd901e7cdb77920ae2176053aczozMjoiSjdOa1MzWlFxZGF4dEtvTW9wN2w3NjVLa3BXaXo3aU4iOw==','2018-05-22 20:35:11','2018-05-22 20:35:11','76aecd23-5ce5-4d45-89ff-4c8f69d70580'),(117,1,'d0f56431b8db7228100f661df2003d349f5b2766czozMjoiajE3U0lwWjBONkVtT1J0Sl9RdGNteUNyanpsYVZxVEYiOw==','2018-06-04 19:51:37','2018-06-04 19:51:37','14abe311-fc52-46bb-9df6-3daaf849a9f9'),(118,1,'8b08051aab032acf3ba67f719710f99cce9bcdf1czozMjoiMGtvWkh5ZVNQT1VZZUZuS2tsOUhfY0VHUDlvMmlVeVUiOw==','2018-06-04 19:52:42','2018-06-04 19:52:42','203c9b9a-5a63-4c61-8e06-3c6f93a0e81f'),(119,1,'9b90b9b4e26e7790d98a812411d823fc54965f23czozMjoiflNGNEw2SGdHOWg1c1pHTVkyYTlMNExVSG1uajRwclAiOw==','2018-07-16 09:04:58','2018-07-16 09:04:58','10b161a8-de9b-4518-a8ed-d0a58e21408a'),(120,1,'fe0ec281acf5b5ed158f4dfcbd59b61fcd1035dcczozMjoiTDRiU2s2WXptb01laWV3cUJhRVNnbjJuc3dYZ0kwRzEiOw==','2018-07-16 11:10:46','2018-07-16 11:10:46','806ab544-a1e6-4b7e-a44c-3064067d00b4'),(121,1,'10d268d146a88d419d44ed2d45e779a065cd3dbeczozMjoiUjRDZ2dmSk5VVGl5UEx+fk1QX2lhQ3ZqVmQ0cUx1YTciOw==','2018-10-02 11:09:11','2018-10-02 11:09:11','efc79b26-9079-4bf9-b28f-aa8fde37da21'),(122,1,'f52c54286be2eca280f0d26ad074049e59160219czozMjoiX35EOTdWVnNyTkkzZWZRXzZOV0JVZHBYNDRXaHV0Q3kiOw==','2019-05-04 15:38:34','2019-05-04 15:38:34','0e749b83-fa6a-486a-be72-33cd24402fe1');
/*!40000 ALTER TABLE `craft_sessions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_shunnedmessages`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_shunnedmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`),
  CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_shunnedmessages`
--

LOCK TABLES `craft_shunnedmessages` WRITE;
/*!40000 ALTER TABLE `craft_shunnedmessages` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_shunnedmessages` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_sproutforms_entries`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sproutforms_entries` (
  `id` int(11) NOT NULL,
  `formId` int(11) NOT NULL,
  `statusId` int(11) DEFAULT NULL,
  `ipAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userAgent` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sproutforms_entries_formId_fk` (`formId`),
  KEY `craft_sproutforms_entries_statusId_fk` (`statusId`),
  CONSTRAINT `craft_sproutforms_entries_formId_fk` FOREIGN KEY (`formId`) REFERENCES `craft_sproutforms_forms` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_sproutforms_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_sproutforms_entries_statusId_fk` FOREIGN KEY (`statusId`) REFERENCES `craft_sproutforms_entrystatuses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sproutforms_entries`
--

LOCK TABLES `craft_sproutforms_entries` WRITE;
/*!40000 ALTER TABLE `craft_sproutforms_entries` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_sproutforms_entries` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_sproutforms_entrystatuses`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sproutforms_entrystatuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` enum('green','orange','red','blue','yellow','pink','purple','turquoise','light','grey','black') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'blue',
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sproutforms_entrystatuses`
--

LOCK TABLES `craft_sproutforms_entrystatuses` WRITE;
/*!40000 ALTER TABLE `craft_sproutforms_entrystatuses` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_sproutforms_entrystatuses` VALUES (1,'Unread','unread','blue',1,1,'2018-02-09 17:23:27','2018-02-09 17:23:27','f6b44c44-b7b4-4516-b4d3-ede6e7f018d4'),(2,'Read','read','grey',2,0,'2018-02-09 17:23:27','2018-02-09 17:23:27','cfc42ba2-8086-4876-bcfb-e33bff6ff437');
/*!40000 ALTER TABLE `craft_sproutforms_entrystatuses` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_sproutforms_formgroups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sproutforms_formgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sproutforms_formgroups_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sproutforms_formgroups`
--

LOCK TABLES `craft_sproutforms_formgroups` WRITE;
/*!40000 ALTER TABLE `craft_sproutforms_formgroups` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_sproutforms_formgroups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_sproutforms_forms`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sproutforms_forms` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `displaySectionTitles` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `redirectUri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submitAction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submitButtonText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `savePayload` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `notificationEnabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `notificationRecipients` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notificationSubject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notificationSenderName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notificationSenderEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notificationReplyToEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableTemplateOverrides` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `templateOverridesFolder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableFileAttachments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sproutforms_forms_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_sproutforms_forms_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_sproutforms_forms_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sproutforms_forms`
--

LOCK TABLES `craft_sproutforms_forms` WRITE;
/*!40000 ALTER TABLE `craft_sproutforms_forms` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_sproutforms_forms` VALUES (14,56,NULL,'Contact','contact',' – ',1,'sproutforms/examples/basic-fields?message=thank-you',NULL,'',0,0,'','','','','',0,NULL,0,'2018-02-09 00:00:00','2018-02-09 00:00:00','0');
/*!40000 ALTER TABLE `craft_sproutforms_forms` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_sproutformscontent_contact`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sproutformscontent_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_plainText` text COLLATE utf8_unicode_ci,
  `field_dropdown` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_number` int(10) unsigned DEFAULT '0',
  `field_radioButtons` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_checkboxes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_multiSelect` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_textarea` text COLLATE utf8_unicode_ci,
  `field_form_name` text COLLATE utf8_unicode_ci,
  `field_form_email` text COLLATE utf8_unicode_ci,
  `field_form_message` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sproutformscontent_contact_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_sproutformscontent_contact_locale_idx` (`locale`),
  CONSTRAINT `craft_sproutformscontent_contact_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_sproutformscontent_contact_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sproutformscontent_contact`
--

LOCK TABLES `craft_sproutformscontent_contact` WRITE;
/*!40000 ALTER TABLE `craft_sproutformscontent_contact` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_sproutformscontent_contact` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_structureelements`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_structureelements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  KEY `craft_structureelements_root_idx` (`root`),
  KEY `craft_structureelements_lft_idx` (`lft`),
  KEY `craft_structureelements_rgt_idx` (`rgt`),
  KEY `craft_structureelements_level_idx` (`level`),
  KEY `craft_structureelements_elementId_fk` (`elementId`),
  CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_structureelements`
--

LOCK TABLES `craft_structureelements` WRITE;
/*!40000 ALTER TABLE `craft_structureelements` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_structureelements` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_structures`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maxLevels` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_structures`
--

LOCK TABLES `craft_structures` WRITE;
/*!40000 ALTER TABLE `craft_structures` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_structures` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_supertableblocks`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_supertableblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_supertableblocks_ownerId_idx` (`ownerId`),
  KEY `craft_supertableblocks_fieldId_idx` (`fieldId`),
  KEY `craft_supertableblocks_typeId_idx` (`typeId`),
  KEY `craft_supertableblocks_sortOrder_idx` (`sortOrder`),
  KEY `craft_supertableblocks_ownerLocale_fk` (`ownerLocale`),
  CONSTRAINT `craft_supertableblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertableblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertableblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertableblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_supertableblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_supertableblocktypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_supertableblocks`
--

LOCK TABLES `craft_supertableblocks` WRITE;
/*!40000 ALTER TABLE `craft_supertableblocks` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_supertableblocks` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_supertableblocktypes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_supertableblocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_supertableblocktypes_fieldId_fk` (`fieldId`),
  KEY `craft_supertableblocktypes_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_supertableblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertableblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_supertableblocktypes`
--

LOCK TABLES `craft_supertableblocktypes` WRITE;
/*!40000 ALTER TABLE `craft_supertableblocktypes` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_supertableblocktypes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_supertablecontent_seodiv`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_supertablecontent_seodiv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_googleProfile` text COLLATE utf8_unicode_ci,
  `field_googlePage` text COLLATE utf8_unicode_ci,
  `field_twitterSite` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_supertablecontent_seodiv_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_supertablecontent_seodiv_locale_fk` (`locale`),
  CONSTRAINT `craft_supertablecontent_seodiv_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertablecontent_seodiv_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_supertablecontent_seodiv`
--

LOCK TABLES `craft_supertablecontent_seodiv` WRITE;
/*!40000 ALTER TABLE `craft_supertablecontent_seodiv` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_supertablecontent_seodiv` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_systemsettings`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_systemsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_systemsettings_category_unq_idx` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_systemsettings`
--

LOCK TABLES `craft_systemsettings` WRITE;
/*!40000 ALTER TABLE `craft_systemsettings` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_systemsettings` VALUES (1,'email','{\"protocol\":\"php\",\"emailAddress\":\"dev@mustasj.no\",\"senderName\":\"Standardcraft\"}','2014-10-08 10:49:50','2014-10-08 10:49:50','13f059b8-2b49-44e6-bb6e-28bad17289af');
/*!40000 ALTER TABLE `craft_systemsettings` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_taggroups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_taggroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_taggroups_name_unq_idx` (`name`),
  UNIQUE KEY `craft_taggroups_handle_unq_idx` (`handle`),
  KEY `craft_taggroups_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_taggroups`
--

LOCK TABLES `craft_taggroups` WRITE;
/*!40000 ALTER TABLE `craft_taggroups` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_taggroups` VALUES (1,'Standard','default',1,'2014-10-08 10:49:50','2014-10-08 10:49:50','b798f6f4-4b51-4b2a-a1e8-fe03d7e54640');
/*!40000 ALTER TABLE `craft_taggroups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_tags`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_tags_groupId_fk` (`groupId`),
  KEY `craft_tags_groupId_idx` (`groupId`),
  CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_tags`
--

LOCK TABLES `craft_tags` WRITE;
/*!40000 ALTER TABLE `craft_tags` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_tags` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_tasks`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `currentStep` int(11) unsigned DEFAULT NULL,
  `totalSteps` int(11) unsigned DEFAULT NULL,
  `status` enum('pending','error','running') COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` mediumtext COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_tasks_root_idx` (`root`),
  KEY `craft_tasks_lft_idx` (`lft`),
  KEY `craft_tasks_rgt_idx` (`rgt`),
  KEY `craft_tasks_level_idx` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_tasks`
--

LOCK TABLES `craft_tasks` WRITE;
/*!40000 ALTER TABLE `craft_tasks` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_tasks` VALUES (62,62,1,2,0,NULL,NULL,'pending','Imager_Jpegoptim',NULL,'{\"paths\":[\"\\/var\\/www\\/1\\/193376\\/www\\/dynamic\\/imager\\/hauntedmansions_no\\/dynamic\\/upload\\/bilder\\/bg_6b17b8473f658944c22929e7260159e4.jpg\",\"\\/var\\/www\\/1\\/193376\\/www\\/dynamic\\/imager\\/hauntedmansions_no\\/dynamic\\/upload\\/bilder\\/bg_1c6ef4f340216cf4f1183c997e8060de.jpg\",\"\\/var\\/www\\/1\\/193376\\/www\\/dynamic\\/imager\\/hauntedmansions_no\\/dynamic\\/upload\\/bilder\\/bg_e7340e7cec7a0bd740c97bb935cde89c.jpg\",\"E:\\/Git\\/hauntedmansions\\/www\\/dynamic\\/imager\\/hauntedmansions_local\\/dynamic\\/upload\\/bilder\\/bg_6b17b8473f658944c22929e7260159e4.jpg\",\"E:\\/Git\\/hauntedmansions\\/www\\/dynamic\\/imager\\/hauntedmansions_local\\/dynamic\\/upload\\/bilder\\/bg_1c6ef4f340216cf4f1183c997e8060de.jpg\",\"E:\\/Git\\/hauntedmansions\\/www\\/dynamic\\/imager\\/hauntedmansions_local\\/dynamic\\/upload\\/bilder\\/bg_e7340e7cec7a0bd740c97bb935cde89c.jpg\"]}','2019-05-09 14:29:07','2019-10-21 20:57:36','5d2fa5d4-0e8f-4287-baf5-7b590a491579');
/*!40000 ALTER TABLE `craft_tasks` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_templatecachecriteria`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_templatecachecriteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `criteria` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecachecriteria_cacheId_fk` (`cacheId`),
  KEY `craft_templatecachecriteria_type_idx` (`type`),
  CONSTRAINT `craft_templatecachecriteria_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_templatecachecriteria`
--

LOCK TABLES `craft_templatecachecriteria` WRITE;
/*!40000 ALTER TABLE `craft_templatecachecriteria` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_templatecachecriteria` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_templatecacheelements`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  KEY `craft_templatecacheelements_cacheId_fk` (`cacheId`),
  KEY `craft_templatecacheelements_elementId_fk` (`elementId`),
  CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_templatecacheelements`
--

LOCK TABLES `craft_templatecacheelements` WRITE;
/*!40000 ALTER TABLE `craft_templatecacheelements` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_templatecacheelements` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_templatecaches`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_templatecaches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecaches_locale_fk` (`locale`),
  KEY `craft_templatecaches_locale_cacheKey_path_expiryDate_idx` (`locale`,`cacheKey`,`path`,`expiryDate`),
  KEY `craft_templatecaches_expiryDate_cacheKey_locale_idx` (`expiryDate`,`cacheKey`,`locale`),
  KEY `craft_templatecaches_cacheKey_locale_expiryDate_idx` (`cacheKey`,`locale`,`expiryDate`),
  KEY `craft_templatecaches_cacheKey_locale_expiryDate_path_idx` (`cacheKey`,`locale`,`expiryDate`,`path`),
  CONSTRAINT `craft_templatecaches_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_templatecaches`
--

LOCK TABLES `craft_templatecaches` WRITE;
/*!40000 ALTER TABLE `craft_templatecaches` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_templatecaches` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_tokens`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) unsigned DEFAULT NULL,
  `usageCount` tinyint(3) unsigned DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  KEY `craft_tokens_expiryDate_idx` (`expiryDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_tokens`
--

LOCK TABLES `craft_tokens` WRITE;
/*!40000 ALTER TABLE `craft_tokens` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_tokens` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_usergroups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_usergroups_handle_unq_idx` (`handle`),
  UNIQUE KEY `craft_usergroups_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_usergroups`
--

LOCK TABLES `craft_usergroups` WRITE;
/*!40000 ALTER TABLE `craft_usergroups` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_usergroups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_usergroups_users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_usergroups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  KEY `craft_usergroups_users_userId_fk` (`userId`),
  CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_usergroups_users`
--

LOCK TABLES `craft_usergroups_users` WRITE;
/*!40000 ALTER TABLE `craft_usergroups_users` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_usergroups_users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_userpermissions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_userpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_userpermissions`
--

LOCK TABLES `craft_userpermissions` WRITE;
/*!40000 ALTER TABLE `craft_userpermissions` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_userpermissions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_userpermissions_usergroups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  KEY `craft_userpermissions_usergroups_groupId_fk` (`groupId`),
  CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_userpermissions_usergroups`
--

LOCK TABLES `craft_userpermissions_usergroups` WRITE;
/*!40000 ALTER TABLE `craft_userpermissions_usergroups` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_userpermissions_usergroups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_userpermissions_users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_userpermissions_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  KEY `craft_userpermissions_users_userId_fk` (`userId`),
  CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_userpermissions_users`
--

LOCK TABLES `craft_userpermissions_users` WRITE;
/*!40000 ALTER TABLE `craft_userpermissions_users` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `craft_userpermissions_users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferredLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weekStartDay` tinyint(4) NOT NULL DEFAULT '0',
  `admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `client` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL,
  `suspended` tinyint(1) NOT NULL,
  `pending` tinyint(1) NOT NULL,
  `archived` tinyint(1) NOT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIPAddress` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(4) unsigned DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `verificationCode` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_users_username_unq_idx` (`username`),
  UNIQUE KEY `craft_users_email_unq_idx` (`email`),
  KEY `craft_users_verificationCode_idx` (`verificationCode`),
  KEY `craft_users_uid_idx` (`uid`),
  KEY `craft_users_preferredLocale_fk` (`preferredLocale`),
  CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_users_preferredLocale_fk` FOREIGN KEY (`preferredLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_users`
--

LOCK TABLES `craft_users` WRITE;
/*!40000 ALTER TABLE `craft_users` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_users` VALUES (1,'admin','27624891_10159898121280203_6290961494434247971_o.jpg','Hello','Hauntedmansions','hello@hauntedmansions.no','$2y$13$aTfDdPlBCY1a8DstnhwwauXHVzmxasbY6tVWi/2TI9hmQG4eEtCqG',NULL,1,1,0,0,0,0,0,'2019-05-04 15:38:34','127.0.0.1','2019-10-21 21:03:08',1,'2019-10-21 21:03:08',NULL,'$2y$13$0w/6kr6y7qaGKid618vO9O9pc0wH4w9QnnD4Aud0/eQhjysDY4Gpi','2019-10-21 21:03:26',NULL,0,'2018-02-10 15:00:05','2014-10-08 10:49:48','2019-10-21 21:03:26','1381d236-993f-4cd9-81bf-e97ced9e7789');
/*!40000 ALTER TABLE `craft_users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `craft_widgets`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `colspan` tinyint(4) unsigned DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_widgets_userId_fk` (`userId`),
  CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_widgets`
--

LOCK TABLES `craft_widgets` WRITE;
/*!40000 ALTER TABLE `craft_widgets` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `craft_widgets` VALUES (1,1,'QuickPost',1,NULL,'{\"section\":\"2\"}',0,'2014-10-08 10:52:10','2016-01-19 15:34:32','262b9070-0bab-4f6d-b428-4eae106b5cd8'),(2,1,'RecentEntries',6,NULL,NULL,0,'2014-10-08 10:52:10','2018-02-13 23:54:18','a60fa7d3-9e67-413e-87ed-e32498493920'),(3,1,'GetHelp',7,NULL,NULL,0,'2014-10-08 10:52:10','2018-02-13 23:54:15','95bf3c4f-3127-4561-ac45-a6c63fb67036'),(4,1,'Updates',8,NULL,NULL,0,'2014-10-08 10:52:10','2018-02-13 23:54:24','e2d736fe-350e-4db5-b1fc-f8abde34e266'),(5,1,'Feed',9,NULL,'{\"url\":\"https:\\/\\/craftcms.com\\/news.rss\",\"title\":\"Craft News\"}',0,'2014-10-08 10:52:10','2018-02-13 23:54:11','f9d6ff3f-5305-48c7-9f64-734b67436d7b'),(6,1,'Maintenance',6,NULL,'{\"title\":\"Announcements\",\"limit\":\"5\"}',0,'2016-02-24 13:36:15','2016-02-24 13:36:47','a239f863-e7eb-4ccd-95fe-993ac358ae3c'),(7,1,'Maintenance',7,NULL,'{\"title\":\"Announcements\",\"limit\":\"\"}',0,'2016-02-26 13:54:07','2016-02-26 13:54:14','42e2fb09-1170-407a-b733-443fcfdcd7e1'),(8,1,'Analytics_Realtime',1,NULL,NULL,1,'2018-02-13 23:46:43','2018-02-18 13:35:25','7e661698-ae75-48d7-b5a9-e2f500f85d37'),(9,1,'Analytics_Report',3,NULL,'{\"chart\":\"area\",\"period\":\"month\",\"options\":{\"area\":{\"metric\":\"ga:users\"},\"counter\":{\"metric\":\"ga:users\"},\"pie\":{\"dimension\":\"ga:userType\",\"metric\":\"ga:users\"},\"table\":{\"dimension\":\"ga:continent\",\"metric\":\"ga:users\"},\"geo\":{\"dimension\":\"ga:continent\",\"metric\":\"ga:users\"}}}',1,'2018-02-13 23:47:09','2018-02-18 13:35:25','1a520624-bbf1-406c-9adf-20d7532f7071'),(10,1,'Analytics_Report',4,NULL,'{\"chart\":\"geo\",\"period\":\"month\",\"options\":{\"area\":{\"metric\":\"ga:users\"},\"counter\":{\"metric\":\"ga:users\"},\"pie\":{\"dimension\":\"ga:userType\",\"metric\":\"ga:users\"},\"table\":{\"dimension\":\"ga:userType\",\"metric\":\"ga:users\"},\"geo\":{\"dimension\":\"ga:country\",\"metric\":\"ga:users\"}}}',1,'2018-02-13 23:47:54','2018-02-18 13:35:25','7677fccd-7ae0-4fae-a4e5-7f71f8645f26'),(11,1,'Analytics_Report',5,NULL,'{\"chart\":\"pie\",\"period\":\"month\",\"options\":{\"area\":{\"metric\":\"ga:users\"},\"counter\":{\"metric\":\"ga:users\"},\"pie\":{\"dimension\":\"ga:userType\",\"metric\":\"ga:users\"},\"table\":{\"dimension\":\"ga:userType\",\"metric\":\"ga:users\"},\"geo\":{\"dimension\":\"ga:continent\",\"metric\":\"ga:users\"}}}',1,'2018-02-13 23:48:27','2018-02-18 13:35:25','c5051ca7-2de6-4aa9-9d70-589b03a56f20'),(12,1,'Analytics_Report',2,NULL,'{\"chart\":\"counter\",\"period\":\"month\",\"options\":{\"area\":{\"metric\":\"ga:users\"},\"counter\":{\"metric\":\"ga:users\"},\"pie\":{\"dimension\":\"ga:userType\",\"metric\":\"ga:users\"},\"table\":{\"dimension\":\"ga:userType\",\"metric\":\"ga:users\"},\"geo\":{\"dimension\":\"ga:continent\",\"metric\":\"ga:users\"}}}',0,'2018-02-13 23:49:31','2018-02-13 23:49:52','25b7d78e-68c7-4525-9dea-7c09337680f4'),(13,1,'Analytics_Report',2,NULL,'{\"chart\":\"counter\",\"period\":\"year\",\"options\":{\"area\":{\"metric\":\"ga:users\"},\"counter\":{\"metric\":\"ga:users\"},\"pie\":{\"dimension\":\"ga:userType\",\"metric\":\"ga:users\"},\"table\":{\"dimension\":\"ga:userType\",\"metric\":\"ga:users\"},\"geo\":{\"dimension\":\"ga:continent\",\"metric\":\"ga:users\"}}}',1,'2018-02-16 02:12:32','2018-05-22 20:35:40','4967ae67-b7d6-44a4-ad29-c23ae6127676');
/*!40000 ALTER TABLE `craft_widgets` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Mon, 21 Oct 2019 21:03:50 +0000
