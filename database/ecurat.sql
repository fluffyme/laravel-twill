-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: ecurat
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES (1,'default','created',1,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-01 07:08:45','2022-06-01 07:08:45'),(2,'default','updated',1,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-01 07:09:06','2022-06-01 07:09:06'),(3,'default','updated',1,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-01 07:09:08','2022-06-01 07:09:08'),(4,'default','updated',1,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-01 07:09:14','2022-06-01 07:09:14'),(5,'default','created',2,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-01 09:52:11','2022-06-01 09:52:11'),(6,'default','created',3,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-01 09:53:37','2022-06-01 09:53:37'),(7,'default','created',4,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-01 09:53:59','2022-06-01 09:53:59'),(8,'default','created',5,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-01 09:56:48','2022-06-01 09:56:48'),(9,'default','created',1,'App\\Models\\Menu',NULL,1,'users','[]',NULL,'2022-06-01 09:58:38','2022-06-01 09:58:38'),(10,'default','updated',1,'App\\Models\\Menu',NULL,1,'users','[]',NULL,'2022-06-01 09:58:54','2022-06-01 09:58:54'),(11,'default','created',6,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-01 10:20:58','2022-06-01 10:20:58'),(12,'default','created',7,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-01 10:21:36','2022-06-01 10:21:36'),(13,'default','created',2,'App\\Models\\Menu',NULL,1,'users','[]',NULL,'2022-06-01 10:32:30','2022-06-01 10:32:30'),(14,'default','created',1,'App\\Models\\Category',NULL,1,'users','[]',NULL,'2022-06-01 10:45:32','2022-06-01 10:45:32'),(15,'default','created',2,'App\\Models\\Category',NULL,1,'users','[]',NULL,'2022-06-01 10:46:14','2022-06-01 10:46:14'),(16,'default','created',3,'App\\Models\\Category',NULL,1,'users','[]',NULL,'2022-06-01 10:47:25','2022-06-01 10:47:25'),(17,'default','created',4,'App\\Models\\Category',NULL,1,'users','[]',NULL,'2022-06-01 10:48:17','2022-06-01 10:48:17'),(18,'default','updated',2,'App\\Models\\Menu',NULL,1,'users','[]',NULL,'2022-06-01 10:49:21','2022-06-01 10:49:21'),(19,'default','updated',1,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-02 06:44:45','2022-06-02 06:44:45'),(20,'default','updated',1,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-02 06:45:41','2022-06-02 06:45:41'),(21,'default','updated',1,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-02 06:46:56','2022-06-02 06:46:56'),(22,'default','updated',2,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-02 07:49:29','2022-06-02 07:49:29'),(23,'default','updated',2,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-02 07:49:40','2022-06-02 07:49:40'),(24,'default','updated',2,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-02 07:54:58','2022-06-02 07:54:58'),(25,'default','updated',2,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-02 08:01:15','2022-06-02 08:01:15'),(26,'default','updated',2,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-02 08:14:52','2022-06-02 08:14:52'),(27,'default','updated',2,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-02 08:17:36','2022-06-02 08:17:36'),(28,'default','created',3,'App\\Models\\Service',NULL,1,'users','[]',NULL,'2022-06-02 08:42:29','2022-06-02 08:42:29'),(29,'default','created',8,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-02 08:47:07','2022-06-02 08:47:07'),(30,'default','updated',8,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-02 08:47:16','2022-06-02 08:47:16'),(31,'default','updated',1,'App\\Models\\Menu',NULL,1,'users','[]',NULL,'2022-06-02 08:47:29','2022-06-02 08:47:29'),(32,'default','created',1,'App\\Models\\News',NULL,1,'users','[]',NULL,'2022-06-02 09:26:05','2022-06-02 09:26:05'),(33,'default','updated',1,'App\\Models\\News',NULL,1,'users','[]',NULL,'2022-06-02 09:26:49','2022-06-02 09:26:49'),(34,'default','updated',1,'App\\Models\\News',NULL,1,'users','[]',NULL,'2022-06-02 09:27:24','2022-06-02 09:27:24'),(35,'default','updated',1,'App\\Models\\News',NULL,1,'users','[]',NULL,'2022-06-02 09:27:26','2022-06-02 09:27:26'),(36,'default','updated',1,'App\\Models\\News',NULL,1,'users','[]',NULL,'2022-06-02 09:28:42','2022-06-02 09:28:42'),(37,'default','created',2,'App\\Models\\News',NULL,1,'users','[]',NULL,'2022-06-02 09:29:52','2022-06-02 09:29:52'),(38,'default','created',3,'App\\Models\\News',NULL,1,'users','[]',NULL,'2022-06-02 09:30:25','2022-06-02 09:30:25'),(39,'default','created',4,'App\\Models\\News',NULL,1,'users','[]',NULL,'2022-06-02 09:31:00','2022-06-02 09:31:00'),(40,'default','created',5,'App\\Models\\News',NULL,1,'users','[]',NULL,'2022-06-02 09:31:38','2022-06-02 09:31:38'),(41,'default','created',6,'App\\Models\\News',NULL,1,'users','[]',NULL,'2022-06-02 09:32:01','2022-06-02 09:32:01'),(42,'default','created',7,'App\\Models\\News',NULL,1,'users','[]',NULL,'2022-06-02 09:34:00','2022-06-02 09:34:00'),(43,'default','updated',7,'App\\Models\\News',NULL,1,'users','[]',NULL,'2022-06-02 09:34:31','2022-06-02 09:34:31'),(44,'default','updated',6,'App\\Models\\News',NULL,1,'users','[]',NULL,'2022-06-02 09:35:02','2022-06-02 09:35:02'),(45,'default','updated',5,'App\\Models\\News',NULL,1,'users','[]',NULL,'2022-06-02 09:35:41','2022-06-02 09:35:41'),(46,'default','updated',4,'App\\Models\\News',NULL,1,'users','[]',NULL,'2022-06-02 09:36:32','2022-06-02 09:36:32'),(47,'default','updated',3,'App\\Models\\News',NULL,1,'users','[]',NULL,'2022-06-02 09:37:13','2022-06-02 09:37:13'),(48,'default','updated',2,'App\\Models\\News',NULL,1,'users','[]',NULL,'2022-06-02 09:37:56','2022-06-02 09:37:56'),(49,'default','updated',5,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-02 11:22:55','2022-06-02 11:22:55'),(50,'default','updated',5,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-02 11:30:07','2022-06-02 11:30:07'),(51,'default','updated',5,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-02 11:34:37','2022-06-02 11:34:37'),(52,'default','updated',5,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-02 11:37:27','2022-06-02 11:37:27'),(53,'default','updated',5,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-02 11:41:46','2022-06-02 11:41:46'),(54,'default','updated',5,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-02 11:55:47','2022-06-02 11:55:47'),(55,'default','created',1,'App\\Models\\ServiceCategory',NULL,1,'users','[]',NULL,'2022-06-02 12:39:25','2022-06-02 12:39:25'),(56,'default','created',2,'App\\Models\\ServiceCategory',NULL,1,'users','[]',NULL,'2022-06-02 12:41:54','2022-06-02 12:41:54'),(57,'default','created',3,'App\\Models\\ServiceCategory',NULL,1,'users','[]',NULL,'2022-06-02 12:42:28','2022-06-02 12:42:28'),(58,'default','created',4,'App\\Models\\ServiceCategory',NULL,1,'users','[]',NULL,'2022-06-02 12:42:59','2022-06-02 12:42:59'),(59,'default','created',5,'App\\Models\\ServiceCategory',NULL,1,'users','[]',NULL,'2022-06-02 12:43:26','2022-06-02 12:43:26'),(60,'default','updated',1,'App\\Models\\ServiceCategory',NULL,1,'users','[]',NULL,'2022-06-03 07:12:37','2022-06-03 07:12:37'),(61,'default','updated',2,'App\\Models\\ServiceCategory',NULL,1,'users','[]',NULL,'2022-06-03 07:13:16','2022-06-03 07:13:16'),(62,'default','updated',3,'App\\Models\\ServiceCategory',NULL,1,'users','[]',NULL,'2022-06-03 07:13:33','2022-06-03 07:13:33'),(63,'default','updated',4,'App\\Models\\ServiceCategory',NULL,1,'users','[]',NULL,'2022-06-03 07:13:46','2022-06-03 07:13:46'),(64,'default','updated',5,'App\\Models\\ServiceCategory',NULL,1,'users','[]',NULL,'2022-06-03 07:14:01','2022-06-03 07:14:01'),(65,'default','updated',3,'App\\Models\\Service',NULL,1,'users','[]',NULL,'2022-06-03 07:15:36','2022-06-03 07:15:36'),(66,'default','updated',3,'App\\Models\\Service',NULL,1,'users','[]',NULL,'2022-06-03 07:52:27','2022-06-03 07:52:27'),(67,'default','updated',3,'App\\Models\\Service',NULL,1,'users','[]',NULL,'2022-06-03 07:58:45','2022-06-03 07:58:45'),(68,'default','updated',3,'App\\Models\\Service',NULL,1,'users','[]',NULL,'2022-06-03 08:00:55','2022-06-03 08:00:55'),(69,'default','updated',3,'App\\Models\\Service',NULL,1,'users','[]',NULL,'2022-06-03 08:03:16','2022-06-03 08:03:16'),(70,'default','updated',3,'App\\Models\\Service',NULL,1,'users','[]',NULL,'2022-06-03 08:04:15','2022-06-03 08:04:15'),(71,'default','updated',3,'App\\Models\\Service',NULL,1,'users','[]',NULL,'2022-06-03 08:04:54','2022-06-03 08:04:54'),(72,'default','updated',3,'App\\Models\\Service',NULL,1,'users','[]',NULL,'2022-06-03 08:05:34','2022-06-03 08:05:34'),(73,'default','updated',3,'App\\Models\\Service',NULL,1,'users','[]',NULL,'2022-06-03 08:09:19','2022-06-03 08:09:19'),(74,'default','updated',3,'App\\Models\\Service',NULL,1,'users','[]',NULL,'2022-06-03 08:13:09','2022-06-03 08:13:09'),(75,'default','created',5,'App\\Models\\Service',NULL,1,'users','[]',NULL,'2022-06-03 08:23:48','2022-06-03 08:23:48'),(76,'default','updated',5,'App\\Models\\Service',NULL,1,'users','[]',NULL,'2022-06-03 08:24:36','2022-06-03 08:24:36'),(77,'default','updated',5,'App\\Models\\Service',NULL,1,'users','[]',NULL,'2022-06-03 08:24:52','2022-06-03 08:24:52'),(78,'default','updated',5,'App\\Models\\Service',NULL,1,'users','[]',NULL,'2022-06-03 08:34:34','2022-06-03 08:34:34'),(79,'default','updated',3,'App\\Models\\Service',NULL,1,'users','[]',NULL,'2022-06-03 08:36:20','2022-06-03 08:36:20'),(80,'default','updated',1,'App\\Models\\Profile',NULL,1,'users','[]',NULL,'2022-06-06 15:34:53','2022-06-06 15:34:53'),(81,'default','updated',1,'App\\Models\\Profile',NULL,1,'users','[]',NULL,'2022-06-06 15:35:10','2022-06-06 15:35:10'),(82,'default','updated',2,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-08 05:47:08','2022-06-08 05:47:08'),(83,'default','updated',3,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-08 05:47:19','2022-06-08 05:47:19'),(84,'default','updated',4,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-08 05:47:29','2022-06-08 05:47:29'),(85,'default','updated',5,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-08 05:47:39','2022-06-08 05:47:39'),(86,'default','updated',8,'App\\Models\\Page',NULL,1,'users','[]',NULL,'2022-06-08 05:47:57','2022-06-08 05:47:57'),(87,'default','created',1,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:12:58','2022-06-08 10:12:58'),(88,'default','created',2,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:13:08','2022-06-08 10:13:08'),(89,'default','created',3,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:13:17','2022-06-08 10:13:17'),(90,'default','created',4,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:13:33','2022-06-08 10:13:33'),(91,'default','created',5,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:13:40','2022-06-08 10:13:40'),(92,'default','created',6,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:13:47','2022-06-08 10:13:47'),(93,'default','created',7,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:13:55','2022-06-08 10:13:55'),(94,'default','created',8,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:14:04','2022-06-08 10:14:04'),(95,'default','created',9,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:14:11','2022-06-08 10:14:11'),(96,'default','created',10,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:14:19','2022-06-08 10:14:19'),(97,'default','updated',10,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:17:01','2022-06-08 10:17:01'),(98,'default','updated',9,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:17:31','2022-06-08 10:17:31'),(99,'default','updated',8,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:17:49','2022-06-08 10:17:49'),(100,'default','updated',7,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:18:15','2022-06-08 10:18:15'),(101,'default','updated',6,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:18:43','2022-06-08 10:18:43'),(102,'default','updated',5,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:19:06','2022-06-08 10:19:06'),(103,'default','updated',4,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:19:26','2022-06-08 10:19:26'),(104,'default','updated',4,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:20:23','2022-06-08 10:20:23'),(105,'default','updated',2,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:20:38','2022-06-08 10:20:38'),(106,'default','updated',3,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:20:57','2022-06-08 10:20:57'),(107,'default','updated',1,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-08 10:21:12','2022-06-08 10:21:12'),(108,'default','created',5,'App\\Models\\Category',NULL,1,'users','[]',NULL,'2022-06-10 07:19:09','2022-06-10 07:19:09'),(109,'default','created',6,'App\\Models\\Category',NULL,1,'users','[]',NULL,'2022-06-10 07:19:41','2022-06-10 07:19:41'),(110,'default','created',7,'App\\Models\\Category',NULL,1,'users','[]',NULL,'2022-06-10 07:19:58','2022-06-10 07:19:58'),(111,'default','created',8,'App\\Models\\Category',NULL,1,'users','[]',NULL,'2022-06-10 07:20:18','2022-06-10 07:20:18'),(112,'default','updated',8,'App\\Models\\Category',NULL,1,'users','[]',NULL,'2022-06-10 07:20:25','2022-06-10 07:20:25'),(113,'default','updated',5,'App\\Models\\Category',NULL,1,'users','[]',NULL,'2022-06-10 07:20:38','2022-06-10 07:20:38'),(114,'default','updated',6,'App\\Models\\Category',NULL,1,'users','[]',NULL,'2022-06-10 07:20:48','2022-06-10 07:20:48'),(115,'default','updated',7,'App\\Models\\Category',NULL,1,'users','[]',NULL,'2022-06-10 07:20:58','2022-06-10 07:20:58'),(116,'default','created',1,'App\\Models\\Brand',NULL,1,'users','[]',NULL,'2022-06-10 07:27:06','2022-06-10 07:27:06'),(117,'default','created',2,'App\\Models\\Brand',NULL,1,'users','[]',NULL,'2022-06-10 07:27:29','2022-06-10 07:27:29'),(118,'default','created',3,'App\\Models\\Brand',NULL,1,'users','[]',NULL,'2022-06-10 07:27:36','2022-06-10 07:27:36'),(119,'default','updated',3,'App\\Models\\Brand',NULL,1,'users','[]',NULL,'2022-06-10 07:29:24','2022-06-10 07:29:24'),(120,'default','updated',2,'App\\Models\\Brand',NULL,1,'users','[]',NULL,'2022-06-10 07:29:34','2022-06-10 07:29:34'),(121,'default','updated',1,'App\\Models\\Brand',NULL,1,'users','[]',NULL,'2022-06-10 07:29:47','2022-06-10 07:29:47'),(122,'default','updated',10,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 07:31:28','2022-06-10 07:31:28'),(123,'default','updated',10,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 07:32:16','2022-06-10 07:32:16'),(124,'default','updated',9,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 07:32:46','2022-06-10 07:32:46'),(125,'default','updated',8,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 07:32:57','2022-06-10 07:32:57'),(126,'default','updated',7,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 07:33:06','2022-06-10 07:33:06'),(127,'default','updated',6,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 07:33:16','2022-06-10 07:33:16'),(128,'default','updated',5,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 07:33:58','2022-06-10 07:33:58'),(129,'default','updated',5,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 07:34:03','2022-06-10 07:34:03'),(130,'default','updated',6,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 07:34:19','2022-06-10 07:34:19'),(131,'default','updated',4,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 07:34:29','2022-06-10 07:34:29'),(132,'default','updated',3,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 07:34:40','2022-06-10 07:34:40'),(133,'default','updated',2,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 07:34:54','2022-06-10 07:34:54'),(134,'default','updated',1,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 07:35:03','2022-06-10 07:35:03'),(135,'default','updated',7,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 07:35:12','2022-06-10 07:35:12'),(136,'default','updated',8,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 07:35:18','2022-06-10 07:35:18'),(137,'default','updated',9,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 07:35:25','2022-06-10 07:35:25'),(138,'default','updated',10,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 07:35:31','2022-06-10 07:35:31'),(139,'default','updated',10,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:28:32','2022-06-10 09:28:32'),(140,'default','updated',10,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:28:45','2022-06-10 09:28:45'),(141,'default','updated',9,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:33:18','2022-06-10 09:33:18'),(142,'default','updated',9,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:33:23','2022-06-10 09:33:23'),(143,'default','updated',8,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:33:31','2022-06-10 09:33:31'),(144,'default','updated',8,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:33:35','2022-06-10 09:33:35'),(145,'default','updated',7,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:33:45','2022-06-10 09:33:45'),(146,'default','updated',7,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:33:49','2022-06-10 09:33:49'),(147,'default','updated',6,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:33:57','2022-06-10 09:33:57'),(148,'default','updated',6,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:34:00','2022-06-10 09:34:00'),(149,'default','updated',6,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:42:23','2022-06-10 09:42:23'),(150,'default','updated',6,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:42:27','2022-06-10 09:42:27'),(151,'default','updated',5,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:42:35','2022-06-10 09:42:35'),(152,'default','updated',5,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:42:40','2022-06-10 09:42:40'),(153,'default','updated',4,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:42:52','2022-06-10 09:42:52'),(154,'default','updated',4,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:42:57','2022-06-10 09:42:57'),(155,'default','updated',3,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:43:05','2022-06-10 09:43:05'),(156,'default','updated',3,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:43:11','2022-06-10 09:43:11'),(157,'default','updated',3,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:43:26','2022-06-10 09:43:26'),(158,'default','updated',3,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:43:30','2022-06-10 09:43:30'),(159,'default','updated',2,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:43:40','2022-06-10 09:43:40'),(160,'default','updated',1,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:43:50','2022-06-10 09:43:50'),(161,'default','updated',1,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-10 09:43:55','2022-06-10 09:43:55'),(162,'default','updated',2,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-15 08:45:25','2022-06-15 08:45:25'),(163,'default','created',1,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 09:08:09','2022-06-16 09:08:09'),(164,'default','created',2,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 09:08:34','2022-06-16 09:08:34'),(165,'default','created',3,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 09:08:47','2022-06-16 09:08:47'),(166,'default','created',4,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 09:08:55','2022-06-16 09:08:55'),(167,'default','created',5,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 09:09:12','2022-06-16 09:09:12'),(168,'default','created',6,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 09:10:50','2022-06-16 09:10:50'),(169,'default','created',7,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 09:11:18','2022-06-16 09:11:18'),(170,'default','updated',1,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 09:20:02','2022-06-16 09:20:02'),(171,'default','updated',1,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 09:20:18','2022-06-16 09:20:18'),(172,'default','updated',2,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 09:21:13','2022-06-16 09:21:13'),(173,'default','updated',3,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 09:22:01','2022-06-16 09:22:01'),(174,'default','updated',4,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:00:52','2022-06-16 11:00:52'),(175,'default','updated',5,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:01:31','2022-06-16 11:01:31'),(176,'default','updated',6,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:02:04','2022-06-16 11:02:04'),(177,'default','updated',7,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:02:24','2022-06-16 11:02:24'),(178,'default','updated',7,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:02:36','2022-06-16 11:02:36'),(179,'default','created',8,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:03:21','2022-06-16 11:03:21'),(180,'default','created',9,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:03:31','2022-06-16 11:03:31'),(181,'default','created',10,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:03:35','2022-06-16 11:03:35'),(182,'default','updated',10,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:03:42','2022-06-16 11:03:42'),(183,'default','updated',9,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:03:54','2022-06-16 11:03:54'),(184,'default','updated',8,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:04:03','2022-06-16 11:04:03'),(185,'default','updated',8,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:12:37','2022-06-16 11:12:37'),(186,'default','updated',9,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:12:55','2022-06-16 11:12:55'),(187,'default','updated',10,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:13:03','2022-06-16 11:13:03'),(188,'default','created',11,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:13:37','2022-06-16 11:13:37'),(189,'default','created',12,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:13:41','2022-06-16 11:13:41'),(190,'default','created',13,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:13:46','2022-06-16 11:13:46'),(191,'default','updated',11,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:13:57','2022-06-16 11:13:57'),(192,'default','updated',12,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:14:07','2022-06-16 11:14:07'),(193,'default','updated',13,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:14:16','2022-06-16 11:14:16'),(194,'default','created',14,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:14:54','2022-06-16 11:14:54'),(195,'default','created',15,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:14:58','2022-06-16 11:14:58'),(196,'default','created',16,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:15:03','2022-06-16 11:15:03'),(197,'default','updated',14,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:15:15','2022-06-16 11:15:15'),(198,'default','updated',15,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:15:25','2022-06-16 11:15:25'),(199,'default','updated',16,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:15:35','2022-06-16 11:15:35'),(200,'default','created',17,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:16:23','2022-06-16 11:16:23'),(201,'default','created',18,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:16:33','2022-06-16 11:16:33'),(202,'default','created',19,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:16:40','2022-06-16 11:16:40'),(203,'default','created',20,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:18:30','2022-06-16 11:18:30'),(204,'default','updated',20,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:18:35','2022-06-16 11:18:35'),(205,'default','updated',17,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:18:45','2022-06-16 11:18:45'),(206,'default','updated',18,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:18:56','2022-06-16 11:18:56'),(207,'default','updated',19,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-16 11:19:07','2022-06-16 11:19:07'),(208,'default','updated',10,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-17 10:30:08','2022-06-17 10:30:08'),(209,'default','updated',8,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:30:56','2022-06-17 10:30:56'),(210,'default','updated',8,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:31:00','2022-06-17 10:31:00'),(211,'default','updated',1,'users',NULL,1,'users','[]',NULL,'2022-06-17 10:31:37','2022-06-17 10:31:37'),(212,'default','updated',1,'users',NULL,1,'users','[]',NULL,'2022-06-17 10:32:07','2022-06-17 10:32:07'),(213,'default','updated',9,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:33:10','2022-06-17 10:33:10'),(214,'default','updated',10,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:33:35','2022-06-17 10:33:35'),(215,'default','updated',10,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:33:40','2022-06-17 10:33:40'),(216,'default','updated',9,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:33:48','2022-06-17 10:33:48'),(217,'default','updated',2,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:34:04','2022-06-17 10:34:04'),(218,'default','updated',11,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:34:39','2022-06-17 10:34:39'),(219,'default','updated',11,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:34:42','2022-06-17 10:34:42'),(220,'default','updated',12,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:35:17','2022-06-17 10:35:17'),(221,'default','updated',12,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:35:21','2022-06-17 10:35:21'),(222,'default','updated',13,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:35:49','2022-06-17 10:35:49'),(223,'default','updated',13,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:36:02','2022-06-17 10:36:02'),(224,'default','updated',3,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:36:15','2022-06-17 10:36:15'),(225,'default','updated',14,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:36:51','2022-06-17 10:36:51'),(226,'default','updated',15,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:37:05','2022-06-17 10:37:05'),(227,'default','updated',16,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:37:19','2022-06-17 10:37:19'),(228,'default','updated',17,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:37:53','2022-06-17 10:37:53'),(229,'default','updated',18,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:38:21','2022-06-17 10:38:21'),(230,'default','updated',19,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:38:56','2022-06-17 10:38:56'),(231,'default','updated',20,'App\\Models\\ProductAtribute',NULL,1,'users','[]',NULL,'2022-06-17 10:39:32','2022-06-17 10:39:32'),(232,'default','updated',10,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-17 10:41:59','2022-06-17 10:41:59'),(233,'default','updated',9,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-17 10:43:01','2022-06-17 10:43:01'),(234,'default','updated',8,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-17 10:44:36','2022-06-17 10:44:36'),(235,'default','updated',7,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-17 10:45:27','2022-06-17 10:45:27'),(236,'default','updated',6,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-17 10:46:12','2022-06-17 10:46:12'),(237,'default','updated',6,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-17 10:46:32','2022-06-17 10:46:32'),(238,'default','updated',5,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-17 10:47:26','2022-06-17 10:47:26'),(239,'default','updated',5,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-17 10:47:34','2022-06-17 10:47:34'),(240,'default','updated',4,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-17 10:48:41','2022-06-17 10:48:41'),(241,'default','updated',3,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-17 10:49:39','2022-06-17 10:49:39'),(242,'default','updated',3,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-17 10:49:45','2022-06-17 10:49:45'),(243,'default','updated',2,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-17 10:50:34','2022-06-17 10:50:34'),(244,'default','updated',1,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-17 10:51:49','2022-06-17 10:51:49'),(245,'default','updated',10,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-17 12:24:27','2022-06-17 12:24:27'),(246,'default','updated',10,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-17 12:24:33','2022-06-17 12:24:33'),(247,'default','updated',3,'App\\Models\\Service',NULL,1,'users','[]',NULL,'2022-06-20 10:16:47','2022-06-20 10:16:47'),(248,'default','updated',5,'App\\Models\\Service',NULL,1,'users','[]',NULL,'2022-06-20 10:16:58','2022-06-20 10:16:58'),(249,'default','updated',5,'App\\Models\\Service',NULL,1,'users','[]',NULL,'2022-06-20 10:17:22','2022-06-20 10:17:22'),(250,'default','updated',10,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-21 13:16:59','2022-06-21 13:16:59'),(251,'default','updated',10,'App\\Models\\Product',NULL,1,'users','[]',NULL,'2022-06-21 13:17:04','2022-06-21 13:17:04'),(252,'default','updated',3,'App\\Models\\Brand',NULL,1,'users','[]',NULL,'2022-06-21 13:20:48','2022-06-21 13:20:48'),(253,'default','updated',3,'App\\Models\\Brand',NULL,1,'users','[]',NULL,'2022-06-21 13:21:09','2022-06-21 13:21:09');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `blockable_id` int unsigned DEFAULT NULL,
  `blockable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int unsigned NOT NULL,
  `content` json NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int unsigned DEFAULT NULL,
  `editor_name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blocks_blockable_type_blockable_id_index` (`blockable_type`,`blockable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` VALUES (6,1,'App\\Models\\Page',1,'{}','main-page',NULL,NULL,'default'),(7,1,'App\\Models\\Page',1,'{\"title\": {\"ro\": \"Servicii\"}}','main-row','main-row',6,'default'),(8,1,'App\\Models\\Page',1,'{\"url\": \"/servicii\", \"title\": {\"ro\": \"Vezi servicii\"}}','btn-item','btn-item',7,'default'),(9,1,'App\\Models\\Page',2,'{\"title\": {\"ro\": \"Produse\"}}','main-row','main-row',6,'default'),(10,1,'App\\Models\\Page',1,'{\"url\": \"/catalog\", \"title\": {\"ro\": \"Vezi catalog\"}}','btn-item','btn-item',9,'default'),(11,1,'App\\Models\\Page',1,'{\"url\": \"/catalog\", \"title\": {\"ro\": \"Vezi catalog\"}}','btn-item','blocks-1654159579330_btn-item',6,'default'),(34,2,'App\\Models\\Page',1,'{\"text\": {\"ro\": \"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis id sed ducimus officia reiciendis laboriosam distinctio beatae quaerat vero molestias. Nisi ut unde eligendi reprehenderit harum dolore alias aliquid est!</p><p><br></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis id sed ducimus officia reiciendis laboriosam distinctio beatae quaerat vero molestias. Nisi ut unde eligendi reprehenderit harum dolore alias aliquid est!</p><p><br></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis id sed ducimus officia reiciendis laboriosam distinctio beatae quaerat vero molestias. Nisi ut unde eligendi reprehenderit harum dolore alias aliquid est!</p>\"}, \"text1\": {\"ro\": \"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis id sed ducimus officia reiciendis laboriosam distinctio beatae quaerat vero molestias. Nisi ut unde eligendi reprehenderit harum dolore alias aliquid est!</p><p><br></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis id sed ducimus officia reiciendis laboriosam distinctio beatae quaerat vero molestias. Nisi ut unde eligendi reprehenderit harum dolore alias aliquid est!</p>\"}, \"title\": {\"ro\": \"Despre noi\"}}','section-about',NULL,NULL,'default'),(35,2,'App\\Models\\Page',2,'{\"title\": {\"ro\": \"Parteneri\"}}','section-partners',NULL,NULL,'default'),(36,2,'App\\Models\\Page',3,'{\"url\": \"https://www.youtube.com/watch?v=p9rgHcO26hg\"}','about-video',NULL,NULL,'default'),(37,5,'App\\Models\\Page',1,'{\"email\": {\"ro\": \"Adresa de email:\"}, \"phone\": {\"ro\": \"Telefon:\"}, \"title\": {\"ro\": \"Contacte\"}}','section-contacts',NULL,NULL,'default'),(38,5,'App\\Models\\Page',2,'{\"btn\": {\"ro\": \"Trimite\"}, \"name\": {\"ro\": \"Prenume\"}, \"text\": {\"ro\": \"Aflați completând formularul de contact.\"}, \"email\": {\"ro\": \"email\"}, \"phone\": {\"ro\": \"Telefon\"}, \"title\": {\"ro\": \"Aveti vreo intrebare?\"}, \"message\": {\"ro\": \"Mesaj\"}, \"subject\": {\"ro\": null}, \"surname\": {\"ro\": \"Nume de familie\"}}','contact-form',NULL,NULL,'default'),(39,5,'App\\Models\\Page',3,'{\"map_url\": \"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2718.037173045198!2d28.863457515982336!3d47.05912113362865!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40c97ce1dc300001%3A0xa5483b09d83c81ab!2seCurat!5e0!3m2!1sen!2s!4v1652958536910!5m2!1sen!2s\"}','contact-map',NULL,NULL,'default');
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_slugs`
--

DROP TABLE IF EXISTS `brand_slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand_slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `brand_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_brand_slugs_brand_id` (`brand_id`),
  KEY `brand_slugs_locale_index` (`locale`),
  CONSTRAINT `fk_brand_slugs_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_slugs`
--

LOCK TABLES `brand_slugs` WRITE;
/*!40000 ALTER TABLE `brand_slugs` DISABLE KEYS */;
INSERT INTO `brand_slugs` VALUES (1,1,NULL,NULL,'2022-06-10 07:29:47','domestos','ro',1),(2,1,NULL,NULL,NULL,'','ru',0),(3,1,NULL,NULL,NULL,'','en',0),(4,2,NULL,NULL,'2022-06-10 07:29:34','kolins','ro',0),(5,2,NULL,NULL,NULL,'','ru',0),(6,2,NULL,NULL,NULL,'','en',0),(7,2,NULL,NULL,'2022-06-10 07:29:34','kolin-s','ro',1),(8,3,NULL,NULL,'2022-06-21 13:21:09','cif','ro',1),(9,3,NULL,NULL,NULL,'','ru',0),(10,3,NULL,NULL,NULL,'','en',0),(11,3,NULL,NULL,'2022-06-21 13:21:09','ciff','ro',0);
/*!40000 ALTER TABLE `brand_slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_translations`
--

DROP TABLE IF EXISTS `brand_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `brand_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `locale` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brand_id_locale_unique` (`brand_id`,`locale`),
  KEY `brand_translations_locale_index` (`locale`),
  CONSTRAINT `fk_brand_translations_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_translations`
--

LOCK TABLES `brand_translations` WRITE;
/*!40000 ALTER TABLE `brand_translations` DISABLE KEYS */;
INSERT INTO `brand_translations` VALUES (1,1,NULL,'2022-06-10 07:27:06','2022-06-10 07:29:47','ro',1,'Domestos',NULL),(2,1,NULL,'2022-06-10 07:27:06','2022-06-10 07:29:47','ru',0,NULL,NULL),(3,1,NULL,'2022-06-10 07:27:06','2022-06-10 07:29:47','en',0,NULL,NULL),(4,2,NULL,'2022-06-10 07:27:29','2022-06-10 07:29:34','ro',1,'Kolin\'s',NULL),(5,2,NULL,'2022-06-10 07:27:29','2022-06-10 07:29:34','ru',0,NULL,NULL),(6,2,NULL,'2022-06-10 07:27:29','2022-06-10 07:29:34','en',0,NULL,NULL),(7,3,NULL,'2022-06-10 07:27:36','2022-06-21 13:21:09','ro',1,'Cif',NULL),(8,3,NULL,'2022-06-10 07:27:36','2022-06-21 13:21:09','ru',0,NULL,NULL),(9,3,NULL,'2022-06-10 07:27:36','2022-06-21 13:21:09','en',0,NULL,NULL);
/*!40000 ALTER TABLE `brand_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,NULL,'2022-06-10 07:27:06','2022-06-10 09:34:59',1),(2,NULL,'2022-06-10 07:27:29','2022-06-10 09:34:59',1),(3,NULL,'2022-06-10 07:27:36','2022-06-21 13:21:09',1);
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `position` int unsigned DEFAULT NULL,
  `_lft` int unsigned NOT NULL DEFAULT '0',
  `_rgt` int unsigned NOT NULL DEFAULT '0',
  `parent_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,'2022-06-01 10:45:32','2022-06-10 07:21:19',1,1,1,10,NULL),(2,NULL,'2022-06-01 10:46:14','2022-06-01 10:48:28',1,2,11,12,NULL),(3,NULL,'2022-06-01 10:47:25','2022-06-01 10:48:28',1,3,13,14,NULL),(4,NULL,'2022-06-01 10:48:17','2022-06-01 10:48:28',1,4,15,16,NULL),(5,NULL,'2022-06-10 07:19:09','2022-06-10 07:21:19',1,5,4,5,1),(6,NULL,'2022-06-10 07:19:41','2022-06-10 07:21:19',1,6,6,7,1),(7,NULL,'2022-06-10 07:19:58','2022-06-10 07:21:19',1,7,8,9,1),(8,NULL,'2022-06-10 07:20:18','2022-06-10 07:21:19',1,8,2,3,1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_slugs`
--

DROP TABLE IF EXISTS `category_slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category_slugs_category_id` (`category_id`),
  KEY `category_slugs_locale_index` (`locale`),
  CONSTRAINT `fk_category_slugs_category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_slugs`
--

LOCK TABLES `category_slugs` WRITE;
/*!40000 ALTER TABLE `category_slugs` DISABLE KEYS */;
INSERT INTO `category_slugs` VALUES (1,1,NULL,NULL,'2022-06-01 10:45:32','detergenti','ro',1),(2,1,NULL,NULL,'2022-06-01 10:45:32','moyushhie-sredstva','ru',0),(3,1,NULL,NULL,'2022-06-01 10:45:32','detergents','en',0),(4,1,NULL,NULL,NULL,'moyushie-sredstva','ru',0),(5,2,NULL,NULL,'2022-06-01 10:46:14','produse-din-hartie','ro',1),(6,2,NULL,NULL,'2022-06-01 10:46:14','tovary-iz-bumagi','ru',0),(7,2,NULL,NULL,'2022-06-01 10:46:14','paper-goods','en',0),(8,3,NULL,NULL,'2022-06-01 10:47:25','dozatoare-si-distribuitoare','ro',1),(9,3,NULL,NULL,'2022-06-01 10:47:25','dozatory-i-dispensery','ru',0),(10,3,NULL,NULL,'2022-06-01 10:47:25','dosers-and-dispensers','en',0),(11,4,NULL,NULL,'2022-06-01 10:48:17','echipament-profesional','ro',1),(12,4,NULL,NULL,'2022-06-01 10:48:17','professionalnoe-oborudovanie','ru',0),(13,4,NULL,NULL,'2022-06-01 10:48:17','professional-equipment','en',0),(14,5,NULL,NULL,'2022-06-10 07:20:38','bucatarie','ro',1),(15,5,NULL,NULL,NULL,'','ru',0),(16,5,NULL,NULL,NULL,'','en',0),(17,6,NULL,NULL,'2022-06-10 07:20:48','spalarea-manuala-a-vaselor','ro',1),(18,6,NULL,NULL,NULL,'','ru',0),(19,6,NULL,NULL,NULL,'','en',0),(20,7,NULL,NULL,'2022-06-10 07:20:58','gratare-cuptoare-aragaz','ro',1),(21,7,NULL,NULL,NULL,'','ru',0),(22,7,NULL,NULL,NULL,'','en',0),(23,8,NULL,NULL,'2022-06-10 07:20:25','bai-toalete','ro',1),(24,8,NULL,NULL,NULL,'','ru',0),(25,8,NULL,NULL,NULL,'','en',0);
/*!40000 ALTER TABLE `category_slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_translations`
--

DROP TABLE IF EXISTS `category_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `locale` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_id_locale_unique` (`category_id`,`locale`),
  KEY `category_translations_locale_index` (`locale`),
  CONSTRAINT `fk_category_translations_category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_translations`
--

LOCK TABLES `category_translations` WRITE;
/*!40000 ALTER TABLE `category_translations` DISABLE KEYS */;
INSERT INTO `category_translations` VALUES (1,1,NULL,'2022-06-01 10:45:32','2022-06-01 10:45:32','ro',1,'Detergenți',NULL),(2,1,NULL,'2022-06-01 10:45:32','2022-06-01 10:45:32','ru',0,'Моющие средства',NULL),(3,1,NULL,'2022-06-01 10:45:32','2022-06-01 10:45:32','en',0,'Detergents',NULL),(4,2,NULL,'2022-06-01 10:46:14','2022-06-01 10:46:14','ro',1,'Produse din hârtie',NULL),(5,2,NULL,'2022-06-01 10:46:14','2022-06-01 10:46:14','ru',0,'Товары из бумаги',NULL),(6,2,NULL,'2022-06-01 10:46:14','2022-06-01 10:46:14','en',0,'Paper goods',NULL),(7,3,NULL,'2022-06-01 10:47:25','2022-06-01 10:47:25','ro',1,'Dozatoare și distribuitoare',NULL),(8,3,NULL,'2022-06-01 10:47:25','2022-06-01 10:47:25','ru',0,'Дозаторы и диспенсеры',NULL),(9,3,NULL,'2022-06-01 10:47:25','2022-06-01 10:47:25','en',0,'Dosers and dispensers',NULL),(10,4,NULL,'2022-06-01 10:48:17','2022-06-01 10:48:17','ro',1,'Echipament profesional',NULL),(11,4,NULL,'2022-06-01 10:48:17','2022-06-01 10:48:17','ru',0,'Профессиональное оборудование',NULL),(12,4,NULL,'2022-06-01 10:48:17','2022-06-01 10:48:17','en',0,'Professional equipment',NULL),(13,5,NULL,'2022-06-10 07:19:09','2022-06-10 07:20:38','ro',1,'Bucatarie',NULL),(14,5,NULL,'2022-06-10 07:19:09','2022-06-10 07:20:38','ru',0,NULL,NULL),(15,5,NULL,'2022-06-10 07:19:09','2022-06-10 07:20:38','en',0,NULL,NULL),(16,6,NULL,'2022-06-10 07:19:41','2022-06-10 07:20:48','ro',1,'Spălarea manuală a vaselor',NULL),(17,6,NULL,'2022-06-10 07:19:41','2022-06-10 07:20:48','ru',0,NULL,NULL),(18,6,NULL,'2022-06-10 07:19:41','2022-06-10 07:20:48','en',0,NULL,NULL),(19,7,NULL,'2022-06-10 07:19:58','2022-06-10 07:20:58','ro',1,'Gratare, cuptoare, aragaz',NULL),(20,7,NULL,'2022-06-10 07:19:58','2022-06-10 07:20:58','ru',0,NULL,NULL),(21,7,NULL,'2022-06-10 07:19:58','2022-06-10 07:20:58','en',0,NULL,NULL),(22,8,NULL,'2022-06-10 07:20:18','2022-06-10 07:20:25','ro',1,'Băi, toalete',NULL),(23,8,NULL,'2022-06-10 07:20:18','2022-06-10 07:20:25','ru',0,NULL,NULL),(24,8,NULL,'2022-06-10 07:20:18','2022-06-10 07:20:25','en',0,NULL,NULL);
/*!40000 ALTER TABLE `category_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int unsigned DEFAULT NULL,
  `surname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,NULL,'2022-06-02 11:49:15','2022-06-02 11:49:15',0,'Kato Potter','unread','Quia aut voluptatem','daboxidane@mailinator.com','+1 (531) 452-7177',1,'Gilliam'),(2,NULL,'2022-06-20 08:22:35','2022-06-20 08:22:35',0,'Kenneth Santiago','unread','Aut dolor fugit nem','wyzedis@mailinator.com','+1 (584) 573-9631',2,'Warner');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `featured_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bucket_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int unsigned NOT NULL,
  `starred` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `features_unique` (`featured_id`,`featured_type`,`bucket_key`),
  KEY `features_bucket_key_index` (`bucket_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileables`
--

DROP TABLE IF EXISTS `fileables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fileables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `file_id` bigint unsigned NOT NULL,
  `fileable_id` bigint unsigned DEFAULT NULL,
  `fileable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_files_file_id` (`file_id`),
  KEY `fileables_fileable_type_fileable_id_index` (`fileable_type`,`fileable_id`),
  KEY `fileables_locale_index` (`locale`),
  CONSTRAINT `fk_files_file_id` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileables`
--

LOCK TABLES `fileables` WRITE;
/*!40000 ALTER TABLE `fileables` DISABLE KEYS */;
/*!40000 ALTER TABLE `fileables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `uuid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` text COLLATE utf8mb4_unicode_ci,
  `size` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mediables`
--

DROP TABLE IF EXISTS `mediables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mediables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mediable_id` bigint unsigned DEFAULT NULL,
  `mediable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` bigint unsigned NOT NULL,
  `crop_x` int DEFAULT NULL,
  `crop_y` int DEFAULT NULL,
  `crop_w` int DEFAULT NULL,
  `crop_h` int DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lqip_data` text COLLATE utf8mb4_unicode_ci,
  `ratio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadatas` json NOT NULL,
  `locale` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ro',
  PRIMARY KEY (`id`),
  KEY `fk_mediables_media_id` (`media_id`),
  KEY `mediables_mediable_type_mediable_id_index` (`mediable_type`,`mediable_id`),
  KEY `mediables_locale_index` (`locale`),
  CONSTRAINT `fk_mediables_media_id` FOREIGN KEY (`media_id`) REFERENCES `medias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=469 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mediables`
--

LOCK TABLES `mediables` WRITE;
/*!40000 ALTER TABLE `mediables` DISABLE KEYS */;
INSERT INTO `mediables` VALUES (5,'2022-06-02 06:46:56','2022-06-02 06:46:56',NULL,6,'blocks',2,0,0,1346,938,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(6,'2022-06-02 06:46:56','2022-06-02 06:46:56',NULL,6,'blocks',1,0,0,1613,1046,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(7,'2022-06-02 06:46:56','2022-06-02 06:46:56',NULL,7,'blocks',3,0,0,594,406,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(8,'2022-06-02 06:46:56','2022-06-02 06:46:56',NULL,7,'blocks',3,0,63,594,334,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(9,'2022-06-02 06:46:56','2022-06-02 06:46:56',NULL,7,'blocks',3,0,0,540,406,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(10,'2022-06-02 06:46:56','2022-06-02 06:46:56',NULL,7,'blocks',3,0,0,540,406,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(11,'2022-06-02 06:46:56','2022-06-02 06:46:56',NULL,9,'blocks',4,0,0,637,469,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(12,'2022-06-02 06:46:56','2022-06-02 06:46:56',NULL,9,'blocks',4,0,102,637,357,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(13,'2022-06-02 06:46:56','2022-06-02 06:46:56',NULL,9,'blocks',4,0,0,624,469,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(14,'2022-06-02 06:46:56','2022-06-02 06:46:56',NULL,9,'blocks',4,0,0,624,469,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(131,'2022-06-02 09:28:42','2022-06-02 09:28:42',NULL,1,'App\\Models\\News',14,0,8,413,232,'cover','default',NULL,'default','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(132,'2022-06-02 09:28:42','2022-06-02 09:28:42',NULL,1,'App\\Models\\News',14,8,0,240,240,'cover','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(133,'2022-06-02 09:28:42','2022-06-02 09:28:42',NULL,1,'App\\Models\\News',14,0,0,413,240,'cover','flexible',NULL,'free','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(134,'2022-06-02 09:28:42','2022-06-02 09:28:42',NULL,1,'App\\Models\\News',15,0,0,413,240,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(135,'2022-06-02 09:28:42','2022-06-02 09:28:42',NULL,1,'App\\Models\\News',16,0,0,413,240,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(136,'2022-06-02 09:34:31','2022-06-02 09:34:31',NULL,7,'App\\Models\\News',17,0,0,413,240,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(137,'2022-06-02 09:34:31','2022-06-02 09:34:31',NULL,7,'App\\Models\\News',16,0,0,413,240,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(138,'2022-06-02 09:34:31','2022-06-02 09:34:31',NULL,7,'App\\Models\\News',15,0,8,413,232,'cover','default',NULL,'default','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(139,'2022-06-02 09:34:31','2022-06-02 09:34:31',NULL,7,'App\\Models\\News',15,112,0,240,240,'cover','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(140,'2022-06-02 09:34:31','2022-06-02 09:34:31',NULL,7,'App\\Models\\News',15,0,0,413,240,'cover','flexible',NULL,'free','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(141,'2022-06-02 09:35:02','2022-06-02 09:35:02',NULL,6,'App\\Models\\News',14,0,0,413,240,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(142,'2022-06-02 09:35:02','2022-06-02 09:35:02',NULL,6,'App\\Models\\News',15,0,0,413,240,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(143,'2022-06-02 09:35:02','2022-06-02 09:35:02',NULL,6,'App\\Models\\News',17,0,8,413,232,'cover','default',NULL,'default','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(144,'2022-06-02 09:35:02','2022-06-02 09:35:02',NULL,6,'App\\Models\\News',17,8,0,240,240,'cover','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(145,'2022-06-02 09:35:02','2022-06-02 09:35:02',NULL,6,'App\\Models\\News',17,0,0,413,240,'cover','flexible',NULL,'free','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(146,'2022-06-02 09:35:41','2022-06-02 09:35:41',NULL,5,'App\\Models\\News',14,0,0,413,240,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(147,'2022-06-02 09:35:41','2022-06-02 09:35:41',NULL,5,'App\\Models\\News',17,0,0,413,240,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(148,'2022-06-02 09:35:41','2022-06-02 09:35:41',NULL,5,'App\\Models\\News',16,0,8,413,232,'cover','default',NULL,'default','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(149,'2022-06-02 09:35:41','2022-06-02 09:35:41',NULL,5,'App\\Models\\News',16,8,0,240,240,'cover','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(150,'2022-06-02 09:35:41','2022-06-02 09:35:41',NULL,5,'App\\Models\\News',16,0,0,413,240,'cover','flexible',NULL,'free','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(151,'2022-06-02 09:36:32','2022-06-02 09:36:32',NULL,4,'App\\Models\\News',13,0,0,630,300,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(152,'2022-06-02 09:36:32','2022-06-02 09:36:32',NULL,4,'App\\Models\\News',14,0,0,413,240,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(153,'2022-06-02 09:36:32','2022-06-02 09:36:32',NULL,4,'App\\Models\\News',15,0,8,413,232,'cover','default',NULL,'default','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(154,'2022-06-02 09:36:32','2022-06-02 09:36:32',NULL,4,'App\\Models\\News',15,112,0,240,240,'cover','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(155,'2022-06-02 09:36:32','2022-06-02 09:36:32',NULL,4,'App\\Models\\News',15,0,0,413,240,'cover','flexible',NULL,'free','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(156,'2022-06-02 09:37:13','2022-06-02 09:37:13',NULL,3,'App\\Models\\News',13,0,0,630,300,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(157,'2022-06-02 09:37:13','2022-06-02 09:37:13',NULL,3,'App\\Models\\News',17,0,0,413,240,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(158,'2022-06-02 09:37:13','2022-06-02 09:37:13',NULL,3,'App\\Models\\News',17,0,8,413,232,'cover','default',NULL,'default','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(159,'2022-06-02 09:37:13','2022-06-02 09:37:13',NULL,3,'App\\Models\\News',17,8,0,240,240,'cover','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(160,'2022-06-02 09:37:13','2022-06-02 09:37:13',NULL,3,'App\\Models\\News',17,0,0,413,240,'cover','flexible',NULL,'free','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(161,'2022-06-02 09:37:56','2022-06-02 09:37:56',NULL,2,'App\\Models\\News',14,0,0,413,240,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(162,'2022-06-02 09:37:56','2022-06-02 09:37:56',NULL,2,'App\\Models\\News',17,0,0,413,240,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(163,'2022-06-02 09:37:56','2022-06-02 09:37:56',NULL,2,'App\\Models\\News',16,0,8,413,232,'cover','default',NULL,'default','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(164,'2022-06-02 09:37:56','2022-06-02 09:37:56',NULL,2,'App\\Models\\News',16,8,0,240,240,'cover','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(165,'2022-06-02 09:37:56','2022-06-02 09:37:56',NULL,2,'App\\Models\\News',16,0,0,413,240,'cover','flexible',NULL,'free','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(206,'2022-06-03 07:12:37','2022-06-03 07:12:37',NULL,1,'App\\Models\\ServiceCategory',20,0,0,0,0,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(207,'2022-06-03 07:12:37','2022-06-03 07:12:37',NULL,1,'App\\Models\\ServiceCategory',20,0,0,0,0,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(208,'2022-06-03 07:12:37','2022-06-03 07:12:37',NULL,1,'App\\Models\\ServiceCategory',20,0,0,0,0,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(209,'2022-06-03 07:12:37','2022-06-03 07:12:37',NULL,1,'App\\Models\\ServiceCategory',20,0,0,0,0,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(210,'2022-06-03 07:13:15','2022-06-03 07:13:15',NULL,2,'App\\Models\\ServiceCategory',21,0,0,0,0,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(211,'2022-06-03 07:13:15','2022-06-03 07:13:15',NULL,2,'App\\Models\\ServiceCategory',21,0,0,0,0,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(212,'2022-06-03 07:13:15','2022-06-03 07:13:15',NULL,2,'App\\Models\\ServiceCategory',21,0,0,0,0,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(213,'2022-06-03 07:13:16','2022-06-03 07:13:16',NULL,2,'App\\Models\\ServiceCategory',21,0,0,0,0,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(214,'2022-06-03 07:13:33','2022-06-03 07:13:33',NULL,3,'App\\Models\\ServiceCategory',22,0,0,0,0,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(215,'2022-06-03 07:13:33','2022-06-03 07:13:33',NULL,3,'App\\Models\\ServiceCategory',22,0,0,0,0,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(216,'2022-06-03 07:13:33','2022-06-03 07:13:33',NULL,3,'App\\Models\\ServiceCategory',22,0,0,0,0,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(217,'2022-06-03 07:13:33','2022-06-03 07:13:33',NULL,3,'App\\Models\\ServiceCategory',22,0,0,0,0,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(218,'2022-06-03 07:13:46','2022-06-03 07:13:46',NULL,4,'App\\Models\\ServiceCategory',23,0,0,0,0,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(219,'2022-06-03 07:13:46','2022-06-03 07:13:46',NULL,4,'App\\Models\\ServiceCategory',23,0,0,0,0,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(220,'2022-06-03 07:13:46','2022-06-03 07:13:46',NULL,4,'App\\Models\\ServiceCategory',23,0,0,0,0,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(221,'2022-06-03 07:13:46','2022-06-03 07:13:46',NULL,4,'App\\Models\\ServiceCategory',23,0,0,0,0,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(222,'2022-06-03 07:14:01','2022-06-03 07:14:01',NULL,5,'App\\Models\\ServiceCategory',24,0,0,0,0,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(223,'2022-06-03 07:14:01','2022-06-03 07:14:01',NULL,5,'App\\Models\\ServiceCategory',24,0,0,0,0,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(224,'2022-06-03 07:14:01','2022-06-03 07:14:01',NULL,5,'App\\Models\\ServiceCategory',24,0,0,0,0,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(225,'2022-06-03 07:14:01','2022-06-03 07:14:01',NULL,5,'App\\Models\\ServiceCategory',24,0,0,0,0,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(298,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,34,'blocks',5,0,0,467,379,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(299,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,34,'blocks',5,0,106,467,262,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(300,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,34,'blocks',5,0,11,467,350,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(301,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,34,'blocks',5,0,11,467,350,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(302,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,34,'blocks',7,0,0,468,387,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(303,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',6,0,0,132,69,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(304,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',6,8,0,122,69,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(305,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',6,40,0,92,69,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(306,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',6,40,0,92,69,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(307,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',8,0,0,136,86,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(308,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',8,0,8,136,76,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(309,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',8,0,0,114,86,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(310,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',8,0,0,114,86,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(311,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',9,0,0,147,79,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(312,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',9,0,0,140,79,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(313,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',9,32,0,105,79,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(314,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',9,32,0,105,79,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(315,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',10,0,0,150,47,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(316,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',10,32,0,83,47,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(317,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',10,24,0,62,47,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(318,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',10,24,0,62,47,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(319,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',11,0,0,123,55,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(320,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',11,24,0,97,55,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(321,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',11,48,0,73,55,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(322,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',11,48,0,73,55,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(323,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',12,0,0,169,66,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(324,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',12,24,0,117,66,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(325,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',12,24,0,88,66,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(326,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,35,'blocks',12,24,0,88,66,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(327,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,36,'blocks',13,0,0,630,300,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(328,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,36,'blocks',13,9,0,532,300,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(329,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,36,'blocks',13,18,0,399,300,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(330,'2022-06-08 05:47:08','2022-06-08 05:47:08',NULL,36,'blocks',13,18,0,399,300,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(331,'2022-06-08 05:47:39','2022-06-08 05:47:39',NULL,37,'blocks',18,0,0,513,460,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(332,'2022-06-08 05:47:39','2022-06-08 05:47:39',NULL,37,'blocks',18,0,158,513,289,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(333,'2022-06-08 05:47:39','2022-06-08 05:47:39',NULL,37,'blocks',18,0,14,513,384,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(334,'2022-06-08 05:47:39','2022-06-08 05:47:39',NULL,37,'blocks',18,0,14,513,384,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(335,'2022-06-08 05:47:39','2022-06-08 05:47:39',NULL,38,'blocks',19,0,0,1919,507,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(336,'2022-06-08 05:47:39','2022-06-08 05:47:39',NULL,38,'blocks',19,427,0,899,507,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(337,'2022-06-08 05:47:39','2022-06-08 05:47:39',NULL,38,'blocks',19,316,0,675,507,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(338,'2022-06-08 05:47:39','2022-06-08 05:47:39',NULL,38,'blocks',19,316,0,675,507,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(354,'2022-06-10 07:29:34','2022-06-10 07:29:34',NULL,2,'App\\Models\\Brand',31,0,0,40,37,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(355,'2022-06-10 07:29:34','2022-06-10 07:29:34',NULL,2,'App\\Models\\Brand',31,0,0,40,22,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(356,'2022-06-10 07:29:34','2022-06-10 07:29:34',NULL,2,'App\\Models\\Brand',31,0,0,40,30,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(357,'2022-06-10 07:29:34','2022-06-10 07:29:34',NULL,2,'App\\Models\\Brand',31,0,0,40,30,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(358,'2022-06-10 07:29:47','2022-06-10 07:29:47',NULL,1,'App\\Models\\Brand',30,0,0,40,37,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(359,'2022-06-10 07:29:47','2022-06-10 07:29:47',NULL,1,'App\\Models\\Brand',30,0,8,40,22,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(360,'2022-06-10 07:29:47','2022-06-10 07:29:47',NULL,1,'App\\Models\\Brand',30,0,0,40,30,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(361,'2022-06-10 07:29:47','2022-06-10 07:29:47',NULL,1,'App\\Models\\Brand',30,0,0,40,30,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(405,'2022-06-17 10:43:01','2022-06-17 10:43:01',NULL,9,'App\\Models\\Product',26,0,0,199,179,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(406,'2022-06-17 10:44:36','2022-06-17 10:44:36',NULL,8,'App\\Models\\Product',27,0,0,199,179,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(407,'2022-06-17 10:45:27','2022-06-17 10:45:27',NULL,7,'App\\Models\\Product',28,0,0,199,179,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(409,'2022-06-17 10:46:32','2022-06-17 10:46:32',NULL,6,'App\\Models\\Product',29,0,0,199,179,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(411,'2022-06-17 10:47:34','2022-06-17 10:47:34',NULL,5,'App\\Models\\Product',25,0,0,199,179,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(412,'2022-06-17 10:48:41','2022-06-17 10:48:41',NULL,4,'App\\Models\\Product',29,0,0,199,179,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(414,'2022-06-17 10:49:45','2022-06-17 10:49:45',NULL,3,'App\\Models\\Product',28,0,0,199,179,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(415,'2022-06-17 10:50:34','2022-06-17 10:50:34',NULL,2,'App\\Models\\Product',28,0,0,199,179,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(416,'2022-06-17 10:51:49','2022-06-17 10:51:49',NULL,1,'App\\Models\\Product',26,0,0,199,179,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(419,'2022-06-20 10:16:47','2022-06-20 10:16:47',NULL,3,'App\\Models\\Service',15,0,0,413,240,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(420,'2022-06-20 10:16:47','2022-06-20 10:16:47',NULL,3,'App\\Models\\Service',15,0,8,413,232,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(421,'2022-06-20 10:16:47','2022-06-20 10:16:47',NULL,3,'App\\Models\\Service',15,48,0,320,240,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(422,'2022-06-20 10:16:47','2022-06-20 10:16:47',NULL,3,'App\\Models\\Service',15,48,0,320,240,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(423,'2022-06-20 10:16:47','2022-06-20 10:16:47',NULL,3,'App\\Models\\Service',14,0,0,413,240,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(424,'2022-06-20 10:16:47','2022-06-20 10:16:47',NULL,3,'App\\Models\\Service',14,0,8,413,232,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(425,'2022-06-20 10:16:47','2022-06-20 10:16:47',NULL,3,'App\\Models\\Service',14,0,0,320,240,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(426,'2022-06-20 10:16:47','2022-06-20 10:16:47',NULL,3,'App\\Models\\Service',14,0,0,320,240,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(427,'2022-06-20 10:16:47','2022-06-20 10:16:47',NULL,3,'App\\Models\\Service',13,0,0,630,300,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(428,'2022-06-20 10:16:47','2022-06-20 10:16:47',NULL,3,'App\\Models\\Service',13,9,0,532,300,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(429,'2022-06-20 10:16:47','2022-06-20 10:16:47',NULL,3,'App\\Models\\Service',13,18,0,399,300,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(430,'2022-06-20 10:16:47','2022-06-20 10:16:47',NULL,3,'App\\Models\\Service',13,18,0,399,300,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(431,'2022-06-20 10:16:47','2022-06-20 10:16:47',NULL,3,'App\\Models\\Service',16,0,0,413,240,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(432,'2022-06-20 10:16:47','2022-06-20 10:16:47',NULL,3,'App\\Models\\Service',16,0,8,413,232,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(433,'2022-06-20 10:16:47','2022-06-20 10:16:47',NULL,3,'App\\Models\\Service',16,8,0,320,240,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(434,'2022-06-20 10:16:47','2022-06-20 10:16:47',NULL,3,'App\\Models\\Service',16,8,0,320,240,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(447,'2022-06-20 10:17:22','2022-06-20 10:17:22',NULL,5,'App\\Models\\Service',13,0,0,630,300,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(448,'2022-06-20 10:17:22','2022-06-20 10:17:22',NULL,5,'App\\Models\\Service',13,9,0,532,300,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(449,'2022-06-20 10:17:22','2022-06-20 10:17:22',NULL,5,'App\\Models\\Service',13,18,0,399,300,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(450,'2022-06-20 10:17:22','2022-06-20 10:17:22',NULL,5,'App\\Models\\Service',13,18,0,399,300,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(451,'2022-06-20 10:17:22','2022-06-20 10:17:22',NULL,5,'App\\Models\\Service',17,0,0,413,240,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(452,'2022-06-20 10:17:22','2022-06-20 10:17:22',NULL,5,'App\\Models\\Service',17,0,8,413,232,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(453,'2022-06-20 10:17:22','2022-06-20 10:17:22',NULL,5,'App\\Models\\Service',17,8,0,320,240,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(454,'2022-06-20 10:17:22','2022-06-20 10:17:22',NULL,5,'App\\Models\\Service',17,8,0,320,240,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(455,'2022-06-20 10:17:22','2022-06-20 10:17:22',NULL,5,'App\\Models\\Service',16,0,0,413,240,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(456,'2022-06-20 10:17:22','2022-06-20 10:17:22',NULL,5,'App\\Models\\Service',16,0,8,413,232,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(457,'2022-06-20 10:17:22','2022-06-20 10:17:22',NULL,5,'App\\Models\\Service',16,8,0,320,240,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(458,'2022-06-20 10:17:22','2022-06-20 10:17:22',NULL,5,'App\\Models\\Service',16,8,0,320,240,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(460,'2022-06-21 13:17:04','2022-06-21 13:17:04',NULL,10,'App\\Models\\Product',25,0,0,199,179,'slideshow','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(465,'2022-06-21 13:21:09','2022-06-21 13:21:09',NULL,3,'App\\Models\\Brand',32,0,0,40,37,'image','no_crop',NULL,'no_crop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(466,'2022-06-21 13:21:09','2022-06-21 13:21:09',NULL,3,'App\\Models\\Brand',32,0,0,40,22,'image','desktop',NULL,'desktop','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(467,'2022-06-21 13:21:09','2022-06-21 13:21:09',NULL,3,'App\\Models\\Brand',32,0,0,40,30,'image','tablet',NULL,'tablet','{\"video\": null, \"altText\": null, \"caption\": null}','en'),(468,'2022-06-21 13:21:09','2022-06-21 13:21:09',NULL,3,'App\\Models\\Brand',32,0,0,40,30,'image','mobile',NULL,'mobile','{\"video\": null, \"altText\": null, \"caption\": null}','en');
/*!40000 ALTER TABLE `mediables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medias`
--

DROP TABLE IF EXISTS `medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medias` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `uuid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_text` text COLLATE utf8mb4_unicode_ci,
  `width` int unsigned NOT NULL,
  `height` int unsigned NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci,
  `filename` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medias`
--

LOCK TABLES `medias` WRITE;
/*!40000 ALTER TABLE `medias` DISABLE KEYS */;
INSERT INTO `medias` VALUES (1,'2022-06-02 06:42:29','2022-06-02 06:42:29',NULL,'9161784d-85ee-482e-8961-1aa8b95d1e9a/bg-blue.png','Bg Blue',1614,1046,NULL,'bg-blue.png'),(2,'2022-06-02 06:42:29','2022-06-02 06:42:29',NULL,'9161784d-85ee-482e-8961-1aa8b95d1e9a/bg-orange.png','Bg Orange',1349,939,NULL,'bg-orange.png'),(3,'2022-06-02 06:45:56','2022-06-02 06:45:56',NULL,'260b3dfa-6e35-4665-b5be-6670c2ffdad2/main-services.png','Main Services',596,406,NULL,'main-services.png'),(4,'2022-06-02 06:45:56','2022-06-02 06:45:56',NULL,'260b3dfa-6e35-4665-b5be-6670c2ffdad2/mai-products.png','Mai Products',638,469,NULL,'mai-products.png'),(5,'2022-06-02 07:48:48','2022-06-02 07:48:48',NULL,'6e287ae4-2a48-4390-89cd-c6763317a157/01.png','01',468,379,NULL,'01.png'),(6,'2022-06-02 07:48:48','2022-06-02 07:48:48',NULL,'6e287ae4-2a48-4390-89cd-c6763317a157/l1.png','L1',132,69,NULL,'l1.png'),(7,'2022-06-02 07:48:48','2022-06-02 07:48:48',NULL,'6e287ae4-2a48-4390-89cd-c6763317a157/02.png','02',470,387,NULL,'02.png'),(8,'2022-06-02 07:48:48','2022-06-02 07:48:48',NULL,'6e287ae4-2a48-4390-89cd-c6763317a157/l2.png','L2',136,86,NULL,'l2.png'),(9,'2022-06-02 07:48:48','2022-06-02 07:48:48',NULL,'6e287ae4-2a48-4390-89cd-c6763317a157/l3.png','L3',147,79,NULL,'l3.png'),(10,'2022-06-02 07:48:48','2022-06-02 07:48:48',NULL,'6e287ae4-2a48-4390-89cd-c6763317a157/l4.png','L4',150,47,NULL,'l4.png'),(11,'2022-06-02 07:48:48','2022-06-02 07:48:48',NULL,'6e287ae4-2a48-4390-89cd-c6763317a157/l5.png','L5',123,55,NULL,'l5.png'),(12,'2022-06-02 07:48:48','2022-06-02 07:48:48',NULL,'6e287ae4-2a48-4390-89cd-c6763317a157/l6.png','L6',169,66,NULL,'l6.png'),(13,'2022-06-02 08:14:15','2022-06-02 08:14:15',NULL,'ecb5f2af-a718-4a6e-99c9-cf920dab7bbb/video.png','Video',631,300,NULL,'video.png'),(14,'2022-06-02 09:27:14','2022-06-02 09:27:14',NULL,'4aece5c8-5552-4686-bb60-34d06158fc03/01.png','01',413,240,NULL,'01.png'),(15,'2022-06-02 09:27:14','2022-06-02 09:27:14',NULL,'4aece5c8-5552-4686-bb60-34d06158fc03/02.png','02',413,240,NULL,'02.png'),(16,'2022-06-02 09:27:14','2022-06-02 09:27:14',NULL,'4aece5c8-5552-4686-bb60-34d06158fc03/03.png','03',413,240,NULL,'03.png'),(17,'2022-06-02 09:27:14','2022-06-02 09:27:14',NULL,'4aece5c8-5552-4686-bb60-34d06158fc03/04.png','04',413,240,NULL,'04.png'),(18,'2022-06-02 11:22:48','2022-06-02 11:22:48',NULL,'b21c99fe-5ff0-4a30-88a9-b183baa7f5f4/contacts-img.png','Contacts Img',515,460,NULL,'contacts-img.png'),(19,'2022-06-02 11:32:53','2022-06-02 11:32:53',NULL,'d454b9a5-fbd4-434f-b929-0c5ed97bf2e8/bg-form.png','Bg Form',1920,507,NULL,'bg-form.png'),(20,'2022-06-03 07:05:52','2022-06-03 07:05:52',NULL,'19d649b8-0d91-4641-8c9e-09d312b6bf68/01.svg','01',0,0,NULL,'01.svg'),(21,'2022-06-03 07:06:52','2022-06-03 07:06:52',NULL,'19d649b8-0d91-4641-8c9e-09d312b6bf68/02.svg','02',0,0,NULL,'02.svg'),(22,'2022-06-03 07:07:52','2022-06-03 07:07:52',NULL,'19d649b8-0d91-4641-8c9e-09d312b6bf68/03.svg','03',0,0,NULL,'03.svg'),(23,'2022-06-03 07:08:52','2022-06-03 07:08:52',NULL,'19d649b8-0d91-4641-8c9e-09d312b6bf68/04.svg','04',0,0,NULL,'04.svg'),(24,'2022-06-03 07:09:52','2022-06-03 07:09:52',NULL,'19d649b8-0d91-4641-8c9e-09d312b6bf68/05.svg','05',0,0,NULL,'05.svg'),(25,'2022-06-08 10:15:07','2022-06-08 10:15:07',NULL,'886ddde4-fb7a-48a5-b817-0404b8e4cbe3/01.png','01',199,179,NULL,'01.png'),(26,'2022-06-08 10:15:17','2022-06-08 10:15:17',NULL,'07c9f00f-50a5-4404-806f-aec01e301c69/02.png','02',199,179,NULL,'02.png'),(27,'2022-06-08 10:15:17','2022-06-08 10:15:17',NULL,'07c9f00f-50a5-4404-806f-aec01e301c69/03.png','03',199,179,NULL,'03.png'),(28,'2022-06-08 10:15:17','2022-06-08 10:15:17',NULL,'07c9f00f-50a5-4404-806f-aec01e301c69/04.png','04',199,179,NULL,'04.png'),(29,'2022-06-08 10:15:17','2022-06-08 10:15:17',NULL,'07c9f00f-50a5-4404-806f-aec01e301c69/05.png','05',199,179,NULL,'05.png'),(30,'2022-06-10 07:29:13','2022-06-10 07:29:13',NULL,'602b9ec9-77df-43cb-a1c8-18a39da995e2/brand1.png','Brand1',40,37,NULL,'brand1.png'),(31,'2022-06-10 07:29:13','2022-06-10 07:29:13',NULL,'602b9ec9-77df-43cb-a1c8-18a39da995e2/brand2.png','Brand2',40,37,NULL,'brand2.png'),(32,'2022-06-10 07:29:13','2022-06-10 07:29:13',NULL,'602b9ec9-77df-43cb-a1c8-18a39da995e2/brand3.png','Brand3',40,37,NULL,'brand3.png');
/*!40000 ALTER TABLE `medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_translations`
--

DROP TABLE IF EXISTS `menu_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `locale` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_id_locale_unique` (`menu_id`,`locale`),
  KEY `menu_translations_locale_index` (`locale`),
  CONSTRAINT `fk_menu_translations_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_translations`
--

LOCK TABLES `menu_translations` WRITE;
/*!40000 ALTER TABLE `menu_translations` DISABLE KEYS */;
INSERT INTO `menu_translations` VALUES (1,1,NULL,'2022-06-01 09:58:38','2022-06-02 08:47:29','ro',1,'Meniu',NULL),(2,1,NULL,'2022-06-01 09:58:38','2022-06-02 08:47:29','ru',0,'Меню',NULL),(3,1,NULL,'2022-06-01 09:58:38','2022-06-02 08:47:29','en',0,'Menu',NULL),(4,2,NULL,'2022-06-01 10:32:30','2022-06-01 10:49:21','ro',1,'Produse',NULL),(5,2,NULL,'2022-06-01 10:32:30','2022-06-01 10:49:21','ru',0,'Товары',NULL),(6,2,NULL,'2022-06-01 10:32:30','2022-06-01 10:49:21','en',0,'Products',NULL);
/*!40000 ALTER TABLE `menu_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `position` int unsigned DEFAULT NULL,
  `_lft` int unsigned NOT NULL DEFAULT '0',
  `_rgt` int unsigned NOT NULL DEFAULT '0',
  `parent_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menus__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,NULL,'2022-06-01 09:58:38','2022-06-02 08:47:29',1,1,1,2,NULL),(2,NULL,'2022-06-01 10:32:30','2022-06-01 10:49:21',1,2,3,4,NULL);
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2020_02_09_000001_create_twill_default_users_tables',1),(6,'2020_02_09_000002_create_twill_default_blocks_table',1),(7,'2020_02_09_000003_create_twill_default_medias_tables',1),(8,'2020_02_09_000004_create_twill_default_files_tables',1),(9,'2020_02_09_000005_create_twill_default_settings_table',1),(10,'2020_02_09_000006_create_twill_default_tags_tables',1),(11,'2020_02_09_000007_create_twill_default_activity_log_table',1),(12,'2020_02_09_000008_create_twill_default_features_table',1),(13,'2020_02_09_000010_create_twill_default_related_table',1),(14,'2020_02_09_000011_add_locale_column_to_twill_default-mediables',1),(15,'2020_02_09_000012_change_locale_column_in_twill_default_fileables',1),(16,'2020_02_09_000013_add_language_column_to_twill_default_users',1),(17,'2020_02_09_000014_add_editor_name_column_to_blocks_table',1),(18,'2022_04_04_105005_create_pages_tables',1),(19,'2022_04_05_071732_create_page_metas_tables',1),(20,'2022_04_05_100743_create_categories_tables',1),(21,'2022_04_05_100744_create_products_tables',1),(22,'2022_04_06_104801_create_menus_tables',1),(23,'2022_04_06_122542_create_contacts_tables',1),(24,'2022_05_25_112845_create_services_tables',1),(25,'2022_06_02_111553_create_news_tables',2),(26,'2022_06_02_142617_create_service_categories_tables',3),(27,'2022_06_06_124850_create_profiles_tables',4),(28,'2020_07_28_162245_create_wishlist_table',5),(29,'2022_01_25_000015_add_columns_to_activity_log_table',6),(30,'2022_04_05_000015_update_activity_log_morph_size',6),(31,'2022_06_10_081023_add_cart_session_id_to_users_table',6),(32,'2022_06_10_092449_create_brands_tables',7),(33,'2022_06_16_110409_create_product_atributes_tables',8),(35,'2022_06_20_113702_create_service_orders_tables',9);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `position` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,NULL,'2022-06-01 09:26:05','2022-06-02 09:28:42',1,1),(2,NULL,'2022-06-02 09:29:52','2022-06-02 09:38:05',1,2),(3,NULL,'2022-06-03 09:30:25','2022-06-02 09:38:05',1,3),(4,NULL,'2022-06-02 09:31:00','2022-06-02 09:38:05',1,4),(5,NULL,'2022-06-04 09:31:38','2022-06-02 09:38:05',1,5),(6,NULL,'2022-06-02 09:32:01','2022-06-02 09:38:05',1,6),(7,NULL,'2022-06-05 09:34:00','2022-06-02 09:38:05',1,7);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_slugs`
--

DROP TABLE IF EXISTS `news_slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `news_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_news_slugs_news_id` (`news_id`),
  KEY `news_slugs_locale_index` (`locale`),
  CONSTRAINT `fk_news_slugs_news_id` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_slugs`
--

LOCK TABLES `news_slugs` WRITE;
/*!40000 ALTER TABLE `news_slugs` DISABLE KEYS */;
INSERT INTO `news_slugs` VALUES (1,1,NULL,NULL,'2022-06-02 09:28:42','noutate','ro',1),(2,1,NULL,NULL,NULL,'','ru',0),(3,1,NULL,NULL,NULL,'','en',0),(4,2,NULL,NULL,'2022-06-02 09:37:56','cum-ingrijim-covorul','ro',1),(5,2,NULL,NULL,NULL,'','ru',0),(6,2,NULL,NULL,NULL,'','en',0),(7,3,NULL,NULL,'2022-06-02 09:37:13','tips-pentru-ingrijirea-bailor','ro',1),(8,3,NULL,NULL,NULL,'','ru',0),(9,3,NULL,NULL,NULL,'','en',0),(10,4,NULL,NULL,'2022-06-02 09:36:32','regula-in-bucatarie','ro',1),(11,4,NULL,NULL,NULL,'','ru',0),(12,4,NULL,NULL,NULL,'','en',0),(13,5,NULL,NULL,'2022-06-02 09:35:41','ingrijirea-suprafetelor-de-lemn','ro',1),(14,5,NULL,NULL,NULL,'','ru',0),(15,5,NULL,NULL,NULL,'','en',0),(16,6,NULL,NULL,'2022-06-02 09:35:02','cum-curatim-cuptorul','ro',1),(17,6,NULL,NULL,NULL,'','ru',0),(18,6,NULL,NULL,NULL,'','en',0),(19,7,NULL,NULL,'2022-06-02 09:34:31','mobila-din-piele-ce-trebuie-sa-stii','ro',1),(20,7,NULL,NULL,NULL,'','ru',0),(21,7,NULL,NULL,NULL,'','en',0);
/*!40000 ALTER TABLE `news_slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_translations`
--

DROP TABLE IF EXISTS `news_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `news_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `locale` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description1` text COLLATE utf8mb4_unicode_ci,
  `description2` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `news_id_locale_unique` (`news_id`,`locale`),
  KEY `news_translations_locale_index` (`locale`),
  CONSTRAINT `fk_news_translations_news_id` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_translations`
--

LOCK TABLES `news_translations` WRITE;
/*!40000 ALTER TABLE `news_translations` DISABLE KEYS */;
INSERT INTO `news_translations` VALUES (1,1,NULL,'2022-06-02 09:26:05','2022-06-02 09:28:42','ro',1,'Noutate','<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. A dolorum repudiandae architecto sapiente animi, autem debitis? Nulla voluptates, sequi unde architecto dignissimos dolore commodi distinctio impedit voluptatibus enim nam temporibus?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. A dolorum repudiandae architecto sapiente animi, autem debitis? Nulla voluptates, sequi unde architecto dignissimos dolore commodi distinctio impedit voluptatibus enim nam temporibus?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. A dolorum repudiandae architecto sapiente animi, autem debitis? Nulla voluptates, sequi unde architecto dignissimos dolore commodi distinctio impedit voluptatibus enim nam temporibus?</p>','<p class=\"ql-align-justify\">Maecenas ultrices mauris ante, vel convallis arcu pharetra a. Cras eget nisi tempus libero lobortis elementum. Suspendisse tempus, tellus non accumsan tempor, erat nunc gravida libero, sit amet sagittis magna lectus in massa. Sed tempor luctus ex, a ultrices ex facilisis nec. Morbi id consequat tortor. Etiam non rhoncus elit. In porta ultricies sem, vitae eleifend justo rutrum iaculis. Phasellus commodo posuere ipsum, vitae viverra orci placerat sodales.</p><p class=\"ql-align-justify\">Donec semper massa vitae viverra vulputate. Duis quis mauris nec purus volutpat lacinia. Proin ornare efficitur risus nec congue. Curabitur faucibus, eros sed pharetra convallis, metus erat dictum tellus, eget hendrerit ante mi porta nibh. Nunc et ultricies elit. Nullam commodo, sem ac mattis iaculis, risus nisl iaculis mi, id scelerisque ante lectus vel arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam vitae leo vulputate dolor pulvinar finibus. Phasellus posuere eu justo quis elementum. Cras venenatis malesuada tellus, at pellentesque nibh condimentum ut. Ut posuere sollicitudin ante efficitur feugiat.</p><p><br></p>'),(2,1,NULL,'2022-06-02 09:26:05','2022-06-02 09:28:42','ru',0,NULL,NULL,NULL),(3,1,NULL,'2022-06-02 09:26:05','2022-06-02 09:28:42','en',0,NULL,NULL,NULL),(4,2,NULL,'2022-06-02 09:29:52','2022-06-02 09:37:56','ro',1,'Cum ingrijim covorul?','<p>Morbi efficitur in turpis a dictum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus porta urna a placerat fermentum. Ut blandit nunc quis nisi dapibus, ut blandit turpis tempor.</p><p><br></p><p> Donec lacinia, augue id varius imperdiet, odio tortor auctor felis, eget volutpat lorem risus ut urna. Cras in pellentesque enim, vitae rutrum tellus. Nunc ipsum metus, imperdiet ultrices risus nec, scelerisque posuere augue. Proin ut felis et neque mattis elementum sit amet ut magna. Sed ultricies elit quis efficitur fermentum. </p><p><br></p><p>Aliquam eget dolor vehicula orci tempor posuere. Pellentesque tristique vehicula lacus, vitae porttitor justo eleifend id. Vivamus ac luctus eros. Phasellus nec consectetur ante, ut faucibus ante. In ac turpis pretium, pharetra elit eu, malesuada mauris. Ut nec orci nisl. Vivamus eu ante tincidunt, dignissim risus at, tempor velit.</p>','<p>Duis efficitur gravida mi, et cursus lectus condimentum sit amet. Aenean tincidunt iaculis convallis. Pellentesque ornare ante condimentum, ultricies tellus vitae, bibendum mi. </p><p><br></p><p>Nunc sollicitudin, orci at mollis pellentesque, ligula elit ultrices nulla, ut tempus lacus leo non elit. Sed vitae ullamcorper diam. Cras tristique malesuada congue. Aenean tincidunt at sapien in ullamcorper. Praesent sed lectus nisl.</p>'),(5,2,NULL,'2022-06-02 09:29:52','2022-06-02 09:37:56','ru',0,NULL,NULL,NULL),(6,2,NULL,'2022-06-02 09:29:52','2022-06-02 09:37:56','en',0,NULL,NULL,NULL),(7,3,NULL,'2022-06-02 09:30:25','2022-06-02 09:37:13','ro',1,'Tips pentru ingrijirea bailor','<p>Donec semper massa vitae viverra vulputate. Duis quis mauris nec purus volutpat lacinia. </p><p>Proin ornare efficitur risus nec congue. Curabitur faucibus, eros sed pharetra convallis, metus erat dictum tellus, eget hendrerit ante mi porta nibh. Nunc et ultricies elit. Nullam commodo, sem ac mattis iaculis, risus nisl iaculis mi, id scelerisque ante lectus vel arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p><p><br></p><p>Nam vitae leo vulputate dolor pulvinar finibus. Phasellus posuere eu justo quis elementum. Cras venenatis malesuada tellus, at pellentesque nibh condimentum ut. Ut posuere sollicitudin ante efficitur feugiat.</p>','<p>Morbi efficitur in turpis a dictum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus porta urna a placerat fermentum. Ut blandit nunc quis nisi dapibus, ut blandit turpis tempor. Donec lacinia, augue id varius imperdiet, odio tortor auctor felis, eget volutpat lorem risus ut urna. </p><p><br></p><p>Cras in pellentesque enim, vitae rutrum tellus. Nunc ipsum metus, imperdiet ultrices risus nec, scelerisque posuere augue. Proin ut felis et neque mattis elementum sit amet ut magna. Sed ultricies elit quis efficitur fermentum. Aliquam eget dolor vehicula orci tempor posuere. Pellentesque tristique vehicula lacus, vitae porttitor justo eleifend id. Vivamus ac luctus eros. Phasellus nec consectetur ante, ut faucibus ante. In ac turpis pretium, pharetra elit eu, malesuada mauris. Ut nec orci nisl. Vivamus eu ante tincidunt, dignissim risus at, tempor velit.</p>'),(8,3,NULL,'2022-06-02 09:30:25','2022-06-02 09:37:13','ru',0,NULL,NULL,NULL),(9,3,NULL,'2022-06-02 09:30:25','2022-06-02 09:37:13','en',0,NULL,NULL,NULL),(10,4,NULL,'2022-06-02 09:31:00','2022-06-02 09:36:32','ro',1,'Regula in bucatarie','<p>Maecenas ultrices mauris ante, vel convallis arcu pharetra a.</p><p> Cras eget nisi tempus libero lobortis elementum. </p><p>Suspendisse tempus, tellus non accumsan tempor, erat nunc gravida libero, sit amet sagittis magna lectus in massa. Sed tempor luctus ex, a ultrices ex facilisis nec. </p><p>Morbi id consequat tortor. Etiam non rhoncus elit. In porta ultricies sem, vitae eleifend justo rutrum iaculis. Phasellus commodo posuere ipsum, vitae viverra orci placerat sodales.</p>','<p>Donec semper massa vitae viverra vulputate. Duis quis mauris nec purus volutpat lacinia. Proin ornare efficitur risus nec congue. Curabitur faucibus, eros sed pharetra convallis, metus erat dictum tellus, eget hendrerit ante mi porta nibh. </p><p><br></p><p>Nunc et ultricies elit. Nullam commodo, sem ac mattis iaculis, risus nisl iaculis mi, id scelerisque ante lectus vel arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam vitae leo vulputate dolor pulvinar finibus. Phasellus posuere eu justo quis elementum. Cras venenatis malesuada tellus, at pellentesque nibh condimentum ut. Ut posuere sollicitudin ante efficitur feugiat.</p>'),(11,4,NULL,'2022-06-02 09:31:00','2022-06-02 09:36:32','ru',0,NULL,NULL,NULL),(12,4,NULL,'2022-06-02 09:31:00','2022-06-02 09:36:32','en',0,NULL,NULL,NULL),(13,5,NULL,'2022-06-02 09:31:38','2022-06-02 09:35:41','ro',1,'Ingrijirea suprafetelor de lemn','<p class=\"ql-align-justify\">Donec semper massa vitae viverra vulputate. Duis quis mauris nec purus volutpat lacinia. Proin ornare efficitur risus nec congue. Curabitur faucibus, eros sed pharetra convallis, metus erat dictum tellus, eget hendrerit ante mi porta nibh. Nunc et ultricies elit. Nullam commodo, sem ac mattis iaculis, risus nisl iaculis mi, id scelerisque ante lectus vel arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam vitae leo vulputate dolor pulvinar finibus. Phasellus posuere eu justo quis elementum. Cras venenatis malesuada tellus, at pellentesque nibh condimentum ut. Ut posuere sollicitudin ante efficitur feugiat.</p><p class=\"ql-align-justify\">Morbi efficitur in turpis a dictum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus porta urna a placerat fermentum. Ut blandit nunc quis nisi dapibus, ut blandit turpis tempor. Donec lacinia, augue id varius imperdiet, odio tortor auctor felis, eget volutpat lorem risus ut urna. Cras in pellentesque enim, vitae rutrum tellus. Nunc ipsum metus, imperdiet ultrices risus nec, scelerisque posuere augue. Proin ut felis et neque mattis elementum sit amet ut magna. Sed ultricies elit quis efficitur fermentum. Aliquam eget dolor vehicula orci tempor posuere. Pellentesque tristique vehicula lacus, vitae porttitor justo eleifend id. Vivamus ac luctus eros. Phasellus nec consectetur ante, ut faucibus ante. In ac turpis pretium, pharetra elit eu, malesuada mauris. Ut nec orci nisl. Vivamus eu ante tincidunt, dignissim risus at, tempor velit.</p><p><br></p>','<p>Maecenas ultrices mauris ante, vel convallis arcu pharetra a. Cras eget nisi tempus libero lobortis elementum.</p><p><br></p><p> Suspendisse tempus, tellus non accumsan tempor, erat nunc gravida libero, sit amet sagittis magna lectus in massa. Sed tempor luctus ex, a ultrices ex facilisis nec. Morbi id consequat tortor. Etiam non rhoncus elit. </p><p><br></p><p>In porta ultricies sem, vitae eleifend justo rutrum iaculis. Phasellus commodo posuere ipsum, vitae viverra orci placerat sodales.</p>'),(14,5,NULL,'2022-06-02 09:31:38','2022-06-02 09:35:41','ru',0,NULL,NULL,NULL),(15,5,NULL,'2022-06-02 09:31:38','2022-06-02 09:35:41','en',0,NULL,NULL,NULL),(16,6,NULL,'2022-06-02 09:32:01','2022-06-02 09:35:02','ro',1,'Cum curatim cuptorul?','<p class=\"ql-align-justify\">Duis efficitur gravida mi, et cursus lectus condimentum sit amet. Aenean tincidunt iaculis convallis. Pellentesque ornare ante condimentum, ultricies tellus vitae, bibendum mi. Nunc sollicitudin, orci at mollis pellentesque, ligula elit ultrices nulla, ut tempus lacus leo non elit. Sed vitae ullamcorper diam. Cras tristique malesuada congue. Aenean tincidunt at sapien in ullamcorper. Praesent sed lectus nisl.</p><p><br></p>','<p class=\"ql-align-justify\">Donec semper massa vitae viverra vulputate. Duis quis mauris nec purus volutpat lacinia. Proin ornare efficitur risus nec congue. Curabitur faucibus, eros sed pharetra convallis, metus erat dictum tellus, eget hendrerit ante mi porta nibh. Nunc et ultricies elit. Nullam commodo, sem ac mattis iaculis, risus nisl iaculis mi, id scelerisque ante lectus vel arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam vitae leo vulputate dolor pulvinar finibus. Phasellus posuere eu justo quis elementum. Cras venenatis malesuada tellus, at pellentesque nibh condimentum ut. Ut posuere sollicitudin ante efficitur feugiat.</p><p class=\"ql-align-justify\">Morbi efficitur in turpis a dictum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus porta urna a placerat fermentum. Ut blandit nunc quis nisi dapibus, ut blandit turpis tempor. Donec lacinia, augue id varius imperdiet, odio tortor auctor felis, eget volutpat lorem risus ut urna. Cras in pellentesque enim, vitae rutrum tellus. Nunc ipsum metus, imperdiet ultrices risus nec, scelerisque posuere augue. Proin ut felis et neque mattis elementum sit amet ut magna. Sed ultricies elit quis efficitur fermentum. Aliquam eget dolor vehicula orci tempor posuere. Pellentesque tristique vehicula lacus, vitae porttitor justo eleifend id. Vivamus ac luctus eros. Phasellus nec consectetur ante, ut faucibus ante. In ac turpis pretium, pharetra elit eu, malesuada mauris. Ut nec orci nisl. Vivamus eu ante tincidunt, dignissim risus at, tempor velit.</p><p><br></p>'),(17,6,NULL,'2022-06-02 09:32:01','2022-06-02 09:35:02','ru',0,NULL,NULL,NULL),(18,6,NULL,'2022-06-02 09:32:01','2022-06-02 09:35:02','en',0,NULL,NULL,NULL),(19,7,NULL,'2022-06-02 09:34:00','2022-06-02 09:34:31','ro',1,'Mobila din piele, ce trebuie sa stii?','<p>Morbi efficitur in turpis a dictum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus porta urna a placerat fermentum. Ut blandit nunc quis nisi dapibus, ut blandit turpis tempor. Donec lacinia, augue id varius imperdiet, odio tortor auctor felis, eget volutpat lorem risus ut urna. Cras in pellentesque enim, vitae rutrum tellus. Nunc ipsum metus, imperdiet ultrices risus nec, scelerisque posuere augue. Proin ut felis et neque mattis elementum sit amet ut magna. Sed ultricies elit quis efficitur fermentum. Aliquam eget dolor vehicula orci tempor posuere. Pellentesque tristique vehicula lacus, vitae porttitor justo eleifend id. Vivamus ac luctus eros. Phasellus nec consectetur ante, ut faucibus ante. In ac turpis pretium, pharetra elit eu, malesuada mauris. Ut nec orci nisl. Vivamus eu ante tincidunt, dignissim risus at, tempor velit.</p>','<p class=\"ql-align-justify\">Duis efficitur gravida mi, et cursus lectus condimentum sit amet. Aenean tincidunt iaculis convallis. Pellentesque ornare ante condimentum, ultricies tellus vitae, bibendum mi. Nunc sollicitudin, orci at mollis pellentesque, ligula elit ultrices nulla, ut tempus lacus leo non elit. Sed vitae ullamcorper diam. Cras tristique malesuada congue. Aenean tincidunt at sapien in ullamcorper. Praesent sed lectus nisl.</p><p><br></p>'),(20,7,NULL,'2022-06-02 09:34:00','2022-06-02 09:34:31','ru',0,NULL,NULL,NULL),(21,7,NULL,'2022-06-02 09:34:00','2022-06-02 09:34:31','en',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `news_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_meta_translations`
--

DROP TABLE IF EXISTS `page_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_meta_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_meta_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `locale` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `og_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_meta_id_locale_unique` (`page_meta_id`,`locale`),
  KEY `page_meta_translations_locale_index` (`locale`),
  CONSTRAINT `fk_page_meta_translations_page_meta_id` FOREIGN KEY (`page_meta_id`) REFERENCES `page_metas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_meta_translations`
--

LOCK TABLES `page_meta_translations` WRITE;
/*!40000 ALTER TABLE `page_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_metas`
--

DROP TABLE IF EXISTS `page_metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_metas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `page_id` int DEFAULT NULL,
  `og_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_metas`
--

LOCK TABLES `page_metas` WRITE;
/*!40000 ALTER TABLE `page_metas` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_slugs`
--

DROP TABLE IF EXISTS `page_slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_page_slugs_page_id` (`page_id`),
  KEY `page_slugs_locale_index` (`locale`),
  CONSTRAINT `fk_page_slugs_page_id` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_slugs`
--

LOCK TABLES `page_slugs` WRITE;
/*!40000 ALTER TABLE `page_slugs` DISABLE KEYS */;
INSERT INTO `page_slugs` VALUES (1,1,NULL,NULL,'2022-06-02 06:46:56','principala','ro',1),(2,1,NULL,NULL,'2022-06-02 06:46:56','','ru',0),(3,1,NULL,NULL,'2022-06-02 06:46:56','','en',0),(4,1,NULL,NULL,'2022-06-02 06:46:56','home','en',1),(5,1,NULL,NULL,'2022-06-02 06:46:56','glavnaya','ru',1),(6,2,NULL,NULL,'2022-06-08 05:47:08','despre-noi','ro',1),(7,2,NULL,NULL,'2022-06-08 05:47:08','o-nas','ru',1),(8,2,NULL,NULL,'2022-06-08 05:47:08','about-us','en',1),(9,3,NULL,NULL,'2022-06-08 05:47:19','magazin','ro',1),(10,3,NULL,NULL,'2022-06-08 05:47:19','magazin','ru',1),(11,3,NULL,NULL,'2022-06-08 05:47:19','shop','en',1),(12,4,NULL,NULL,'2022-06-08 05:47:29','servicii','ro',1),(13,4,NULL,NULL,'2022-06-08 05:47:29','uslugi','ru',1),(14,4,NULL,NULL,'2022-06-08 05:47:29','services','en',1),(15,5,NULL,NULL,'2022-06-08 05:47:39','contacte','ro',1),(16,5,NULL,NULL,'2022-06-08 05:47:39','kontakty','ru',1),(17,5,NULL,NULL,'2022-06-08 05:47:39','contacts','en',1),(18,6,NULL,NULL,'2022-06-01 10:20:58','politica-de-confidentialitate','ro',1),(19,6,NULL,NULL,NULL,'','ru',0),(20,6,NULL,NULL,NULL,'','en',0),(21,7,NULL,NULL,'2022-06-01 10:21:36','plata-si-livrarea','ro',1),(22,7,NULL,NULL,NULL,'','ru',0),(23,7,NULL,NULL,NULL,'','en',0),(24,8,NULL,NULL,'2022-06-08 05:47:57','noutati','ro',1),(25,8,NULL,NULL,'2022-06-08 05:47:57','novosti','ru',1),(26,8,NULL,NULL,'2022-06-08 05:47:57','news','en',1);
/*!40000 ALTER TABLE `page_slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_translations`
--

DROP TABLE IF EXISTS `page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `locale` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_id_locale_unique` (`page_id`,`locale`),
  KEY `page_translations_locale_index` (`locale`),
  CONSTRAINT `fk_page_translations_page_id` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_translations`
--

LOCK TABLES `page_translations` WRITE;
/*!40000 ALTER TABLE `page_translations` DISABLE KEYS */;
INSERT INTO `page_translations` VALUES (1,1,NULL,'2022-06-01 07:08:45','2022-06-02 06:46:56','ro',1,'Principala',NULL),(2,1,NULL,'2022-06-01 07:08:45','2022-06-02 06:46:56','ru',1,'Главная',NULL),(3,1,NULL,'2022-06-01 07:08:45','2022-06-02 06:46:56','en',1,'Home',NULL),(4,2,NULL,'2022-06-01 09:52:11','2022-06-08 05:47:08','ro',1,'Despre Noi',NULL),(5,2,NULL,'2022-06-01 09:52:11','2022-06-08 05:47:08','ru',1,'О нас',NULL),(6,2,NULL,'2022-06-01 09:52:11','2022-06-08 05:47:08','en',1,'About Us',NULL),(7,3,NULL,'2022-06-01 09:53:37','2022-06-08 05:47:19','ro',1,'Magazin',NULL),(8,3,NULL,'2022-06-01 09:53:37','2022-06-08 05:47:19','ru',1,'Магазин',NULL),(9,3,NULL,'2022-06-01 09:53:37','2022-06-08 05:47:19','en',1,'Shop',NULL),(10,4,NULL,'2022-06-01 09:53:59','2022-06-08 05:47:29','ro',1,'Servicii',NULL),(11,4,NULL,'2022-06-01 09:53:59','2022-06-08 05:47:29','ru',1,'Услуги',NULL),(12,4,NULL,'2022-06-01 09:53:59','2022-06-08 05:47:29','en',1,'Services',NULL),(13,5,NULL,'2022-06-01 09:56:48','2022-06-08 05:47:39','ro',1,'Contacte',NULL),(14,5,NULL,'2022-06-01 09:56:48','2022-06-08 05:47:39','ru',1,'Контакты',NULL),(15,5,NULL,'2022-06-01 09:56:48','2022-06-08 05:47:39','en',1,'Contacts',NULL),(16,6,NULL,'2022-06-01 10:20:58','2022-06-01 10:20:58','ro',1,'Politica de confidențialitate',NULL),(17,6,NULL,'2022-06-01 10:20:58','2022-06-01 10:20:58','ru',0,NULL,NULL),(18,6,NULL,'2022-06-01 10:20:58','2022-06-01 10:20:58','en',0,NULL,NULL),(19,7,NULL,'2022-06-01 10:21:36','2022-06-01 10:21:36','ro',1,'Plata si livrarea',NULL),(20,7,NULL,'2022-06-01 10:21:36','2022-06-01 10:21:36','ru',0,NULL,NULL),(21,7,NULL,'2022-06-01 10:21:36','2022-06-01 10:21:36','en',0,NULL,NULL),(22,8,NULL,'2022-06-02 08:47:07','2022-06-08 05:47:57','ro',1,'Noutăți',NULL),(23,8,NULL,'2022-06-02 08:47:07','2022-06-08 05:47:57','ru',1,'Новости',NULL),(24,8,NULL,'2022-06-02 08:47:07','2022-06-08 05:47:57','en',1,'News',NULL);
/*!40000 ALTER TABLE `page_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `position` int unsigned DEFAULT NULL,
  `template` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,NULL,'2022-06-01 07:08:45','2022-06-02 06:46:56',1,1,'main'),(2,NULL,'2022-06-01 09:52:11','2022-06-08 05:47:08',1,2,'about'),(3,NULL,'2022-06-01 09:53:37','2022-06-08 05:47:19',1,3,'catalog'),(4,NULL,'2022-06-01 09:53:59','2022-06-08 05:47:29',1,4,'services'),(5,NULL,'2022-06-01 09:56:48','2022-06-08 05:47:39',1,5,'contacts'),(6,NULL,'2022-06-01 10:20:58','2022-06-01 10:20:58',0,6,'privacy'),(7,NULL,'2022-06-01 10:21:36','2022-06-01 10:21:36',0,7,'terms'),(8,NULL,'2022-06-02 08:47:07','2022-06-08 05:47:57',1,8,'news');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_atribute_translations`
--

DROP TABLE IF EXISTS `product_atribute_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_atribute_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_atribute_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `locale` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_atribute_id_locale_unique` (`product_atribute_id`,`locale`),
  KEY `product_atribute_translations_locale_index` (`locale`),
  CONSTRAINT `fk_product_atribute_translations_product_atribute_id` FOREIGN KEY (`product_atribute_id`) REFERENCES `product_atributes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_atribute_translations`
--

LOCK TABLES `product_atribute_translations` WRITE;
/*!40000 ALTER TABLE `product_atribute_translations` DISABLE KEYS */;
INSERT INTO `product_atribute_translations` VALUES (1,1,NULL,'2022-06-16 09:08:09','2022-06-16 09:20:18','ro',1,'Culoare',NULL),(2,1,NULL,'2022-06-16 09:08:09','2022-06-16 09:20:18','ru',1,'Цвет',NULL),(3,1,NULL,'2022-06-16 09:08:09','2022-06-16 09:20:18','en',1,'Color',NULL),(4,2,NULL,'2022-06-16 09:08:34','2022-06-17 10:34:04','ro',1,'Marime',NULL),(5,2,NULL,'2022-06-16 09:08:34','2022-06-17 10:34:04','ru',1,'Размер',NULL),(6,2,NULL,'2022-06-16 09:08:34','2022-06-17 10:34:04','en',1,'Size',NULL),(7,3,NULL,'2022-06-16 09:08:47','2022-06-17 10:36:15','ro',1,'Greutate',NULL),(8,3,NULL,'2022-06-16 09:08:47','2022-06-17 10:36:15','ru',1,'Вес',NULL),(9,3,NULL,'2022-06-16 09:08:47','2022-06-17 10:36:15','en',1,'Weight',NULL),(10,4,NULL,'2022-06-16 09:08:55','2022-06-16 11:00:52','ro',1,'Miros',NULL),(11,4,NULL,'2022-06-16 09:08:55','2022-06-16 11:00:52','ru',0,'Запах',NULL),(12,4,NULL,'2022-06-16 09:08:55','2022-06-16 11:00:52','en',0,'Smell',NULL),(13,5,NULL,'2022-06-16 09:09:12','2022-06-16 11:01:31','ro',1,'Ingrediente',NULL),(14,5,NULL,'2022-06-16 09:09:12','2022-06-16 11:01:31','ru',0,'Ингредиенты',NULL),(15,5,NULL,'2022-06-16 09:09:12','2022-06-16 11:01:31','en',0,'Ingredients',NULL),(16,6,NULL,'2022-06-16 09:10:50','2022-06-16 11:02:04','ro',1,'Origine',NULL),(17,6,NULL,'2022-06-16 09:10:50','2022-06-16 11:02:04','ru',0,'Происхождение',NULL),(18,6,NULL,'2022-06-16 09:10:50','2022-06-16 11:02:04','en',0,'Origin',NULL),(19,7,NULL,'2022-06-16 09:11:18','2022-06-16 11:02:36','ro',1,'Ambalajul',NULL),(20,7,NULL,'2022-06-16 09:11:18','2022-06-16 11:02:36','ru',0,'Упаковка',NULL),(21,7,NULL,'2022-06-16 09:11:18','2022-06-16 11:02:36','en',0,'Packaging',NULL),(22,8,NULL,'2022-06-16 11:03:21','2022-06-17 10:31:00','ro',1,'Alb',NULL),(23,8,NULL,'2022-06-16 11:03:21','2022-06-17 10:31:00','ru',1,'Белый',NULL),(24,8,NULL,'2022-06-16 11:03:21','2022-06-17 10:31:00','en',1,'White',NULL),(25,9,NULL,'2022-06-16 11:03:31','2022-06-17 10:33:48','ro',1,'Portocaliu',NULL),(26,9,NULL,'2022-06-16 11:03:31','2022-06-17 10:33:48','ru',1,'Оранжевый',NULL),(27,9,NULL,'2022-06-16 11:03:31','2022-06-17 10:33:48','en',1,'Orange',NULL),(28,10,NULL,'2022-06-16 11:03:35','2022-06-17 10:33:40','ro',1,'Verde',NULL),(29,10,NULL,'2022-06-16 11:03:35','2022-06-17 10:33:40','ru',1,'Зеленый',NULL),(30,10,NULL,'2022-06-16 11:03:35','2022-06-17 10:33:40','en',1,'Green',NULL),(31,11,NULL,'2022-06-16 11:13:37','2022-06-17 10:34:42','ro',1,'Mic',NULL),(32,11,NULL,'2022-06-16 11:13:37','2022-06-17 10:34:42','ru',1,'Маленький',NULL),(33,11,NULL,'2022-06-16 11:13:37','2022-06-17 10:34:42','en',1,'Small',NULL),(34,12,NULL,'2022-06-16 11:13:41','2022-06-17 10:35:21','ro',1,'Mediu',NULL),(35,12,NULL,'2022-06-16 11:13:41','2022-06-17 10:35:21','ru',1,'Средний',NULL),(36,12,NULL,'2022-06-16 11:13:41','2022-06-17 10:35:21','en',1,'Medium',NULL),(37,13,NULL,'2022-06-16 11:13:46','2022-06-17 10:36:02','ro',1,'Mare',NULL),(38,13,NULL,'2022-06-16 11:13:46','2022-06-17 10:36:02','ru',1,'Большой',NULL),(39,13,NULL,'2022-06-16 11:13:46','2022-06-17 10:36:02','en',1,'Large',NULL),(40,14,NULL,'2022-06-16 11:14:54','2022-06-17 10:36:51','ro',1,'0.5 kg',NULL),(41,14,NULL,'2022-06-16 11:14:54','2022-06-17 10:36:51','ru',1,'0.5 kg',NULL),(42,14,NULL,'2022-06-16 11:14:54','2022-06-17 10:36:51','en',1,'0.5 kg',NULL),(43,15,NULL,'2022-06-16 11:14:58','2022-06-17 10:37:05','ro',1,'1 kg',NULL),(44,15,NULL,'2022-06-16 11:14:58','2022-06-17 10:37:05','ru',1,'1 kg',NULL),(45,15,NULL,'2022-06-16 11:14:58','2022-06-17 10:37:05','en',1,'1 kg',NULL),(46,16,NULL,'2022-06-16 11:15:03','2022-06-17 10:37:19','ro',1,'2 kg',NULL),(47,16,NULL,'2022-06-16 11:15:03','2022-06-17 10:37:19','ru',1,'2 kg',NULL),(48,16,NULL,'2022-06-16 11:15:03','2022-06-17 10:37:19','en',1,'2 kg',NULL),(49,17,NULL,'2022-06-16 11:16:23','2022-06-17 10:37:53','ro',1,'aromat',NULL),(50,17,NULL,'2022-06-16 11:16:23','2022-06-17 10:37:53','ru',1,'ароматный',NULL),(51,17,NULL,'2022-06-16 11:16:23','2022-06-17 10:37:53','en',1,'fragrant',NULL),(52,18,NULL,'2022-06-16 11:16:33','2022-06-17 10:38:21','ro',1,'fructos',NULL),(53,18,NULL,'2022-06-16 11:16:33','2022-06-17 10:38:21','ru',1,'фруктовый',NULL),(54,18,NULL,'2022-06-16 11:16:33','2022-06-17 10:38:21','en',1,'fruity',NULL),(55,19,NULL,'2022-06-16 11:16:40','2022-06-17 10:38:56','ro',1,'mentolat',NULL),(56,19,NULL,'2022-06-16 11:16:40','2022-06-17 10:38:56','ru',1,'ментоловый',NULL),(57,19,NULL,'2022-06-16 11:16:40','2022-06-17 10:38:56','en',1,'mentholated',NULL),(58,20,NULL,'2022-06-16 11:18:30','2022-06-17 10:39:32','ro',1,'citric',NULL),(59,20,NULL,'2022-06-16 11:18:30','2022-06-17 10:39:32','ru',1,'лимонный',NULL),(60,20,NULL,'2022-06-16 11:18:30','2022-06-17 10:39:32','en',1,'citrus',NULL);
/*!40000 ALTER TABLE `product_atribute_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_atributes`
--

DROP TABLE IF EXISTS `product_atributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_atributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `position` int unsigned DEFAULT NULL,
  `_lft` int unsigned NOT NULL DEFAULT '0',
  `_rgt` int unsigned NOT NULL DEFAULT '0',
  `parent_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_atributes__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_atributes`
--

LOCK TABLES `product_atributes` WRITE;
/*!40000 ALTER TABLE `product_atributes` DISABLE KEYS */;
INSERT INTO `product_atributes` VALUES (1,NULL,'2022-06-16 09:08:09','2022-06-16 11:13:16',1,1,1,8,NULL),(2,NULL,'2022-06-16 09:08:34','2022-06-17 10:34:04',1,2,9,16,NULL),(3,NULL,'2022-06-16 09:08:47','2022-06-17 10:36:15',1,3,17,24,NULL),(4,NULL,'2022-06-16 09:08:55','2022-06-16 11:19:19',1,4,25,34,NULL),(5,NULL,'2022-06-16 09:09:12','2022-06-16 11:01:31',0,5,35,36,NULL),(6,NULL,'2022-06-16 09:10:50','2022-06-16 11:02:04',0,6,37,38,NULL),(7,NULL,'2022-06-16 09:11:18','2022-06-16 11:02:36',0,7,39,40,NULL),(8,NULL,'2022-06-16 11:03:21','2022-06-17 10:31:00',1,8,2,3,1),(9,NULL,'2022-06-16 11:03:31','2022-06-17 10:33:48',1,9,4,5,1),(10,NULL,'2022-06-16 11:03:35','2022-06-17 10:33:40',1,10,6,7,1),(11,NULL,'2022-06-16 11:13:37','2022-06-17 10:34:42',1,11,10,11,2),(12,NULL,'2022-06-16 11:13:41','2022-06-17 10:35:21',1,12,12,13,2),(13,NULL,'2022-06-16 11:13:46','2022-06-17 10:36:02',1,13,14,15,2),(14,NULL,'2022-06-16 11:14:54','2022-06-17 10:36:51',1,14,18,19,3),(15,NULL,'2022-06-16 11:14:58','2022-06-17 10:37:05',1,15,20,21,3),(16,NULL,'2022-06-16 11:15:03','2022-06-17 10:37:19',1,16,22,23,3),(17,NULL,'2022-06-16 11:16:23','2022-06-17 10:37:53',1,17,28,29,4),(18,NULL,'2022-06-16 11:16:33','2022-06-17 10:38:21',1,18,30,31,4),(19,NULL,'2022-06-16 11:16:40','2022-06-17 10:38:56',1,19,32,33,4),(20,NULL,'2022-06-16 11:18:30','2022-06-17 10:39:32',1,20,26,27,4);
/*!40000 ALTER TABLE `product_atributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_slugs`
--

DROP TABLE IF EXISTS `product_slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_slugs_product_id` (`product_id`),
  KEY `product_slugs_locale_index` (`locale`),
  CONSTRAINT `fk_product_slugs_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_slugs`
--

LOCK TABLES `product_slugs` WRITE;
/*!40000 ALTER TABLE `product_slugs` DISABLE KEYS */;
INSERT INTO `product_slugs` VALUES (1,1,NULL,NULL,'2022-06-17 10:51:49','produs','ro',1),(2,1,NULL,NULL,NULL,'','ru',0),(3,1,NULL,NULL,NULL,'','en',0),(4,2,NULL,NULL,'2022-06-17 10:50:34','produs-2','ro',0),(5,2,NULL,NULL,'2022-06-17 10:50:34','','ru',0),(6,2,NULL,NULL,'2022-06-17 10:50:34','','en',0),(7,2,NULL,NULL,'2022-06-17 10:50:34','produs1','ro',1),(8,3,NULL,NULL,'2022-06-17 10:49:45','produs-3','ro',0),(9,3,NULL,NULL,NULL,'','ru',0),(10,3,NULL,NULL,NULL,'','en',0),(11,3,NULL,NULL,'2022-06-17 10:49:45','produs2','ro',1),(12,4,NULL,NULL,'2022-06-17 10:48:41','produs-4','ro',0),(13,4,NULL,NULL,NULL,'','ru',0),(14,4,NULL,NULL,NULL,'','en',0),(15,4,NULL,NULL,'2022-06-17 10:48:41','produs3','ro',1),(16,5,NULL,NULL,'2022-06-17 10:47:34','produs-5','ro',0),(17,5,NULL,NULL,NULL,'','ru',0),(18,5,NULL,NULL,NULL,'','en',0),(19,5,NULL,NULL,'2022-06-17 10:47:34','produs4','ro',1),(20,6,NULL,NULL,'2022-06-17 10:46:32','produs-6','ro',0),(21,6,NULL,NULL,NULL,'','ru',0),(22,6,NULL,NULL,NULL,'','en',0),(23,6,NULL,NULL,'2022-06-17 10:46:32','produs5','ro',1),(24,7,NULL,NULL,'2022-06-17 10:45:27','produs-7','ro',0),(25,7,NULL,NULL,NULL,'','ru',0),(26,7,NULL,NULL,NULL,'','en',0),(27,7,NULL,NULL,'2022-06-17 10:45:27','produs6','ro',1),(28,8,NULL,NULL,'2022-06-17 10:44:36','produs-8','ro',0),(29,8,NULL,NULL,NULL,'','ru',0),(30,8,NULL,NULL,NULL,'','en',0),(31,8,NULL,NULL,'2022-06-17 10:44:36','produs7','ro',1),(32,9,NULL,NULL,'2022-06-17 10:43:01','produs-9','ro',0),(33,9,NULL,NULL,NULL,'','ru',0),(34,9,NULL,NULL,NULL,'','en',0),(35,9,NULL,NULL,'2022-06-17 10:43:01','produs8','ro',1),(36,10,NULL,NULL,'2022-06-21 13:17:04','produs-10','ro',0),(37,10,NULL,NULL,NULL,'','ru',0),(38,10,NULL,NULL,NULL,'','en',0),(39,10,NULL,NULL,'2022-06-21 13:17:04','produs9','ro',1),(40,5,NULL,NULL,'2022-06-17 10:47:34','produs-4-2','ro',0),(41,2,NULL,NULL,'2022-06-17 10:50:34','produs1','en',0),(42,2,NULL,NULL,'2022-06-17 10:50:34','produs1','ru',0);
/*!40000 ALTER TABLE `product_slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_translations`
--

DROP TABLE IF EXISTS `product_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `locale` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_id_locale_unique` (`product_id`,`locale`),
  KEY `product_translations_locale_index` (`locale`),
  CONSTRAINT `fk_product_translations_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_translations`
--

LOCK TABLES `product_translations` WRITE;
/*!40000 ALTER TABLE `product_translations` DISABLE KEYS */;
INSERT INTO `product_translations` VALUES (1,1,NULL,'2022-06-08 10:12:58','2022-06-17 10:51:49','ro',1,'Produs',NULL),(2,1,NULL,'2022-06-08 10:12:58','2022-06-17 10:51:49','ru',0,NULL,NULL),(3,1,NULL,'2022-06-08 10:12:58','2022-06-17 10:51:49','en',0,NULL,NULL),(4,2,NULL,'2022-06-08 10:13:08','2022-06-17 10:50:34','ro',1,'Produs1',NULL),(5,2,NULL,'2022-06-08 10:13:08','2022-06-17 10:50:34','ru',0,'Produs1',NULL),(6,2,NULL,'2022-06-08 10:13:08','2022-06-17 10:50:34','en',0,'Produs1',NULL),(7,3,NULL,'2022-06-08 10:13:17','2022-06-17 10:49:45','ro',1,'Produs2',NULL),(8,3,NULL,'2022-06-08 10:13:17','2022-06-17 10:49:45','ru',0,NULL,NULL),(9,3,NULL,'2022-06-08 10:13:17','2022-06-17 10:49:45','en',0,NULL,NULL),(10,4,NULL,'2022-06-08 10:13:33','2022-06-17 10:48:41','ro',1,'Produs3',NULL),(11,4,NULL,'2022-06-08 10:13:33','2022-06-17 10:48:41','ru',0,NULL,NULL),(12,4,NULL,'2022-06-08 10:13:33','2022-06-17 10:48:41','en',0,NULL,NULL),(13,5,NULL,'2022-06-08 10:13:40','2022-06-17 10:47:34','ro',1,'Produs 4',NULL),(14,5,NULL,'2022-06-08 10:13:40','2022-06-17 10:47:34','ru',0,NULL,NULL),(15,5,NULL,'2022-06-08 10:13:40','2022-06-17 10:47:34','en',0,NULL,NULL),(16,6,NULL,'2022-06-08 10:13:47','2022-06-17 10:46:32','ro',1,'Produs5',NULL),(17,6,NULL,'2022-06-08 10:13:47','2022-06-17 10:46:32','ru',0,NULL,NULL),(18,6,NULL,'2022-06-08 10:13:47','2022-06-17 10:46:32','en',0,NULL,NULL),(19,7,NULL,'2022-06-08 10:13:55','2022-06-17 10:45:27','ro',1,'Produs6',NULL),(20,7,NULL,'2022-06-08 10:13:55','2022-06-17 10:45:27','ru',0,NULL,NULL),(21,7,NULL,'2022-06-08 10:13:55','2022-06-17 10:45:27','en',0,NULL,NULL),(22,8,NULL,'2022-06-08 10:14:04','2022-06-17 10:44:36','ro',1,'Produs7',NULL),(23,8,NULL,'2022-06-08 10:14:04','2022-06-17 10:44:36','ru',0,NULL,NULL),(24,8,NULL,'2022-06-08 10:14:04','2022-06-17 10:44:36','en',0,NULL,NULL),(25,9,NULL,'2022-06-08 10:14:11','2022-06-17 10:43:01','ro',1,'Produs8',NULL),(26,9,NULL,'2022-06-08 10:14:11','2022-06-17 10:43:01','ru',0,NULL,NULL),(27,9,NULL,'2022-06-08 10:14:11','2022-06-17 10:43:01','en',0,NULL,NULL),(28,10,NULL,'2022-06-08 10:14:19','2022-06-21 13:17:04','ro',1,'Produs9',NULL),(29,10,NULL,'2022-06-08 10:14:19','2022-06-21 13:17:04','ru',0,NULL,NULL),(30,10,NULL,'2022-06-08 10:14:19','2022-06-21 13:17:04','en',0,NULL,NULL);
/*!40000 ALTER TABLE `product_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `position` int unsigned DEFAULT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `price` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,NULL,'2022-06-08 10:12:58','2022-06-17 10:51:49',1,1,3,'300',1),(2,NULL,'2022-06-08 10:13:08','2022-06-17 10:50:34',1,2,2,'200 MDL',3),(3,NULL,'2022-06-08 10:13:17','2022-06-17 10:49:45',1,3,3,'224.00',3),(4,NULL,'2022-06-08 10:13:33','2022-06-17 10:48:41',1,4,1,'300',1),(5,NULL,'2022-06-08 10:13:40','2022-06-17 10:47:34',1,5,2,'624.00',2),(6,NULL,'2022-06-08 10:13:47','2022-06-17 10:46:32',1,6,1,'100',1),(7,NULL,'2022-06-08 10:13:55','2022-06-17 10:45:27',1,7,4,'300',2),(8,NULL,'2022-06-08 10:14:04','2022-06-17 10:44:36',1,8,3,'200 MDL',1),(9,NULL,'2022-06-08 10:14:11','2022-06-17 10:43:01',1,9,2,'22451.00',2),(10,NULL,'2022-06-08 10:14:19','2022-06-21 13:17:04',1,10,1,'100.00',3);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `position` int unsigned DEFAULT NULL,
  `is_vip` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_user_id_foreign` (`user_id`),
  CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (14,NULL,'2022-06-08 06:47:37','2022-06-08 06:47:37',0,'Sebastian Pratt',NULL,1,0,30);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `related`
--

DROP TABLE IF EXISTS `related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `related` (
  `subject_id` int unsigned DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `related_id` int unsigned DEFAULT NULL,
  `related_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int unsigned NOT NULL,
  UNIQUE KEY `related_unique` (`subject_id`,`subject_type`,`related_id`,`related_type`,`browser_name`),
  KEY `related_browser_name_index` (`browser_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `related`
--

LOCK TABLES `related` WRITE;
/*!40000 ALTER TABLE `related` DISABLE KEYS */;
INSERT INTO `related` VALUES (2,'App\\Models\\Menu',1,'App\\Models\\Category','categories',1),(2,'App\\Models\\Menu',2,'App\\Models\\Category','categories',2),(2,'App\\Models\\Menu',3,'App\\Models\\Category','categories',3),(2,'App\\Models\\Menu',4,'App\\Models\\Category','categories',4),(1,'App\\Models\\Menu',1,'App\\Models\\Page','pages',1),(1,'App\\Models\\Menu',2,'App\\Models\\Page','pages',2),(1,'App\\Models\\Menu',3,'App\\Models\\Page','pages',3),(1,'App\\Models\\Menu',4,'App\\Models\\Page','pages',4),(1,'App\\Models\\Menu',8,'App\\Models\\Page','pages',5),(1,'App\\Models\\Menu',5,'App\\Models\\Page','pages',6),(8,'App\\Models\\Category',1,'App\\Models\\Category','categories',1),(5,'App\\Models\\Category',1,'App\\Models\\Category','categories',1),(6,'App\\Models\\Category',1,'App\\Models\\Category','categories',1),(7,'App\\Models\\Category',1,'App\\Models\\Category','categories',1),(8,'App\\Models\\ProductAtribute',1,'App\\Models\\ProductAtribute','productAtributes',1),(10,'App\\Models\\ProductAtribute',1,'App\\Models\\ProductAtribute','productAtributes',1),(9,'App\\Models\\ProductAtribute',1,'App\\Models\\ProductAtribute','productAtributes',1),(11,'App\\Models\\ProductAtribute',2,'App\\Models\\ProductAtribute','productAtributes',1),(12,'App\\Models\\ProductAtribute',2,'App\\Models\\ProductAtribute','productAtributes',1),(13,'App\\Models\\ProductAtribute',2,'App\\Models\\ProductAtribute','productAtributes',1),(14,'App\\Models\\ProductAtribute',3,'App\\Models\\ProductAtribute','productAtributes',1),(15,'App\\Models\\ProductAtribute',3,'App\\Models\\ProductAtribute','productAtributes',1),(16,'App\\Models\\ProductAtribute',3,'App\\Models\\ProductAtribute','productAtributes',1),(17,'App\\Models\\ProductAtribute',4,'App\\Models\\ProductAtribute','productAtributes',1),(18,'App\\Models\\ProductAtribute',4,'App\\Models\\ProductAtribute','productAtributes',1),(19,'App\\Models\\ProductAtribute',4,'App\\Models\\ProductAtribute','productAtributes',1),(20,'App\\Models\\ProductAtribute',4,'App\\Models\\ProductAtribute','productAtributes',1),(9,'App\\Models\\Product',2,'App\\Models\\Category','categories',1),(9,'App\\Models\\Product',2,'App\\Models\\Brand','brands',1),(9,'App\\Models\\Product',9,'App\\Models\\ProductAtribute','productAtributes',1),(9,'App\\Models\\Product',20,'App\\Models\\ProductAtribute','productAtributes',2),(9,'App\\Models\\Product',15,'App\\Models\\ProductAtribute','productAtributes',3),(8,'App\\Models\\Product',3,'App\\Models\\Category','categories',1),(8,'App\\Models\\Product',1,'App\\Models\\Brand','brands',1),(8,'App\\Models\\Product',14,'App\\Models\\ProductAtribute','productAtributes',1),(8,'App\\Models\\Product',17,'App\\Models\\ProductAtribute','productAtributes',2),(8,'App\\Models\\Product',8,'App\\Models\\ProductAtribute','productAtributes',3),(7,'App\\Models\\Product',4,'App\\Models\\Category','categories',1),(7,'App\\Models\\Product',2,'App\\Models\\Brand','brands',1),(7,'App\\Models\\Product',9,'App\\Models\\ProductAtribute','productAtributes',1),(7,'App\\Models\\Product',18,'App\\Models\\ProductAtribute','productAtributes',2),(7,'App\\Models\\Product',16,'App\\Models\\ProductAtribute','productAtributes',3),(6,'App\\Models\\Product',1,'App\\Models\\Category','categories',1),(6,'App\\Models\\Product',1,'App\\Models\\Brand','brands',1),(6,'App\\Models\\Product',10,'App\\Models\\ProductAtribute','productAtributes',1),(6,'App\\Models\\Product',18,'App\\Models\\ProductAtribute','productAtributes',2),(6,'App\\Models\\Product',12,'App\\Models\\ProductAtribute','productAtributes',3),(6,'App\\Models\\Product',15,'App\\Models\\ProductAtribute','productAtributes',4),(5,'App\\Models\\Product',2,'App\\Models\\Category','categories',1),(5,'App\\Models\\Product',2,'App\\Models\\Brand','brands',1),(5,'App\\Models\\Product',10,'App\\Models\\ProductAtribute','productAtributes',1),(5,'App\\Models\\Product',20,'App\\Models\\ProductAtribute','productAtributes',2),(5,'App\\Models\\Product',13,'App\\Models\\ProductAtribute','productAtributes',3),(5,'App\\Models\\Product',16,'App\\Models\\ProductAtribute','productAtributes',4),(4,'App\\Models\\Product',1,'App\\Models\\Category','categories',1),(4,'App\\Models\\Product',1,'App\\Models\\Brand','brands',1),(4,'App\\Models\\Product',10,'App\\Models\\ProductAtribute','productAtributes',1),(4,'App\\Models\\Product',11,'App\\Models\\ProductAtribute','productAtributes',2),(4,'App\\Models\\Product',14,'App\\Models\\ProductAtribute','productAtributes',3),(4,'App\\Models\\Product',17,'App\\Models\\ProductAtribute','productAtributes',4),(3,'App\\Models\\Product',3,'App\\Models\\Category','categories',1),(3,'App\\Models\\Product',3,'App\\Models\\Brand','brands',1),(3,'App\\Models\\Product',9,'App\\Models\\ProductAtribute','productAtributes',1),(3,'App\\Models\\Product',11,'App\\Models\\ProductAtribute','productAtributes',2),(3,'App\\Models\\Product',14,'App\\Models\\ProductAtribute','productAtributes',3),(3,'App\\Models\\Product',17,'App\\Models\\ProductAtribute','productAtributes',4),(2,'App\\Models\\Product',2,'App\\Models\\Category','categories',1),(2,'App\\Models\\Product',3,'App\\Models\\Brand','brands',1),(2,'App\\Models\\Product',8,'App\\Models\\ProductAtribute','productAtributes',1),(2,'App\\Models\\Product',12,'App\\Models\\ProductAtribute','productAtributes',2),(2,'App\\Models\\Product',15,'App\\Models\\ProductAtribute','productAtributes',3),(2,'App\\Models\\Product',20,'App\\Models\\ProductAtribute','productAtributes',4),(1,'App\\Models\\Product',3,'App\\Models\\Category','categories',1),(1,'App\\Models\\Product',1,'App\\Models\\Brand','brands',1),(1,'App\\Models\\Product',8,'App\\Models\\ProductAtribute','productAtributes',1),(1,'App\\Models\\Product',13,'App\\Models\\ProductAtribute','productAtributes',2),(1,'App\\Models\\Product',16,'App\\Models\\ProductAtribute','productAtributes',3),(1,'App\\Models\\Product',20,'App\\Models\\ProductAtribute','productAtributes',4),(3,'App\\Models\\Service',1,'App\\Models\\ServiceCategory','serviceCategories',1),(5,'App\\Models\\Service',2,'App\\Models\\ServiceCategory','serviceCategories',1),(10,'App\\Models\\Product',1,'App\\Models\\Category','categories',1),(10,'App\\Models\\Product',3,'App\\Models\\Brand','brands',1),(10,'App\\Models\\Product',10,'App\\Models\\ProductAtribute','productAtributes',1),(10,'App\\Models\\Product',19,'App\\Models\\ProductAtribute','productAtributes',2),(10,'App\\Models\\Product',16,'App\\Models\\ProductAtribute','productAtributes',3),(10,'App\\Models\\Product',13,'App\\Models\\ProductAtribute','productAtributes',4);
/*!40000 ALTER TABLE `related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_categories`
--

DROP TABLE IF EXISTS `service_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `position` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_categories`
--

LOCK TABLES `service_categories` WRITE;
/*!40000 ALTER TABLE `service_categories` DISABLE KEYS */;
INSERT INTO `service_categories` VALUES (1,NULL,'2022-06-02 12:39:25','2022-06-03 07:15:18',1,1),(2,NULL,'2022-06-02 12:41:54','2022-06-03 07:15:18',1,2),(3,NULL,'2022-06-02 12:42:28','2022-06-03 07:15:18',1,3),(4,NULL,'2022-06-02 12:42:58','2022-06-03 07:15:18',1,4),(5,NULL,'2022-06-02 12:43:26','2022-06-03 07:15:18',1,5);
/*!40000 ALTER TABLE `service_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_category_slugs`
--

DROP TABLE IF EXISTS `service_category_slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_category_slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `service_category_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_service_category_slugs_service_category_id` (`service_category_id`),
  KEY `service_category_slugs_locale_index` (`locale`),
  CONSTRAINT `fk_service_category_slugs_service_category_id` FOREIGN KEY (`service_category_id`) REFERENCES `service_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_category_slugs`
--

LOCK TABLES `service_category_slugs` WRITE;
/*!40000 ALTER TABLE `service_category_slugs` DISABLE KEYS */;
INSERT INTO `service_category_slugs` VALUES (1,1,NULL,NULL,'2022-06-03 07:12:37','spalare-covoare','ro',1),(2,1,NULL,NULL,NULL,'','ru',0),(3,1,NULL,NULL,NULL,'','en',0),(4,2,NULL,NULL,'2022-06-03 07:13:15','spalatorie','ro',1),(5,2,NULL,NULL,NULL,'','ru',0),(6,2,NULL,NULL,NULL,'','en',0),(7,3,NULL,NULL,'2022-06-03 07:13:33','spalarea-fatadelor-si-teraselor','ro',1),(8,3,NULL,NULL,NULL,'','ru',0),(9,3,NULL,NULL,NULL,'','en',0),(10,4,NULL,NULL,'2022-06-03 07:13:46','curatare-mobila','ro',1),(11,4,NULL,NULL,NULL,'','ru',0),(12,4,NULL,NULL,NULL,'','en',0),(13,5,NULL,NULL,'2022-06-03 07:14:01','alte-servicii','ro',1),(14,5,NULL,NULL,NULL,'','ru',0),(15,5,NULL,NULL,NULL,'','en',0);
/*!40000 ALTER TABLE `service_category_slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_category_translations`
--

DROP TABLE IF EXISTS `service_category_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_category_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `service_category_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `locale` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `service_category_id_locale_unique` (`service_category_id`,`locale`),
  KEY `service_category_translations_locale_index` (`locale`),
  CONSTRAINT `fk_service_category_translations_service_category_id` FOREIGN KEY (`service_category_id`) REFERENCES `service_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_category_translations`
--

LOCK TABLES `service_category_translations` WRITE;
/*!40000 ALTER TABLE `service_category_translations` DISABLE KEYS */;
INSERT INTO `service_category_translations` VALUES (1,1,NULL,'2022-06-02 12:39:25','2022-06-03 07:12:37','ro',1,'Spalare Covoare',NULL),(2,1,NULL,'2022-06-02 12:39:25','2022-06-03 07:12:37','ru',0,NULL,NULL),(3,1,NULL,'2022-06-02 12:39:25','2022-06-03 07:12:37','en',0,NULL,NULL),(4,2,NULL,'2022-06-02 12:41:54','2022-06-03 07:13:15','ro',1,'spălătorie',NULL),(5,2,NULL,'2022-06-02 12:41:54','2022-06-03 07:13:15','ru',0,NULL,NULL),(6,2,NULL,'2022-06-02 12:41:54','2022-06-03 07:13:15','en',0,NULL,NULL),(7,3,NULL,'2022-06-02 12:42:28','2022-06-03 07:13:33','ro',1,'Spalarea fatadelor si teraselor',NULL),(8,3,NULL,'2022-06-02 12:42:28','2022-06-03 07:13:33','ru',0,NULL,NULL),(9,3,NULL,'2022-06-02 12:42:28','2022-06-03 07:13:33','en',0,NULL,NULL),(10,4,NULL,'2022-06-02 12:42:59','2022-06-03 07:13:46','ro',1,'Curățare mobilă',NULL),(11,4,NULL,'2022-06-02 12:42:59','2022-06-03 07:13:46','ru',0,NULL,NULL),(12,4,NULL,'2022-06-02 12:42:59','2022-06-03 07:13:46','en',0,NULL,NULL),(13,5,NULL,'2022-06-02 12:43:26','2022-06-03 07:14:01','ro',1,'Alte servicii',NULL),(14,5,NULL,'2022-06-02 12:43:26','2022-06-03 07:14:01','ru',0,NULL,NULL),(15,5,NULL,'2022-06-02 12:43:26','2022-06-03 07:14:01','en',0,NULL,NULL);
/*!40000 ALTER TABLE `service_category_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_orders`
--

DROP TABLE IF EXISTS `service_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` int DEFAULT NULL,
  `length` int DEFAULT NULL,
  `width` int DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_orders`
--

LOCK TABLES `service_orders` WRITE;
/*!40000 ALTER TABLE `service_orders` DISABLE KEYS */;
INSERT INTO `service_orders` VALUES (1,NULL,'2022-06-20 09:49:20','2022-06-20 09:49:20',0,'Quentin Hurley','+1 (265) 448-4004',3,3,3,'unread',1),(2,NULL,'2022-06-20 09:54:38','2022-06-20 09:54:38',0,'Amena Joyce','+1 (616) 248-3412',3,2,4,'unread',2);
/*!40000 ALTER TABLE `service_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_slugs`
--

DROP TABLE IF EXISTS `service_slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `service_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_service_slugs_service_id` (`service_id`),
  KEY `service_slugs_locale_index` (`locale`),
  CONSTRAINT `fk_service_slugs_service_id` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_slugs`
--

LOCK TABLES `service_slugs` WRITE;
/*!40000 ALTER TABLE `service_slugs` DISABLE KEYS */;
INSERT INTO `service_slugs` VALUES (9,3,NULL,NULL,'2022-06-20 10:16:47','spalarea-covoarelor','ro',1),(10,3,NULL,NULL,'2022-06-20 10:16:47','moika-kovrov','ru',0),(11,3,NULL,NULL,'2022-06-20 10:16:47','carpet-washing','en',1),(12,3,NULL,NULL,'2022-06-20 10:16:47','mojka-kovrov','ru',1),(16,5,NULL,NULL,'2022-06-20 10:17:22','spalarea-textilelor','ro',1),(17,5,NULL,NULL,'2022-06-20 10:17:22','','ru',0),(18,5,NULL,NULL,'2022-06-20 10:17:22','','en',0),(19,5,NULL,NULL,NULL,'washing-textiles','en',1),(20,5,NULL,NULL,NULL,'stirka-tekstilya','ru',1);
/*!40000 ALTER TABLE `service_slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_translations`
--

DROP TABLE IF EXISTS `service_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `service_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `locale` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `service_id_locale_unique` (`service_id`,`locale`),
  KEY `service_translations_locale_index` (`locale`),
  CONSTRAINT `fk_service_translations_service_id` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_translations`
--

LOCK TABLES `service_translations` WRITE;
/*!40000 ALTER TABLE `service_translations` DISABLE KEYS */;
INSERT INTO `service_translations` VALUES (7,3,NULL,'2022-06-02 08:42:29','2022-06-20 10:16:47','ro',1,'Spălarea covoarelor','<p>Mauris at imperdiet tortor, volutpat semper neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et interdum lectus, eget lobortis erat. Duis faucibus egestas ante, quis posuere nibh sodales eu. </p><p><br></p><p>Donec non molestie purus, vitae feugiat neque. Quisque viverra hendrerit tortor dictum dictum. Aenean non consectetur lorem, non ultrices leo. Aliquam in lacus sed massa tincidunt facilisis id sed purus. Vestibulum id turpis sapien. </p><p><br></p><p>Duis sodales congue gravida. Praesent malesuada egestas malesuada. Donec placerat metus libero, et porttitor arcu sagittis id. Proin lectus arcu, malesuada id elit sit amet, scelerisque molestie dui. Aenean sollicitudin rhoncus diam et ultrices.</p>'),(8,3,NULL,'2022-06-02 08:42:29','2022-06-20 10:16:47','ru',1,'Мойка ковров',NULL),(9,3,NULL,'2022-06-02 08:42:29','2022-06-20 10:16:47','en',1,'Carpet washing',NULL),(13,5,NULL,'2022-06-03 08:23:48','2022-06-20 10:17:22','ro',1,'Spălarea textilelor','<p>Donec quis rhoncus lectus. Maecenas lobortis, nisl eu mattis aliquam, risus ligula pretium sem, id laoreet risus lacus quis ex. Donec gravida nisl turpis, nec luctus erat gravida sit amet.</p><p><br></p><p>Fusce nec ipsum eget odio tristique sollicitudin sagittis at massa. Morbi commodo nunc eget purus commodo, ut egestas lectus pretium. Vestibulum elementum vehicula elit, nec pulvinar lectus aliquam sed. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p><p><br></p><p> Nam nec ornare mi. Duis eget interdum tellus, in tempus justo. Sed quis ex ac velit consectetur interdum sed ut tortor.</p>'),(14,5,NULL,'2022-06-03 08:23:48','2022-06-20 10:17:22','ru',1,'Стирка текстиля',NULL),(15,5,NULL,'2022-06-03 08:23:48','2022-06-20 10:17:22','en',1,'Washing textiles',NULL);
/*!40000 ALTER TABLE `service_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `position` int unsigned DEFAULT NULL,
  `service_category_id` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (3,NULL,'2022-06-02 08:42:29','2022-06-20 10:16:47',1,1,1,35),(5,NULL,'2022-06-03 08:23:48','2022-06-20 10:17:22',1,2,2,32);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_translations`
--

DROP TABLE IF EXISTS `setting_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `setting_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `locale` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting_id_locale_unique` (`setting_id`,`locale`),
  KEY `setting_translations_locale_index` (`locale`),
  CONSTRAINT `fk_setting_translations_setting_id` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_translations`
--

LOCK TABLES `setting_translations` WRITE;
/*!40000 ALTER TABLE `setting_translations` DISABLE KEYS */;
INSERT INTO `setting_translations` VALUES (1,1,NULL,'2022-06-01 07:12:00','2022-06-01 10:17:16','ro',1,'https://facebook.com/'),(2,1,NULL,'2022-06-01 07:12:00','2022-06-01 10:17:16','ru',1,'https://facebook.com/'),(3,1,NULL,'2022-06-01 07:12:00','2022-06-01 10:17:16','en',1,'https://facebook.com/'),(4,2,NULL,'2022-06-01 07:12:00','2022-06-01 10:17:16','ro',1,'https://telegram.me/telegramUsername'),(5,2,NULL,'2022-06-01 07:12:00','2022-06-01 10:17:16','ru',1,'https://telegram.me/telegramUsername'),(6,2,NULL,'2022-06-01 07:12:00','2022-06-01 10:17:16','en',1,'https://telegram.me/telegramUsername'),(7,3,NULL,'2022-06-01 07:12:00','2022-06-01 10:17:16','ro',1,'viber://call/?number=%:+ 373 12 345 678'),(8,3,NULL,'2022-06-01 07:12:00','2022-06-01 10:17:16','ru',1,'viber://call/?number=%:+ 373 12 345 678'),(9,3,NULL,'2022-06-01 07:12:00','2022-06-01 10:17:16','en',1,'viber://call/?number=%:+ 373 12 345 678'),(10,4,NULL,'2022-06-01 07:12:00','2022-06-01 10:17:16','ro',1,'https://api.whatsapp.com/send?phone=37361033993'),(11,4,NULL,'2022-06-01 07:12:00','2022-06-01 10:17:16','ru',1,'https://api.whatsapp.com/send?phone=37361033993'),(12,4,NULL,'2022-06-01 07:12:00','2022-06-01 10:17:16','en',1,'https://api.whatsapp.com/send?phone=37361033993'),(13,5,NULL,'2022-06-01 07:13:24','2022-06-01 07:13:24','ro',1,'+1 (223) 455-8201'),(14,5,NULL,'2022-06-01 07:13:24','2022-06-01 07:13:24','ru',1,'+1 (223) 455-8201'),(15,5,NULL,'2022-06-01 07:13:24','2022-06-01 07:13:24','en',1,'+1 (223) 455-8201'),(16,6,NULL,'2022-06-01 07:13:24','2022-06-01 07:13:24','ro',1,'bd. Moscova 21'),(17,6,NULL,'2022-06-01 07:13:24','2022-06-01 07:13:24','ru',1,'bd. Moscova 21'),(18,6,NULL,'2022-06-01 07:13:24','2022-06-01 07:13:24','en',1,'bd. Moscova 21'),(19,7,NULL,'2022-06-01 07:13:24','2022-06-01 07:13:24','ro',1,'https://www.google.com/maps'),(20,7,NULL,'2022-06-01 07:13:24','2022-06-01 07:13:24','ru',1,'https://www.google.com/maps'),(21,7,NULL,'2022-06-01 07:13:24','2022-06-01 07:13:24','en',1,'https://www.google.com/maps'),(22,8,NULL,'2022-06-01 07:13:24','2022-06-01 07:13:24','ro',1,'info@ecurat.md'),(23,8,NULL,'2022-06-01 07:13:24','2022-06-01 07:13:24','ru',1,'info@ecurat.md'),(24,8,NULL,'2022-06-01 07:13:24','2022-06-01 07:13:24','en',1,'info@ecurat.md'),(25,9,NULL,'2022-06-01 07:13:24','2022-06-01 07:13:24','ro',1,'Luni-Vineri 09:00-18:00 <br> Pauza de prânz 12:00-13:00'),(26,9,NULL,'2022-06-01 07:13:24','2022-06-01 07:13:24','ru',1,NULL),(27,9,NULL,'2022-06-01 07:13:24','2022-06-01 07:13:24','en',1,NULL),(28,10,NULL,'2022-06-01 07:13:54','2022-06-01 07:13:54','ro',1,'eCurat'),(29,10,NULL,'2022-06-01 07:13:54','2022-06-01 07:13:54','ru',1,NULL),(30,10,NULL,'2022-06-01 07:13:54','2022-06-01 07:13:54','en',1,NULL),(31,11,NULL,'2022-06-01 07:13:54','2022-06-01 07:13:54','ro',1,NULL),(32,11,NULL,'2022-06-01 07:13:54','2022-06-01 07:13:54','ru',1,NULL),(33,11,NULL,'2022-06-01 07:13:54','2022-06-01 07:13:54','en',1,NULL),(34,12,NULL,'2022-06-01 07:13:54','2022-06-01 07:13:54','ro',1,NULL),(35,12,NULL,'2022-06-01 07:13:54','2022-06-01 07:13:54','ru',1,NULL),(36,12,NULL,'2022-06-01 07:13:54','2022-06-01 07:13:54','en',1,NULL),(37,14,NULL,'2022-06-01 10:39:19','2022-06-01 10:43:45','ro',1,'Ipsum dolor sit amet, consectetur adipiscing elit. Pulvinar nunc libero malesuada vel odio sit urna sagittis quisque.'),(38,14,NULL,'2022-06-01 10:39:19','2022-06-01 10:43:45','ru',1,NULL),(39,14,NULL,'2022-06-01 10:39:19','2022-06-01 10:43:45','en',1,NULL);
/*!40000 ALTER TABLE `setting_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `settings_key_index` (`key`),
  KEY `settings_section_index` (`section`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'2022-06-01 07:12:00','2022-06-01 07:12:00',NULL,'facebook_site','social-media-links'),(2,'2022-06-01 07:12:00','2022-06-01 07:12:00',NULL,'telegram_url','social-media-links'),(3,'2022-06-01 07:12:00','2022-06-01 07:12:00',NULL,'viber_url','social-media-links'),(4,'2022-06-01 07:12:00','2022-06-01 07:12:00',NULL,'whatt_url','social-media-links'),(5,'2022-06-01 07:13:24','2022-06-01 07:13:24',NULL,'phone','contact-fields'),(6,'2022-06-01 07:13:24','2022-06-01 07:13:24',NULL,'office_address','contact-fields'),(7,'2022-06-01 07:13:24','2022-06-01 07:13:24',NULL,'office_map_url','contact-fields'),(8,'2022-06-01 07:13:24','2022-06-01 07:13:24',NULL,'email','contact-fields'),(9,'2022-06-01 07:13:24','2022-06-01 07:13:24',NULL,'working_hours','contact-fields'),(10,'2022-06-01 07:13:54','2022-06-01 07:13:54',NULL,'default_seo_title','default-seo-fields'),(11,'2022-06-01 07:13:54','2022-06-01 07:13:54',NULL,'default_seo_description','default-seo-fields'),(12,'2022-06-01 07:13:54','2022-06-01 07:13:54',NULL,'default_seo_keywords','default-seo-fields'),(13,'2022-06-01 07:13:54','2022-06-01 07:13:54',NULL,'image','default-seo-fields'),(14,'2022-06-01 10:39:19','2022-06-01 10:39:19',NULL,'logo_text','favicon'),(15,'2022-06-01 10:39:19','2022-06-01 10:39:19',NULL,'favicon','favicon'),(16,'2022-06-01 10:39:19','2022-06-01 10:39:19',NULL,'svg','favicon');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagged`
--

DROP TABLE IF EXISTS `tagged`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tagged` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tagged_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagged`
--

LOCK TABLES `tagged` WRITE;
/*!40000 ALTER TABLE `tagged` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagged` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twill_password_resets`
--

DROP TABLE IF EXISTS `twill_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `twill_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `twill_password_resets_email_index` (`email`),
  KEY `twill_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twill_password_resets`
--

LOCK TABLES `twill_password_resets` WRITE;
/*!40000 ALTER TABLE `twill_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `twill_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twill_users`
--

DROP TABLE IF EXISTS `twill_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `twill_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `twill_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twill_users`
--

LOCK TABLES `twill_users` WRITE;
/*!40000 ALTER TABLE `twill_users` DISABLE KEYS */;
INSERT INTO `twill_users` VALUES (1,NULL,'2022-06-01 07:08:11','2022-06-17 10:32:07',1,'Admin','ana.l@dissoftware.com','$2y$10$QTElvaRHlAXQk9fi3C2Z4.gnxsgLSEIvjVHv9KJt333.dAULLSdhW','SUPERADMIN',NULL,NULL,NULL,'en');
/*!40000 ALTER TABLE `twill_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trademark` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legal_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_company` int DEFAULT NULL,
  `cart_session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (29,'Zenia Ryan','ryjidyliz@mailinator.com',NULL,'$2y$10$gG7g2Rt.4bTJaNaqeZskb.IWETGLeiHoZP6vJNlB7Lh4q8NW9/W8G',NULL,'2022-06-08 06:46:48','2022-06-08 06:46:48','+1 (253) 821-8263','Quis rerum aut aliqu','Ursula Bishop',1,NULL),(30,'Sebastian Pratt','lytucenoj@mailinator.com',NULL,'$2y$10$uqhbgMSXeeW.O6Yp.YIPCe0ZuMHKLp.SnItqSzQa1MIBDvBvFkQRu',NULL,'2022-06-08 06:47:37','2022-06-20 16:59:15','+1 (356) 471-5682','Deleniti veniam qui','Maggie Lee',1,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `session_id` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (1,1,NULL,15,'2022-06-09 07:55:52','2022-06-09 07:55:52'),(2,NULL,'CUSTOM_SESSION_ID',15,'2022-06-09 07:55:52','2022-06-09 07:55:52'),(6,NULL,'qsbND8dkYrDZ2geRb7PvYuDpQJt2dj2M8UbuPLue',6,'2022-06-09 10:19:24','2022-06-09 10:19:24'),(7,NULL,'qsbND8dkYrDZ2geRb7PvYuDpQJt2dj2M8UbuPLue',7,'2022-06-09 10:19:55','2022-06-09 10:19:55'),(9,NULL,'yRZfpHnQ1pppWzYan9clJNlwbSVoxDPKFwQn7po0',7,'2022-06-10 05:00:53','2022-06-10 05:00:53'),(10,NULL,'CfERks7nUiycC9m9KhCPLSPgeMW6XmvJ2LRY0WYp',1,'2022-06-15 12:56:45','2022-06-15 12:56:45'),(16,NULL,'aLpXm0n9AAZeYH3fDigbFGTSdiR7cBPRH2f0u31n',2,'2022-06-20 11:02:46','2022-06-20 11:02:46'),(17,NULL,'0dNeh3sKAJJORPnyDuEtrbGJ8ziVcVsfrIY8qfSH',2,'2022-06-20 15:41:00','2022-06-20 15:41:00'),(18,NULL,'0dNeh3sKAJJORPnyDuEtrbGJ8ziVcVsfrIY8qfSH',3,'2022-06-20 15:41:01','2022-06-20 15:41:01'),(19,30,NULL,1,'2022-06-20 16:15:37','2022-06-20 16:15:37'),(20,30,NULL,4,'2022-06-20 16:15:38','2022-06-20 16:15:38');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-24 13:55:25
