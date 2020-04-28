-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: ecomm
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `isdeleted` int NOT NULL DEFAULT '0',
  `createat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'makeup',0,'2020-04-23 09:47:48','2020-04-23 09:47:48',NULL),(2,'skincare',0,'2020-04-23 09:47:48','2020-04-23 09:47:48',NULL),(3,'accessories',0,'2020-04-23 09:47:48','2020-04-23 09:47:48',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discounts` (
  `discount_id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  `start_date` datetime NOT NULL,
  `expired_date` datetime NOT NULL,
  `createat` datetime NOT NULL,
  `isdeleted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flashsaledetails`
--

DROP TABLE IF EXISTS `flashsaledetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flashsaledetails` (
  `flashsaledetails_id` int NOT NULL AUTO_INCREMENT,
  `discount_id` int NOT NULL,
  `productid` int NOT NULL,
  `discount_price` int NOT NULL,
  `isdeleted` int NOT NULL DEFAULT '0',
  `createat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`flashsaledetails_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flashsaledetails`
--

LOCK TABLES `flashsaledetails` WRITE;
/*!40000 ALTER TABLE `flashsaledetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `flashsaledetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `image` varchar(400) DEFAULT NULL,
  `stock` int NOT NULL,
  `categoryId` int NOT NULL,
  `price` int NOT NULL,
  `description` mediumtext NOT NULL,
  `isdeleted` int NOT NULL DEFAULT '0',
  `createat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `brand` varchar(45) NOT NULL,
  `purchased` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'hgfd1',NULL,4321,1,43211,'efds1',1,'2020-04-23 21:34:10','2020-04-23 21:34:10','gfd1',0),(2,'hgfa',NULL,33,1,40321,'rdsa',1,'2020-04-24 13:37:03','2020-04-24 13:37:03','fdsa',0),(3,'gfds',NULL,543,1,54321,'rew',1,'2020-04-24 13:38:50','2020-04-24 13:38:50','fds',0),(4,'Aloe Propolis Soothing Gel','/product/PROD1587714381280.webp',543,2,210000,'Hydrates and soothes. The Benton Aloe Propolis Soothing Gel is formulated with Aloe Vera extract and Propolis extract to hydrate and soothe the skin',0,'2020-04-24 13:38:52','2020-04-24 13:38:52','Benton',0),(5,'Snail Bee Gel','/product/PROD1587714086507.webp',33,2,160000,'The Benton Snail Bee High Content Essence is formulated with Snail secretion filtrate, sh-Oligopeptide-1, and bee venom that hydrates and smooths',0,'2020-04-24 14:41:26','2020-04-24 14:41:26','Benton',0),(6,'Aloe BHA Skin Toner','/product/PROD1587714233671.webp',44,2,159000,'Exfoliate, soothe, and replenish. Formulated with 0.5% Salicylic Acid and 80% aloe vera extract, the Benton Aloe BHA Skin Toner exfoliates dead skin',0,'2020-04-24 14:43:53','2020-04-24 14:43:53','Benton',0),(7,'Velvet Lip Tint Taupe','/product/PROD1587714726349.jpg',44,1,90000,'A sherbet-like texture that melts into lips and leaves a natural tinge with a matte finish., This soft and velvety tint imparts subtle yet rich color',0,'2020-04-24 14:52:06','2020-04-24 14:52:06','3CE',0),(8,'Drawing Eyebrow Brown','/product/PROD1587714922067.jpg',33,1,35000,'This is the perfect eyebrow pencil. The color (#2) is very natural looking and the formulation goes on smoothly. Lastly the slanted shape of the pencil makes for effortless application',0,'2020-04-24 14:55:22','2020-04-24 14:55:22','Etude House',0),(9,'Freeman Soothing Watermelon','/product/PROD1587714970040.jpg',44,2,100000,'This cooling gel mask is a must-have for sensitive skin. Juicy Watermelon extract delivers refreshing hydration for breakout-prone skin',0,'2020-04-24 14:56:10','2020-04-24 14:56:10','Freeman',0),(10,'110 S Tapered Blending Brush','/product/PROD1587715156691.jpg',44,3,120000,'Masami aims to provide the best, high quality tools from all around the world. Masami make up brushes consists of high quality natural hair that delivers perfection in make up result. ',0,'2020-04-24 14:59:16','2020-04-24 14:59:16','Masami Shouko',0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactiondetails`
--

DROP TABLE IF EXISTS `transactiondetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactiondetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transactionid` int NOT NULL,
  `productid` int NOT NULL,
  `qty` int NOT NULL,
  `isdeleted` int NOT NULL DEFAULT '0',
  `createat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactiondetails`
--

LOCK TABLES `transactiondetails` WRITE;
/*!40000 ALTER TABLE `transactiondetails` DISABLE KEYS */;
INSERT INTO `transactiondetails` VALUES (1,1,6,3,1,'2020-04-25 13:21:07','2020-04-25 13:21:07'),(2,1,7,6,1,'2020-04-25 14:34:07','2020-04-25 14:34:07'),(3,1,4,1,1,'2020-04-25 14:37:58','2020-04-25 14:37:58'),(4,1,8,1,1,'2020-04-25 15:27:50','2020-04-25 15:27:50'),(5,1,5,2,0,'2020-04-25 20:24:27','2020-04-25 20:24:27'),(6,1,7,1,1,'2020-04-25 20:26:38','2020-04-25 20:26:38'),(7,1,6,3,1,'2020-04-25 20:26:47','2020-04-25 20:26:47'),(8,1,7,4,1,'2020-04-25 20:47:44','2020-04-25 20:47:44'),(9,1,4,4,0,'2020-04-25 20:59:14','2020-04-25 20:59:14'),(10,2,6,1,0,'2020-04-26 00:18:56','2020-04-26 00:18:56'),(11,3,6,2,0,'2020-04-26 16:42:15','2020-04-26 16:42:15'),(12,3,10,1,0,'2020-04-27 08:37:08','2020-04-27 08:37:08');
/*!40000 ALTER TABLE `transactiondetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `method` varchar(25) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `isdeleted` int NOT NULL DEFAULT '0',
  `createat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,3,'credit card','onprocess',0,'2020-04-25 13:21:07','2020-04-25 13:21:07'),(2,3,'credit card','onpaymentverification',0,'2020-04-26 00:18:56','2020-04-26 00:18:56'),(3,3,'credit card','oncart',0,'2020-04-26 16:42:15','2020-04-26 16:42:15');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` int NOT NULL DEFAULT '1',
  `isdeleted` int NOT NULL DEFAULT '0',
  `isverified` int NOT NULL DEFAULT '0',
  `createat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastlogin` datetime NOT NULL,
  `isfacebook` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'haha','haura.zahro@gmail.com','c13c8198c813791e178997ddf9a68aafa4f26712ad543bdae902748da69d6431',1,0,0,'2020-04-16 11:49:14','2020-04-16 11:49:14','2020-04-16 11:49:15',0),(2,'udin','haura.zahro@gmail.com','64c8baacf33556146ee3aadfdbd053318339029a1eb529c7daf9245fd302c959',1,0,1,'2020-04-19 20:45:59','2020-04-19 20:45:59','2020-04-19 20:46:00',0),(3,'haura','haura.zahro@gmail.com','64c8baacf33556146ee3aadfdbd053318339029a1eb529c7daf9245fd302c959',1,0,0,'2020-04-23 00:12:21','2020-04-23 00:12:21','2020-04-23 00:12:21',0),(4,'admin','haura.zahro@gmail.com','4fe253177747405fcb98c2e8b3f5dd7757d839037862f6f1ae7d4b3e79ee361a',0,0,1,'2020-04-23 00:13:06','2020-04-23 00:13:06','2020-04-23 00:13:06',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-28 11:08:17
