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
  `evaluate_id` int NOT NULL AUTO_INCREMENT COMMENT '评价编号',
  `user_id` int NOT NULL COMMENT '用户编号',
  `movie_id` int NOT NULL COMMENT '电影编号',
  `evaluate_value` decimal(2,0) NOT NULL DEFAULT '0' COMMENT '评分',
  `evaluate_date` date DEFAULT NULL COMMENT '评分日期',
  PRIMARY KEY (`evaluate_id`),
  KEY `evaluate_movie_movie_id_fk` (`movie_id`),
  KEY `evaluate_user_user_id_fk` (`user_id`),
  CONSTRAINT `evaluate_movie_movie_id_fk` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`),
  CONSTRAINT `evaluate_user_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=551 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluate`
--

LOCK TABLES `evaluate` WRITE;
/*!40000 ALTER TABLE `evaluate` DISABLE KEYS */;
INSERT INTO `evaluate` VALUES (1,2,39,8,'2023-11-22'),(2,11,11,9,'2023-11-22'),(3,9,30,10,'2023-11-22'),(4,6,22,9,'2023-11-22'),(5,9,6,8,'2023-11-22'),(6,5,12,8,'2023-11-22'),(7,10,43,10,'2023-11-22'),(8,5,37,9,'2023-11-22'),(9,1,27,10,'2023-11-22'),(10,2,42,10,'2023-11-22'),(11,1,39,9,'2023-11-22'),(12,10,34,8,'2023-11-22'),(13,7,22,10,'2023-11-22'),(14,8,12,9,'2023-11-22'),(15,4,17,9,'2023-11-22'),(16,10,39,8,'2023-11-22'),(17,7,50,8,'2023-11-22'),(18,11,41,10,'2023-11-22'),(19,4,25,8,'2023-11-22'),(20,1,4,9,'2023-11-22'),(21,4,4,8,'2023-11-22'),(22,10,27,10,'2023-11-22'),(23,10,47,8,'2023-11-22'),(24,7,24,9,'2023-11-22'),(25,2,50,8,'2023-11-22'),(26,3,2,10,'2023-11-22'),(27,9,23,10,'2023-11-22'),(28,2,36,8,'2023-11-22'),(29,4,40,9,'2023-11-22'),(30,7,42,9,'2023-11-22'),(31,9,34,8,'2023-11-22'),(32,5,11,10,'2023-11-22'),(33,7,17,10,'2023-11-22'),(34,7,2,8,'2023-11-22'),(35,9,46,9,'2023-11-22'),(36,4,28,8,'2023-11-22'),(37,2,11,10,'2023-11-22'),(38,11,47,10,'2023-11-22'),(39,5,44,9,'2023-11-22'),(40,6,5,8,'2023-11-22'),(41,4,46,8,'2023-11-22'),(42,5,47,8,'2023-11-22'),(43,9,16,8,'2023-11-22'),(44,11,4,8,'2023-11-22'),(45,4,5,8,'2023-11-22'),(46,3,20,10,'2023-11-22'),(47,11,2,9,'2023-11-22'),(48,6,4,8,'2023-11-22'),(49,3,37,9,'2023-11-22'),(50,9,27,8,'2023-11-22'),(51,1,31,8,'2023-11-22'),(52,10,5,9,'2023-11-22'),(53,7,15,10,'2023-11-22'),(54,9,18,8,'2023-11-22'),(55,6,33,9,'2023-11-22'),(56,10,14,9,'2023-11-22'),(57,5,49,10,'2023-11-22'),(58,7,40,9,'2023-11-22'),(59,7,25,9,'2023-11-22'),(60,2,40,8,'2023-11-22'),(61,5,43,10,'2023-11-22'),(62,9,1,8,'2023-11-22'),(63,10,38,9,'2023-11-22'),(64,11,22,9,'2023-11-22'),(65,11,15,9,'2023-11-22'),(66,1,14,10,'2023-11-22'),(67,3,39,8,'2023-11-22'),(68,5,35,8,'2023-11-22'),(69,8,30,10,'2023-11-22'),(70,3,6,8,'2023-11-22'),(71,4,43,8,'2023-11-22'),(72,9,29,9,'2023-11-22'),(73,9,10,9,'2023-11-22'),(74,3,15,9,'2023-11-22'),(75,3,8,10,'2023-11-22'),(76,5,10,8,'2023-11-22'),(77,4,7,10,'2023-11-22'),(78,11,12,10,'2023-11-22'),(79,2,15,10,'2023-11-22'),(80,3,49,9,'2023-11-22'),(81,3,47,9,'2023-11-22'),(82,10,23,8,'2023-11-22'),(83,3,33,8,'2023-11-22'),(84,1,34,8,'2023-11-22'),(85,4,24,8,'2023-11-22'),(86,11,33,9,'2023-11-22'),(87,8,18,10,'2023-11-22'),(88,9,49,8,'2023-11-22'),(89,1,44,10,'2023-11-22'),(90,5,30,10,'2023-11-22'),(91,5,50,10,'2023-11-22'),(92,6,10,10,'2023-11-22'),(93,9,13,10,'2023-11-22'),(94,6,14,10,'2023-11-22'),(95,8,14,10,'2023-11-22'),(96,5,3,9,'2023-11-22'),(97,1,48,8,'2023-11-22'),(98,11,25,8,'2023-11-22'),(99,7,14,8,'2023-11-22'),(100,10,2,10,'2023-11-22'),(101,2,16,8,'2023-11-22'),(102,11,17,10,'2023-11-22'),(103,5,24,8,'2023-11-22'),(104,6,20,10,'2023-11-22'),(105,5,38,8,'2023-11-22'),(106,9,36,9,'2023-11-22'),(107,10,42,10,'2023-11-22'),(108,5,29,8,'2023-11-22'),(109,8,25,10,'2023-11-22'),(110,1,19,8,'2023-11-22'),(111,8,49,9,'2023-11-22'),(112,9,19,9,'2023-11-22'),(113,4,29,10,'2023-11-22'),(114,11,13,10,'2023-11-22'),(115,10,9,8,'2023-11-22'),(116,10,44,10,'2023-11-22'),(117,5,40,10,'2023-11-22'),(118,7,5,9,'2023-11-22'),(119,11,14,9,'2023-11-22'),(120,4,14,10,'2023-11-22'),(121,6,43,9,'2023-11-22'),(122,3,35,10,'2023-11-22'),(123,2,10,10,'2023-11-22'),(124,1,21,9,'2023-11-22'),(125,8,24,10,'2023-11-22'),(126,8,38,10,'2023-11-22'),(127,4,48,8,'2023-11-22'),(128,9,44,9,'2023-11-22'),(129,11,1,8,'2023-11-22'),(130,10,11,9,'2023-11-22'),(131,6,6,10,'2023-11-22'),(132,7,9,8,'2023-11-22'),(133,11,18,10,'2023-11-22'),(134,9,28,10,'2023-11-22'),(135,10,29,9,'2023-11-22'),(136,8,48,10,'2023-11-22'),(137,2,35,8,'2023-11-22'),(138,2,28,8,'2023-11-22'),(139,3,31,9,'2023-11-22'),(140,1,1,9,'2023-11-22'),(141,6,32,8,'2023-11-22'),(142,11,7,10,'2023-11-22'),(143,5,8,8,'2023-11-22'),(144,11,44,9,'2023-11-22'),(145,6,30,8,'2023-11-22'),(146,3,5,8,'2023-11-22'),(147,11,37,10,'2023-11-22'),(148,10,8,10,'2023-11-22'),(149,8,6,9,'2023-11-22'),(150,11,43,8,'2023-12-13'),(151,8,46,8,'2023-12-13'),(152,9,24,8,'2023-12-13'),(153,10,19,9,'2023-12-13'),(154,6,48,10,'2023-12-13'),(155,5,45,9,'2023-12-13'),(156,7,35,8,'2023-12-13'),(157,5,22,8,'2023-12-13'),(158,3,28,10,'2023-12-13'),(159,1,37,8,'2023-12-13'),(160,2,9,10,'2023-12-13'),(161,5,23,10,'2023-12-13'),(162,1,15,10,'2023-12-13'),(163,1,17,10,'2023-12-13'),(164,8,5,10,'2023-12-13'),(165,2,47,8,'2023-12-13'),(166,1,50,10,'2023-12-13'),(167,7,32,10,'2023-12-13'),(168,6,16,8,'2023-12-13'),(169,9,32,9,'2023-12-13'),(170,6,7,10,'2023-12-13'),(171,9,14,9,'2023-12-13'),(172,1,8,9,'2023-12-13'),(173,1,33,10,'2023-12-13'),(174,10,16,8,'2023-12-13'),(175,10,3,8,'2023-12-13'),(176,8,10,10,'2023-12-13'),(177,7,37,9,'2023-12-13'),(178,2,14,10,'2023-12-13'),(179,3,42,8,'2023-12-13'),(180,9,4,8,'2023-12-13'),(181,7,49,8,'2023-12-13'),(182,5,21,10,'2023-12-13'),(183,2,18,8,'2023-12-13'),(184,6,46,8,'2023-12-13'),(185,6,8,9,'2023-12-13'),(186,5,34,10,'2023-12-13'),(187,6,11,10,'2023-12-13'),(188,2,33,8,'2023-12-13'),(189,10,37,8,'2023-12-13'),(190,3,43,9,'2023-12-13'),(191,5,1,9,'2023-12-13'),(192,6,37,8,'2023-12-13'),(193,4,45,8,'2023-12-13'),(194,4,30,8,'2023-12-13'),(195,5,32,8,'2023-12-13'),(196,8,35,10,'2023-12-13'),(197,6,35,10,'2023-12-13'),(198,8,37,10,'2023-12-13'),(199,5,13,8,'2023-12-13'),(200,2,30,8,'2023-12-13'),(201,8,23,8,'2023-12-13'),(202,9,5,10,'2023-12-13'),(203,4,33,8,'2023-12-13'),(204,10,13,10,'2023-12-13'),(205,3,30,8,'2023-12-13'),(206,2,22,10,'2023-12-13'),(207,6,41,9,'2023-12-13'),(208,11,5,10,'2023-12-13'),(209,9,43,9,'2023-12-13'),(210,5,5,8,'2023-12-13'),(211,5,18,9,'2023-12-13'),(212,10,45,9,'2023-12-13'),(213,8,8,9,'2023-12-13'),(214,5,36,10,'2023-12-13'),(215,10,12,8,'2023-12-13'),(216,8,29,10,'2023-12-13'),(217,10,40,9,'2023-12-13'),(218,1,38,8,'2023-12-13'),(219,2,27,8,'2023-12-13'),(220,3,17,8,'2023-12-13'),(221,5,16,8,'2023-12-13'),(222,3,25,8,'2023-12-13'),(223,11,10,8,'2023-12-13'),(224,8,2,8,'2023-12-13'),(225,9,38,10,'2023-12-13'),(226,1,40,9,'2023-12-13'),(227,10,50,10,'2023-12-13'),(228,8,42,8,'2023-12-13'),(229,7,16,8,'2023-12-13'),(230,7,23,8,'2023-12-13'),(231,7,1,9,'2023-12-13'),(232,5,9,8,'2023-12-13'),(233,9,12,8,'2023-12-13'),(234,11,27,8,'2023-12-13'),(235,2,12,9,'2023-12-13'),(236,2,3,9,'2023-12-13'),(237,3,29,9,'2023-12-13'),(238,3,27,10,'2023-12-13'),(239,8,32,8,'2023-12-13'),(240,1,36,8,'2023-12-13'),(241,8,3,8,'2023-12-13'),(242,4,22,8,'2023-12-13'),(243,9,50,9,'2023-12-13'),(244,7,3,10,'2023-12-13'),(245,1,35,9,'2023-12-13'),(246,3,14,10,'2023-12-13'),(247,1,49,8,'2023-12-13'),(248,3,11,9,'2023-12-13'),(249,4,20,9,'2023-12-13'),(250,1,32,9,'2023-12-13'),(251,10,4,10,'2023-12-13'),(252,7,27,9,'2023-12-13'),(253,4,27,10,'2023-12-13'),(254,11,49,10,'2023-12-13'),(255,8,13,9,'2023-12-13'),(256,4,47,9,'2023-12-19'),(257,7,21,9,'2023-12-19'),(258,6,29,9,'2023-12-19'),(259,11,19,8,'2023-12-19'),(260,7,43,8,'2023-12-19'),(261,4,31,8,'2023-12-19'),(262,11,8,10,'2023-12-19'),(263,10,46,10,'2023-12-19'),(264,11,21,8,'2023-12-19'),(265,10,33,9,'2023-12-19'),(266,11,30,9,'2023-12-19'),(267,8,43,9,'2023-12-19'),(268,7,47,10,'2023-12-19'),(269,4,16,10,'2023-12-19'),(270,4,32,10,'2023-12-19'),(271,4,19,10,'2023-12-19'),(272,5,48,9,'2023-12-19'),(273,1,5,10,'2023-12-19'),(274,11,3,9,'2023-12-19'),(275,9,31,10,'2023-12-19'),(276,7,4,10,'2023-12-19'),(277,6,12,8,'2023-12-19'),(278,8,36,8,'2023-12-19'),(279,11,23,10,'2023-12-19'),(280,11,16,10,'2023-12-19'),(281,7,12,9,'2023-12-19'),(282,1,23,8,'2023-12-19'),(283,9,33,10,'2023-12-19'),(284,5,14,9,'2023-12-19'),(285,1,12,8,'2023-12-19'),(286,1,24,10,'2023-12-19'),(287,8,44,8,'2023-12-19'),(288,4,11,8,'2023-12-19'),(289,5,26,10,'2023-12-19'),(290,11,31,9,'2023-12-19'),(291,10,36,8,'2023-12-19'),(292,1,29,9,'2023-12-19'),(293,6,3,9,'2023-12-19'),(294,11,35,8,'2023-12-19'),(295,9,25,10,'2023-12-19'),(296,3,26,10,'2023-12-19'),(297,5,20,8,'2023-12-19'),(298,2,45,9,'2023-12-19'),(299,11,9,9,'2023-12-19'),(300,2,32,10,'2023-12-19'),(301,2,1,10,'2023-12-19'),(302,9,26,9,'2023-12-19'),(303,9,37,8,'2023-12-19'),(304,10,25,9,'2023-12-19'),(305,7,28,8,'2023-12-19'),(306,3,40,9,'2023-12-19'),(307,2,31,9,'2023-12-19'),(308,1,20,10,'2023-12-19'),(309,2,4,8,'2023-12-19'),(310,6,38,9,'2023-12-19'),(311,9,39,9,'2023-12-19'),(312,5,42,8,'2023-12-19'),(313,4,34,10,'2023-12-19'),(314,8,45,10,'2023-12-19'),(315,10,31,9,'2023-12-19'),(316,1,28,9,'2023-12-19'),(317,2,43,9,'2023-12-19'),(318,2,26,8,'2023-12-19'),(319,7,45,8,'2023-12-19'),(320,4,23,10,'2023-12-19'),(321,6,49,10,'2023-12-19'),(322,5,17,10,'2023-12-19'),(323,11,45,10,'2023-12-19'),(324,8,17,8,'2023-12-19'),(325,4,26,8,'2023-12-19'),(326,3,48,10,'2023-12-19'),(327,3,18,9,'2023-12-19'),(328,11,32,9,'2023-12-19'),(329,1,2,8,'2023-12-19'),(330,1,11,8,'2023-12-19'),(331,7,6,10,'2023-12-19'),(332,7,18,9,'2023-12-19'),(333,6,47,8,'2023-12-19'),(334,2,20,9,'2023-12-19'),(335,4,2,10,'2023-12-19'),(336,11,20,9,'2023-12-19'),(337,9,41,10,'2023-12-19'),(338,7,48,8,'2023-12-19'),(339,3,23,9,'2023-12-19'),(340,1,9,9,'2023-12-19'),(341,3,13,9,'2023-12-19'),(342,8,33,10,'2023-12-19'),(343,4,18,8,'2023-12-19'),(344,3,38,9,'2023-12-19'),(345,5,41,9,'2023-12-19'),(346,4,44,8,'2023-12-19'),(347,10,22,10,'2023-12-19'),(348,2,41,10,'2023-12-19'),(349,5,46,9,'2023-12-19'),(350,11,46,10,'2023-12-19'),(351,10,15,10,'2023-12-19'),(352,3,9,8,'2023-12-19'),(353,5,28,10,'2023-12-19'),(354,7,13,10,'2023-12-19'),(355,1,30,8,'2023-12-19'),(356,8,28,9,'2023-12-19'),(357,4,13,9,'2023-12-19'),(358,6,34,10,'2023-12-19'),(359,3,44,9,'2023-12-19'),(360,7,8,9,'2023-12-19'),(361,7,29,8,'2023-12-19'),(362,2,29,10,'2023-12-19'),(363,5,27,9,'2023-12-19'),(364,6,42,9,'2023-12-19'),(365,6,21,10,'2023-12-19'),(366,6,28,8,'2023-12-19'),(367,4,41,8,'2023-12-19'),(368,11,29,9,'2023-12-19'),(369,2,7,8,'2023-12-19'),(370,3,50,9,'2023-12-19'),(371,2,49,9,'2023-12-19'),(372,7,26,8,'2023-12-19'),(373,1,25,10,'2023-12-19'),(374,2,38,10,'2023-12-19'),(375,9,9,9,'2023-12-19'),(376,3,10,9,'2023-12-19'),(377,11,34,10,'2023-12-19'),(378,6,31,10,'2023-12-19'),(379,1,10,10,'2023-12-19'),(380,5,31,8,'2023-12-19'),(381,3,16,8,'2023-12-19'),(382,10,24,9,'2023-12-19'),(383,9,45,10,'2023-12-19'),(384,11,24,10,'2023-12-19'),(385,6,50,10,'2023-12-19'),(386,6,39,10,'2023-12-19'),(387,3,22,8,'2023-12-19'),(388,7,46,9,'2023-12-19'),(389,4,12,9,'2023-12-19'),(390,4,42,10,'2023-12-19'),(391,10,26,10,'2023-12-19'),(392,1,46,8,'2023-12-19'),(393,9,11,8,'2023-12-19'),(394,5,25,8,'2023-12-19'),(395,10,49,10,'2023-12-19'),(396,3,7,9,'2023-12-19'),(397,3,32,10,'2023-12-19'),(398,3,3,8,'2023-12-19'),(399,5,33,10,'2023-12-19'),(400,10,17,9,'2023-12-19'),(401,8,47,9,'2023-12-19'),(402,8,26,10,'2023-12-19'),(403,9,2,9,'2023-12-19'),(404,9,17,9,'2023-12-19'),(405,8,31,10,'2023-12-19'),(406,10,32,8,'2023-12-19'),(407,11,50,9,'2023-12-19'),(408,4,21,10,'2023-12-19'),(409,2,46,10,'2023-12-19'),(410,8,15,10,'2023-12-19'),(411,5,15,8,'2023-12-19'),(412,8,50,8,'2023-12-19'),(413,2,8,8,'2023-12-19'),(414,11,6,9,'2023-12-19'),(415,2,24,9,'2023-12-19'),(416,10,10,10,'2023-12-19'),(417,1,41,9,'2023-12-19'),(418,10,1,9,'2023-12-19'),(419,8,11,8,'2023-12-19'),(420,5,2,10,'2023-12-19'),(421,6,36,8,'2023-12-19'),(422,6,44,9,'2023-12-19'),(423,5,39,8,'2023-12-19'),(424,6,15,10,'2023-12-19'),(425,8,4,10,'2023-12-19'),(426,9,22,10,'2023-12-19'),(427,7,41,9,'2023-12-19'),(428,7,7,9,'2023-12-19'),(429,9,7,9,'2023-12-19'),(430,4,39,10,'2023-12-19'),(431,1,26,8,'2023-12-19'),(432,9,48,8,'2023-12-19'),(433,10,28,10,'2023-12-19'),(434,6,2,8,'2023-12-19'),(435,6,9,8,'2023-12-19'),(436,6,17,9,'2023-12-19'),(437,2,6,9,'2023-12-19'),(438,3,36,9,'2023-12-19'),(439,10,18,10,'2023-12-19'),(440,4,37,10,'2023-12-19'),(441,3,41,9,'2023-12-19'),(442,4,9,10,'2023-12-19'),(443,6,19,9,'2023-12-19'),(444,4,49,10,'2023-12-19'),(445,5,7,10,'2023-12-19'),(446,4,36,10,'2023-12-19'),(447,11,40,10,'2023-12-19'),(448,1,16,8,'2023-12-19'),(449,5,4,10,'2023-12-19'),(450,4,1,9,'2023-12-19'),(451,1,3,9,'2023-12-19'),(452,10,7,8,'2023-12-19'),(453,1,45,9,'2023-12-19'),(454,3,12,10,'2023-12-19'),(455,8,20,8,'2023-12-19'),(456,4,10,8,'2023-12-19'),(457,10,48,9,'2023-12-19'),(458,8,7,8,'2023-12-19'),(459,8,19,9,'2023-12-19'),(460,8,39,10,'2023-12-19'),(461,2,23,8,'2023-12-19'),(462,1,42,10,'2023-12-19'),(463,8,1,8,'2023-12-19'),(464,11,48,9,'2023-12-19'),(465,4,8,10,'2023-12-19'),(466,9,15,10,'2023-12-19'),(467,3,19,8,'2023-12-19'),(468,10,30,9,'2023-12-19'),(469,2,21,10,'2023-12-19'),(470,3,4,8,'2023-12-19'),(471,11,26,10,'2023-12-19'),(472,2,5,9,'2023-12-19'),(473,7,19,8,'2023-12-19'),(474,2,34,10,'2023-12-19'),(475,2,19,10,'2023-12-19'),(476,7,10,8,'2023-12-19'),(477,3,34,10,'2023-12-19'),(478,7,20,9,'2023-12-19'),(479,1,18,9,'2023-12-19'),(480,11,36,9,'2023-12-19'),(481,3,24,10,'2023-12-19'),(482,9,21,9,'2023-12-19'),(483,10,41,10,'2023-12-19'),(484,3,21,10,'2023-12-19'),(485,4,3,9,'2023-12-19'),(486,6,24,9,'2023-12-19'),(487,7,31,9,'2023-12-19'),(488,7,38,10,'2023-12-19'),(489,7,36,10,'2023-12-19'),(490,9,40,8,'2023-12-19'),(491,7,44,8,'2023-12-19'),(492,9,3,10,'2023-12-19'),(493,2,13,9,'2023-12-19'),(494,9,35,10,'2023-12-19'),(495,5,6,10,'2023-12-19'),(496,4,50,8,'2023-12-19'),(497,7,39,10,'2023-12-19'),(498,6,45,9,'2023-12-19'),(499,6,13,9,'2023-12-19'),(500,1,6,8,'2023-12-19'),(501,8,40,9,'2023-12-19'),(502,2,48,8,'2023-12-19'),(503,6,23,10,'2023-12-19'),(504,3,45,8,'2023-12-19'),(505,6,25,8,'2023-12-19'),(506,8,9,9,'2023-12-19'),(507,7,33,8,'2023-12-19'),(508,9,20,8,'2023-12-19'),(509,1,22,10,'2023-12-19'),(510,1,7,10,'2023-12-19'),(511,11,28,9,'2023-12-19'),(512,4,35,8,'2023-12-19'),(513,11,42,10,'2023-12-19'),(514,10,21,9,'2023-12-19'),(515,10,6,8,'2023-12-19'),(516,11,38,10,'2023-12-19'),(517,11,39,9,'2023-12-19'),(518,9,42,8,'2023-12-19'),(519,8,22,10,'2023-12-19'),(520,7,30,8,'2023-12-19'),(521,10,35,10,'2023-12-19'),(522,3,1,10,'2023-12-19'),(523,8,21,8,'2023-12-19'),(524,6,18,9,'2023-12-19'),(525,2,37,9,'2023-12-19'),(526,1,43,8,'2023-12-19'),(527,2,44,8,'2023-12-19'),(528,8,41,9,'2023-12-19'),(529,2,17,8,'2023-12-19'),(530,5,19,9,'2023-12-19'),(531,7,34,10,'2023-12-19'),(532,1,13,8,'2023-12-19'),(533,9,8,8,'2023-12-19'),(534,4,15,10,'2023-12-19'),(535,4,6,8,'2023-12-19'),(536,7,11,10,'2023-12-19'),(537,6,27,9,'2023-12-19'),(538,6,26,10,'2023-12-19'),(539,8,34,8,'2023-12-19'),(540,1,47,10,'2023-12-19'),(541,6,40,9,'2023-12-19'),(542,4,38,10,'2023-12-19'),(543,2,25,9,'2023-12-19'),(544,3,46,8,'2023-12-19'),(545,10,20,8,'2023-12-19'),(546,2,2,9,'2023-12-19'),(547,6,1,8,'2023-12-19'),(548,8,16,10,'2023-12-19'),(549,9,47,9,'2023-12-19'),(550,8,27,8,'2023-12-19');
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `fill_evaluation_date_insert` BEFORE INSERT ON `evaluate` FOR EACH ROW BEGIN
    SET NEW.evaluate_date = CURRENT_DATE();
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `enforce_insert_value_range` BEFORE INSERT ON `evaluate` FOR EACH ROW BEGIN
    IF NEW.evaluate_value IS NOT NULL AND (NEW.evaluate_value < 0.0 OR NEW.evaluate_value > 10.0) THEN
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
    WHERE movie_id = NEW.movie_id AND user_id = NEW.user_id;

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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_update_week_month_index` AFTER INSERT ON `evaluate` FOR EACH ROW BEGIN
    DECLARE week_count INT;
    DECLARE month_count INT;

    -- Calculate week count
    SELECT COUNT(*)
    INTO week_count
    FROM evaluate
    WHERE movie_id = NEW.movie_id AND YEARWEEK(evaluate_date) = YEARWEEK(NEW.evaluate_date);

    -- Calculate month count
    SELECT COUNT(*)
    INTO month_count
    FROM evaluate
    WHERE movie_id = NEW.movie_id AND DATE_FORMAT(evaluate_date, '%Y-%m') = DATE_FORMAT(NEW.evaluate_date, '%Y-%m');

    -- Update movie table
    UPDATE movie
    SET movie_weekindex = week_count,
        movie_monthindex = month_count
    WHERE movie_id = NEW.movie_id;
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
        SELECT AVG(evaluate_value)
        FROM evaluate
        WHERE movie.movie_id = NEW.movie_id
    )
    WHERE movie_id = NEW.movie_id;

    -- Update index
    UPDATE movie
    SET `movie_index` = (
        SELECT COUNT(*)
        FROM evaluate
        WHERE movie.movie_id = NEW.movie_id
    )
    WHERE movie_id = NEW.movie_id;
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
    IF NEW.evaluate_value IS NOT NULL AND (NEW.evaluate_value < 0.0 OR NEW.evaluate_value > 10.0) THEN
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
    IF NEW.movie_id != OLD.movie_id OR NEW.user_id != OLD.user_id THEN
        -- Check if there are duplicates
        SELECT COUNT(*)
        INTO count_duplicates
        FROM evaluate
        WHERE movie_id = NEW.movie_id AND user_id = NEW.user_id;

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
    SET NEW.evaluate_date = CURRENT_DATE();
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
    WHERE movie_id = NEW.movie_id AND YEARWEEK(evaluate_date) = YEARWEEK(NEW.evaluate_date);

    -- Calculate month count
    SELECT COUNT(*)
    INTO month_count
    FROM evaluate
    WHERE movie_id = NEW.movie_id AND DATE_FORMAT(evaluate_date, '%Y-%m') = DATE_FORMAT(NEW.evaluate_date, '%Y-%m');

    -- Update movie table
    UPDATE movie
    SET movie_weekindex = week_count,
        movie_monthindex = month_count
    WHERE movie_id = NEW.movie_id;
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
        SELECT AVG(evaluate_value)
        FROM evaluate
        WHERE movie.movie_id = NEW.movie_id
    )
    WHERE movie_id = NEW.movie_id;
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
    WHERE movie_id = OLD.movie_id AND YEARWEEK(evaluate_date) = YEARWEEK(OLD.evaluate_date);

    -- Calculate month count
    SELECT COUNT(*)
    INTO month_count
    FROM evaluate
    WHERE movie_id = OLD.movie_id AND DATE_FORMAT(evaluate_date, '%Y-%m') = DATE_FORMAT(OLD.evaluate_date, '%Y-%m');

    -- Update movie table
    UPDATE movie
    SET movie_weekindex = week_count,
        movie_monthindex = month_count
    WHERE movie_id = OLD.movie_id;
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
        SELECT AVG(evaluate_value)
        FROM evaluate
        WHERE movie.movie_id = OLD.movie_id
    )
    WHERE movie_id = OLD.movie_id AND (
        SELECT COUNT(*)
        FROM evaluate
        WHERE movie.movie_id = OLD.movie_id
    ) > 0;

    -- Update index
    UPDATE movie
    SET `movie_index` = (
        SELECT COUNT(*)
        FROM evaluate
        WHERE movie.movie_id = OLD.movie_id
    )
    WHERE movie_id = OLD.movie_id;
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
  `movie_id` int NOT NULL AUTO_INCREMENT COMMENT '电影编号',
  `movie_title` varchar(20) NOT NULL COMMENT '电影标题',
  `director` varchar(50) NOT NULL COMMENT '电影导演',
  `staring` varchar(50) NOT NULL COMMENT '电影主演',
  `genre` varchar(20) NOT NULL COMMENT '电影类别',
  `description` varchar(1000) NOT NULL COMMENT '电影简介',
  `region` varchar(50) NOT NULL COMMENT '电影地区',
  `rating` decimal(3,1) NOT NULL DEFAULT '0.0' COMMENT '电影评分',
  `movie_index` int NOT NULL DEFAULT '0' COMMENT '电影指数（评价数）',
  `movie_weekindex` int NOT NULL DEFAULT '0' COMMENT '本周指数',
  `movie_monthindex` int NOT NULL DEFAULT '0' COMMENT '本月指数',
  `movie_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '电影权限',
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'肖申克的救赎','弗兰克·德拉邦特','蒂姆·罗宾斯 / 摩根·弗里曼','剧情 / 犯罪','一场谋杀案使银行家安迪（蒂姆•罗宾斯 Tim Robbins 饰）蒙冤入狱，谋杀妻子及其情人的指控将囚禁他终生。在肖申克监狱的首次现身就让监狱“大哥”瑞德（摩根•弗里曼 Morgan Freeman 饰）对他另眼相看。瑞德帮助他搞到一把石锤和一幅女明星海报，两人渐成患难 之交。很快，安迪在监狱里大显其才，担当监狱图书管理员，并利用自己的金融知识帮助监狱官避税，引起了典狱长的注意，被招致麾下帮助典狱长洗黑钱。偶然一次，他得知一名新入狱的小偷能够作证帮他洗脱谋杀罪。燃起一丝希望的安迪找到了典狱长，希望他能帮自己翻案。阴险伪善的狱长假装答应安迪，背后却派人杀死小偷，让他唯一能合法出狱的希望泯灭。沮丧的安迪并没有绝望，在一个电闪雷鸣的风雨夜，一场暗藏几十年的越狱计划让他自我救赎，重获自由！老朋友瑞德在他的鼓舞和帮助下，也勇敢地奔向自由。\n　　本片获得1995年奥斯卡10项提名，以及金球奖、土星奖等多项提名。','美国',8.8,11,6,8,1),(2,'霸王别姬','陈凯歌','张国荣 / 张丰毅','剧情 / 爱情 / 同性','段小楼（张丰毅）与程蝶衣（张国荣）是一对打小一起长大的师兄弟，两人一个演生，一个饰旦，一向配合天衣无缝，尤其一出《霸王别姬》，更是誉满京城，为此，两人约定合演一辈子《霸王别姬》。但两人对戏剧与人生关系的理解有本质不同，段小楼深知戏非人生，程蝶衣则是人戏不分。\n　　段小楼在认为该成家立业之时迎娶了名妓菊仙（巩俐），致使程蝶衣认定菊仙是可耻的第三者，使段小楼做了叛徒，自此，三人围绕一出《霸王别姬》生出的爱恨情仇战开始随着时代风云的变迁不断升级，终酿成悲剧。','中国大陆 / 中国香港',9.0,11,6,7,1),(3,'阿甘正传','罗伯特·泽米吉斯','汤姆·汉克斯 / 罗宾·怀特','剧情 / 爱情','阿甘（汤姆·汉克斯 饰）于二战结束后不久出生在美国南方阿拉巴马州一个闭塞的小镇，他先天弱智，智商只有75，然而他的妈妈是一个性格坚强的女性，她常常鼓励阿甘“傻人有傻福”，要他自强不息。\n　　阿甘像普通孩子一样上学，并且认识了一生的朋友和至爱珍妮（罗宾·莱特·潘 饰），在珍妮 和妈妈的爱护下，阿甘凭着上帝赐予的“飞毛腿”开始了一生不停的奔跑。\n　　阿甘成为橄榄球巨星、越战英雄、乒乓球外交使者、亿万富翁，但是，他始终忘不了珍妮，几次匆匆的相聚和离别，更是加深了阿甘的思念。\n　　有一天，阿甘收到珍妮的信，他们终于又要见面……','美国',8.9,11,6,10,1),(4,'泰坦尼克号','詹姆斯·卡梅隆','莱昂纳多·迪卡普里奥 / 凯特·温丝莱特','剧情 / 爱情 / 灾难','1912年4月10日，号称 “世界工业史上的奇迹”的豪华客轮泰坦尼克号开始了自己的处女航，从英国的南安普顿出发驶往美国纽约。富家少女罗丝（凯特•温丝莱特）与母亲及未婚夫卡尔坐上了头等舱；另一边，放荡不羁的少年画家杰克（莱昂纳多·迪卡普里奥）也在码头的一场赌博中赢得了下等舱的船票。\n　　罗丝厌倦了上流社会虚伪的生活，不愿嫁给卡尔，打算投海自尽，被杰克救起。很快，美丽活泼的罗丝与英俊开朗的杰克相爱，杰克带罗丝参加下等舱的舞会、为她画像，二人的感情逐渐升温。\n　　1912年4月14日，星期天晚上，一个风平浪静的夜晚。泰坦尼克号撞上了冰山，“永不沉没的”泰坦尼克号面临沉船的命运，罗丝和杰克刚萌芽的爱情也将经历生死的考验。','美国 / 墨西哥',8.8,11,5,7,1),(5,'这个杀手不太冷','吕克·贝松','让·雷诺 / 娜塔莉·波特曼','剧情 / 动作 / 犯罪','里昂（让·雷诺饰）是名孤独的职业杀手，受人雇佣。一天，邻居家小姑娘马蒂尔达（纳塔丽·波特曼饰)敲开他的房门，要求在他那里暂避杀身之祸。原来邻居家的主人是警方缉毒组的眼线，只因贪污了一小包毒品而遭恶警（加里·奥德曼饰）杀害全家的惩罚。马蒂尔达得到里昂的留救，幸免于难，并留在里昂那里。里昂教小女孩使枪，她教里昂法文，两人关系日趋亲密，相处融洽。\n　　女孩想着去报仇，反倒被抓，里昂及时赶到，将女孩救回。混杂着哀怨情仇的正邪之战渐次升级，更大的冲突在所难免……','法国 / 美国',9.0,11,5,5,1),(6,'千与千寻','宫崎骏','柊瑠美 / 入野自由','剧情 / 动画 / 奇幻','千寻和爸爸妈妈一同驱车前往新家，在郊外的小路上不慎进入了神秘的隧道——他们去到了另外一个诡异世界—一个中世纪的小镇。远处飘来食物的香味，爸爸妈妈大快朵颐，孰料之后变成了猪！这时小镇上渐渐来了许多样子古怪、半透明的人。\n　　千寻仓皇逃出，一个叫小白的人救了他，喂了她阻止身体消 失的药，并且告诉她怎样去找锅炉爷爷以及汤婆婆，而且必须获得一份工作才能不被魔法变成别的东西。\n　　千寻在小白的帮助下幸运地获得了一份在浴池打杂的工作。渐渐她不再被那些怪模怪样的人吓倒，并从小玲那儿知道了小白是凶恶的汤婆婆的弟子。\n　　一次，千寻发现小白被一群白色飞舞的纸人打伤，为了救受伤的小白，她用河神送给她的药丸驱出了小白身体内的封印以及守封印的小妖精，但小白还是没有醒过来。\n　　为了救小白，千寻又踏上了她的冒险之旅。','日本',8.8,11,4,4,1),(7,'美丽人生','罗伯托·贝尼尼','罗伯托·贝尼尼 / 尼可莱塔·布拉斯基','剧情 / 喜剧 / 爱情 / 战争','犹太青年圭多（罗伯托·贝尼尼）邂逅美丽的女教师多拉（尼可莱塔·布拉斯基），他彬彬有礼的向多拉鞠躬：“早安！公主！”。历经诸多令人啼笑皆非的周折后，天遂人愿，两人幸福美满的生活在一起。\n　　然而好景不长，法西斯政权下，圭多和儿子被强行送往犹太人集中营。多拉虽没有犹太血统，毅然同行，与丈夫儿子分开关押在一个集中营里。聪明乐天的圭多哄骗儿子这只是一场游戏，奖品就是一辆大坦克，儿子快乐、天真的生活在纳粹的阴霾之中。尽管集中营的生活艰苦寂寞，圭多仍然带给他人很多快乐，他还趁机在纳粹的广播里问候妻子：“早安！公主！”\n　　法西斯政权即将倾覆，纳粹的集中营很快就要接受最后的清理，圭多编给儿子的游戏该怎么结束？他们一家能否平安的度过这黑暗的年代呢？','意大利',9.2,11,8,9,1),(8,'星际穿越','克里斯托弗·诺兰','马修·麦康纳 / 安妮·海瑟薇','剧情 / 科幻 / 冒险','近未来的地球黄沙遍野，小麦、秋葵等基础农作物相继因枯萎病灭绝，人类不再像从前那样仰望星空，放纵想象力和灵感的迸发，而是每日在沙尘暴的肆虐下倒数着所剩不多的光景。在家务农的前NASA宇航员库珀（马修·麦康纳 Matthew McConaughey 饰）接连在女儿墨菲（麦肯吉·弗依 Mackenzie Foy 饰）的书房发现奇怪的重力场现象，随即得知在某个未知区域内前NASA成员仍秘密进行一个拯救人类的计划。多年以前土星附近出现神秘虫洞，NASA借机将数名宇航员派遣到遥远的星系寻找适合居住的星球。在布兰德教授（迈克尔·凯恩 Michael Caine 饰）的劝说下，库珀忍痛告别了女儿，和其他三名专家教授女儿艾米莉亚·布兰德（安妮·海瑟薇 Anne Hathaway 饰）、罗米利（大卫·吉雅西 David Gyasi 饰）、多伊尔（韦斯·本特利 Wes Bentley 饰）搭乘宇宙飞船前往目前已知的最有希望的三颗星球考察。\n　　他们穿越遥远的星系银河，感受了一小时七年光阴的沧海桑田，窥见了未知星球和黑洞的壮伟与神秘。在浩瀚宇宙的绝望而孤独角落，总有一份超越了时空的笃定情怀将他们紧紧相连…… ','美国 / 英国 / 加拿大',9.1,11,5,8,1),(9,'盗梦空间','克里斯托弗·诺兰','莱昂纳多·迪卡普里奥 / 约瑟夫·高登-莱维特','剧情 / 科幻 / 悬疑 / 冒险','道姆·柯布（莱昂纳多·迪卡普里奥 Leonardo DiCaprio 饰）与同事阿瑟（约瑟夫·戈登-莱维特 Joseph Gordon-Levitt 饰）和纳什（卢卡斯·哈斯 Lukas Haas 饰）在一次针对日本能源大亨齐藤（渡边谦 饰）的盗梦行动中失败，反被齐藤利用。齐藤威逼利诱因遭通缉而流亡海外的柯布帮他拆分他竞争对手的公司，采取极端措施在其唯一继承人罗伯特·费希尔（希里安·墨菲 Cillian Murphy 饰）的深层潜意识中种下放弃家族公司、自立门户的想法。为了重返美国，柯布偷偷求助于岳父迈尔斯（迈克尔·凯恩 Michael Caine 饰），吸收了年轻的梦境设计师艾里阿德妮（艾伦·佩吉 Ellen Page 饰）、梦境演员艾姆斯（汤姆·哈迪 Tom Hardy 饰）和药剂师约瑟夫（迪利普·劳 Dileep Rao 饰）加入行动。在一层层递进的梦境中，柯布不仅要对付费希尔潜意识的本能反抗，还必须直面已逝妻子梅尔（玛丽昂·歌迪亚 Marion Cotillard 饰）的处处破坏，实际情况远比预想危险得多……','美国 / 英国',8.7,11,7,9,1),(10,'辛德勒的名单','史蒂文·斯皮尔伯格','连姆·尼森 / 本·金斯利','剧情 / 历史 / 战争','1939年，波兰在纳粹德国的统治下，党卫军对犹太人进行了隔离统治。德国商人奥斯卡·辛德勒（连姆·尼森 Liam Neeson 饰）来到德军统治下的克拉科夫，开设了一间搪瓷厂，生产军需用品。凭着出众的社交能力和大量的金钱，辛德勒和德军建立了良好的关系，他的工厂雇用犹太人工作，大发战争财。\n　　1943年，克拉科夫的犹太人遭到了惨绝人寰的大屠杀，辛德勒目睹这一切，受到了极大的震撼，他贿赂军官，让自己的工厂成为集中营的附属劳役营，在那些疯狂屠杀的日子里，他的工厂也成为了犹太人的避难所。\n　　1944年，德国战败前夕，屠杀犹太人的行动越发疯狂，辛德勒向德军军官开出了1200人的名单，倾家荡产买下了这些犹太人的生命。在那些暗无天日的岁月里，拯救一个人，就是拯救全世界','美国',9.1,11,5,7,1),(11,'楚门的世界','彼得·威尔','金·凯瑞 / 劳拉·琳妮','剧情 / 科幻','楚门（金•凯瑞 Jim Carrey 饰）是一个平凡得不能再平凡的人，除了一些有些稀奇的经历之外——初恋女友突然失踪、溺水身亡的父亲忽然似乎又出现在眼前，他和绝大多数30多岁的美国男人绝无异样。这令他倍感失落。他也曾试过离开自己生活了多年的地方，但总因种种理由而不能成行。\n　　直到有一天，他忽然发觉自己似乎一直在被人跟踪，无论他走到哪里，干什么事情。这种感觉愈来愈强烈。楚门决定不惜一切代价逃离这个他生活了30多年的地方，去寻找他的初恋女友。\n　　但他却发现自己怎样也逃不出去。真相其实很残忍。','美国',9.0,11,4,4,1),(12,'忠犬八公的故事','拉斯·霍尔斯道姆','理查·基尔 / 莎拉·罗默尔','剧情','八公（Forest 饰）是一条谜一样的犬，因为没有人知道它从哪里来。教授帕克（理查·基尔 Richard Gere 饰）在小镇的火车站拣到一只走失的小狗，冥冥中似乎注定小狗和帕克教授有着某种缘分，帕克一抱起这只小狗就再也放不下来，最终，帕克对小狗八公的疼爱感化了起初极力反对养狗的妻子卡特（琼·艾伦 Joan Allen 饰）。八公在帕克的呵护下慢慢长大，帕克上班时八公会一直把他送到车站，下班时八公也会早早便爬在车站等候，八公的忠诚让小镇的人家对它更加疼爱。有一天，八公在帕克要上班时表现异常，居然玩起了以往从来不会的捡球游戏，八公的表现让帕克非常满意，可是就是在那天，帕克因病去世。帕克的妻子、女儿安迪（萨拉·罗默尔 Sarah Roemer 饰）及女婿迈克尔（罗比·萨布莱特 Robbie Sublett 饰）怀着无比沉痛的心情埋葬了帕克，可是不明就里的八公却依然每天傍晚五点准时守候在小站的门前，等待着主人归来……\n　　本片根据上个世纪30年代发生在日本的真实故事改编，1987年在日本拍成电影后创造了40亿日元的票房。','美国 / 英国',8.7,11,5,8,1),(13,'海上钢琴师','朱塞佩·托纳多雷','蒂姆·罗斯 / 普路特·泰勒·文斯','剧情 / 音乐','本片讲述了一个钢琴天才传奇的一生。\n　　1900年，Virginian号豪华邮轮上，一个孤儿被遗弃在头等舱，由船上的水手抚养长大，取名1900（蒂姆•罗斯 饰）。1900慢慢长大，显示出了无师自通的非凡钢琴天赋，在船上的乐队表演钢琴，每个听过他演奏的人，都被深深打动。爵士乐鼻祖杰尼听说了1900的高超技艺，专门上船和他比赛，最后自叹弗如，黯然离去。\n　　可惜，这一切的事情都发生在海上，1900从来不愿踏上陆地，直到有一天，他爱上了一个女孩，情愫在琴键上流淌。他会不会为了爱情，踏上陆地开始新的生活，用他的琴声惊艳世界？他将怎样谱写自己非凡的人生。','意大利',9.2,11,6,9,1),(14,'三傻大闹宝莱坞','拉吉库马尔·希拉尼','阿米尔·汗 / 卡琳娜·卡普尔','剧情 / 喜剧 / 爱情 / 歌舞','本片根据印度畅销书作家奇坦·巴哈特（Chetan Bhagat）的处女作小说《五点人》（Five Point Someone）改编而成。法兰（马德哈万 R Madhavan 饰）、拉杜（沙曼·乔希 Sharman Joshi 饰）与兰乔（阿米尔·汗 Aamir Khan 饰）是皇家工程学院的学生，三人共居一室，结为好友。在以严格著称的学院里，兰乔是个非常与众不同的学生，他不死记硬背，甚至还公然顶撞校长“病毒”（波曼·伊拉尼 Boman Irani 饰），质疑他的教学方法。他不仅鼓动法兰与拉杜去勇敢追寻理想，还劝说校长的二女儿碧雅（卡琳娜·卡普 Kareena Kapoor 饰）离开满眼铜臭的未婚夫。兰乔的特立独行引起了模范学生“消音器”（奥米·维嘉 Omi Vaidya 饰）的不满，他约定十年后再与兰乔一决高下，看哪种生活方式更能取得成功。\n　　本片获孟买电影博览奖最佳影片、最佳导演、最佳配角（波曼·伊拉尼）、最佳剧本等六项大奖，并获国际印度电影协会最佳影片、最佳导演、最佳剧情、最佳摄影等十六项大奖。','印度',9.5,11,7,7,1),(15,'放牛班的春天','克里斯托夫·巴哈蒂','让-巴蒂斯特·莫尼耶 / 热拉尔·朱尼奥','剧情 / 音乐','1949年的法国乡村，音乐家克莱门特（热拉尔·朱尼奥 饰）到了一间外号叫“塘低”的男子寄宿学校当助理教师。学校里的学生大部分都是难缠的问题儿童，体罚在这里司空见惯，学校的校长（弗朗索瓦·贝莱昂 饰）只顾自己的前途，残暴高压。\n　　性格沉静的克莱门特尝试用自己的方法改善这种状况，他重新创作音乐作品，组织合唱团，决定用音乐的方法来打开学生们封闭的心灵。\n　　然而，事情并不顺利，克莱门特发现学生皮埃尔·莫安琦（让-巴蒂斯特·莫尼耶 饰）拥有非同一般的音乐天赋，但是单亲家庭长大的他，性格异常敏感孤僻，怎样释放皮埃尔的音乐才能，让克莱门特头痛不已；同时，他与皮埃尔母亲的感情也渐渐微妙起来。','法国 / 瑞士 / 德国',9.6,11,6,7,1),(16,'机器人总动员','安德鲁·斯坦顿','本·贝尔特 / 艾丽莎·奈特','科幻 / 动画 / 冒险','公元2805年，人类文明高度发展，却因污染和生活垃圾大量增加使得地球不再适于人类居住。地球人被迫乘坐飞船离开故乡，进行一次漫长无边的宇宙之旅。临行前他们委托Buynlarge的公司对地球垃圾进行清理，该公司开发了名为WALL·E（Waste Allocation Load Lifters – Earth 地球废品分装员）的机器人担当此重任。\n　　这些机器人按照程序日复一日、年复一年辛勤工作，但随着时间的流逝和恶劣环境的侵蚀，WALL·E们接连损坏、停止运动。最后只有一个仍在进行这项似乎永无止境的工作。经历了漫长的岁月，它开始拥有了自己的意识。它喜欢将收集来的宝贝小心翼翼藏起，喜欢收工后看看几百年前的歌舞片，此外还有一只蟑螂朋友作伴。直到有一天，一艘来自宇宙的飞船打破了它一成不变的生活……\n　　本片荣获2009年第81届奥斯卡最佳动画长片奖。','美国',8.5,11,5,9,1),(17,'疯狂动物城','拜伦·霍华德 / 瑞奇·摩尔 / 杰拉德·布什','金妮弗·古德温 / 杰森·贝特曼','喜剧 / 动画 / 冒险','故事发生在一个所有哺乳类动物和谐共存的美好世界中，兔子朱迪（金妮弗·古德温 Ginnifer Goodwin 配音）从小就梦想着能够成为一名惩恶扬善的刑警，凭借着智慧和努力，朱迪成功的从警校中毕业进入了疯狂动物城警察局，殊不知这里是大型肉食类动物的领地，作为第一只，也是唯一的小型食草类动物，朱迪会遇到怎样的故事呢？\n　　近日里，城中接连发生动物失踪案件，就在全部警员都致力于调查案件真相之时，朱迪却被局长（伊德瑞斯·艾尔巴 Idris Elba 配音）发配成为了一名无足轻重的交警。某日，正在执勤的兔子遇见了名为尼克（杰森·贝特曼 Jason Bateman 配音）的狐狸，两人不打不相识，之后又误打误撞的接受了寻找失踪的水獭先生的任务，如果不能在两天之内找到水獭先生，朱迪就必须自愿离开警局。朱迪找到了尼克，两人联手揭露了一个隐藏在疯狂动物城之中的惊天秘密。','美国',9.1,11,6,8,1),(18,'无间道','刘伟强 / 麦兆辉','刘德华 / 梁朝伟','剧情 / 惊悚 / 犯罪','1991年，香港黑帮三合会会员刘健明（刘德华）听从老大韩琛（曾志伟）的吩咐，加入警察部队成为黑帮卧底，韩琛许诺刘健明会帮其在七年后晋升为见习督察。1992年，警察训练学校优秀学员陈永仁（梁朝伟）被上级要求深入到三合会做卧底，终极目标是成为韩琛身边的红人。2002年，两人都不负重望，也都身背重压，刘健明渐想成为一个真正的好人，陈永仁则盼着尽快回归警察身份。\n　　重案组从陈永仁手中获悉一批毒品交易情报，锁紧目标人物韩琛，没料情报被刘健明泄出，双方行动均告失败。但此事将双方均有卧底的事实暴露，引发双方高层清除内鬼的决心。命运迥异又相似的刘健明和陈永仁开始在无间道的旅程中接受严峻考验。','中国香港',9.0,11,6,8,1),(19,'控方证人','比利·怀尔德','泰隆·鲍华 / 玛琳·黛德丽','剧情 / 悬疑 / 犯罪','伦敦著名刑案辩护律师韦菲爵士（查尔斯•劳顿 Charles Laughton 饰）接受了心脏病治疗，但是身体依旧虚弱，第一天回家休养，护士一直严厉监督他服药，并杜绝烟酒。管家为了便于上楼，还专门为他修了电梯。但是，种种关心照顾，对于这位桀骜不驯、牙尖嘴利的大律师根本不起作用，反倒是一纸诉状令他倍感兴奋。律师梅休和当事人沃尔（泰隆•鲍华 Tyrone Power饰）登门拜访，请他出山打官司。原来，沃尔结识了富婆，两人相见甚欢，虽然仆人对他发明的打蛋器充满鄙夷，但是富婆却对他充满爱意，甚至为他修改了遗嘱，把8万英镑留给了他。然而，富婆却惨遭毒手。于是，沃尔成为警方的头号嫌疑犯。他的唯一证人是妻子克里斯汀（玛琳•黛德丽 Marlene Dietrich饰），然而后者登门时的冷漠与淡定，令韦菲爵士怀疑这其中另有隐情。在扑朔迷离的案件背后，隐藏着一个个环环相扣、不可告人的秘密……\n　　本片改编自阿加莎•克里斯蒂同名小说。','美国',8.8,11,8,9,1),(20,'大话西游之大圣娶亲','刘镇伟','周星驰 / 吴孟达','喜剧 / 爱情 / 奇幻 / 古装','至尊宝（周星驰 饰）被月光宝盒带回到五百年前，遇见紫霞仙子（朱茵 饰），被对方打上烙印成为对方的人，并发觉自己已变成孙悟空。\n　　紫霞与青霞（朱茵 饰）本是如来佛祖座前日月神灯的灯芯（白天是紫霞，晚上是青霞），二人虽然同一肉身却仇恨颇深，因此紫霞立下誓言，谁能拔出她手中的紫青宝剑，谁就是她的意中人。紫青宝剑被至尊宝于不经意间拔出，紫霞决定以身相许，却遭一心记挂白晶晶（莫文蔚 饰）的至尊宝拒绝。后牛魔王救下迷失在沙漠中的紫霞，并逼紫霞与他成婚，关键时刻，至尊宝现身。','中国香港 / 中国大陆',8.9,11,8,9,1),(21,'熔炉','黄东赫','孔刘 / 郑有美','剧情','来自首尔的哑语美术老师仁浩（孔宥 饰）来到雾津，应聘慈爱聋哑人学校。天降大雾，他意外撞车，维修时邂逅了人权组织成员柔珍（郑有美 饰）。仁浩妻子早亡，8岁女儿天生哮喘由祖母照看，所以他不辞辛苦谋职养家。然而，双胞胎的校长与教导主任竟逼仁浩索贿5千万韩元。同时，仁浩逐渐发现学校笼罩着一种紧张压抑的气氛，令人窒息。有三个孩子引人关注：聪颖的金妍斗（金贤秀 饰）、贪吃的陈宥利（郑仁絮 饰）和弟弟自杀身亡的全民秀（白承焕 饰），民秀总是满脸淤青。下课后，仁浩还听到女厕所中有呼喊与哭泣，在门卫的阻拦下他未深究。之后。他意外目睹了校长行贿警察，教导员毒打民秀，宿导溺罚妍斗的行径。一个惊天的隐秘被慢慢揭开，真相令韩国震惊……\n　　本片取材于2005年光州一所聋哑障碍人学校的真实事件，改编自韩国作家孔枝泳的同名小说。','韩国',9.3,11,9,10,1),(22,'教父','弗朗西斯·福特·科波拉','马龙·白兰度 / 阿尔·帕西诺','剧情 / 犯罪','40年代的美国，“教父”维托·柯里昂（马龙·白兰度 饰）是黑手党柯里昂家族的首领，带领家族从事非法的勾当，但同时他也是许多弱小平民的保护神，深得人们爱戴。\n　　因为拒绝了毒枭索洛索的毒品交易要求，柯里昂家族和纽约其他几个黑手党家族的矛盾激化。圣诞前夕，索洛索劫持了“教父”的参谋汤姆，并派人暗杀“教父”；因为内奸的出卖，“教父”的大儿子逊尼被仇家杀害；小儿子麦克（阿尔·帕西诺 饰）也被卷了进来，失去爱妻。黑手党家族之间的矛盾越来越白热化。\n　　年老的“教父”面对丧子之痛怎样统领全局？黑手党之间的仇杀如何落幕？谁是家族的内奸？谁又能够成为新一代的“教父”？\n　　血雨腥风和温情脉脉，在这部里程碑式的黑帮史诗巨片里真实上演。','美国',9.3,11,5,8,0),(23,'触不可及','奥利维埃·纳卡什 / 埃里克·托莱达诺','弗朗索瓦·克鲁塞 / 奥玛·希','剧情 / 喜剧','因为一次跳伞事故，白人富翁菲利普Philippe（弗朗索瓦·克鲁塞 François Cluzet 饰）瘫痪在床，欲招聘一名全职陪护。由于薪酬高，应聘者云集，个个舌灿莲花，却无法打动他的心。直到黑人德希斯Driss（奥玛·赛 Omar Sy 饰）的出现才让他作出决定。德希斯刚从监狱出来，背负家庭重担，一心只想寻张辞退信以申领救济金，而且他明显对女助理的兴趣要远大于这份工作。但是菲利普还是一眼相中了这个小伙子。于是，德希斯开始了一个月的试用期。虽然舒适的豪宅环境让他倍感虚荣，但是他仍面临很多挑战：不仅要为菲利普作身体复健，还得给他洗浴、灌肠、拆信、穿丝袜等。起初，两人的思维方式与价值观大相径庭，但是，随着了解的不断深入，他们成为了朋友……\n　　本片取材于真实事件，获2011年东京电影节最佳影片金麒麟奖，弗朗索瓦·克鲁塞与奥玛·赛分享影帝桂冠。','法国',9.0,11,6,9,0),(24,'当幸福来敲门','加布里埃莱·穆奇诺','威尔·史密斯 / 贾登·史密斯','剧情 / 家庭 / 传记','克里斯•加纳（威尔·史密斯 Will Smith 饰）用尽全部积蓄买下了高科技治疗仪，到处向医院推销，可是价格高昂，接受的人不多。就算他多努力都无法提供一个良好的生活环境给妻儿，妻子（桑迪·牛顿 Thandie Newton 饰）最终选择离开家。从此他带着儿子克里斯托夫（贾登·史密斯 Jaden Smith 饰）相依为命。克里斯好不容易争取回来一个股票投资公司实习的机会，就算没有报酬，成功机会只有百分之五，他仍努力奋斗，儿子是他的力量。他看尽白眼，与儿子躲在地铁站里的公共厕所里，住在教堂的收容所里…… 他坚信，幸福明天就会来临。','美国',9.1,11,6,7,0),(25,'寻梦环游记','李·昂克里奇 / 阿德里安·莫利纳','安东尼·冈萨雷斯 / 盖尔·加西亚·贝纳尔','喜剧 / 动画 / 音乐 / 奇幻','热爱音乐的米格尔（安东尼·冈萨雷兹 Anthony Gonzalez 配音）不幸地出生在一个视音乐为洪水猛兽的大家庭之中，一家人只盼着米格尔快快长大，好继承家里传承了数代的制鞋产业。一年一度的亡灵节即将来临，每逢这一天，去世的亲人们的魂魄便可凭借着摆在祭坛上的照片返回现世和生者团圆。\n　　在一场意外中，米格尔竟然穿越到了亡灵国度之中，在太阳升起之前，他必须得到一位亲人的祝福，否则就将会永远地留在这个世界里。米格尔决定去寻找已故的歌神德拉库斯（本杰明·布拉特 Benjamin Bratt 配音），因为他很有可能就是自己的祖父。途中，米格尔邂逅了落魄乐手埃克托（盖尔·加西亚·贝纳尔 Gael García Bernal 配音），也渐渐发现了德拉库斯隐藏已久的秘密。','美国',8.8,11,6,7,0),(26,'末代皇帝','贝纳尔多·贝托鲁奇','尊龙 / 陈冲','剧情 / 传记 / 历史','溥仪（尊龙 饰）的一生在电影中娓娓道来。他从三岁起登基，年幼的眼光中只有大臣身上的一只蝈蝈，江山在他心中只是一个不明所以的名词。长大了，他以为可以变革，却被太监一把火烧了朝廷账本。他以为自己是大清江山的主人，却做了日本人的傀儡。\n　　解放后，他坐上了从苏联回来的火车，身边是押送监视他的解放军。他猜测自己难逃一死，便躲在狭小的卫生间里，割脉自杀。然而他没有死在火车上，命运的嘲笑还在等着他。文革的风风雨雨，在他身上留下了斑斑伤痕。','英国 / 意大利 / 中国大陆 / 法国',9.2,11,11,11,0),(27,'龙猫','宫崎骏','日高范子 / 坂本千夏','动画 / 奇幻 / 冒险','小月的母亲生病住院了，父亲带着她与四岁的妹妹小梅到乡间的居住。她们对那里的环境都感到十分新奇，也发现了很多有趣的事情。她们遇到了很多小精灵，她们来到属于她们的环境中，看到了她们世界中很多的奇怪事物，更与一只大大胖胖的龙猫成为了朋友。龙猫与小精灵们利用他们的神奇力量，为小月与妹妹带来了很多神奇的景观，令她们大开眼界。\n　　妹妹小梅常常挂念生病中的母亲，嚷着要姐姐带着她去看母亲，但小月拒绝了。小梅竟然自己前往，不料途中迷路了，小月只好寻找她的龙猫及小精灵朋友们帮助。','日本',9.0,11,3,3,0),(28,'怦然心动','罗伯·莱纳','玛德琳·卡罗尔 / 卡兰·麦克奥利菲','剧情 / 喜剧 / 爱情','布莱斯（卡兰•麦克奥利菲 Callan McAuliffe 饰）全家搬到小镇，邻家女孩朱丽（玛德琳•卡罗尔 Madeline Carroll 饰）前来帮忙。她对他一见钟情，心愿是获得他的吻。两人是同班同学，她一直想方设法接近他，但是他避之不及。她喜欢爬在高高的梧桐树上看风景。但因为施工，树被要被砍掉，她誓死捍卫，希望他并肩作战，但是他退缩了。她的事迹上了报纸，外公对她颇有好感，令他十分困惑。她凭借鸡下蛋的项目获得了科技展第一名，成了全场焦点，令他黯然失色。她把自家鸡蛋送给他，他听家人怀疑她家鸡蛋不卫生，便偷偷把鸡蛋丢掉。她得知真相，很伤心，两人关系跌入冰点。她跟家人诉说，引发争吵。原来父亲一直攒钱照顾傻弟弟，所以生活拮据。她理解了父母，自己动手，还得到了他外公的鼎力相助。他向她道歉，但是并未解决问题。他开始关注她。鸡蛋风波未平，家庭晚宴与午餐男孩评选又把两人扯在了一起……','美国',9.0,11,7,8,0),(29,'活着','张艺谋','葛优 / 巩俐','剧情 / 家庭 / 历史','根据余华同名小说改编。\n　　富少福贵（葛优）嗜赌成性，妻子家珍（巩俐）屡劝无果后带着女儿凤霞离开了他，当夜，福贵输光所有家产气死父亲，被迫靠变卖母亲首饰租间破屋过活。一年后，家珍手拉凤霞怀抱刚出世的儿子有庆回到家中，福贵痛改前非，开始靠演皮影戏过起安份守己的日子。\n　　但好景不常，内战时期，福贵被国民党抓去当劳工，一番辗转终回到家乡与一家人团圆后，凤霞因病变成哑巴，而在后来的大跃进运动和文化大革命中，他虽获某些小福，逆境却也一直与他如影相随。','中国大陆 / 中国香港',9.1,11,4,4,0),(30,'哈利·波特与魔法石','克里斯·哥伦布','丹尼尔·雷德克里夫 / 艾玛·沃森','奇幻 / 冒险','哈利波特是一个孤儿，从小寄养在姨妈家，受尽欺凌。但就在哈利11岁生日的时候，他意外收到了霍格沃茨学院的入学通知书。哈利从该学院派来接他的巨人海格口中得知，这是一间魔法学院，并得知了自己的身世，原来哈利的父母都是伟大的魔法师，在对付伏地魔的战斗中双双献身，唯有哈利幸免于难。\n　　哈利进入霍格沃茨后，表现出了超乎想象的飞行天赋，得到麦格教授的推荐进入了格兰芬多的魁地奇球队。另一方面，哈利发现霍格沃茨学院内有一股黑暗势力似乎在暗暗滋长，揭开谜团的关键就在有凶恶的三头犬守护的房间内。\n　　哈利、罗恩和赫敏三个好朋友决定探个究竟。','美国 / 英国',8.7,11,4,4,0),(31,'蝙蝠侠：黑暗骑士','克里斯托弗·诺兰','克里斯蒂安·贝尔 / 希斯·莱杰','剧情 / 动作 / 科幻 / 惊悚 / ','从亲眼目睹父母被人杀死的阴影中走出来的“蝙蝠侠”，经历了成长之后，已经不再是那个桀骜不的孤单英雄了。在警官吉姆·戈登和检查官哈维·登特的通力帮助下，“蝙蝠侠”无后顾之忧地继续满世界的奔波，与日益增长起来的犯罪威胁做着永无休止的争斗，而他所在的高谭市，也是进展最为明显的地方，犯罪率以一种惊人的速度持续下降着，毕竟对方是能够上天入地的“蝙蝠侠”，不借两个胆子谁还敢造次呢？不过像高谭这种科技与污秽并存的城市，平静是不可能维持太久的，果不其然，新一轮的混乱很快就席卷了整个城市，人们再一被被恐慌所笼罩着，而声称愿意为这一切负责的，自然就是所有混乱的源头以及支配者--“小丑”了。\n　　先不管“小丑”掀起一个又一个犯罪的狂潮的最终目的为何，他的企图都是邪恶的，所作所为更是早就危害到了高谭市民的正常生活……其中自然包括了“蝙蝠侠”身边几个非常重要的人，而他需要做的，就是将这股新的危机全部亲自用手捏得粉碎。然而在面对着这个有史以来最具针对性、最恶毒的对手时，“蝙蝠侠”却不得不从他的地下军械库里搬出每一件能够用得上的高科技武器，还得时刻纠结着为他曾经信仰的一切寻找答案。','美国 / 英国',9.0,11,2,2,0),(32,'指环王3：王者无敌','彼得·杰克逊','伊利亚·伍德 / 西恩·奥斯汀','剧情 / 动作 / 奇幻 / 冒险','魔幻战争逐渐进入高潮阶段。霍比特人佛罗多（伊利亚·伍德 Elijah Wood 饰）携带着魔戒，与伙伴山姆（西恩·奥斯汀 Sean Astin 饰）以及狡猾阴暗的咕噜等前往末日山，一路上艰难险阻不断，魔君索伦为阻止魔戒被销毁用尽全力阻挠。另一方面，白袍巫师甘道夫（伊恩·麦克莱恩 Ian McKellen 饰）率中土勇士们镇守刚铎首都——白城米那斯提里斯。魔兽大军压境，黑暗与光明的决战即将来临……\n　　本片是“指环王三部曲”的终结篇，根据英国作家J.R.R.托尔金（J.R.R. Tolkien）同名魔幻巨著《指环王》（The Lord of the Rings）改编，并荣获2004年第76届奥斯卡最佳影片、最佳导演、最佳改编剧本、最佳剪辑、最佳艺术指导、最佳服装设计、最佳化妆、最佳视觉效果、最佳音效、最佳配乐和最佳歌曲等11项大奖。','美国 / 新西兰',9.0,11,5,10,0),(33,'我不是药神','文牧野','徐峥 / 王传君','剧情 / 喜剧','普通中年男子程勇（徐峥 饰）经营着一家保健品店，失意又失婚。不速之客吕受益（王传君 饰）的到来，让他开辟了一条去印度买药做“代购”的新事业，虽然困难重重，但他在这条“买药之路”上发现了商机，一发不可收拾地做起了治疗慢粒白血病的印度仿制药独家代理商。赚钱的同时，他也认识了几个病患及家属，为救女儿被迫做舞女的思慧（谭卓 饰）、说一口流利“神父腔”英语的刘牧师（杨新鸣 饰），以及脾气暴烈的“黄毛”（章宇 饰），几个人合伙做起了生意，利润倍增的同时也危机四伏。程勇昔日的小舅子曹警官（周一围 饰）奉命调查仿制药的源头，假药贩子张长林（王砚辉 饰）和瑞士正牌医药代表（李乃文 饰）也对其虎视眈眈，生意逐渐变成了一场关于救赎的拉锯战。\n　　本片改编自慢粒白血病患者陆勇代购抗癌药的真实事迹。','中国大陆',9.0,11,5,8,0),(34,'乱世佳人','维克多·弗莱明 / 乔治·库克 / 山姆·伍德','费雯·丽 / 克拉克·盖博','剧情 / 爱情 / 历史 / 战争','美国南北战争前夕，南方农场塔拉庄园的千金斯嘉丽（费雯·丽 Vivien Leigh 饰）爱上了另一个农场主的儿子艾希礼（莱斯利·霍华德 Leslie Howard 饰），遭到了拒绝，为了报复，她嫁给了自己不爱的男人，艾希礼妻子梅兰妮（奥利维娅·德哈维兰 Olivia de Havilland 饰）的弟弟查尔斯。\n　　战争期间，斯嘉丽成为寡妇，失去母亲，挑起生活的重担， 不再是当初的千金小姐；战争结束后，她又两度为人妻，嫁给了爱她多年的投机商人瑞德（克拉克·盖博 Clark Gable 饰）。\n　　然而，纵使经历了生活的艰苦，斯嘉丽对艾希礼的感情仍然没有改变。艾希礼妻子梅兰妮的去世，给了斯嘉丽一个机会，一边是深爱自己的丈夫瑞德，一边是心心念念多年的艾希礼？斯嘉丽会给自己怎样一个不一样的明天？','美国',9.3,11,7,8,0),(35,'飞屋环游记','彼特·道格特 / 鲍勃·彼德森','爱德华·阿斯纳 / 克里斯托弗·普卢默','剧情 / 喜剧 / 动画 / 冒险','小男孩卡尔（Carl Fredricksen）怀揣着对于冒险的热爱偶遇假小子艾丽（Ellie），而艾丽把整个屋子当成一艘大飞船游戏居然使他对这个女孩子有些着迷，相同的爱好最终使两个人成为了一生的爱侣。\n　　他们有一个梦想，那就是有朝一日要去南美洲的“仙境瀑布”探险，但直到艾丽去世，这个梦想也未能实现。终于有一天，曾经专卖气球的老人卡尔居然用五颜六色的气球拽着他的房子飞上了天空，他决定要去实现他们未曾实现的梦想。令卡尔始料不及的是，门廊居然搭上了一个自称是“荒野开拓者”的小男孩小罗（Russell），小罗的喋喋不休让卡尔对这个小胖墩格外讨厌。\n　　一老一少在飞行中经过了千难万险终于看到了传说中的“仙境瀑布”，在相处过程中卡尔发现小罗其实是个惹人怜爱的孩子。在步行穿越一座森林时，他们遇到了不会飞的大鸟凯文（Kevin）和一只会说话的狗狗逗逗（Dug），让老人惊讶的是他们还遇到了他少年的崇拜偶像——探险家查尔斯·蒙兹（Charles Muntz），而且他发现蒙兹居然是一个为达目的不择手段的坏人。这时，老人离自己的梦想之地只有一步之遥……\n　　本片荣获第82届奥斯卡最佳动画长片、最佳配乐2项大奖。','美国',9.0,11,4,8,0),(36,'素媛','李濬益','薛景求 / 严志媛','剧情','她（李来 饰）是一个美丽平凡的小女孩，和爸爸妈妈生活在位于街角的家中。家里经营着以她的名字素媛命名的杂货店，母亲（严智媛 饰）作为老板娘日夜忙碌不得闲暇，父亲则在工厂干着繁重的工作。在那个飘雨的早上，素媛打着雨伞独自上学。在离学校近在咫尺的地方，她遭遇一个相貌猥琐、酒气冲天的大叔，由此开启了她的悲剧之旅。柔嫩的小花遭到暴风雨无情摧残，受伤的岂止枝枝叶叶，更是那迎着阳光无忧成长的心。无良媒体铺天盖地大肆渲染，作为受害者的素媛一家仿佛成了周身污秽的耻辱之人，被四周诧异好奇的目光所包围。\n　　妈妈悲痛欲绝，几近崩溃。爸爸全力保护女儿，但受伤的小天使却拒绝爸爸的靠近。问凶之路伴随着天使的治愈旅程，美丽的女孩可会再露灿烂笑容？','韩国',8.8,11,7,9,0),(37,'十二怒汉','西德尼·吕美特','亨利·方达 / 马丁·鲍尔萨姆','剧情','一个在贫民窟长大的18岁少年因为涉嫌杀害自己的父亲被告上法庭，证人言之凿凿，各方面的证据都对他极为不利。十二个不同职业的人组成了这个案件的陪审团，他们要在休息室达成一致的意见，裁定少年是否有罪，如果罪名成立，少年将会被判处死刑。\n　　十二个陪审团成员各有不同，除了8号陪审员（H enry Fonda 饰）之外，其他人对这个犯罪事实如此清晰的案子不屑一顾，还没有开始讨论就认定了少年有罪。8号陪审员提出了自己的“合理疑点”，耐心地说服其他的陪审员，在这个过程中，他们每个人不同的人生观也在冲突和较量……','美国',8.9,11,3,3,0),(38,'哈尔的移动城堡','宫崎骏','倍赏千惠子 / 木村拓哉','动画 / 奇幻 / 冒险','继母因无力负担生活，将苏菲和她的两个妹妹都送到了制帽店去当学徒。两个妹妹很快先后就离开了制帽店去追寻各自的梦想，只有苏菲坚持了下来。一天，小镇旁边来了一座移动堡垒，传说堡垒的主人哈尔专吸取年青姑娘的灵魂，所以小镇的姑娘都不敢靠近。\n　　一个恶毒的巫婆为了报复苏菲与哈尔见面，用巫术把她变成了一个80岁的老太婆，而且苏菲还不能对别人说出自己身中的巫术。无奈，苏菲决定独自一人逃离小镇。天黑了，虚弱的苏菲没走多远，来到了移动城堡。心想自己已经是老太婆了，苏菲壮着胆子走进了城堡。不想，遇到了和她遭遇相同的火焰魔。两人约定彼此帮助对方打破各自的咒语……','日本',9.4,11,6,8,0),(39,'何以为家','娜丁·拉巴基','赞恩·阿尔·拉菲亚 / 约丹诺斯·希费罗','剧情','法庭上，十二岁的男孩赞恩向法官状告他的亲生父母，原因是，他们给了他生命。是什么样的经历让一个孩子做出如此不可思议的举动？故事中，赞恩的父母在无力抚养和教育的状况下依然不停生育，作为家中的长子赞恩，弱小的肩膀承担了无数生活的重压。当妹妹被强行卖给商贩为妻时，赞恩愤怒离家，之后遇到一对没有合法身份的母子，相互扶持勉强生活。然而生活并没有眷顾赞恩，重重磨难迫使他做出了令人震惊的举动……','黎巴嫩 / 美国 / 法国 / 塞浦路斯',9.0,11,4,4,0),(40,'让子弹飞','姜文','姜文 / 葛优','剧情 / 喜剧 / 动作 / 西部','民国年间，花钱捐得县长的马邦德（葛优 饰）携妻（刘嘉玲 饰）及随从走马上任。途经南国某地，遭劫匪张麻子（姜文 饰）一伙伏击，随从尽死，只夫妻二人侥幸活命。马为保命，谎称自己是县长的汤 师爷。为汤师爷许下的财富所动，张麻子摇身一变化身县长，带着手下赶赴鹅城上任。有道是天高皇帝远，鹅城地处偏僻，一方霸主黄四郎（周润发 饰）只手遮天，全然不将这个新来的县长放在眼里。张麻子痛打了黄的武教头（姜武 饰），黄则设计害死张的义子小六（张默 饰）。原本只想赚钱的马邦德，怎么也想不到竟会被卷入这场土匪和恶霸的角力之中。鹅城上空愁云密布，血雨腥风在所难免……\n　　本片根据马识途的小说《夜谭十记》中的《盗官记》一章改编。','中国大陆 / 中国香港',9.0,11,5,7,0),(41,'摔跤吧！爸爸','涅提·蒂瓦里','阿米尔·汗 / 法缇玛·萨那·纱卡','剧情 / 家庭 / 传记 / 运动','马哈维亚（阿米尔·汗 Aamir Khan 饰）曾经是一名前途无量的摔跤运动员，在放弃了职业生涯后，他最大的遗憾就是没有能够替国家赢得金牌。马哈维亚将这份希望寄托在了尚未出生的儿子身上，哪知道妻子接连给他生了两个女儿，取名吉塔（法缇玛·萨那·纱卡 Fatima Sana Shaikh 饰）和巴比塔（桑亚·玛荷塔 Sanya Malhotra 饰）。让马哈维亚没有想到的是，两个姑娘展现出了杰出的摔跤天赋，让他幡然醒悟，就算是女孩，也能够昂首挺胸的站在比赛场上，为了国家和她们自己赢得荣誉。\n　　就这样，在马哈维亚的指导下，吉塔和巴比塔开始了艰苦的训练，两人进步神速，很快就因为在比赛中连连获胜而成为了当地的名人。为了获得更多的机会，吉塔进入了国家体育学院学习，在那里，她将面对更大的诱惑和更多的选择。','印度',9.3,11,9,10,0),(42,'猫鼠游戏','史蒂文·斯皮尔伯格','莱昂纳多·迪卡普里奥 / 汤姆·汉克斯','剧情 / 传记 / 犯罪','弗兰克（莱昂纳多·迪卡普里奥 Leonardo DiCaprio饰）是FBI有史以来年龄最小的通缉犯。他的犯罪手段神通广大，伪装身份的能力超乎常人，全美各地几乎都留下他的犯罪足迹。乔装医生、律师、飞行员，统统都是他曾经的身份。当然，弗兰克凭着这个“本领”，骗取了高达几百万的金额。\n　　活得逍遥快乐的弗兰克这次又成功伪造了一份学历证明，去医院做起了大夫。弗兰克不但在这里认识了护士布雷达（艾米·亚当斯 Amy Adams饰），二人擦出爱火花，还通过布雷达的父亲得到了一份检察官助理的优差。然而，这只是暴风雨前夕——一双眼睛已经盯住了弗兰克，誓要把他绳之于法不可。这就是FBI探员卡尔（汤姆·汉克斯 Tom Hanks饰）。\n　　在研究追捕弗兰克的过程中，卡尔领教到这个犯罪天才的过人智商。他屡次被弗兰克这个黄毛小子捉弄，心里又恨又不得不佩服。每当弗兰克有惊无险地从他的精心布局中逃脱时，这个猫鼠游戏显得有趣起来……','美国 / 加拿大',9.1,11,6,8,0),(43,'天空之城','宫崎骏','田中真弓 / 横泽启子','动画 / 奇幻 / 冒险','古老帝国拉普达是一座漂浮在空中的巨大的机器岛，传说那里已经无人居住，蕴藏着巨大的财富。因此，无论军方还是海盗，都在找寻着这座传说中的飞行岛。\n　　矿工巴鲁这天偶遇拉普达继承人希达，两人一见如故。因为希达身上有找寻拉普达帝国的重要物件飞行石，军方和海盗两帮人马都在追杀希达。巴鲁带着希达一起逃亡，最终都没有逃出军方的手中，希达被军队掳走了。\n　　为救朋友，只能选择与海盗合作。巴鲁与海盗成功救出了希达，同时，他们也发现了军方的邪恶计划。为了阻止军方邪恶计划的实施，他们和海盗一起踏上了寻找拉普达之旅。','日本',8.8,11,4,4,0),(44,'鬼子来了','姜文','姜文 / 香川照之','剧情 / 喜剧','第二次世界大战期间，中国河北挂甲台村的农民马大三（姜文饰）在日本人的统治下过着平静的生活。一个晚上，游击队绑架了日军陆军士兵花屋小三郎（香川照之饰）和翻译董汉臣，把他们捆绑塞入麻袋放在马大三家里，并吩咐马好好看管，几天后的大年三十来带人。马大三和村民战战兢兢地看守两人，花屋小三郎和董汉臣数次发出求救信号，皆被村民化解。半年过去了，村民们担心事情暴露，却又不敢把花屋等放了。\n　　马大三最终被董汉臣说动，把花屋和董送到了日军宪兵队驻地，以换取粮食。日军宪兵军官酒冢猪吉是花屋的同乡。他表面上对马等人客气，但背后指责花屋让皇军蒙耻并殴打了他。宪兵队整队去马的村子里和村民联欢送粮，酒到酣时却乍露杀机。','中国大陆',8.8,11,5,5,0),(45,'海蒂和爷爷','阿兰·葛斯彭纳','阿努克·斯特芬 / 布鲁诺·冈茨','剧情 / 家庭 / 冒险','孤儿海蒂（阿努克·斯特芬 饰）被姨母迪蒂（安娜·希恩斯 饰）送上了阿尔卑斯山，与远离小镇独居于高山的祖父（布鲁诺·甘茨 饰）一同生活。活泼的海蒂在这里如鱼得水，不仅收获了羊倌彼得（奎林·阿格里皮 饰）的友情和孤僻祖父的亲情，还与山下彼得的家人打成一片。一天，海蒂同彼得在山上放羊，姨母突然出现，连哄带骗将海蒂卖到法兰克福的泽塞曼家。从此，目不识A的海蒂成为了小姐克拉拉（伊莎贝尔·奥特曼 饰）的伴读。克拉拉幼年丧母，大病一场再不能站立，只能被困在豪宅中与轮椅相伴。父亲（马克西姆·梅米特 饰）常年在外很少回家，寂寞的克拉拉把海蒂当成了救命稻草。海蒂能适应泽塞曼家的新生活吗？远在天边的祖父和彼得还能再见吗？克拉拉的腿还有好起来的希望吗？','德国 / 瑞士',9.0,11,8,11,0),(46,'少年派的奇幻漂流','李安','苏拉·沙玛 / 伊尔凡·可汗','剧情 / 奇幻 / 冒险','故事开始于蒙特娄，也结束于蒙特娄。一名在找寻灵感的作家（拉菲·斯波 Rafe Spall 饰）无意间得知派·帕帖尔（伊尔凡·可汗 Irrfan Khan 饰）的传奇故事。派的父亲（阿迪勒·侯赛因 Adil Hussain 饰）开了一家动物园。因这样特殊的生活环境，少年派（苏拉·沙玛 Suraj Sharma 饰 ）对信仰与人的本性自有一套看法。在派17岁那一年，他的父母决定举家移民加拿大以追求更好的生活，而他也必须离开他的初恋情人。在前往加拿大的船上，他们遇见一位残忍成性的法国厨师（杰拉尔·德帕迪约 Gérard Depardieu 饰）。当天深夜在茫茫大海中，原本令派感到刺激无比的暴风雨一瞬间就成了吞噬货船的大灾难。派却奇迹般地活了下来，搭着救生船在太平洋上漂流，而且有一名最令人意想不到的同伴——理查德·帕克，一只孟加拉老虎。神奇的冒险旅程就这样意外开始了……','美国 / 中国台湾 / 英国 / 加拿大',8.8,11,7,9,0),(47,'钢琴家','罗曼·波兰斯基','阿德里安·布罗迪 / 托马斯·克莱舒曼','剧情 / 音乐 / 传记 / 战争','史标曼（艾德里安•布洛迪 Adrien Brody 饰）是波兰一家电台的钢琴师。二战即将爆发之时，他们全家被迫被赶进华沙的犹太区。在战争的颠沛流离中，家人和亲戚最终被纳粹杀害，而史标曼本人也受尽种种羞辱和折磨，他侥幸得到一位朋友的帮助，暂时有了藏身之处。战争愈加猛烈，朋友不得不抛下他回老家寻得安全的住所养育儿女。此时史标曼恶病缠身，却还要在搜捕中逃亡。在废墟的阁楼上他遇见了一名德国军官，在军官的要求下他弹奏了钢琴曲。美妙的琴声令德国军官萌发了恻隐之心，他暗暗帮助史标曼直到苏军对波兰的解放到来…… 影片根据波兰钢琴家瓦拉迪斯罗•斯皮曼(Wladyslaw Szpilman)的自传体小说《死亡城市》改编。','英国 / 法国 / 波兰 / 德国',8.9,11,6,7,0),(48,'大话西游之月光宝盒','刘镇伟','周星驰 / 吴孟达','喜剧 / 爱情 / 奇幻 / 古装','孙悟空（周星驰）护送唐三藏（罗家英）去西天取经路上，与牛魔王合谋欲杀害唐三藏，并偷走了月光宝盒，此举使观音萌生将其铲除心思，经唐三藏请求，孙悟空被判五百年后重新投胎做人赎其罪孽。\n　　五百年后孙悟空化身强盗头头至尊宝。当遇见预谋吃唐僧肉的妖怪姐妹蜘蛛精春三十娘（蓝洁瑛）和白骨精白晶晶（莫文蔚）时，因为五百年前孙悟空曾与白晶晶有过一段恋情，至尊宝与她一见钟情，但因菩提老祖将二人妖怪身份相告，至尊宝仍带领众强盗开始与二妖展开周旋，过程中，白晶晶为救至尊宝打伤春三十娘，自己也中毒受伤，为了救白晶晶，至尊宝去找春三十娘，遭白晶晶误会，绝望自杀，至尊宝开始用月光宝盒以期使时光倒流。','中国香港 / 中国大陆',8.8,11,3,3,0),(49,'指环王2：双塔奇兵','彼得·杰克逊','伊利亚·伍德 / 西恩·奥斯汀','剧情 / 动作 / 奇幻 / 冒险','第二部在延续第一部风格的同时，故事呈现出多线发展的格局，情节有了更高的观赏性。\n　　第一部结尾，博罗米尔被强兽人杀死之后，两个霍比特人皮平和梅利也被强兽人绑架，阿拉贡、精灵莱戈拉斯（奥兰多·布鲁姆 饰）、侏儒金利一路追踪强兽人，营救皮平和梅利，遇到了“复活”的白袍巫师甘道夫 （伊恩·麦克莱恩 饰）。此时，投降索伦的白袍巫师萨鲁曼控制了人类洛汉王国的国王，并派出大量的强兽人军队，准备消灭人类。阿拉贡、莱戈拉斯和金利在甘道夫的带领下，帮助洛汉王国对抗邪恶力量的入侵。\n　　幸运的皮平和梅利被会说话的树精救了出来，并且遇到“复活”的甘道夫，在甘道夫的授意下，树精保护了两人的安全，并且带他们参加树精大会，大会上，树精们讨论对待中土大战的态度：是继续当中立者，逆来顺受，还是奋起反抗？\n　　身负重任的佛罗多（伊利亚·伍德 饰）和山姆继续向末日山脉前进，一路上被咕噜跟踪，弗罗多依靠至尊魔戒的力量，成为了咕噜的主人，在咕噜的带领下，他们到了末日山脉的入口，黑门。就在他们准备进入之时，博罗米尔的弟弟法莫尔出现，将他们带回了刚铎。弗罗多又遇上了新的危机：法莫尔想利用至尊魔戒的力量对抗萨鲁曼的攻击……','美国 / 新西兰',9.2,11,4,4,0),(50,'闻香识女人','马丁·布莱斯特','阿尔·帕西诺 / 克里斯·奥唐纳','剧情','查理（克里斯•奥唐纳 Chris O\'Donnell 饰）是一个普通的中学生，他因为见证着一件恶作剧但又不想出卖朋友，于是面临着一道艰难的选择题——要么坦白，要么被学校勒退。而史法兰（阿尔•帕西诺 Al Pacino 饰）是一个退伍军官，因为意外失明，人生从顶点的辉煌滑落谷底。\n　　自从两人的人生有了交集，命运的转折慢慢清晰。史法兰打算结束失去了意义的生活，于是在查理的陪伴下，尽情享受着人生最后一趟出行。他吃最美味的佳肴，买光鲜的汽车，在狭窄的街道上飚车，住在豪华的套房里，跟随陌生女子的袅袅香水味，跳一段优雅性感的探戈……极乐的疯狂后，他拿枪对准了自己的头颅。然而，查理声嘶力竭的劝阻改变了一切，曙光亦渐渐在这个老人心中重新升起，二人情深如父子。\n　　史法兰在学校礼堂激昂演说，挽救了查理的前途，讽刺了学校的伪善。二人在互相鼓舞中得到重生。','美国',9.0,11,5,8,0);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `user_name` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(80) NOT NULL COMMENT '密码',
  `user_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户权限',
  PRIMARY KEY (`user_id`)
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

-- Dump completed on 2023-12-19 17:06:55
