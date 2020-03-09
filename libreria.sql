CREATE DATABASE  IF NOT EXISTS `libreria` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `libreria`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: libreria
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `idAutor` int(11) NOT NULL AUTO_INCREMENT,
  `nombreAutor` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidosAutor` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idAutor`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'J.R.R','Tolkien'),(2,'Arturo','Pérez Reverte'),(3,'Javier','Castillo'),(4,'Juan','Gomez-Jurado'),(5,'Elisabet','Benavent'),(6,'Eloy','Moreno'),(7,'Javier','Castillo');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contienen`
--

DROP TABLE IF EXISTS `contienen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contienen` (
  `idPedidoFK` int(11) DEFAULT NULL,
  `idLibroFK` int(11) DEFAULT NULL,
  KEY `idPedidoFK5_idx` (`idPedidoFK`),
  KEY `idLibroFK6_idx` (`idLibroFK`),
  CONSTRAINT `idLibroFK6` FOREIGN KEY (`idLibroFK`) REFERENCES `libros` (`idLibro`),
  CONSTRAINT `idPedidoFK5` FOREIGN KEY (`idPedidoFK`) REFERENCES `pedidos` (`idPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contienen`
--

LOCK TABLES `contienen` WRITE;
/*!40000 ALTER TABLE `contienen` DISABLE KEYS */;
/*!40000 ALTER TABLE `contienen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editoriales`
--

DROP TABLE IF EXISTS `editoriales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editoriales` (
  `idEditorial` int(11) NOT NULL AUTO_INCREMENT,
  `nombreEditorial` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idEditorial`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editoriales`
--

LOCK TABLES `editoriales` WRITE;
/*!40000 ALTER TABLE `editoriales` DISABLE KEYS */;
INSERT INTO `editoriales` VALUES (1,'MINOTAURO'),(2,'ALFAGUARA'),(3,'SUMA'),(4,'S.A. EDICIONES B'),(5,'SUMA'),(6,'S.A. EDICIONES B'),(7,'SUMA');
/*!40000 ALTER TABLE `editoriales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escriben`
--

DROP TABLE IF EXISTS `escriben`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `escriben` (
  `idAutorFK` int(11) DEFAULT NULL,
  `idLibroFK` int(11) DEFAULT NULL,
  KEY `idAutorFK1_idx` (`idAutorFK`),
  KEY `idLibroFK2_idx` (`idLibroFK`),
  CONSTRAINT `idAutorFK1` FOREIGN KEY (`idAutorFK`) REFERENCES `autores` (`idAutor`),
  CONSTRAINT `idLibroFK2` FOREIGN KEY (`idLibroFK`) REFERENCES `libros` (`idLibro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escriben`
--

LOCK TABLES `escriben` WRITE;
/*!40000 ALTER TABLE `escriben` DISABLE KEYS */;
INSERT INTO `escriben` VALUES (1,1);
/*!40000 ALTER TABLE `escriben` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `idLibro` int(11) NOT NULL AUTO_INCREMENT,
  `tituloLibro` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `precioLibro` decimal(10,2) DEFAULT NULL,
  `cantidadLibro` int(11) DEFAULT NULL,
  PRIMARY KEY (`idLibro`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'El señor de los anillos',60.00,5),(2,'El capitán Alatriste',25.00,3),(3,'La chica de nieve',18.00,5),(4,'Reina Roja',19.65,6),(5,'Un cuento perfecto',17.00,4),(6,'Tierra',18.90,3),(7,'Todo lo que sucedió con Miranda Huff',17.95,6);
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `idPedido` int(11) NOT NULL AUTO_INCREMENT,
  `fechaPedido` datetime DEFAULT NULL,
  `idUsuarioFK` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPedido`),
  KEY `idUsuarioFK7_idx` (`idUsuarioFK`),
  CONSTRAINT `idUsuarioFK7` FOREIGN KEY (`idUsuarioFK`) REFERENCES `usuarios` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'2020-03-05 11:25:22',2),(2,'2020-03-05 13:00:27',2),(3,'2020-03-05 13:00:58',2),(4,'2020-03-05 13:01:01',2),(5,'2020-03-05 13:01:06',2),(6,'2020-03-05 13:01:26',2),(7,'2020-03-05 13:02:09',2),(8,'2020-03-05 13:02:11',2),(9,'2020-03-05 13:02:13',2),(10,'2020-03-05 13:02:17',2),(11,'2020-03-05 13:12:19',2),(12,'2020-03-05 19:01:51',2),(13,'2020-03-05 19:03:31',2),(14,'2020-03-05 20:33:12',2);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pertenecen`
--

DROP TABLE IF EXISTS `pertenecen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pertenecen` (
  `idLibroFK` int(11) DEFAULT NULL,
  `idEditorialFK` int(11) DEFAULT NULL,
  KEY `idLibroFK3_idx` (`idLibroFK`),
  KEY `idEditorialFK4_idx` (`idEditorialFK`),
  CONSTRAINT `idEditorialFK4` FOREIGN KEY (`idEditorialFK`) REFERENCES `editoriales` (`idEditorial`),
  CONSTRAINT `idLibroFK3` FOREIGN KEY (`idLibroFK`) REFERENCES `libros` (`idLibro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pertenecen`
--

LOCK TABLES `pertenecen` WRITE;
/*!40000 ALTER TABLE `pertenecen` DISABLE KEYS */;
/*!40000 ALTER TABLE `pertenecen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `contraseniaUsuario` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `esAdminUsuario` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'admin','admin',1),(2,'usuario','usuario',0);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-09  9:16:53
