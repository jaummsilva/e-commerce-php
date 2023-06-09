-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: e_commerce
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `carrinho`
--
create database e_commerce;
use e_commerce;
DROP TABLE IF EXISTS `carrinho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrinho` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `produto_id` int NOT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `quantidade_produto` int NOT NULL,
  `data_criacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_alteracao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) NOT NULL DEFAULT 'ABERTO',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrinho`
--

LOCK TABLES `carrinho` WRITE;
/*!40000 ALTER TABLE `carrinho` DISABLE KEYS */;
INSERT INTO `carrinho` VALUES (2,5,3,3.50,2,'2023-03-31 10:54:15','2023-04-05 14:35:18','FINALIZADO'),(3,5,4,1.75,1,'2023-03-31 10:59:48','2023-03-31 10:59:48','FINALIZADO'),(6,5,1,8.99,5,'2023-04-03 11:18:31','2023-04-03 11:18:31','FINALIZADO'),(7,5,1,8.99,5,'2023-04-03 11:19:49','2023-04-03 11:19:49','FINALIZADO'),(8,5,1,8.99,5,'2023-04-03 15:54:54','2023-04-03 15:54:54','FINALIZADO'),(9,5,1,8.99,1,'2023-04-03 16:00:35','2023-04-03 16:00:35','FINALIZADO'),(11,9,1,8.99,3,'2023-04-04 09:08:35','2023-04-06 14:35:48','FINALIZADO'),(13,9,2,19.99,1,'2023-04-04 09:11:41','2023-04-10 16:07:05','FINALIZADO'),(15,9,1,8.99,3,'2023-04-04 09:28:15','2023-04-06 14:35:48','FINALIZADO'),(16,9,2,19.99,1,'2023-04-04 09:28:40','2023-04-10 16:07:05','FINALIZADO'),(17,9,1,8.99,2,'2023-04-04 13:32:55','2023-04-06 14:35:48','FINALIZADO'),(18,5,1,8.99,1,'2023-04-05 10:45:53','2023-04-05 10:45:53','FINALIZADO'),(19,5,1,8.99,1,'2023-04-05 14:31:35','2023-04-05 14:31:35','FINALIZADO'),(21,5,3,3.50,2,'2023-04-05 14:33:01','2023-04-05 14:35:18','FINALIZADO'),(23,5,2,19.00,2,'2023-04-05 16:03:08','2023-04-05 16:05:46','FINALIZADO'),(24,5,3,3.50,1,'2023-04-05 16:05:50','2023-04-05 16:05:50','FINALIZADO'),(25,5,2,19.99,1,'2023-04-06 10:14:27','2023-04-06 10:14:27','FINALIZADO'),(26,5,3,3.50,1,'2023-04-06 10:18:30','2023-04-06 10:18:30','FINALIZADO'),(27,9,1,8.99,2,'2023-04-06 13:20:59','2023-04-06 14:35:48','FINALIZADO'),(28,9,2,19.00,1,'2023-04-06 13:24:06','2023-04-10 16:07:05','FINALIZADO'),(30,9,1,8.99,2,'2023-04-06 13:24:19','2023-04-06 14:35:48','FINALIZADO'),(31,9,1,8.99,3,'2023-04-06 14:33:23','2023-04-06 14:35:48','FINALIZADO'),(32,9,2,19.00,1,'2023-04-06 14:33:29','2023-04-10 16:07:05','FINALIZADO'),(33,9,25,25.99,1,'2023-04-06 14:35:53','2023-04-06 14:35:53','FINALIZADO'),(34,9,2,19.00,1,'2023-04-10 13:16:22','2023-04-10 16:07:05','FINALIZADO'),(35,5,26,145.00,1,'2023-04-10 14:36:12','2023-04-10 14:36:12','FINALIZADO'),(37,9,2,19.00,1,'2023-04-10 16:06:10','2023-04-10 16:07:05','FINALIZADO'),(38,9,3,3.50,2,'2023-04-12 10:02:44','2023-04-12 10:45:49','FINALIZADO'),(39,9,1,8.99,1,'2023-04-12 10:05:14','2023-04-12 10:05:14','FINALIZADO'),(40,9,4,1.95,1,'2023-04-12 10:19:33','2023-04-12 10:19:33','FINALIZADO'),(41,9,3,3.50,2,'2023-04-12 10:19:35','2023-04-12 10:45:49','FINALIZADO'),(42,9,3,3.50,2,'2023-04-12 10:23:05','2023-04-12 10:45:49','FINALIZADO'),(43,9,3,3.50,2,'2023-04-12 10:32:31','2023-04-12 10:45:49','FINALIZADO'),(44,9,3,3.50,2,'2023-04-12 10:33:57','2023-04-12 10:45:49','FINALIZADO'),(45,9,1,8.99,1,'2023-04-12 10:33:59','2023-04-12 10:33:59','FINALIZADO'),(46,9,1,8.99,1,'2023-04-12 10:40:56','2023-04-12 10:40:56','FINALIZADO'),(47,9,3,3.50,2,'2023-04-12 10:40:59','2023-04-12 10:45:49','FINALIZADO'),(48,9,1,8.99,1,'2023-04-12 10:42:58','2023-04-12 10:42:58','FINALIZADO'),(49,9,3,3.50,2,'2023-04-12 10:44:25','2023-04-12 10:45:49','FINALIZADO'),(50,9,3,3.50,2,'2023-04-12 10:45:29','2023-04-12 10:45:49','FINALIZADO'),(51,9,4,1.95,1,'2023-04-12 10:45:53','2023-04-12 10:45:53','FINALIZADO'),(52,9,3,3.50,1,'2023-04-12 10:47:15','2023-04-12 10:47:15','FINALIZADO'),(53,9,4,1.95,2,'2023-04-12 10:57:02','2023-04-12 10:57:02','FINALIZADO'),(54,9,26,145.00,1,'2023-04-12 10:57:05','2023-04-12 10:57:05','FINALIZADO'),(55,9,3,3.50,1,'2023-04-12 11:06:01','2023-04-12 11:06:01','FINALIZADO'),(56,9,4,1.95,1,'2023-04-12 11:06:04','2023-04-12 11:06:04','FINALIZADO'),(57,5,4,1.95,1,'2023-04-12 14:53:01','2023-04-12 14:53:01','FINALIZADO'),(58,5,4,1.95,1,'2023-04-12 15:04:12','2023-04-12 15:04:12','FINALIZADO'),(59,5,4,1.95,1,'2023-04-12 15:04:47','2023-04-12 15:04:47','FINALIZADO'),(60,5,26,145.00,1,'2023-04-12 15:20:26','2023-04-12 15:20:26','FINALIZADO'),(61,9,1,8.99,1,'2023-04-13 09:07:25','2023-04-13 09:07:25','FINALIZADO'),(62,9,3,3.50,1,'2023-04-13 09:07:28','2023-04-13 09:07:28','FINALIZADO'),(63,9,4,1.95,1,'2023-04-13 09:07:31','2023-04-13 09:07:31','FINALIZADO'),(64,9,28,19.00,3,'2023-04-13 09:14:22','2023-04-13 10:41:54','FINALIZADO'),(65,9,3,3.50,1,'2023-04-13 10:44:11','2023-04-13 10:44:11','ABERTO'),(66,9,4,1.95,1,'2023-04-13 10:44:18','2023-04-13 10:44:18','ABERTO'),(67,9,8,8.50,1,'2023-04-14 09:08:13','2023-04-14 09:08:13','ABERTO'),(68,9,9,3.50,1,'2023-04-14 09:09:19','2023-04-14 09:09:19','FINALIZADO'),(69,9,15,17.50,5,'2023-04-14 13:11:35','2023-04-14 13:12:07','FINALIZADO'),(70,9,17,3.50,1,'2023-04-14 13:11:45','2023-04-14 13:11:45','FINALIZADO'),(71,9,16,8.99,2,'2023-04-14 13:11:51','2023-04-14 13:11:51','FINALIZADO'),(72,9,17,3.50,4,'2023-04-14 13:11:54','2023-04-14 13:11:54','FINALIZADO'),(73,9,15,17.50,5,'2023-04-14 13:12:00','2023-04-14 13:12:07','FINALIZADO'),(74,9,16,8.99,5,'2023-04-14 13:12:04','2023-04-14 13:12:04','FINALIZADO'),(75,25,25,8.50,3,'2023-04-17 11:18:56','2023-04-17 11:26:11','FINALIZADO'),(76,25,25,8.50,1,'2023-04-17 11:31:29','2023-04-17 11:31:29','FINALIZADO'),(78,62,40,19.50,2,'2023-04-18 10:52:03','2023-04-18 10:52:15','FINALIZADO'),(79,62,40,19.50,1,'2023-04-18 10:54:26','2023-04-18 10:54:26','FINALIZADO'),(80,62,41,8.00,1,'2023-04-18 10:54:29','2023-04-18 10:54:29','FINALIZADO'),(81,62,48,11.50,1,'2023-04-18 14:28:49','2023-04-18 14:28:49','FINALIZADO'),(82,62,48,11.50,3,'2023-04-18 14:38:40','2023-04-18 14:38:40','FINALIZADO'),(83,62,49,11.50,2,'2023-04-18 14:38:43','2023-04-18 14:38:43','FINALIZADO'),(84,66,40,19.50,1,'2023-04-18 14:43:35','2023-04-18 14:43:35','FINALIZADO'),(85,66,49,11.50,10,'2023-04-18 14:43:39','2023-04-18 14:43:39','FINALIZADO'),(86,62,48,11.50,1,'2023-04-18 14:56:50','2023-04-18 14:56:50','FINALIZADO');
/*!40000 ALTER TABLE `carrinho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorito`
--

DROP TABLE IF EXISTS `favorito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorito` (
  `id` int NOT NULL AUTO_INCREMENT,
  `produto_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorito`
--

LOCK TABLES `favorito` WRITE;
/*!40000 ALTER TABLE `favorito` DISABLE KEYS */;
INSERT INTO `favorito` VALUES (14,3,5),(20,1,5),(21,27,5),(22,2,5),(23,25,5),(24,2,9),(28,3,9),(29,4,9),(30,28,9),(31,7,9),(32,25,9),(33,25,25),(34,26,25),(35,27,25),(36,25,28),(37,26,28),(39,40,62);
/*!40000 ALTER TABLE `favorito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `secret_key` varchar(250) NOT NULL,
  `authorization` varchar(1000) CHARACTER SET utf8mb3 NOT NULL,
  `public_key` varchar(250) NOT NULL,
  `device_token` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  `slack_url` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (1,'e3b0e4b8-7670-47b6-8543-47f869ccc90e','Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3BsYXRhZm9ybWEuYXBpYnJhc2lsLmNvbS5ici9zb2NpYWwvZ29vZ2xlL2NhbGxiYWNrIiwiaWF0IjoxNjgxODM4Mzk5LCJleHAiOjE3MTMzNzQzOTksIm5iZiI6MTY4MTgzODM5OSwianRpIjoiYTlmZXFQTGFlUEo5Z1c5diIsInN1YiI6IjIyODAiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.WZLPszxI9FM75b_8Hhyd2g6vyqclBAUSp63GW5DCf98','Gratis-LJZyLJzCGpLzGlZx253Z','2f96a5ca-eb39-4853-a949-9de73b603617','https://cluster.apigratis.com/api/v1/whatsapp/sendText','https://hooks.slack.com/services/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');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itenspedido`
--

DROP TABLE IF EXISTS `itenspedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itenspedido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pedido_id` int NOT NULL,
  `produto_id` int NOT NULL,
  `data_criacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_alteracao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `quantidade_produto` int NOT NULL,
  `preco_total_produto` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itenspedido`
--

LOCK TABLES `itenspedido` WRITE;
/*!40000 ALTER TABLE `itenspedido` DISABLE KEYS */;
INSERT INTO `itenspedido` VALUES (1,1,40,'2023-04-18 10:52:21','2023-04-18 10:52:21',2,39.00),(2,2,40,'2023-04-18 10:54:31','2023-04-18 10:54:31',1,19.50),(3,2,41,'2023-04-18 10:54:32','2023-04-18 10:54:32',1,8.00),(4,3,48,'2023-04-18 14:28:51','2023-04-18 14:28:51',1,11.50),(5,4,48,'2023-04-18 14:38:46','2023-04-18 14:38:46',3,34.50),(6,4,49,'2023-04-18 14:38:46','2023-04-18 14:38:46',2,23.00),(7,5,40,'2023-04-18 14:43:42','2023-04-18 14:43:42',1,19.50),(8,5,49,'2023-04-18 14:43:42','2023-04-18 14:43:42',10,115.00),(9,6,48,'2023-04-18 14:57:46','2023-04-18 14:57:46',1,11.50);
/*!40000 ALTER TABLE `itenspedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `preco_total` decimal(10,2) DEFAULT NULL,
  `data_criacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_alteracao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `pedido_ibfk_1` (`usuario_id`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,62,39.00,'2023-04-18 10:52:21','2023-04-18 10:52:21'),(2,62,27.50,'2023-04-18 10:54:31','2023-04-18 10:54:31'),(3,62,11.50,'2023-04-18 14:28:51','2023-04-18 14:28:51'),(4,62,57.50,'2023-04-18 14:38:46','2023-04-18 14:38:46'),(5,66,134.50,'2023-04-18 14:43:42','2023-04-18 14:43:42'),(6,62,11.50,'2023-04-18 14:57:45','2023-04-18 14:57:45');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `preco` float NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `data_criacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_alteracao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `produto_img` varchar(250) NOT NULL,
  `produto_img_2` varchar(250) DEFAULT NULL,
  `produto_img_3` varchar(250) DEFAULT NULL,
  `produto_img_4` varchar(250) DEFAULT NULL,
  `produto_img_nome` varchar(250) NOT NULL,
  `produto_img_2_nome` varchar(250) DEFAULT NULL,
  `produto_img_3_nome` varchar(250) DEFAULT NULL,
  `produto_img_4_nome` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (40,'Arroz',19.5,'forget','2023-04-18 08:30:18','2023-04-18 08:30:18','/public/produtos/arroz.png',NULL,NULL,NULL,'arroz.png',NULL,NULL,NULL),(48,'Macarrao',11.5,'dsadasdas','2023-04-18 14:07:03','2023-04-18 14:07:03','/public/produtos/22539.png','/public/produtos/Macarrão.png','/public/produtos/macarrao.png',NULL,'22539.png','Macarrão.png','macarrao.png',NULL),(49,'Bolacha',11.5,'forget','2023-04-18 14:10:23','2023-04-18 14:10:23','/public/produtos/bolacha.png',NULL,NULL,NULL,'bolacha.png',NULL,NULL,NULL);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_recomendado`
--

DROP TABLE IF EXISTS `produto_recomendado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto_recomendado` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_imagem` varchar(250) NOT NULL,
  `arquivo` varchar(250) NOT NULL,
  `numero_sequencia` int NOT NULL,
  `data_criacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_alteracao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `produto_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_recomendado`
--

LOCK TABLES `produto_recomendado` WRITE;
/*!40000 ALTER TABLE `produto_recomendado` DISABLE KEYS */;
INSERT INTO `produto_recomendado` VALUES (23,'arroz.png','/public/img/arroz.png',3,'2023-04-18 11:43:47','2023-04-18 11:43:47',40),(24,'macarrao.png','/public/img/macarrao.png',2,'2023-04-18 14:07:16','2023-04-18 14:07:16',48),(25,'bolacha.png','/public/img/bolacha.png',1,'2023-04-18 14:10:43','2023-04-18 14:10:43',49);
/*!40000 ALTER TABLE `produto_recomendado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(140) NOT NULL,
  `senha` varchar(140) NOT NULL,
  `data_nascimento` date NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `data_criacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_alteracao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario_img` varchar(250) NOT NULL,
  `usuario_img_nome` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (62,'admin','admin@admin.com','d033e22ae348aeb5660fc2140aec35850c4da997','2023-04-01','11111111','2023-04-17 16:11:17','2023-04-17 16:11:17','/public/usuarios/arroz.png','arroz.png'),(65,'teste','teste@admin.com','6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2','2023-04-01','312321','2023-04-18 14:01:44','2023-04-18 14:01:44','/public/usuarios/bolacha.png','bolacha.png'),(66,'JOAO VITOR DA SILVA','jaumm.silva.04@gmail.com','6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2','2023-04-01','47984803109','2023-04-18 14:43:15','2023-04-18 14:43:15','/public/usuarios/download.jpg','download.jpg');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-18 15:02:06
