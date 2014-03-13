-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: scotb
-- ------------------------------------------------------
-- Server version	5.5.35-0ubuntu0.12.04.2

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
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `access` text NOT NULL,
  `action` text NOT NULL,
  `page` text NOT NULL,
  `table` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access`
--

LOCK TABLES `access` WRITE;
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
INSERT INTO `access` VALUES (82,'Administrator','','access','admin',''),(83,'Administrator','','edit','news',''),(84,'Administrator','','deleteothers','news',''),(85,'Administrator','','submit','news',''),(86,'Administrator','','delete','news',''),(87,'Administrator','','editothers','news',''),(88,'Administrator','','admin','wiki',''),(89,'Administrator','','upload','files',''),(90,'Administrator','','addlink','files',''),(91,'Administrator','','orphanscan','files',''),(92,'Administrator','','purge','files',''),(93,'Administrator','','sort','files',''),(94,'Administrator','','edit','files',''),(95,'Administrator','','delete','files',''),(96,'Administrator','','xplorer','files',''),(97,'Administrator','','xplorershell','files',''),(98,'Administrator','','add','forums',''),(99,'Administrator','','edit','forums',''),(100,'Administrator','','delete','forums',''),(101,'Administrator','','moderate','forums',''),(102,'Administrator','','add','exams',''),(103,'Administrator','','delete','exams',''),(104,'Administrator','','deleteothers','exams',''),(105,'Administrator','','edit','exams',''),(106,'Administrator','','editothers','exams',''),(107,'Administrator','','create','comics',''),(108,'Administrator','','delete','comics',''),(109,'Administrator','','deleteothers','comics',''),(110,'Administrator','','edit','comics',''),(111,'Administrator','','editothers','comics',''),(112,'Administrator','','editothers','wiki',''),(113,'Administrator','','deleteothers','wiki',''),(114,'Administrator','','orphanscan','pictures',''),(115,'Administrator','','upload','pictures',''),(116,'Administrator','','edit','pictures',''),(117,'Administrator','','delete','pictures',''),(118,'Administrator','','sort','pictures',''),(119,'Administrator','','edit','slogan',''),(120,'Administrator','','edit','wiki',''),(121,'Administrator','','delete','wiki',''),(122,'Administrator','','admin','forums',''),(123,'Administrator','','upload','memes',''),(124,'Administrator','','edit','memes',''),(125,'Administrator','','delete','memes',''),(126,'Administrator','','edit','course',''),(127,'Administrator','','delete','course',''),(128,'Administrator','','create','exams',''),(129,'Administrator','','viewresults','exams',''),(130,'Administrator','','edit','exam_questions',''),(131,'Administrator','','categories','admin',''),(132,'Administrator','','submit','videos',''),(133,'Administrator','','edit','videos',''),(134,'Administrator','','editothers','videos',''),(135,'Administrator','','delete','videos',''),(136,'Administrator','','deleteothers','videos',''),(137,'Administrator','','add','todo_list',''),(138,'Administrator','','view','debug',''),(139,'Administrator','','edit','linkbin',''),(140,'Administrator','','add','linkbin',''),(141,'Administrator','','delete','linkbin','');
/*!40000 ALTER TABLE `access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `access_methods`
--

DROP TABLE IF EXISTS `access_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page` text COLLATE utf8_unicode_ci NOT NULL,
  `action` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_methods`
--

LOCK TABLES `access_methods` WRITE;
/*!40000 ALTER TABLE `access_methods` DISABLE KEYS */;
INSERT INTO `access_methods` VALUES (1,'admin','access'),(5,'news','edit'),(11,'news','deleteothers'),(7,'news','submit'),(8,'news','delete'),(10,'news','editothers'),(12,'wiki','admin'),(13,'files','upload'),(14,'files','addlink'),(15,'files','orphanscan'),(16,'files','purge'),(17,'files','sort'),(18,'files','edit'),(19,'files','delete'),(20,'files','xplorer'),(21,'files','xplorershell'),(22,'forums','add'),(23,'forums','edit'),(24,'forums','delete'),(25,'forums','moderate'),(26,'exams','add'),(27,'exams','delete'),(28,'exams','deleteothers'),(29,'exams','edit'),(30,'exams','editothers'),(31,'comics','create'),(32,'comics','delete'),(33,'comics','deleteothers'),(34,'comics','edit'),(35,'comics','editothers'),(36,'wiki','editothers'),(37,'wiki','deleteothers'),(38,'pictures','orphanscan'),(39,'pictures','upload'),(40,'pictures','edit'),(41,'pictures','delete'),(42,'pictures','sort'),(43,'slogan','edit'),(44,'wiki','edit'),(45,'wiki','delete'),(46,'forums','admin'),(47,'memes','upload'),(48,'memes','edit'),(49,'memes','delete'),(50,'course','edit'),(51,'course','delete'),(52,'exams','create'),(53,'exams','viewresults'),(54,'exam_questions','edit'),(55,'admin','categories'),(56,'videos','submit'),(57,'videos','edit'),(58,'videos','editothers'),(59,'videos','delete'),(60,'videos','deleteothers'),(61,'todo_list','add'),(62,'debug','view'),(63,'linkbin','edit'),(64,'linkbin','add'),(65,'linkbin','delete');
/*!40000 ALTER TABLE `access_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `category` text NOT NULL,
  `icon` text NOT NULL,
  `url` text NOT NULL,
  `target` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_skyscrapers`
--

DROP TABLE IF EXISTS `ads_skyscrapers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads_skyscrapers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `type` text NOT NULL,
  `html` text NOT NULL,
  `paid` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_skyscrapers`
--

LOCK TABLES `ads_skyscrapers` WRITE;
/*!40000 ALTER TABLE `ads_skyscrapers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_skyscrapers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arrangement`
--

DROP TABLE IF EXISTS `arrangement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arrangement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` text NOT NULL,
  `mini` text NOT NULL,
  `num` int(11) NOT NULL,
  `sequence` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arrangement`
--

