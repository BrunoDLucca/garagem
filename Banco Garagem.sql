CREATE DATABASE  IF NOT EXISTS `garagem` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `garagem`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: garagem
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
-- Table structure for table `automovel`
--

DROP TABLE IF EXISTS `automovel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `automovel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cor` varchar(50) NOT NULL,
  `ano_fabricacao` date NOT NULL,
  `ano_modelo` date NOT NULL,
  `chassi` varchar(50) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `km` varchar(15) NOT NULL,
  `valor` float NOT NULL,
  `modelo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `placa` (`placa`),
  KEY `modelo` (`modelo`),
  CONSTRAINT `automovel_ibfk_1` FOREIGN KEY (`modelo`) REFERENCES `modelo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automovel`
--

LOCK TABLES `automovel` WRITE;
/*!40000 ALTER TABLE `automovel` DISABLE KEYS */;
INSERT INTO `automovel` VALUES (2,'Azul','2010-08-20','2010-08-20','12345678','abc1234','80000',20000,2),(3,'Prata','2014-08-20','2014-08-20','13264587','cab2134','45000',33000,3),(4,'Vermelho','0020-01-01','2013-08-20','32145698','baa1345','45000',30000,4);
/*!40000 ALTER TABLE `automovel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `badeco`
--

DROP TABLE IF EXISTS `badeco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `badeco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `funcao` varchar(100) NOT NULL,
  `funcionario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `funcionario_2` (`funcionario`),
  KEY `funcionario` (`funcionario`),
  CONSTRAINT `badeco_ibfk_1` FOREIGN KEY (`funcionario`) REFERENCES `funcionario` (`id`),
  CONSTRAINT `badeco_ibfk_2` FOREIGN KEY (`funcionario`) REFERENCES `funcionario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badeco`
--

LOCK TABLES `badeco` WRITE;
/*!40000 ALTER TABLE `badeco` DISABLE KEYS */;
INSERT INTO `badeco` VALUES (3,'Faxineira',18);
/*!40000 ALTER TABLE `badeco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) NOT NULL,
  `pessoa` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pessoa` (`pessoa`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`pessoa`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (3,123,13),(4,125,14);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `salario` float NOT NULL,
  `pessoa` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pessoa` (`pessoa`),
  CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`pessoa`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (17,'joao','123',1500,10),(18,'maria','123',1200,11),(19,'bruno','123',3000,12);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerente`
--

DROP TABLE IF EXISTS `gerente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gerente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departamento` varchar(100) NOT NULL,
  `funcionario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `funcionario_2` (`funcionario`),
  UNIQUE KEY `funcionario_3` (`funcionario`),
  UNIQUE KEY `funcionario_4` (`funcionario`),
  KEY `funcionario` (`funcionario`),
  CONSTRAINT `gerente_ibfk_1` FOREIGN KEY (`funcionario`) REFERENCES `funcionario` (`id`),
  CONSTRAINT `gerente_ibfk_2` FOREIGN KEY (`funcionario`) REFERENCES `funcionario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerente`
--

LOCK TABLES `gerente` WRITE;
/*!40000 ALTER TABLE `gerente` DISABLE KEYS */;
INSERT INTO `gerente` VALUES (14,'Vendas',19);
/*!40000 ALTER TABLE `gerente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (2,'Chevrolet'),(3,'Ford'),(4,'Fiat');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo`
--

DROP TABLE IF EXISTS `modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `marca` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `marca` (`marca`),
  CONSTRAINT `modelo_ibfk_1` FOREIGN KEY (`marca`) REFERENCES `marca` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo`
--

LOCK TABLES `modelo` WRITE;
/*!40000 ALTER TABLE `modelo` DISABLE KEYS */;
INSERT INTO `modelo` VALUES (2,'Corsa','Wind',2),(3,'Fiesta','Ratch',3),(4,'Palio','Fire',4);
/*!40000 ALTER TABLE `modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(18) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `telefone` varchar(18) NOT NULL,
  `dt_nascimento` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (10,'João','123.456.789.00','Rua Aleatória','12345678','1989-12-20'),(11,'Maria','132.645.879.00','Rua Aleatória','32145698','1992-04-05'),(12,'Bruno','312.465.978.00','Rua Aleatória','32165464','1998-07-07'),(13,'Fabiana','123.465.798.00','Rua Randômica','12345687','1987-07-17'),(14,'Igor','132.456.987.00','Rua Aleatória','321654687','1998-08-20');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `automovel` int(11) NOT NULL,
  `valor_venda` float NOT NULL,
  `cliente` int(11) NOT NULL,
  `funcionario` int(11) NOT NULL,
  `dt_venda` date NOT NULL,
  `cod_venda` int(11) NOT NULL,
  `comissao_venda` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `automovel` (`automovel`),
  KEY `cliente` (`cliente`),
  KEY `funcionario` (`funcionario`),
  CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`automovel`) REFERENCES `automovel` (`id`),
  CONSTRAINT `venda_ibfk_2` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `venda_ibfk_3` FOREIGN KEY (`funcionario`) REFERENCES `funcionario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (10,2,25000,3,17,'2019-12-08',12,2500),(11,3,35000,4,19,'2019-12-09',13,3500),(12,4,30000,3,19,'2019-12-10',14,3000);
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-11  2:05:35
