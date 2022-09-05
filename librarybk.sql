-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `autors`
--

DROP TABLE IF EXISTS `autors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `anio_nacimiento` date DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `obra` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autors`
--

LOCK TABLES `autors` WRITE;
/*!40000 ALTER TABLE `autors` DISABLE KEYS */;
INSERT INTO `autors` VALUES (1,'Albert','Camus','1913-11-07','Filosofía',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(2,'Miguel','De Cervantes','1547-09-29','Novela,Poesía,Teatro',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(3,'Fiodor','Dostoievski','1821-11-11','Novela,Cuento',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(4,'Gabriel','García Márquez','1927-03-06','Novela,Cuento,Crónica,Reportaje',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(5,'Franz','Kafka','1883-07-03','Modernismo,Cuento,Pritcha,Novela',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(6,'Robert ','Musil','1880-11-06','Novela',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(7,'William','Shakespeare','1564-04-23','Tragedia,Comedia,Fantasía,Apácrifas',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(8,'José','Saramago','1922-11-16','Novela,Realismo mágico',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(9,'Juan ','Rulfo','1917-05-16','Novela',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(10,'Edgar Allan','Poe','1809-01-19','Horror,Detectivesco',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(11,'Herman','Melville','1819-08-01','Literatura de viajes',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(12,'Jean-Paul','Sartre','1905-06-21','Filosofía',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(13,'Thomas','Harris','1940-04-11','Suspenso',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(14,'Stephen','King','1940-09-21','Horror,Fantasia,Drama,Comedia negra',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10');
/*!40000 ALTER TABLE `autors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editorials`
--

DROP TABLE IF EXISTS `editorials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editorials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `libro` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editorials`
--

LOCK TABLES `editorials` WRITE;
/*!40000 ALTER TABLE `editorials` DISABLE KEYS */;
INSERT INTO `editorials` VALUES (1,'De Bolsillo',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(2,'Planeta de Libros',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(3,'Lectorum',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(4,'Lumen',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(5,'Urano',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(6,'Aguilar',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(7,'Alianza',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(8,'Acantilado',NULL,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(16,'Santil',NULL,'2022-09-04 20:32:55','2022-09-04 20:32:55');
/*!40000 ALTER TABLE `editorials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `ISBN` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `anio_publicacion` int DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `autor` int DEFAULT NULL,
  `editorial` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `autor_idx` (`autor`),
  KEY `editoriales_idx` (`editorial`),
  CONSTRAINT `editoriales` FOREIGN KEY (`editorial`) REFERENCES `editorials` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'Misery','AS1237HSUA','Horror,Suspenso',1987,22.4,14,1,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(2,'It','JHSUX883UYWQ231','Horror',1986,43.99,14,1,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(3,'Crimen y Castigo','YUUSX127349NSSA8381','Psicologica,Policial',1866,14.76,3,7,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(4,'Los hermanos Kamarazov','UABDIU892389ABSIDUB','Drama,Suspenso',1880,18.65,3,6,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(5,'Cien años de soledad','IASD17271UAISBD812391','Realismo mágico',1967,26,4,7,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(6,'La peste','POS87IBS273NIABDO12100','Novela Filosófica',1947,9,1,7,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(7,'La metamorfosis','IASU9210NUSA72ANOPP','Novela corta,Absurdismo',1915,12.75,5,5,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(8,'La máscara de la muerte roja','7889AAUQYEX8219BNBXB','Cuento,Horror,Ficción',1842,13.8,10,8,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(9,'El amor en tiempos de cólera','880012UYQMNNJSA712387','Novela,Realismo mágico',1985,16.5,4,7,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(10,'El ingenioso caballero Don Quijote de la Mancha','8A1NY182OOX2719ISYQM','Romance,Ficción',1605,47,2,4,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(11,'Hannibal','HHIOS82178BUASTYDQM2178','Horror',1999,27.15,13,2,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(12,'El silencio de los inocentes','IYUYE7812X27BAISDO','Horror',1988,21.45,13,1,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(13,'El gato negro','IISU81HBSI923ABXMM0','Horror',1843,8,10,3,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(14,'1984','23718BIUASBD736271IUABSD','Distopía',1949,15.1,6,8,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(15,'Romeo y Julieta','8HV62SBI68BQI261BAIS','Romance',1597,17.99,8,6,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(16,'Moby-Dick','KFUTV728916NGTIAS','Ficción',1851,16.25,11,2,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(17,'La náusea','OIB8267UTTWBC271','Novela Filosófica',1938,9.99,12,3,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(18,'El ser y la nada','MCBZBIA274IUABd1237B','Novela Filosófica',1943,13.86,12,6,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(19,'El hombre sin atributos','MSUI27619OOQYXX1273YAY27','Novela Filosófica',1930,20.75,7,3,'2022-01-30 10:10:10','2022-01-30 10:10:10'),(20,'Ensayo sobre la ceguera','OQNC19BA27UIQW21GGF','Ficción',1995,22.69,9,5,'2022-01-30 10:10:10','2022-01-30 10:10:10');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('20220903085002-create-libro.js'),('20220903085307-create-autor.js'),('20220903085406-create-editorial.js'),('20220903085441-create-cliente.js'),('20220903085516-create-inventario.js'),('20220903085554-create-detalle.js'),('20220903090823-create-factura.js'),('20220904003654-create-autor.js'),('20220904005457-create-autor.js'),('20220904005840-create-autor.js'),('20220904035533-create-autor.js'),('20220904040006-create-libro.js'),('20220904040050-create-editorial.js'),('20220904040244-create-editorial.js'),('20220904040251-create-libro.js'),('20220904040300-create-autor.js'),('20220904041107-create-editorial.js'),('20220904055103-create-editorial.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-05  4:58:23