LOCK TABLES `arrangement` WRITE;
/*!40000 ALTER TABLE `arrangement` DISABLE KEYS */;
INSERT INTO `arrangement` VALUES (18,'middle','news_blog_style',5,1),(19,'left','mini_latest_forum_threads',5,1),(20,'left','mini_files',5,2);
/*!40000 ALTER TABLE `arrangement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banned`
--

DROP TABLE IF EXISTS `banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banned` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `domain` text NOT NULL,
  `link` text NOT NULL,
  `ip` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banned`
--

LOCK TABLES `banned` WRITE;
/*!40000 ALTER TABLE `banned` DISABLE KEYS */;
INSERT INTO `banned` VALUES (1,'','http://scotff','','');
/*!40000 ALTER TABLE `banned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `image` text NOT NULL,
  `worksafe` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'!!!TEMP!!!','0',''),(2,'News','0',''),(3,'Videos','0',''),(4,'Interesting','0',''),(5,'Funny','0',''),(6,'Image','0',''),(7,'Social','0',''),(8,'Random','0',''),(9,'Music','0',''),(10,'unsorted','',''),(11,'Cyber Transport','',''),(12,'Safety','','');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `r` int(11) NOT NULL,
  `g` int(11) NOT NULL,
  `b` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'black',0,0,0),(2,'white',255,255,255),(3,'red',255,0,0),(4,'blue',0,0,255),(5,'green',0,255,0),(6,'yellow',255,255,0),(7,'purple',255,0,255);
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comics`
--

DROP TABLE IF EXISTS `comics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `title` text NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` text NOT NULL,
  `author` text NOT NULL,
  `volume` text NOT NULL,
  `issue` text NOT NULL,
  `rating` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comics`
--

LOCK TABLES `comics` WRITE;
/*!40000 ALTER TABLE `comics` DISABLE KEYS */;
/*!40000 ALTER TABLE `comics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comics_page_templates`
--

DROP TABLE IF EXISTS `comics_page_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comics_page_templates` (
  `name` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `panels` text NOT NULL,
  `panel1_x` text NOT NULL,
  `panel1_y` text NOT NULL,
  `panel2_x` text NOT NULL,
  `panel2_y` text NOT NULL,
  `panel3_x` text NOT NULL,
  `panel3_y` text NOT NULL,
  `panel4_x` text NOT NULL,
  `panel4_y` text NOT NULL,
  `panel5_x` text NOT NULL,
  `panel5_y` text NOT NULL,
  `panel6_x` text NOT NULL,
  `panel6_y` text NOT NULL,
  `panel7_x` text NOT NULL,
  `panel7_y` text NOT NULL,
  `panel8_x` text NOT NULL,
  `panel8_y` text NOT NULL,
  `panel1_l` text NOT NULL,
  `panel2_l` text NOT NULL,
  `panel3_l` text NOT NULL,
  `panel4_l` text NOT NULL,
  `panel5_l` text NOT NULL,
  `panel6_l` text NOT NULL,
  `panel7_l` text NOT NULL,
  `panel8_l` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comics_page_templates`
--

LOCK TABLES `comics_page_templates` WRITE;
/*!40000 ALTER TABLE `comics_page_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `comics_page_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comics_pages`
--

DROP TABLE IF EXISTS `comics_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comics_pages` (
  `name` text NOT NULL,
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL DEFAULT '0',
  `page` int(11) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `panel1` text NOT NULL,
  `panel2` text NOT NULL,
  `panel3` text NOT NULL,
  `panel4` text NOT NULL,
  `panel5` text NOT NULL,
  `panel6` text NOT NULL,
  `panel7` text NOT NULL,
  `panel8` text NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comics_pages`
--

LOCK TABLES `comics_pages` WRITE;
/*!40000 ALTER TABLE `comics_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `comics_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `name` text NOT NULL,
  `type` text NOT NULL,
  `nid` int(11) NOT NULL DEFAULT '0',
  `poster` int(11) NOT NULL DEFAULT '0',
  `header` text NOT NULL,
  `message` text NOT NULL,
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `rating` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counters`
--

DROP TABLE IF EXISTS `counters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page` text COLLATE utf8_unicode_ci NOT NULL,
  `user` text COLLATE utf8_unicode_ci NOT NULL,
  `user_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_ip` text COLLATE utf8_unicode_ci NOT NULL,
  `hits_raw` int(11) NOT NULL,
  `hits_unique` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counters`
--

LOCK TABLES `counters` WRITE;
/*!40000 ALTER TABLE `counters` DISABLE KEYS */;
INSERT INTO `counters` VALUES (1,'http://scotb/','Admin','2014-03-10 13:59:22','127.0.0.1',103,1),(2,'http://scotb/admin/adm.php','Admin','2014-03-10 13:50:17','127.0.0.1',264,1),(3,'http://scotb/admin/adm.php?action=edit_site_vars','Admin','2014-03-10 12:39:07','127.0.0.1',51,1),(4,'http://scotb/admin/adm.php?action=network_query_tool','Admin','2014-02-19 20:01:42','127.0.0.1',1,1),(5,'http://scotb/admin/adm.php?action=lib_wab_wab','Admin','2014-02-19 20:01:53','127.0.0.1',1,1),(6,'http://scotb/modules/wab/wab.php?runapp=1','Admin','2014-02-19 20:01:54','127.0.0.1',1,1),(7,'http://scotb/admin/adm.php?action=forum_admin','Admin','2014-03-05 19:56:27','127.0.0.1',4,1),(8,'http://scotb/modules/forums/forums.php?forum_list=yes','Admin','2014-03-10 13:59:39','127.0.0.1',24,1),(9,'http://scotb/admin/adm.php?action=db_query','Admin','2014-03-10 11:58:45','127.0.0.1',5,1),(10,'http://scotb/admin/adm.php?action=db_query&query=SELECT+name%2Cemail%2Cdonated+FROM+users','Admin','2014-02-24 13:25:17','127.0.0.1',2,1),(11,'http://scotb/admin/adm.php?action=db_query&query=SELECT+%2A+FROM+users','Admin','2014-02-19 20:02:31','127.0.0.1',1,1),(12,'http://scotb/admin/adm.php?action=db_query&query=SHOW+FULL+COLUMNS+FROM+users','Admin','2014-03-10 11:59:09','127.0.0.1',3,1),(13,'http://scotb/admin/adm.php?action=menu_topedit','Admin','2014-03-10 13:06:21','127.0.0.1',17,1),(14,'http://scotb/modules/wiki/rfswiki.php','Admin','2014-03-10 13:06:14','127.0.0.1',75,1),(15,'http://scotb/modules/wiki/rfswiki.php?action=edit&name=Home','Admin','2014-03-10 13:06:06','127.0.0.1',4,1),(16,'http://scotb/admin/adm.php?action=access_groups','Admin','2014-03-10 13:09:34','127.0.0.1',23,1),(17,'http://scotb/admin/adm.php?action=f_access_group_edit&axnm=Administrator','Admin','2014-03-10 13:09:36','127.0.0.1',26,1),(18,'http://scotb/admin/adm.php?action=f_access_group_del_user&axnm=Administrator&user=Your_User_Name','Admin','2014-02-19 21:10:07','127.0.0.1',1,1),(19,'http://localhost/','','2014-03-12 11:48:57','127.0.0.1',10,1),(20,'http://scotb/login.php','Admin','2014-03-10 11:58:35','127.0.0.1',8,1),(21,'http://scotb/admin/adm.php?theme=plain','Admin','2014-02-24 13:10:55','127.0.0.1',1,1),(22,'http://scotb/admin/adm.php?theme=plain2','Admin','2014-02-24 13:11:03','127.0.0.1',1,1),(23,'http://scotb/modules/comics/comics.php','Admin','2014-03-10 13:06:16','127.0.0.1',17,1),(24,'http://scotb/modules/files/files.php','Admin','2014-03-10 13:13:05','127.0.0.1',36,1),(25,'http://scotb/modules/pictures/pics.php','Admin','2014-02-25 15:03:03','127.0.0.1',9,1),(26,'http://scotb/modules/pictures/pics.php?action=showmemes','Admin','2014-02-24 13:11:21','127.0.0.1',1,1),(27,'http://scotb/modules/memes/memes.php','Admin','2014-02-24 13:11:21','127.0.0.1',1,1),(28,'http://scotb/modules/videos/videos.php','Admin','2014-03-10 13:59:33','127.0.0.1',140,1),(29,'http://scotb/modules/video_wall/v.php','Admin','2014-02-24 13:39:13','127.0.0.1',3,1),(30,'http://scotb/modules/profile/profile.php','Admin','2014-03-10 13:12:41','127.0.0.1',30,1),(31,'http://scotb/admin/adm.php?action=f_rfs_db_element_del1&label=&table=site_vars&id=16&rtnpage=http://scotb/admin/adm.php&rtnact=edit_site_vars','Admin','2014-02-24 13:11:57','127.0.0.1',1,1),(32,'http://scotb/admin/adm.php?action=f_rfs_db_element_del2','Admin','2014-02-25 15:03:49','127.0.0.1',15,1),(33,'http://scotb/admin/adm.php?action=f_rfs_db_element_del1&label=&table=site_vars&id=7&rtnpage=http://scotb/admin/adm.php&rtnact=edit_site_vars','Admin','2014-02-24 13:12:05','127.0.0.1',1,1),(34,'http://scotb/admin/adm.php?action=f_rfs_db_element_del1&label=&table=site_vars&id=18&rtnpage=http://scotb/admin/adm.php&rtnact=edit_site_vars','Admin','2014-02-24 13:12:10','127.0.0.1',1,1),(35,'http://scotb/admin/adm.php?action=f_rfs_db_element_del1&label=&table=site_vars&id=8&rtnpage=http://scotb/admin/adm.php&rtnact=edit_site_vars','Admin','2014-02-24 13:12:27','127.0.0.1',1,1),(36,'http://scotb/admin/adm.php?action=f_rfs_db_element_del1&label=&table=site_vars&id=17&rtnpage=http://scotb/admin/adm.php&rtnact=edit_site_vars','Admin','2014-02-24 13:12:40','127.0.0.1',1,1),(37,'http://scotb/admin/adm.php?action=f_rfs_db_element_del1&label=&table=site_vars&id=9&rtnpage=http://scotb/admin/adm.php&rtnact=edit_site_vars','Admin','2014-02-24 13:13:08','127.0.0.1',1,1),(38,'http://scotb/admin/adm.php?action=f_rfs_db_element_del1&label=&table=site_vars&id=6&rtnpage=http://scotb/admin/adm.php&rtnact=edit_site_vars','Admin','2014-02-24 13:13:29','127.0.0.1',1,1),(39,'http://scotb/admin/adm.php?action=f_rfs_db_element_del1&label=&table=site_vars&id=11&rtnpage=http://scotb/admin/adm.php&rtnact=edit_site_vars','Admin','2014-02-24 13:13:36','127.0.0.1',1,1),(40,'http://scotb/admin/adm.php?action=f_rfs_db_element_del1&label=&table=site_vars&id=13&rtnpage=http://scotb/admin/adm.php&rtnact=edit_site_vars','Admin','2014-02-24 13:13:43','127.0.0.1',1,1),(41,'http://scotb/admin/adm.php?action=f_rfs_db_element_del1&label=&table=site_vars&id=10&rtnpage=http://scotb/admin/adm.php&rtnact=edit_site_vars','Admin','2014-02-24 13:13:49','127.0.0.1',1,1),(42,'http://scotb/admin/adm.php?action=f_rfs_db_element_del1&label=&table=site_vars&id=12&rtnpage=http://scotb/admin/adm.php&rtnact=edit_site_vars','Admin','2014-02-24 13:13:57','127.0.0.1',1,1),(43,'http://scotb/admin/adm.php?action=f_addsitevar&id=2&name=DEFAULT_THEME&type=theme&val=plain2&desc=Default+Theme%0D%0A','Admin','2014-02-24 13:14:28','127.0.0.1',1,1),(44,'http://scotb/admin/adm.php?action=f_addsitevar&id=2&name=FORCE_THEME&type=bool&val=false&desc=','Admin','2014-02-24 13:15:02','127.0.0.1',1,1),(45,'http://scotb/admin/adm.php?action=f_rfs_db_element_del1&label=&table=site_vars&id=14&rtnpage=http://scotb/admin/adm.php&rtnact=edit_site_vars','Admin','2014-02-24 13:15:28','127.0.0.1',1,1),(46,'http://scotb/admin/adm.php?action=f_rfs_db_element_ed1&label=&table=site_vars&id=19&rtnpage=http://scotb/admin/adm.php&rtnact=edit_site_vars','Admin','2014-02-24 13:15:39','127.0.0.1',1,1),(47,'http://scotb/admin/adm.php?action=f_rfs_db_element_del1&label=&table=site_vars&id=5&rtnpage=http://scotb/admin/adm.php&rtnact=edit_site_vars','Admin','2014-02-24 13:15:50','127.0.0.1',1,1),(48,'http://scotb/admin/adm.php?action=f_rfs_db_element_del1&label=&table=site_vars&id=4&rtnpage=http://scotb/admin/adm.php&rtnact=edit_site_vars','Admin','2014-02-24 13:15:54','127.0.0.1',1,1),(49,'http://scotb/admin/adm.php?textbuttons=true','Admin','2014-02-25 14:16:54','127.0.0.1',2,1),(50,'http://scotb/admin/adm.php?textbuttons=false','Admin','2014-02-24 13:25:56','127.0.0.1',1,1),(51,'http://scotb/admin/adm.php?action=user_edit','Admin','2014-02-24 13:26:16','127.0.0.1',1,1),(52,'http://scotb/admin/adm.php?action=phpmyadmin_out','parson','2014-02-24 13:48:43','127.0.0.1',2,1),(59,'http://scotb/?theme=black','Admin','2014-02-25 14:53:03','127.0.0.1',2,1),(53,'http://scotb/admin/adm.php?action=f_addsitevar&id=2&name=SLOGAN&type=text&val=TEST+RFSCMS&desc=','Admin','2014-02-24 13:33:48','127.0.0.1',1,1),(57,'http://scotb/admin/adm.php?action=f_addsitevar&id=2&name=CHECK_UPDATE&type=bool&val=on&desc=Check+for+updates','Admin','2014-02-25 14:17:50','127.0.0.1',1,1),(54,'http://scotb/modules/comics/comics.php?action=viewcomic&id=','','2014-02-24 13:55:09','127.0.0.1',1,1),(55,'http://scotb/modules/news/news.php?action=ed&nid=','Admin','2014-02-25 14:41:44','127.0.0.1',2,1),(56,'http://scotb/admin/adm.php?action=update','Admin','2014-02-25 14:14:43','127.0.0.1',1,1),(58,'http://scotb/admin/adm.php?action=admin_menu_edit','Admin','2014-02-25 14:18:40','127.0.0.1',1,1),(60,'http://scotb/?theme=blue','Admin','2014-02-25 14:52:56','127.0.0.1',2,1),(61,'http://scotb/?theme=c64','Admin','2014-02-25 14:52:50','127.0.0.1',2,1),(62,'http://scotb/?theme=coffee','Admin','2014-02-25 14:52:45','127.0.0.1',2,1),(63,'http://scotb/?theme=cream','Admin','2014-02-25 14:52:41','127.0.0.1',2,1),(64,'http://scotb/?theme=default','Admin','2014-02-25 14:52:35','127.0.0.1',2,1),(65,'http://scotb/?theme=defcon1','Admin','2014-02-25 14:52:31','127.0.0.1',2,1),(66,'http://scotb/?theme=php','Admin','2014-02-25 14:52:13','127.0.0.1',3,1),(67,'http://scotb/?theme=seth_coder','Admin','2014-02-25 14:45:05','127.0.0.1',1,1),(68,'http://scotb/?theme=white','Admin','2014-02-25 14:45:09','127.0.0.1',1,1),(69,'http://scotb/modules/news/news.php?showform=yes','Admin','2014-02-25 15:04:15','127.0.0.1',3,1),(70,'http://scotb/modules/news/news.php','Admin','2014-03-10 13:59:21','127.0.0.1',8,1),(71,'http://scotb/modules/news/news.php?action=ed&nid=1','Admin','2014-03-10 13:59:15','127.0.0.1',2,1),(72,'http://scotb/modules/news/news.php?action=view&nid=1','Admin','2014-03-10 13:09:08','127.0.0.1',2,1),(73,'http://scotb/admin/adm.php?theme=zen','Admin','2014-03-05 19:59:15','127.0.0.1',3,1),(74,'http://scotb/?theme=rfs_wow','Admin','2014-02-25 14:50:33','127.0.0.1',1,1),(75,'http://scotb/modules/wiki/rfswiki.php?theme=plain3','Admin','2014-02-25 14:50:41','127.0.0.1',1,1),(76,'http://scotb/modules/wiki/rfswiki.php?theme=plain2','Admin','2014-02-25 14:50:45','127.0.0.1',1,1),(77,'http://scotb/?theme=plain','Admin','2014-02-25 14:50:53','127.0.0.1',1,1),(78,'http://scotb/?theme=pink','Admin','2014-02-25 14:51:11','127.0.0.1',1,1),(79,'http://scotb/admin/adm.php?theme=orange','Admin','2014-03-05 19:59:05','127.0.0.1',2,1),(80,'http://scotb/?theme=hive','Admin','2014-02-25 14:52:09','127.0.0.1',1,1),(81,'http://scotb/?theme=green','Admin','2014-02-25 14:52:19','127.0.0.1',1,1),(82,'http://scotb/?theme=fluff','Admin','2014-02-25 14:52:23','127.0.0.1',1,1),(83,'http://scotb/?theme=defective','Admin','2014-02-25 14:52:26','127.0.0.1',1,1),(84,'http://scotb/?theme=area57','Admin','2014-02-25 14:53:06','127.0.0.1',1,1),(85,'http://scotb/?theme=area56','Admin','2014-02-25 14:53:21','127.0.0.1',2,1),(86,'http://scotb/?theme=3dnetlabs','Admin','2014-02-25 14:53:13','127.0.0.1',1,1),(87,'http://scotb/modules/profile/profile.php?theme=php','Admin','2014-02-25 14:53:33','127.0.0.1',1,1),(88,'http://scotb/admin/adm.php?action=arrange','Admin','2014-02-25 15:05:03','127.0.0.1',3,1),(89,'http://scotb/admin/adm.php?action=f_arrange_delete&location=middle&arid=17','Admin','2014-02-25 15:01:06','127.0.0.1',1,1),(90,'http://scotb/admin/adm.php?theme=3dnetlabs','Admin','2014-02-25 15:01:50','127.0.0.1',1,1),(91,'http://scotb/admin/adm.php?theme=area56','Admin','2014-02-25 15:01:55','127.0.0.1',1,1),(92,'http://scotb/modules/forums/forums.php','Admin','2014-03-10 13:59:44','127.0.0.1',10,1),(93,'http://scotb/modules/forums/forums.php?forum_which=2&action=forum_showposts','Admin','2014-03-10 13:12:37','127.0.0.1',10,1),(94,'http://scotb/modules/forums/forums.php?action=start_thread&forum_which=2','Admin','2014-02-25 15:02:38','127.0.0.1',1,1),(95,'http://scotb/modules/forums/forums.php?action=get_thread&thread=1&forum_which=2','Admin','2014-03-10 13:12:28','127.0.0.1',8,1),(96,'http://scotb/admin/adm.php?action=f_addsitevar&id=2&name=CHECK_UPDATES&type=bool&val=on&desc=','Admin','2014-02-25 15:03:29','127.0.0.1',1,1),(97,'http://scotb/admin/adm.php?action=f_rfs_db_element_del1&label=&table=site_vars&id=23&rtnpage=http://scotb/admin/adm.php&rtnact=edit_site_vars','Admin','2014-02-25 15:03:48','127.0.0.1',1,1),(98,'http://scotb/admin/adm.php?debug=on','Admin','2014-02-25 15:15:13','127.0.0.1',1,1),(99,'http://scotb/admin/adm.php?debug=off','Admin','2014-02-25 15:17:06','127.0.0.1',1,1),(100,'http://scotb/admin/adm.php?theme=black','Admin','2014-03-05 19:55:57','127.0.0.1',1,1),(101,'http://scotb/admin/adm.php?theme=blue','Admin','2014-03-05 19:56:01','127.0.0.1',1,1),(102,'http://scotb/modules/news/news.php?action=ed&nid=3','Admin','2014-03-05 19:56:14','127.0.0.1',1,1),(103,'http://scotb/modules/forums/forums.php?action=forum_showposts&forum_which=2','Admin','2014-03-05 19:58:23','127.0.0.1',2,1),(104,'http://scotb/modules/pictures/pictures.php','Admin','2014-03-10 13:13:07','127.0.0.1',25,1),(105,'http://scotb/admin/adm.php?action=f_addsitevar&id=2&name=TEXT_BUTTONS&type=bool&val=off&desc=','Admin','2014-03-05 19:57:54','127.0.0.1',1,1),(106,'http://scotb/admin/adm.php?theme=c64','Admin','2014-03-05 19:58:35','127.0.0.1',1,1),(107,'http://scotb/admin/adm.php?theme=coffee','Admin','2014-03-05 19:58:42','127.0.0.1',1,1),(108,'http://scotb/admin/adm.php?theme=cream','Admin','2014-03-05 19:58:46','127.0.0.1',1,1),(109,'http://scotb/admin/adm.php?theme=default','Admin','2014-03-05 19:58:50','127.0.0.1',1,1),(110,'http://scotb/admin/adm.php?theme=green','Admin','2014-03-05 19:59:00','127.0.0.1',1,1),(111,'http://scotb/admin/adm.php?theme=white','Admin','2014-03-05 19:59:11','127.0.0.1',1,1),(112,'http://scotb/admin/adm.php?action=paypal_config','Admin','2014-03-10 13:12:57','127.0.0.1',24,1),(113,'http://scotb/admin/adm.php?ppemailnotice=&ppemail=&ppbutton1=&ppbutton2=','Admin','2014-03-10 12:18:09','127.0.0.1',2,1),(114,'http://scotb/admin/adm.php?action=paypal_config_go','Admin','2014-03-10 12:19:02','127.0.0.1',2,1),(115,'http://scotb/admin/adm.php?action=f_paypal_config_go','Admin','2014-03-10 12:39:01','127.0.0.1',4,1),(116,'http://scotb/admin/adm.php?action=edit_site_vars&theme=coffee','Admin','2014-03-10 12:32:49','127.0.0.1',2,1),(117,'http://scotb/admin/adm.php?action=ban_management','Admin','2014-03-10 13:05:35','127.0.0.1',6,1),(118,'http://scotb/admin/adm.php?action=log_view','Admin','2014-03-10 12:59:24','127.0.0.1',18,1),(119,'http://scotb/admin/adm.php?action=f_bandomain&domain=http://scotff','Admin','2014-03-10 12:39:59','127.0.0.1',2,1),(120,'http://scotb/admin/adm.php?action=f_bandomain_go','Admin','2014-03-10 12:40:03','127.0.0.1',2,1),(121,'http://scotb/admin/adm.php?action=log_rotate','Admin','2014-03-10 12:59:09','127.0.0.1',6,1),(122,'http://scotb/admin/adm.php?action=counters','Admin','2014-03-10 13:13:01','127.0.0.1',8,1),(123,'http://scotb/modules/files/files.php?editmode=on&','Admin','2014-03-10 13:06:53','127.0.0.1',2,1),(124,'http://scotb/modules/files/files.php?action=upload','Admin','2014-03-10 13:06:55','127.0.0.1',2,1),(125,'http://scotb/modules/files/files.php?action=get_file&id=1','Admin','2014-03-10 13:07:59','127.0.0.1',6,1),(126,'http://scotb/modules/files/files.php?editmode=off&','Admin','2014-03-10 13:07:43','127.0.0.1',2,1),(127,'http://scotb/modules/files/files.php?action=get_file&id=1&get_file_extended=yes','Admin','2014-03-10 13:07:48','127.0.0.1',2,1),(128,'http://scotb/modules/pictures/pictures.php?action=uploadpic','Admin','2014-03-10 13:08:35','127.0.0.1',4,1),(129,'http://scotb/modules/pictures/pictures.php?action=addorphans','Admin','2014-03-10 13:08:30','127.0.0.1',2,1),(130,'http://scotb/modules/pictures/pictures.php?action=view&id=1','Admin','2014-03-10 13:08:55','127.0.0.1',2,1),(131,'http://scotb/modules/videos/videos.php?action=submitvid','Admin','2014-03-10 13:58:53','127.0.0.1',72,1),(132,'http://scotb/modules/videos/videos.php?action=random','Admin','2014-03-10 13:12:19','127.0.0.1',2,1),(133,'http://scotb/modules/videos/videos.php?action=viewcat&cat=3','Admin','2014-03-10 13:14:25','127.0.0.1',2,1),(134,'http://scotb/modules/videos/videos.php?action=view&id=1697','Admin','2014-03-10 13:16:01','127.0.0.1',8,1),(135,'http://scotb/modules/videos/videos.php?action=modifyvideo&id=1697','Admin','2014-03-10 13:15:40','127.0.0.1',4,1),(136,'http://scotb/admin/adm.php?action=edit_categories','Admin','2014-03-10 13:50:12','127.0.0.1',4,1),(137,'http://scotb/modules/videos/videos.php?action=viewcat&cat=11','Admin','2014-03-10 13:44:53','127.0.0.1',6,1),(138,'http://scotb/modules/videos/videos.php?action=view&id=1698','Admin','2014-03-10 13:17:22','127.0.0.1',4,1),(139,'http://scotb/modules/videos/videos.php?action=view&id=1700','Admin','2014-03-10 13:18:36','127.0.0.1',2,1),(140,'http://scotb/modules/videos/videos.php?action=view&id=1703','Admin','2014-03-10 13:20:28','127.0.0.1',2,1),(141,'http://scotb/modules/videos/videos.php?action=modifyvideo&id=','Admin','2014-03-10 13:20:58','127.0.0.1',2,1),(142,'http://scotb/modules/videos/videos.php?action=view&id=1704','Admin','2014-03-10 13:21:06','127.0.0.1',2,1),(143,'http://scotb/modules/videos/videos.php?action=view&id=1701','Admin','2014-03-10 13:23:30','127.0.0.1',2,1),(144,'http://scotb/modules/videos/videos.php?action=modifyvideo&id=1729','Admin','2014-03-10 13:50:22','127.0.0.1',2,1),(145,'http://scotb/modules/videos/videos.php?action=view&id=1728','Admin','2014-03-10 13:50:32','127.0.0.1',2,1),(146,'http://scotb/modules/videos/videos.php?action=modifyvideo&id=1728','Admin','2014-03-10 13:50:34','127.0.0.1',2,1),(147,'http://scotb/modules/videos/videos.php?action=view&id=1726','Admin','2014-03-10 13:55:25','127.0.0.1',6,1),(148,'http://scotb/modules/videos/videos.php?action=modifyvideo&id=1726','Admin','2014-03-10 13:50:43','127.0.0.1',2,1),(149,'http://scotb/modules/videos/videos.php?action=view&id=1727','Admin','2014-03-10 13:50:48','127.0.0.1',2,1),(150,'http://scotb/modules/videos/videos.php?action=modifyvideo&id=1727','Admin','2014-03-10 13:50:49','127.0.0.1',2,1),(151,'http://scotb/modules/videos/videos.php?action=view&id=1729','Admin','2014-03-10 13:52:26','127.0.0.1',2,1),(152,'http://scotb/modules/news/news.php?action=de&nid=3','Admin','2014-03-10 13:59:00','127.0.0.1',1,1),(153,'http://scotb/modules/news/news.php?action=dego&nid=3&submit=Yes','Admin','2014-03-10 13:59:03','127.0.0.1',1,1),(154,'http://scotb/modules/news/news.php?action=de&nid=2','Admin','2014-03-10 13:59:10','127.0.0.1',1,1),(155,'http://scotb/modules/news/news.php?action=dego&nid=2&submit=Yes','Admin','2014-03-10 13:59:12','127.0.0.1',1,1),(156,'http://scotb/modules/forums/forums.php?forum_list=no&action=get_thread&thread=1&forum_which=2','Admin','2014-03-10 13:59:42','127.0.0.1',2,1),(157,'http://','','2014-03-12 11:47:51','',1,1);
/*!40000 ALTER TABLE `counters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_component`
--

DROP TABLE IF EXISTS `course_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_component` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `parent` text NOT NULL,
  `sequence` text NOT NULL,
  `type` text NOT NULL COMMENT 'course_component_type',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_component`
--

LOCK TABLES `course_component` WRITE;
/*!40000 ALTER TABLE `course_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_component_type`
--

DROP TABLE IF EXISTS `course_component_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_component_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_component_type`
--

LOCK TABLES `course_component_type` WRITE;
/*!40000 ALTER TABLE `course_component_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_component_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `available` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_queries`
--

DROP TABLE IF EXISTS `db_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_queries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `query` text COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_queries`
--

LOCK TABLES `db_queries` WRITE;
/*!40000 ALTER TABLE `db_queries` DISABLE KEYS */;
INSERT INTO `db_queries` VALUES (5,'select * from menu_top','2014-03-10 11:58:45'),(4,'select * from top_menu','2014-02-24 13:29:42'),(2,'SELECT * FROM users','2014-02-19 20:02:31'),(1,'SELECT name,email,donated FROM users','2014-02-19 20:02:28'),(7,'SHOW FULL COLUMNS FROM transactions\r\n','2014-03-10 11:59:16'),(3,'SHOW FULL COLUMNS FROM users','2014-02-19 20:02:34'),(6,'show full tables','2014-03-10 11:58:59');
/*!40000 ALTER TABLE `db_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delp_last_searches`
--

DROP TABLE IF EXISTS `delp_last_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delp_last_searches` (
  `name` text NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `search_text` text NOT NULL,
  `link` text NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delp_last_searches`
--

LOCK TABLES `delp_last_searches` WRITE;
/*!40000 ALTER TABLE `delp_last_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `delp_last_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_duplicates`
--

DROP TABLE IF EXISTS `file_duplicates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file_duplicates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loc1` text NOT NULL,
  `size1` text NOT NULL,
  `loc2` text NOT NULL,
  `size2` text NOT NULL,
  `md5` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_duplicates`
--

LOCK TABLES `file_duplicates` WRITE;
/*!40000 ALTER TABLE `file_duplicates` DISABLE KEYS */;
/*!40000 ALTER TABLE `file_duplicates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `name` text NOT NULL,
  `location` text NOT NULL,
  `submitter` text NOT NULL,
  `category` text NOT NULL,
  `hidden` text NOT NULL,
  `downloads` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `filetype` text NOT NULL,
  `size` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastupdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `thumb` text NOT NULL,
  `version` text NOT NULL,
  `homepage` text NOT NULL,
  `owner` text NOT NULL,
  `platform` text NOT NULL,
  `os` text NOT NULL,
  `rating` text NOT NULL,
  `worksafe` text NOT NULL,
  `md5` text NOT NULL,
  `tags` text NOT NULL,
  `ignore` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES ('Background','files/install.bkg.jpg','Admin','Image','no',1,'Background\r\n','jpg',503860,1,'2014-03-10 09:07:30','0000-00-00 00:00:00','','','','','','','','yes','','','');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_list`
--

DROP TABLE IF EXISTS `forum_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_list` (
  `name` text NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL,
  `posts` int(11) NOT NULL DEFAULT '0',
  `moderator` int(11) NOT NULL DEFAULT '0',
  `password` text NOT NULL,
  `no_reply` text NOT NULL,
  `folder` text NOT NULL,
  `parent` text NOT NULL,
  `priority` text NOT NULL,
  `usepass` text NOT NULL,
  `private` text NOT NULL,
  `moderated` text NOT NULL,
  `bgcolor` text NOT NULL,
  `fgcolor` text NOT NULL,
  `last_post` int(11) NOT NULL DEFAULT '0',
  `access_group` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Forum Listing';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_list`
--

LOCK TABLES `forum_list` WRITE;
/*!40000 ALTER TABLE `forum_list` DISABLE KEYS */;
INSERT INTO `forum_list` VALUES ('Test',1,'',0,0,'','','yes','','','','','','','',0,''),('Test',2,'',0,0,'','','no','1','','','','','','',2,'');
/*!40000 ALTER TABLE `forum_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_posts`
--

DROP TABLE IF EXISTS `forum_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poster` int(11) NOT NULL DEFAULT '0',
  `bumptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` text NOT NULL,
  `message` text NOT NULL,
  `thread` int(11) NOT NULL DEFAULT '0',
  `forum` int(11) NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `thread_top` text NOT NULL,
  `sticky` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_posts`
--

LOCK TABLES `forum_posts` WRITE;
/*!40000 ALTER TABLE `forum_posts` DISABLE KEYS */;
INSERT INTO `forum_posts` VALUES (1,1000,'2014-03-05 14:56:42','Test','test ',1,2,'2014-02-25 10:02:42','yes','',8),(2,1000,'0000-00-00 00:00:00','re:Test','Test 2',1,2,'2014-03-05 14:56:42','no','',0);
/*!40000 ALTER TABLE `forum_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_bin`
--

DROP TABLE IF EXISTS `link_bin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link_bin` (
  `name` text NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` text NOT NULL,
  `poster` int(11) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sname` text NOT NULL,
  `referrals` int(11) NOT NULL DEFAULT '0',
  `hidden` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `rating` int(11) NOT NULL DEFAULT '0',
  `category` text NOT NULL COMMENT 'categories',
  `bumptime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `referral` text NOT NULL,
  `reviewed` text NOT NULL,
  `friend` text NOT NULL,
  `reciprocal` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_bin`
--

LOCK TABLES `link_bin` WRITE;
/*!40000 ALTER TABLE `link_bin` DISABLE KEYS */;
INSERT INTO `link_bin` VALUES ('',1,'///',0,'2014-03-10 11:58:21','',8,1,'',0,0,'!!!TEMP!!!','2014-03-12 11:48:57','yes','no','',''),('',2,'http://scotb/',0,'2014-03-10 11:58:35','scotb',659,1,'',0,0,'!!!TEMP!!!','2014-03-10 13:59:44','yes','no','','');
/*!40000 ALTER TABLE `link_bin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meme`
--

DROP TABLE IF EXISTS `meme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poster` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `basepic` int(11) NOT NULL,
  `texttop` text COLLATE utf8_unicode_ci NOT NULL,
  `textbottom` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `font` text COLLATE utf8_unicode_ci NOT NULL,
  `text_size` int(11) NOT NULL,
  `text_color` text COLLATE utf8_unicode_ci NOT NULL,
  `text_bg_color` text COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `private` text COLLATE utf8_unicode_ci NOT NULL,
  `datborder` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meme`
--

LOCK TABLES `meme` WRITE;
/*!40000 ALTER TABLE `meme` DISABLE KEYS */;
/*!40000 ALTER TABLE `meme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_top`
--

DROP TABLE IF EXISTS `menu_top`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_top` (
  `name` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` text NOT NULL,
  `sort_order` int(11) NOT NULL,
  `access_method` text NOT NULL,
  `other_requirement` text NOT NULL,
  `target` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_top`
--

LOCK TABLES `menu_top` WRITE;
/*!40000 ALTER TABLE `menu_top` DISABLE KEYS */;
INSERT INTO `menu_top` VALUES ('Admin',9,'$RFS_SITE_URL/admin/adm.php',434,'admin,access','',''),('News',10,'$RFS_SITE_URL/',124,'','',''),('Videos',11,'$RFS_SITE_URL/modules/videos/videos.php',195,'','',''),('Forum',12,'$RFS_SITE_URL/modules/forums/forums.php?forum_list=yes',199,'','',''),('Files',13,'$RFS_SITE_URL/modules/files/files.php',179,'','',''),('Pictures',14,'$RFS_SITE_URL/modules/pictures/pictures.php',189,'','',''),('Profile',15,'$RFS_SITE_URL/modules/profile/profile.php',432,'','loggedin=true',''),('Wiki',16,'$RFS_SITE_URL/modules/wiki/rfswiki.php',140,'','','');
/*!40000 ALTER TABLE `menu_top` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `headline` text NOT NULL,
  `message` text NOT NULL,
  `category1` text NOT NULL,
  `submitter` int(11) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image_url` text NOT NULL,
  `image_link` text NOT NULL,
  `image_alt` text NOT NULL,
  `topstory` text NOT NULL,
  `published` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `rating` text NOT NULL,
  `sfw` text NOT NULL,
  `page` int(11) NOT NULL,
  `wiki` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'','Github','Github is pretty cool stuff\r\n','Random',1000,'2014-03-10 13:59:21','/var/www/images/news/dojocat.jpg','','','yes','yes',0,'','',0,'');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pictures` (
  `name` text NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery` text NOT NULL,
  `poster` text NOT NULL,
  `sname` text NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastupdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `url` text NOT NULL,
  `sfw` text NOT NULL,
  `category` text NOT NULL,
  `rating` text NOT NULL,
  `views` text NOT NULL,
  `hidden` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pictures`
--

LOCK TABLES `pictures` WRITE;
/*!40000 ALTER TABLE `pictures` DISABLE KEYS */;
INSERT INTO `pictures` VALUES ('',1,'','1000','Background','2014-03-10 09:08:51','0000-00-00 00:00:00','files/pictures/install.bkg.jpg','yes','Image','','','no','Background');
/*!40000 ALTER TABLE `pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmsg`
--

DROP TABLE IF EXISTS `pmsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmsg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to` text NOT NULL,
  `from` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `read` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmsg`
--

LOCK TABLES `pmsg` WRITE;
/*!40000 ALTER TABLE `pmsg` DISABLE KEYS */;
/*!40000 ALTER TABLE `pmsg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `name` text NOT NULL,
  `icon` text,
  `id` int(11) NOT NULL DEFAULT '0',
  `thumb` text NOT NULL,
  `version` text NOT NULL,
  `description` text NOT NULL,
  `author` text NOT NULL,
  `type` text NOT NULL,
  `started` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `windows` text NOT NULL,
  `linux` text NOT NULL,
  `bsd` text NOT NULL,
  `status` text NOT NULL,
  `html` text NOT NULL,
  `file` int(11) NOT NULL COMMENT 'files',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rfsauth`
--

DROP TABLE IF EXISTS `rfsauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rfsauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `enabled` text NOT NULL,
  `value` text NOT NULL,
  `value2` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rfsauth`
--

LOCK TABLES `rfsauth` WRITE;
/*!40000 ALTER TABLE `rfsauth` DISABLE KEYS */;
INSERT INTO `rfsauth` VALUES (1,'EBSR','','',''),(2,'','true','',''),(3,'FACEBOOK','','',''),(4,'','false','',''),(5,'OPENID','','',''),(6,'','false','','');
/*!40000 ALTER TABLE `rfsauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rss_feeds`
--

DROP TABLE IF EXISTS `rss_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rss_feeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `feed` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rss_feeds`
--

LOCK TABLES `rss_feeds` WRITE;
/*!40000 ALTER TABLE `rss_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `rss_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searches`
--

DROP TABLE IF EXISTS `searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `searches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `search` text NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `engine` text NOT NULL,
  `fullsearch` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searches`
--

LOCK TABLES `searches` WRITE;
/*!40000 ALTER TABLE `searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_vars`
--

DROP TABLE IF EXISTS `site_vars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_vars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `value` text NOT NULL,
  `desc` text,
  `type` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_vars`
--

LOCK TABLES `site_vars` WRITE;
/*!40000 ALTER TABLE `site_vars` DISABLE KEYS */;
INSERT INTO `site_vars` VALUES (1,'path','/var/www','','text'),(2,'url','http://scotb','','text'),(3,'name','SCOTB','','text'),(21,'slogan','SCO Toolbox','','text'),(22,'check_update','on','','bool'),(24,'database_upgrade','947',NULL,NULL),(20,'force_theme','false','','bool'),(19,'default_theme','coffee','','theme'),(15,'theme_dropdown','on','','bool'),(25,'text_buttons','on','','bool');
/*!40000 ALTER TABLE `site_vars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slogans`
--

DROP TABLE IF EXISTS `slogans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slogans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slogan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slogans`
--

LOCK TABLES `slogans` WRITE;
/*!40000 ALTER TABLE `slogans` DISABLE KEYS */;
/*!40000 ALTER TABLE `slogans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smilies`
--

DROP TABLE IF EXISTS `smilies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smilies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sfrom` text NOT NULL,
  `sto` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smilies`
--

LOCK TABLES `smilies` WRITE;
/*!40000 ALTER TABLE `smilies` DISABLE KEYS */;
/*!40000 ALTER TABLE `smilies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snippets`
--

DROP TABLE IF EXISTS `snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snippets` (
  `name` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `code` text NOT NULL,
  `poster` text NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `category` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snippets`
--

LOCK TABLES `snippets` WRITE;
/*!40000 ALTER TABLE `snippets` DISABLE KEYS */;
/*!40000 ALTER TABLE `snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo_list`
--

DROP TABLE IF EXISTS `todo_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todo_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `assigned_to` text NOT NULL,
  `assigned_to_group` text NOT NULL,
  `public` text NOT NULL,
  `owner` text NOT NULL,
  `type` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo_list`
--

LOCK TABLES `todo_list` WRITE;
/*!40000 ALTER TABLE `todo_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `todo_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo_list_status`
--

DROP TABLE IF EXISTS `todo_list_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todo_list_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo_list_status`
--

LOCK TABLES `todo_list_status` WRITE;
/*!40000 ALTER TABLE `todo_list_status` DISABLE KEYS */;
INSERT INTO `todo_list_status` VALUES (1,'Open'),(2,'In Progress'),(3,'Resolved'),(4,'Closed');
/*!40000 ALTER TABLE `todo_list_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo_list_task`
--

DROP TABLE IF EXISTS `todo_list_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todo_list_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `list` text NOT NULL,
  `priority` text NOT NULL,
  `description` text NOT NULL,
  `step` text NOT NULL,
  `status` text NOT NULL,
  `opened` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `due` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `resolve_action` text NOT NULL,
  `opened_by` text NOT NULL,
  `closed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `closed_by` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo_list_task`
--

LOCK TABLES `todo_list_task` WRITE;
/*!40000 ALTER TABLE `todo_list_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `todo_list_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo_list_type`
--

DROP TABLE IF EXISTS `todo_list_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todo_list_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo_list_type`
--

LOCK TABLES `todo_list_type` WRITE;
/*!40000 ALTER TABLE `todo_list_type` DISABLE KEYS */;
INSERT INTO `todo_list_type` VALUES (1,'Personal'),(2,'Bug'),(3,'Task');
/*!40000 ALTER TABLE `todo_list_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topmenu`
--

DROP TABLE IF EXISTS `topmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `link` text NOT NULL,
  `sor` int(11) NOT NULL,
  `access` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topmenu`
--

LOCK TABLES `topmenu` WRITE;
/*!40000 ALTER TABLE `topmenu` DISABLE KEYS */;
/*!40000 ALTER TABLE `topmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_date` text COLLATE utf8_unicode_ci NOT NULL,
  `transaction_subject` text COLLATE utf8_unicode_ci NOT NULL,
  `last_name` text COLLATE utf8_unicode_ci NOT NULL,
  `residence_country` text COLLATE utf8_unicode_ci NOT NULL,
  `item_name` text COLLATE utf8_unicode_ci NOT NULL,
  `payment_gross` text COLLATE utf8_unicode_ci NOT NULL,
  `mc_currency` text COLLATE utf8_unicode_ci NOT NULL,
  `business` text COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` text COLLATE utf8_unicode_ci NOT NULL,
  `protection_eligibility` text COLLATE utf8_unicode_ci NOT NULL,
  `payer_status` text COLLATE utf8_unicode_ci NOT NULL,
  `verify_sign` text COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` text COLLATE utf8_unicode_ci NOT NULL,
  `payer_email` text COLLATE utf8_unicode_ci NOT NULL,
  `tax` text COLLATE utf8_unicode_ci NOT NULL,
  `receiver_email` text COLLATE utf8_unicode_ci NOT NULL,
  `payer_id` text COLLATE utf8_unicode_ci NOT NULL,
  `item_number` text COLLATE utf8_unicode_ci NOT NULL,
  `mc_fee` text COLLATE utf8_unicode_ci NOT NULL,
  `payment_fee` text COLLATE utf8_unicode_ci NOT NULL,
  `mc_gross` text COLLATE utf8_unicode_ci NOT NULL,
  `charset` text COLLATE utf8_unicode_ci NOT NULL,
  `notify_version` text COLLATE utf8_unicode_ci NOT NULL,
  `merchant_return_link` text COLLATE utf8_unicode_ci NOT NULL,
  `auth` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorials`
--

DROP TABLE IF EXISTS `tutorials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tutorials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `poster` int(11) NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `category` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorials`
--

LOCK TABLES `tutorials` WRITE;
/*!40000 ALTER TABLE `tutorials` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutorials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useronline`
--

DROP TABLE IF EXISTS `useronline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useronline` (
  `name` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `loggedin` text NOT NULL,
  `page` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useronline`
--

LOCK TABLES `useronline` WRITE;
/*!40000 ALTER TABLE `useronline` DISABLE KEYS */;
INSERT INTO `useronline` VALUES ('(Guest)',1,1394624937,'127.0.0.1','0','/index.php');
/*!40000 ALTER TABLE `useronline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `facebook_id` text NOT NULL,
  `facebook_name` text NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `facebook_link` text NOT NULL,
  `timezone` text NOT NULL,
  `locale` text NOT NULL,
  `donated` text NOT NULL,
  `pass` text NOT NULL,
  `real_name` text NOT NULL,
  `country` text NOT NULL,
  `gender` text NOT NULL,
  `email` text NOT NULL,
  `paypal_email` text NOT NULL,
  `webpage` text NOT NULL,
  `avatar` text NOT NULL,
  `picture` text NOT NULL,
  `posts` int(11) NOT NULL DEFAULT '0',
  `show_flash` text NOT NULL,
  `website_fav` text NOT NULL,
  `sentence` text NOT NULL,
  `first_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reporter` text NOT NULL,
  `show_contact_info` text NOT NULL,
  `upload` text NOT NULL,
  `files_uploaded` int(11) NOT NULL DEFAULT '0',
  `files_downloaded` int(11) NOT NULL DEFAULT '0',
  `last_activity` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `birthday` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(11) NOT NULL DEFAULT '0',
  `access_groups` text NOT NULL,
  `forumposts` int(11) NOT NULL DEFAULT '0',
  `forumreplies` int(11) NOT NULL DEFAULT '0',
  `videowall` text NOT NULL,
  `theme` text NOT NULL,
  `referrals` int(11) NOT NULL DEFAULT '0',
  `comments` int(11) NOT NULL DEFAULT '0',
  `linksadded` int(11) NOT NULL DEFAULT '0',
  `logins` int(11) NOT NULL DEFAULT '0',
  `facebook_username` text NOT NULL,
  `downloads` text NOT NULL,
  `uploads` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1003 DEFAULT CHARSET=latin1 COMMENT='hi';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1000,'Admin','','','','','','','','','a1e0476879cab2a76cc22c80bbf364dd','Admin','','','admin@scotb','','','','',0,'','','','0000-00-00 00:00:00','','','',1,1,'2014-03-10 07:58:35','2014-03-05 14:55:45','0000-00-00 00:00:00',255,'Administrator',1,1,'3|2|400|300|0,0,|0,1,|0,2,|0,3,|0,4,|0,5,|0,6,|0,7,|0,8,|0,9,|1,0,|1,1,|1,2,|1,3,|1,4,|1,5,|1,6,|1,7,|1,8,|1,9,|2,0,|2,1,|2,2,|2,3,|2,4,|2,5,|2,6,|2,7,|2,8,|2,9,|3,0,|3,1,|3,2,|3,3,|3,4,|3,5,|3,6,|3,7,|3,8,|3,9,|4,0,|4,1,|4,2,|4,3,|4,4,|4,5,|4,6,|4,7,|4,8,|4,9,|5,0,|5,1,|5,2,|5,3,|5,4,|5,5,|5,6,|5,7,|5,8,|5,9,|6,0,|6,1,|6,2,|6,3,|6,4,|6,5,|6,6,|6,7,|6,8,|6,9,|7,0,|7,1,|7,2,|7,3,|7,4,|7,5,|7,6,|7,7,|7,8,|7,9,|8,0,|8,1,|8,2,|8,3,|8,4,|8,5,|8,6,|8,7,|8,8,|8,9,|9,0,|9,1,|9,2,|9,3,|9,4,|9,5,|9,6,|9,7,|9,8,|9,9,|','coffee',0,0,0,0,'','',''),(999,'anonymous','','','','','','','','','','','','','','','','','',0,'','','','0000-00-00 00:00:00','','','',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'',0,0,'','',0,0,0,0,'','',''),(1001,'Your_User_Name','','','','','','','','','c4ca4238a0b923820dcc509a6f75849b','Your Real Name','','','youremail@youremaildomain.what','','','','',0,'','','','0000-00-00 00:00:00','','','',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',255,',Administrator',0,0,'','default',0,0,0,0,'','',''),(1002,'parson','','','','','','','','','c4ca4238a0b923820dcc509a6f75849b','Seth Parson','United States','male','defectiveseth@gmail.com','','','','',0,'','','','0000-00-00 00:00:00','','no','',0,0,'2014-02-24 09:22:12','2014-02-24 08:48:09','1999-11-30 01:01:01',0,',Administrator',0,0,'3|2|400|300|0,0,|0,1,|0,2,|0,3,|0,4,|0,5,|0,6,|0,7,|0,8,|0,9,|1,0,|1,1,|1,2,|1,3,|1,4,|1,5,|1,6,|1,7,|1,8,|1,9,|2,0,|2,1,|2,2,|2,3,|2,4,|2,5,|2,6,|2,7,|2,8,|2,9,|3,0,|3,1,|3,2,|3,3,|3,4,|3,5,|3,6,|3,7,|3,8,|3,9,|4,0,|4,1,|4,2,|4,3,|4,4,|4,5,|4,6,|4,7,|4,8,|4,9,|5,0,|5,1,|5,2,|5,3,|5,4,|5,5,|5,6,|5,7,|5,8,|5,9,|6,0,|6,1,|6,2,|6,3,|6,4,|6,5,|6,6,|6,7,|6,8,|6,9,|7,0,|7,1,|7,2,|7,3,|7,4,|7,5,|7,6,|7,7,|7,8,|7,9,|8,0,|8,1,|8,2,|8,3,|8,4,|8,5,|8,6,|8,7,|8,8,|8,9,|9,0,|9,1,|9,2,|9,3,|9,4,|9,5,|9,6,|9,7,|9,8,|9,9,|','plain2',0,0,0,0,'','','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contributor` int(11) NOT NULL,
  `sname` text NOT NULL,
  `refresh` int(11) NOT NULL DEFAULT '0',
  `url` text NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bumptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `category` text NOT NULL,
  `hidden` text NOT NULL,
  `sfw` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1730 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (1697,1000,'Creating Command Scripts in the Nortel DMS-100 Part 2',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/T5GUGY_QEXc\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:13:57','2014-03-10 09:13:57','11','no','yes'),(1698,1000,'Creating Command Scripts in the Nortel DMS-100',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/6r151EuVlfQ\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:16:41','2014-03-10 09:16:41','11','0','yes'),(1699,1000,'How to Identify the source Trunk in a Call Dump on the Nortel DMS-100',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/S0Bl0DBicRc\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:18:05','2014-03-10 09:18:05','11','0','yes'),(1700,1000,'Private VLAN tutorial and demonstration',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/tbG9YboATvA\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:18:32','2014-03-10 09:18:32','11','0','yes'),(1701,1000,'Configure Inter-VLAN Routing on Cisco Routers and Switches',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/jg0IECQmUjE\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:18:57','2014-03-10 09:18:57','11','0','yes'),(1702,1000,'IP Addresses and Subnetting',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/rs39FWDhzDs\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:19:30','2014-03-10 09:19:30','11','0','yes'),(1703,1000,'Intro to TCP/IP',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/gJ5h4_0mllI\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:20:18','2014-03-10 09:20:18','11','0','yes'),(1704,1000,'Subnetting Made Easy by Cisco Networking Academy Student Brian Morgan',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/KDig0lOO95M\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:20:52','2014-03-10 09:20:52','11','0','yes'),(1705,1000,'Network Layers - OSI, TCP/IP Models -Part3',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/BplNYiUV5kU\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:22:20','2014-03-10 09:22:20','11','0','yes'),(1706,1000,'Intro to using Wireshark - CCNA Network Fundamentals',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/tnkCKI96QCE\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:23:16','2014-03-10 09:23:16','11','0','yes'),(1707,1000,'Private VLANs',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/OqwYO00lLOo\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:23:47','2014-03-10 09:23:47','11','0','yes'),(1708,1000,'OSPF Special Area Types',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/1ScQYR7Gltw\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:24:36','2014-03-10 09:24:36','11','0','yes'),(1709,1000,'OSPF Explained (Part 1)',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/iSCzRsGntEU\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:25:31','2014-03-10 09:25:31','11','0','yes'),(1710,1000,'EIGRP Explained',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/ypHMZGV0H7U\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:26:24','2014-03-10 09:26:24','11','0','yes'),(1711,1000,'RouterGods Hangouts - Regular BGP Part 1',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/tJCl_r5rYjY\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:26:57','2014-03-10 09:26:57','11','0','yes'),(1712,1000,'Intro to BGP',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/PduPeJBrKC4\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:28:03','2014-03-10 09:28:03','11','0','yes'),(1714,1000,'IP Multicasting',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/El_1HzhCiIg\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:30:55','2014-03-10 09:30:55','11','0','yes'),(1715,1000,'Advanced Router Technology 7 - Multicast Routing Concepts',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/Ok1XbMLgagI\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:32:15','2014-03-10 09:32:15','11','0','yes'),(1716,1000,'Quality of Service 1 - QoS Fundamentals and the MQC',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/BGivy9qOQiI\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:33:08','2014-03-10 09:33:08','11','0','yes'),(1717,1000,'Quality of Service 2 - Congestion Management and Avoidance',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/jv_C5BXAxZA\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:33:48','2014-03-10 09:33:48','11','0','yes'),(1718,1000,'Quality of Service 3 - Policing, Shaping, and Link Efficiency',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/OFR8PGDj1cE\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:34:34','2014-03-10 09:34:34','11','0','yes'),(1719,1000,'Cisco Switching: QoS',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/OmbRxb2puyk\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:35:19','2014-03-10 09:35:19','11','0','yes'),(1720,1000,'VLANs and Trunks for Beginners - Part 1',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/aBOzFa6ioLw\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:36:58','2014-03-10 09:36:58','11','0','yes'),(1721,1000,'The OSI Model Demystified',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/HEEnLZV2wGI\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:39:27','2014-03-10 09:39:27','11','0','yes'),(1722,1000,'Introduction to Voice Over IP',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/2x3Ie6VZ_sg\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:41:04','2014-03-10 09:41:04','11','0','yes'),(1723,1000,'Introduction to Telephone Systems',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/Tahfluke6cU\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:42:07','2014-03-10 09:42:07','11','0','yes'),(1724,1000,'Telephone System Call Routing',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/tsWvJTgN15M\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:43:28','2014-03-10 09:43:28','11','0','yes'),(1725,1000,'Network Mapping',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/_uIOdTfp6Pw\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:44:45','2014-03-10 09:44:45','11','0','yes'),(1726,1000,'Electronic Destruction',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/7sjeN-_tfa8\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:47:24','2014-03-10 09:47:24','12','no','yes'),(1727,1000,'Slow Motion Destruction Of Old Electronics - 600fps & 1,200fps [In HD]',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/c5hSoYK7iFg\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:48:07','2014-03-10 09:48:07','12','no','yes'),(1728,1000,'Big Capacitor Safety',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/coW1RHUsf_I\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:49:24','2014-03-10 09:49:24','12','no','yes'),(1729,1000,'Random Smash and Bangs',0,'<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/wMKe2PMenvk\" frameborder=\"0\" allowfullscreen></iframe>','2014-03-10 09:50:09','2014-03-10 09:50:09','12','no','yes');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wab_engine`
--

DROP TABLE IF EXISTS `wab_engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wab_engine` (
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL DEFAULT '1',
  `hidden` int(11) NOT NULL DEFAULT '1',
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `code` text COLLATE utf8_unicode_ci NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wab_engine`
--

LOCK TABLES `wab_engine` WRITE;
/*!40000 ALTER TABLE `wab_engine` DISABLE KEYS */;
/*!40000 ALTER TABLE `wab_engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki`
--

DROP TABLE IF EXISTS `wiki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `revision` int(11) NOT NULL,
  `revised_by` text NOT NULL,
  `revision_note` text NOT NULL,
  `author` text NOT NULL,
  `text` text NOT NULL,
  `tags` text NOT NULL,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki`
--

LOCK TABLES `wiki` WRITE;
/*!40000 ALTER TABLE `wiki` DISABLE KEYS */;
INSERT INTO `wiki` VALUES (1,'Home',1,'Admin','Enter revision note here. REVISION: 1','Admin','Test','','2014-03-10 13:06:10');
/*!40000 ALTER TABLE `wiki` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-13 10:08:38
