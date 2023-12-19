-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (arm64)
--
-- Host: 127.0.0.1    Database: ic_film
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `evaluate`
--

DROP TABLE IF EXISTS `evaluate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluate` (
  `eid` int NOT NULL AUTO_INCREMENT COMMENT '评价编号',
  `uid` int NOT NULL COMMENT '用户编号',
  `id` int NOT NULL COMMENT '电影编号',
  `value` decimal(2,0) NOT NULL DEFAULT '0' COMMENT '评分',
  `date` date DEFAULT NULL COMMENT '评分日期',
  PRIMARY KEY (`eid`),
  KEY `evaluate_movie_id_fk` (`id`),
  KEY `evaluate_user_uid_fk` (`uid`),
  CONSTRAINT `evaluate_movie_id_fk` FOREIGN KEY (`id`) REFERENCES `movie` (movieid),
  CONSTRAINT `evaluate_user_uid_fk` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=551 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluate`
--

LOCK TABLES `evaluate` WRITE;
/*!40000 ALTER TABLE `evaluate` DISABLE KEYS */;
INSERT INTO `evaluate` VALUES (1,2,39,8,'2023-11-22'),(2,11,11,9,'2023-11-22'),(3,9,30,10,'2023-11-22'),(4,6,22,9,'2023-11-22'),(5,9,6,8,'2023-11-22'),(6,5,12,8,'2023-11-22'),(7,10,43,10,'2023-11-22'),(8,5,37,9,'2023-11-22'),(9,1,27,10,'2023-11-22'),(10,2,42,10,'2023-11-22'),(11,1,39,9,'2023-11-22'),(12,10,34,8,'2023-11-22'),(13,7,22,10,'2023-11-22'),(14,8,12,9,'2023-11-22'),(15,4,17,9,'2023-11-22'),(16,10,39,8,'2023-11-22'),(17,7,50,8,'2023-11-22'),(18,11,41,10,'2023-11-22'),(19,4,25,8,'2023-11-22'),(20,1,4,9,'2023-11-22'),(21,4,4,8,'2023-11-22'),(22,10,27,10,'2023-11-22'),(23,10,47,8,'2023-11-22'),(24,7,24,9,'2023-11-22'),(25,2,50,8,'2023-11-22'),(26,3,2,10,'2023-11-22'),(27,9,23,10,'2023-11-22'),(28,2,36,8,'2023-11-22'),(29,4,40,9,'2023-11-22'),(30,7,42,9,'2023-11-22'),(31,9,34,8,'2023-11-22'),(32,5,11,10,'2023-11-22'),(33,7,17,10,'2023-11-22'),(34,7,2,8,'2023-11-22'),(35,9,46,9,'2023-11-22'),(36,4,28,8,'2023-11-22'),(37,2,11,10,'2023-11-22'),(38,11,47,10,'2023-11-22'),(39,5,44,9,'2023-11-22'),(40,6,5,8,'2023-11-22'),(41,4,46,8,'2023-11-22'),(42,5,47,8,'2023-11-22'),(43,9,16,8,'2023-11-22'),(44,11,4,8,'2023-11-22'),(45,4,5,8,'2023-11-22'),(46,3,20,10,'2023-11-22'),(47,11,2,9,'2023-11-22'),(48,6,4,8,'2023-11-22'),(49,3,37,9,'2023-11-22'),(50,9,27,8,'2023-11-22'),(51,1,31,8,'2023-11-22'),(52,10,5,9,'2023-11-22'),(53,7,15,10,'2023-11-22'),(54,9,18,8,'2023-11-22'),(55,6,33,9,'2023-11-22'),(56,10,14,9,'2023-11-22'),(57,5,49,10,'2023-11-22'),(58,7,40,9,'2023-11-22'),(59,7,25,9,'2023-11-22'),(60,2,40,8,'2023-11-22'),(61,5,43,10,'2023-11-22'),(62,9,1,8,'2023-11-22'),(63,10,38,9,'2023-11-22'),(64,11,22,9,'2023-11-22'),(65,11,15,9,'2023-11-22'),(66,1,14,10,'2023-11-22'),(67,3,39,8,'2023-11-22'),(68,5,35,8,'2023-11-22'),(69,8,30,10,'2023-11-22'),(70,3,6,8,'2023-11-22'),(71,4,43,8,'2023-11-22'),(72,9,29,9,'2023-11-22'),(73,9,10,9,'2023-11-22'),(74,3,15,9,'2023-11-22'),(75,3,8,10,'2023-11-22'),(76,5,10,8,'2023-11-22'),(77,4,7,10,'2023-11-22'),(78,11,12,10,'2023-11-22'),(79,2,15,10,'2023-11-22'),(80,3,49,9,'2023-11-22'),(81,3,47,9,'2023-11-22'),(82,10,23,8,'2023-11-22'),(83,3,33,8,'2023-11-22'),(84,1,34,8,'2023-11-22'),(85,4,24,8,'2023-11-22'),(86,11,33,9,'2023-11-22'),(87,8,18,10,'2023-11-22'),(88,9,49,8,'2023-11-22'),(89,1,44,10,'2023-11-22'),(90,5,30,10,'2023-11-22'),(91,5,50,10,'2023-11-22'),(92,6,10,10,'2023-11-22'),(93,9,13,10,'2023-11-22'),(94,6,14,10,'2023-11-22'),(95,8,14,10,'2023-11-22'),(96,5,3,9,'2023-11-22'),(97,1,48,8,'2023-11-22'),(98,11,25,8,'2023-11-22'),(99,7,14,8,'2023-11-22'),(100,10,2,10,'2023-11-22'),(101,2,16,8,'2023-11-22'),(102,11,17,10,'2023-11-22'),(103,5,24,8,'2023-11-22'),(104,6,20,10,'2023-11-22'),(105,5,38,8,'2023-11-22'),(106,9,36,9,'2023-11-22'),(107,10,42,10,'2023-11-22'),(108,5,29,8,'2023-11-22'),(109,8,25,10,'2023-11-22'),(110,1,19,8,'2023-11-22'),(111,8,49,9,'2023-11-22'),(112,9,19,9,'2023-11-22'),(113,4,29,10,'2023-11-22'),(114,11,13,10,'2023-11-22'),(115,10,9,8,'2023-11-22'),(116,10,44,10,'2023-11-22'),(117,5,40,10,'2023-11-22'),(118,7,5,9,'2023-11-22'),(119,11,14,9,'2023-11-22'),(120,4,14,10,'2023-11-22'),(121,6,43,9,'2023-11-22'),(122,3,35,10,'2023-11-22'),(123,2,10,10,'2023-11-22'),(124,1,21,9,'2023-11-22'),(125,8,24,10,'2023-11-22'),(126,8,38,10,'2023-11-22'),(127,4,48,8,'2023-11-22'),(128,9,44,9,'2023-11-22'),(129,11,1,8,'2023-11-22'),(130,10,11,9,'2023-11-22'),(131,6,6,10,'2023-11-22'),(132,7,9,8,'2023-11-22'),(133,11,18,10,'2023-11-22'),(134,9,28,10,'2023-11-22'),(135,10,29,9,'2023-11-22'),(136,8,48,10,'2023-11-22'),(137,2,35,8,'2023-11-22'),(138,2,28,8,'2023-11-22'),(139,3,31,9,'2023-11-22'),(140,1,1,9,'2023-11-22'),(141,6,32,8,'2023-11-22'),(142,11,7,10,'2023-11-22'),(143,5,8,8,'2023-11-22'),(144,11,44,9,'2023-11-22'),(145,6,30,8,'2023-11-22'),(146,3,5,8,'2023-11-22'),(147,11,37,10,'2023-11-22'),(148,10,8,10,'2023-11-22'),(149,8,6,9,'2023-11-22'),(150,11,43,8,'2023-12-13'),(151,8,46,8,'2023-12-13'),(152,9,24,8,'2023-12-13'),(153,10,19,9,'2023-12-13'),(154,6,48,10,'2023-12-13'),(155,5,45,9,'2023-12-13'),(156,7,35,8,'2023-12-13'),(157,5,22,8,'2023-12-13'),(158,3,28,10,'2023-12-13'),(159,1,37,8,'2023-12-13'),(160,2,9,10,'2023-12-13'),(161,5,23,10,'2023-12-13'),(162,1,15,10,'2023-12-13'),(163,1,17,10,'2023-12-13'),(164,8,5,10,'2023-12-13'),(165,2,47,8,'2023-12-13'),(166,1,50,10,'2023-12-13'),(167,7,32,10,'2023-12-13'),(168,6,16,8,'2023-12-13'),(169,9,32,9,'2023-12-13'),(170,6,7,10,'2023-12-13'),(171,9,14,9,'2023-12-13'),(172,1,8,9,'2023-12-13'),(173,1,33,10,'2023-12-13'),(174,10,16,8,'2023-12-13'),(175,10,3,8,'2023-12-13'),(176,8,10,10,'2023-12-13'),(177,7,37,9,'2023-12-13'),(178,2,14,10,'2023-12-13'),(179,3,42,8,'2023-12-13'),(180,9,4,8,'2023-12-13'),(181,7,49,8,'2023-12-13'),(182,5,21,10,'2023-12-13'),(183,2,18,8,'2023-12-13'),(184,6,46,8,'2023-12-13'),(185,6,8,9,'2023-12-13'),(186,5,34,10,'2023-12-13'),(187,6,11,10,'2023-12-13'),(188,2,33,8,'2023-12-13'),(189,10,37,8,'2023-12-13'),(190,3,43,9,'2023-12-13'),(191,5,1,9,'2023-12-13'),(192,6,37,8,'2023-12-13'),(193,4,45,8,'2023-12-13'),(194,4,30,8,'2023-12-13'),(195,5,32,8,'2023-12-13'),(196,8,35,10,'2023-12-13'),(197,6,35,10,'2023-12-13'),(198,8,37,10,'2023-12-13'),(199,5,13,8,'2023-12-13'),(200,2,30,8,'2023-12-13'),(201,8,23,8,'2023-12-13'),(202,9,5,10,'2023-12-13'),(203,4,33,8,'2023-12-13'),(204,10,13,10,'2023-12-13'),(205,3,30,8,'2023-12-13'),(206,2,22,10,'2023-12-13'),(207,6,41,9,'2023-12-13'),(208,11,5,10,'2023-12-13'),(209,9,43,9,'2023-12-13'),(210,5,5,8,'2023-12-13'),(211,5,18,9,'2023-12-13'),(212,10,45,9,'2023-12-13'),(213,8,8,9,'2023-12-13'),(214,5,36,10,'2023-12-13'),(215,10,12,8,'2023-12-13'),(216,8,29,10,'2023-12-13'),(217,10,40,9,'2023-12-13'),(218,1,38,8,'2023-12-13'),(219,2,27,8,'2023-12-13'),(220,3,17,8,'2023-12-13'),(221,5,16,8,'2023-12-13'),(222,3,25,8,'2023-12-13'),(223,11,10,8,'2023-12-13'),(224,8,2,8,'2023-12-13'),(225,9,38,10,'2023-12-13'),(226,1,40,9,'2023-12-13'),(227,10,50,10,'2023-12-13'),(228,8,42,8,'2023-12-13'),(229,7,16,8,'2023-12-13'),(230,7,23,8,'2023-12-13'),(231,7,1,9,'2023-12-13'),(232,5,9,8,'2023-12-13'),(233,9,12,8,'2023-12-13'),(234,11,27,8,'2023-12-13'),(235,2,12,9,'2023-12-13'),(236,2,3,9,'2023-12-13'),(237,3,29,9,'2023-12-13'),(238,3,27,10,'2023-12-13'),(239,8,32,8,'2023-12-13'),(240,1,36,8,'2023-12-13'),(241,8,3,8,'2023-12-13'),(242,4,22,8,'2023-12-13'),(243,9,50,9,'2023-12-13'),(244,7,3,10,'2023-12-13'),(245,1,35,9,'2023-12-13'),(246,3,14,10,'2023-12-13'),(247,1,49,8,'2023-12-13'),(248,3,11,9,'2023-12-13'),(249,4,20,9,'2023-12-13'),(250,1,32,9,'2023-12-13'),(251,10,4,10,'2023-12-13'),(252,7,27,9,'2023-12-13'),(253,4,27,10,'2023-12-13'),(254,11,49,10,'2023-12-13'),(255,8,13,9,'2023-12-13'),(256,4,47,9,'2023-12-19'),(257,7,21,9,'2023-12-19'),(258,6,29,9,'2023-12-19'),(259,11,19,8,'2023-12-19'),(260,7,43,8,'2023-12-19'),(261,4,31,8,'2023-12-19'),(262,11,8,10,'2023-12-19'),(263,10,46,10,'2023-12-19'),(264,11,21,8,'2023-12-19'),(265,10,33,9,'2023-12-19'),(266,11,30,9,'2023-12-19'),(267,8,43,9,'2023-12-19'),(268,7,47,10,'2023-12-19'),(269,4,16,10,'2023-12-19'),(270,4,32,10,'2023-12-19'),(271,4,19,10,'2023-12-19'),(272,5,48,9,'2023-12-19'),(273,1,5,10,'2023-12-19'),(274,11,3,9,'2023-12-19'),(275,9,31,10,'2023-12-19'),(276,7,4,10,'2023-12-19'),(277,6,12,8,'2023-12-19'),(278,8,36,8,'2023-12-19'),(279,11,23,10,'2023-12-19'),(280,11,16,10,'2023-12-19'),(281,7,12,9,'2023-12-19'),(282,1,23,8,'2023-12-19'),(283,9,33,10,'2023-12-19'),(284,5,14,9,'2023-12-19'),(285,1,12,8,'2023-12-19'),(286,1,24,10,'2023-12-19'),(287,8,44,8,'2023-12-19'),(288,4,11,8,'2023-12-19'),(289,5,26,10,'2023-12-19'),(290,11,31,9,'2023-12-19'),(291,10,36,8,'2023-12-19'),(292,1,29,9,'2023-12-19'),(293,6,3,9,'2023-12-19'),(294,11,35,8,'2023-12-19'),(295,9,25,10,'2023-12-19'),(296,3,26,10,'2023-12-19'),(297,5,20,8,'2023-12-19'),(298,2,45,9,'2023-12-19'),(299,11,9,9,'2023-12-19'),(300,2,32,10,'2023-12-19'),(301,2,1,10,'2023-12-19'),(302,9,26,9,'2023-12-19'),(303,9,37,8,'2023-12-19'),(304,10,25,9,'2023-12-19'),(305,7,28,8,'2023-12-19'),(306,3,40,9,'2023-12-19'),(307,2,31,9,'2023-12-19'),(308,1,20,10,'2023-12-19'),(309,2,4,8,'2023-12-19'),(310,6,38,9,'2023-12-19'),(311,9,39,9,'2023-12-19'),(312,5,42,8,'2023-12-19'),(313,4,34,10,'2023-12-19'),(314,8,45,10,'2023-12-19'),(315,10,31,9,'2023-12-19'),(316,1,28,9,'2023-12-19'),(317,2,43,9,'2023-12-19'),(318,2,26,8,'2023-12-19'),(319,7,45,8,'2023-12-19'),(320,4,23,10,'2023-12-19'),(321,6,49,10,'2023-12-19'),(322,5,17,10,'2023-12-19'),(323,11,45,10,'2023-12-19'),(324,8,17,8,'2023-12-19'),(325,4,26,8,'2023-12-19'),(326,3,48,10,'2023-12-19'),(327,3,18,9,'2023-12-19'),(328,11,32,9,'2023-12-19'),(329,1,2,8,'2023-12-19'),(330,1,11,8,'2023-12-19'),(331,7,6,10,'2023-12-19'),(332,7,18,9,'2023-12-19'),(333,6,47,8,'2023-12-19'),(334,2,20,9,'2023-12-19'),(335,4,2,10,'2023-12-19'),(336,11,20,9,'2023-12-19'),(337,9,41,10,'2023-12-19'),(338,7,48,8,'2023-12-19'),(339,3,23,9,'2023-12-19'),(340,1,9,9,'2023-12-19'),(341,3,13,9,'2023-12-19'),(342,8,33,10,'2023-12-19'),(343,4,18,8,'2023-12-19'),(344,3,38,9,'2023-12-19'),(345,5,41,9,'2023-12-19'),(346,4,44,8,'2023-12-19'),(347,10,22,10,'2023-12-19'),(348,2,41,10,'2023-12-19'),(349,5,46,9,'2023-12-19'),(350,11,46,10,'2023-12-19'),(351,10,15,10,'2023-12-19'),(352,3,9,8,'2023-12-19'),(353,5,28,10,'2023-12-19'),(354,7,13,10,'2023-12-19'),(355,1,30,8,'2023-12-19'),(356,8,28,9,'2023-12-19'),(357,4,13,9,'2023-12-19'),(358,6,34,10,'2023-12-19'),(359,3,44,9,'2023-12-19'),(360,7,8,9,'2023-12-19'),(361,7,29,8,'2023-12-19'),(362,2,29,10,'2023-12-19'),(363,5,27,9,'2023-12-19'),(364,6,42,9,'2023-12-19'),(365,6,21,10,'2023-12-19'),(366,6,28,8,'2023-12-19'),(367,4,41,8,'2023-12-19'),(368,11,29,9,'2023-12-19'),(369,2,7,8,'2023-12-19'),(370,3,50,9,'2023-12-19'),(371,2,49,9,'2023-12-19'),(372,7,26,8,'2023-12-19'),(373,1,25,10,'2023-12-19'),(374,2,38,10,'2023-12-19'),(375,9,9,9,'2023-12-19'),(376,3,10,9,'2023-12-19'),(377,11,34,10,'2023-12-19'),(378,6,31,10,'2023-12-19'),(379,1,10,10,'2023-12-19'),(380,5,31,8,'2023-12-19'),(381,3,16,8,'2023-12-19'),(382,10,24,9,'2023-12-19'),(383,9,45,10,'2023-12-19'),(384,11,24,10,'2023-12-19'),(385,6,50,10,'2023-12-19'),(386,6,39,10,'2023-12-19'),(387,3,22,8,'2023-12-19'),(388,7,46,9,'2023-12-19'),(389,4,12,9,'2023-12-19'),(390,4,42,10,'2023-12-19'),(391,10,26,10,'2023-12-19'),(392,1,46,8,'2023-12-19'),(393,9,11,8,'2023-12-19'),(394,5,25,8,'2023-12-19'),(395,10,49,10,'2023-12-19'),(396,3,7,9,'2023-12-19'),(397,3,32,10,'2023-12-19'),(398,3,3,8,'2023-12-19'),(399,5,33,10,'2023-12-19'),(400,10,17,9,'2023-12-19'),(401,8,47,9,'2023-12-19'),(402,8,26,10,'2023-12-19'),(403,9,2,9,'2023-12-19'),(404,9,17,9,'2023-12-19'),(405,8,31,10,'2023-12-19'),(406,10,32,8,'2023-12-19'),(407,11,50,9,'2023-12-19'),(408,4,21,10,'2023-12-19'),(409,2,46,10,'2023-12-19'),(410,8,15,10,'2023-12-19'),(411,5,15,8,'2023-12-19'),(412,8,50,8,'2023-12-19'),(413,2,8,8,'2023-12-19'),(414,11,6,9,'2023-12-19'),(415,2,24,9,'2023-12-19'),(416,10,10,10,'2023-12-19'),(417,1,41,9,'2023-12-19'),(418,10,1,9,'2023-12-19'),(419,8,11,8,'2023-12-19'),(420,5,2,10,'2023-12-19'),(421,6,36,8,'2023-12-19'),(422,6,44,9,'2023-12-19'),(423,5,39,8,'2023-12-19'),(424,6,15,10,'2023-12-19'),(425,8,4,10,'2023-12-19'),(426,9,22,10,'2023-12-19'),(427,7,41,9,'2023-12-19'),(428,7,7,9,'2023-12-19'),(429,9,7,9,'2023-12-19'),(430,4,39,10,'2023-12-19'),(431,1,26,8,'2023-12-19'),(432,9,48,8,'2023-12-19'),(433,10,28,10,'2023-12-19'),(434,6,2,8,'2023-12-19'),(435,6,9,8,'2023-12-19'),(436,6,17,9,'2023-12-19'),(437,2,6,9,'2023-12-19'),(438,3,36,9,'2023-12-19'),(439,10,18,10,'2023-12-19'),(440,4,37,10,'2023-12-19'),(441,3,41,9,'2023-12-19'),(442,4,9,10,'2023-12-19'),(443,6,19,9,'2023-12-19'),(444,4,49,10,'2023-12-19'),(445,5,7,10,'2023-12-19'),(446,4,36,10,'2023-12-19'),(447,11,40,10,'2023-12-19'),(448,1,16,8,'2023-12-19'),(449,5,4,10,'2023-12-19'),(450,4,1,9,'2023-12-19'),(451,1,3,9,'2023-12-19'),(452,10,7,8,'2023-12-19'),(453,1,45,9,'2023-12-19'),(454,3,12,10,'2023-12-19'),(455,8,20,8,'2023-12-19'),(456,4,10,8,'2023-12-19'),(457,10,48,9,'2023-12-19'),(458,8,7,8,'2023-12-19'),(459,8,19,9,'2023-12-19'),(460,8,39,10,'2023-12-19'),(461,2,23,8,'2023-12-19'),(462,1,42,10,'2023-12-19'),(463,8,1,8,'2023-12-19'),(464,11,48,9,'2023-12-19'),(465,4,8,10,'2023-12-19'),(466,9,15,10,'2023-12-19'),(467,3,19,8,'2023-12-19'),(468,10,30,9,'2023-12-19'),(469,2,21,10,'2023-12-19'),(470,3,4,8,'2023-12-19'),(471,11,26,10,'2023-12-19'),(472,2,5,9,'2023-12-19'),(473,7,19,8,'2023-12-19'),(474,2,34,10,'2023-12-19'),(475,2,19,10,'2023-12-19'),(476,7,10,8,'2023-12-19'),(477,3,34,10,'2023-12-19'),(478,7,20,9,'2023-12-19'),(479,1,18,9,'2023-12-19'),(480,11,36,9,'2023-12-19'),(481,3,24,10,'2023-12-19'),(482,9,21,9,'2023-12-19'),(483,10,41,10,'2023-12-19'),(484,3,21,10,'2023-12-19'),(485,4,3,9,'2023-12-19'),(486,6,24,9,'2023-12-19'),(487,7,31,9,'2023-12-19'),(488,7,38,9,'2023-12-19'),(489,7,36,10,'2023-12-19'),(490,9,40,8,'2023-12-19'),(491,7,44,8,'2023-12-19'),(492,9,3,10,'2023-12-19'),(493,2,13,9,'2023-12-19'),(494,9,35,10,'2023-12-19'),(495,5,6,10,'2023-12-19'),(496,4,50,8,'2023-12-19'),(497,7,39,10,'2023-12-19'),(498,6,45,9,'2023-12-19'),(499,6,13,9,'2023-12-19'),(500,1,6,8,'2023-12-19'),(501,8,40,9,'2023-12-19'),(502,2,48,8,'2023-12-19'),(503,6,23,10,'2023-12-19'),(504,3,45,8,'2023-12-19'),(505,6,25,8,'2023-12-19'),(506,8,9,9,'2023-12-19'),(507,7,33,8,'2023-12-19'),(508,9,20,8,'2023-12-19'),(509,1,22,10,'2023-12-19'),(510,1,7,10,'2023-12-19'),(511,11,28,9,'2023-12-19'),(512,4,35,8,'2023-12-19'),(513,11,42,10,'2023-12-19'),(514,10,21,9,'2023-12-19'),(515,10,6,8,'2023-12-19'),(516,11,38,10,'2023-12-19'),(517,11,39,9,'2023-12-19'),(518,9,42,8,'2023-12-19'),(519,8,22,10,'2023-12-19'),(520,7,30,8,'2023-12-19'),(521,10,35,10,'2023-12-19'),(522,3,1,10,'2023-12-19'),(523,8,21,8,'2023-12-19'),(524,6,18,9,'2023-12-19'),(525,2,37,9,'2023-12-19'),(526,1,43,8,'2023-12-19'),(527,2,44,8,'2023-12-19'),(528,8,41,9,'2023-12-19'),(529,2,17,8,'2023-12-19'),(530,5,19,9,'2023-12-19'),(531,7,34,10,'2023-12-19'),(532,1,13,8,'2023-12-19'),(533,9,8,8,'2023-12-19'),(534,4,15,10,'2023-12-19'),(535,4,6,8,'2023-12-19'),(536,7,11,10,'2023-12-19'),(537,6,27,9,'2023-12-19'),(538,6,26,10,'2023-12-19'),(539,8,34,8,'2023-12-19'),(540,1,47,10,'2023-12-19'),(541,6,40,9,'2023-12-19'),(542,4,38,10,'2023-12-19'),(543,2,25,9,'2023-12-19'),(544,3,46,8,'2023-12-19'),(545,10,20,8,'2023-12-19'),(546,2,2,9,'2023-12-19'),(547,6,1,8,'2023-12-19'),(548,8,16,10,'2023-12-19'),(549,9,47,9,'2023-12-19'),(550,8,27,8,'2023-12-19');
/*!40000 ALTER TABLE `evaluate` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `enforce_insert_value_range` BEFORE INSERT ON `evaluate` FOR EACH ROW BEGIN
    IF NEW.value IS NOT NULL AND (NEW.value < 0.0 OR NEW.value > 10.0) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Value must be between 0.0 and 10.0';
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
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `prevent_duplicate_id_uid_insert` BEFORE INSERT ON `evaluate` FOR EACH ROW BEGIN
    DECLARE count_duplicates INT;

    -- Check if there are duplicates
    SELECT COUNT(*)
    INTO count_duplicates
    FROM evaluate
    WHERE id = NEW.id AND uid = NEW.uid;

    -- If duplicates found, raise an exception
    IF count_duplicates > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Duplicate id and uid combination found. Insert is not allowed.';
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
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `fill_evaluation_date_insert` BEFORE INSERT ON `evaluate` FOR EACH ROW BEGIN
    SET NEW.date = CURRENT_DATE();
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
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_update_movie_rating_index` AFTER INSERT ON `evaluate` FOR EACH ROW BEGIN
    -- Update rating
    UPDATE movie
    SET rating = (
        SELECT AVG(value)
        FROM evaluate
        WHERE movieid = NEW.id
    )
    WHERE movieid = NEW.id;

    -- Update index
    UPDATE movie
    SET `index` = (
        SELECT COUNT(*)
        FROM evaluate
        WHERE movieid = NEW.id
    )
    WHERE movieid = NEW.id;
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
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_update_week_month_index` AFTER INSERT ON `evaluate` FOR EACH ROW BEGIN
    DECLARE week_count INT;
    DECLARE month_count INT;

    -- Calculate week count
    SELECT COUNT(*)
    INTO week_count
    FROM evaluate
    WHERE id = NEW.id AND YEARWEEK(date) = YEARWEEK(NEW.date);

    -- Calculate month count
    SELECT COUNT(*)
    INTO month_count
    FROM evaluate
    WHERE id = NEW.id AND DATE_FORMAT(date, '%Y-%m') = DATE_FORMAT(NEW.date, '%Y-%m');

    -- Update movie table
    UPDATE movie
    SET weekindex = week_count,
        monthindex = month_count
    WHERE movieid = NEW.id;
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
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `enforce_update_value_range` BEFORE UPDATE ON `evaluate` FOR EACH ROW BEGIN
    IF NEW.value IS NOT NULL AND (NEW.value < 0.0 OR NEW.value > 10.0) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Value must be between 0.0 and 10.0';
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
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `prevent_duplicate_id_uid_update` BEFORE UPDATE ON `evaluate` FOR EACH ROW BEGIN
    DECLARE count_duplicates INT;

    -- Only prevent duplicates if id or uid is actually being updated
    IF NEW.id != OLD.id OR NEW.uid != OLD.uid THEN
        -- Check if there are duplicates
        SELECT COUNT(*)
        INTO count_duplicates
        FROM evaluate
        WHERE id = NEW.id AND uid = NEW.uid;

        -- If duplicates found, raise an exception
        IF count_duplicates > 1 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Duplicate id and uid combination found. Update is not allowed.';
        END IF;
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
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `fill_evaluation_date_update` BEFORE UPDATE ON `evaluate` FOR EACH ROW BEGIN
    SET NEW.date = CURRENT_DATE();
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
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_movie_rating` AFTER UPDATE ON `evaluate` FOR EACH ROW BEGIN
    -- Update rating
    UPDATE movie
    SET rating = (
        SELECT AVG(value)
        FROM evaluate
        WHERE movieid = NEW.id
    )
    WHERE movieid = NEW.id;
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
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_week_month_index` AFTER UPDATE ON `evaluate` FOR EACH ROW BEGIN
    DECLARE week_count INT;
    DECLARE month_count INT;

    -- Calculate week count
    SELECT COUNT(*)
    INTO week_count
    FROM evaluate
    WHERE id = NEW.id AND YEARWEEK(date) = YEARWEEK(NEW.date);

    -- Calculate month count
    SELECT COUNT(*)
    INTO month_count
    FROM evaluate
    WHERE id = NEW.id AND DATE_FORMAT(date, '%Y-%m') = DATE_FORMAT(NEW.date, '%Y-%m');

    -- Update movie table
    UPDATE movie
    SET weekindex = week_count,
        monthindex = month_count
    WHERE movieid = NEW.id;
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
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_movie_rating_index` AFTER DELETE ON `evaluate` FOR EACH ROW BEGIN
    -- Update rating only if there are remaining records
    UPDATE movie
    SET rating = (
        SELECT AVG(value)
        FROM evaluate
        WHERE movieid = OLD.id
    )
    WHERE movieid = OLD.id AND (
        SELECT COUNT(*)
        FROM evaluate
        WHERE movieid = OLD.id
    ) > 0;

    -- Update index
    UPDATE movie
    SET `index` = (
        SELECT COUNT(*)
        FROM evaluate
        WHERE movieid = OLD.id
    )
    WHERE movieid = OLD.id;
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
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_week_month_index` AFTER DELETE ON `evaluate` FOR EACH ROW BEGIN
    DECLARE week_count INT;
    DECLARE month_count INT;

    -- Calculate week count
    SELECT COUNT(*)
    INTO week_count
    FROM evaluate
    WHERE id = OLD.id AND YEARWEEK(date) = YEARWEEK(OLD.date);

    -- Calculate month count
    SELECT COUNT(*)
    INTO month_count
    FROM evaluate
    WHERE id = OLD.id AND DATE_FORMAT(date, '%Y-%m') = DATE_FORMAT(OLD.date, '%Y-%m');

    -- Update movie table
    UPDATE movie
    SET weekindex = week_count,
        monthindex = month_count
    WHERE movieid = OLD.id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '电影编号',
  `name` varchar(20) NOT NULL COMMENT '电影名称',
  `director` varchar(50) NOT NULL COMMENT '电影导演',
  `staring` varchar(50) NOT NULL COMMENT '电影主演',
  `genre` varchar(20) NOT NULL COMMENT '电影类别',
  `region` varchar(50) NOT NULL COMMENT '电影地区',
  `rating` decimal(3,1) NOT NULL DEFAULT '0.0' COMMENT '电影评分',
  `index` int NOT NULL DEFAULT '0' COMMENT '电影指数（评价数）',
  `weekindex` int NOT NULL DEFAULT '0' COMMENT '本周指数',
  `monthindex` int NOT NULL DEFAULT '0' COMMENT '本月指数',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '电影权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'肖申克的救赎','弗兰克·德拉邦特','蒂姆·罗宾斯 / 摩根·弗里曼','剧情 / 犯罪','美国',8.8,11,6,8,0),(2,'霸王别姬','陈凯歌','张国荣 / 张丰毅','剧情 / 爱情 / 同性','中国大陆 / 中国香港',9.0,11,6,7,1),(3,'阿甘正传','罗伯特·泽米吉斯','汤姆·汉克斯 / 罗宾·怀特','剧情 / 爱情','美国',8.9,11,6,10,0),(4,'泰坦尼克号','詹姆斯·卡梅隆','莱昂纳多·迪卡普里奥 / 凯特·温丝莱特','剧情 / 爱情 / 灾难','美国 / 墨西哥',8.8,11,5,7,0),(5,'这个杀手不太冷','吕克·贝松','让·雷诺 / 娜塔莉·波特曼','剧情 / 动作 / 犯罪','法国 / 美国',9.0,11,5,5,0),(6,'千与千寻','宫崎骏','柊瑠美 / 入野自由','剧情 / 动画 / 奇幻','日本',8.8,11,4,4,0),(7,'美丽人生','罗伯托·贝尼尼','罗伯托·贝尼尼 / 尼可莱塔·布拉斯基','剧情 / 喜剧 / 爱情 / 战争','意大利',9.2,11,8,9,1),(8,'星际穿越','克里斯托弗·诺兰','马修·麦康纳 / 安妮·海瑟薇','剧情 / 科幻 / 冒险','美国 / 英国 / 加拿大',9.1,11,5,8,1),(9,'盗梦空间','克里斯托弗·诺兰','莱昂纳多·迪卡普里奥 / 约瑟夫·高登-莱维特','剧情 / 科幻 / 悬疑 / 冒险','美国 / 英国',8.7,11,7,9,0),(10,'辛德勒的名单','史蒂文·斯皮尔伯格','连姆·尼森 / 本·金斯利','剧情 / 历史 / 战争','美国',9.1,11,5,7,1),(11,'楚门的世界','彼得·威尔','金·凯瑞 / 劳拉·琳妮','剧情 / 科幻','美国',9.0,11,4,4,0),(12,'忠犬八公的故事','拉斯·霍尔斯道姆','理查·基尔 / 莎拉·罗默尔','剧情','美国 / 英国',8.7,11,5,8,0),(13,'海上钢琴师','朱塞佩·托纳多雷','蒂姆·罗斯 / 普路特·泰勒·文斯','剧情 / 音乐','意大利',9.2,11,6,9,1),(14,'三傻大闹宝莱坞','拉吉库马尔·希拉尼','阿米尔·汗 / 卡琳娜·卡普尔','剧情 / 喜剧 / 爱情 / 歌舞','印度',9.5,11,7,7,1),(15,'放牛班的春天','克里斯托夫·巴哈蒂','让-巴蒂斯特·莫尼耶 / 热拉尔·朱尼奥','剧情 / 音乐','法国 / 瑞士 / 德国',9.6,11,6,7,1),(16,'机器人总动员','安德鲁·斯坦顿','本·贝尔特 / 艾丽莎·奈特','科幻 / 动画 / 冒险','美国',8.5,11,5,9,0),(17,'疯狂动物城','拜伦·霍华德 / 瑞奇·摩尔 / 杰拉德·布什','金妮弗·古德温 / 杰森·贝特曼','喜剧 / 动画 / 冒险','美国',9.1,11,6,8,1),(18,'无间道','刘伟强 / 麦兆辉','刘德华 / 梁朝伟','剧情 / 惊悚 / 犯罪','中国香港',9.0,11,6,8,1),(19,'控方证人','比利·怀尔德','泰隆·鲍华 / 玛琳·黛德丽','剧情 / 悬疑 / 犯罪','美国',8.8,11,8,9,0),(20,'大话西游之大圣娶亲','刘镇伟','周星驰 / 吴孟达','喜剧 / 爱情 / 奇幻 / 古装','中国香港 / 中国大陆',8.9,11,8,9,0),(21,'熔炉','黄东赫','孔刘 / 郑有美','剧情','韩国',9.3,11,9,10,1),(22,'教父','弗朗西斯·福特·科波拉','马龙·白兰度 / 阿尔·帕西诺','剧情 / 犯罪','美国',9.3,11,5,8,1),(23,'触不可及','奥利维埃·纳卡什 / 埃里克·托莱达诺','弗朗索瓦·克鲁塞 / 奥玛·希','剧情 / 喜剧','法国',9.0,11,6,9,0),(24,'当幸福来敲门','加布里埃莱·穆奇诺','威尔·史密斯 / 贾登·史密斯','剧情 / 家庭 / 传记','美国',9.1,11,6,7,1),(25,'寻梦环游记','李·昂克里奇 / 阿德里安·莫利纳','安东尼·冈萨雷斯 / 盖尔·加西亚·贝纳尔','喜剧 / 动画 / 音乐 / 奇幻','美国',8.8,11,6,7,0),(26,'末代皇帝','贝纳尔多·贝托鲁奇','尊龙 / 陈冲','剧情 / 传记 / 历史','英国 / 意大利 / 中国大陆 / 法国',9.2,11,11,11,1),(27,'龙猫','宫崎骏','日高范子 / 坂本千夏','动画 / 奇幻 / 冒险','日本',9.0,11,3,3,0),(28,'怦然心动','罗伯·莱纳','玛德琳·卡罗尔 / 卡兰·麦克奥利菲','剧情 / 喜剧 / 爱情','美国',9.0,11,7,8,0),(29,'活着','张艺谋','葛优 / 巩俐','剧情 / 家庭 / 历史','中国大陆 / 中国香港',9.1,11,4,4,1),(30,'哈利·波特与魔法石','克里斯·哥伦布','丹尼尔·雷德克里夫 / 艾玛·沃森','奇幻 / 冒险','美国 / 英国',8.7,11,4,4,0),(31,'蝙蝠侠：黑暗骑士','克里斯托弗·诺兰','克里斯蒂安·贝尔 / 希斯·莱杰','剧情 / 动作 / 科幻 / 惊悚 / ','美国 / 英国',9.0,11,2,2,0),(32,'指环王3：王者无敌','彼得·杰克逊','伊利亚·伍德 / 西恩·奥斯汀','剧情 / 动作 / 奇幻 / 冒险','美国 / 新西兰',9.0,11,5,10,0),(33,'我不是药神','文牧野','徐峥 / 王传君','剧情 / 喜剧','中国大陆',9.0,11,5,8,0),(34,'乱世佳人','维克多·弗莱明 / 乔治·库克 / 山姆·伍德','费雯·丽 / 克拉克·盖博','剧情 / 爱情 / 历史 / 战争','美国',9.3,11,7,8,1),(35,'飞屋环游记','彼特·道格特 / 鲍勃·彼德森','爱德华·阿斯纳 / 克里斯托弗·普卢默','剧情 / 喜剧 / 动画 / 冒险','美国',9.0,11,4,8,1),(36,'素媛','李濬益','薛景求 / 严志媛','剧情','韩国',8.8,11,7,9,0),(37,'十二怒汉','西德尼·吕美特','亨利·方达 / 马丁·鲍尔萨姆','剧情','美国',8.9,11,3,3,0),(38,'哈尔的移动城堡','宫崎骏','倍赏千惠子 / 木村拓哉','动画 / 奇幻 / 冒险','日本',9.3,11,3,3,1),(39,'何以为家','娜丁·拉巴基','赞恩·阿尔·拉菲亚 / 约丹诺斯·希费罗','剧情','黎巴嫩 / 美国 / 法国 / 塞浦路斯',9.0,11,4,4,0),(40,'让子弹飞','姜文','姜文 / 葛优','剧情 / 喜剧 / 动作 / 西部','中国大陆 / 中国香港',9.0,11,5,7,0),(41,'摔跤吧！爸爸','涅提·蒂瓦里','阿米尔·汗 / 法缇玛·萨那·纱卡','剧情 / 家庭 / 传记 / 运动','印度',9.3,11,9,10,1),(42,'猫鼠游戏','史蒂文·斯皮尔伯格','莱昂纳多·迪卡普里奥 / 汤姆·汉克斯','剧情 / 传记 / 犯罪','美国 / 加拿大',9.1,11,6,8,1),(43,'天空之城','宫崎骏','田中真弓 / 横泽启子','动画 / 奇幻 / 冒险','日本',8.8,11,4,4,0),(44,'鬼子来了','姜文','姜文 / 香川照之','剧情 / 喜剧','中国大陆',8.8,11,5,5,0),(45,'海蒂和爷爷','阿兰·葛斯彭纳','阿努克·斯特芬 / 布鲁诺·冈茨','剧情 / 家庭 / 冒险','德国 / 瑞士',9.0,11,8,11,0),(46,'少年派的奇幻漂流','李安','苏拉·沙玛 / 伊尔凡·可汗','剧情 / 奇幻 / 冒险','美国 / 中国台湾 / 英国 / 加拿大',8.8,11,7,9,0),(47,'钢琴家','罗曼·波兰斯基','阿德里安·布罗迪 / 托马斯·克莱舒曼','剧情 / 音乐 / 传记 / 战争','英国 / 法国 / 波兰 / 德国',8.9,11,6,7,0),(48,'大话西游之月光宝盒','刘镇伟','周星驰 / 吴孟达','喜剧 / 爱情 / 奇幻 / 古装','中国香港 / 中国大陆',8.8,11,3,3,0),(49,'指环王2：双塔奇兵','彼得·杰克逊','伊利亚·伍德 / 西恩·奥斯汀','剧情 / 动作 / 奇幻 / 冒险','美国 / 新西兰',9.2,11,4,4,1),(50,'闻香识女人','马丁·布莱斯特','阿尔·帕西诺 / 克里斯·奥唐纳','剧情','美国',9.0,11,5,8,0);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `uid` int NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户权限',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin',1),(2,'test1','123456',1),(3,'test2','123456',0),(4,'test3','123456',0),(5,'test4','123456',0),(6,'test5','123456',0),(7,'test6','123456',0),(8,'test7','123456',0),(9,'test8','123456',0),(10,'test9','123456',0),(11,'test10','123456',0);
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

-- Dump completed on 2023-12-19 13:36:07
