-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: dbms
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'00ae8756480e802ca09599300475b500b18ed6ea');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `all_order`
--

DROP TABLE IF EXISTS `all_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `all_order` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `total_bill` int(11) NOT NULL,
  `ordered_at` datetime NOT NULL,
  PRIMARY KEY (`o_id`),
  KEY `u_id` (`u_id`),
  KEY `b_id` (`b_id`),
  CONSTRAINT `all_order_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `useraccounts` (`u_id`),
  CONSTRAINT `all_order_ibfk_2` FOREIGN KEY (`b_id`) REFERENCES `books` (`b_id`),
  CONSTRAINT `all_order_ibfk_3` FOREIGN KEY (`u_id`) REFERENCES `useraccounts` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `all_order_ibfk_4` FOREIGN KEY (`b_id`) REFERENCES `books` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_order`
--

LOCK TABLES `all_order` WRITE;
/*!40000 ALTER TABLE `all_order` DISABLE KEYS */;
INSERT INTO `all_order` VALUES (1,1,1,10,'2001-01-01 01:01:01'),(2,2,2,20,'2002-02-02 02:02:02'),(5,5,5,50,'2005-05-05 05:05:05'),(6,6,6,60,'2006-06-06 06:06:06'),(7,7,7,70,'2007-07-07 07:07:07'),(8,8,8,80,'2008-08-08 08:08:08'),(9,9,9,90,'2009-09-09 09:09:09'),(10,10,10,100,'2010-10-10 10:10:10'),(11,2,5,179,'2010-10-10 10:10:10'),(12,1,3,998,'2010-10-10 10:10:10'),(13,1,5,179,'2020-04-18 17:57:31'),(14,1,5,179,'2020-04-18 17:58:22'),(15,1,6,179,'2020-04-18 18:54:56'),(16,1,2,199,'2020-04-18 19:53:42'),(17,1,9,379,'2020-04-18 19:53:42'),(18,1,10,139,'2020-04-18 19:53:42'),(19,1,2,199,'2020-04-18 19:55:32'),(20,1,5,179,'2020-04-18 19:55:32'),(21,1,2,199,'2020-04-18 19:56:15'),(22,1,5,179,'2020-04-18 19:56:15'),(23,1,1,459,'2020-04-18 19:57:29'),(24,1,5,179,'2020-04-18 19:57:29'),(25,1,6,179,'2020-04-18 19:57:29'),(26,1,8,120,'2020-04-18 19:57:29'),(27,1,9,379,'2020-04-18 19:57:29'),(28,1,10,139,'2020-04-18 19:57:29'),(29,1,8,120,'2020-04-20 18:21:05'),(30,1,5,179,'2020-04-20 23:26:02'),(31,1,6,179,'2020-04-20 23:26:09'),(32,1,5,179,'2020-04-20 23:26:21'),(33,1,1,10,'2019-04-20 18:21:05'),(34,1,1,10,'2019-04-20 18:21:05'),(35,1,1,10,'2019-04-20 18:21:05'),(36,1,1,10,'2019-04-20 18:21:05'),(37,1,1,10,'2020-04-19 18:21:05'),(38,1,1,10,'2020-04-21 00:18:34'),(39,1,8,120,'2020-04-21 14:54:43'),(40,1,3,499,'2020-04-21 15:15:58'),(41,1,4,149,'2020-04-21 15:27:40'),(42,1,7,512,'2020-04-21 15:27:43'),(43,1,8,120,'2020-04-21 20:34:38'),(44,1,44,125,'2020-04-29 12:45:03'),(45,1,5,179,'2020-04-29 12:47:40'),(46,1,4,149,'2020-04-29 12:48:24'),(47,1,18,415,'2020-04-29 12:48:24'),(48,1,25,450,'2020-04-29 12:48:24'),(49,1,35,129,'2020-04-29 12:48:24'),(50,1,40,180,'2020-04-29 12:48:24'),(51,1,42,150,'2020-04-29 12:48:24'),(52,1,45,125,'2020-04-29 12:48:24'),(53,1,26,150,'2020-04-29 12:52:58'),(54,1,27,200,'2020-04-29 12:52:58'),(55,1,29,250,'2020-04-29 12:52:58'),(56,1,30,300,'2020-04-29 12:52:58'),(57,1,3,499,'2020-04-29 13:46:27'),(58,1,3,499,'2020-04-29 13:46:41'),(59,1,3,499,'2020-04-29 13:46:43');
/*!40000 ALTER TABLE `all_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `auth_id` int(11) NOT NULL,
  `auth_name` varchar(30) NOT NULL,
  `nationality` varchar(20) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`auth_id`),
  CONSTRAINT `authors_chk_1` CHECK ((length(`password`) >= 8)),
  CONSTRAINT `authors_chk_2` CHECK ((`auth_id` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Carlton S Ramos','England','Applebanan'),(2,'Joseph G Santos','Denmark','Applebanan'),(3,'Janet A Baker','Singapore','Applebanan'),(4,'Dawn R Carpenter','USA','Applebanan'),(5,'Mario ','USA','Applebanan'),(6,'Marianne N Brown','Canada','Applebanan'),(7,'Mark Twain','USA','Applebanan'),(8,'Mark Twain','Russia','Applebanan'),(9,'HC Verma','India','Applebanan'),(10,'Dhruv Diwan','Yemen','Applebanan'),(11,'Arvin Mayhead','France','Q8HsKbGnkd'),(12,'Shermie Rhydderch','China','ZVCsYjTPmAb'),(13,'Mahala Pluck','Indonesia','qblGG06OqfQ'),(14,'Patric Jansens','Philippines','Oj92dA3fQvO'),(17,'Bronson Baggott','Croatia','77jEKFZwFTTr'),(18,'Domeniga Asher','Bolivia','MQHBuPnd'),(19,'Renee Rosentholer','Brazil','l6Hxo35oalvf'),(20,'Kendell Loxley','Pakistan','aiA4bYI1sh'),(21,'Sibelle Bullivent','France','tK1uwfum12BF'),(22,'Luci Desouza','Russia','t44ThiofE'),(25,'Jedediah Sebring','Lebanon','Pryc1LLSVV9x'),(26,'Curcio Wellen','Italy','mL2A2e8O0P'),(27,'Jane Austen','UK','aiA4fgfd'),(28,'George Orwell','USA','pffaiA4dgdfg'),(29,'F. Scott Fitz','UK','aiA4fgfd'),(30,'William Shakespeare','USA','gdfgfdgfdgfd'),(31,'JK Rowling','USA','aifA4fgfd'),(32,'Virginia Woolf','Russia','aiA4fgfdd'),(33,'Ernest Hemingway','Canada','fgdA4fgfdd'),(34,'Devkinandan Khatri','India','dsd4fgfdd'),(35,'Munshi Premchand','India','dsd4fgfddsd'),(36,'Suryakant Tripathi Nirala','India','dsd4fgfffdd'),(37,'Mahadevi Verma','India','dsd4fgfddd'),(38,'Sumitranandan Pant','India','sd4fgfddd'),(39,'Chand Bardai','India','sd4fgrrfddd'),(40,'Vinda Karandikar.','India','sd4fgrrdddfddd'),(41,'Bhalchandra Nemade','India','sdddfddd'),(42,'Devan','India','sdddfddgd'),(43,'Maharishi','India','kldfddgd');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_genre`
--

DROP TABLE IF EXISTS `book_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_genre` (
  `g_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  PRIMARY KEY (`g_id`,`b_id`),
  KEY `b_id` (`b_id`),
  CONSTRAINT `book_genre_ibfk_1` FOREIGN KEY (`g_id`) REFERENCES `genre` (`g_id`),
  CONSTRAINT `book_genre_ibfk_2` FOREIGN KEY (`b_id`) REFERENCES `books` (`b_id`),
  CONSTRAINT `book_genre_ibfk_3` FOREIGN KEY (`g_id`) REFERENCES `genre` (`g_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `book_genre_ibfk_4` FOREIGN KEY (`b_id`) REFERENCES `books` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_genre`
--

LOCK TABLES `book_genre` WRITE;
/*!40000 ALTER TABLE `book_genre` DISABLE KEYS */;
INSERT INTO `book_genre` VALUES (15,1),(26,1),(1,2),(2,2),(8,2),(15,3),(16,3),(17,3),(21,3),(24,3),(2,4),(3,4),(4,4),(25,5),(25,6),(2,7),(15,7),(16,7),(17,7),(21,7),(25,8),(2,9),(3,9),(4,9),(10,10),(21,11),(16,12),(19,13),(13,14),(19,14),(26,14),(19,15),(6,16),(4,17),(7,18),(17,19),(1,20),(15,21),(16,22),(13,23),(23,23),(3,24),(24,25),(26,25),(27,26),(27,27),(27,29),(27,30),(13,31),(8,32),(19,33),(13,34),(14,34),(13,35),(12,36),(1,37),(12,38),(1,39),(13,40),(28,41),(1,42),(26,43),(2,44),(25,45),(28,46),(20,47),(20,48),(16,49),(3,50),(27,51),(29,51);
/*!40000 ALTER TABLE `book_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_review`
--

DROP TABLE IF EXISTS `book_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_review` (
  `b_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `numOfRev` int(11) DEFAULT '0',
  PRIMARY KEY (`b_id`),
  CONSTRAINT `book_review_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `books` (`b_id`),
  CONSTRAINT `book_review_ibfk_2` FOREIGN KEY (`b_id`) REFERENCES `books` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_review`
--

LOCK TABLES `book_review` WRITE;
/*!40000 ALTER TABLE `book_review` DISABLE KEYS */;
INSERT INTO `book_review` VALUES (1,1,18),(2,2,2),(5,5,512),(6,6,42),(7,7,43),(8,8,54),(9,9,65),(10,10,87),(11,4,274),(12,1,66),(13,9,286),(14,9,379),(15,3,521),(16,7,85),(17,3,234),(18,1,294),(19,1,304),(20,5,45),(21,1,401),(22,1,103),(23,6,238),(26,2,146),(27,1,25),(29,10,58),(30,7,248),(32,1,110),(33,9,243),(34,6,207),(35,9,213),(36,10,80),(38,10,59),(39,9,216),(40,6,179),(41,5,56),(42,6,244),(44,3,43),(45,3,48),(46,6,114),(47,10,145);
/*!40000 ALTER TABLE `book_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `pub_year` year(4) NOT NULL,
  `num_pages` int(11) NOT NULL,
  `num_copies` int(11) NOT NULL,
  `language` varchar(30) NOT NULL,
  PRIMARY KEY (`b_id`),
  UNIQUE KEY `b_name` (`b_name`),
  KEY `book_id` (`b_id`),
  KEY `book_name` (`b_name`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'You are not so smart',459,'Fallacies and Heuristics',2014,178,15,'English'),(2,'Alchemist',199,'Quest of a young boy',2002,214,30,'English'),(3,'Grit',499,'The role of grit in success',2007,363,0,'English'),(4,'Half Girlfriend',149,'Romance Novel',2014,156,12,'English'),(5,'Concepts of Physics Part 1',179,'Physics for JEE',2005,415,12,'English'),(6,'Concepts of Physics Part 2',179,'Physics for JEE',2005,436,14,'English'),(7,'The monk who sold his ferrari',512,'How to achieve happiness and nirvana',2001,321,2,'English'),(8,'General Physics',120,'Physics for JEE',1978,178,12,'English'),(9,'One Indian Girl',379,'Novel',2014,206,0,'English'),(10,'Godaan',139,'Modern Indian Literature',1936,156,0,'Hindi'),(11,'The Hobbit',399,'A renowned English Novel',1997,756,3,'English'),(12,'The Three Muskeeteers',149,'An interesting story. English Novel',2007,320,1,'English'),(13,'The Life of Pi',450,'A man\'s struggle for life and an amazing tryst with wilderness',2017,456,7,'English'),(14,'To Kill a mocking Bird',259,'First hand experience with depression and fight for coming out of it',1953,196,3,'English'),(15,'1984',399,'A classic novel',1946,420,5,'English'),(16,'Romeo and Juliet',450,'A classic romance novel',1980,199,3,'English'),(17,'Sherlock Holmes',455,'Sherlock accompanied by his sidekick Doctor Watson solve crimes',1977,566,12,'English'),(18,'Harry Potter and The Sorcerer\'s Stone',415,'Delve yourself into the magic mystery land where a small kid learns magic and encounters sorcery',2014,415,6,'English'),(19,'The Game of Thrones',614,'Who will sit on the Iron Throne? A masterpiece by George RR Martin',2017,562,5,'English'),(20,'It',179,'What will happen when the clown comes? Read to find out',2002,399,2,'English'),(21,'Three Men in a Boat',180,'Voyage into unseeen landscape by three young men and a dog',2001,196,4,'English'),(22,'The Da Vinci Code',450,'A masterpiece by Dan Brown',2000,415,1,'English'),(23,'Fifty Shades of Grey',120,'Explore the depth of love, a lover\'s perspective of her mistress',2003,463,1,'English'),(24,'Edison A Biography',320,'Auto-Biography of Sir Thomas Alva Edison',2016,499,2,'English'),(25,'How to Win Friends and Influence People',450,'A must read for the people who find it difficult to socialize.',2005,356,2,'English'),(26,'Dhruv bio',150,'Dhruv diwan bio',2020,150,14,'English'),(27,'Hardik bio',200,'Hardik;s bio',2020,200,19,'English'),(29,'Nikhil bio',250,'Nikhil bio',2020,279,1,'English'),(30,'Sonali Bio',300,'Sonali\'s bio',2020,300,88,'English'),(31,'Gaban',299,'Hindi novel',1928,256,10,'Hindi'),(32,'Chandrakanta',159,'One of the earliest Hindi Novel',1920,123,7,'Hindi'),(33,'Nirmala',160,'Story of a child bride',1934,256,12,'Hindi'),(34,'How to make teaa',450,'Tea making explained',2019,500,45,'English'),(35,'Madhushala',129,'Hindi classic Bestseller',1937,220,11,'Hindi'),(36,'Prithviraj Raso',129,'Life of Rajput King Prithviraj',1946,193,3,'Hindi'),(37,'Rashmirathi',129,'Epic poems about Karna',1932,123,3,'Hindi'),(38,'Tamas',199,'story revolved around riots in a small town',1975,136,5,'Hindi'),(39,'Kitne Pakistan',149,'utility and fatality of religion and politics for the common man.',2000,145,6,'Hindi'),(40,'Tyagpatra',180,'Tyagpatra is about a lawyer and his relationship to his bua (paternal aunt)',2002,245,2,'Hindi'),(41,'Swami',120,'A famous Marathi Novel',2005,123,7,'Marathi'),(42,'Panipat',150,'Battle of Panitpat',2015,365,4,'Marathi'),(43,'Shala',125,'Novel',2010,145,2,'Marathi'),(44,'	Kallikaattu Ithigaasam',125,'Tamil Literature',2011,135,1,'Tamil'),(45,'	Karuvachi Kaaviyam',125,'portrait of the life in the Tamil Nadu village ',1999,129,1,'Tamil'),(46,'Anatomy',615,'Medical Tetbook for Anatomy',2011,650,6,'English'),(47,'The Great Gatsby',199,'English Novel',2007,512,7,'English'),(48,'Jane Eyre',180,'English Novel',1998,122,5,'English'),(49,'The Catcher',199,'Biography of Sir Edmund Burke',2017,123,2,'English'),(50,'Nineteen Eighty Four',220,'A Dystopian nove',2005,256,1,'English'),(51,'Hardik New Bio',3000,'Read it',2010,100,50,'Marathi');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hardik`@`localhost`*/ /*!50003 TRIGGER `book_out_of_stock` AFTER UPDATE ON `books` FOR EACH ROW BEGIN
    IF new.num_copies = 0 THEN
        delete from cart where b_id=new.b_id;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `card_details`
--

DROP TABLE IF EXISTS `card_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card_details` (
  `u_id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `card_num` varchar(16) NOT NULL,
  PRIMARY KEY (`u_id`,`card_num`),
  CONSTRAINT `card_details_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `useraccounts` (`u_id`),
  CONSTRAINT `card_details_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `useraccounts` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_details`
--

LOCK TABLES `card_details` WRITE;
/*!40000 ALTER TABLE `card_details` DISABLE KEYS */;
INSERT INTO `card_details` VALUES (1,'visa','1234123412341234'),(2,'mastercard','1561611848948877'),(5,'cash','8719879845487977'),(6,'visa','8951234879786545'),(7,'mastercard','8743516846548648'),(8,'cash','1353518648645455'),(9,'visa','4654646148614655'),(10,'mastercard','4684145564688785');
/*!40000 ALTER TABLE `card_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `u_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  PRIMARY KEY (`u_id`,`b_id`),
  KEY `b_id` (`b_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `useraccounts` (`u_id`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`b_id`) REFERENCES `books` (`b_id`),
  CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`b_id`) REFERENCES `books` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cart_ibfk_4` FOREIGN KEY (`u_id`) REFERENCES `useraccounts` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (2,2),(6,4),(7,5),(8,6),(9,7),(2,8),(10,8),(13,9),(2,10);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `commentByUser` varchar(200) NOT NULL,
  `u_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`c_id`),
  KEY `b_id` (`b_id`),
  KEY `mytable_ibfk_2` (`u_id`),
  CONSTRAINT `mytable_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `books` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mytable_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `useraccounts` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES ('Loved it.',2,2,2,2),('good read, will recommend!',5,3,3,3),('so fascinating, give it a read!!',6,4,4,4),('not so interesting, so much of jargon.',7,5,0,5),('book was good, but the print is not so good.',8,6,1,6),('The book is amazing in terms of content..',9,7,2,7),('This isn\'t one of those books that ramble any practicable advice.',10,8,3,8),('Very inspiring book.',12,10,0,9),('Great little read, was recommended by my brother.',13,9,4,10),('I Loved This Book',1,1,5,11),('Loved It',1,2,5,12),('Inspired me',1,3,5,13),('I want to Recommend To Every One',1,4,5,14),('Amazing book',10,22,7,16),('Wow! This is a must read',12,46,9,17),('Unbelievable',6,35,7,18),('Good Bio',1,26,5,19),('Good',1,27,4,20);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `genre` varchar(30) NOT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Fantasy'),(2,'Adventure'),(3,'Romance'),(4,'Contemporary'),(5,'Dystopian'),(6,'Mystery'),(7,'Horror'),(8,'Thriller'),(9,'Paranormal'),(10,'History Fiction'),(11,'Science Fiction'),(12,'Memoir'),(13,'Cooking'),(14,'Art'),(15,'Self-help'),(16,'Development'),(17,'Motivational'),(18,'Health'),(19,'History'),(20,'Travel'),(21,'Guide/How-to'),(23,'Children\'s'),(24,'Psychology'),(25,'Textbook'),(26,'Humour'),(27,'Bios'),(28,'Computers'),(29,'New Genre');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mv`
--

DROP TABLE IF EXISTS `mv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mv` (
  `auth_id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL DEFAULT '0',
  `b_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `pub_year` year(4) NOT NULL,
  `num_pages` int(11) NOT NULL,
  `num_copies` int(11) NOT NULL,
  `language` varchar(30) NOT NULL,
  `genre` varchar(30) NOT NULL,
  `auth_name` varchar(30) NOT NULL,
  `nationality` varchar(20) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  KEY `book_home` (`b_id`,`g_id`,`auth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mv`
--

LOCK TABLES `mv` WRITE;
/*!40000 ALTER TABLE `mv` DISABLE KEYS */;
INSERT INTO `mv` VALUES (1,10,10,'Godaan',139,'Modern Indian Literature',1936,156,0,'Hindi','History Fiction','Carlton S Ramos','England','Applebanan'),(1,27,26,'Dhruv bio',150,'Dhruv diwan bio',2020,150,15,'English','Bios','Carlton S Ramos','England','Applebanan'),(1,27,27,'Hardik bio',200,'Hardik;s bio',2020,200,20,'English','Bios','Carlton S Ramos','England','Applebanan'),(1,27,29,'Nikhil bio',250,'Nikhil bio',2020,279,2,'English','Bios','Carlton S Ramos','England','Applebanan'),(1,27,30,'Sonali Bio',300,'Sonali\'s bio',2020,300,89,'English','Bios','Carlton S Ramos','England','Applebanan'),(3,15,1,'You are not so smart',459,'Fallacies and Heuristics',2014,178,15,'English','Self-help','Janet A Baker','Singapore','Applebanan'),(3,26,1,'You are not so smart',459,'Fallacies and Heuristics',2014,178,15,'English','Humour','Janet A Baker','Singapore','Applebanan'),(3,2,7,'The monk who sold his ferrari',512,'How to achieve happiness and nirvana',2001,321,2,'English','Adventure','Janet A Baker','Singapore','Applebanan'),(3,15,7,'The monk who sold his ferrari',512,'How to achieve happiness and nirvana',2001,321,2,'English','Self-help','Janet A Baker','Singapore','Applebanan'),(3,16,7,'The monk who sold his ferrari',512,'How to achieve happiness and nirvana',2001,321,2,'English','Development','Janet A Baker','Singapore','Applebanan'),(3,17,7,'The monk who sold his ferrari',512,'How to achieve happiness and nirvana',2001,321,2,'English','Motivational','Janet A Baker','Singapore','Applebanan'),(3,21,7,'The monk who sold his ferrari',512,'How to achieve happiness and nirvana',2001,321,2,'English','Guide/How-to','Janet A Baker','Singapore','Applebanan'),(3,25,8,'General Physics',120,'Physics for JEE',1978,178,12,'English','Textbook','Janet A Baker','Singapore','Applebanan'),(3,13,14,'To Kill a mocking Bird',259,'First hand experience with depression and fight for coming out of it',1953,196,3,'English','Cooking','Janet A Baker','Singapore','Applebanan'),(3,19,14,'To Kill a mocking Bird',259,'First hand experience with depression and fight for coming out of it',1953,196,3,'English','History','Janet A Baker','Singapore','Applebanan'),(3,26,14,'To Kill a mocking Bird',259,'First hand experience with depression and fight for coming out of it',1953,196,3,'English','Humour','Janet A Baker','Singapore','Applebanan'),(3,19,15,'1984',399,'A classic novel',1946,420,5,'English','History','Janet A Baker','Singapore','Applebanan'),(3,4,17,'Sherlock Holmes',455,'Sherlock accompanied by his sidekick Doctor Watson solve crimes',1977,566,12,'English','Contemporary','Janet A Baker','Singapore','Applebanan'),(3,7,18,'Harry Potter and The Sorcerer\'s Stone',415,'Delve yourself into the magic mystery land where a small kid learns magic and encounters sorcery',2014,415,7,'English','Horror','Janet A Baker','Singapore','Applebanan'),(3,13,34,'How to make teaa',450,'Tea making explained',2019,500,45,'English','Cooking','Janet A Baker','Singapore','Applebanan'),(5,25,5,'Concepts of Physics Part 1',179,'Physics for JEE',2005,415,13,'English','Textbook','Mario ','USA','Applebanan'),(6,21,11,'The Hobbit',399,'A renowned English Novel',1997,756,3,'English','Guide/How-to','Marianne N Brown','Canada','Applebanan'),(7,25,6,'Concepts of Physics Part 2',179,'Physics for JEE',2005,436,14,'English','Textbook','Mark Twain','USA','Applebanan'),(7,2,9,'One Indian Girl',379,'Novel',2014,206,0,'English','Adventure','Mark Twain','USA','Applebanan'),(7,3,9,'One Indian Girl',379,'Novel',2014,206,0,'English','Romance','Mark Twain','USA','Applebanan'),(7,4,9,'One Indian Girl',379,'Novel',2014,206,0,'English','Contemporary','Mark Twain','USA','Applebanan'),(7,3,24,'Edison A Biography',320,'Auto-Biography of Sir Thomas Alva Edison',2016,499,2,'English','Romance','Mark Twain','USA','Applebanan'),(8,16,12,'The Three Muskeeteers',149,'An interesting story. English Novel',2007,320,1,'English','Development','Mark Twain','Russia','Applebanan'),(8,17,19,'The Game of Thrones',614,'Who will sit on the Iron Throne? A masterpiece by George RR Martin',2017,562,5,'English','Motivational','Mark Twain','Russia','Applebanan'),(10,1,2,'Alchemist',199,'Quest of a young boy',2002,214,30,'English','Fantasy','Dhruv Diwan','Yemen','Applebanan'),(10,2,2,'Alchemist',199,'Quest of a young boy',2002,214,30,'English','Adventure','Dhruv Diwan','Yemen','Applebanan'),(10,8,2,'Alchemist',199,'Quest of a young boy',2002,214,30,'English','Thriller','Dhruv Diwan','Yemen','Applebanan'),(11,19,13,'The Life of Pi',450,'A man\'s struggle for life and an amazing tryst with wilderness',2017,456,7,'English','History','Arvin Mayhead','France','Q8HsKbGnkd'),(11,6,16,'Romeo and Juliet',450,'A classic romance novel',1980,199,3,'English','Mystery','Arvin Mayhead','France','Q8HsKbGnkd'),(13,16,22,'The Da Vinci Code',450,'A masterpiece by Dan Brown',2000,415,1,'English','Development','Mahala Pluck','Indonesia','qblGG06OqfQ'),(14,1,20,'It',179,'What will happen when the clown comes? Read to find out',2002,399,2,'English','Fantasy','Patric Jansens','Philippines','Oj92dA3fQvO'),(14,24,25,'How to Win Friends and Influence People',450,'A must read for the people who find it difficult to socialize.',2005,356,3,'English','Psychology','Patric Jansens','Philippines','Oj92dA3fQvO'),(14,26,25,'How to Win Friends and Influence People',450,'A must read for the people who find it difficult to socialize.',2005,356,3,'English','Humour','Patric Jansens','Philippines','Oj92dA3fQvO'),(17,2,4,'Half Girlfriend',149,'Romance Novel',2014,156,13,'English','Adventure','Bronson Baggott','Croatia','77jEKFZwFTTr'),(17,3,4,'Half Girlfriend',149,'Romance Novel',2014,156,13,'English','Romance','Bronson Baggott','Croatia','77jEKFZwFTTr'),(17,4,4,'Half Girlfriend',149,'Romance Novel',2014,156,13,'English','Contemporary','Bronson Baggott','Croatia','77jEKFZwFTTr'),(20,15,21,'Three Men in a Boat',180,'Voyage into unseeen landscape by three young men and a dog',2001,196,4,'English','Self-help','Kendell Loxley','Pakistan','aiA4bYI1sh'),(20,13,23,'Fifty Shades of Grey',120,'Explore the depth of love, a lover\'s perspective of her mistress',2003,463,1,'English','Cooking','Kendell Loxley','Pakistan','aiA4bYI1sh'),(20,23,23,'Fifty Shades of Grey',120,'Explore the depth of love, a lover\'s perspective of her mistress',2003,463,1,'English','Children\'s','Kendell Loxley','Pakistan','aiA4bYI1sh'),(21,15,3,'Grit',499,'The role of grit in success',2007,363,3,'English','Self-help','Sibelle Bullivent','France','tK1uwfum12BF'),(21,16,3,'Grit',499,'The role of grit in success',2007,363,3,'English','Development','Sibelle Bullivent','France','tK1uwfum12BF'),(21,17,3,'Grit',499,'The role of grit in success',2007,363,3,'English','Motivational','Sibelle Bullivent','France','tK1uwfum12BF'),(21,21,3,'Grit',499,'The role of grit in success',2007,363,3,'English','Guide/How-to','Sibelle Bullivent','France','tK1uwfum12BF'),(21,24,3,'Grit',499,'The role of grit in success',2007,363,3,'English','Psychology','Sibelle Bullivent','France','tK1uwfum12BF');
/*!40000 ALTER TABLE `mv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publications`
--

DROP TABLE IF EXISTS `publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publications` (
  `pub_id` int(11) NOT NULL,
  `pub_name` varchar(50) NOT NULL,
  `pub_address` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`pub_id`),
  UNIQUE KEY `pub_name` (`pub_name`),
  CONSTRAINT `publications_chk_1` CHECK ((length(`password`) >= 8)),
  CONSTRAINT `publications_chk_2` CHECK ((`pub_id` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications`
--

LOCK TABLES `publications` WRITE;
/*!40000 ALTER TABLE `publications` DISABLE KEYS */;
INSERT INTO `publications` VALUES (1,'Pearson Education','World Trade Tower, C01, Sector 16, Noida','Applebanan'),(2,'Thomson Reuters','Antonio Vivaldistraat 50, 1083 HP, Amsterdam','Applebanan'),(3,'Northern Book Center','4221/1 Ansari Road New Delhi - 110 002','Applebanan'),(4,'Penguin Books India','Department11, Community Center Panchsheel Park','Applebanan'),(5,'Reliance Publishing House','6/1, Basement, South Patel Nagar, Delhi','Applebanan'),(6,'Oxford University Press','1st Floor, YMCA Library Building 1, Jai Singh','Applebanan'),(7,'McGraw-Hill Education','58 Park Ave, New York, NY 10016','Applebanan'),(8,'Metropolitan Book','1, Netaji Subhash Marg, Main Road, Daryaganj','Applebanan'),(9,'Orient BlackSwan','3-6-752 Himayatnagar Hyderabad- 500 029','Applebanan'),(10,'MacMillan India','10, Ansari Road Darya Ganj New Delhi -110 002','Applebanan'),(11,'Dhruv\'s house','Raj nagar 345','Applebanan'),(13,'Stracke Group','Dottie Terrace','wEaK40PDUb'),(15,'Jast, Pfannerstill and Windler','7 High Crossing Lane','MeEKywHn'),(16,'Walker-Fahey','39615 Lillian Point','EMHhwspV5wY'),(18,'Altenwerth, Ruecker and Gislason','06 Anthes Drive','Y3BEZXurzGz'),(19,'Fahey LLC','6989 Jenna Street','FWR88EUkH4t'),(20,'Stamm LLC','96 Gale Road','GwwC2y6zWO'),(21,'Mertz, Zulauf and Will','9 Farmco Road','HTZIPeUC3'),(23,'Conroy-Romaguera','7157 Doe Crossing Avenue','BRgrkcRPdsqS'),(24,'Grant Group','686 Little Fleur Crossing','udqi6wUvw'),(27,'Ankunding, Torphy and Rowe','839 Annamark Circle','ZV32jajuQof9'),(28,'Herzog-Veum','366 Comanche Hill','I61Ns2b78'),(30,'Jacobi LLC','4 Service Crossing','kBqYrhAowXaD'),(31,'Williamson-Zboncak','96 Florence Circle','RBpj9UmM04'),(32,'O\'Connell LLC','58 Mitchell Plaza','ZwSeKx0eFlR'),(35,'Bailey-Wintheiser','95666 Helena Way','qLPPGZhZ2Fde'),(37,'Ledner LLC','3082 Rowland Park','ZmWj7qInJ2P'),(38,'Bernhard-Kilback','20 Caliangt Way','shsTRo4yW2to'),(39,'Medhurst Group','215 Jenifer Way','odGbRgriu'),(40,'Davis LLC','39733 Beilfuss Terrace','vHIq4Ici0P'),(41,'Legros-Predovic','98535 Express Center','elby7TjW');
/*!40000 ALTER TABLE `publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `published_by`
--

DROP TABLE IF EXISTS `published_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `published_by` (
  `b_id` int(11) NOT NULL,
  `pub_id` int(11) NOT NULL,
  PRIMARY KEY (`b_id`),
  KEY `pub_id` (`pub_id`),
  CONSTRAINT `published_by_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `books` (`b_id`),
  CONSTRAINT `published_by_ibfk_2` FOREIGN KEY (`pub_id`) REFERENCES `publications` (`pub_id`),
  CONSTRAINT `published_by_ibfk_3` FOREIGN KEY (`b_id`) REFERENCES `books` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `published_by_ibfk_4` FOREIGN KEY (`pub_id`) REFERENCES `publications` (`pub_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `published_by`
--

LOCK TABLES `published_by` WRITE;
/*!40000 ALTER TABLE `published_by` DISABLE KEYS */;
INSERT INTO `published_by` VALUES (25,1),(26,1),(27,1),(33,1),(51,1),(14,2),(17,2),(21,2),(23,2),(29,2),(39,2),(15,3),(22,3),(11,4),(2,5),(3,5),(4,5),(5,5),(12,5),(20,5),(13,6),(18,6),(24,6),(34,6),(7,7),(9,7),(10,7),(16,7),(1,8),(6,8),(8,8),(19,8),(31,9),(45,10),(30,11),(35,11),(41,13),(46,15),(36,23),(50,23),(49,24),(43,27),(32,28),(40,28),(47,30),(37,31),(38,37),(48,38),(42,40),(44,41);
/*!40000 ALTER TABLE `published_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_manager`
--

DROP TABLE IF EXISTS `stock_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_manager` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_manager`
--

LOCK TABLES `stock_manager` WRITE;
/*!40000 ALTER TABLE `stock_manager` DISABLE KEYS */;
INSERT INTO `stock_manager` VALUES (1,'273ab80e1afd03efd3359a3ebc7dab642fbbf515');
/*!40000 ALTER TABLE `stock_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `payer_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `trans_time` datetime NOT NULL,
  PRIMARY KEY (`payer_id`,`recipient_id`,`trans_time`),
  KEY `FK_RecipientID` (`recipient_id`),
  CONSTRAINT `FK_RecipientID` FOREIGN KEY (`recipient_id`) REFERENCES `useraccounts` (`u_id`),
  CONSTRAINT `FK_RecipientID_2` FOREIGN KEY (`recipient_id`) REFERENCES `useraccounts` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,2,1500,'2002-02-02 02:02:02'),(1,2,NULL,'2020-04-21 15:16:54'),(1,2,100,'2020-04-21 15:22:53'),(1,2,200,'2020-04-21 15:24:02'),(3,1,1234,'2020-04-20 01:17:34'),(4,5,1790,'2020-04-20 01:17:27');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraccounts`
--

DROP TABLE IF EXISTS `useraccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useraccounts` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `contact_no` varchar(13) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `address` varchar(200) NOT NULL,
  `balance` int(11) DEFAULT '0',
  `card_number` varchar(10) NOT NULL,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email_id` (`email_id`),
  UNIQUE KEY `contact_no` (`contact_no`),
  UNIQUE KEY `email_id_2` (`email_id`),
  UNIQUE KEY `card_number` (`card_number`),
  KEY `userAccounts_u_id` (`u_id`),
  KEY `userAccounts_username` (`username`),
  CONSTRAINT `useraccounts_chk_1` CHECK ((length(`password`) >= 8)),
  CONSTRAINT `useraccounts_chk_2` CHECK ((length(`card_number`) = 10)),
  CONSTRAINT `useraccounts_chk_3` CHECK ((`age` > 0)),
  CONSTRAINT `useraccounts_chk_4` CHECK ((`balance` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=1502 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraccounts`
--

LOCK TABLES `useraccounts` WRITE;
/*!40000 ALTER TABLE `useraccounts` DISABLE KEYS */;
INSERT INTO `useraccounts` VALUES (1,'hardik18391','hardik12','hardik18391@iiitd.ac.in','1234567890',18,'M','Ap #996-8099 Consequat St.',124342,'3534732673'),(2,'Nikhil','nikhilisgreat','nnnikhilyadav@gmail.com','9871919437',19,'M','P.O. Box 414, 8698 Sit Road',7778,'4903130316'),(5,'Vani','vanigoel_1234','vanigoel_1234@gmail.com','9354750499',26,'F','Ap #128-8871 Commodo St.',7321,'5018998747'),(6,'Yamini','yummyisme','yaminimanral.04@gmail.com','9566477864',19,'F','Ap #507-965 Adipiscing Avenue',6655,'3583268895'),(7,'Riya Singhal','riya_19singhal','riya19singhal@hotmail.com','8545786400',18,'F','P.O. Box 122, 7964 Semper St.',6655,'3570913679'),(8,'Mehak Vohra','mehak_17angel','mynameisangel_1234@gmail.com','954486254',29,'F','9879 Semper Road',6655,'2019993852'),(9,'Brajesh','brijeshkumarifs','brijeshifs.lbsnaa@gmail.com','8448504723',45,'M','790-6323 Donec Av.',6655,'2016412384'),(10,'Asna Oberoi','aaasnuuuu','asnaoberoi_19@gmail.com','707-707-7078',20,'F','P.O. Box 978, 9109 Ornare St.',6655,'3545835599'),(12,'Vinay Sahu','Sallubhaikijai','hotboi_1234@gmail.com','9999555653',34,'M','P.O. Box 752, 5093 Montes, Street',6655,'3544960114'),(13,'Manish Jarwal','iamalive','manish_aap@yahoo.com','7703804718',23,'M','721-4431 Sit Av.',6655,'5100139098'),(14,'Brij Mohan Das','bagga_sharma48','birju.smps@gmail.com','8845682314',48,'M','657 At, Avenue',6655,'3568527165'),(15,'Trueman','rvtqxKAHFK','tsapwell0@japanpost.jp','618-386-1821',83,'M','P.O. Box 477, 4787 Porttitor St.',6655,'3568100472'),(16,'Gay','QJI6wHOO1WQ','gbrazelton1@youtube.com','399-255-6843',72,'F','P.O. Box 407, 3160 Pretium Avenue',6655,'3571164358'),(17,'Maximilianus','IE64waWJ7gh','mwiffill2@elegantthemes.com','575-403-3320',47,'M','2624 Nec, St.',6655,'5893678910'),(18,'Randal','qyC8dImWsUDR','rskowcraft3@1688.com','852-330-4445',39,'M','1807 Odio. Av.',6655,'5100174792'),(19,'Erick','VflTvaQ0YC','ewhitwell4@hao123.com','317-351-1261',63,'M','P.O. Box 837, 3354 At St.',6655,'3545001831'),(20,'Barrie','hyFMe9oCLMt','bsalatino5@slate.com','966-248-3765',92,'F','P.O. Box 324, 9900 Orci, Rd.',6655,'6759114429'),(21,'Rodge','WhXrLk6RvT5','rbrymner6@clickbank.net','578-928-0231',68,'M','1594 Consectetuer, St.',6655,'4041596281'),(22,'Rianon','Rw35olQFD','rmorley7@ca.gov','663-112-2728',86,'F','6723 Morbi Ave',6655,'0604070150'),(23,'Clarance','5vtTxGPmKv','cbamforth8@people.com.cn','620-188-0949',95,'M','550-8882 Tellus Ave',6655,'5501805231'),(24,'Dino','Xie6nrX1K','dcostan9@who.int','713-501-0596',22,'M','P.O. Box 926, 1325 Dictum Street',6655,'4903466237'),(26,'Sybilla','OVWD41XP','sconleyb@un.org','376-906-8148',78,'F','P.O. Box 163, 5510 Aliquet, Rd.',6655,'3558932001'),(27,'Stanleigh','6i83n8RyLosi','sdufourc@hostgator.com','696-911-9062',93,'M','P.O. Box 140, 2609 Sagittis Street',6655,'5505665456'),(28,'Jaquith','E8pgrVPTNRec','jhousamand@hugedomains.com','122-172-1874',65,'F','Ap #356-5854 Adipiscing Rd.',6655,'3545634765'),(29,'Hercule','jehTtziIZ','hassade@tumblr.com','717-891-2832',35,'M','Ap #478-4508 Aliquam Street',6655,'4486315333'),(30,'Opalina','xpwyP7Y2Iyn','oannettsf@elpais.com','908-569-0478',35,'F','122-9424 Adipiscing. Street',6655,'3549376596'),(31,'Brina','0DQo8UWyCTz','btyneg@comcast.net','382-416-5551',37,'F','Ap #513-192 Risus Avenue',6655,'3575095781'),(33,'Merv','HBbswjpLf','mohingertyi@boston.com','486-831-4807',17,'M','9111 Maecenas Rd.',6655,'3584606279'),(36,'Isa','a3x2fo9JD','iattkinsl@free.fr','859-252-7074',49,'F','P.O. Box 309, 6046 Massa St.',6655,'2015723648'),(37,'Aristotle','a245r3jc','akezorm@reuters.com','256-307-7518',61,'M','P.O. Box 767, 7961 Eros Avenue',6655,'6331107955'),(38,'Xenos','gpbywgxxM','xbossen@dion.ne.jp','746-841-4001',80,'M','Ap #103-6268 Elit Av.',6655,'3561684342'),(39,'Janey','ltxHrrEcIcE','jastlatto@flickr.com','203-374-7319',37,'F','P.O. Box 543, 4079 Tincidunt Road',6655,'3534248614'),(40,'Ingra','R2G2Bx4ccvVq','idigancep@wordpress.org','759-253-1204',72,'M','Ap #136-3715 Arcu. Av.',6655,'6709629782'),(42,'Renato','K8bFh9Gn7DN','rathower@hibu.com','285-792-2943',81,'M','5586 Sit Road',6655,'3589465601'),(43,'Coretta','cVt2IJIYgX0o','chastlers@sfgate.com','463-126-8382',65,'F','Ap #429-1341 Facilisis Street',6655,'3550752059'),(44,'Taddeusz','oJUc7hVDP7g','thanhardtt@jimdo.com','600-918-1785',20,'M','P.O. Box 592, 9548 Nunc. Av.',6655,'3528919078'),(47,'Yves','HlT7SeWQ9AQ','ycollopw@webnode.com','549-473-6820',27,'M','Ap #636-3664 At, Rd.',6655,'3573956129'),(48,'Arleta','nFMjMWfXuWxk','astanyonx@china.com.cn','692-345-1698',21,'F','7617 Dictum Avenue',6655,'6331101453'),(49,'Justis','j5Py1SK2','jbeckerlegy@army.mil','856-644-4728',99,'M','497-8311 Sed Av.',6655,'3562197391'),(52,'Lenard','RNCdibsDO9','lidney11@a8.net','627-378-2273',84,'M','P.O. Box 490, 4185 Risus. Rd.',6655,'3567572503'),(53,'Cammie','IFy8oCTmc2','cfotheringham12@google.com','678-795-2453',89,'F','1968 Eu Road',6655,'3588229765'),(54,'Gonzales','sj8nYGzMR','glewson13@digg.com','559-422-5588',69,'M','6001 Nibh. Road',6655,'6331101690'),(56,'Georgie','A0kCONf9Q','gcarrivick15@topsy.com','566-953-0155',26,'M','Ap #661-745 Ut Rd.',6655,'4026321746'),(57,'Alexandre','36qhvZPDA','adurie16@linkedin.com','352-158-6586',43,'M','3405 Sed St.',6655,'3723019467'),(58,'Gray','3jP57DFEMR','gsherville17@phoca.cz','777-126-1918',99,'F','Ap #407-8609 Sodales Avenue',6655,'3573580111'),(59,'Guenevere','7DKTRbPw4WyH','gbugden18@hc360.com','601-323-5912',61,'F','767 Tincidunt Road',6655,'4508415756'),(60,'Nathanial','ragq5WDFD','nmockford19@youtube.com','205-289-0714',95,'M','Ap #629-6335 Magna. Av.',6655,'5457715043'),(61,'Aleen','9aVEWLklR','acronkshaw1a@list-manage.com','712-106-1926',22,'F','901-1122 Felis. Rd.',6655,'5602230428'),(62,'Filmer','pbbmzx3n9hfC','fstickins1b@goo.gl','105-452-3524',54,'M','2115 Etiam Road',6655,'4913700104'),(63,'Nerta','kPRVxZHG','nlerigo1c@usatoday.com','110-643-1915',92,'F','Ap #137-5149 Eu, Road',6655,'4041376629'),(67,'Bessie','VboOKqbgoRNd','bprint1g@sun.com','428-263-6700',49,'F','Ap #762-9522 Tortor, St.',6655,'3564333315'),(68,'Tanner','WdaphrBgl','tpetschel1h@bigcartel.com','715-570-3916',85,'M','Ap #588-7285 Mollis. St.',6655,'6759201611'),(69,'Filbert','fWXn9nFEr','fduiguid1i@weibo.com','288-867-1184',60,'M','466-4951 Tristique Rd.',6655,'6304388597'),(71,'Aloin','bxXaGdLh1','aruske1k@barnesandnoble.com','180-758-5929',52,'M','3717 Dictum Ave',6655,'3538654619'),(72,'Lydia','a8oSd8qf','lpicott1l@friendfeed.com','781-485-5006',52,'F','Ap #457-491 Duis Rd.',6655,'3571448281'),(73,'Ciro','KwQJNPvl','cbrane1m@edublogs.org','966-190-8756',48,'M','Ap #117-8348 In St.',6655,'3549357647'),(74,'Stoddard','WOPZdiIm','sflello1n@noaa.gov','466-752-0324',77,'F','Ap #606-2314 Ultrices Ave',6655,'3051893211'),(75,'Nathaniel','mSIpUbW1Q','njaggers1o@cyberchimps.com','955-463-4046',43,'M','221-1484 Quis, St.',6655,'4844560621'),(77,'Currey','XqzWFAVdZN','cpernell1q@blinklist.com','148-121-9259',84,'M','9629 Luctus Street',6655,'4936983381'),(78,'Lisabeth','TJ7fhgbb9','lmewe1r@wunderground.com','495-269-0362',40,'F','Ap #467-3834 Maecenas Ave',6655,'2017342430'),(79,'Thornie','uxqyqZeV','tsackett1s@squarespace.com','426-965-0626',21,'M','260-1307 Sed Av.',6655,'6771360410'),(80,'Blondy','CxDWLQ7KxsE','bgraham1t@tamu.edu','385-195-0082',84,'F','2203 Fringilla Av.',6655,'5602251078'),(83,'Nikola','nSRBSL4ELz6Q','nkinnear1w@biblegateway.com','636-235-8939',93,'M','7483 Volutpat St.',6655,'3557173529'),(84,'Edwin','iIP8ViPjS','egillion1x@usatoday.com','158-554-4427',72,'M','P.O. Box 188, 5409 Lorem, Rd.',6655,'3379415699'),(85,'Minna','R7QyBxatOl','mitzakson1y@cyberchimps.com','959-710-5518',86,'F','8639 Eleifend. Road',6655,'3569022968'),(88,'Rani','BwkwaQ2xXGg','rbasterfield21@omniture.com','610-602-4965',26,'F','P.O. Box 314, 3619 Velit Avenue',6655,'3581414687'),(89,'Dallon','CXBiNv2qWit','dmawtus22@dropbox.com','859-688-0446',29,'M','Ap #233-4709 Arcu. St.',6655,'5100147229'),(90,'Rivalee','QOuzk6A8I','rcoping23@indiatimes.com','252-151-7429',68,'F','470-2410 Nibh. Road',6655,'3746222701'),(93,'Hermann','R9lveZAyb','holyonov26@de.vu','984-652-1997',79,'M','Ap #659-2827 Tincidunt, Rd.',6655,'3541184872'),(94,'Gustie','YHaZund3BeBb','gpindar27@goo.gl','820-591-5563',72,'F','5818 Mauris, Avenue',6655,'2017367238'),(95,'Enrique','wkV2nGTXu','emollin28@europa.eu','240-403-2372',34,'M','577-1177 Risus. Av.',6655,'3575147656'),(96,'Godard','OgolN2iW','ghauch29@fda.gov','152-187-6933',24,'M','7970 Tincidunt Rd.',6655,'5610455084'),(97,'Irv','gHt2JDJoA','isherwell2a@themeforest.net','786-184-7170',65,'M','720-4798 Nascetur Road',6655,'6759396893'),(98,'Blythe','ysrpdgPFOGWy','bbointon2b@techcrunch.com','576-224-8061',67,'F','808-9837 Molestie Road',6655,'3742839446'),(99,'Abigail','nUCPTPGxXE','aritter2c@marriott.com','735-354-3848',95,'F','7835 Arcu. St.',6655,'6771620218'),(104,'Farris','pxu1LdoZgG','fkilday2h@samsung.com','149-175-6766',93,'M','262-6488 Adipiscing Av.',6655,'2015617244'),(105,'Lexine','O43pipqa','lboggis2i@tiny.cc','822-331-3419',47,'F','Ap #128-8871 Commodo St.',6655,'3550785887'),(106,'Maryanna','xxFugZXr01q','mritchie2j@symantec.com','308-171-1998',55,'F','Ap #507-965 Adipiscing Avenue',6655,'5610991258'),(109,'Minnie','4slWtbtmoL6K','mtrayton2m@networkadvertising.org','418-898-8636',68,'F','790-6323 Donec Av.',6655,'3555099387'),(110,'Ruy','aAiuiBWxcK','rtomley2n@cpanel.net','931-384-0569',98,'M','P.O. Box 978, 9109 Ornare St.',6655,'3543427248'),(113,'Gaspard','kf5TG9sNtlh','gjakolevitch2q@shutterfly.com','456-467-7163',17,'M','721-4431 Sit Av.',6655,'3584565500'),(114,'Peyter','FyaMJLUv','pgodlee2r@tinyurl.com','553-555-6708',64,'M','657 At, Avenue',6655,'3574314673'),(115,'Donnie','YlSEOrNpcvp','dgissing2s@phpbb.com','604-513-0913',43,'F','P.O. Box 477, 4787 Porttitor St.',6655,'3723013585'),(116,'Savina','oTfMrdlea5wS','spiddlesden2t@ovh.net','695-783-6902',95,'F','P.O. Box 407, 3160 Pretium Avenue',6655,'3723010356'),(120,'Bram','eSZFAIqy','btall2x@archive.org','265-949-7227',25,'M','P.O. Box 324, 9900 Orci, Rd.',6655,'3529202940'),(121,'Lonnie','HwJu5xUn','ljillard2y@reddit.com','115-453-2502',72,'F','1594 Consectetuer, St.',6655,'5020561331'),(122,'Hi','Na9LoNSxvQHP','hlenchenko2z@npr.org','852-908-7462',43,'M','6723 Morbi Ave',6655,'5002356354'),(123,'Paulie','LR58C8yw','pdach30@microsoft.com','927-791-5750',65,'M','550-8882 Tellus Ave',6655,'3558288442'),(124,'Gareth','9QSsXJvSDH','gdrinkel31@chron.com','725-141-0258',77,'M','P.O. Box 926, 1325 Dictum Street',6655,'5610035463'),(125,'Tito','AMxdn1i3cxg','tabley32@artisteer.com','797-100-0531',82,'M','5050 Eget Avenue',6655,'2016662504'),(126,'Tony','olCxq3alBUQb','tmacdearmid33@cbsnews.com','809-123-7954',75,'F','P.O. Box 163, 5510 Aliquet, Rd.',6655,'3553961679'),(127,'Julina','2NiJ0BVWpIdj','jsharnock34@topsy.com','807-469-1430',81,'F','P.O. Box 140, 2609 Sagittis Street',6655,'5002354045'),(128,'Sergent','kdLLE2b3IC6','sguidini35@usnews.com','745-108-4411',70,'M','Ap #356-5854 Adipiscing Rd.',6655,'5018079372'),(129,'Devondra','S4fqxY8kuz','dgrunguer36@macromedia.com','196-676-0969',31,'F','Ap #478-4508 Aliquam Street',6655,'3564596502'),(130,'Kiah','u3Rjc4gTVAf','kmacphaden37@paginegialle.it','636-225-1232',95,'F','122-9424 Adipiscing. Street',6655,'3556407654'),(131,'Paige','qbbInAjN','probilart38@ameblo.jp','713-782-4415',49,'M','Ap #513-192 Risus Avenue',6655,'3546584187'),(132,'Coletta','dftg5Nt5','cjadczak39@aol.com','540-484-0982',88,'F','5916 Quis, St.',6655,'4844230293'),(133,'Shaylynn','eqRcn1oW','strebilcock3a@aol.com','436-859-0270',47,'F','9111 Maecenas Rd.',6655,'3586763135'),(135,'Doloritas','BSYYIEYgXnkt','dwagg3c@yandex.ru','745-902-9800',17,'F','P.O. Box 597, 3119 Tempor, Avenue',6655,'3027803577'),(136,'Wanids','9zn5JyL5aI0','whallgalley3d@canalblog.com','605-998-2893',56,'F','P.O. Box 309, 6046 Massa St.',6655,'5149410133'),(137,'Hervey','nu2VEmWj','hjurewicz3e@loc.gov','150-562-6453',44,'M','P.O. Box 767, 7961 Eros Avenue',6655,'3529674150'),(138,'Darren','QNxc2M2DwhgH','dancell3f@weather.com','839-136-7143',49,'M','Ap #103-6268 Elit Av.',6655,'3723010889'),(139,'Celesta','ZPytLJ6kte','cwent3g@sitemeter.com','407-554-2425',53,'F','P.O. Box 543, 4079 Tincidunt Road',6655,'3564002422'),(140,'Franky','qWDsMZ80d','fsmaleman3h@nature.com','672-178-4604',55,'M','Ap #136-3715 Arcu. Av.',6655,'3537648708'),(141,'Kareem','tq7h5TyxRg','kdwight3i@soundcloud.com','982-425-3045',85,'M','452-5067 Dui Rd.',6655,'3534282756'),(143,'Marrilee','Abkx9KSB3','mmersh3k@foxnews.com','406-225-2936',91,'F','Ap #429-1341 Facilisis Street',6655,'6334007713'),(144,'Rubin','Kzc0QKpn','rmansuer3l@miitbeian.gov.cn','871-474-0326',33,'M','P.O. Box 592, 9548 Nunc. Av.',6655,'2014659440'),(145,'Ody','vFfpeA4kMaBu','oterrett3m@ucla.edu','129-799-0765',68,'M','Ap #760-8727 Dui Road',6655,'0604596183'),(147,'Jimmie','yvr5ZZLCnq','jjaffray3o@scribd.com','328-223-7246',95,'M','Ap #636-3664 At, Rd.',6655,'6771271891'),(151,'Hendrick','MINvphWkbwj','hkinloch3s@imdb.com','694-483-1789',48,'M','8959 Est. St.',6655,'3742888301'),(152,'Reta','JrWZfSWCHBMo','rtittershill3t@go.com','152-446-0088',29,'F','P.O. Box 490, 4185 Risus. Rd.',6655,'3580212484'),(154,'Mattie','vVhC6H4Ufff','mwharlton3v@123-reg.co.uk','512-402-7086',57,'M','6001 Nibh. Road',6655,'4911299309'),(156,'Jojo','jV6cvwuZ','jcullum3x@usa.gov','391-231-9179',20,'F','Ap #661-745 Ut Rd.',6655,'5893455885'),(157,'Teri','618CdI20q','tupfold3y@mapquest.com','356-443-2077',66,'F','3405 Sed St.',6655,'3575423972'),(159,'Vito','7G7eBhNp5','vtropman40@fastcompany.com','505-230-4749',48,'M','767 Tincidunt Road',6655,'3568476632'),(161,'Kata','Y58KUf7WHK','kmacleese42@alibaba.com','855-922-8332',93,'F','901-1122 Felis. Rd.',6655,'5351390035'),(163,'Wye','QE6bTEGFEal','wferruzzi44@china.com.cn','614-432-0427',30,'M','Ap #137-5149 Eu, Road',6655,'4922388598'),(164,'Rois','LhQ4vB5hiSVW','rpoppleston45@altervista.org','578-392-7233',95,'F','Ap #960-7129 Augue Street',6655,'5018773297'),(166,'Carmon','rGvushdn','cbaitman47@github.io','980-754-2951',84,'F','172-9358 Non, Street',6655,'5474539063'),(170,'Vincents','n406stSOY0','vpawelek4b@kickstarter.com','338-164-7694',87,'M','P.O. Box 788, 2936 Magnis Street',6655,'3532139672'),(171,'Davina','OTVTcx6o','dgoor4c@fotki.com','977-667-6620',17,'F','3717 Dictum Ave',6655,'3555766022'),(172,'Estrellita','81Ffjg8AG','ecleland4d@admin.ch','463-653-0432',34,'F','Ap #457-491 Duis Rd.',6655,'6759828522'),(174,'Elfreda','z9gOK6ON','etudball4f@tinyurl.com','813-465-3300',44,'F','Ap #606-2314 Ultrices Ave',6655,'3578162286'),(175,'Regine','MyVWmV3qzST','rderobert4g@livejournal.com','533-449-9901',44,'F','221-1484 Quis, St.',6655,'6771412993'),(176,'Marcel','r5aHuoGCf5','mbye4h@newyorker.com','407-112-8937',65,'M','3587 Mauris Rd.',6655,'3564887637'),(177,'Norean','vFfdL7I6Y','nrobbey4i@soundcloud.com','987-491-4442',47,'F','9629 Luctus Street',6655,'3580802884'),(178,'Juliana','RYqv0gzOM','jjellett4j@alexa.com','302-379-2396',64,'F','Ap #467-3834 Maecenas Ave',6655,'3578838893'),(179,'Druci','7KW21gYfpII','dtuffin4k@squidoo.com','294-272-9549',39,'F','260-1307 Sed Av.',6655,'2019773864'),(180,'Mariya','ioELGk6ZvluQ','mwinkett4l@tiny.cc','741-223-9760',62,'F','2203 Fringilla Av.',6655,'5602251292'),(181,'Isabel','fbc7xjydzL','igecke4m@dmoz.org','118-914-9499',20,'F','P.O. Box 555, 6694 Amet Avenue',6655,'3582179797'),(184,'Sherri','HDMXcQUqjRR','swynne4p@msn.com','228-720-6471',47,'F','P.O. Box 188, 5409 Lorem, Rd.',6655,'6759468200'),(185,'Winfield','lyE3crc3M','wwitherdon4q@google.pl','816-755-1141',75,'M','8639 Eleifend. Road',6655,'3529665418'),(186,'Elvin','qr7h5yANEy','eblamire4r@facebook.com','905-244-8036',20,'M','P.O. Box 534, 7220 Dolor. Avenue',6655,'6771392786'),(188,'Cory','PssCxDW6','cdomeny4t@is.gd','837-285-9460',78,'F','P.O. Box 314, 3619 Velit Avenue',6655,'3529628169'),(189,'Teena','93RROXpb3k','tpetrasso4u@histats.com','158-421-8645',30,'F','Ap #233-4709 Arcu. St.',6655,'6761190736'),(190,'Emmalynn','TUSu8o6QHUV','ejanu4v@jiathis.com','883-102-1585',29,'F','470-2410 Nibh. Road',6655,'3565449509'),(191,'Darya','RXiUX96k','dsewart4w@privacy.gov.au','766-851-2862',74,'F','3529 Vestibulum Rd.',6655,'3578713236'),(193,'Brose','3fNzRv2D6','bgarthland4y@drupal.org','843-855-1956',21,'M','Ap #659-2827 Tincidunt, Rd.',6655,'3542447524'),(195,'Yardley','CYe8by7sdu6','yfison50@nba.com','335-203-0085',75,'M','577-1177 Risus. Av.',6655,'5567115620'),(197,'Abbie','tj0zy9L3Pg','aiacavone52@ameblo.jp','610-366-0474',20,'F','720-4798 Nascetur Road',6655,'3742888361'),(198,'Kori','a2hZQW4Tt','kbergeon53@about.com','327-637-2156',74,'F','808-9837 Molestie Road',6655,'4041370290'),(200,'Holli','gy10UlvwMzq','hleasor55@cyberchimps.com','917-943-9310',47,'F','P.O. Box 338, 5308 Purus, Rd.Ap #996-8099 Consequat St.',6655,'3379417559'),(201,'Theresa','jLIpFvOWLIZ','tlaite56@usgs.gov','110-657-8427',83,'F','P.O. Box 414, 8698 Sit Road',6655,'3558158690'),(202,'Yulma','FGAuXMoz','yoneill57@amazon.com','187-496-9060',99,'M','859-140 Nascetur Ave',6655,'3379417135'),(206,'Tedd','tM6sWVDzb','thoogendorp5b@quantcast.com','592-381-1644',46,'M','P.O. Box 122, 7964 Semper St.',6655,'3533116268'),(207,'Robinetta','weH58HU8D','rbrothwell5c@newyorker.com','389-929-4424',69,'F','9879 Semper Road',6655,'3029911393'),(209,'Alikee','Tv1YdgPpVL','aamdohr5e@cdbaby.com','196-340-0141',44,'F','P.O. Box 978, 9109 Ornare St.',6655,'5020722651'),(210,'Giulietta','RYncwU9E','gdjuricic5f@xing.com','669-255-1048',68,'F','P.O. Box 445, 7458 Purus. Rd.',6655,'6331109430'),(212,'Dew','qs9MbTFP4j','dotter5h@zdnet.com','985-179-5126',99,'M','721-4431 Sit Av.',6655,'3562843608'),(213,'Norri','w9qsFby8nh','nstannering5i@studiopress.com','424-645-6437',27,'F','657 At, Avenue',6655,'3529307807'),(214,'Royall','ZWRJ0ah64ST','rendrizzi5j@joomla.org','617-870-1785',26,'M','P.O. Box 477, 4787 Porttitor St.',6655,'4911678528'),(215,'Pammie','c3BfQPwVXMn5','pfreshwater5k@jiathis.com','999-698-9813',24,'F','P.O. Box 407, 3160 Pretium Avenue',6655,'5641823684'),(216,'Luigi','RfKa0iYtL','lmallard5l@google.com.au','933-585-0736',90,'M','2624 Nec, St.',6655,'3583150904'),(217,'Sella','Q0IySNm9d2k','spadgham5m@4shared.com','103-148-4338',71,'F','1807 Odio. Av.',6655,'3555898489'),(218,'Agace','mqVpI31n','ajozefczak5n@taobao.com','595-683-7534',95,'F','P.O. Box 837, 3354 At St.',6655,'3529126008'),(219,'Florinda','7UTQLAiuBn3j','fizakov5o@yolasite.com','815-219-6965',50,'F','P.O. Box 324, 9900 Orci, Rd.',6655,'3567922237'),(222,'Nikolas','a3VXzpAKldj','nabriani5r@symantec.com','230-889-7416',19,'M','550-8882 Tellus Ave',6655,'3720606275'),(223,'Pembroke','r6QtWoFer1q','plongden5s@hao123.com','793-333-5606',97,'M','P.O. Box 926, 1325 Dictum Street',6655,'3539855440'),(224,'Cortie','CCnSavApw9h','ccroasdale5t@washingtonpost.com','815-544-6545',62,'M','5050 Eget Avenue',6655,'6761553152'),(226,'Honoria','MnF0939GaGi2','hsighart5v@apple.com','810-923-2791',99,'F','P.O. Box 140, 2609 Sagittis Street',6655,'3532910179'),(227,'Cosmo','qJzHDpPLsO','cmorrow5w@columbia.edu','954-783-6305',70,'M','Ap #356-5854 Adipiscing Rd.',6655,'3578553648'),(228,'Ilario','6gnJqJAJ','istockney5x@youtu.be','494-797-9728',68,'M','Ap #478-4508 Aliquam Street',6655,'3546702958'),(229,'Mervin','b99g36NPfpTt','mhutchcraft5y@oakley.com','355-832-4171',29,'M','122-9424 Adipiscing. Street',6655,'4041599516'),(230,'Noell','1va4Lq4eweS','nschermick5z@dropbox.com','763-885-7689',65,'F','Ap #513-192 Risus Avenue',6655,'3571253376'),(231,'Addi','UFuq7mHQwCG','ayglesia60@bigcartel.com','902-760-2052',34,'F','5916 Quis, St.',6655,'3558908174'),(232,'Mireille','hbBqecIN3niY','mgoozee61@google.ca','208-444-7816',19,'F','9111 Maecenas Rd.',6655,'3543208104'),(233,'Jamal','Ib5dm8UUL','jbandey62@mapy.cz','480-649-5368',89,'M','362-3090 Accumsan St.',6655,'3588102111'),(234,'Anna-diana','ut1VmVK96Vm','asinfield63@ucsd.edu','995-727-5113',99,'F','P.O. Box 597, 3119 Tempor, Avenue',6655,'3551783385'),(236,'Ag','Ml5zPDrt3XJm','amulvin65@home.pl','455-741-5885',43,'F','P.O. Box 767, 7961 Eros Avenue',6655,'3587626866'),(237,'Trumann','IFRu432JaIs','tdewicke66@princeton.edu','873-637-3827',81,'M','Ap #103-6268 Elit Av.',6655,'3558512528'),(238,'Lorine','eAlyVUnX','lvreiberg67@zimbio.com','955-823-3617',94,'F','P.O. Box 543, 4079 Tincidunt Road',6655,'3547240608'),(239,'Garland','WChZrfN7','gweadick68@chicagotribune.com','964-156-2203',51,'F','Ap #136-3715 Arcu. Av.',6655,'6304943488'),(240,'Thalia','QUnnNWXrV','tbrandel69@geocities.jp','489-313-2162',60,'F','452-5067 Dui Rd.',6655,'5010129234'),(241,'Christopher','v0lD0fMrm','ckonertz6a@nytimes.com','839-579-2393',87,'M','5586 Sit Road',6655,'3551572634'),(242,'Helene','19gCsmqEuKK','helsbury6b@t-online.de','778-245-6462',20,'F','Ap #429-1341 Facilisis Street',6655,'3010292297'),(244,'Marlie','8ct3DQv4OCCj','mscotchmor6d@nbcnews.com','737-124-8888',83,'F','Ap #760-8727 Dui Road',6655,'6376816861'),(245,'Natalie','LVEZommi','nberling6e@dagondesign.com','971-964-8362',33,'F','136-5850 Ut Road',6655,'6759545248'),(246,'Petronia','pHonAhmeDAH','pzemler6f@reference.com','744-720-4818',78,'F','Ap #636-3664 At, Rd.',6655,'3551409105'),(248,'Livvie','GFcdYxGPS6x','lfomichyov6h@ft.com','343-101-1591',88,'F','497-8311 Sed Av.',6655,'4936771293'),(249,'Ruthann','tZPlMOMdg','rrennenbach6i@umich.edu','314-393-7634',99,'F','843-6045 Nec St.',6655,'5522591356'),(251,'Carlin','6AsRYOe99uJ','cwinterborne6k@ihg.com','343-811-5183',53,'M','P.O. Box 490, 4185 Risus. Rd.',6655,'2016197381'),(252,'Tracie','My6sEJfGV55','tsheehan6l@slate.com','585-320-5640',51,'M','1968 Eu Road',6655,'3530579541'),(253,'Cullan','GOGC2NGe','cmoxon6m@mediafire.com','458-311-2970',81,'M','6001 Nibh. Road',6655,'6763454107'),(254,'Percy','Rz6NV0Jln','phorrod6n@msn.com','313-998-6965',82,'M','3967 Iaculis Road',6655,'3562206576'),(255,'Findley','wV5kHMShsZm','fjeaneau6o@mozilla.com','501-796-8838',51,'M','Ap #661-745 Ut Rd.',6655,'6767888295'),(256,'Linoel','Nr06GUri','lbassett6p@paypal.com','901-488-2690',75,'M','3405 Sed St.',6655,'3742882189'),(257,'Teddie','3bwwMrAOLott','tshearwood6q@fc2.com','959-233-4656',30,'M','Ap #407-8609 Sodales Avenue',6655,'5641828136'),(258,'Emmanuel','xgHCBN1bDX','eshearsby6r@sphinn.com','871-155-0412',50,'M','767 Tincidunt Road',6655,'3549014959'),(261,'Arty','avqMVywqN0Q','ajewell6u@independent.co.uk','220-791-5455',65,'M','2115 Etiam Road',6655,'4905816400'),(262,'Madeline','HwIXf1dJY','mpatesel6v@google.de','895-196-0981',66,'F','Ap #137-5149 Eu, Road',6655,'4903690628'),(263,'Berta','kXuRKWBIAN','blippitt6w@sun.com','656-742-2750',71,'F','Ap #960-7129 Augue Street',6655,'5602240873'),(264,'Dionis','ValkEJoDoG','djell6x@plala.or.jp','865-194-5699',50,'F','925-5518 Luctus. Avenue',6655,'6759986503'),(266,'Gipsy','PLUIUaDbN','gbentick6z@auda.org.au','472-909-4637',65,'F','Ap #762-9522 Tortor, St.',6655,'5602233331'),(267,'Judith','T3A7sdhPlu','jklimowicz70@amazon.co.jp','817-926-3675',49,'F','Ap #588-7285 Mollis. St.',6655,'3538285924'),(268,'Stillmann','SKgVuYLR7C','sstainton71@posterous.com','446-238-6284',58,'M','466-4951 Tristique Rd.',6655,'5602258525'),(271,'Alec','uXWsoXic2WxU','adaventry74@1688.com','825-870-0601',82,'M','Ap #457-491 Duis Rd.',6655,'3589500974'),(273,'Gayler','ztDtyjA1u','gbischoff76@free.fr','642-549-1933',21,'M','Ap #606-2314 Ultrices Ave',6655,'5893004292'),(274,'See','pm3mihF2iU','sparbrook77@apple.com','542-915-8269',76,'M','221-1484 Quis, St.',6655,'6767448537'),(275,'Vannie','xaNtIPNA2hrp','vruddlesden78@booking.com','711-922-3570',73,'F','3587 Mauris Rd.',6655,'3570947514'),(277,'Culver','JM1TFKTsR','cportail7a@sfgate.com','537-562-8196',25,'M','Ap #467-3834 Maecenas Ave',6655,'3586040856'),(278,'Laverna','7NzgnBbR','lshoemark7b@wix.com','813-428-9584',95,'F','260-1307 Sed Av.',6655,'5602226142'),(279,'Salem','5ZQLV4g0','sreddy7c@fotki.com','593-736-8475',94,'M','2203 Fringilla Av.',6655,'3554992857'),(281,'Caresse','Sii6Kjbi4','chartford7e@webmd.com','761-769-5139',40,'F','870-5072 Sodales Rd.',6655,'4405816686'),(282,'Mitchell','zPWVNwPUNGyL','mcram7f@harvard.edu','708-253-6178',65,'M','7483 Volutpat St.',6655,'3555516944'),(283,'Tull','CfphBSkasZC','tballam7g@skyrock.com','318-362-8654',92,'M','P.O. Box 188, 5409 Lorem, Rd.',6655,'3586749306'),(284,'Wiatt','BtMaVAjV','wrosenboim7h@sciencedirect.com','781-194-8446',60,'M','8639 Eleifend. Road',6655,'3565851030'),(285,'Denyse','04DcEdFBi','dmoles7i@de.vu','422-601-9230',26,'F','P.O. Box 534, 7220 Dolor. Avenue',6655,'6762368296'),(287,'Andre','L8OPBFLLzok','aburnall7k@skype.com','559-130-6204',32,'M','P.O. Box 314, 3619 Velit Avenue',6655,'3742833819'),(288,'Loella','suqH1ElOCZ','lkeets7l@seattletimes.com','244-556-8368',98,'F','Ap #233-4709 Arcu. St.',6655,'6763281642'),(290,'Filippo','DuI1cDqkNyu','flaba7n@marketwatch.com','190-210-2162',56,'M','3529 Vestibulum Rd.',6655,'5610864566'),(291,'Loree','UBepp25hL','lsegrott7o@networksolutions.com','534-266-6253',32,'F','5653 Lorem. Rd.',6655,'5521133018'),(292,'Shari','G7vqE6dThjb','scrosseland7p@blogspot.com','626-881-8652',35,'F','Ap #659-2827 Tincidunt, Rd.',6655,'2017209111'),(293,'Hewe','3JZ6PCvh','hantoshin7q@phoca.cz','109-484-5679',92,'M','5818 Mauris, Avenue',6655,'5602251959'),(294,'Nessi','toik0hIOKgm','nhuerta7r@studiopress.com','693-829-3181',89,'F','577-1177 Risus. Av.',6655,'5048374584'),(295,'Hilario','TrSpgwKp','hpallaske7s@discovery.com','438-976-9282',64,'M','7970 Tincidunt Rd.',6655,'4903777576'),(296,'Harley','A3ta5OXO','hhanna7t@joomla.org','768-372-7743',86,'M','720-4798 Nascetur Road',6655,'5602238541'),(299,'Fabiano','G5wNm6LuB','fjeff7w@google.cn','392-904-8058',94,'M','P.O. Box 338, 5308 Purus, Rd.Ap #996-8099 Consequat St.',6655,'6392232067'),(301,'Charissa','LqW4u2jK2','cmayou7y@infoseek.co.jp','282-254-2482',56,'F','859-140 Nascetur Ave',6655,'3746225701'),(302,'Bertine','y3gQAR3jKM','bsilverson7z@admin.ch','802-272-2324',83,'F','262-6488 Adipiscing Av.',6655,'6767886319'),(303,'Jackie','VqQSvhhx','jbathurst80@usgs.gov','833-337-5095',32,'F','Ap #128-8871 Commodo St.',6655,'3566399930'),(304,'Janene','xKx4Zops67','jyankin81@ucla.edu','608-937-4154',66,'F','Ap #507-965 Adipiscing Avenue',6655,'3531913004'),(305,'Gigi','eCKArt6596AS','gmeddick82@wsj.com','247-716-5330',71,'F','P.O. Box 122, 7964 Semper St.',6655,'2018517201'),(306,'Erny','mryNvQiy','ebremen83@blogs.com','924-865-9957',58,'M','9879 Semper Road',6655,'6759210490'),(307,'Monika','QK5m94MfoiR','mretallack84@drupal.org','825-542-6608',66,'F','790-6323 Donec Av.',6655,'3541194196'),(308,'Arden','ka74h9Sd','amayman85@gravatar.com','341-507-4934',62,'F','P.O. Box 978, 9109 Ornare St.',6655,'5007669936'),(309,'Caleb','A2M0ZgXfkD6','cfooter86@utexas.edu','758-201-3440',49,'M','P.O. Box 445, 7458 Purus. Rd.',6655,'5602227827'),(311,'Nelie','JHKhpcWeLcw','nthurber88@tiny.cc','656-743-6980',91,'F','721-4431 Sit Av.',6655,'5602248682'),(312,'Osmund','T3xyOTCq','odelavaletteparisot89@netlog.com','493-993-6411',39,'M','657 At, Avenue',6655,'4320480157'),(313,'Wanidss','yU1pxIvDDFf','wfitzjohn8a@github.io','966-427-6400',39,'F','P.O. Box 477, 4787 Porttitor St.',6655,'3537397489'),(315,'Ozzy','mqgjeMPFhalE','okynastone8c@sina.com.cn','354-143-8589',24,'M','2624 Nec, St.',6655,'3542987942'),(316,'Arnoldo','hmsM4R4ogJ4o','awhitebrook8d@army.mil','156-560-4250',32,'M','1807 Odio. Av.',6655,'5610857157'),(317,'Maud','CmAgeHhSUAH','mmacneil8e@naver.com','782-949-4904',84,'F','P.O. Box 837, 3354 At St.',6655,'3563811578'),(319,'Prentice','oZJ8Vt26qOC','phassard8g@digg.com','462-571-2486',84,'M','1594 Consectetuer, St.',6655,'5007661820'),(321,'Glenine','bh6iPpFj','gmonte8i@cbsnews.com','340-922-4159',36,'F','550-8882 Tellus Ave',6655,'3578265098'),(322,'Ginger','plIv1J3R','gvanichev8j@gizmodo.com','865-352-9434',53,'M','P.O. Box 926, 1325 Dictum Street',6655,'5602233750'),(323,'Valentine','GZg2vsEcft50','vjedrzejczak8k@state.tx.us','786-240-8450',86,'M','5050 Eget Avenue',6655,'3548941946'),(324,'Pepe','OgeBgX7pZnXy','phatrey8l@trellian.com','573-827-1339',33,'M','P.O. Box 163, 5510 Aliquet, Rd.',6655,'3560063261'),(325,'Mollee','z7eT3qMuwS','mlounds8m@google.com','810-160-6755',42,'F','P.O. Box 140, 2609 Sagittis Street',6655,'3583572072'),(326,'Charmian','B9hxdEcuA6o','cdjakovic8n@hugedomains.com','398-685-0626',64,'F','Ap #356-5854 Adipiscing Rd.',6655,'3577463057'),(327,'Leonardo','1yxrhscrz0g','lkisbee8o@google.ca','735-722-3842',100,'M','Ap #478-4508 Aliquam Street',6655,'5326008807'),(328,'Alvinia','EpK10hdYV','aashwin8p@eventbrite.com','956-889-2560',29,'F','122-9424 Adipiscing. Street',6655,'5100143355'),(329,'Briney','FriQUNMgrq','bgrzeszczyk8q@soup.io','357-868-1380',47,'F','Ap #513-192 Risus Avenue',6655,'5100130125'),(330,'Vicky','ET1pSdOqB','vdekeep8r@gizmodo.com','476-513-8293',73,'F','5916 Quis, St.',6655,'3539899563'),(332,'Beau','O5RqOBKdDEIE','bgumey8t@loc.gov','185-292-5352',37,'M','362-3090 Accumsan St.',6655,'6304026413'),(333,'Gilbertine','TakKJoLL','glawlie8u@google.es','338-758-7064',63,'F','P.O. Box 597, 3119 Tempor, Avenue',6655,'3054171403'),(334,'Ruben','9bl3S4SDMPy','rporcas8v@toplist.cz','629-425-3297',20,'M','P.O. Box 309, 6046 Massa St.',6655,'5362437718'),(335,'Elbert','VpotRSks0qR','eyeude8w@flickr.com','603-992-2365',97,'M','P.O. Box 767, 7961 Eros Avenue',6655,'2015864396'),(336,'Fionnula','JLsGHkLkVKaR','fcutsforth8x@networksolutions.com','809-478-8429',28,'F','Ap #103-6268 Elit Av.',6655,'4508737760'),(337,'Kennan','MtFhFrPJalH3','kfargie8y@va.gov','469-146-0796',93,'M','P.O. Box 543, 4079 Tincidunt Road',6655,'2016020679'),(338,'Ilyssa','SuhdYDoVN8Qu','iscanderet8z@liveinternet.ru','617-596-6319',69,'F','Ap #136-3715 Arcu. Av.',6655,'3577170214'),(341,'Ray','TVQWUgDEMa','rmannock92@walmart.com','231-949-9724',90,'M','Ap #429-1341 Facilisis Street',6655,'3544013619'),(342,'Sam','ErZIvIe69265','smerida93@furl.net','996-618-5021',78,'M','P.O. Box 592, 9548 Nunc. Av.',6655,'5162765473'),(346,'Phyllys','eTsH5iyK','plynnett97@ucoz.ru','391-700-6190',87,'F','7617 Dictum Avenue',6655,'5255267193'),(348,'Dwayne','unFdKeu6xZ','dlaurenson99@sciencedaily.com','511-242-5961',52,'M','843-6045 Nec St.',6655,'3653671811'),(349,'Quint','4JEztlMn','qdibling9a@networkadvertising.org','828-219-8431',74,'M','8959 Est. St.',6655,'3557531961'),(350,'Nefen','AxgycAOiQ','nrickhuss9b@seattletimes.com','264-956-6302',22,'M','P.O. Box 490, 4185 Risus. Rd.',6655,'3746222665'),(351,'Merell','7mKBcsFIUgGm','moliveto9c@oracle.com','499-819-8943',42,'M','1968 Eu Road',6655,'5165845934'),(352,'Florence','0Cg6PTdM','fwraight9d@ftc.gov','710-382-8963',39,'F','6001 Nibh. Road',6655,'5602211312'),(354,'Diena','jn3ORg02SV','dbaribal9f@nydailynews.com','217-317-6035',87,'F','Ap #661-745 Ut Rd.',6655,'3544069280'),(355,'Konstanze','cpTIuaPmJk','ksickamore9g@craigslist.org','975-236-8528',30,'F','3405 Sed St.',6655,'4903337281'),(358,'Bambie','EyFKqlpN9goS','binkin9j@goodreads.com','323-268-6286',58,'F','Ap #629-6335 Magna. Av.',6655,'3550849052'),(360,'Flory','Y2718KgngXhY','fshay9l@bloomberg.com','289-955-3067',53,'F','2115 Etiam Road',6655,'5405072589'),(361,'Jourdan','4B1nYcggJ6sJ','jrenowden9m@cloudflare.com','488-348-8272',85,'F','Ap #137-5149 Eu, Road',6655,'3548292771'),(362,'Cody','cj5Pbi11Yg6t','ctissiman9n@hud.gov','100-124-7996',22,'F','Ap #960-7129 Augue Street',6655,'3581284886'),(363,'Jon','0vNLaQUMN','joverstreet9o@narod.ru','555-191-0661',37,'M','925-5518 Luctus. Avenue',6655,'5602241390'),(364,'Harlene','kpc6Dv6ff188','htubby9p@smugmug.com','179-999-4784',62,'F','172-9358 Non, Street',6655,'4219205538'),(365,'Carleen','NW7m68GQ8B','chumberstone9q@parallels.com','567-860-3729',73,'F','Ap #762-9522 Tortor, St.',6655,'3059975163'),(366,'Enrica','TUyi6Zp4ng','eboldero9r@ning.com','994-380-5789',32,'F','Ap #588-7285 Mollis. St.',6655,'6377677339'),(368,'Kimbell','RsztGQaVVG','krivallant9t@zimbio.com','872-382-9276',86,'M','P.O. Box 788, 2936 Magnis Street',6655,'4844253771'),(369,'Normy','44MO5W7s','nbofield9u@wp.com','554-361-2281',92,'M','3717 Dictum Ave',6655,'5437346018'),(370,'Chev','TRo2uwizJ','csantry9v@edublogs.org','103-657-9380',85,'M','Ap #457-491 Duis Rd.',6655,'3574390941'),(372,'Susanne','o6TnlZ9UwM','smeekin9x@sogou.com','188-109-8694',53,'F','Ap #606-2314 Ultrices Ave',6655,'2015813464'),(375,'Sig','b0E7iksT0j1','slimpertza0@mysql.com','240-829-9677',39,'M','9629 Luctus Street',6655,'3742836857'),(377,'Rhianna','gUpOcRfJsK','rrobathona2@prnewswire.com','881-510-9556',100,'F','260-1307 Sed Av.',6655,'3571447468'),(378,'Zsa zsa','c8SBfolfSZ','zakenheada3@newsvine.com','165-567-9489',19,'F','2203 Fringilla Av.',6655,'5610361567'),(379,'Theadora','NwQGT8HI','troseburgha4@typepad.com','132-729-6513',39,'F','P.O. Box 555, 6694 Amet Avenue',6655,'6771606865'),(384,'Cissiee','W2lYLFVBZ9l','cduvala9@berkeley.edu','224-874-5103',78,'F','P.O. Box 534, 7220 Dolor. Avenue',6655,'4398731604'),(385,'Arlan','8FOrDFIJXCSA','afowkesaa@cnn.com','275-852-3713',91,'M','Ap #393-2938 Enim. Rd.',6655,'5018348472'),(386,'Fonsie','w0AVCrG4XJx','fwillasab@newyorker.com','775-159-4992',28,'M','P.O. Box 314, 3619 Velit Avenue',6655,'4017959473'),(387,'Meaghan','YbJxLIyJ3Jg','mwardesworthac@irs.gov','666-500-0523',45,'F','Ap #233-4709 Arcu. St.',6655,'3573747060'),(388,'Charlotte','YNk1Qro4','crabidgead@dailymail.co.uk','331-927-7115',86,'F','470-2410 Nibh. Road',6655,'5048374167'),(389,'Brion','Bg7FosGDpJuo','bkinchleyae@elpais.com','255-196-1633',99,'M','3529 Vestibulum Rd.',6655,'3007455371'),(390,'Edouard','exUMM2zCNj','ewittmanaf@virginia.edu','212-113-2200',88,'M','5653 Lorem. Rd.',6655,'3582597684'),(391,'Alfons','WLkMDq8qhKn','aateggartag@google.com.hk','773-602-4402',55,'M','Ap #659-2827 Tincidunt, Rd.',6655,'3035845462'),(392,'Rees','AHI7zeLF','rlowreyah@yolasite.com','233-997-7149',83,'M','5818 Mauris, Avenue',6655,'6759729954'),(393,'Baxter','6iq2ZxKmde','bpiscopoai@ucsd.edu','732-598-9790',40,'M','577-1177 Risus. Av.',6655,'5100132752'),(394,'Jerome','Z1QxwOoaW','jnervalaj@google.com.hk','370-921-7846',95,'M','7970 Tincidunt Rd.',6655,'5249945717'),(395,'Bernette','mOFpFvXDW','bcamblingak@youtu.be','330-472-6207',67,'F','720-4798 Nascetur Road',6655,'3549408816'),(396,'Rockwell','fgxciYZw','rlarmoral@icio.us','929-179-0995',91,'M','808-9837 Molestie Road',6655,'3584132078'),(1501,'sonali_yahoo','password','sonali@yahoo.com','1221122112',19,'F','lol park nagar address nagar',0,'1588033285');
/*!40000 ALTER TABLE `useraccounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userqueries`
--

DROP TABLE IF EXISTS `userqueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userqueries` (
  `u_id` int(11) NOT NULL,
  `userQuery` varchar(150) NOT NULL,
  `queryReply` varchar(150) DEFAULT NULL,
  `q_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`q_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `userqueries_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `useraccounts` (`u_id`),
  CONSTRAINT `userqueries_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `useraccounts` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userqueries`
--

LOCK TABLES `userqueries` WRITE;
/*!40000 ALTER TABLE `userqueries` DISABLE KEYS */;
INSERT INTO `userqueries` VALUES (1,'Sample Query',NULL,1),(1,'This store is very good','We know ! Thanks',2),(2,'I cannot edit the quantity in my cart. Please solve.','Replacement order has been placed. Please check your e-mail for order details.',3),(5,'I ordered some books last week with OrderID 153213. Have not received it yet?',NULL,4),(6,'I received a book with some pages torned. Please replace it as soon as possible. Order ID 145328.',NULL,5),(7,'Order ID 147643, I would like to change the qty of the book to 4 which was 2 before. The order has not shipped yet and is COD.',NULL,6),(1501,'WHen will profile be set up?','Soon !',7);
/*!40000 ALTER TABLE `userqueries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `u_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  PRIMARY KEY (`u_id`,`b_id`),
  KEY `u_id` (`u_id`),
  KEY `b_id` (`b_id`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `useraccounts` (`u_id`),
  CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`b_id`) REFERENCES `books` (`b_id`),
  CONSTRAINT `wishlist_ibfk_3` FOREIGN KEY (`u_id`) REFERENCES `useraccounts` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wishlist_ibfk_4` FOREIGN KEY (`b_id`) REFERENCES `books` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (1,3),(1,4),(1,6),(1,10),(1,12),(1,14),(1,24),(2,2),(2,7),(2,8),(2,10),(5,6),(6,4),(7,9),(10,5),(12,9);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `written_by`
--

DROP TABLE IF EXISTS `written_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `written_by` (
  `b_id` int(11) NOT NULL,
  `auth_id` int(11) NOT NULL,
  PRIMARY KEY (`b_id`),
  KEY `auth_id` (`auth_id`),
  CONSTRAINT `written_by_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `books` (`b_id`),
  CONSTRAINT `written_by_ibfk_2` FOREIGN KEY (`auth_id`) REFERENCES `authors` (`auth_id`),
  CONSTRAINT `written_by_ibfk_3` FOREIGN KEY (`b_id`) REFERENCES `books` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `written_by_ibfk_4` FOREIGN KEY (`auth_id`) REFERENCES `authors` (`auth_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `written_by`
--

LOCK TABLES `written_by` WRITE;
/*!40000 ALTER TABLE `written_by` DISABLE KEYS */;
INSERT INTO `written_by` VALUES (26,1),(27,1),(29,1),(30,1),(51,1),(1,3),(7,3),(8,3),(14,3),(15,3),(17,3),(18,3),(34,3),(5,5),(11,6),(6,7),(9,7),(24,7),(12,8),(19,8),(2,10),(13,11),(16,11),(22,13),(20,14),(25,14),(4,17),(21,20),(23,20),(3,21),(37,34),(43,34),(40,35),(42,36),(36,37),(44,38),(45,38),(38,40),(10,41),(41,41),(35,42),(39,43);
/*!40000 ALTER TABLE `written_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dbms'
--
/*!50003 DROP PROCEDURE IF EXISTS `BonusIncrement` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`hardik`@`localhost` PROCEDURE `BonusIncrement`()
BEGIN
	update useraccounts set balance = balance*1.10;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllBooks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`hardik`@`localhost` PROCEDURE `getAllBooks`()
BEGIN
	select b_name from books;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllGenres` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`hardik`@`localhost` PROCEDURE `getAllGenres`()
BEGIN
	select genre from genre;
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

-- Dump completed on 2020-04-29 14:43:05
