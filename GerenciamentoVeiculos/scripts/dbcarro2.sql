-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: dbcarro2
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
-- Table structure for table `carro`
--

DROP TABLE IF EXISTS `carro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carro` (
  `placa` varchar(10) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `modelo` varchar(30) NOT NULL,
  `ano` varchar(30) NOT NULL,
  `fk_cpf` varchar(20) NOT NULL,
  PRIMARY KEY (`placa`),
  KEY `fk_cpf` (`fk_cpf`),
  CONSTRAINT `carro_ibfk_1` FOREIGN KEY (`fk_cpf`) REFERENCES `pessoa` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carro`
--

LOCK TABLES `carro` WRITE;
/*!40000 ALTER TABLE `carro` DISABLE KEYS */;
INSERT INTO `carro` VALUES ('aaa123','renout','clio','2020','111'),('abc123','volks','fusca','1970','333'),('abc321','volks','gol','1980','333'),('bca132','volks','voyage','2010','333'),('gab123','Ferrari','Ferrari01','2020','101'),('kfg123','ford','ka','2009','666'),('kgb999','volks','fusca','1980','777'),('kim5678','Renout','Logan','2010','888'),('mnb987','volks','gol','1999','555'),('ooo123','chelry','qq','2020','111'),('oxe123','fiat','palio','2008','444'),('oxe777','chevrolet','celta','2007','321'),('ppp123','chevrolet','celta','2015','111');
/*!40000 ALTER TABLE `carro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordem`
--

DROP TABLE IF EXISTS `ordem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordem` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `peca` varchar(30) NOT NULL,
  `servico` varchar(100) NOT NULL,
  `tecnico` varchar(30) NOT NULL,
  `fk_placa` varchar(10) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_placa` (`fk_placa`),
  CONSTRAINT `ordem_ibfk_1` FOREIGN KEY (`fk_placa`) REFERENCES `carro` (`placa`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordem`
--

LOCK TABLES `ordem` WRITE;
/*!40000 ALTER TABLE `ordem` DISABLE KEYS */;
INSERT INTO `ordem` VALUES (1,'sonda lambda','lavagem geral','pedro miquiles','ppp123'),(2,'sonda termica','troca das pastilhas','josé henrique','ooo123'),(3,'sonda Lambda','Troca da sonda lambda','Cleiton aguiar','gab123'),(4,'Sonda lambda','Troca de sonda lambda','godofredo gomes','kim5678'),(5,'Embreagem','troca de embreagem ','Paulo Darlan','kfg123'),(6,'motor','troca do motor','Roberto lima','kgb999'),(7,'pastilhas de freio','manutenção no sistema de frenagem','Paulo Darlan','mnb987'),(8,'acelerador','manutenção do sistema de acelerar kk','Roberto lima','oxe123'),(9,'retrovisor','manutenção no retrovisor esquerdo','Paulo Darlan','oxe777');
/*!40000 ALTER TABLE `ordem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `cpf` varchar(20) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `senha` varchar(30) NOT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES ('0101','cleiton','@gmail.com','123'),('101','gabriel','gabriel@gmail.com','123'),('111','pedro','pedro@','123'),('321','cleiton aguiar','cleitonaguiar@gmail.com','123'),('333','darlan','@gmail.com','333'),('444','cleiton','aguiar@aguiar','123'),('555','olivia','olivia@olivia','123'),('666','vania','vania@vania','123'),('777','edson','edson@edson','123'),('888','amanda','amanda@hotmail.com','123'),('999','amanda','amanda@','1234');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-22 14:01:31
