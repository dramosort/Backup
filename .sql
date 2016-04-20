-- MySQL dump 10.13  Distrib 5.5.27, for Win32 (x86)
--
-- Host: localhost    Database: acceso
-- ------------------------------------------------------
-- Server version	5.5.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `acceso`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `acceso` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `acceso`;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `Emp_Codigo` int(6) NOT NULL DEFAULT '0',
  `Emp_Nombre` varchar(50) NOT NULL DEFAULT '',
  `Emp_Direcc` varchar(100) NOT NULL DEFAULT '',
  `Emp_Ruc` varchar(20) NOT NULL DEFAULT '',
  `Emp_RepLegal` varchar(40) NOT NULL DEFAULT '',
  `Emp_RucLegal` varchar(20) NOT NULL DEFAULT '',
  `Emp_ContGral` varchar(40) NOT NULL DEFAULT '',
  `Emp_RucCont` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`Emp_Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'Truck Service','Ruta 7 - Km. 216 Dr. J. E. Estigarribia','','','','',''),(2,'Molinos \"El Granero\"','Ruta 7 - Km. 216 Dr. J. E. Estigarribia','','','','','');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_sucursales`
--

DROP TABLE IF EXISTS `ref_sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_sucursales` (
  `emp_codigo` int(6) NOT NULL,
  `cod_suc` int(3) NOT NULL,
  `suc_denom` varchar(100) DEFAULT NULL,
  `ciud_codigo` int(3) DEFAULT NULL,
  `Suc_Direcc` varchar(400) DEFAULT NULL,
  `Suc_Tel` varchar(160) DEFAULT NULL,
  `Suc_TelCel` varchar(160) DEFAULT NULL,
  `Suc_Email` varchar(200) DEFAULT NULL,
  `Suc_Http` varchar(200) DEFAULT NULL,
  `Suc_Responsable` varchar(200) DEFAULT NULL,
  `Suc_FeApert` date DEFAULT NULL,
  `Suc_Observ` blob,
  `suc_nroip` varchar(80) DEFAULT NULL,
  `suc_port` int(4) DEFAULT NULL,
  PRIMARY KEY (`emp_codigo`,`cod_suc`),
  KEY `FK_ref_sucursales` (`emp_codigo`),
  CONSTRAINT `FK_ref_sucursales` FOREIGN KEY (`emp_codigo`) REFERENCES `empresa` (`Emp_Codigo`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_sucursales`
--

LOCK TABLES `ref_sucursales` WRITE;
/*!40000 ALTER TABLE `ref_sucursales` DISABLE KEYS */;
INSERT INTO `ref_sucursales` VALUES (1,1,'Central',1,'Ruta Internacional 7 Km. XX - Dr. J. E. Estigarria','xx','xx','xx','xx','xx','0000-00-00','Ok.....','192.168.1.2',3306),(1,2,'Itaugua',1,'Ruta Internacional 7 Km. XX - Dr. J. E. Estigarria','xx','xx','xx','xx','xx','1990-01-01','Ok.....','192.168.2.10',3306),(2,1,'Central',1,'Ruta Internacional 7 Km. XX - Dr. J. E. Estigarria','xx','xx','xx','xx','xx','1990-01-01','Ok.....','192.168.1.103',3306),(2,2,'Itaugua',1,'Itagua','(021) 641 379','xx','xx','xx','xx','1990-01-01','Ok.....','190.52.163.161',3306),(2,3,'Abasto',1,'Mercado Central de Abasto','xx','xx','xx','xx','xx','0000-00-00','xx','190.104.157.101',3306),(2,4,'Fepasa pindo\'i',1,'Pindo\'i Campo 9','xx','xx','xx','xx','xx','0000-00-00','xx','192.168.1.190',3306),(2,5,'Ciudad del Este',1,'Ciudad del Este','xx','xx','xx','xx','xx','0000-00-00','xx','192.168.1.121',3306),(2,6,'Horqueta',1,'Horqueta - Concepción','x','x','x','x','x','0000-00-00','','190.52.163.76',3306),(2,7,'Rio Verde',1,'Santa Rosa del Aguaray','x','x','x','x','x','0000-00-00','','192.168.1.121',3306);
/*!40000 ALTER TABLE `ref_sucursales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'acceso'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-15 19:14:40
