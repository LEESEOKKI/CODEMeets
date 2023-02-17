-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 3.36.49.147    Database: s08p11d109
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

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
-- Table structure for table `conference_answer`
--

DROP TABLE IF EXISTS `conference_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conference_answer` (
  `conference_answer_pk` int NOT NULL AUTO_INCREMENT,
  `conference_answer_contents` varchar(500) NOT NULL,
  `conference_answer_date` datetime NOT NULL,
  `conference_answer_update` tinyint NOT NULL DEFAULT '0',
  `conference_question_pk` int NOT NULL,
  `user_pk` int NOT NULL,
  PRIMARY KEY (`conference_answer_pk`),
  KEY `conference_answer.conference_question_pk_idx` (`conference_question_pk`),
  KEY `conference_answer.user_pk_idx` (`user_pk`),
  CONSTRAINT `conference_answer.conference_question_pk` FOREIGN KEY (`conference_question_pk`) REFERENCES `conference_question` (`conference_question_pk`) ON DELETE CASCADE,
  CONSTRAINT `conference_answer.user_pk` FOREIGN KEY (`user_pk`) REFERENCES `user` (`user_pk`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1885 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conference_answer`
--

LOCK TABLES `conference_answer` WRITE;
/*!40000 ALTER TABLE `conference_answer` DISABLE KEYS */;
INSERT INTO `conference_answer` VALUES (1746,'1','2023-02-15 05:31:31',0,3674,1),(1747,'2','2023-02-15 05:31:34',0,3674,1),(1748,'3','2023-02-15 05:31:36',0,3674,1),(1749,'4','2023-02-15 05:31:37',0,3674,1),(1750,'5','2023-02-15 05:31:39',0,3674,1),(1751,'6','2023-02-15 05:31:40',0,3674,1),(1755,'없어용','2023-02-15 10:29:05',0,3681,101),(1758,'좋아요','2023-02-16 01:14:49',0,3701,103),(1761,'없습니다','2023-02-16 01:49:12',0,3687,105),(1763,'sdf','2023-02-16 07:29:16',0,3710,101),(1764,'sdfsfsdf','2023-02-16 07:30:21',0,3710,101),(1765,'질문도','2023-02-16 07:31:50',0,3710,101),(1766,'다','2023-02-16 07:31:51',0,3710,101),(1767,'지워','2023-02-16 07:31:52',0,3710,101),(1768,'다만듦','2023-02-16 07:33:29',1,3710,101),(1770,'다','2023-02-16 07:33:16',0,3710,101),(1776,'됨','2023-02-16 08:37:05',1,3688,101),(1786,'댓1','2023-02-16 11:19:52',0,3714,104),(1787,'댓2','2023-02-16 11:19:59',0,3714,104),(1788,'댓3','2023-02-16 11:20:07',0,3714,104),(1789,'없대요','2023-02-16 11:22:32',0,3681,104),(1790,'없답니다','2023-02-16 11:22:36',0,3681,104),(1791,'ㅇㅇ','2023-02-16 11:22:50',0,3681,104),(1796,'댓글','2023-02-16 11:28:03',0,3681,104),(1799,'뢔','2023-02-16 11:29:58',0,3681,104),(1800,'왜','2023-02-16 11:30:02',0,3681,104),(1801,'이렇게','2023-02-16 11:30:03',0,3681,104),(1802,'되지?','2023-02-16 11:30:05',0,3681,104),(1806,'1','2023-02-16 11:33:00',0,3712,104),(1807,'2','2023-02-16 11:33:02',0,3712,104),(1815,'sdfsdf','2023-02-16 11:43:49',0,3712,104),(1816,'sdf','2023-02-16 11:43:50',0,3712,104),(1817,'sdf','2023-02-16 11:43:51',0,3712,104),(1818,'sdf','2023-02-16 11:43:51',0,3712,104),(1819,'dsf','2023-02-16 11:44:29',0,3712,104),(1820,'sdf','2023-02-16 11:44:32',0,3712,104),(1832,'ㅇㅇㅇㅇ','2023-02-16 12:04:58',0,3221,1),(1833,'ㅇㅇㅇ','2023-02-16 12:05:05',0,3221,1),(1834,'ㅑㅑㅑㅑ','2023-02-16 12:05:08',0,3221,1),(1835,'ㄴ','2023-02-16 12:05:50',0,3681,1),(1836,'ㄹㄹ','2023-02-16 12:06:04',0,3681,1),(1849,'가','2023-02-16 12:29:12',0,3709,1),(1850,'나','2023-02-16 12:29:17',0,3709,1),(1851,'다','2023-02-16 12:29:19',0,3709,1),(1852,'라','2023-02-16 12:29:24',0,3709,1),(1853,'마','2023-02-16 12:29:33',0,3709,1),(1854,'채팅','2023-02-16 12:32:38',0,3587,2),(1855,'1','2023-02-16 12:32:42',0,3587,2),(1856,'ㅈ','2023-02-16 12:32:50',0,3587,2),(1857,'ㅂ','2023-02-16 12:32:53',0,3587,2),(1858,'ㅂ','2023-02-16 12:32:57',0,3587,2),(1859,'ㅇㅇㅇ','2023-02-16 12:33:01',0,3587,2),(1860,'ㅁㅁㅁㅁㅁㅁㅁㅁㅁ','2023-02-16 12:33:29',0,3587,2),(1861,'ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ','2023-02-16 12:33:40',0,3587,2),(1862,'후','2023-02-16 12:35:09',0,3653,2),(1863,'좋아요','2023-02-16 12:35:13',0,3653,2),(1864,'왜 이래','2023-02-16 12:35:16',0,3653,2),(1865,'댓글1','2023-02-16 12:39:25',0,3720,1),(1868,'댓글2','2023-02-16 12:40:07',0,3720,1),(1869,'댓글3','2023-02-16 12:40:19',0,3720,1),(1870,'알겠습니다','2023-02-16 13:06:26',0,3722,103),(1876,'댓글1','2023-02-17 00:08:43',0,3718,104),(1877,'댓글2','2023-02-17 00:09:03',0,3718,104),(1879,'댓글','2023-02-17 00:09:18',0,3718,104),(1880,'댓글','2023-02-17 00:09:20',0,3718,104),(1882,'댓글','2023-02-17 00:09:21',0,3718,104),(1883,'댓글','2023-02-17 00:09:23',0,3718,104),(1884,'댓글','2023-02-17 00:09:24',0,3718,104);
/*!40000 ALTER TABLE `conference_answer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17  9:14:34
