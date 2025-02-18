/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: acentral
-- ------------------------------------------------------
-- Server version	10.11.8-MariaDB-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cajas`
--

DROP TABLE IF EXISTS `cajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cajas` (
  `idcajas` int(11) NOT NULL AUTO_INCREMENT,
  `idseccion` int(11) NOT NULL,
  `idserie` int(11) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `cajanum` varchar(20) NOT NULL,
  `anio` char(4) NOT NULL,
  `numDocumentos` int(11) DEFAULT 0,
  `ml` double DEFAULT 0,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `frecCreate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idcajas`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cajas`
--

LOCK TABLES `cajas` WRITE;
/*!40000 ALTER TABLE `cajas` DISABLE KEYS */;
INSERT INTO `cajas` (`idcajas`, `idseccion`, `idserie`, `tipo`, `cajanum`, `anio`, `numDocumentos`, `ml`, `estado`, `frecCreate`) VALUES (1,35,209,'Legajo','1','2013',72,22.1,0,'2024-10-22 16:04:34'),
(2,35,209,'Legajo','2','2013',41,13.8,0,'2024-10-22 16:04:34'),
(3,35,209,'Legajo','1','2014',48,20.3,0,'2024-10-22 16:04:34'),
(4,35,209,'Legajo','2','2014',59,9.59,0,'2024-10-30 09:02:42'),
(5,35,209,'Legajo','3','2014',66,10.39,0,'2024-10-30 09:04:01'),
(6,35,209,'Legajo','1','2015',34,7.79,0,'2024-11-04 09:45:28'),
(7,35,209,'Legajo','2','2015',8,11.39,0,'2024-11-04 09:46:38'),
(8,35,209,'Legajo','3','2015',42,14.3,0,'2024-11-04 14:53:21'),
(9,35,209,'Legajo','1','2016',33,9.8,0,'2024-11-06 10:54:05'),
(10,35,209,'Legajo','2','2016',24,27.5,0,'2024-11-06 14:39:54'),
(11,35,209,'Legajo','3','2016',29,10.9,0,'2024-11-06 15:14:59'),
(12,35,209,'Legajo','4','2016',3,13.5,0,'2024-11-08 09:15:11'),
(13,35,210,'Legajo','1','2012',0,0,1,'2024-11-08 10:19:43'),
(14,35,210,'Legajo','2','2012',0,0,1,'2024-11-15 14:54:24');
/*!40000 ALTER TABLE `cajas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caracFisicas`
--

DROP TABLE IF EXISTS `caracFisicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caracFisicas` (
  `idcaracteristicas` int(11) NOT NULL,
  `caracteristicas` varchar(100) NOT NULL,
  PRIMARY KEY (`idcaracteristicas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caracFisicas`
--

LOCK TABLES `caracFisicas` WRITE;
/*!40000 ALTER TABLE `caracFisicas` DISABLE KEYS */;
INSERT INTO `caracFisicas` (`idcaracteristicas`, `caracteristicas`) VALUES (1,'Soporte: Papel (X) Medio Electronico ( )  Otros ( )'),
(2,'Soporte: Papel ( ) Medio Electronico (X)  Otros ( )'),
(3,'Soporte: Papel (X) Medio Electronico (X)  Otros ( )'),
(4,'Soporte: Papel ( ) Medio Electronico ( )  Otros (X)'),
(5,'Soporte: Papel (X) Medio Electronico ( )  Otros (X)'),
(6,'Soporte: Papel ( ) Medio Electronico (X)  Otros (X)'),
(7,'Soporte: Papel (X) Medio Electronico (X)  Otros (X)');
/*!40000 ALTER TABLE `caracFisicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entidad`
--

DROP TABLE IF EXISTS `entidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entidad` (
  `identidad` int(11) NOT NULL AUTO_INCREMENT,
  `entidad` varchar(100) NOT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`identidad`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entidad`
--

LOCK TABLES `entidad` WRITE;
/*!40000 ALTER TABLE `entidad` DISABLE KEYS */;
INSERT INTO `entidad` (`identidad`, `entidad`, `sigla`) VALUES (1,'Universidad Nacional de Juliaca','UNAJ');
/*!40000 ALTER TABLE `entidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frecuenciaServicio`
--

DROP TABLE IF EXISTS `frecuenciaServicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frecuenciaServicio` (
  `idfrecuencia` int(11) NOT NULL,
  `frecuencia` varchar(150) NOT NULL,
  PRIMARY KEY (`idfrecuencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frecuenciaServicio`
--

LOCK TABLES `frecuenciaServicio` WRITE;
/*!40000 ALTER TABLE `frecuenciaServicio` DISABLE KEYS */;
INSERT INTO `frecuenciaServicio` (`idfrecuencia`, `frecuencia`) VALUES (1,'Alta ( X )  Media ( )  Baja ( )   Nula ( )'),
(2,'Alta (  )   Media ( X )  Baja ( )   Nula ( )'),
(3,'Alta (  )  Media ( )  Baja ( X )   Nula ( )'),
(4,'Alta (  )  Media ( )  Baja ( )   Nula ( X )');
/*!40000 ALTER TABLE `frecuenciaServicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventarioxarchivador`
--

DROP TABLE IF EXISTS `inventarioxarchivador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventarioxarchivador` (
  `idinventario` int(11) NOT NULL AUTO_INCREMENT,
  `iddetalleproy` int(11) NOT NULL,
  `tipoUnidadArchiv` varchar(120) NOT NULL,
  `numUnidadArchi` int(11) NOT NULL DEFAULT 0,
  `descrip` varchar(255) NOT NULL,
  `del` int(11) NOT NULL,
  `al` int(11) NOT NULL,
  `fecInicial` datetime DEFAULT NULL,
  `fecFinal` datetime DEFAULT NULL,
  `numfolios` int(11) NOT NULL DEFAULT 0,
  `faltantes` varchar(120) NOT NULL,
  `prestamos` varchar(120) NOT NULL,
  `foliosfaltantes` varchar(120) NOT NULL,
  `tipo` varchar(120) NOT NULL,
  `fecCreate` datetime DEFAULT NULL,
  `idpersonal` int(11) NOT NULL,
  PRIMARY KEY (`idinventario`),
  KEY `fk_inventarioxarchivador_detaproy_idx` (`iddetalleproy`),
  KEY `fk_inventarioxarchivador_personal_idx` (`idpersonal`),
  CONSTRAINT `fk_inventarioxarchivador_detaproy` FOREIGN KEY (`iddetalleproy`) REFERENCES `proyecto_detalle` (`iddetalleproy`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_inventarioxarchivador_personal` FOREIGN KEY (`idpersonal`) REFERENCES `personal` (`idpersonal`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventarioxarchivador`
--

LOCK TABLES `inventarioxarchivador` WRITE;
/*!40000 ALTER TABLE `inventarioxarchivador` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventarioxarchivador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `idlogin` int(11) NOT NULL AUTO_INCREMENT,
  `idpersonal` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `passwd` varchar(255) NOT NULL,
  `nivusu` tinyint(2) NOT NULL DEFAULT 2,
  `estado` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`idlogin`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `fk_login_personal_idx` (`idpersonal`),
  CONSTRAINT `fk_login_personal` FOREIGN KEY (`idpersonal`) REFERENCES `personal` (`idpersonal`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`idlogin`, `idpersonal`, `username`, `passwd`, `nivusu`, `estado`) VALUES (1,1,'sysadmin','admin1',1,1),
(2,2,'luis','2024',2,1),
(6,1,'edgar','edgar',2,1),
(7,5,'tenorio','tenorio',2,1);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenCompra`
--

DROP TABLE IF EXISTS `ordenCompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenCompra` (
  `idordencompra` int(11) NOT NULL AUTO_INCREMENT,
  `idproyecto` int(11) NOT NULL,
  `numOrdenCompra` int(11) NOT NULL,
  `fecEmision` date DEFAULT NULL,
  `nombreProveedor` varchar(255) NOT NULL,
  `ruc` char(11) DEFAULT NULL,
  `descripcion` varchar(255) NOT NULL,
  `totalfolios` int(11) NOT NULL,
  `metroslineales` double DEFAULT 0,
  `fecCreate` datetime DEFAULT NULL,
  `idpersonal` int(11) NOT NULL,
  `obs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idordencompra`),
  KEY `fk_ordenCompra_detaproy_idx` (`idproyecto`),
  KEY `fk_ordenCompra_personal_idx` (`idpersonal`),
  CONSTRAINT `fk_ordenCompra_detaproy` FOREIGN KEY (`idproyecto`) REFERENCES `proyecto` (`idproyecto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ordenCompra_personal` FOREIGN KEY (`idpersonal`) REFERENCES `personal` (`idpersonal`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenCompra`
--

LOCK TABLES `ordenCompra` WRITE;
/*!40000 ALTER TABLE `ordenCompra` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordenCompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenServicio`
--

DROP TABLE IF EXISTS `ordenServicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenServicio` (
  `idordenservicio` int(11) NOT NULL AUTO_INCREMENT,
  `idproyecto` int(11) NOT NULL,
  `numOrdenServicio` int(11) NOT NULL,
  `fecEmision` date DEFAULT NULL,
  `nombreProveedor` varchar(120) NOT NULL,
  `ruc` char(11) DEFAULT NULL,
  `descripcion` varchar(255) NOT NULL,
  `totalfolios` int(11) NOT NULL,
  `metroslineales` double NOT NULL,
  `fecCreate` datetime DEFAULT NULL,
  `idpersonal` int(11) NOT NULL,
  `obs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idordenservicio`),
  KEY `fk_ordenServicio_detalproy_idx` (`idproyecto`),
  KEY `fk_ordenServicio_personal_idx` (`idpersonal`),
  CONSTRAINT `fk_ordenServicio_detalproy` FOREIGN KEY (`idproyecto`) REFERENCES `proyecto` (`idproyecto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ordenServicio_personal` FOREIGN KEY (`idpersonal`) REFERENCES `personal` (`idpersonal`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenServicio`
--

LOCK TABLES `ordenServicio` WRITE;
/*!40000 ALTER TABLE `ordenServicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordenServicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal` (
  `idpersonal` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(80) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `fecCreate` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`idpersonal`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` (`idpersonal`, `nombre`, `apellidos`, `sexo`, `telefono`, `email`, `foto`, `fecCreate`) VALUES (1,'Edgar','Apaza Choque','Masculino','9','edgarapazac@gmail.com','public/img/avatar.png','2024-03-01 00:00:00'),
(2,'Jorge Luis','Ccoa Condori','Masculino','900934836','liamsiete14@gmail.com','public/img/avatar.png','2024-06-11 10:18:32'),
(5,'Martha','Tenorio Castro','Femenino','9','tenorio@gmail.com','public/img/avatat.png','2024-11-06 00:00:00');
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyecto` (
  `idproyecto` int(11) NOT NULL AUTO_INCREMENT,
  `idseccion` int(11) NOT NULL,
  `seccion` varchar(120) NOT NULL,
  `idserie` int(11) NOT NULL,
  `serie` varchar(45) NOT NULL,
  `metroslineales` double DEFAULT 0,
  `totalunidades` double DEFAULT 0,
  `fecCreate` datetime DEFAULT current_timestamp(),
  `fecCierre` datetime DEFAULT NULL,
  `estado` tinyint(1) DEFAULT 0,
  `obs` varchar(255) DEFAULT NULL,
  `idpersonal` int(11) NOT NULL,
  PRIMARY KEY (`idproyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` (`idproyecto`, `idseccion`, `seccion`, `idserie`, `serie`, `metroslineales`, `totalunidades`, `fecCreate`, `fecCierre`, `estado`, `obs`, `idpersonal`) VALUES (1,35,'Secretaria General',209,'Resoluciones de Consejo de Comisión',171.36,459,'2024-06-06 10:43:59','2024-06-06 10:43:59',1,'',1),
(2,27,'Abastecimientos',159,'Ordenes de compra',0,0,'2024-06-06 10:57:19','2024-06-06 10:57:19',1,'',1),
(6,35,'Secretaria General',210,'Resoluciones presidenciales',0,0,'2024-11-08 00:00:00','2024-11-08 00:00:00',1,'',1);
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto_detalle`
--

DROP TABLE IF EXISTS `proyecto_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyecto_detalle` (
  `iddetalleproy` int(11) NOT NULL AUTO_INCREMENT,
  `idproyecto` int(11) NOT NULL,
  `idserie` int(11) NOT NULL,
  `serie` varchar(120) NOT NULL,
  `metroslineales` double DEFAULT 0,
  `totalunidades` double DEFAULT 0,
  `tipoarchivo` varchar(120) NOT NULL,
  `fecCreate` datetime DEFAULT NULL,
  `idpersonal` int(11) NOT NULL,
  PRIMARY KEY (`iddetalleproy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto_detalle`
--

LOCK TABLES `proyecto_detalle` WRITE;
/*!40000 ALTER TABLE `proyecto_detalle` DISABLE KEYS */;
INSERT INTO `proyecto_detalle` (`iddetalleproy`, `idproyecto`, `idserie`, `serie`, `metroslineales`, `totalunidades`, `tipoarchivo`, `fecCreate`, `idpersonal`) VALUES (1,1,1,'',0,0,'','2024-06-11 09:09:22',1);
/*!40000 ALTER TABLE `proyecto_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro`
--

DROP TABLE IF EXISTS `registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro` (
  `idregistro` int(11) NOT NULL AUTO_INCREMENT,
  `idproyecto` int(11) NOT NULL,
  `uniarchiva` varchar(100) NOT NULL,
  `numArchivador` int(11) NOT NULL,
  `fecInicial` date DEFAULT NULL,
  `fecFinal` date DEFAULT NULL,
  `anio` char(8) DEFAULT NULL,
  `del` int(11) NOT NULL,
  `al` int(11) NOT NULL,
  `totalfolios` int(11) DEFAULT 0,
  `metlineales` double DEFAULT 0,
  `obs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idregistro`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro`
--

LOCK TABLES `registro` WRITE;
/*!40000 ALTER TABLE `registro` DISABLE KEYS */;
INSERT INTO `registro` (`idregistro`, `idproyecto`, `uniarchiva`, `numArchivador`, `fecInicial`, `fecFinal`, `anio`, `del`, `al`, `totalfolios`, `metlineales`, `obs`) VALUES (1,3,'Archivador de palanca',1,'2018-01-03','2018-01-30','2018',1,30,534,6,''),
(2,3,'Archivador de palanca',2,'2018-01-03','2018-02-13','2018',31,65,506,6,'folio 535 al 1040'),
(3,3,'Archivador de palanca',4,'2018-02-20','2018-02-28','2018',91,110,477,5,'folio 1567 al 2043'),
(4,3,'Archivador de palanca',5,'2018-02-28','2018-02-28','2018',111,135,536,5,'folio 2044 al 2579'),
(5,3,'Archivador de palanca',6,'2018-02-28','2018-03-08','2018',135,165,537,5,'folio 2580 al 3116'),
(6,3,'Archivador de palanca',7,'2018-03-08','2018-03-08','2018',166,176,459,5,'folio 3117 al 3575'),
(7,3,'Archivador de palanca',8,'2018-03-08','2018-03-16','2018',177,200,388,4,'folio 3576 al 3963'),
(8,3,'Archivador de palanca',9,'2018-03-16','2018-03-20','2018',201,225,520,5,'folio 3964 al 4483'),
(9,3,'Archivador de palanca',10,'2018-03-20','2018-04-10','2018',226,270,577,5,'folio 4484 al 5060'),
(10,3,'Archivador de palanca',11,'2018-04-10','2018-04-11','2018',271,295,528,6,'folio 5061 al 5588'),
(11,3,'Archivador de palanca',12,'2018-04-11','2018-04-19','2018',296,333,497,5,'folio 5589 al 6085'),
(12,3,'Archivador de palanca',13,'2018-04-19','2018-04-25','2018',334,346,562,6,'folio 6086 al 6647'),
(13,3,'Archivador de palanca',14,'2018-05-02','2018-05-14','2018',347,380,479,4,'folio 6648 al 7126'),
(14,3,'Archivador de palanca',15,'2018-05-14','2018-05-14','2018',380,403,512,5,'folio 7127 al 7638'),
(15,3,'Archivador de palanca',16,'2018-05-14','2018-05-18','2018',403,436,564,6,'folio 7639 al 8202'),
(16,3,'Archivador de palanca',17,'2018-05-23','2018-05-31','2018',437,467,492,5,'folio 8203 al 8695'),
(17,3,'Archivador de palanca',18,'2018-05-31','2018-05-31','2018',468,490,464,5,'folio 8696 al 9159'),
(18,3,'Archivador de palanca',19,'2018-06-06','2018-06-15','2018',491,514,357,4,'folio 9160 al 9516'),
(19,3,'Archivador de palanca',20,'2018-06-15','2018-06-22','2018',515,519,478,6,'folio 9517 al 9996'),
(20,3,'Archivador de palanca',20,'2018-06-15','2018-06-22','2018',515,519,478,6,'folio 9517 al 9996'),
(21,3,'Archivador de palanca',20,'2018-06-15','2018-06-22','2018',515,519,478,6,'folio 9517 al 9996'),
(22,3,'Archivador de palanca',21,'2018-06-22','2018-07-05','2018',520,550,490,5,'folio 9997 al 10486'),
(23,3,'Archivador de palanca',22,'2018-07-05','2018-07-05','2018',551,575,535,5,'folio 10487 al 11021'),
(24,3,'Archivador de palanca',23,'2018-07-05','2018-07-13','2018',576,610,454,5,'folio 11022 al 11476'),
(25,3,'Archivador de palanca',24,'2018-07-18','2018-07-19','2018',611,626,523,7,'folio 11477 al 11999'),
(26,3,'Archivador de palanca',24,'2018-07-18','2018-07-19','2018',611,626,523,7,'folio 11477 al 11999'),
(27,3,'Archivador de palanca',24,'2018-07-18','2018-07-19','2018',611,626,523,7,'folio 11477 al 11999'),
(28,3,'Archivador de palanca',25,'2018-07-19','2018-07-19','2018',627,638,505,5,'folio 12000 al 12504'),
(29,3,'Archivador de palanca',26,'2018-07-19','2018-07-20','2018',639,663,497,5,'folio 12504 al 13001'),
(30,3,'Archivador de palanca',27,'2018-07-26','2018-08-03','2018',664,682,517,6,'folio 13002 al 13518'),
(31,3,'Archivador de palanca',28,'2018-08-03','2018-08-10','2018',683,710,508,5,'folio 13519 al 14026'),
(32,3,'Archivador de palanca',29,'2018-08-10','2018-08-14','2018',711,742,496,5,'folio 14027 al 14522'),
(33,3,'Archivador de palanca',30,'2018-08-14','2018-08-24','2018',743,749,570,5,'folio 14523 al 15092'),
(34,3,'Archivador de palanca',31,'2018-08-24','2018-08-24','2018',750,753,660,7,'folio 15093 al 15752'),
(35,3,'Archivador de palanca',32,'2018-08-24','2018-08-28','2018',754,770,526,5,'folio 15753 al 16278'),
(36,3,'Archivador de palanca',32,'2018-08-24','2018-08-28','2018',754,770,526,5,'folio 15753 al 16278'),
(37,3,'Archivador de palanca',33,'2018-08-28','2018-09-03','2018',771,799,532,6,'folio 16279 al 16810'),
(38,3,'Archivador de palanca',34,'2018-09-03','2018-09-11','2018',800,831,530,6,'folio 16811 al 17340'),
(39,3,'Archivador de palanca',35,'2018-09-13','2018-09-17','2018',832,840,458,6,'folio 17341 al 17798'),
(40,3,'Archivador de palanca',36,'2018-09-17','2018-09-17','2018',841,841,504,6,'folio 17799 al 18302. primera parte de la orden de servicio N° 841'),
(41,3,'Archivador de palanca',37,'2018-09-17','2018-09-27','2018',841,866,521,6,'folio 18303 al 18823.'),
(42,3,'Archivador de palanca',38,'2018-09-27','2018-10-09','2018',867,902,541,5,''),
(43,3,'Archivador de palanca',39,'2018-10-09','2018-10-19','2018',903,940,502,5,'folio 18824 al 19325'),
(44,3,'Archivador de palanca',40,'2018-10-19','2018-10-30','2018',941,977,507,5,'folio 19326 al 19833'),
(45,3,'Archivador de palanca',41,'2018-07-09','2018-11-05','2018',983,284,528,6,'folio 19834 al 19834. Primera parte de la O/S N° 984 continua en el tomo N° 42'),
(46,3,'Archivador de palanca',42,'2018-08-09','2018-11-06','2018',984,989,530,5,'folio 20363 al 20892'),
(47,3,'Archivador de palanca',43,'2018-11-06','2018-11-08','2018',990,1009,472,5,'folio 20893 al 21364'),
(48,3,'Archivador de palanca',44,'2018-11-08','2018-11-12','2018',1010,1020,604,6,'folio 21365 al 21968'),
(49,3,'Archivador de palanca',45,'2018-11-12','2018-11-20','2018',1023,1053,520,6,'folio 21969 al 22488'),
(50,3,'Archivador de palanca',46,'2018-11-20','2018-11-22','2018',1054,1063,533,6,'folio 22489 al 23021. La O/S N° 1063. continua en el tomo N° 47'),
(51,3,'Archivador de palanca',47,'2018-11-22','2018-11-29','2018',1063,1072,504,6,'folio 23022 al 23525'),
(52,3,'Archivador de palanca',48,'2018-11-29','2018-11-29','2018',1073,1105,483,5,'folio 23526 al 24008'),
(53,3,'Archivador de palanca',49,'2018-11-29','2018-12-10','2018',1106,1125,494,6,'folio 24009 al 24502'),
(54,3,'Archivador de palanca',49,'2018-11-29','2018-12-10','2018',1106,1125,494,6,'folio 24009 al 24502'),
(55,3,'Archivador de palanca',50,'2018-12-10','2018-12-11','2018',1126,1169,530,6,'folio 24503 al 25032'),
(56,3,'Archivador de palanca',50,'2018-12-10','2018-12-11','2018',1126,1168,25032,24503,'folio 24503 al 25032'),
(57,3,'Archivador de palanca',51,'2018-12-13','2018-12-13','2018',1170,1196,552,6,'folio 25033 al 25585'),
(58,3,'Archivador de palanca',52,'2018-12-14','2018-12-14','2018',1197,1219,521,5,'folio 25586 al 26107'),
(59,3,'Archivador de palanca',53,'2018-12-14','2018-12-20','2018',1220,1234,542,6,'folio 26108 al 26649'),
(60,3,'Archivador de palanca',54,'2018-12-20','2018-12-28','2018',1234,1247,515,5,'folio 26650 al 27164'),
(61,3,'Archivador de palanca',55,'2018-12-28','2018-12-28','2018',1247,1250,607,6,'folio 27165 al 27771'),
(62,3,'Archivador de palanca',55,'2018-12-28','2018-12-28','2018',1247,1250,607,6,'folio 27165 al 27771'),
(63,3,'Archivador de palanca',56,'2018-12-28','2018-12-28','2018',1251,1259,455,5,'folio 27772 al 28226'),
(64,3,'Archivador de palanca',57,'2018-12-28','2018-12-31','2018',1260,1267,272,2,'folio 28227 al 28498');
/*!40000 ALTER TABLE `registro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resoluciones`
--

DROP TABLE IF EXISTS `resoluciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resoluciones` (
  `idresolucion` int(11) NOT NULL AUTO_INCREMENT,
  `idcaja` int(11) NOT NULL,
  `idproyecto` int(11) NOT NULL,
  `numResolucion` int(11) NOT NULL,
  `anio` char(8) NOT NULL,
  `fecha` date NOT NULL,
  `resuelve` text NOT NULL,
  `totalfolios` int(11) DEFAULT 0,
  `metroslineales` double DEFAULT NULL,
  `fecCreate` datetime DEFAULT current_timestamp(),
  `idpersonal` int(11) NOT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idresolucion`)
) ENGINE=InnoDB AUTO_INCREMENT=489 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resoluciones`
--

LOCK TABLES `resoluciones` WRITE;
/*!40000 ALTER TABLE `resoluciones` DISABLE KEYS */;
INSERT INTO `resoluciones` (`idresolucion`, `idcaja`, `idproyecto`, `numResolucion`, `anio`, `fecha`, `resuelve`, `totalfolios`, `metroslineales`, `fecCreate`, `idpersonal`, `obs`, `estado`) VALUES (1,1,1,1,'2013','2013-01-04','ENCARGAR AL ING HECTOR PERCY PAJSI BAUTISTA COMO RESPONSABLE DE LA OFICINA DE PRESUPUESTO',9,1,'2024-07-10 12:00:33',1,'',1),
(2,1,1,2,'2013','2013-01-07','AUTORIZAR EL VIAJA DE COMISION DE SERVICIOS A LA CIUDAD DE LIMA AL DR OSWALDO LUIZAR OBREGON',7,1,'2024-07-10 12:02:03',1,'',1),
(3,1,1,3,'2013','2013-01-07','CREAR EL CICLO PROPEDéUTICO PARA LOS BECARIOS DEL PROGRAMA BECA 18-2013',2,0.1,'2024-07-10 12:08:17',1,'',1),
(4,1,1,4,'2013','2013-01-07','IMPLEMENTAR EL PROCESO DE ADMISION QUE ESTEN EN SITUACION DE POBREZA Y POBREZA EXTREMA PARA SER INCORPORADOS POR BECA 18',2,0.1,'2024-07-10 12:10:19',1,'',1),
(5,1,1,5,'2013','2013-01-09','AUTORIZAR VIAJE EN COMISION DE SERVICIOS A LA CIUDAD DE LIMA DOC OSWALDO LUIZAR OBREGON',7,1,'2024-07-10 12:11:54',1,'',1),
(6,1,1,6,'2013','2013-01-09','AUTORIZAR EL VIAJE DE COMISION DE SERVICIOS A LA CIUDAD DE LIMA DR EUSEBIO BENIQUE OLIVERA',7,1,'2024-07-10 12:37:00',1,'',1),
(7,1,1,7,'2013','2013-01-09','DESIGNAR AL ING VICENTE HANCCO YUPANQUI COMO ESPECIALISTA PARA EL PROCESO DE RECEPCION DE VEHICULOS',14,1,'2024-07-10 12:38:36',1,'',1),
(8,1,1,8,'2012','2012-01-09','APROBAR EL PLAN ANUAL DE ADWUISICIONES Y CONTRATACIONES DE LA UNIDAD EJECUTORA N° 001406 - UNIVERSIDAD NACIONAL DE JULIACA UNAJ',4,1,'2024-07-10 12:40:22',1,'',1),
(9,1,1,9,'2013','2013-01-09','DESIGNAR AL TECNICO FREDDY HUAMANI SALAS COMO ESPECIALISTA PARA EL PROCESO DE RECEPCION DE FOTOCOPIADORAS',9,1,'2024-07-10 12:41:12',1,'',1),
(10,1,1,10,'2013','2013-01-21','AUTORIZAR EL VIAJE DE COMISION DE SERVICIOS A LA CIUDAD DE LIMA DR EDWIN CATACORA VIDANGOS',7,1,'2024-07-10 12:42:18',1,'',1),
(11,1,1,11,'2013','2013-01-28','AUTORIZAR EL VIAJE DE COMISION DE SERVICIOS A LA CIUDAD DE LIMA DR OSWALDO LUIZAR OBREGON',7,1,'2024-07-10 12:43:21',1,'',1),
(12,1,1,12,'2013','2013-02-11','APROBAR EL REGLAMENTO DE PROCESO DISCIPLINARIO PARA ESTUDIANTES DE LA UNIVERSIDAD NACIONAL DE JULIACA',7,1,'2024-07-10 12:47:30',1,'',1),
(13,1,1,13,'2013','2013-02-11','APROBAR EL TEXTO UNICO DE PROCEDIMIENTOS ADMINISTRATIVOS TUPA 2013',26,2,'2024-07-10 13:20:38',1,'',1),
(14,1,1,14,'2013','2013-02-11','APROBAR LA PRIMERA MODIFICATORIA DEL PLAN ANUAL DE ADQUISICIONES Y CONTRATACIONES (PAAC) DE LA UNIDAD EJECUTORA N° 001406 UNAJ',4,1,'2024-07-10 13:21:53',1,'',1),
(15,1,1,15,'2013','0000-00-00','no se encuentra',0,0,'2024-07-10 13:21:53',1,'',0),
(16,1,1,16,'2013','2013-02-11','DESIGNAR AL COMITE ESPECIAL PERMANENTE DE ADQUISICIONES Y CONTRATACIONES',4,0.2,'2024-07-10 15:32:38',1,'',1),
(17,1,1,17,'2013','0000-00-00','No se encuentra',0,0,'2024-07-10 15:32:38',1,'',0),
(18,1,1,18,'2013','0000-00-00','No se encuentra',0,0,'2024-07-10 15:43:23',1,'',0),
(19,1,1,19,'2013','0000-00-00','No se encuentra',0,0,'2024-07-10 15:43:43',1,'',0),
(20,1,1,20,'2013','0000-00-00','No se encuentra',0,0,'2024-07-10 15:43:47',1,'',0),
(21,1,1,21,'2013','2013-03-08','RECONOCIMIENTO A LAS AUTORIDADES DE LA UNAJ Y A LA COMISION DE ADMISION 2013',6,0.2,'2024-07-10 15:45:50',1,'',1),
(22,1,1,22,'2013','2013-03-04','AUTORIZAR VIAJE DE COMISION DE SERVICIOS A LA CIUDAD DE LIMA DR OSWALDO LUIZAR OBREGON',7,1,'2024-07-10 15:49:30',1,'',1),
(23,1,1,24,'2013','2013-03-22','OTORGAR 01 LAPTOP AL SR YAGUNO QUECARA GUSTAVO, INGRESANTE A GESTION PUBLICA Y DESARROLLO SOCIAL',4,0.2,'2024-07-10 15:51:46',1,'',1),
(24,1,1,28,'2013','2013-03-27','OTORGAR UNA NETBOOK A LA SRTA CONDORI ALVAREZ KAREM CANDY INGRESANTE DE LA CARRERA DE ING AMBIENTAL Y FORESTAL',18,0.3,'2024-07-10 16:01:26',1,'',1),
(25,1,1,23,'2013','0000-00-00','No se encuentra',0,0,'2024-07-10 16:06:34',1,'',0),
(26,1,1,25,'2013','0000-00-00','No se encuentra',0,0,'2024-07-10 16:06:43',1,'',0),
(27,1,1,26,'2013','0000-00-00','No se encuentra',0,0,'2024-07-10 16:06:45',1,'',0),
(28,1,1,27,'2013','0000-00-00','No se encuentra',0,0,'2024-07-10 16:06:48',1,'',0),
(29,1,1,29,'2013','2013-03-27','APROBAR EL PLAN DE TRABAJO PRESENTADO POR LA COMISION DEL CENTRO PRE UNIVERSITARIO',35,1,'2024-07-10 16:53:18',1,'',1),
(30,1,1,30,'2013','0000-00-00','No se encuentra',0,0,'2024-07-10 16:53:44',1,'',0),
(31,1,1,31,'2013','0000-00-00','No se encuentra',0,0,'2024-07-10 16:53:47',1,'',0),
(32,1,1,32,'2013','0000-00-00','No se encuentra',0,0,'2024-07-10 16:53:51',1,'',0),
(33,1,1,33,'2013','2013-04-09','AUTORIZAR VIAJE DE COMISION DE SERVICIOS A LA CIUDAD DE LIMA DR EDWIN CATACORA VIDANGOS',10,0.5,'2024-07-10 16:54:46',1,'',1),
(34,1,1,34,'2013','0000-00-00','No se encuentra',0,0,'2024-07-10 16:54:59',1,'',0),
(35,1,1,35,'2013','0000-00-00','No se encuentra',0,0,'2024-07-10 16:55:05',1,'',0),
(36,1,1,36,'2013','2013-04-08','AUTORIZAR LA CONVOCATORIA A CONCURSO PUBLIC PARA PLAZAS DOCENTES SEGUNDO SEMESTRE 2013',36,2,'2024-07-10 16:56:34',1,'',1),
(37,1,1,37,'2013','2013-04-10','APROBAR EL CRONOGRAMA DE ACTIVIDADES DEL CONCURSO DE ADMISION 2013-II',81,0.5,'2024-07-11 11:34:54',1,'',1),
(38,1,1,38,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:35:28',1,'',0),
(39,1,1,39,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:35:35',1,'',0),
(40,1,1,40,'2013','2013-05-09','ASIGNACION DE VACANTES POR LA MODALIDADES DE ADMISION EXTRAORDINARIA BAJO LA COMPETENCIA DEL CONAFU',13,0.2,'2024-07-11 11:35:41',1,'',1),
(41,1,1,41,'2013','2013-05-10','CONTRATAR POR MODALIDAD DE INVITACION AL DOCENTE ING PABLO ALFREDO SOTO RAMOS EN LA CARRERA DE DE ING TEXTIL Y CONFECCIONES',13,0.2,'2024-07-11 11:39:06',1,'',1),
(42,1,1,42,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:40:35',1,'',0),
(43,1,1,43,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:40:49',1,'',0),
(44,1,1,44,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:40:51',1,'',1),
(45,1,1,45,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:40:53',1,'',1),
(46,1,1,46,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:40:55',1,'',1),
(47,1,1,47,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:40:57',1,'',1),
(48,1,1,48,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:40:59',1,'',1),
(49,1,1,49,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:41:01',1,'',1),
(50,1,1,50,'2013','2013-05-24','AUTORIZAR VIAJE DE COMISION DE SERVICIOS A LA CIUDAD DE LIMA DR OSWALDO LUIZAR OBREGON',8,0.1,'2024-07-11 11:41:43',1,'',1),
(51,1,1,51,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:42:01',1,'',1),
(52,1,1,52,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:42:03',1,'',1),
(53,1,1,53,'2013','2013-06-06','DAR POR CONCLUIDA LA DESIGNACION DEL CPC FELICIANO TIMOTEO FLORES PEREZ COMO RESPONSABLE DE LA OFICINA DE CONTABILIDAD',3,0.1,'2024-07-11 11:42:57',1,'',1),
(54,1,1,54,'2013','2013-06-07','DAR POR CONCLUIDA LA DESIGNACION DEL CPC CARLOS GETZEL OCHOA OROS COMO RESPONSABLE DE LA UNIDAD DE ABASTECIMIENTOS',3,0.1,'2024-07-11 11:44:49',1,'',1),
(55,1,1,55,'2013','2013-06-07','DESIGNAR COMO DIRECTOR GENERAL DE ADMINISTRACION AL CPC CARLOS GETZEL OCHOA OROS',3,0.1,'2024-07-11 11:46:41',1,'',1),
(56,1,1,56,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:47:06',1,'',1),
(57,1,1,57,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:47:08',1,'',1),
(58,1,1,58,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:47:10',1,'',1),
(59,1,1,59,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:47:12',1,'',1),
(60,1,1,60,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:47:16',1,'',1),
(61,1,1,61,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:47:20',1,'',1),
(62,1,1,62,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:47:21',1,'',1),
(63,1,1,63,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:47:24',1,'',1),
(64,1,1,64,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:47:26',1,'',1),
(65,1,1,65,'2013','2013-06-20','DESIGNAR AL ECON. HERACLIO ZUÑIGA QUISPE COMO RESPONSABLE DE LA OFICINA DE PROYECTOS DE INVERSION (OPI)',93,1,'2024-07-11 11:49:05',1,'',1),
(66,1,1,66,'2013','0000-00-00','No se encuentra',0,0,'2024-07-11 11:49:24',1,'',1),
(67,1,1,67,'2013','2013-06-24','APROBAR EL ACTA DE RESULTAO FINAL DE FECHA 21 DE JUNIO DE 2013, DEL CONCURSO COMPLEMENTARIO DE DOCENTES CONTRATADOS DE LA UNAJ',7,0.1,'2024-07-15 09:01:36',1,'',1),
(68,1,1,68,'2013','2013-06-24','DECLARAR DESIERTA 02 PLAZAS CORRESPONDIENTES A LOS CODIGOS 1 Y 5 NO CUBIERTAS EN EL III CONCURSO DE CATEDRAS PARA CONTRATO DOCENTE 2013',5,0.1,'2024-07-15 09:03:01',1,'',1),
(69,1,1,70,'2013','0000-00-00','No se encuentra',0,0,'2024-07-15 09:03:34',1,'',1),
(70,1,1,71,'2013','2013-06-26','APROBAR LOS TERMINOS DE LA PROPUESTA DE CONVENIO MARCO A CELEBRARSE ENTRE LA UNAJ Y LA UNIVERSIDAD FEDERAL DE INTEGRACION LATINOAMERICANA - BRASIL',19,1,'2024-07-15 09:42:11',1,'',1),
(71,2,1,72,'2013','2013-06-26','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO MARCO A CELEBRARSE ENTRE LA UNAJ Y LA UNIVERSIDAD VERACRUZANA (MEXICO)',33,1.1,'2024-07-15 09:47:42',1,'',1),
(72,2,1,73,'2013','2013-06-26','APROBAR EL CONVENIO MARCO DE COLABORACION INTERINSTITUCIONAL ENTRE LA UNAJ Y LA UNIVERSIDAD AGRARIA LA MOLINA',65,2,'2024-07-15 09:48:55',1,'',1),
(73,2,1,74,'2013','0000-00-00','No se encuentra',0,0,'2024-07-15 09:49:11',1,'',1),
(74,2,1,75,'2013','2013-07-12','AUTORIZAR VIAJE DE COMISION DE SERVICIOS AL PAIS DE MEXICO - ESTADO DE VERACRUZ, AL DR EDWIN CATACORA VIDANGOS EN CALIDAD DE PONENTE',11,0.2,'2024-07-15 09:51:03',1,'',1),
(75,2,1,76,'2013','0000-00-00','No se encuentra',0,0,'2024-07-15 09:51:19',1,'',1),
(76,2,1,77,'2013','2013-04-07','APROBAR LA DIRECTIVA N°001-2013-CO-UNAJ PAGO DE VIATICOS ASIGNACIONES Y PASAJES PARA VIAJES DE COMISION DE SERVICIO Y POR CAPACITACIONES',16,0.2,'2024-07-15 09:52:40',1,'',1),
(77,2,1,78,'2013','2013-08-07','APROBAR LA DIRECTIVA N° 002-2013-CO-UNAJ PARA EL OTORGAMIENTO Y RENDICION DE LOS GASTOS POR LA MODALIDAD DE ENCARGO INTERNO',11,0.1,'2024-07-15 09:53:50',1,'',1),
(78,2,1,79,'2013','2013-08-07','APROBAR LA DIRECTIVA N° 003-2013-CO-UNAJ MANEJO DEL FONDO FIJO PARA CAJA CHICA DE LA UNAJ',11,0.1,'2024-07-15 09:54:45',1,'',1),
(79,2,1,80,'2013','2013-08-08','APROBAR LA TRANSFERENCIA EN LA MODALIDAD DE DONACION DE 250 LIBROS POR PARTE DEL CONGRESO DE LA REPUBLICA Y 35 LIBROS POR PARTE DEL MINISTERIO DE AGRICULTURA',14,0.1,'2024-07-15 09:55:59',1,'',1),
(80,2,1,81,'2013','2013-08-08','AUTORIZAR VIAJE DE COMISION DE SERVICIOS A LA CIUDAD DE CUSCO AL SR EDWIN CATACORA VIDANGOS',8,0.1,'2024-07-15 09:56:46',1,'',1),
(81,2,1,82,'2013','2013-08-08','DESIGNAR LA COMISION DE INVENTARIOS 2013',5,0.1,'2024-07-15 09:57:24',1,'',1),
(82,2,1,83,'2013','2013-09-11','APROBAR EL EXPEDIENTE TECNICO DENOMINADO CREACION DEL CERCO PERIMETRICO DE LA UNAJ CODIGO SNIP 264145',28,0.4,'2024-07-15 09:58:27',1,'',1),
(83,2,1,84,'2013','2013-09-11','DESIGNAR AL ARQ ELIANA LISBETH BRAVO FERNANDEZ CON CAP 10431 AL CARGO DE RESIDENTE DE OBRA DE LA CREACION DEL CERCO PERIMETRICO DE LA UNAJ',12,0.1,'2024-07-15 09:59:43',1,'',1),
(84,2,1,85,'2013','2013-09-11','DAR POR CONCLUIDA LA DESIGNACION DEL CPC JOEL MOLINA MARTINEZ COMO RESPONSABLE DE LA OFICNA DE CONTABILIDAD',8,0.1,'2024-07-15 10:01:09',1,'',1),
(85,2,1,86,'2013','2013-09-11','APROBAR LAS BASES DEL CONCURSO DE FINANCIAMIENTO DE PROYECTOS DE INVESTIGACION DOCENTE CON FONDOS DEL CANON MINERO UNAJ 2013',31,2,'2024-07-15 10:02:05',1,'',1),
(86,2,1,87,'2013','2013-09-11','DESIGNAR AL ING LUIS ALBERTO SUCASACA TORRES CON CIP 78848 AL CARGO DE SUPERVISION DE OBRA CREACION DE CERCO PERIMETRICO UNAJ',11,0.1,'2024-07-15 10:03:17',1,'',1),
(87,2,1,88,'2013','2013-09-17','APROBAR EL EXPEDIENTE TECNICO DENOMINADO CREACION E IMPLEMENTACION DEL PABELLON DE AULAS GENERALES DE LA UNAJ',14,0.2,'2024-07-15 10:04:18',1,'',1),
(88,2,1,89,'2013','2013-10-01','AUTORIZAR VIAJE DE COMISION DE SERVICIOS A LA CIUDAD DE LIMA A LOS MIEMBORS DE LA COMISION ORGANIZADORA',21,0.2,'2024-07-15 10:05:09',1,'',1),
(89,2,1,90,'2013','0000-00-00','No se encuentra',0,0,'2024-07-15 10:05:24',1,'',1),
(90,2,1,91,'2013','0000-00-00','No se encuentra',0,0,'2024-07-15 10:05:31',1,'',1),
(91,2,1,92,'2013','2013-10-09','AUTORIZAR EL FINANCIAMIENTO ECONOMICO HASTA EL 85% DEL TOTAL DEL COSTO DEL I DIPLOMA DE ESTUDIOS EN ARBITRAJE Y DIPLOMADO EN AUDITORIA GUBERNAMENTAL',12,0.1,'2024-07-15 10:07:08',1,'',1),
(92,3,1,1,'2014','2014-01-14','ESTABLECER QUE LOS CONTRATOS DEL PERSONAL CAS A PARTIR DEL 2 DE ENERO DE 2014, RESPONDAN A LOS CRITERIOS DE RAZONABILIDAD',4,0.2,'2024-10-17 15:38:28',1,'',1),
(93,3,1,2,'2014','2014-01-14','DAR POR CONCLUIDA LA DESIGNACION DEL CPC PEDRO EDWIN VILCA CANAZA COMO RESPONSABLE DE LA OFICIAN DE CONTABILIDAD DE LA UNAJ',12,0.3,'2024-10-17 15:39:42',1,'',1),
(94,3,1,3,'2014','2014-01-14','DAR POR CONCLUIDA LA DESIGNACION DEL CPCP JOEL MOLINA MARTINEZ COMO RESPONSABLE DE LA UNIDAD DE TESORERIA',11,0.3,'2024-10-17 15:41:04',1,'',1),
(95,3,1,4,'2014','0000-00-00','No se encuentra',0,0,'2024-10-17 15:46:45',1,'',1),
(96,3,1,5,'2014','2014-01-17','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO MARCO A CELEBRARSE ENTRE LA UNIVERSIDAD NACIONAL DE JULIACA Y LA UNIVERSIDAD PERUANA CAYETANO HEREDIA',12,0.2,'2024-10-17 15:48:49',1,'',1),
(97,3,1,6,'2014','2014-01-17','APROBAR EL PROYECTO INSTITUTO DE IDIOMAS DE LA UNIVERSIDAD NACIONAL DE JULIACA',4,0.1,'2024-10-17 15:49:41',1,'',1),
(98,3,1,7,'2014','2014-01-17','DESIGNAR AL DIRECTOR DEL INSTITUTO DE IDIOMAS DE LA UNIVERSIDAD NACIONAL DE JULIACA ALUIS MARTIN HUAILLAPUMA SANTA CRUZ',56,1,'2024-10-17 15:50:54',1,'',1),
(100,3,1,8,'2014','2014-02-05','APROBAR LA DIRECTIVA DE PROCEDIMIENTOS DEL CONTROL PATRIMONIAL DE LA UNAJ',27,1,'2024-10-17 16:07:45',1,'',1),
(101,3,1,9,'2014','2014-02-05','APROBAR LA DIRECTIVA DE MANEJO DEL FONDO FIJO PARA CAJA CHICA DE LA UNAJ',13,0.2,'2024-10-17 16:12:51',1,'',1),
(102,3,1,10,'2014','2014-02-05','APROBAR EL EXPEDIENTE TECNICO DENOMINADO MEJORAMIENTO DEL SISTEMA ELECTRICO DE LA SEDE CENTRAL DE LA UNAJ',50,2,'2024-10-17 16:29:08',1,'',1),
(103,3,1,11,'2014','2014-02-05','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO A CELEBRARSE ENTRE LA UNAJ Y EL GOBIERNO REGIONAL DE LAMBAYEQUE',25,1,'2024-10-17 16:31:25',1,'',1),
(104,3,1,12,'2014','0000-00-00','No se encuentra',0,0,'2024-10-17 16:31:40',1,'',1),
(105,3,1,13,'2014','2014-02-07','AUTORIZAR EL VIAJE DE COMISION DE SERVICIOS A LA CIUDAD DE LIMA AL SR EUSEBIO BENIQUE OLIVERA',8,0.1,'2024-10-17 16:33:09',1,'',1),
(106,3,1,14,'2014','2014-02-07','AUTORIZAR EL VIAJE DE COMISION DE SERVICIOS A LA CIUDAD DE LIMA AL SR JOEL MOLINA MARTINEZ',8,0.1,'2024-10-17 16:34:38',1,'',1),
(107,3,1,15,'2014','2014-02-07','AUTORIZAR VIAJE DE COMISION DE SERVICIOS A LA CIUDAD DE LIMA DR EDWIN CATACORA VIDANGOS',8,0.1,'2024-10-17 16:35:39',1,'',1),
(108,3,1,16,'2014','2014-02-07','AUTORIZAR VIAJE DE COMISION DE SERVICIOS A LA CIUDAD DE LIMA SR CESAR PAUL LAQUI VILCA',10,0.2,'2024-10-17 16:36:45',1,'',1),
(109,3,1,17,'2014','2014-02-07','AUTORIZAR VIAJE DE COMISION DE SERVICIOS A LA CIUDAD DE LIMA ING HECTOR PERCY PAJSI BAUTISTA',9,0.2,'2024-10-17 16:37:43',1,'',1),
(110,3,1,18,'2014','2014-02-15','APROBAR EL ACTA DEL RESULTADO FINAL DEL IV CONSURCOS PUBLICO DE CATEDRA PARA CONTRADO DOCENTE 2014',4,0.1,'2024-10-17 16:38:51',1,'',1),
(111,3,1,19,'2014','2014-02-15','DECLARAR DESIERTA LAS 04 PLAZAS CORRESPONDIENTES A LOS CODIGOS N 03, 06, 09 Y 12 NO CUBIERTAS',4,0.1,'2024-10-17 16:40:38',1,'',1),
(112,3,1,20,'2014','2014-02-17','DESIGNAR A ZOILO WILFREDO ZAMALLOA MASIAS COMO RESPONSABLE DE LA CARRERA PROFESIONAL DE INGENIERA AMBIENTAL Y FORESTAL / M.SC MARCELINO ARAS SOLORZANO POR RESPONSABEL DE LA CARRERA PROFESIONAL DE GESTION PUBLICA Y DESARROLLO SOCIAL UNAJ',40,1,'2024-10-17 16:42:19',1,'',1),
(113,3,1,21,'2014','2014-03-04','APROBAR EL PLAN DE TRABAJO CEPRE UNAJ CICLO 2014-II',31,1,'2024-10-17 16:43:10',1,'',1),
(114,3,1,22,'2014','2014-03-11','APROBAR LA DIRECTIVA QUE REGULA LA REALIZACION DE PRACTICAS PRE PROFESIONALES EN LA UNAJ',20,0.4,'2024-10-17 16:44:15',1,'',1),
(115,3,1,23,'2014','2014-03-11','APROBAR LA DIRECTIVA PARA LA ADMINISTRACION DE LEGAJOS ESCALAFON Y REGISTRO GENERAL DE PERSONAL EN LA UNAJ',26,1,'2024-10-17 16:45:13',1,'',1),
(116,3,1,24,'2014','0000-00-00','No se encuentra',0,0,'2024-10-17 16:45:29',1,'',1),
(117,3,1,25,'2014','2014-03-11','APROBAR EL PLAN OPERATIVO PARA LE PROCESO DE ADMISION 2014-I EXAMEN ORDINARIO Y EXTRAORDINARIO',32,1,'2024-10-17 16:46:32',1,'',1),
(118,3,1,26,'2014','2014-03-11','APROBAR LA PROPUESTA DEL REGLAMENTO DEL CENTRO DE ESTUDIOS PRE UNIVERSITARIOS CEPRE UNAK',31,1,'2024-10-17 16:47:26',1,'',1),
(119,3,1,27,'2014','2014-03-11','APROBAR LA PROPUESTA DEL REGLAMENTO DEL PROGRAMA DE BECAS ESTUDIANTILES',12,0.4,'2024-10-17 16:48:14',1,'',1),
(120,3,1,28,'2014','2014-03-11','APROBAR EL PLAN DE DESARROLLO DE LAS PERSONAS AL SERVICIO DEL ESTADO PDP ANUALIZADO 2014',28,1,'2024-10-17 16:49:09',1,'',1),
(121,3,1,29,'2014','2014-03-11','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO A CELEBRARSE ENTRE LA UNAJ Y LA DIRECCION DE LA RED DE SALUD DE LA PROVINCIA DE SAN ROMAN JULIACA',7,0.4,'2024-10-17 16:50:24',1,'',1),
(122,3,1,30,'2014','2014-03-11','EXONERAR A PARTIR DE LA FECHA EL REGISTRO DE ASISTENCIA (INGRESO Y SALIDA) DE LOS FUNCIONARIOS DE CONFIANZA',9,0.2,'2024-10-17 16:51:28',1,'',1),
(123,3,1,31,'2014','2014-03-11','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO A CELEBRARSE ENTRE LA UNAJ Y LA UNIDAD DE GESTION EDUCATIVA LOCAL SAN ROMAN',9,0.2,'2024-10-17 16:52:35',1,'',1),
(124,3,1,21,'2014','2014-03-11','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO A CELEBRARSE ENTRE LA UNAJ Y LA UNIDAD DE GESTION EDUCATIVA LOCAL SAN ROMAN',9,0.2,'2024-10-17 16:53:08',1,'',1),
(125,3,1,32,'2014','0000-00-00','No se encuentra',0,0,'2024-10-17 16:53:33',1,'',1),
(126,3,1,33,'2014','0000-00-00','No se encuentra',0,0,'2024-10-17 16:53:38',1,'',1),
(127,3,1,34,'2014','0000-00-00','No se encuentra',0,0,'2024-10-17 16:53:43',1,'',1),
(128,3,1,35,'2014','2014-03-27','AUTORIZAR EL VIAJE EN COMISION DE SERVICIOS A LA CIUDAD DEL CUSCO Y LIMA AL PRESIDENTE DE LA COMISION ORGANIZADORA DR OSWALDO LUIZAR OBREGON',9,0.2,'2024-10-17 16:54:48',1,'',1),
(129,3,1,36,'2014','2014-03-28','DESIGNAR AL MSC MARTIN FELIX CUADRADO HIDALGO COMO RESPONSABLE DE LA CARRERA PROFESIONAL DE INGENIERIA EN INDUSTRIAS ALIMENTARIAS, MSC JORGE GUSTAVO RODRIGUEZ LLAPA COMO RESPONSABLE DE LA CARRERA PROFESIONAL DE INGENIERA TEXTIL Y DE CONFECCIONES, MSC NORMAN JESUS BELTRAN COMO RESPONSABLE DE LA CARRERA PROFESIONAL DE INGENIERA DE ENERGIAS RENOVABLES',157,2,'2024-10-17 16:58:38',1,'',1),
(130,3,1,37,'2014','2014-03-28','CONTRATAR POR LA MODALIDAD DE INVITACION A LOS SIGUIENTES PROFESIONALES: ING JORGE GUSTAVO RODRIGUEZ LLAPA, ING JULIO EDUCARDO TORRES PALLARA',9,0.1,'2024-10-18 08:48:04',1,'',1),
(131,3,1,38,'2014','2014-03-28','CONTRATAR POR LA MODALIDAD DE INVITACION A: JOSE LUIS SUAREZ ANDRADE, PEDRO CHINO COAQUIRA, JOSE LUIS MONTAñO BUSTAMANTE, PABLO ALFREDO SOTO RAMOS, JOSE LUIS VELASQUEZ GARAMBEL',4,0.1,'2024-10-18 08:49:52',1,'',1),
(132,3,1,39,'2014','2014-03-28','APROBAR LA DIRECTIVA DE ACTIVIDADES ACADEMICAS DE LA UNAJ CORRESPONDIENTE AL AñO 2014',33,1,'2024-10-18 08:50:50',1,'',1),
(133,3,1,40,'2014','0000-00-00','No se encuentra',0,0,'2024-10-18 08:51:05',1,'',1),
(134,3,1,41,'2014','2014-04-07','APROBAR POR UNANIMIDAD EL PLAN DE TRABAJO DE LA JORNADA CIENTIFICA UNAJ 2014, EL REGLAMENTO, BASES',21,0.2,'2024-10-18 08:52:03',1,'',1),
(135,3,1,42,'2014','2014-04-07','CONVOCAR A CONCURSO PUBLICO DE MERITOS PARA EL INGRESO DE PERSONAL ADMINISTRATIVO EN CONDICION DE CONTRATADO',32,1,'2024-10-18 08:53:39',1,'',1),
(136,3,1,43,'2014','2014-04-07','APROBAR POR UNANIMIDAD EL PLAN DE TRABAJO, BASES Y REGLAMENTO DEL PROGRAMA SEMILLEROS EN INVESTIGACION',27,0.3,'2024-10-18 08:54:47',1,'',1),
(137,3,1,44,'2014','2014-04-07','ACEPTAR CON EFECTIVIDAD AL 17 DE MARZO DE 2014 LA RENUNCIA FORMULADA POR EL ING FORESTAL OMAR MIGUEL MONTEZA ROSALES, COMO GANADOR DE LA PLAZA N° 1',3,0.1,'2024-10-18 08:56:09',1,'',1),
(138,3,1,45,'2014','2014-04-08','DISPONER QUE EL PERSONAL DOCENBTE CONTRATADO DE LA UNAJ GANADORES DEL IV CONCURSO PUBLICO DE CATEDRA PAA EL CONTRATO DOCENTE 2014',4,0.1,'2024-10-18 08:57:13',1,'',1),
(139,3,1,46,'2014','0000-00-00','No se encuentra',0,0,'2024-10-18 08:57:29',1,'',0),
(140,3,1,47,'2014','2014-04-09','CONTRATAR A LOS JEFES DE PRACTICA DE LAS DIFERENTES CARRERAS',20,0.2,'2024-10-18 08:58:16',1,'',1),
(141,2,1,93,'2013','2013-10-10','CONFORMAR EL COMITE DE AUTOEVALUACION PERMANENTES DE LA UNAJ',4,0.1,'2024-10-28 16:54:54',1,'',1),
(142,2,1,94,'2013','2013-10-10','DAR POR CONCLUIDA LA CONFORMACION DE LA COMISION DE ADMISION DE LA UNAJ. CONFORMAR LA COMISION DE ADMISION CON EL DOCUENTE SILVANA LISSET AGUILAR TUESTA',4,0.1,'2024-10-28 17:02:33',1,'',1),
(143,2,1,95,'2013','2013-10-10','DAR POR CONCLUIDA LA DESIGNACION DE LA COMISION DEL CEPRE-UNAJ.  DESIGNAR EL DIRECTORIO DEL CEPRE UNAJ A RUBEN WILFREDO JILAPA HUMPIRI',4,0.1,'2024-10-28 17:05:03',1,'',1),
(144,2,1,96,'2013','2013-10-10','DAR POR CONCLUIDA LA ENCARGATURA DE DRA VILAMA VALERIANA TAPIA CCALLO COMO JEFA DE LA OFICINA DE BIENESTAR UNIVERSITARIO UNAJ',4,0.1,'2024-10-29 09:28:33',1,'',1),
(145,2,1,97,'2013','2013-10-10','DAR POR CONCLUIDA LA ENCARGATURA DE LA DRA CASTILLO PARADA DE QUISPE BLANCA NIEVES COMO DIRECTORA DE INVESTIGACIóN DE LA UNAJ',4,0.1,'2024-10-29 09:29:50',1,'',1),
(146,2,1,98,'2013','2013-10-10','ENCARGAR A DR ABRAHAM MELITON CONTRERAS VARGAS COMO DIRECTOR GENERAL DE EXTENSION UNIVERSITARIA Y PROYECCION SOCIAL DE LA UNAJ',3,0.1,'2024-10-29 09:30:57',1,'',1),
(147,2,1,99,'2013','2013-10-14','AUTORIZAR EL VIAJE DE COMISION DE SERVICIOS A LA CIUDAD DE LIMA A LOS MIEMBROS DE LA COMISION ORGANIZADORA',9,0.1,'2024-10-29 09:31:58',1,'',1),
(148,2,1,100,'2013','2013-10-17','APROBAR EL CRONOGRAMA DE ACTIVIDADES DEL CONCURSO DE ADMISION 2014 (EXAMEN ORDINARIO Y EXTRAORDINARIO)',50,0.5,'2024-10-29 09:33:32',1,'',1),
(149,2,1,102,'2013','2013-10-29','RATIFICAR LA APROBACION DE LOS PROYECTOS DE INVESTIGACION, EVALUADOS Y APROBADOS POR LA COMISION DE SELECCION, MONITOREO Y EVALUACION DE LOS PROYECTOS DE INVESTIGACION  -  COSEMOEV',6,0.2,'2024-10-29 09:36:08',1,'',1),
(150,2,1,103,'2013','2013-11-26','APROBAR EL PLAN DE TRABAJO CEPRE UNAJ CICLO 2014-I',40,0.2,'2024-10-29 09:37:11',1,'',1),
(169,1,5,104,'2013','0000-00-00','No se encuentra',0,NULL,'2024-10-29 13:58:52',1,NULL,0),
(170,1,5,101,'2013','0000-00-00','No se encuentra',0,NULL,'2024-10-29 13:59:42',1,NULL,0),
(173,2,1,105,'2013','2013-12-03','APROBAR LA DIRECTIVA SOBRE BIENES MUEBLES DE PROPIEDAD DE LA UNAJ',8,0.1,'2024-10-29 14:13:44',1,'',1),
(174,2,1,106,'2013','2013-12-03','APROBAR LA DIRECTIVA PARA EL USO, CONTROL, MANTENIMIENTO, REPARACION Y ABASTECIMIENTO DE COMBUSTIBLE DE LOS VEHICULOS DE LA UNAJ',24,0.3,'2024-10-29 14:18:44',1,'',1),
(175,2,1,107,'2013','2013-12-03','APROBAR EL REGLAMENTO INTERNO DE TRABAJO',22,0.2,'2024-10-29 14:19:23',1,'',1),
(176,2,1,108,'2013','2013-12-03','APROBAR LA DIRECTIVA DE CONTROL DE ASISTENCIA Y PERMANENCIA DEL PERSONAL DOCENTE',8,0.1,'2024-10-29 14:20:35',1,'',1),
(177,2,1,109,'2013','2013-12-03','APROBAR EL MANUAL DE ORGANIZACION Y FUNCIONES MOF',118,1,'2024-10-29 14:22:37',1,'',1),
(178,2,1,110,'2013','2013-12-03','APROBAR EL PLAN DE TRABAJO Y DISEñO DE AUTOEVALUACION DEL COMITE AUTOEVALUACION DE LA UNAJ',13,0.1,'2024-10-29 14:23:27',1,'',1),
(179,2,1,111,'2013','2013-12-05','APROBAR EL PLAN DE TRABAJO DESARROLLO DE CICLOS DE RECUPERACION ACADEMICA',29,1,'2024-10-29 14:24:30',1,'',1),
(180,2,1,112,'2013','2013-12-12','AUTORIZAR LA CONVOCATORIA AL IV CONCURSO PUBLICO DE DOCENTES CONTRATADOS PARA LAS PLAZAS DEL SEMESTRE ACADEMICO 2014-I',44,1,'2024-10-29 14:58:27',1,'',1),
(181,2,1,113,'2013','2013-12-13','AUTORIZAR LA HABILITACION DE 40000 NS BAJO LA MODALIDAD DE ENCARGO INTERNO CON CARGO A LA FUENTE DE RDR',9,0.2,'2024-10-29 14:59:52',1,'',1),
(182,2,1,114,'2013','2013-12-20','OTORGAR COMPENSACION ECONOMICA AL PERSONAL DOCENTE Y ADMINISTRATIVO BAJO EL REGIMEN CAS 1057 POR VACACIONES NO GOZADAS Y/O TRUNCAS',16,1,'2024-10-29 15:01:18',1,'',1),
(183,4,1,48,'2014','2014-04-24','APROBAR EL CRONOGRAMA DE ACTIVIDADES DEL CONCURSO DE ADMISION 2014-II',19,0.2,'2024-10-30 09:04:58',1,'',1),
(184,4,1,49,'2014','2014-04-24','AUTORIZAR EL VIAJE EN COMISION DE SERVICIOS A LA CIUDAD DE LIMA DR OSWALDO LUIZAR OBREGON',8,0.1,'2024-10-30 09:07:51',1,'',1),
(185,4,1,50,'2014','0000-00-00','No se encuentra',0,NULL,'2024-10-30 09:31:18',1,NULL,0),
(187,4,1,51,'2014','2014-04-28','AUTORIZA EL VIAJE EN COMISION DE SERVICIOS A LA CIUDAD DE LIMA AL DR OSWALDO LUIZAR OBREGON',10,0.1,'2024-10-30 09:37:56',1,'',1),
(188,4,1,52,'2014','0000-00-00','',0,0,'2024-10-30 09:43:14',1,'',0),
(193,4,1,53,'2014','2014-05-19','APROBAR EL EVENTO ACADEMICO AUTOGESTIONARIO III SEMANA DE LA GESTION PUBLICA Y DESARROLLO SOCIAL',13,0.1,'2024-10-30 09:49:11',1,'',1),
(194,4,1,54,'2014','2014-05-19','AUTORIZAR EL VIAJE EN COMISION DE SERVICIOS A LA CIUDAD DE LIMA AL DR EUSEBIO BENIQUE OLIVERA',6,0.1,'2024-10-30 09:53:39',1,'',1),
(195,4,1,55,'2014','2014-05-19','APROBAR LA PROPUESTA DEL REGLAMENTO DE TUTORIA UNIVERSITARIA DE UNAJ',19,0.1,'2024-10-30 09:55:44',1,'',1),
(196,4,1,56,'2014','0000-00-00','',0,0,'2024-10-30 09:55:59',1,'',0),
(197,4,1,57,'2014','2014-05-15','AUTORIZAR LA CONVOCATORIA AL V CONCURSO PUBLICO DE PLAZAS DOCENTES CONTRATADOS 2014-II',4,0.1,'2024-10-30 09:56:42',1,'',1),
(198,4,1,58,'2014','0000-00-00','',0,0,'2024-10-30 09:57:11',1,'',0),
(199,4,1,59,'2014','2014-05-23','AUTORIZAR EL VIAJE EN COMISION DE SERVICIOS A LA CIUDAD DE AREQUIPA A LOS RESPONSABLES DE PROYECTOS DE INVESTIGACION',8,0.1,'2024-10-30 09:58:02',1,'',1),
(200,4,1,60,'2014','2014-05-27','AUTORIZAR EL VIAJE EN COMISION DE SERVICIOS A LA CIUDAD DE LIMA AL DR OSWALDO LUIZAR OBREGON',11,0.2,'2024-10-30 09:58:55',1,'',1),
(201,4,1,61,'2014','2014-06-02','INCOPORAR EL CUADRO DE PLAZAS APROBADO MEDIANTE RESOLUCION DE CONSEJO DE COMISION ORGANIZADOA NUM 57-2014--CO-UNAJ LAS PLAZAS CONVOCADAS 2013-I',4,0.1,'2024-10-30 10:00:49',1,'',1),
(202,4,1,62,'2014','2014-06-03','APROBAR POR UNANIMIDAD EL PLAN DE TRABAJO PARA LA EJECUCION DE LA CAMPALA DE DIFUSION Y PROMOCION DE LAS CARRERAS PROFESIONALES',9,0.1,'2024-10-30 10:02:04',1,'',1),
(203,4,1,63,'2014','2014-06-11','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO MARCO A CELEBRARSE ENTRE LA UNAJ Y EL MINISTERIO DEL AMBIENTE',17,0.2,'2024-10-30 10:03:03',1,'',1),
(204,4,1,64,'2014','2014-06-24','APROBAR LA DIRECTIVA PARA ARQUEO DE FONDOS PARA PAGOS EN EFECTIVO Y DE CAJA CHICA',17,0.2,'2024-10-30 10:04:00',1,'',1),
(205,4,1,65,'2014','0000-00-00','',0,0,'2024-10-30 10:04:10',1,'',0),
(206,4,1,66,'2014','0000-00-00','',0,0,'2024-10-30 10:04:23',1,'',0),
(207,4,1,67,'2014','2014-07-16','APROBAR LA ASIGNACION ADICIONAL POR PRODUCTIVIDAD',4,0.1,'2024-10-30 10:05:23',1,'',1),
(208,4,1,68,'2014','2014-07-16','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO DE ASOCIACIóN PARA LA EJECUCIóN DEL PROYECTO DISEñO DE UN SISTEMA DE CALEFACCIóN BASADO EN BIOCOMBUSTIBLES SóLIDOS DE BRIO-BRIQUETAS/PELLETS DERIVADO DE LA CASCARILLO DE CAFE PARA MITIGAR EL FRIO EN LOS HOGARES DALTIPLANO',16,0.2,'2024-10-30 10:10:32',1,'',1),
(209,4,1,69,'2014','2014-07-16','OTORGAR LICENCIA CON GOCE DE RENUMERACIONES DEL 21 AL 25 DE JULIO DE 2014 AL DOCENTE JUAN BAUTISTA ALVAREZ VILCAPAZA PARA PARTICIPAR EN EL 66 REUNIAO ANUAL DE SOCIEDAD BRASILEIRA PARA O PROGRESO DA CIENCIA (SBPC)',11,0.2,'2024-10-30 10:12:26',1,'',1),
(210,4,1,70,'2014','2014-07-17','OTORGAR SUBVENCION ECONOMICA A FAVOR DE LA ESTUDIANTES DE LA CARRERA DE GESTION PUBLICA SRTA FLOR DE BRUSELA APAZA APAZALA SUMA DE 1500',6,0.1,'2024-10-30 10:13:30',1,'',1),
(211,4,1,71,'2014','0000-00-00','',0,0,'2024-10-30 10:14:03',1,'',0),
(212,4,1,72,'2014','2014-07-22','AUTORIZAR LA LICENCIA POR MOTIVOS PARTICULARES DURANTE LOS DIAS 23 Y 24 DE JULIO DEL 2014 AL DR OSWALDO LUIZAR OBREGON',5,0.1,'2024-10-30 10:15:16',1,'',1),
(213,4,1,73,'2014','0000-00-00','',0,0,'2024-10-30 10:15:36',1,'',0),
(214,4,1,74,'2014','2014-08-14','AUTORIZAR AL DR OSWALDO LUIZAR OBREGON LICENCIA SIN GOCE DE HABER',9,0.1,'2024-10-30 10:16:24',1,'',1),
(215,4,1,75,'2014','2014-08-18','AUTORIZAR EL VIAJE EN COMISION DE SERVICIOS A LA CIUDAD DE LIMA AL ING JOSE LUIS CAHUANA JORGE',11,0.2,'2024-10-30 10:17:22',1,'',1),
(216,4,1,76,'2014','2014-08-18','APROBAR EL ACTA DE RESULTADO FINAL DEL V CONCURSO PUBLICO PARA CONTRATO DOCENTE DE LA UNAJ',17,0.2,'2024-10-30 10:18:08',1,'',1),
(217,4,1,77,'2014','2014-02-18','DECLARAR DESIERTA LAS 07 PLAZAS CORRESPONDIENTES A LOS CODIGOD 01,02,03,05,09,10,13 NO CUBIERTAS',2,0.1,'2024-10-30 10:19:08',1,'',1),
(218,4,1,78,'2014','2014-08-18','APROBAR LOS RESULTADOS DE LA EVALUACION DE PLANES DE TRABAJO DEL PROGRAMA DE SEMILLEROS EN INVESTIGACION Y DECLARAR LOS GANADORES A LOS SEMILLEROS',40,0.5,'2024-10-30 10:23:03',1,'',1),
(219,4,1,79,'2014','2014-09-18','EXPRESAR EL RECONOCIMIENTO Y FELICITACION INSTITUCIONAL A LOS MIEMBROS DE LA ASOCIACION CULTURAL ARTE AYMARA MAYKU POR EL XI FESTIVAL DE MUSICA ANDINA LATINOAMERICA 2014',7,0.1,'2024-10-30 10:24:43',1,'',1),
(220,4,1,79,'2014','2014-08-18','RESOLVER LA SITUACION CONTRACTUAL UNICAMENTE DEL RESONSABLE DEL PROYECTO DE INVESTIGACION EFECTOS DEL ARSENICO, PLOMO Y MERCURIO DE LA CONTAMINACION MINERA SOBRE LA BIOTICA ACUATICA EN EL CRUSTACEO HYALELLA SP Y EN MACROFITAS',12,0.2,'2024-10-30 10:26:55',1,'',1),
(221,4,1,80,'2014','2014-09-18','DESIGNAR AL ING TEOFILO NESTOR MONTES DE OCA VALENCIA COMO ASESOR DE LA OFICINA DE VICEPRESIDENCIA ADMINISTRATIVA',107,1.5,'2024-10-30 10:28:02',1,'',1),
(222,4,1,81,'2014','2014-09-03','CONTRATAR POR LA MODALIDAD DE INVITACION A LOS PROFESIONALES: MONGE CHARAJA JUAN RODOLFO, MARCONI QUISPOE PACO WILSON, CONDORI YUCRA REYNALDO, VERA BELTRAR MISAEL, HUPIRE CASTRO WILLIAM EVONY, BARRIGA FLORES PERCY',10,0.2,'2024-10-30 10:29:46',1,'',1),
(223,4,1,82,'2014','2014-09-02','AUTORIZAR LA ENCARGATURA COMO RESPONSABLE DE LA CARRERA PROFESIONAL DE ING AMBIENTAL Y FORESTAL DE LA UNAJ MG MARTIN FELIX CUADRADO HIDALGO',102,1.5,'2024-10-30 10:31:02',1,'',1),
(224,4,1,83,'2014','2014-09-03','RATIFICAR EL COMITE DE AUTOEVALUACION PREMANENTE DE LA UNAJ',2,0.1,'2024-10-30 10:32:02',1,'',1),
(225,4,1,84,'2014','2014-09-03','APROBAR EL PLAN DE TRABAJO Y DISEñO DE AUTOEVALUACIONDEL COMITE DE AUTOEVALUACION DEL SEGUNDO IDAE DE LA UNAJ',19,0.2,'2024-10-30 10:33:20',1,'',1),
(226,4,1,85,'2014','2014-09-05','AUTORIZAR EL VIAJE EN COMISION DE SERVICIOS DE CAPACITACION A LA CIUDAD DE LIMA A MARTHA ISABEL TENORIO CASTRO, NUñEZ ARTEGA SARA EYEMA Y NURCIA MARIA BUSTINCIO TURPO',9,0.2,'2024-10-30 10:35:00',1,'',1),
(227,4,1,86,'2014','2014-09-05','RENOVAR EL CONTRATO A LOS JEFES DE PRACTICA',16,0.2,'2024-10-30 10:35:47',1,'',1),
(228,4,1,87,'2014','2014-09-05','OTORGAR BECA POR ALIMENTOS A LOS SIGUIENTES ALUMNOS',50,0.7,'2024-10-30 10:36:03',1,'',1),
(229,4,1,88,'2014','2014-09-05','APROBAR LA DISTRIBUCION DE LA CARGA ACADEMICA A DESARROLLARSE EN EL SEMESTRE ACADEMICO 2014-II',9,0.1,'2024-10-30 10:37:05',1,'',1),
(230,4,1,89,'2014','0000-00-00','',0,0,'2024-10-30 10:39:10',1,'',0),
(231,4,1,90,'2014','2014-09-18','APROBAR EL REGLAMENTO PARA LA ACREDITACION DEL CONOCIMIENTO DE IDIOMAS',25,0.4,'2024-10-30 10:40:08',1,'',1),
(232,4,1,91,'2014','0000-00-00','',0,0,'2024-10-30 10:40:23',1,'',0),
(233,4,1,92,'2014','0000-00-00','',0,0,'2024-10-30 10:40:29',1,'',0),
(234,4,1,93,'2014','0000-00-00','',0,0,'2024-10-30 10:40:38',1,'',0),
(235,4,1,94,'2014','0000-00-00','',0,0,'2024-10-30 10:40:44',1,'',0),
(236,4,1,95,'2014','2014-09-22','ENCARGAR AL MG NORMAN JESUS BELTRAN CASTAÑON COMO RESPONSABLE DE LA CARRERA PROFESIONALDE ING EN ENERGIAS RENOVABLES',2,0.1,'2024-10-30 10:41:49',1,'',1),
(237,4,1,96,'2014','0000-00-00','',0,0,'2024-10-30 10:42:13',1,'',0),
(238,4,1,97,'2014','0000-00-00','',0,0,'2024-10-30 10:42:19',1,'',0),
(239,4,1,98,'2014','0000-00-00','',0,0,'2024-10-30 10:42:24',1,'',0),
(240,4,1,99,'2014','0000-00-00','',0,0,'2024-10-30 10:42:31',1,'',0),
(241,4,1,100,'2014','2014-09-23','EXPRESAR EL RECONOCIMIENTO Y FELICITACIÓN INSTITUCIONAL',2,0.1,'2024-10-30 10:43:21',1,'',1),
(242,4,1,101,'2014','2014-09-23','EXPRESAR EL RECONOCIMIENTO Y FELICITACION INSTITUCIONAL AL BACH NURCIA MARIA BUSTINCIO TURPO',2,0.1,'2024-10-30 10:44:40',1,'',1),
(243,4,1,102,'2014','2014-09-23','EXPRESAR EL RECONOCIMIENTO Y FELICITACION INSTITUCIONAL A LA BACH SARA EYEMA NUñEZ ARTEGA',2,0.1,'2024-10-30 10:45:52',1,'',1),
(244,4,1,103,'2014','2014-09-23','EXPRESAR EL RECONOCIMIENTO Y FELICITACION INSTITUCIONAL AL ING MARCO LARRY YUCRA LIMAHUAYA',2,0.1,'2024-10-30 10:47:03',1,'',1),
(245,4,1,104,'2014','2014-09-23','EXPRESAR EL RECONOCIMIENTO Y FELICITACION INSTITUCIONAL AL ING ARTURO VICENTE GONZALES PONCE',2,0.1,'2024-10-30 10:48:05',1,'',1),
(246,4,1,105,'2014','2014-09-23','EXPRESAR EL RECONOCIMIENTO Y FELICITACION INSTITUCIONAL AL ING JUAN JOSE QUISPE HUISA',2,0.1,'2024-10-30 10:49:06',1,'',1),
(247,5,1,106,'2014','2014-09-23','EXPRESAR EL RECONOCIMIENTO Y FELICITACION INSTITUCIONAL AL DR LUIS MARTIN HUAYLLAPUMA SANTA CRUZ',2,0.1,'2024-10-30 11:14:48',1,'',1),
(248,5,1,107,'2014','2014-09-23','EXPRESAR EL RECONOCIMIENTO Y FELICITACIóN INSTITUCIONAL AL DR BLANCA NIEVES CASTILLO PARADA DE QUISPE',2,0.1,'2024-10-30 11:17:13',1,'',1),
(249,5,1,108,'2014','2014-09-23','EXPRESAR EL RECONOCIMIENTO Y FELICITACIóN INSTITUCIONAL AL MSC CESAR PAUL LAQUI VILCA',2,0.1,'2024-10-30 11:18:01',1,'',1),
(250,5,1,109,'2014','2014-09-23','EXPRESAR EL RECONOCIMIENTO Y FELICITACIóN INSTITUCIONAL AL LIC ALBERTO JACINTO QUISPE CANAZA',2,0.1,'2024-10-30 11:19:16',1,'',1),
(251,5,1,110,'2014','2014-09-23','EXPRESAR EL RECONOCIMIENTO Y FELICITACIóN INSTITUCIONAL AL BACH MANHE JUNIOR VARGAS CHAVEZ',2,0.1,'2024-10-30 11:20:03',1,'',1),
(252,5,1,111,'2014','2014-09-23','EXPRESAR EL RECONOCIMIENTO Y FELICITACIóN INSTITUCIONAL AL MVZ PERCY ALBERTO BARRIGA FLORES',2,0.1,'2024-10-30 11:20:42',1,'',1),
(253,5,1,112,'2014','2014-09-23','EXPRESAR EL RECONOCIMIENTO Y FELICITACIóN INSTITUCIONAL AL ING JOSE LUIS CAHUANA JORGE',2,0.1,'2024-10-30 11:21:22',1,'',1),
(254,5,1,113,'2014','2014-09-23','EXPRESAR EL RECONOCIMIENTO Y FELICITACIóN INSTITUCIONAL AL BACH WALDYR GANOZA ANCO',2,0.1,'2024-10-30 11:22:32',1,'',1),
(255,5,1,114,'2014','2014-09-23','EXPRESAR EL RECONOCIMIENTO Y FELICITACIóN INSTITUCIONAL AL BACH WILY HUANCOLLO POMA',2,0.1,'2024-10-30 11:23:22',1,'',1),
(256,5,1,115,'2014','2014-09-23','EXPRESAR EL RECONOCIMIENTO Y FELICITACIóN INSTITUCIONAL A LA COMISION DE ADMISION',2,0.1,'2024-10-30 11:24:19',1,'',1),
(257,5,1,116,'2014','2014-09-23','EXPRESAR EL RECONOCIMIENTO Y FELICITACIóN INSTITUCIONAL AL LIC MISAEL VERA BELTRAN',2,0.1,'2024-10-30 11:25:19',1,'',1),
(258,5,1,117,'2014','2014-09-23','EXPRESAR EL RECONOCIMIENTO Y FELICITACIóN INSTITUCIONAL AL ING ANDRES VILCA MAMANI',2,0.1,'2024-10-30 11:25:48',1,'',1),
(259,5,1,118,'2014','2014-09-23','EXPRESAR EL RECONOCIMIENTO Y FELICITACIóN INSTITUCIONAL AL CEPRE PRE UNIVERSITARIO',2,0.1,'2024-10-30 11:26:29',1,'',1),
(260,5,1,119,'2014','2014-09-23','EXPRESAR EL RECONOCIMIENTO Y FELICITACIóN INSTITUCIONAL AL COMITE DE AUTOEVALUACION PERMANENTE',2,0.1,'2024-10-30 11:27:25',1,'',1),
(261,5,1,120,'2014','0000-00-00','',0,0,'2024-10-30 11:27:51',1,'',0),
(262,5,1,121,'2014','2014-09-25','DEJAR SIN EFECTO LA RESOLUCION DE CONSEJO DE COMISION ORGANIZADORA NUM 038-2013-CO-UNAJ.  APROBAR EL LOGOTIPO DE LA UNAJ',2,0.1,'2024-10-30 11:28:57',1,'',1),
(263,5,1,122,'2014','2014-10-07','AUTORIZAR EL VIAJE DE COMISION DE SERVICIOS POR CAPACITACION A LA CIUDAD DE LIMA A LA SRTA VILMA SARMIENTO MAMANI',8,0.1,'2024-10-30 11:30:07',1,'',1),
(264,5,1,123,'2014','2014-10-07','AUTORIZAR EL VIAJE DE COMISION DE SERVICIOS POR CAPACITACION A LA CIUDAD DE LIMA AL SR EDWIN CATACORA VIDANGOS',10,0.2,'2024-10-30 11:30:55',1,'',1),
(265,5,1,124,'2014','2014-10-07','AUTORIZAR EL VIAJE DE COMISION DE SERVICIOS POR CAPACITACION A LA CIUDAD DE LIMA AL DR EUSEBIO BENIQUE OLIVERA',8,0.2,'2024-10-30 11:31:47',1,'',1),
(266,5,1,125,'2014','2014-10-17','OTORGAR SUBVENCION ECONOMICA DE 500 NS A FAVOR DE LOS ESTUDIANTES DE LA CARRERA PROFESIONAL DE ING DE ENERGIAS RENOVABLES, COMO GANADOR DEL CONCURSO DE LOGOTIPOS',8,0.2,'2024-10-30 11:33:40',1,'',1),
(267,5,1,129,'2014','2014-10-21','RATIFICAR A LA COMISIóN DE ADMISION DESIGNADA CON RCCO 94-2013-CO-UNAJ',4,0.1,'2024-10-30 11:34:45',1,'',1),
(268,5,1,126,'2014','0000-00-00','',0,0,'2024-10-30 11:37:25',1,'',0),
(269,5,1,127,'2014','0000-00-00','',0,0,'2024-10-30 11:37:30',1,'',0),
(270,5,1,128,'2014','0000-00-00','',0,0,'2024-10-30 11:37:36',1,'',0),
(271,5,1,130,'2014','2014-10-21','RATIFICAR AL DIRECTORIO DEL CENTRO PRE UNIVERSITARIO DE LA UNAJ',4,0.2,'2024-10-30 11:38:22',1,'',1),
(272,5,1,131,'2014','2014-10-21','RATIFICAR AL DIRECTOR DE INVESTIGACION DE LA UNA CESAR PAUL LAQUI VILCA',2,0.1,'2024-10-30 11:39:17',1,'',1),
(273,5,1,132,'2014','2014-10-21','RATIFICAR A LA DRA CASTILLO PARADA DE QUISPE BLANCA NIEVES',3,0.1,'2024-10-30 11:40:08',1,'',1),
(274,5,1,133,'2014','2014-10-21','RATIFICAR AL DIRECTOR GENERAL DE EXTENSION UNIVERSITARIA Y PROYECCION SOCIAL',1,0.1,'2024-10-30 11:40:47',1,'',1),
(275,5,1,134,'2014','2014-10-22','AUTORIZAR LA LICENCIA CON GOCE DE REMUNERACIONES POR CAPACITACION OFICIALIZADA',21,0.3,'2024-10-30 11:41:54',1,'',1),
(276,5,1,135,'2014','0000-00-00','',0,0,'2024-10-30 11:42:16',1,'',0),
(277,5,1,136,'2014','2014-10-22','AUTORIZAR LA LICENCIA CON GOCE DE REMUNERACIONES POR CAPACITACION OFICIALIZADA A HENRY EDGARDO NINA MENDOZA',5,0.2,'2024-10-30 11:43:18',1,'',1),
(278,5,1,137,'2014','2014-10-22','APROBAR LA CALENDARIZACIONDE LAS ACTIVIDADES ACADEMICAS 2015 SEMESTRE I Y SEMESTRE II',10,0.2,'2024-10-30 11:44:47',1,'',1),
(279,5,1,138,'2014','0000-00-00','',0,0,'2024-10-30 11:45:14',1,'',0),
(280,5,1,139,'2014','2014-10-30','APROBAR EL PROYECTO PARA LA ELABORACION DEL PERIODICO DE LA UNAJ',6,0.1,'2024-10-30 11:46:00',1,'',1),
(281,5,1,140,'2014','2014-11-03','AUTORIZAR EL VIAJE DE COMISION DE SERVICIOS POR CAPACITACION A LA CIUDAD DE PIURA A LOS DOCENTES DE LA UNAJ',41,0.6,'2024-10-30 11:47:10',1,'',1),
(282,5,1,141,'2014','2014-11-03','AUTORIZAR EL VIAJE DE COMISION DE SERVICIOS POR CAPACITACION A LA CIUDAD DE AREQUIPA AL ING NORMAN JESUS BELTRAN CASTAÑON',15,0.2,'2024-10-30 11:48:18',1,'',1),
(283,5,1,143,'2014','2014-11-05','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO DE COOPERACION INTERINSTITUCIONAL EN LA UNAJ Y LA MUNICIPALIDAD PROVINCIAL DE LAMPA',7,0.2,'2024-10-30 11:49:20',1,'',1),
(284,5,1,144,'2014','2014-11-05','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO MARCO DE COOPERACION INSTERINSTITUCIONAL ENTRE EL MINISTERIO DE ENERGIA Y MINAS Y LA UNAJ -  CARELEC',13,0.3,'2024-10-30 11:50:32',1,'',1),
(285,5,1,145,'2014','2014-11-06','AUTORIZAR EL VIAJE DE COMISION DE SERVICIOS POR CAPACITACION A LA CIUDAD DE PUERTO MALDONADO AL MSC MARTIN CUADRADO HIDALGO',13,0.3,'2024-10-30 11:51:20',1,'',1),
(286,5,1,147,'2014','2014-11-06','AUTORIZAR LA HABILITACION DE 4640 BAJO MODALIDAD DE ENCARGO INTERNO POR LOS GASTOS DEL XI CONGRESO NACIONAL FORESTAL',17,0.6,'2024-10-30 11:52:20',1,'',1),
(287,5,1,148,'2014','2014-11-06','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO MARCO DE COOPERACION INTERINSTITUCIONAL DE PRESTACION DE SERVICIOS DE CAPACITACION E INVESTIGACION ENTRE LA UNAJ Y EL INSTITUTO SUPERIOR PEDAGOGICO PUNO',9,0.2,'2024-10-30 11:53:52',1,'',1),
(288,5,1,142,'2014','0000-00-00','',0,0,'2024-10-30 11:54:17',1,'',0),
(289,5,1,146,'2014','0000-00-00','',0,0,'2024-10-30 11:54:27',1,'',0),
(290,5,1,149,'2014','2014-11-07','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO MARCO DE COOPERACION INTERINSTITUCIONAL ENTRE LA UNJA Y EL GORE PUNO',27,0.6,'2024-10-30 11:55:39',1,'',1),
(291,5,1,150,'2014','2014-11-07','APROBAR EL PLAN DE TRABAJO CENTRO PRE UNIVERSITARIO DE LA UNAJ',32,0.4,'2024-10-30 11:56:34',1,'',1),
(292,5,1,151,'2014','0000-00-00','',0,0,'2024-10-30 11:56:55',1,'',0),
(293,5,1,152,'2014','2014-11-07','APROBAR EL PLAN OPERATIVO DE LA COMISION DE ADMISION 2015-I',25,0.4,'2024-10-30 11:57:35',1,'',1),
(294,5,1,153,'2014','2014-11-07','APROBAR LA DIRECTIVA QUE REGULA EL CODIGO DE ETICA DE LA UNAJ',37,0.4,'2024-10-30 11:58:33',1,'',1),
(295,5,1,154,'2014','2014-11-07','APROBAR EL EVENTO ACADEMICO AUTOGESTIONADO IV SEMANA DE LA GESTION PUBLICA Y DESARROLLO SOCIAL CURSOS Y CICLO DE CONFERENCIAS',12,0.2,'2024-10-30 13:48:53',1,'',1),
(296,5,1,155,'2014','2014-11-07','APROBAR EL PLAN DE ACTIVIDADES CONDUCENTES A BRINDAR CHOCOLATADA Y ENTREGA DE REGALOS A LOS NIñOS DEL CENTRO POBLADO DE AYABACAS',7,0.2,'2024-10-30 13:50:23',1,'',1),
(297,5,1,156,'2014','0000-00-00','',0,0,'2024-10-30 13:50:52',1,'',0),
(298,5,1,157,'2014','2014-11-14','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO DE COEDICION ENTE LA UNAJ Y EL INSTITUTO DE ESTUDIOS PERUANOS (IEP) CENTRO CARTOLOME DE LAS CASAS CBC',5,0.1,'2024-10-30 13:52:12',1,'',1),
(299,5,1,158,'2014','2014-11-25','APROBAR LA ACTUALIZACION Y MODIFICACION DE LA DIRECTIVA PARA EL OTORGAMIENTO Y RENDICION DE LOS GASTOS POR LA MODALIDAD DE ENCARGO INTERNO',15,0.2,'2024-10-30 13:53:16',1,'',1),
(300,5,1,159,'2014','2014-11-25','APROBAR LA DIRECTIVA PAA EL PROCESO DE CONCILIACION BANCARIA',12,0.2,'2024-10-30 13:56:31',1,'',1),
(301,5,1,160,'2014','2014-11-25','APROBAR EL MONTO DE ASIGNACION ADICIONAL POR PRODUCTIVIDAD CORRESPONDIENTE AL SEGUND SEMETRE ACADEMICO DICIEMBRE 2014 POR 77,600 NS',6,0.1,'2024-10-30 13:57:59',1,'',1),
(302,5,1,161,'2014','2014-11-27','AUTORIZAR LA HABILITACION DE 55,00.00 NS BAJO LA MODALIDAD DE MODALIDAD DE ENCARGO INTERNO POR GASTOS DE CANASTA NAVIDEñA',12,0.2,'2024-10-30 13:59:21',1,'',1),
(303,5,1,162,'2014','0000-00-00','',0,0,'2024-10-30 13:59:52',1,'',0),
(304,5,1,163,'2014','2014-12-03','RECONOCER AL GRUPO UNIVERSITARIO DE INVESTIGACION EN ENERGIAS RENOVABLES GUINER - ASOCIACION SIN FINES DE LUCRO',16,0.2,'2024-10-30 14:00:58',1,'',1),
(305,5,1,164,'2014','0000-00-00','',0,0,'2024-10-30 14:01:24',1,'',0),
(306,5,1,165,'2014','0000-00-00','',0,0,'2024-10-30 14:01:31',1,'',0),
(307,5,1,166,'2014','2014-12-22','APROBAR EL EXPEDIENTE TECNICO DE LA OBRA CREACION E IMPLEMENTACION DEL PABELLON DE LABORATORIOS GENERALES DE LA UNIVERSIDAD NACIONAL DE JULIACA CON CODIGO SNIP 274731',23,0.3,'2024-10-30 14:02:50',1,'',1),
(308,5,1,167,'2014','2014-12-22','APROBAR EL REGLAMENTO GENERAL DEL PROCESO DE ADMISIóN',23,0.3,'2024-10-30 14:03:43',1,'',1),
(309,5,1,168,'2014','2014-12-30','APROBAR EL PRESUPUESTO INSTITUCIONAL DE APERTURA DE GASTOS CORRESPONDIENTES AL AñO FISCAL 2015 PLIEGO 552',42,0.4,'2024-10-30 14:04:43',1,'',1),
(310,5,1,169,'2014','0000-00-00','',0,0,'2024-10-30 14:04:57',1,'',0),
(311,5,1,170,'2014','2014-12-30','OTORGAR VACACIONES REMUNERADAS DE 30 DIAS NATURALES AL PERSONAL ADMINISTRATIVO',8,0.1,'2024-10-30 14:05:47',1,'',1),
(312,5,1,171,'2014','2014-12-30','RECONOCER Y OTORGAR A LOS DOCENTES CONTRATADOS EL PAGO DE VACACIONES TRUNCAS',11,0.1,'2024-10-30 14:06:32',1,'',1),
(314,6,1,1,'2015','2015-01-15','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO DE COOPERACION INTERINSTITUCIONAL EN LA UNAJ Y LA UNIVERSIDAD NACIONAL DE INGENIERIA',13,0.2,'2024-11-04 11:07:50',1,'',1),
(315,6,1,2,'2015','2015-01-22','APROBAR EL PLAN ANUAL DE ADQUISICIONES Y CONTRATACIONES PACC NUM 001406 UNAJ',9,0.2,'2024-11-04 11:15:04',1,'',1),
(316,6,1,3,'2015','2015-01-22','AUTORIZAR EL VIAJE DE COMISION DE SERVICIOS POR CAPACITACION A LA CIUDAD DE LIMA AL SR EDWIN CATACORA VIDANGOS',8,0.1,'2024-11-04 11:37:10',1,'',1),
(317,6,1,4,'2015','2015-01-22','APROBAR LA DIRECTIVA DE CURSOS DE NIVELACION O RECUPERACION VACACIONAL DEL CICLO ACADEMICO 2014',26,0.3,'2024-11-04 11:38:11',1,'',1),
(318,6,1,5,'2015','2015-02-06','APROBAR EL REGLAMENTO DE BECA POR ALIMENTOS',24,0.3,'2024-11-04 11:38:51',1,'',1),
(319,6,1,6,'2015','2015-02-11','APROBAR EL PLAN ANUAL DE LA DIRECCION DE INVESTIGACION Y DE CREACION INTELECTUAL Y ARTISTICA 2015',18,0.2,'2024-11-04 11:39:43',1,'',1),
(320,6,1,7,'2015','2015-03-11','DELEGAR AL DR EUSEBIO BENIQUE OLIVERA AL VICE RECTORADO DE INVESTIGACION Y EL DR EUSEBIO BENIQUE OLIVERA LA FIRMA DE CONTRATOS DE PROYECTOS DE INVESTIGACION',2,0.1,'2024-11-04 11:41:18',1,'',1),
(321,6,1,8,'2015','2015-03-11','APROBAR LAS BASES DEL II CONCURSO DE PROYECTOS DE INVESTIGACION DOCENTE CON RECURSOS DETERMINADOS DEL 2015Q',40,0.4,'2024-11-04 11:42:13',1,'',1),
(322,6,1,9,'2015','2015-03-11','APROBAR EL REGLAMENTO PARA LA PRESTACIóN DE LOS PROYECTOS DE INVESTIGACIóN FINANCIADOS CON RECURSOS DETERMINADOS DEL 2015',29,0.3,'2024-11-04 11:43:32',1,'',1),
(323,6,1,10,'2015','2015-03-11','APROBAR LA DIRECTIVA DE EJECUCION DE GSATOS EN LOS PROYECTOS DE INVESTIGACION DOCENTE CON RECURSOS DETERMINADOS',28,0.4,'2024-11-04 12:01:02',1,'',1),
(324,6,1,11,'2015','2015-03-12','AUTORIZAR EL VIAJE EN COMISION DE SERVICIOS A LA CIUDAD DE LIMA AL DOCENTE ABRAHAM MELITON CONTRERAS VARGAS',6,0.1,'2024-11-04 12:02:24',1,'',1),
(325,6,1,12,'2015','2015-03-12','OTORGAR ASIGNACION ADICIONAL POR PRODUCTIVIDAD A LOS MIEMBROS DE LA COMISION ORGANIZADORA Y SECRETARIO GENERAL',9,0.1,'2024-11-04 12:03:33',1,'',1),
(326,6,1,13,'2015','2015-03-12','APROBAR EL MONTO DE LOS PAGOS PARA LO MIEMBROS DEL JURADO DE LOS PROCESOS DE EXAMEN DE SUFICIENCIA PARA CERTIFICACIóN Y EXAMEN PARA NIVELACIóN',17,0.2,'2024-11-04 12:06:13',1,'',1),
(327,6,1,14,'2015','2015-04-01','AMPLIAR EL PLAZO DE LA RATIFICACION HASTA EL 9 DE OCTUBRE 2015 A LA COMISION DE ADMISION',3,0.1,'2024-11-04 12:07:35',1,'',1),
(328,6,1,15,'2015','2015-04-01','AMPLIAR EL PLAZO DE RATIFICACION HASTA EL 9 DE OCTUBRE DEL 2015 AL DIRECTORIO DEL CENTRO PRE UNIVERSITARIO DE LA UNAJ',3,0.1,'2024-11-04 12:08:33',1,'',1),
(329,6,1,16,'2015','2015-04-01','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO MARCO DE COOPERACION INTERINSTITUCIONAL ENTRE LA UNJA Y LA MUNICIPALIDAD PROVINCIAL DE SAN ROMAN JULIACA',9,0.1,'2024-11-04 12:10:17',1,'',1),
(330,6,1,18,'2015','2015-04-22','APROBAR LOS TERMINOS DE LA PROPUESTA DE CONVENIO DE SERVICIOS ENTRE LA UNIVERSIDAD NACIONAL DE JULIACA Y LA EMPRESA DE TELECOMUNICACIONES VIETTEL PERU SAC',66,1,'2024-11-04 12:12:08',1,'',1),
(331,6,1,19,'2015','2015-04-24','APROBAR EL ESTATUTO DE LA UNAJ EL MISMO QUE CONSTA XV CAPITULOS 285 ARTICULOS 11 DISPOSICIONES',83,1,'2024-11-04 12:13:20',1,'',1),
(332,6,1,20,'2015','2015-05-15','OTORGUESE ASIGNACION ADICIONAL POR PRODUCTIVIDAD A LOS MIEMBROS DE LA COMISION ORGANIZADORA Y SECRETARIO GENERAL',10,0.2,'2024-11-04 12:14:28',1,'',1),
(333,6,1,21,'2015','2015-05-15','APROBAR EL PLAN OPERATIVO DE LA COMISION DE ADMISION 2015-II',18,0.2,'2024-11-04 12:15:43',1,'',1),
(334,6,1,22,'2015','2015-05-15','AMPLIAR EL PLAZO DE RATIFICACION HASTA EL 9 DE OCTUBRE DE 2015 AL DIRECTOR DE INVESTIGACION DE LA UNAJ, MSC CESAR PAUL LAQUI VILCA',3,0.1,'2024-11-04 12:17:10',1,'',1),
(335,6,1,23,'2015','2015-05-15','AMPLIAR EL PAZO DE RATIFICACION HASTA EL 9 DE OCTUBRE DE 2015 AL DIRECTOR GENERAL DE EXTENSION UNIVERSITARIA Y PROYECCION SOCIAL DE LA UNA DC ABRAHAM MELITON CONTRERAS VARGAS',2,0.1,'2024-11-04 12:18:27',1,'',1),
(336,6,1,24,'2015','2015-05-15','AMPLIAR EL PLAZO DE RATIFICACION HASTA EL 9 DE OCTUBRE DE 2015 DRA CASTILLO PARADA DE QUISPE BLANCA NIEVES COMO JEFA DE LA OFICINA DE BIENESTAR UNIVERSITARIO',2,0.1,'2024-11-04 12:19:42',1,'',1),
(337,6,1,25,'2015','2015-05-15','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO DE COOPERACION INTERINSTITUCIONAL EN LA UNAJ Y LA COPERATIVA MINERA COMUNITARIA CERRILLOS RLTD COOMICER',24,0.2,'2024-11-04 12:20:58',1,'',1),
(338,6,1,26,'2015','2015-05-15','APROBAR EL EXPEDIENTE TECNICO DE PIP CREACION E IMPLMENTACION DEL AUDITORIUM DE LA UNAJ',3,0.1,'2024-11-04 12:22:29',1,'',1),
(339,6,1,27,'2015','2015-06-05','ENCARGAR AL SR VICEPRESIDENTE ADMINISTRATIVO DC EUSEBIO BENIQUE OLIVERA',2,0.1,'2024-11-04 12:23:37',1,'',1),
(340,6,1,28,'2015','2015-06-05','OTORGAR BECA POR ALIMENTOS CORRESPONDIENTES AL SEMESTRE ACADEMICO 2015-I',15,0.2,'2024-11-04 12:24:48',1,'',1),
(341,6,1,29,'2015','2015-06-05','APROBAR EL EXPEDIENTE TECNICO DEL PIP MEJORAMIENTO DEL SERVICIO DE TRANSPORTE UNIVERSITARIO DE LA UNAJ SNIP 284854',25,0.3,'2024-11-04 12:25:57',1,'',1),
(342,6,1,30,'2015','2015-06-12','APROBAR EL PLAN DE TRABAJO PARA EL DESARROLLO DEL II CONCURSO SEMILLEROS EN INVESTIGACION EN LA UNAJ',34,0.3,'2024-11-04 12:27:24',1,'',1),
(343,6,1,31,'2015','2015-06-15','AUTORIZAR EL VIAJE DE COMISION DE SERVICIOS POR CAPACITACION A LA CIUDAD DE LIMA AL DR EUSEBIO BENIQUE OLIVERA',23,0.2,'2024-11-04 12:28:18',1,'',1),
(344,6,1,32,'2015','2015-06-24','DESIGNAR LA COMISION DE EVALUACION PARA EL OTORGAMIENTO DE LA ASIGNACION ADICIONAL POR PRODUCTIVIDAD CORRESPONDIENTE AL SEMESTRE - I AñO 2015',2,0.1,'2024-11-04 12:29:39',1,'',1),
(345,6,1,33,'2015','2015-06-24','ENCARGAR AL ING ARTURO VICENTE GONZALES PONCE COMO JEFE DE LA OFICINA DE SERVICIOS GENERALES A PARTIR DEL 1 DE JULIO DEL 2015',2,0.1,'2024-11-04 12:30:48',1,'',1),
(346,6,1,34,'2015','2015-06-25','MODIFICAR EL ANEXO DE LA RESOLUCION DE CONSEJO DE COMISION ORGANIZACION N° 030-2015-CO-UNAJ BASES PARA EL II CONCURSO SEMILLEROS EN  INVESTIGACION EN LA UNAJ',5,0.1,'2024-11-04 12:32:46',1,'',1),
(347,6,1,36,'2015','2015-07-01','OTORGAR SUBVENCION ECONOMICA A FAVOR DEL DOCENTE JULIO EDUARDO TORRES PALLARA POR LA SUMA 1500',19,0.2,'2024-11-04 12:34:17',1,'',1),
(348,7,1,38,'2015','2015-07-01','APROBAR LA DIRECTIVA DE ACTIVIDADES ACADEMICAS 2015',52,0.8,'2024-11-04 14:11:10',1,'',1),
(349,7,1,39,'2015','2015-07-01','EXPRESAR EL RECONOCIMIENTO Y FELICITACION INSTITUCIONAL A LA COMISION DE ADMISION Y SUB COMISIONES',403,4.3,'2024-11-04 14:13:08',1,'2 TOMOS',1),
(350,7,1,40,'2015','2015-07-06','APROBAR LA EJECUCIóN DEL DIPLOMADO DE INGENIERíA DE ENERGíAS RENOVABLES Y EFICIENCIA ENERGéTICA Y 8 MóDULOS',74,0.8,'2024-11-04 14:14:30',1,'',1),
(351,7,1,42,'2015','2015-08-18','APROBAR EL PLAN DE TRABAJO FORMULACIóN DE PRINCIPALES DOCUMENTOS DE GESTIóN DE LA UNAJ, EN EL PROCESO DE ADECUACIóN DE LA NUEVA LEY UNIVERSITARIA',24,0.3,'2024-11-04 14:16:57',1,'',1),
(352,7,1,43,'2015','2015-08-18','RATIFICAR LA APROBACION DE LOS PROYECTOS DE INVESTIGACIóN, EVALUADOS Y APROBADOS POR LA COMISION DE EVALUACIóN DEL II CONCURSO DE PROYECTOS DE INVESTIGACIóN DOCENTE',120,1.5,'2024-11-04 14:18:32',1,'',1),
(353,7,1,41,'2015','0000-00-00','',0,0,'2024-11-04 14:20:20',1,'',0),
(354,7,1,44,'2015','2015-08-19','APROBAR EL PLAN DE TRABAJO CENTRO PRE UNIVERSITARIO DE LA UNAJ CICLO 2015-II',39,0.5,'2024-11-04 14:23:16',1,'',1),
(355,7,1,45,'2015','2015-08-19','APROBAR LA AMPLIACIóN DE PRESUPUESTO POR LA SUMA DE 5821 PARA EL PROYECTO SEMILLEROS EN INVESTIGACION BIODIGESTOR',52,0.6,'2024-11-04 14:25:01',1,'',1),
(356,7,1,46,'2015','2015-08-19','EXPRESAR EL RECONOCIMIENTO Y FELICITACIóN INSTITUCIONALA LOS DIRECTIVOS DEL CENTRO PRE UNIVERSITARIO',201,2.6,'2024-11-04 14:26:20',1,'',1),
(357,8,1,47,'2015','2015-08-19','APROBAR EL PLAN DE TRABAJO DE ACCION DE TUTORIA 2015-II',37,0.4,'2024-11-04 15:06:57',1,'',1),
(358,8,1,48,'2015','0000-00-00','',0,0,'2024-11-04 15:10:00',1,'',0),
(359,8,1,49,'2015','2015-09-09','OTORGAR BECA POR ALIMENTOS SEMESTRE ACADEMICO 2015-II',18,0.2,'2024-11-04 15:10:51',1,'',1),
(360,8,1,50,'2015','2015-09-09','EXPRESAR A NOMBRE DE LA UNAJ UN ESPECIAL RECONOCIMIENTO Y FELICITACION INSTITUCIONAL A LA COMISION DE ADMISION 2015-II',332,4.2,'2024-11-04 15:12:24',1,'2 TOMOS',1),
(361,8,1,51,'2015','2015-09-09','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO MARCO DE COOPERACION ACADEMICA CIENTIFICA Y CULTURA ENTRE LA UNAJ Y LA UNIVERSIDAD NACIONAL MAYOR DE SAN MARCOS',7,0.2,'2024-11-04 15:13:45',1,'',1),
(362,8,1,52,'2015','2015-09-09','APROBAR LOS TÉRMINOS DE LA PROPUESTA DEL CONVENIO DE COOPERACION INTERINSTITUCIONAL EN LA UNAJ Y LA FABRICA DE TEJIDOS CHECTUYOC SA',11,0.2,'2024-11-04 15:14:57',1,'',1),
(363,8,1,53,'2015','2015-09-09','APROBAR EL SEGUNDO INFORME DE AUTOEVALUACION CORRESPONDIENTE AL AñO 2014',122,1.5,'2024-11-04 15:16:10',1,'',1),
(364,8,1,54,'2015','0000-00-00','',0,0,'2024-11-04 15:16:25',1,'',0),
(365,8,1,55,'2015','2015-09-10','AUTORIZAR EL VIAJE EN COMISION DE SERVICIOS AL DISTRITO DE SAN GABAN PROVINCIA DE CARABAYA',9,0.1,'2024-11-04 15:18:19',1,'',1),
(366,8,1,56,'2015','2015-09-11','APROBAR EL PLAN DE SALIDA A EVENTO NACIONAL PARA PARTICIPAR EN EL XII CONGRESO NACIONAL DE CIENCIA Y TECNOLOGIA DE ALIMENTOS COCACYTA 2015',17,0.2,'2024-11-04 15:19:29',1,'',1),
(367,8,1,57,'2015','2015-09-11','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO ESPECIFICO DE MOVILIDAD DE DOCENTES Y ESTUDIANT4ES ENTRE LA FACULTAD DE ING INDUSTRIAL DE LA UNIVERSIDAD NACIONAL DE SAN MARCOS Y LA UNAJ',5,0.1,'2024-11-04 15:21:07',1,'',1),
(368,8,1,58,'2015','2015-09-11','APROBAR EL PLAN DE VIAJE VISITA GUIADA A PLANTA CONGRESO Y SIMPOSIO UNSA 2015',26,0.4,'2024-11-04 15:57:40',1,'',1),
(369,8,1,59,'2015','2015-09-14','APROBAR EL PLAN DE TRABAJO DE PARTICIPACION EN EL IV CONGRESO NACIONAL DE INGENIERIA TEXTIL 2015',16,0.2,'2024-11-04 15:59:01',1,'',1),
(370,8,1,60,'2015','2015-09-18','APROBAR EL PLAN DE TRABAJO DE VISITA GUIADA AL SANTUARIO NACIONAL DE MEGANTONI',24,0.3,'2024-11-04 16:00:08',1,'',1),
(371,8,1,61,'2015','2015-09-18','DESIGNAR A LA COMISION DE ELABORACION DE BASES Y REGLAMENTO A FIN DE CONVOCAR A CONCURSO PUBLICO NACIONAL DE ACCESO A LA FUNCION DOCENTE EN SU MODALIDAD DE ORDINARIO',2,0.1,'2024-11-04 16:01:57',1,'',1),
(372,8,1,62,'2015','0000-00-00','',0,0,'2024-11-04 16:02:13',1,'',0),
(373,8,1,63,'2015','2015-10-01','DESISTE DE LA UNIDAD EJECUTORA DEL PROYECTO DE CREACION E IMPLEMENATACION DEL AUDITORIUM UNIVERSITARIO DE LA UNAJ CODIGO SNIP 273995',12,0.2,'2024-11-04 16:04:47',1,'',1),
(374,8,1,64,'2015','2015-10-01','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO MARCO D COOPERACION INTERINSTITUCIONAL ENTRE EL INSTITUTO GEOLOGICO MINERO Y METALURGICO Y LA UNAJ',17,0.2,'2024-11-04 16:05:59',1,'',1),
(375,8,1,66,'2015','2015-10-12','ENCARGAR A DR COILO WILFREDO ZAMALLOA MASIAS COMO DIRECTOR DE LA ESCUELA PROFESIONAL DE ING AMBIENTAL Y FORESTAL Y OTROS',3,0.1,'2024-11-04 16:07:41',1,'',1),
(376,8,1,67,'2015','2015-10-12','DAR POR CONCLUIDA LA DISIGNACION DE LA COMISION DE ADMISION DE LA UNAJ Y DESIGNAR LA NUEVA COMISION DE PERMANENTE DE ADMISION A PARTIR DEL 13 DE OC 2015',2,0.1,'2024-11-04 16:08:58',1,'',1),
(377,8,1,68,'2015','2015-10-12','DAR POR CONCLUIDA LA DISIGNACION DEL DIRECTORIO DEL CEPRE UNAJ Y DESIGNAR AL NUEVO DIRECTORIO CEPRE  A PARTIR DEL 13 DE OC 2015',2,0.1,'2024-11-04 16:10:49',1,'',1),
(378,8,1,69,'2015','2015-10-12','DAR POR CONCLUIDA LA ENCARGATURA DE DRA BLANCA NIEVES CASTILLO PARADA COMO JEFA DE LA OFICINA DE BIENESTAR UNIVERSITARIO',2,0.1,'2024-11-04 16:11:43',1,'',1),
(379,8,1,70,'2015','2015-10-12','DESIGNAR AL DR ABRAHAM MELITON CONTRERAS VARGAS COMO DIRECTOR DE PROYECCION SOCIAL DE LA UNAJ',2,0.1,'2024-11-04 16:12:32',1,'',1),
(380,8,1,71,'2015','2015-10-12','DESIGNAR AL MSC CESAR PAUL LAQUI VILCA',2,0.1,'2024-11-04 16:12:56',1,'',1),
(381,8,1,72,'2015','2015-10-12','DAR POR CONCLUIDA LA DISIGNACION DEL DIRECTOR DEL INSTITUTO DE IDIOMAS DE LA UNAJ Y DESIGNAR A HENRY EDGARDO NINA MENDONZA COMO DIRECTOR DE IDIOMAS',2,0.1,'2024-11-04 16:14:02',1,'',1),
(382,8,1,73,'2015','2015-10-12','DESIGNAR AL DOCENTE MSC RUBEN WILFREDO JILAPA HUMPIRI',2,0.1,'2024-11-04 16:14:35',1,'',1),
(383,8,1,74,'2015','2015-10-12','CONFORMAR LA COMISION DE EVALUACION Y CERTIFICACION DE LA UNAJ',2,0.1,'2024-11-04 16:15:10',1,'',1),
(384,8,1,75,'2015','2015-10-12','DESIGNAR AL LIC LUIS MARTIN HUAILLAPUMA SANTA CRUZ COMO DIRECTOR GENERAL DE SERVICIOS ACADEMICOS',1,0.1,'2024-11-04 16:15:56',1,'',1),
(385,8,1,76,'2015','2015-10-14','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO DE COOPERACION INTERINSTITUCIONAL EN LA UNAJ Y EL INSTITUTO DE EDUCACION SUPERIOR TECNOLOGICO SANTA ROSA',12,0.2,'2024-11-04 16:17:23',1,'',1),
(386,8,1,77,'2015','2015-10-29','APROBAR LAS BASES DEL CONCURSO PUBLICO PARA EL ACCESO A LA FUNCION DOCENTE MODALIDAD ORDINARIO',69,1,'2024-11-04 16:18:15',1,'',1),
(387,8,1,78,'2015','2015-10-30','APROBAR EL PLAN OPERATIVO PARA EL PROCESO DE ADMISION 2016-I',10,0.2,'2024-11-04 16:18:59',1,'',1),
(388,8,1,79,'2015','2015-10-29','APROBAR EL REGLAMENTO GENERAL DEL PROCESO DE ADMISION DE LA UNAJ',19,0.3,'2024-11-04 16:19:35',1,'',1),
(389,8,1,80,'2015','2015-10-29','OTORGAR APOYO ECONOMICO POR SALUD A FAVOR DE SR LUIS ANTONIO QUISPE SUCASAIRE ESTUDIANTE DEL V SEMESTRE DE LA ESCUELA PROFESIONAL DE GESTIóN PUBLICA Y DESARROLLO SOCIAL',26,0.4,'2024-11-04 16:20:40',1,'',1),
(390,8,1,81,'2015','2015-10-03','AUTORIZAR EL VIAJE DE COMISION DE SERVICIOS POR CAPACITACION A LA CIUDAD DE LIMA CALLAO A LOS DOCENTES JESUS LUZMILA BENIQUE CARREON, SUCY ALICIA CABALLERO APAZA, ZENTENO ZENTENO WILLIAM, PINEDA TAPIA JOSE LUIS Y TORRES PALLARA JULIO',11,0.2,'2024-11-04 16:22:11',1,'',1),
(391,8,1,82,'2015','2015-11-05','DESIGNAR AL EQUIPO EVALUADRO DE LA OFICIANA DE PROGRAMACION E INVERSIONES',8,0.1,'2024-11-04 16:25:54',1,'',1),
(392,8,1,83,'2015','2015-11-05','AUTORIZAR LA INCORPORACION DEL DC LUIS ALBERTO CONDEZO HOYOS COMO ASESOR EXTERNO EN EL PROYECTO DE INVESTIGACION TITULADO OBTENCIóN DE COLORANTES DE QUINUA (CHENOPODIUM QUINOA WILLD) Y SU ESTABILIZACION MEDIANTE ENCAPSULAMIENTO POR AUTOMATIZACION EN MALTODEXTRINA',33,0.5,'2024-11-04 16:27:51',1,'',1),
(393,8,1,86,'2015','2015-11-06','APROBAR LA CONVOCATORIA AL CONCURSO PUBLICO NACIONAL PARA NOMBRAMIENTO DE DOCENTES',62,0.8,'2024-11-04 16:29:10',1,'02 RESOLUCION EN DUPLICADO',1),
(394,8,1,88,'2015','2015-12-04','DESIGNAR LA COMISION DE EVALUACION PARA EL OTORGAMIENTO DE LA ASIGNACION ADICIONAL POR PRODUCTIVIDAD CORRESPONDIENTE AL SEMESTRE II AñO ACADEMICO 2015',2,0.1,'2024-11-04 16:31:02',1,'',1),
(395,8,1,96,'2015','2015-12-15','RECONOCER Y OTORGAR A LOS DOCENTES CONTRATADOS EL PAGO DE VACACIONES TRUNCAS',10,0.2,'2024-11-04 16:31:57',1,'',1),
(396,8,1,97,'2015','2015-12-24','APROBAR LOS RESULTADOS FINALES DEL CONCURSO PUBLICO NACIONAL DE NOMBRAMIENTO DE DOCENTES PARA LA UNAJ 34 PLAZAS',8,0.1,'2024-11-04 16:32:57',1,'',1),
(397,8,1,100,'2015','2015-12-24','APROBAR EL PRESUPUESTO INTERINSTITUCIONAL DE APERTURA DE GASTOS CORRESPONDIENTE AL AñO FISCAL 2016 PLIEGO 552',16,0.2,'2024-11-04 16:33:56',1,'',1),
(398,8,1,101,'2015','2015-12-28','APROBAR EL PLAN DE TRABAJO DEL SEGUNDO CICLO DEL CEPRE UNAJ 2016-I',35,0.5,'2024-11-04 16:34:43',1,'',1),
(399,9,1,1,'2016','2016-01-04','APROBAR EL PLAN DE TRABAJO DENOMINADO VISITA A DIFERENTES PROVINCIAS DE LA REGION A FIN DE DIFUNDIR Y ESTABLECER ALIADOS ESTRATEGICOS PARA EL PROCESO DE ADMISION',9,0.1,'2024-11-06 10:57:46',1,'',1),
(400,9,1,2,'2016','0000-00-00','No Encontrado',0,0,'2024-11-06 11:19:46',1,'',0),
(401,9,1,3,'2016','0000-00-00','No Encontrado',0,0,'2024-11-06 11:19:54',1,'',0),
(402,9,1,4,'2016','2016-01-11','DAR POR CONCLUIDA LA DESIGNACIóN DEL DIRECTOR DE CEPRE UNAJ Y DESIGNAR AL NUEVO DIRECTOR MSC DAVID HEACLIO CONDORI CALLA',2,0.1,'2024-11-06 11:23:31',1,'',1),
(403,9,1,5,'2016','2016-01-11','DAR POR CONCLUIDA LA DESIGNACIóN DEL JEFE DE LA OFICINA EJECUTIVA DE COOPERACION TECNICA DE LA UNA MSC RUBEN WILFREDO JILAPA HUMPIRI',2,0.1,'2024-11-06 11:24:40',1,'',1),
(404,9,1,6,'2016','2016-01-11','DAR POR CONCLUIDA LA DESIGNACIóN DE LA MSC INGRID  ROSSANA RODRIGUEZ CHOKEWANCA COMO JEFA DE LA OFICINA DE BIENESTAR UNIVERSITARIO Y ASUNTOS ESTUDIANTILES',2,0.1,'2024-11-06 11:25:52',1,'',1),
(405,9,1,7,'2016','2016-01-11','DAR POR CONCLUIDA LA DESIGNACIóN DE LA COMISION DE EVALUACION Y CERTIFICACION A LOS DOCENTES DRA BLANCA NIEVES CASTILLO PARADA, MSC JOSE QUIñONEZ CHOQUECOTA Y MSC ENRIQUE JOTADELO MAMANI MAMANI Y DESIGNAR A LA NUEVA COMISION',2,0.1,'2024-11-06 11:29:42',1,'',1),
(406,9,1,8,'2016','2016-01-12','APROBAR EL PLAN ANUAL DE CONTRATACIONES PAC DE LA UNIDAD EJECUTORA 1406 PARA EL EJERCICIO PRESUPUESTAL 2016',5,0.1,'2024-11-06 11:30:34',1,'',1),
(407,9,1,9,'2016','0000-00-00','No Encontrado',0,0,'2024-11-06 11:30:46',1,'',0),
(408,9,1,10,'2016','0000-00-00','No Encontrado',0,0,'2024-11-06 11:30:51',1,'',0),
(409,9,1,11,'2016','2016-01-22','APROBAR EL PLAN DE TRABAJO DENOMINADO CURSO TALLER VACACIONAL QUECHUA Y AIMARA',15,0.2,'2024-11-06 11:31:40',1,'',1),
(410,9,1,12,'2016','2016-01-26','AUTORIZAR LA LICENCIA SIN GOCE DE REMUNERACIONES AL DOC OSWALDO LUIZAR OBREGON',4,0.1,'2024-11-06 11:32:41',1,'',1),
(411,9,1,13,'2016','2016-02-04','APROBAR LA DIRECTIVA PARA VIAJES Y SALIDAS DE ESTUDIOS EN LA UNAJ',18,0.2,'2024-11-06 11:33:39',1,'',1),
(412,9,1,14,'2016','2016-02-04','AUTORIZACIóN EL CAMBIO DE RéGIMEN DE DEDICACIóN EN VíA DE REGULACIóN DE TIEMPO COMPLETO A TIEMPO PARCIAL, EN FORMA TEMPORAL A FAVOR DEL DOCENTE JEAN ROGER FARFAN GAVANCHO',6,0.2,'2024-11-06 11:35:30',1,'',1),
(413,9,1,15,'2016','2016-02-08','DESIGNAR AL ING ANSELMO QUISPE CRUZ COMO ESPECIALISTA PARA EL PROCESO DE RECEPCION DE VEHICULOS ADQUIRIDOS MEDIANTE PROCESO DE SELECCION LICITACION 1-2015/CEAH-UNAJ',14,0.2,'2024-11-06 11:36:59',1,'',1),
(414,9,1,16,'2016','2016-02-10','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO MARCO DE COOPERACION INTERINSTITUCIONAL ENTRE LA UNAJ Y LA COOPERATIVA AGRARIA ATAHUALPA JERUSALEM DE TRABAJADORES LTD GRANJA PORCON',7,0.2,'2024-11-06 11:40:18',1,'',1),
(415,9,1,17,'2016','2016-02-10','APROBAR EL REGLAMENTO DE BECA POR ALIMENTOS',18,0.2,'2024-11-06 11:40:58',1,'',1),
(416,9,1,18,'2016','2016-02-10','APROBAR EL REGLAMENTO GENERAL DEL CICLO VACACIONAL PARA ESTUDIANTES DE PRE GRADO DE LA UNAJ EN EL INSTITUTO DE IDIOMAS Y EL PLAN PARA EL DESARROLLO DEL CICLO EN EL PERIODO VACACIONAL SEGUN EL PROGRAMA CIRCULAR DEL IDIOMA INLGES PARA ALUMNOS REGULARES DE LA UNAJ',12,0.2,'2024-11-06 11:43:01',1,'',1),
(417,9,1,19,'2016','2016-02-10','DESIGNAR A LOS RESPONSABLES DE LOS ORGANOS DE LINEA EN EL AMBITO DE LA INVESTIGACION',5,0.1,'2024-11-06 11:43:46',1,'',1),
(418,9,1,20,'2016','2016-02-10','APROBAR EL NUEVO ORGANIGRAMA ESTRUCTURAL DE LA UNAJ',2,0.1,'2024-11-06 14:17:05',1,'',1),
(419,9,1,21,'2016','2016-02-10','RATIFICAR LA APROBACION DEL PLAN DE TRABAJO DENOMINADO FORMULACION, EJECUCION, REVISION Y ACTUALIZACION DE LAS ESTRUCTURAS CURRICULARES 2015',13,0.2,'2024-11-06 14:18:14',1,'',1),
(420,9,1,22,'2016','2016-02-17','AUTORIZAR EL FONDO FIJO PARA CAJA CHICA EN FORMA MENSUAL Y RENOBABLE PARA EL AñO 2016',2,0.1,'2024-11-06 14:19:04',1,'',1),
(421,9,1,23,'2016','0000-00-00','No Encontrado',0,0,'2024-11-06 14:19:19',1,'',0),
(422,9,1,24,'2016','2016-02-17','DESIGNAR A LOS RESPONSABLES DE COORDINACIóN EN EL áMBITO DE LA INVESTIGACIóN',7,0.1,'2024-11-06 14:20:16',1,'',1),
(423,9,1,25,'2016','2016-02-24','RECONOCER Y OTORGAR VACACIONES TRUNCAS Y VACACIONES NO GOZADAS A FAVOR DEL DOC OSWALDO LUIZAR OBREGON',9,0.1,'2024-11-06 14:21:22',1,'',1),
(424,9,1,26,'2016','2016-02-25','RECONOCER Y OTORGAR VACACIONES TRUNCAS Y VACACIONES NO GOZADAS A FAVOR DEL DR EDWIN CATACORA VIDANGOS',9,0.1,'2024-11-06 14:22:31',1,'',1),
(425,9,1,27,'2016','2016-02-25','RECONOCER Y OTORGAR VACACIONES TRUNCAS Y VACACIONES NO GOZADAS A FAVOR DEL DR EUSEBIO BENIQUE OLIVERA',23,0.3,'2024-11-06 14:23:21',1,'',1),
(426,9,1,28,'2016','2016-02-26','DAR POR CONCLUIDA LA DESIGNACIóN DEL DIRECTORIO DEL INSTITUTO DE IDIOMAS',2,0.1,'2024-11-06 14:24:11',1,'',1),
(427,9,1,30,'2016','2016-02-26','FORMALIZAR LA ELABORACION DEL PLAN ESTRATEGICO INSTITUCIONAL 2016 - 2018.  ENCARGAR A DR JESUS EVARISTO TUMI QUISPE LA FORMULACION DEL PLAN ESTRATEGICO INSTITUCIONAL',20,0.3,'2024-11-06 14:25:28',1,'',1),
(428,9,1,31,'2016','2016-03-07','APROBAR EL MANUAL DEL USUARIO DEL SISTEMA DE BILIOTECA',20,0.3,'2024-11-06 14:26:09',1,'',1),
(429,9,1,32,'2016','2016-03-07','APROBAR EL MANUAL PARA EL DOCENTE',35,0.5,'2024-11-06 14:26:47',1,'',1),
(430,9,1,33,'2016','2016-03-07','APROBAR EL MANUAL BASICO DE GENERACION DE HORARIOS PARA LOS DOCENTES DE LA UNAJ',92,1.2,'2024-11-06 14:27:39',1,'',1),
(431,10,1,40,'2016','2016-03-07','APROBAR LOS ESTANDARES DE SEGURIDAD PARA EL FUNCIONAMIENTO DEL LABORATORIO DE QUIMICA DE LA UNAJ.',14,0.2,'2024-11-06 14:46:25',5,'',1),
(432,9,1,34,'2016','2016-03-07','APROBAR EL PLAN DE SEGURIDAD Y SALUD OCUPACIONAL EN LA UNAJ',250,4.2,'2024-11-06 14:49:22',1,'',1),
(433,10,1,41,'2016','2016-03-07','APROBAR LOS ESTANDARES DE SEGURIDAD PARA EL FUNCIONAMIENTO DEL LABORATORIO DE BIOLOGIA DE LA UNAJ.',17,2,'2024-11-06 14:50:33',5,'',1),
(434,10,1,42,'2016','2016-03-07','APROBAR LOS ESTANDARES DE SEGURIDAD PARA EL FUNCIONAMIENTO DEL LABORATORIO DE FíSICA TEXTIL DE LA UNAJ.',13,0.2,'2024-11-06 14:52:34',5,'',1),
(435,10,1,43,'2016','2016-03-07','APROBAR EL MANUAL BáSICO DE POWER BI BUSSINESS INTELIGENCE',27,2,'2024-11-06 14:57:56',5,'',1),
(436,10,1,44,'2016','2016-03-07','APROBAR EL REGLAMENTO DE LA DIRECCIóN  GENERAL  DE PROYECCIóN SOCIAL DE LA UNAJ',22,2,'2024-11-06 15:07:51',5,'',1),
(437,11,1,70,'2016','2016-05-27','APROBAR EL REGLAMENTO DE ESTUDIOS DEL IDIOMA INGLES',28,0.4,'2024-11-06 15:16:49',1,'',1),
(438,11,1,71,'2016','2016-05-27','APROBAR EL CRONOGRAMA BASES, REGLAMENTO, CUADRO DE PLAZAS DOCENTES Y TABLA DE CALIFICACION',56,0.7,'2024-11-06 15:19:20',1,'',1),
(439,10,1,45,'2016','2016-03-07','ENCARGAR AL DR. WILDER IGNACIO VELASCO LA ELABORACIóN DEL TEXTO UNICO DE PROCEDIMIENTOS ADMINISTRATIVOS DE LA UNAJ',62,2,'2024-11-06 15:19:43',5,'',1),
(440,11,1,72,'2016','2016-06-15','CONFORMAR EL COMITE DE SEGURIDAD Y SALUD EN EL TRABAJO DE LA UNAJ',20,0.3,'2024-11-06 15:20:00',1,'',1),
(441,11,1,73,'2016','2016-06-15','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO DE COOPERACION INTERINSTITUCIONAL ENTRE LA UNAJ Y LA ESTACION DE CULTURA SAC',10,0.3,'2024-11-06 15:21:18',1,'',1),
(442,10,1,47,'2016','2016-04-01','APROBAR LA DIRECTIVA DE PROCEDIMIENTOS PARA EL USO DE VEHíCULOS, CONTROL DE COMBUSTIBLE, LUBRICANTES, ETC.',19,2,'2024-11-06 15:21:38',5,'',1),
(443,11,1,74,'2016','2016-06-15','CONFORMAR LA COMISION DE FESTEJOS DE LA UNAJ',2,0.1,'2024-11-06 15:22:07',1,'',1),
(444,10,1,48,'2016','2016-04-01','APROBAR LA DIRECTIVA PARA LA FORMACIóN SEGUIMIENTO Y EVALUACIóN DE LA UNAJ',13,2,'2024-11-06 15:23:18',5,'',1),
(445,11,1,75,'2016','2016-06-15','APROBAR EL CODIGO DE ETICA PARA EL INVESTIGADOR',12,0.2,'2024-11-06 15:23:30',1,'',1),
(446,11,1,76,'2016','2016-06-15','APROBAR LAS LINEAS DE INVESTIGACION DE LA ESCUELA PROFESIONAL DE INDUSTRIAS ALIMENTARIAS O LAS OTRAS ESCUELAS',22,0.3,'2024-11-06 15:24:19',1,'',1),
(447,11,1,77,'2016','0000-00-00','No Encontrado',0,0,'2024-11-06 15:24:43',1,'',0),
(448,11,1,78,'2016','0000-00-00','No Encontrado',0,0,'2024-11-06 15:24:49',1,'',0),
(449,10,1,491,'2016','2016-04-01','APROBAR LA DIRECTIVA PARA LA EJECUCIóN PRESUPUESTAL 2016 DE LA UNAJ.',14,2,'2024-11-06 15:25:23',5,'',1),
(450,11,1,79,'2016','2016-06-15','APROBAR EL REGLAMENTO DE GRADOS Y TITULOS',43,0.5,'2024-11-06 15:25:32',1,'',1),
(451,11,1,80,'2016','0000-00-00','No Encontrado',0,0,'2024-11-06 15:25:48',1,'',0),
(452,11,1,81,'2016','2016-06-15','APROBAR EL REGLAMENTO DE GRADOS Y TITULOS',14,0.2,'2024-11-06 15:26:17',1,'',1),
(453,10,1,50,'2016','2016-04-08','APROBAR EL PLAN ESTRATéGICO PERIODO 2016-2018 DE LA UNAJ.',58,0.6,'2024-11-06 15:27:48',5,'',1),
(454,11,1,82,'2016','2016-06-15','DAR POR CONCLUIDA LA DESIGNACIóN DEL COORDINADOR DE LA ESCUELA PROFESIONAL DE INGENIERIA EN ENERGIAS RENOVABLES',5,0.1,'2024-11-06 15:28:23',1,'',1),
(455,11,1,85,'2016','2016-07-14','AUTORIZAR EL REEMBOLSO ECONOMICOA FAVOR DEL DOCENTE MSC DAVID HERACLIO CONDORI CALLA POR LA SUMA DE 1500',23,0.3,'2024-11-06 15:29:26',1,'',1),
(456,10,1,51,'2016','2016-04-08','APROBAR LA CONTRATACIóN DE LOS DOCENTES Y JEFES DE PRACTICA DE LA UNAJ.',98,1,'2024-11-06 15:29:58',5,'',1),
(457,11,1,87,'2016','2016-07-15','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO MARCO DE COOPERACION ENTRE LA UNAJ Y SIERRA EXPORTADORA',17,0.2,'2024-11-06 15:30:42',1,'',1),
(458,11,1,88,'2016','2016-07-15','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO DE COOPERACION INTERINSTITUCIONAL EN LA UNAJ Y LA ASOCIACION PARA EL DESARROLLO E INTEGRACIóN FRONTERIZA ADINFRO',14,0.2,'2024-11-06 15:31:50',1,'',1),
(459,10,1,52,'2016','2016-04-08','DEJAR SIN EFECTO LA RESOLUCIóN DE CONSEJO DE COMISIóN ORGANIZADORA N°013-2013-CO-UNAJ.',82,9,'2024-11-06 15:32:40',5,'',1),
(460,11,1,89,'2016','2016-07-15','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIO ESPECIFICO ENTRE LA UNAJ Y LA ASOCIACION PARA EL DESARROLLO E INTEGRACION FRONTERIZA, PARA DESARROLLAR ESTUDIOS BASICOS CON PRACTICANTES DE LAS ESCUELAS PROFESIONALES',32,0.4,'2024-11-06 15:33:52',1,'',1),
(461,10,1,53,'2016','2016-04-08','APROBAR LOS PLANES DE TRABAJO CONFORME A LOS DETALLES',84,0.9,'2024-11-06 15:33:58',5,'',1),
(462,11,1,92,'2016','2016-07-26','APROBAR EL REGLAMENTO DE SEGUIMIENTO DE ALUMNOS, EGRESADOS Y BOLSA DE TRABAJO DE LA UNAJ',29,0.4,'2024-11-06 15:34:46',1,'',1),
(463,11,1,93,'2016','2016-07-26','DAR POR CONCLUIDA LA ENCARGATURA DE LA COORDINADORA DE LA ESCUELA DE INDUSTRIAS ALIMENTARIAS A MSC SILVANA LISSET AGUILAR TUESTA',4,0.1,'2024-11-06 15:35:51',1,'',1),
(464,10,1,54,'2016','2016-04-08','APROBAR EL REGLAMENTO INTERNO DEL áREA DE SERVICIOS DEPORTIVOS DE LA UNAJ',22,0.2,'2024-11-06 15:35:52',5,'',1),
(465,11,1,94,'2016','2016-07-26','OTORGAR SUBVENCION ECONOMICA A FAVOR DEL DOCENTES PERCY BARRIGA FLORES LA SUMA DE 3000',53,0.7,'2024-11-06 15:36:47',1,'',1),
(466,11,1,95,'2016','2016-07-26','DAR POR CONCLUIDA LA DESIGNACION DEL MSC MARCELINO PEDRO ARIAS SOLORZANO COMO DIRECTOR DE LA ESCUELA PROFESIONAL DE GESTION PUBLICA Y DESARROLLO SOCIAL',3,0.1,'2024-11-06 15:37:49',1,'',1),
(467,10,1,57,'2016','2016-04-21','APROBAR EL REGLAMENTO SOBRE EL USO DEL SISTEMA DE BIBLIOTECAS DE LA UNAJ.',16,0.2,'2024-11-06 15:38:24',5,'',1),
(468,11,1,96,'2016','2016-07-26','DAR POR CONCLUIDA AL DR ZOILO WILFREDO ZAMALLOA MASIAS COMO DIRECTOR DE LA ESCUELA PROFESIONAL DE INGENIERA AMBIENTAL Y FORESTAL',3,0.1,'2024-11-06 15:38:42',1,'',1),
(469,11,1,97,'2016','2016-07-26','AUTORIZAR LA LICENCIA CON GOCE DE REMUNERACIONES POR ENFERMEDAD A FAVOR DEL DR EDWIN CATACORAS VIDANGOS',2,0.1,'2024-11-06 15:39:35',1,'',1),
(470,11,1,98,'2016','2016-07-26','APROBAR EL PLAN DE TRABAJO DEL TERCER CICLO CEPRE-UNAJ 2016',21,0.3,'2024-11-06 15:40:17',1,'',1),
(471,11,1,99,'2016','2016-07-26','APROBAR EL PLAN DE TRABAJO DE LA II CONVOCATORIA DEL VII CONCURSO PUBLICO PARA CONTRATO DOCENTE UNAJ 2016-II',30,0.4,'2024-11-06 15:41:09',1,'',1),
(472,11,1,100,'2016','2016-08-01','APROBAR EL PLAN DE TRABAJO PROGRAMA DE VOLUNTARIADO PARA ESTUDIANTES',14,0.2,'2024-11-06 15:41:54',1,'',1),
(473,10,1,58,'2016','2016-04-21','APROBAR LA DIRECTIVA INTERNA PARA LA ADQUISICIóN DE BIENES, CONTRATACIóN DE SERVICIOS MENORES A 8 UITS PARA EL AñO 2016',15,0.2,'2024-11-06 15:42:36',5,'',1),
(474,11,1,101,'2016','2016-08-16','APROBAR EL PLAN DE TRABAJO DE LA III CONVOCATORIA DE VII CONCURSO PUBLICO PARA CONTRATO DOCENTE UNAJ 2016-II',62,0.7,'2024-11-06 15:42:49',1,'',1),
(475,10,1,59,'2016','2016-04-21','APROBAR LOS TERMINOS DE LA PROPUESTA DEL CONVENIOS MARCO DE CONVENIO',14,0.2,'2024-11-06 15:46:13',5,'',1),
(476,10,1,60,'2016','2016-04-21','APROBAR LA PROPUESTA DEL REGLAMENTO DEL CENTRO DE ESTUDIOS PRE UNIVERSITARIO CEPRE - UNAJ',24,0.2,'2024-11-06 15:49:24',5,'',1),
(477,10,1,61,'2016','2016-05-09','DESIGNAR AL M.SC. VICTOR ROGELIO MARCA MAQUERA COMO JEFE DE LA OFICINA DE SEGUIMIENTO AL ALUMNO EGRESADO Y BOLSA TRABAJO',3,0.1,'2024-11-06 15:52:24',5,'',1),
(478,10,1,62,'2016','2016-05-10','MODIFICAR EN PARTE LA RESOLUCIóN DE CONSEJO DE COMISIóN ORGANIZADO N°019-2016-CO-UNAJ.',3,0.1,'2024-11-06 15:54:33',5,'',1),
(479,10,1,64,'2016','2016-05-26','DAR POR CONCLUIDO LA DESIGNACIóN DEL M.SC. LUIS MARTIN HUAILLAPUMA SANTA CRUZ, COMO DIRECTOR GENERAL DE SERVICIOS ACADéMICOS',2,0.1,'2024-11-06 15:57:04',5,'',1),
(480,10,1,65,'2016','2016-05-27','DESIGNAR AL DR. JOSé LUIS PINEDA TAPIA, COMO JEFE DE LA OFICINA DE ACREDITACIóN UNIVERSITARIA UNAJ.',2,0.1,'2024-11-06 16:00:31',5,'',1),
(481,10,1,66,'2016','2016-05-27','CONFORMAR LA COMISIóN DE CONCURSO DE CATEDRA 2016-LL',2,0.1,'2024-11-06 16:02:25',5,'',1),
(482,10,1,67,'2016','2016-05-27','DEJAR SIN EFECTO LA RESOLUCIóN DE CONSEJO DE ORGANIZADORA N°055-2016-CO-UNAJ.',4,0.1,'2024-11-06 17:09:16',5,'',1),
(483,11,1,68,'2016','2016-05-27','MODIFICAR EN PARTE LA RESOLUCIóN DE CONCEJO DE COMISIóN ORGANIZADORA N°024-2016-CO-UNAJ',2,0.1,'2024-11-06 17:14:04',5,'',1),
(484,11,1,69,'2016','2016-05-27','APROBAR LAS ESPECIFICACIONES TéCNICAS DEL EQUIPAMIENTO Y MOBILIARIO DE LA OBRA: CREACIóN E IMPLEMENTACIóN DEL PABELLóN DEL LABORATORIOS GENERALES',352,3.5,'2024-11-06 17:22:09',5,'',1),
(485,12,1,107,'2016','2016-08-31','REGLAMENTO GENERAL DE PRACTICAS PREPROFESIONALES',403,5,'2024-11-08 09:20:34',1,'SOLO SE ENCUENTRA LA PRIMERA HOJA DE ESTA RESOLUCION. 02 TOMOS',1),
(486,12,1,108,'2016','2016-08-31','APROBAR LOS RESULTADOS FINALES DEL VII CONCURSO PUBLICO PARA CONTRATO DOCENTE UNAJ 2016-II',386,5,'2024-11-08 09:22:06',1,'02 TOMOS',1),
(487,12,1,109,'2016','2016-08-31','DECLARAR DESIERTAS LAS PLAZAS NO CUBIERTAS EN EL VII CONCURSO PUBLICO PARA CONTRATO DOCENTE 2016',252,3.5,'2024-11-08 09:23:20',1,'02 TOMOS',1);
/*!40000 ALTER TABLE `resoluciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `resoluciones_view`
--

DROP TABLE IF EXISTS `resoluciones_view`;
/*!50001 DROP VIEW IF EXISTS `resoluciones_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `resoluciones_view` AS SELECT
 1 AS `Seccion`,
  1 AS `Serie`,
  1 AS `Tipo`,
  1 AS `Caja`,
  1 AS `Año`,
  1 AS `NumResolucion`,
  1 AS `fecha`,
  1 AS `resuelve`,
  1 AS `totalfolios` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `resolucionespresi`
--

DROP TABLE IF EXISTS `resolucionespresi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resolucionespresi` (
  `idresolucion` int(11) NOT NULL AUTO_INCREMENT,
  `idcaja` int(11) NOT NULL,
  `idproyecto` int(11) NOT NULL,
  `numResolucion` int(11) NOT NULL,
  `anio` char(8) NOT NULL,
  `fecha` date NOT NULL,
  `resuelve` varchar(255) NOT NULL,
  `totalfolios` int(11) NOT NULL DEFAULT 0,
  `metroslineales` double NOT NULL,
  `fecCreate` datetime DEFAULT current_timestamp(),
  `idpersonal` int(11) NOT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idresolucion`),
  KEY `fk_resolucionespresi_detalproy_idx` (`idproyecto`),
  KEY `fk_resolucionespresi_personal_idx` (`idpersonal`),
  KEY `fk_resolucionespresi_caja_idx` (`idcaja`),
  CONSTRAINT `fk_resolucionespresi_caja` FOREIGN KEY (`idcaja`) REFERENCES `cajas` (`idcajas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_resolucionespresi_detalproy` FOREIGN KEY (`idproyecto`) REFERENCES `proyecto_detalle` (`iddetalleproy`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_resolucionespresi_personal` FOREIGN KEY (`idpersonal`) REFERENCES `personal` (`idpersonal`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resolucionespresi`
--

LOCK TABLES `resolucionespresi` WRITE;
/*!40000 ALTER TABLE `resolucionespresi` DISABLE KEYS */;
INSERT INTO `resolucionespresi` (`idresolucion`, `idcaja`, `idproyecto`, `numResolucion`, `anio`, `fecha`, `resuelve`, `totalfolios`, `metroslineales`, `fecCreate`, `idpersonal`, `obs`, `estado`) VALUES (1,13,1,1,'2012','2015-05-25','FORMALIZAR LA DESIGNACION DE LA NUEVA COMISION ORGANIZADORA DE LA UNAJ AL DR OSWALDO LUIZAR OBREGON, DR EDWIN CATACORA VIDANGOS, DR EUSEBIO BENIQUE OLIVERA',4,0.1,'2024-11-15 15:28:26',1,'',1),
(3,13,1,2,'2012','2012-01-25','AUTORIZAR EN VIAS DE REGULARIZACION LA INCORPORACION DE MAYORES FONDOS PUBLICOS EN PRESUPUESTO DEL PLIEGO 552',5,0.1,'2024-11-15 15:37:51',1,'Esta es la Resolucion 02A',1),
(4,13,1,2,'2012','2012-05-28','DESIGNAR A PARTIR DEL 28 DE MAYO DEL 2012 AL DR EUSEBIO BENIQUE OLIVERA, VICE-PRESIDENTE ADMINISTRATIVO, EN REEMPLAZO DEL SR OSCAR LEONIDAS LAGOZ CALSIN Y OTROS',2,0.1,'2024-11-15 15:41:24',1,'',1),
(5,13,1,3,'2012','2012-05-29','CONFORMAR LA COMISION DE TRANSFERENCIA DE LA UNAJ',2,0.1,'2024-11-15 15:42:23',1,'',1),
(6,13,1,4,'2012','2012-05-30','AUTORIZAR EL VIAJE EN COMISION DE SERVICIOS A LA CIUDAD DE LIMA AL DR OSWALDO LUIZAR OBREGON Y OTROS',2,0.1,'2024-11-15 15:43:35',1,'',1),
(7,13,1,5,'2012','2012-06-05','ENCARGAR EL DESPACHO DEL PRESIDENTE AL DR EDWIN CATACORA VIDANGOS HASTA QUE DURE LA AUSENCIA DEL TITULAR',1,0.1,'2024-11-15 15:44:34',1,'',1),
(8,13,1,6,'2012','2012-06-06','AUTORIZAR LA HABILITACION DE UN FONDO PARA PAGOS EFECTIVO - CAJA CHICAPOR EL IMPORTE DE 40,000.00 NUEVOS SOLES',2,0.1,'2024-11-15 15:46:04',1,'',1),
(9,13,1,7,'2012','2012-06-13','CON CARGO A DAR CUENTA A LA CCO DE LA UNAJ ACEPTAR LA RENUNCIA DEL CPCP VERNER GUTIERREZ CASTRO AL CARGO DE DE LA UNIDAD DE ABASTECIMIENTOS',2,0.1,'2024-11-15 15:47:10',1,'',1),
(10,13,1,8,'2012','2012-06-15','DELEGAR LAS ATRIBUCIONES CORRESPONDIENTES A OSTENTAR LA FIRMA DE LOS SIGUIENTES ACTOS ADMINISTRATIVOS: CAS, LOCACION DE SERVICIOS; EJECUCION DE HABILITACIONES ECONOMICAS Y ENCARGOS INTERNOS',2,0.1,'2024-11-15 15:48:23',1,'',1),
(11,13,1,9,'2012','2012-06-06','APROBAR LA PROPUESTA DE CRONOGRAMA DE ACTIVIDADES PARA EL SEGUNDO CONCURSO PUBLICO DE DOCENTES CONTRATADOS DE UN TOTAL DE 11 PLAZAS',4,0.1,'2024-11-15 15:49:31',1,'',1),
(12,13,1,10,'2012','2012-06-28','FORMALIZAR EN VIAS DE REGULARIZACION LAS MODIFICACIONES PRESPUPUESTALES EFECTUADAS A NIVEL FUNCIONAL PROGRAMATICO',4,0.1,'2024-11-15 15:50:21',1,'duplicado',1),
(13,13,1,10,'2012','2012-07-08','SOLICITAR A LA CONTRALORIA GENERAL DE LA REPUBLICA, DESIGNAR LA SOCIEDAD DE AUDITORIA PARA EFECTUAR LAS AUDITORIAS AL DR ARISTIDES RAMON SERRUTO COLQUE',21,0.3,'2024-11-15 15:51:55',1,'Numero duplicado',1),
(14,13,1,11,'2012','2012-06-28','FORMALIZAR EN VIAS DE REGULARIZACION LAS MODIFICACIONES PRESUPUESTALES EFECTUADAS EN EL NIVEL FUNCIONAL PROGRAMATICO',14,0.2,'2024-11-15 15:53:13',1,'numero duplicado',1),
(15,13,1,11,'2012','2012-06-25','CONFORMAR LA COMISION DE PROGRAMACION Y FORMULACION PRESUPUESTARIA DE LA UNAJ',2,0.1,'2024-11-15 15:53:57',1,'Numero duplicado',1),
(16,13,1,12,'2012','2012-06-28','FORMALIZAR EN VIAS DE REGULARIZACION LAS MODIFICACIONES PRESUPUESTARIAS EN EL NIVEL FUNCIONAL PROGRAMATICO',5,0.1,'2024-11-15 15:54:47',1,'',1),
(17,13,1,13,'2012','2012-06-28','FORMALIZAR EN VIAS DE REGULACION LAS MODIFICACIONES PRESUPUESTARIAS EN EL NIVEL FUNCIONAL PROGRAMATICO',10,0.2,'2024-11-15 15:55:43',1,'',1),
(18,13,1,14,'2012','2012-06-28','AUTORIZAR LA INCORPORACION DE MAYORES FONDOS PUBLICOS EN EL PRESUPUESTO INSTITUCIONAL DEL PLIEGO 552',9,0.2,'2024-11-15 15:56:39',1,'',1),
(19,13,1,15,'2012','2012-07-12','APROBAR EL CUADRO PARA ASIGNACION DE PERSONAL CAP 2013 DE LA UNAJ',79,1,'2024-11-15 15:57:33',1,'',1),
(20,13,1,17,'2012','2012-06-28','AUTORIZAR PARA EL PRESENTE EJERCICIO PRESUPUESTAL 2012 SE OTORGUE UNA RETRIBUCION ECONOMICA POR CONCEPTO DE DIETAS A LOS MIEMBROS DE LA CCO',7,0.1,'2024-11-15 15:59:19',1,'',1),
(21,13,1,18,'2012','2012-08-02','CONFORMAR EL COMITE DE RECEPCION Y VERIFICACION DE LAS CAJAS SELLADAS DE LA EXONERACION DEL PROCESO N° 001-2012-UNAJ',7,0.1,'2024-11-15 16:01:09',1,'',1),
(22,13,1,19,'2012','2012-07-18','AUTORIZAR EL VIAJE DE COMISION DE SERVICIOS A LA CIUDAD DE LIMA AL DR OSWALDO LUIZAR OBREGON',7,0.1,'2024-11-15 16:02:32',1,'',1),
(23,13,1,20,'2012','2012-07-18','AUTORIZAR EN VIAS DE REGULARIZACION SE DECLARE EN COMISION DE SERVICIOS A LA CIUDAD DE LIMA AL DR OSWALDO LUIZ OBREGON Y OTROS PARA TRAMITES',10,0.2,'2024-11-15 16:04:00',1,'',1),
(24,13,1,21,'2012','2012-07-31','FORMALIZAR EN VIAS DE REGULARIZACION LAS MODIFICACIONES PRESPUPUESTALES EFECTUADAS A NIVEL FUNCIONAL PROGRAMATICO',6,0.1,'2024-11-15 16:04:29',1,'',1),
(25,13,1,22,'2012','2012-08-20','OTORGAR 02 RETIBUCIONES TOTALES POR SUBSIDIO POR FALLECIMIENTO AL DR OSWALDO LUIZAR OBREGON',2,0.1,'2024-11-15 16:05:34',1,'',1),
(26,13,1,23,'2012','2012-08-27','FORMALIZAR EN VIAS DE REGULARIZACION LAS MODIFICACIONES PRESPUPUESTALES EFECTUADAS A NIVEL FUNCIONAL PROGRAMATICO',5,0.1,'2024-11-15 16:06:05',1,'',1),
(27,13,1,23,'2012','2012-08-27','DESIGNAR COMO RESPONSABLE DEL LIBRO DE RECLAMACIONES DE LA UNAJ AL ING ARTURO VICENTE GONZALES PONCE',9,0.2,'2024-11-15 16:06:53',1,'',1),
(28,13,1,24,'2012','2012-09-17','AUTORIZAR LA HABILITACION DE UN FONDO PARA PAGOS EFECTIVO CAJA CHICA POR 10,000.00',2,0.1,'2024-11-15 16:07:59',1,'',1),
(29,13,1,25,'2012','2012-09-25','AUTORIZAR EL VIAJE DE COMISION DE SERVICIOS POR CAPACITACION A LA CIUDAD DE LIMA AL SR EDWIN CATACORA VIDANGOS',9,0.2,'2024-11-15 16:08:44',1,'',1),
(30,13,1,26,'2012','2012-09-26','EXPRESAR A NOMBRE DE LA UNAJ UN ESPECIAL RECONOCIMIENTO Y FELICITACION INSTITUCIONAL AL DR VICTOR CIPRIANO HUANACUNI AJROTA POR HABER OBTENIDO EL GRADO DE DOCTORIS SCIENTIAE EN CIENCIA TECNOLOGIA Y MEDIO AMBIENTES DE LA UNA PUNO',4,0.1,'2024-11-15 16:10:29',1,'',1),
(31,13,1,26,'2012','2012-09-26','FORMALIZAR EN VIAS DE REGULARIZACION LAS MODIFICACIONES PRESPUPUESTALES EFECTUADAS A NIVEL FUNCIONAL PROGRAMATICO',17,0.3,'2024-11-15 16:11:05',1,'ESTE NUMERO ESTA DUPLICADO',1),
(32,13,1,27,'2012','2012-09-28','AUTORIZAR EL VIAJE CAPACITACION OFICIALIZADA A LA CIUDAD DE TACNA AL DR EDWIN CATACORA VIDANGOS',9,0.2,'2024-11-15 16:12:13',1,'',1),
(33,13,1,28,'2012','2012-10-02','DESIGNAR A PARTIR DEL 03 DE OCTUBRE DEL 2012 AL SR EUSEBIO BENIQUE OLIVERA Y OTROS PARA EL MANEJO DE LAS CUENTAS BANCARIAS DE LA UNAJ',1,0.1,'2024-11-15 16:13:50',1,'',1),
(34,13,1,29,'2012','2012-10-02','AUTORIZAR LA HABILITACION DE 10,000.00 BAJO LA MODALIDAD DE ENCARGO INTERNO',3,0.1,'2024-11-15 16:14:38',1,'',1),
(35,13,1,30,'2012','2012-10-11','AUTORIZAR EL VIAJE EN COMISION DE SERVICIOS A LA CIUDAD DE LIMA Y TRUJILLO AL DR OSWALDO LUIZAR OBREGON',8,0.1,'2024-11-15 16:15:59',1,'',1),
(36,13,1,31,'2012','2012-10-15','AUTORIZAR EL FONDO FIJO PARA CAJA CHICA EN FORMA MENSUAL Y RENOBABLE POR EL MONTO DE 6,400.00 NS',4,0.1,'2024-11-15 16:17:05',1,'',1),
(37,13,1,32,'2012','2012-10-23','AUTORIZAR EL VIAJE POR CAPACITACION A LA CIUDAD DE LIMA A LA SRA JANETH ANGELICA VALDEZ MAMANI',7,0.1,'2024-11-15 16:18:03',1,'',1),
(38,13,1,33,'2012','2012-10-23','FORMALIZAR EN VIAS DE REGULACION, LA MODIFICACION PRESUPUESTARIA EFECTUADA A NIVEL FUNCIONAL PROGRAMATICO',18,0.3,'2024-11-15 16:19:00',1,'',1),
(39,13,1,34,'2012','2012-10-23','AUTORIZAR LA HABILITACION DE 5,000.00 NS BAJO MODALIDAD DE ENCARGO INTERNO PARA TRAMITES DEL TERRENO DONADO POR LA MUNICIPALIDAD PROVINCIAL DE SAN ROMAN',4,0.1,'2024-11-15 16:20:17',1,'',1),
(40,13,1,35,'2012','2012-10-25','AUTORIZAR LA HABILITACION DE 4,500.00 BAJO MODALIDAD DE ENCARGO INTERNO PARA EL SANEAMIENTO DE LOS TERRENOS DONADOS',6,0.1,'2024-11-15 16:21:27',1,'',1),
(41,13,1,37,'2012','2012-11-06','AUTORIZAR EL VIAJE DE COMISIO DE SERVICIOS A LA CIUDAD DE LIMA A LOS SRS MIEMBROS DE LA CCO',7,0.1,'2024-11-15 16:22:14',1,'',1),
(42,13,1,38,'2012','2012-11-06','AUTORIZAR EL VIAJE POR COMISION DE SERVICIOS A LA CIUDAD DE LIMA AL DR EDWIN CATACORA VIDANGOS',2,0.1,'2024-11-15 16:23:04',1,'',1),
(43,13,1,39,'2012','2012-11-07','ENCARGAR AL DR EUSEBIO BENIQUE OLIVERA LA PRESIDENCIA DE LA CCO',1,0.1,'2024-11-15 16:24:05',1,'',1),
(44,13,1,40,'2012','2012-11-08','EXPRESAR EL RECONOCIMIENTO Y FELICITACIóN INSTITUCIONAL AL DR VILMA VALERIANA TAPIA CCALLO POR HABER OBTENIDO EL GRADO DE DOCTOR EN CIENCIAS DE LA EDUCACION',4,0.1,'2024-11-15 16:25:12',1,'',1),
(45,13,1,41,'2012','2012-11-16','AUTORIZAR EL VIAJE POR CAPACITACION A LA CIUDAD DE LIMA AL ANR AL ING JOEL RAMOS QUISPE',11,0.2,'2024-11-15 16:26:09',1,'',1),
(46,13,1,42,'2012','2012-11-16','DESIGNAR AL ABOG EDGAR PINTO HANCAVILCA PARA ENTREGAR INFORMACION POR PUBLICIDAD',7,0.1,'2024-11-15 16:27:21',1,'',1),
(47,13,1,44,'2012','2012-11-29','FORMALIZAR EN VIAS DE REGULARIZACION LA MODIFICACION PRESUPUESTARIA EFECUTADA EN L NIVEL FUNCIONAL PROGRAMATICO',8,0.2,'2024-11-15 16:28:16',1,'',1),
(48,13,1,45,'2012','2012-11-29','ENCARGAR AL ING MARCO LARRY YUCRA LIMAHUAYA COMO RESPONSABLE DE PATRIMONIO Y ALMACEN DE LA UNAJ',2,0.1,'2024-11-15 16:29:00',1,'',1),
(49,13,1,50,'2012','2012-12-06','ENCARGAR AL DR EUSEBIO BENIQUE OLIVERA LA PRESIDENCIA DE LA CCO',1,0.1,'2024-11-15 16:29:36',1,'',1),
(50,13,1,51,'2012','2012-12-06','AUTORIZAR EL VIAJE EN COMISION DE SERVICIOS A LA CIUDAD DE LIMA DR OSWALDO LUIZAR  OBREGON',6,0.1,'2024-11-15 16:30:27',1,'',1),
(51,13,1,54,'2012','2012-12-11','AUTORIZAR EL VIAJE EN COMISION DE SERVICIOS A LA CIUDAD DE LIMA AL DR OSWALDO LUIZAR OBREGON',7,0.2,'2024-11-15 16:31:13',1,'',1),
(52,13,1,55,'2012','2012-12-13','AUTORIZAR EL REEMBOLOS POR CONCEPTO DE VIATICOS POR LA SUMA DE 500.00 NS A FAVOR DEL VICEPRESIDENTE ADMINISTRATIVO',2,0.1,'2024-11-15 16:32:13',1,'',1),
(53,13,1,56,'2012','2012-12-18','AUTORIZAR LA HABILITACION DE 3,000.00 BAJO LA MODALIDAD DE ENCARGO INTERNO',2,0.1,'2024-11-15 16:33:03',1,'',1),
(54,13,1,59,'2012','2012-12-26','FORMALIZAR EN VIAS DE REGULARIZACION LAS MODIFICACIONES PRESPUPUESTALES EFECTUADAS A NIVEL FUNCIONAL PROGRAMATICO',48,0.8,'2024-11-15 16:33:39',1,'',1);
/*!40000 ALTER TABLE `resolucionespresi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seccion`
--

DROP TABLE IF EXISTS `seccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seccion` (
  `idseccion` int(11) NOT NULL AUTO_INCREMENT,
  `seccion` varchar(200) NOT NULL,
  `codigo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idseccion`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seccion`
--

LOCK TABLES `seccion` WRITE;
/*!40000 ALTER TABLE `seccion` DISABLE KEYS */;
INSERT INTO `seccion` (`idseccion`, `seccion`, `codigo`) VALUES (1,'Asamblea Universitaria','ASUN'),
(2,'Consejo Universitario','CU'),
(3,'Presidencia de la comisión organizadora','PCO'),
(4,'Vicerrectorado Académico','VPAC'),
(5,'Pronabec','PRONABEC'),
(6,'Centro de Informática','CDI'),
(7,'Centro de Idiomas','CI'),
(8,'PsyEC','PsyEC'),
(9,'Departamento Academico','DACA'),
(10,'Vicerrectorado de Investigación','VPIN'),
(11,'Defensoría Universitaria','DEUN'),
(12,'Tribunal de Honor Universitario','THU'),
(13,'Comisión Permanente de Fiscalización','CPF'),
(14,'Órgano de Control Institucional','OCI'),
(15,'Oficina de Asesoría Jurídica','OAJ'),
(16,'Oficina de Planeamiento y Presupuesto','OPP'),
(17,'Unidad de Planeamiento y Modernización','UPM'),
(18,'Unidad de Presupuesto','UP'),
(19,'Unidad Formuladora','UF'),
(20,'Oficina de Cooperación y Relaciones Internacionales','OCRI'),
(21,'Grados y titulos','GRTI'),
(22,'Escuela de Posgrado','EPOS'),
(23,'Oficina de Gestión de la Calidad','OGC'),
(24,'Oficina de Comunicación e Imagen Institucional','OCII'),
(25,'Dirección General de Administración','DIGA'),
(26,'Unidad de Recursos Humanos','RH'),
(27,'Unidad de Abastecimiento','ABAS'),
(28,'Almacen','ALMA'),
(29,'Unidad Ejecutora de Inversiones','UEI'),
(30,'Unidad de Contabilidad','CONTA'),
(31,'Unidad de Tesorería','TESO'),
(32,'Caja','CAJA'),
(33,'Unidad de Servicios Generales','USG'),
(34,'Oficina de Tecnologías de la Información','OTI'),
(35,'Secretaría General','SG'),
(36,'Archivo Central','AC'),
(37,'Consejo de Facultad','COFA'),
(38,'Decanato','DECA'),
(39,'Dirección de Proyección Social y Extensión Cultural','DPSEC'),
(40,'Dirección de Bienestar Universitario','DBU'),
(41,'Biblioteca','BIBLIO'),
(42,'Servicios de Psicología','SALUD'),
(43,'Servicios de Salud (Topico y enfermería)','PSICO'),
(44,'Deporte y Recreación','DyR'),
(45,'Servicio de Arte y Cultura','ARTE'),
(46,'Servicios sociales','SS'),
(47,'Comedor Universitario','COMU'),
(48,'Dirección de Gestión de Asuntos Académicos','DIGEAA'),
(49,'Registro Academico','RA'),
(50,'EPDEA','EPDEA'),
(51,'Seguimiento y monitoreo de docentes','SMD'),
(52,'Seguimiento al egresado y bolsa de trabajo','SeyBT'),
(53,'Tutoria','TUTO'),
(54,'Curricula','CUR'),
(55,'Dirección de Admisión','DA'),
(56,'Centro Preuniversitario','CEPRE'),
(57,'Dirección de Centros de Producción de Bienes y Servicios','DPByS'),
(58,'Dirección de Incubadora de Empresas','DIE'),
(59,'Dirección de Innovación y Transferencia Tecnológica','DITT'),
(60,'Instituto de Investigación','ININ'),
(99,'Ninguno','Ninguno');
/*!40000 ALTER TABLE `seccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `series` (
  `idseries` int(11) NOT NULL AUTO_INCREMENT,
  `identidad` varchar(80) NOT NULL,
  `coduniorganica` int(11) DEFAULT NULL,
  `desuniorganica` varchar(150) DEFAULT NULL,
  `idseccion` varchar(10) DEFAULT NULL,
  `idserie` varchar(20) DEFAULT NULL,
  `serie` varchar(120) DEFAULT NULL,
  `valor` char(20) DEFAULT NULL,
  `ag` int(11) DEFAULT 0,
  `ac` int(11) DEFAULT 0,
  `total` int(11) DEFAULT 0,
  `docgestion` text DEFAULT NULL,
  `definicion` text DEFAULT NULL,
  `tiposdoc` text DEFAULT NULL,
  `frecServicio` varchar(100) DEFAULT NULL,
  `normativa` text DEFAULT NULL,
  `accesibilidad` varchar(20) DEFAULT NULL,
  `caracFisicas` varchar(100) DEFAULT NULL,
  `fecElaboracion` date DEFAULT NULL,
  `fecCreate` datetime DEFAULT NULL,
  `estado` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`idseries`),
  KEY `fk_series_1_idx` (`identidad`),
  KEY `fk_series_seccion_idx` (`idseccion`)
) ENGINE=InnoDB AUTO_INCREMENT=424 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` (`idseries`, `identidad`, `coduniorganica`, `desuniorganica`, `idseccion`, `idserie`, `serie`, `valor`, `ag`, `ac`, `total`, `docgestion`, `definicion`, `tiposdoc`, `frecServicio`, `normativa`, `accesibilidad`, `caracFisicas`, `fecElaboracion`, `fecCreate`, `estado`) VALUES (1,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',1,'ASAMBLEA UNIVERSITARIA','1','ASUN/01','Estatutos de la universidad','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','','','','','2024-04-01','2024-04-01 00:00:00',0),
(2,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',1,'ASAMBLEA UNIVERSITARIA','1','ASUN/02','Expediente del Comité electoral universitario','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','','','','','2024-04-01','2024-04-01 00:00:00',0),
(3,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',1,'ASAMBLEA UNIVERSITARIA','1','ASUN/03','Resultados de fiscalización','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','','','','','2024-04-01','2024-04-01 00:00:00',0),
(4,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',1,'ASAMBLEA UNIVERSITARIA','1','ASUN/04','Memoria anual','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','','','','','2024-04-01','2024-04-01 00:00:00',0),
(5,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',1,'ASAMBLEA UNIVERSITARIA','1','ASUN/05','Informes de rendición de cuentas del presupuesto','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','','','','','2024-04-01','2024-04-01 00:00:00',0),
(6,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',1,'ASAMBLEA UNIVERSITARIA','1','ASUN/06','Constitución de facultades. Escuelas, unidades de postgrado, escuelas profesionales, departamentos académicos','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','','','','','2024-04-01','2024-04-01 00:00:00',0),
(7,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',1,'ASAMBLEA UNIVERSITARIA','1','ASUN/07','Correspondencia','T',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(8,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',2,'CONSEJO UNIVERSITARIO','2','CU/01','Reglamentos de la universidad','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','','','','','2024-04-01','2024-04-01 00:00:00',0),
(9,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',2,'CONSEJO UNIVERSITARIO','2','CU/02','Reglamentos de elecciones','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','','','','','2024-04-01','2024-04-01 00:00:00',0),
(10,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',2,'CONSEJO UNIVERSITARIO','2','CU/03','Reglamentos internos especiales','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','','','','','2024-04-01','2024-04-01 00:00:00',0),
(11,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',2,'CONSEJO UNIVERSITARIO','2','CU/04','Planes anuales de adquisiciones','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','','','','','2024-04-01','2024-04-01 00:00:00',0),
(13,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',2,'CONSEJO UNIVERSITARIO','2','CU/06','Planes de estudios','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(14,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',2,'CONSEJO UNIVERSITARIO','2','CU/07','Planes de trabajo por las unidades académicas','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(15,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',2,'CONSEJO UNIVERSITARIO','2','CU/08','Documentos de Modalidades de ingreso','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(16,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',2,'CONSEJO UNIVERSITARIO','2','CU/09','Convenios','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(17,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',2,'CONSEJO UNIVERSITARIO','2','CU/10','Correspondencia','T',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(19,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','3','PCO/01','Informes semestrales de gestión','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ, Resolución Ministerial N° 244-2021-MINEDU                                          ','Es un documento informativo a la alta jerarquía remitidas a la DIGESU, MINEDU.','Oficio, Informe, Carta, Resoluciones, planes, carta multiple','','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ\r\nResolución Ministerial N° 244-2021-MINEDU','Seleccionar','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-15 14:04:36',1),
(20,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','3','PCO/02','Correspondencia','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-24 16:47:31',1),
(21,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','20','PCO-OCRI/3','Convenios','T',6,2,8,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Es un documento celebrado entre 2 o mas partes, donde se estipulan obligaciones y/o compromisos, que buscan beneficio entre las partes, buscando el fin de cada institución.','Oficios, carta ','Alta','Directa de procedimiento para la suscripción de convenios de coorperacion con la Universidad Nacional de Juliaca','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-24 17:07:51',1),
(22,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','20','PCO-OCRI/4','Accesos de información publica','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Esta brinda información pública de todo el ámbito administrativo y académico de la UNAJ','Informe, cartas, resolución jefatural, contrato, hoja de tramite, oficio, solicitud, Formulario único de tramite','Alta','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-24 17:12:08',1),
(23,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','20','PCO-OCRI/5','Libro de reclamaciones (virtual)','T',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ\r\n              ','','Se administra via virtual','Alta','','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-04-24 17:17:27',0),
(24,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','20','PCO-OCRI/6','Expedientes de Actos de hostigamiento sexual','P',2,28,30,'','','','Nula','','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-04-24 17:16:34',0),
(25,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','20','PCO-OCRI/7','Correspondencia','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(26,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','4','VPAC/01','Reglamentos, directivas, Lineamientos','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','','','Media','','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-04-24 20:51:34',0),
(27,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','4','VPAC/02','Calendarios académicos anuales','T',1,1,2,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(28,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','4','VPAC/03','Modelos educativos','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(29,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','4','VPAC/04','Movilidad académica','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(30,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','4','VPAC/05','Bolsa académica','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(31,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','4','VPAC/06','Pasantías','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(32,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','4','VPAC/07','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(33,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','5','VPAC-PRONABEC/08','Relación de postulantes','T',5,1,6,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(34,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','5','VPAC-PRONABEC/09','Control biométrico de becarios','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(35,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','5','VPAC-PRONABEC/10','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(36,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','6','VPAC-CDI/11','Actas académicas','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Son documentos que muestran las calificaciones de los participantes o estudiantes en los cursos, programas, diplomados entre otros, y están refrendadas por el docente del curso, responsable del centro de informática y por vice rector academico','Actas de evaluación','Alta','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-21 14:29:21',1),
(37,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','6','VPAC-CDI/12','Certificados de Estudios','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(38,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','6','VPAC-CDI/13','Constancias de Estudios','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(39,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','6','VPAC-CDI/12','Informes de docentes','T',1,4,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                                                         ','Son documentos que emite el docente sobre el avance, culminación del curso que se adjunta un registro de asistencias y calificaciones por cada curso.','Informe, Relación de asistencia, relación de notas','Baja','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 14:37:38',1),
(40,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','6','VPAC-CDI/15','Cuadernos de entrega de documentos','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(41,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','6','VPAC-CDI/16','Fichas de matriculas','T',1,4,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Son documentos donde se consigna los datos de los participantes a cada curso, programa o diplomado dictado por el Centro de Informática','Ficha de matricula','Baja','Reglamento de Centro de Informática UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 14:43:15',1),
(42,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','6','VPAC-CDI/17','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Seleccionar','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 14:43:53',1),
(43,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','7','VPAC-CI/20','Planes de trabajo','P',4,26,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un documento que contiene la forma en como se trabaja de forma anual, incluye la proyección de ingresos y egresos. ','Resolución, plan de trabajo','Media','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-26 16:38:03',1),
(44,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','7','VPAC-CI/21','Fichas de matricula','P',1,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un documento que acredita el registro de matricula de un estudiante.','Ficha de matricula, recibo de pago','Alta','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-26 16:47:28',1),
(45,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','7','VPAC-CI/22','Actas de Notas','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Una acta de evaluación de calificaciones es un documento oficial que relaciona los alumnos de un curso con las calificaciones finales de las asignaturas cursadas, así como la calificación global que les corresponde. Este documento recoge la evolución del alumno durante el ciclo de estudio','Acta','Alta','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-04-26 16:50:18',1),
(47,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','7','VPAC-CI/23','Certificados de estudios','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un documento oficial que acredita que una persona ha completado un plan de estudios determinado, ya sea completo o parcial. Este documento incluye la fotografía del interesado, fechas, calificaciones, nombre de las unidades de aprendizaje y otros','Acta','Alta','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-20 13:30:14',1),
(48,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','7','VPAC-CI/24','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Alta','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-20 13:30:37',1),
(49,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',4,'VICERECTORADO ACADEMICO','99','VPAC-FC','','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(50,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',5,'VICERECTORADO DE INVESTIGACION','10','VPIN/01','Reglamentos Generales de investigación','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(51,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',5,'VICERECTORADO DE INVESTIGACION','10','VPIN/02','Difusión del conocimiento ?','P',1,29,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(52,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',5,'VICERECTORADO DE INVESTIGACION','10','VPIN/03','Documentos de Movilidad y pasantía de docentes e investigadores','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(53,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',5,'VICERECTORADO DE INVESTIGACION','10','VPIN/04','Correspondencia','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(54,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',6,'DEFENSORIA UNIVERSITARIA','11','DEUN/01','Denuncias','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Son casos de estudiantes o trabajadores o administrativos o docentes que siente que se han vulnerado sus derechos. También se apoya en el proceso de seguimiento y acompañamiento a los estudiantes','Solicitud, fotografías, videos, receta medica, DNI, resolución, formato de denuncia','Alta','1. Directiva para la prevención y sansión en caso de hostigamiento sexual en la UNAJ\r\n2. Reglamento de la defensoria universitaria\r\n3. Ley Universitaria N° 30220','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-24 19:13:02',1),
(55,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',6,'DEFENSORIA UNIVERSITARIA','11','DEUN/03','Conciliaciones','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es el acto en que se llega a un acuerdo entre ambas partes','Solicitud, acta','Baja','DECRETO LEGISLATIVO QUE MODIFICA LA LEY Nº 26872, LEY DE CONCILIACIÓN\r\nDECRETO LEGISLATIVO Nº 1070 ','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-20 13:35:08',1),
(56,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',6,'DEFENSORIA UNIVERSITARIA','11','DEUN/04','Normas y políticas de defensa de los derechos de las personas','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Son documentos normativos que aseguran el derecho que tienen todas las personas para promover y proteger los derechos humanos y libertades fundamentales reconocidos en la Declaración Universal de los Derechos Humanos.','Normas y politicas','Baja','Ley N° 29360 Ley del Servicio de Defensa Pública','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 13:43:26',1),
(57,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',6,'DEFENSORIA UNIVERSITARIA','11','DEUN/05','Expedientes de Recomendaciones sobre violaciones de derechos','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','En el ejercicio de las funciones, sustanciara sus actuaciones mediante recomendaciones y sugerencias que dirigirá a los órganos o servicios que estime oportunos con conocimiento a consejo.','Cartas, informe defonsorial, actuados','Alta','Reglamento de defensoría universitaria, Ley universitaria Ley 30220, Directiva para la prevención y sanción en casos de hostigamiento sexual en la UNAJ, Reglamento de matricula, sistema curricular flexible por competencias','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 13:44:49',1),
(58,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',6,'DEFENSORIA UNIVERSITARIA','11','DEUN/06','Informes anuales de actividades','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Es la información remitidos a SUNEDU sobre los casos, consultas, denuncias, reclamos que ingresan a defensoria universitaria.  Se envía el estado en el que se encuentra, estos son: vigente, o concluido','Carta, oficio','Baja','A solicitud de la SUNEDU','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-24 19:26:37',1),
(59,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',6,'DEFENSORIA UNIVERSITARIA','11','DEUN/07','Correspondencia','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-24 19:27:27',1),
(60,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',7,'TRIBUNAL DE HONOR UNIVERSITARIO','12','TRHU/01','Juicios emitidos','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(61,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',7,'TRIBUNAL DE HONOR UNIVERSITARIO','12','TRHU/02','Calificaciones de investigación administrativa disciplinaria - Docentes','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(62,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',7,'TRIBUNAL DE HONOR UNIVERSITARIO','12','TRHU/03','Calificaciones de investigación administrativa disciplinaria - Estudiantes','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(63,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',7,'TRIBUNAL DE HONOR UNIVERSITARIO','12','TRHU/04','Sanciones','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(64,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',7,'TRIBUNAL DE HONOR UNIVERSITARIO','12','TRHU/05','Correspondencia','T',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(65,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',8,'COMISION PERMANENTE DE FISCALIZACION','13','CPF/01','Verificaciones de instancias internas','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(66,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',8,'COMISION PERMANENTE DE FISCALIZACION','13','CPF/02','Resultados de Fiscalizaciones','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(67,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',8,'COMISION PERMANENTE DE FISCALIZACION','13','CPF/03','Denuncias','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(68,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',8,'COMISION PERMANENTE DE FISCALIZACION','13','CPF/04','Pedidos de los miembros de la Comunidad Universitaria','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(69,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',8,'COMISION PERMANENTE DE FISCALIZACION','13','CPF/05','Correspondencia','T',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(70,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',9,'ORGANO DE CONTROL INSTITUCIONAL','14','OCI/01','Informes de control posterior','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(71,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',9,'ORGANO DE CONTROL INSTITUCIONAL','14','OCI/02','Informes de control simultaneo','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(72,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',9,'ORGANO DE CONTROL INSTITUCIONAL','14','OCI/03','Servicios Relacionados','?',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(73,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',9,'ORGANO DE CONTROL INSTITUCIONAL','14','OCI/09','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(74,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',10,'ASESORIA JURIDICA','15','OAJ/01','Informes jurídicos','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es reservada exclusivamente para asuntos que el fundamento jurídico de la pretensión sea razonablemente discutible, o los hechos sean controvertidos jurídicamente, y que por tal situación no pueda ser dilucidad por el propio instructor.','Informes jurídicos','Alta','Texto unico ordenado de la Ley del procedimiento administrativo general 27444, aprobado por Decreto supremo  004-2019-JUS','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-25 19:41:10',1),
(75,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',10,'ASESORIA JURIDICA','15','OAJ/02','Informes Administrativos','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es requerido por mandato expreso de la ley, como por ejemplo por el OCI en casos que conoce el tribunal de contrataciones mediante apelación en procesos de selección, o en su caso de otras entidades como el SUNEDU','Informes, informes técnicos, carta','Alta','Texto unico ordenado de la Ley del procedimiento administrativo general 27444, aprobado por Decreto supremo  004-2019-JUS\r\nDocumentos de gestión administrativa de la UNAJ\r\nROF\r\nMOF','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-04-24 20:07:04',1),
(76,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',10,'ASESORIA JURIDICA','15','OAJ/03','Demandas arbitrales','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Es un tipo de controversia sobre materia de libre disposición conforme a derecho así como aquellas que la ley o los tratados o acuerdos internacionales autoricen.  Generalmente se aplican en la entidad cuando surgen conflictos derivados de las contrataciones del estado.','Demanda arbitral, pruebas;  contestación por el demandado, pruebas del demandado;  fijación de puntos controvertidos finaliza con el acto arbitral. notificaciones a las partes del proceso arbitral, ','Baja','Decreto Legislativo 1071 Ley de arbitraje','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-24 20:13:22',1),
(77,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',10,'ASESORIA JURIDICA','15','OAJ/04','Cartas notariales','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Una carta notarial es un documento privado que sirve para comunicar, informar o exigir algo. Es enviada por una notaría, que deja constancia de la fecha y circunstancias de entrega. El notario público da fe de la entrega en un domicilio específico en una fecha y hora determinada, lo que garantiza la comunicación y establece una fecha cierta para efectos legales.','Carta notarial','Media','Ley de contrataciones del estado\r\nLey notariado\r\n','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 14:26:54',1),
(78,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',10,'ASESORIA JURIDICA','15','OAJ/05','Expedientes falsos de procesos judiciales','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Son todos lo actuados judicales y fiscales que se adjuntan a las notificaciones en los procesos judiciales y en las carpetas fiscales, respectivamente; derivados de su tramitación propia (demandas, contestación de demandas, actas de audiencias, sentencias, autos, decretos, disposiciones fisacales, proveídos, etc)','Notificación, expediente, oficios','Baja','Ley de procuradurias publica y su reglamento\r\n','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 14:29:40',1),
(79,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',10,'ASESORIA JURIDICA','15','OAJ/06','Procesos Arbitrales','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Conjunto de actos concatenados y regulados por el derecho objetivo o por normas convencionales que, con o sin la intervención de otras personas, es desarrollado por uno o más árbitros, a los que sirve de cauce formal para conocer un asunto controvertido y emanar, válidamente y en el ámbito de su competencia, una resolución final, fundamentada en criterios jurídicos o simplemente racionales, que suele adoptar la forma de laudo.','Demanda arbitral, notificaciones, expediente, cédulas de notificación, propuestos de puntos controvertidos, laudo arbitral,laudo arbitral','Alta','Decreto Legislativo Nº 1071, vigente desde el 1 de septiembre de 2008','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 14:29:00',1),
(80,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',10,'ASESORIA JURIDICA','15','OAJ/07','Copias de Carpeta fiscal','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Se tiene todas las actuaciones fiscales, entre ellas las denuncias fiscales de parte verbal o escrita, las disposiciones fiscales  los elementos de convicción (medios probatorios) que aportan las partes a la carpeta fiscal. Disposición de requerimiento de seguimiento, de acusación requerimientos mixtos','actas, notificaciones, expedientes, carpeta auxiliar, actas de declaración de testimonios, peritajes, actas de debate pericial.','Alta','Código procesal penal\r\nCódigo penal\r\nLey orgánica del ministerio publico DECRETO LEGISLATIVO Nº 052\r\nDirectivas fiscales\r\n','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-25 19:59:11',1),
(81,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',10,'ASESORIA JURIDICA','15','OAJ/08','Procesos Policiales','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Son un conjunto de acciones institucionales y sociales que tienen como objetivo proteger y garantizar los derechos y libertades de las personas. Estos procesos incluyen la prevención, investigación y conjuración de delitos, infracciones y hechos que vulneren el orden público','Informes, cartas, documentos policiales','Media','Constitución Política del Perú, en el artículo 166, que define las funciones de la Policía Nacional','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 15:12:47',1),
(82,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',10,'ASESORIA JURIDICA','15','OAJ/09','Conciliaciones','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Se realiza en base a la ley de conciliación y sus reglamento, las mismas que se realizan en lso centros de conciliacion debidamente autorizados por el miniesterio de justica a efectos de recurrir ante el poder judicial o ante los centros de arbitraje, para ello debe cumplirse requisitos y exigencias previstas en la ley, deriviados de los conflictos por las contrataciones del estado.','Solicitud, acta, notficaciones','Baja','Ley 26872 Ley de concilaicion y su reglamento  014-2018-JUS\r\nLEY DE CONTRTATACIONES DEL ESTADO 30225\r\n','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-04-24 20:40:18',1),
(83,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',10,'ASESORIA JURIDICA','15','OAJ/10','Decretos administrativos','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(84,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',10,'ASESORIA JURIDICA','15','OAJ/11','Denuncias','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Son documentos que es una declaración formal que un ciudadano realiza ante la autoridad competente para poner en conocimiento de un hecho que considera contrario a la ley. La denuncia es una vía de inicio de un procedimiento judicial en la vía penal.','Denuncia','Baja','Directiva Nº 020-2022-CG/GCSD “Servicio de Gestión de Denuncias”, la Directiva Nº 021-2019-DG-JNJ “Normas y Procedimientos para el trámite de denuncias y medidas de protección al denunciante, sobre actos de corrupción en la Junta Nacional de Justicia” y el artículo 12 del Reglamento para la atención de denuncias presentadas','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 15:16:04',1),
(85,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',10,'ASESORIA JURIDICA','15','OAJ/12','Demandas (Laboral, Civil, Contencioso Administrativo)','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Son documentos que es una petición o solicitud que interpone un colaborador que considera que sus derechos han sido vulnerados por la empresa. Ésta puede iniciarse por algún incumplimiento de lo pautado en el contrato de trabajo, por un despido injustificado, la falta de pago de salarios en tiempo y forma, jornadas de trabajo excesivas o incluso por circunstancias que se dan en el entorno como puede ser acoso o discriminación.','Solicitud, carta, informe','Baja','Ley N° 29497, Nueva Ley Procesal del Trabajo (NLPT), establece un nuevo tipo de proceso laboral que favorece la oralidad sobre la escritura','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 15:18:56',1),
(87,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',10,'ASESORIA JURIDICA','15','OAJ/13','Documentos SUNEDU','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Son documentos de la Superintendencia Nacional de Educación Superior Universitaria (SUNEDU) es un organismo público técnico especializado adscrito al Ministerio de Educación (Minedu). Su finalidad es licenciar, supervisar la calidad y fiscalizar el servicio educativo superior universitario en el Perú.','Informes, cartas, oficios','Baja','Ley N° 30220, Ley Universitaria, Ley N° 28044, Ley General de Educación, Texto Único Ordenado de la Ley N° 27444, Ley del Procedimiento Administrativo General, D.S. Nº 012-2014-MINEDU, que aprueba el Reglamento de Organización y Funciones de la Sunedu','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 15:29:44',1),
(88,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',10,'ASESORIA JURIDICA','15','OAJ/14','Correspondencia','T',2,8,10,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                             ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 15:31:18',1),
(89,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',11,'OFICINA DE PLANEAMIENTO Y PRESUPUESTO','16','OPP/01','Correspondencia','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Alta','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-06 19:55:06',1),
(90,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',11,'OFICINA DE PLANEAMIENTO Y PRESUPUESTO','17','OPP-UPM/02','Planes Estratégicos Institucionales (PEI)','P',4,26,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ ','Es un instrumento de gestión donde se establece la política institucional de la entidad y se define los objetivos estratégicos y la misión de entidad','Empastado del Plan Estrategico  PEI','Alta','CEPLAN, resolución','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-07 14:41:29',1),
(91,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',11,'OFICINA DE PLANEAMIENTO Y PRESUPUESTO','17','OPP-UPM/03','Planes Operativos Institucionales (POI)','p',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Es un instrumento de gestión de corto plazo. Tiene por finalidad donde se estable las actividades operativas e inversiones a desarrollar en la entidad en el año fiscal.','Resolucion, Actividades operativas por oficinas.','Baja','CEPLAN V1.0','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-07 14:47:25',1),
(92,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',11,'OFICINA DE PLANEAMIENTO Y PRESUPUESTO','17','OPP-UPM/04','Reglamentos de Organización y Funciones (ROF)','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Es un documento técnico normativo de gestión institucional que formaliza la estructura orgánica de una entidad. Este documento establece la naturaleza, finalidad, competencia, estructura orgánica y relaciones de una entidad pública. También contiene las funciones generales de la entidad y las funciones específicas de sus órganos y unidades orgánicas, así como sus relaciones, responsabilidades y dependencia','Resolución, opinión técnica del MINEDU, resolución de aprobación de la UNAJ, Opinión legal, oficio, informes, informes técnicos.','Baja','Resolución Ministerial N° 588-2019-MINEDU','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-07 14:50:43',1),
(93,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',11,'OFICINA DE PLANEAMIENTO Y PRESUPUESTO','17','OPP-UPM/05','Estatutos universitarios','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Es un documento que establece los principios, derechos, obligaciones y normas que rigen la vida académica y administrativa de una universidad. Es un referente clave para el desarrollo de las actividades universitarias y el respeto a los valores institucionales.','Informe, resolución, informe legal','Baja','Ley Universitaria 30220','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-07 14:52:38',1),
(94,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',11,'OFICINA DE PLANEAMIENTO Y PRESUPUESTO','17','OPP-UPM/06','Texto Único de Procedimientos Administrativos (TUPA)','P',5,25,30,'Directivas y lineamientos de la Secretaria de Gestión Pública de la PCM','Es el documento de gestión pública, que contiene los procedimientos administrativos y servicios exclusivos que brinda Universidad UNAJ a la ciudadanía. El TUPA brinda claridad sobre los requisitos para realizar su trámite ante la UNAJ','Resolución, Expediente del TUPA, Tablas ASME y costeo de cada procedimiento','Baja','Directivas y lineamientos de la Secretaria de Gestión Pública de la PCM','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-07 14:56:56',1),
(95,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',11,'OFICINA DE PLANEAMIENTO Y PRESUPUESTO','17','OPP-UPM/07','Texto Único de Servicios No Exclusivos (TUSNE)','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Es un instrumento de gestión donde se establece los servicios no exclusivos que brinda la UNAJ','Resolución, informe, expediente de TUSNE','Baja','Ley 27444 Ley General de Procedimiento Administrativo','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-07 14:58:39',1),
(96,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',11,'OFICINA DE PLANEAMIENTO Y PRESUPUESTO','17','OPP-UPM/08','Gestiones de procesos','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Es un documento de gestión donde se establece los procesos misionales y estratégicos de soporte que realiza la entidad para satisfacer las necesidades de los usuarios MAPRO.','Flujograma de procesos, mapas de procesos, fichas técnicas de procesos','Baja','Lineamientos y directivas de la Secretaria de Gestión Pública de la PCM','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-07 15:02:55',1),
(97,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',11,'OFICINA DE PLANEAMIENTO Y PRESUPUESTO','17','OPP-UPM/09','Evaluaciones del PEI','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Son documentos donde se mide el avance de los indicadores de los objetivos y acciones estratégicas de la UNAJ','Informe, resolución, informe técnico, oficio, hoja de tramite.','Alta','CEPLAN V1.0','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-07 14:45:39',1),
(98,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',11,'OFICINA DE PLANEAMIENTO Y PRESUPUESTO','17','OPP-UPM/10','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 15:34:33',1),
(99,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',11,'OFICINA DE PLANEAMIENTO Y PRESUPUESTO','18','OPP-UP/11','Certificaciones','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es la primera fase de ejecución de gasto mediante el cual se dispone la asignación de disponibilidad presupuestal por cada meta y fuente de financiamiento. Garantiza que se cuenta con el crédito presupuestario disponible y libre de afectación.','Resoluciones, cartas, informes, informe jurídico, memorandum','Nula','Directiva de ejecución presupuestal N° 0001-2024-EF/50.01','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 16:56:30',1),
(100,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',11,'OFICINA DE PLANEAMIENTO Y PRESUPUESTO','18','OPP-UP/12','Modificaciones presupuestales (Notas)','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Constituyen cambios en los créditos presupuestarios, tanto en su cuantía como en el nivel Institucional (créditos suplementarios y transferencias de partidas) y, en su caso, a nivel funcional programático (habilitaciones y anulaciones). Las modificaciones presupuestarias pueden afectar la estructura funcional-programática a consecuencia de la supresión o incorporación de nuevas metas presupuestarias.','Oficios, resoluciones, notas de modificación presupuestal','Nula','Directiva de ejecución presupuestal N° 0001-2024-EF/50.01','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 17:02:51',1),
(101,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',11,'OFICINA DE PLANEAMIENTO Y PRESUPUESTO','18','OPP-UP/13','Presupuestos Iniciales de Apertura (PIA)','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Son documentos acerca del presupuesto inicial asignado a la Universidad Nacional de Juliaca para el año fiscal respectivo en la Ley de Presupuesto y puede ser modificado en el trascurso del periodo.','Resolución, PIA','Baja','Ley de presupuesto para el año fiscal en curso, Decreto Legislativo N° 1440','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-20 17:08:25',1),
(102,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',11,'OFICINA DE PLANEAMIENTO Y PRESUPUESTO','18','OPP-UP/14','Conciliaciones de Marco legal','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Son documentos o actos administrativos que se efectúan en la entidad el Ministerio de Economía y finanzas, sobre el reporte de gastos e ingresos realizados por la institución.  A partir del 2020 esta documentacion se informa de forma virtual, mediante un aplicativo.','Oficio, Acta de conciliación, reportes','Nula','DIRECTIVA N° 005-2022-EF/51.01 Normas para la preparación y presentación de la información financiera y presupuestaria de las entidades del sector público y otras formas organizativas no financieras que administren recursos públicos para el cierre del ejercicio fiscal y los períodos intermedios','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 17:16:37',1),
(103,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',11,'OFICINA DE PLANEAMIENTO Y PRESUPUESTO','18','OPP-UP/15','Expedientes de Formulación de presupuesto Multianual','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Estos documentos reflejan la programación multianual presupuestaria y formulación presupuestaria  de la universidad Nacional de Juliaca','Oficios, resumen ejecutivo de la programación multianual presupuestaria y formulación presupuestaria','Nula','Directiva N° 0002/2024-EF-50.01','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 17:20:58',1),
(104,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',11,'OFICINA DE PLANEAMIENTO Y PRESUPUESTO','18','OPP-UP/16','Correspondencia','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Alta','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 17:21:26',1),
(105,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',11,'OFICINA DE PLANEAMIENTO Y PRESUPUESTO','19','OPP-UF/17','Perfiles de proyectos','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Es un documento que consigna un estudio preliminar de una inversión','Perfil (PIP), antecedentes','Alta','Directiva 001-2019-MEF, Sistema Inverte PE','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-06 19:22:44',1),
(106,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',11,'OFICINA DE PLANEAMIENTO Y PRESUPUESTO','19','OPP-UF/18','Estudios de perfil de IOAR','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Son documentos en respuesta inmediata a necesidades de inversión a corto plazo','Perfil (PIP), antecedentes','Alta','Directiva N° 001-2019-EF/63.01, Sistema Invierte PE','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-06 19:26:51',1),
(109,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',11,'OFICINA DE PLANEAMIENTO Y PRESUPUESTO','19','OPP-UF/19','Correspondencia','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Alta','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 15:37:46',1),
(110,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',13,'GESTION DE CALIDAD','23','OGC/01','Lineamientos, políticas y directivas de calidad Universitaria','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Propone lineamientos, políticas y directivas de calidad universitaria en la UNAJ','Lineamientos, políticas y normas','Media','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ       ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 16:19:44',1),
(111,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',13,'GESTION DE CALIDAD','23','OGC/02','Expedientes de Procesos de Licenciamiento Institucional','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                          ','Solicitud, formato de solicitud de licenciamiento, formato de solicitud de modificación de licencia institucional, declaración jurada, anexos de licenciamientos ','Formatos de licenciamiento, mallas curriculares por programa de estudio, indicadores de diversos tipos, informes','Baja','1. Ley Universitaria 30220\r\n2. Modelo de licenciamiento y su implementación en el sistema universitario peruano\r\n3. Decreto Supremo 016-2015-MINEDU Politca de aseguramiento de la calidad educativa superior universitaria','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 16:22:00',1),
(113,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',13,'GESTION DE CALIDAD','23','OGC/03','Implementaciones del Sistema de Gestión de la Calidad Universitaria','T',3,5,8,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Son documentos de mejora de la calidad universitaria en el tramite administrativo, académico','Informe, plan de trabajo, silabus','Baja','Cumplimiento de los requerimientos del sistemas de gestion de la calidad SUNEDU\r\nResolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 16:27:01',1),
(114,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',13,'GESTION DE CALIDAD','23','OGC/04','Documentos de Monitoreos del Sistema de Seguridad de salud en el Trabajo','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                        ','Son instrumentos de gestión que contribuyen a la mejora y al cuidado de la salud de todos los trabajadores, estudiantes y personal.  ','Carta, informe, normativa, carta multiple, registro de equipos de seguridad y emergencia, registro de estadisticas de seguridad y salud, inspecciones, simulacros, capacitaciones','Media','1. Ley 29783  Ley de Seguridad y Salud en el Trabajo y su reglamento D.S. 005-2012-DR\r\n','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 16:28:11',1),
(116,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',13,'GESTION DE CALIDAD','23','OGC/05','Solicitudes de modificación de licencias','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(118,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',13,'GESTION DE CALIDAD','23','OGC/06','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Alta','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-24 21:54:02',1),
(119,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',14,'OFICINA DE COMUNICACIÓN E IMAGEN INSTITUCIONAL','24','OCII/01','Boletines Informativos','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Son publicaciones que se realizan de manera mensual o semestral, dependiendo a la relevancia de la informacion.','Boletin','Media','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-26 15:47:29',1),
(120,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',14,'OFICINA DE COMUNICACIÓN E IMAGEN INSTITUCIONAL','24','OCII/02','Memorias anuales','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un documento que sustenta las actividades de la UNAJ','Solicitud, cartas, informes, Memoria anual','Baja','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-26 15:34:22',1),
(121,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',14,'OFICINA DE COMUNICACIÓN E IMAGEN INSTITUCIONAL','24','OCII/03','Notas de prensa','T',1,4,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un documento redactado por la oficina, de una actividad, suceso o hecho que ocurre en la UNAJ de las actividades académicas, de investigación, administrativas o de otra índole relacionadas con la UNAJ','Notas de prensa','Alta','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-04-26 15:38:48',1),
(122,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',14,'OFICINA DE COMUNICACIÓN E IMAGEN INSTITUCIONAL','24','OCII/05','Archivo Multimedia - DIGITAL','P',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Es un colección de de fotografias, imagenes y videos de las actividaes realizadas de la parte academica, de investigación e institucionales.','Fotografias, Videos en formato digital','Alta','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel(  ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-26 15:40:34',1),
(124,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',14,'OFICINA DE COMUNICACIÓN E IMAGEN INSTITUCIONAL','24','OCII/07','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Alta','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-26 15:43:27',1),
(125,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','25','DIGA/01','Resoluciones administrativas','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Una resolución administrativa es una orden escrita dictada por el jefe de administración que tiene carácter general, obligatorio y permanente, y se refiere al ámbito de competencia de la universidad. Las resoluciones administrativas son actos administrativos de contenido decisorio que afectan a los derechos e intereses de los administrados, emitidos por autoridad o funcionario público de forma oral o escrita.','Resolución, bases, informe, carta, hoja de tramite, constancia, memorandum, plan de trabajo, plan de investigación, informe juridico','Baja','Resolución de CCO N° 436-2023-CCO-UNAJ, TUSNE, Directiva N 003-2021-CCO-UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-07 13:39:57',1),
(127,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','25','DIGA/02','Declaraciones juradas de Bienes y Rentas','T',1,7,8,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                          ','Son documentos de cumplimiento tanto a la contraloria como a la SUNAT, donde se consigna bienes y rentas en forma anual.  Este puede ser al inicio  y al cesar de los funcionarios.','Oficio, carta, declaración de conflicto de interés, Resolución','Baja','Contraloria General de la Republica','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-07 13:52:48',1),
(128,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','25','DIGA/03','Controles internos','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Son documentos son basados a un plan anual.  esta contempla las sección medidas de control y sección medidas de remediación.  Las Medidas de remediación se reprograman si no se llegaron a cumplir en dentro del plan.','Reporte del plan anual control,  Reporte del plan anual control remediación, Informe, memorandum, carta, carta múltiple, memorandum múltiple, plan de trabajo, resolución.','Baja','Directiva N° 006-2019-CG/INTEC','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-07 14:06:36',1),
(129,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','25','DIGA/04','Rendiciones de cuentas y tranferencias de gestión','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Cuando un congresista deja el cargo y esto se rinde cuentas.  Se hace por cada periodo ya ha terminado.  Conforma la agrupación de diferentes documentos de varias oficinas que reportan los resultados de la gestión, sus logros, avances, limitaciones entre otros. ','Oficios, informes, memorandum, cartas, cartas múltiples, memorandum múltiples, constancia, informe de rendición de cuentas de titulares, transferencia de gestión, oficio circular, oficio múltiple.  Sistema','','Directiva N° 016-2022-CG/PREVI Rendición de cuentas de titulares y transferencia de gestión','Seleccionar','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-07 14:14:56',1),
(130,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','25','DIGA/05','Diferencias de auditoria','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                          ','Es una revisión sistemática de una actividad o de una situación para evaluar el cumplimiento de las reglas o criterios objetivos a que aquellas deben someterse.','Informe, memorandum, carta, auditoria, actas de conciliación, nota de contabilidad, memorandum múltiple, reporte de deficiencias significativas, acta de entendimiento de equipo de auditoria financiera gubernamental por periodo, actas de instalación.','Baja','Directiva 005-2022-CG/GAD Gestión de sociedad de auditoria para la ejecución de auditorias financieras gubernamentales ','Confidencial','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-07 14:22:59',1),
(134,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','25','DIGA/07','Correspondencia','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 16:33:39',1),
(135,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/11','Expedientes de procesos CAS','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Son documentos administrativos de tipo CAS que  es una modalidad contractual de la Administración Pública, privativa del Estado, que vincula a una entidad pública con una persona natural que presta servicios de manera no autónoma.','Resolución de comisión organizadora, informes, actas, registro de asistencia, formato de evaluación de entrevista final, fromato 3 y 2 evaluación técnica / conocimientos, carta, preguntas formuladas por cada unidad, solicitud, bases, formatos de perfil, citación, hoja de trámite, \r\n','Media','Decreto Legislativo 1057 Decreto Legislativo que regula el régimen especial de contratación administrativa de servicios','Seleccionar','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-13 16:28:10',1),
(136,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/12','Contratos administrativos','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Son documentos de un acto administrativo que determina el vinculo de una persona natural con la institución.','Contrato, adenda, carta, informes, Oficios, Hoja de tramite, memorandum','Media','Ley N° 30220 Ley universitaria y sus modificaciones, Ley N° 31953 Ley de presupuesto del sector publico para el año fiscal, Ley 29849 Ley que establece la eliminacion progresiva del Regimen especial del Decreto Legislatvio N° 1057 y otorga derechos laborales, Ley N° 27815 Codigo de ética de la Función Pública y normas complementarias, DL 1057, Decreto supremo N° 065-2011-PCM','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-13 16:17:28',1),
(137,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/13','Contratos docentes','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Es un acto administrativo que determina el vinculo de una persona natural docente con la institución','Contrato, carta','Baja','Ley N° 30220 Ley universitaria y sus modificaciones, Ley N° 29074 Ley quer crea la Universidad Nacional de Juliaca,  Ley de presupuesto del sector publico para el año fiscal, Ley 27444 Ley del procedimiento Administrativo General,  , Ley N° 27815 Codigo de ética de la Función Pública y normas complementarias, Ley 26771 Prohibición de ejhercer la facultad de nombramiento y contratacion de un personal en el sector publico en casos de parentesco, Ley N° 30057 Ley del Servicio Civil., Resolución viceministerial N° 244-2021-MINEDU, Resolucion N° 404-2021-CCO-UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-13 16:27:50',1),
(138,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/14','Legajos de personal Docente Ordinario','P',30,0,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Es un documento oficial e individual de carácter estrictamente confidencial y de valor permanente, en el cual se archivan y registran los documentos personales y administrativos del Servidor Civil a partir de su ingreso a la Administración Pública y todo lo que genere en la propia entidad, así como lo incorporado durante su relación laboral.','Resolución, Declaraciones juradas, carta, certificado de antecedente penales y policiales, certificado de salud mental, certificado de salud, grados y Títulos, certificados de habilidad, Títulos profesionales, títulos técnicos, Certificados, experiencia profesional, experiencia docente universitaria, copia de contratos, pasantias, constancias, capacitaciones, producción intelectual de investigación, libros, artículos en revistas cientificas, ISBN, patentes, registro de software, CV.','Baja','Normas para la administración de legajos personales de los servidores del programa nacional PLATAFORMA DE ACCION PARA LA INCLUSIÓN SOCIAL - PAIS. PAIS-GHR.P23','Confidencial','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-13 17:18:14',1),
(139,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/15','Legajos de personal CAS Indeterminado','P',30,0,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Es un documento oficial e individual de carácter estrictamente confidencial y de valor permanente, en el cual se archivan y registran los documentos personales y administrativos del Servidor Civil a partir de su ingreso a la Administración Pública y todo lo que genere en la propia entidad, así como lo incorporado durante su relación laboral.','Títulos profesionales, títulos técnicos, Certificados, experiencia laboral, informe de vacaciones, permisos, documentos de rotación, asignación de funciones o encargaturas, uso de viáticos, sanciones, culminación o cese de funciones.  ','','Normas para la administración de legajos personales de los servidores del programa nacional PLATAFORMA DE ACCION PARA LA INCLUSIÓN SOCIAL - PAIS. PAIS-GHR.P23','Seleccionar','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-13 16:57:27',1),
(140,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/16','Legajos de personal Docente Contratado','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Es un documento oficial e individual de carácter estrictamente confidencial y de valor permanente, en el cual se archivan y registran los documentos personales y administrativos del Servidor Civil a partir de su ingreso a la Administración Pública y todo lo que genere en la propia entidad, así como lo incorporado durante su relación laboral.','Declaración jurada, Fichas de cotejo, carta multiple, resolución, solicitud, certificado de habilidad, hoja de vida (CV), silabo','Baja','Normas para la administración de legajos personales de los servidores del programa nacional PLATAFORMA DE ACCION PARA LA INCLUSIÓN SOCIAL - PAIS. PAIS-GHR.P23','Confidencial','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-13 17:05:58',1),
(141,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/17','Legajos de personal CAS Determinado','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Es un documento oficial e individual de carácter estrictamente confidencial y de valor permanente, en el cual se archivan y registran los documentos personales y administrativos del Servidor Civil a partir de su ingreso a la Administración Pública y todo lo que genere en la propia entidad, así como lo incorporado durante su relación laboral.','Títulos profesionales, títulos técnicos, Certificados, experiencia laboral, informe de vacaciones, permisos, documentos de rotación, asignación de funciones o encargaturas, uso de viáticos, sanciones, culminación o cese de funciones.  ','Alta','Normas para la administración de legajos personales de los servidores del programa nacional PLATAFORMA DE ACCION PARA LA INCLUSIÓN SOCIAL - PAIS. PAIS-GHR.P23','Confidencial','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-13 16:57:11',1),
(142,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/18','Planillas de pagos','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','La planilla de pago es el documento en el que se especifican los detalles y aspectos vinculados con el sueldo de la persona. En ella aparece el sueldo bruto, las distintas bonificaciones, los aportes que realiza y las deducciones que experimenta según su tipo de contrato.','Planilla de pago, Informe, carta','Baja','AIRHSP que es el Aplicativo Informático para el Registro Centralizado de Planillas y de Datos de los Recursos Humanos del Sector Público es una herramienta operativa de gestión en materia de recursos humanos del Estado. Artículo 2 de la Ley Nº 28411, Ley General del Sistema Nacional de Presupuesto, que a través de sus Unidades Ejecutoras proporcionan la información del personal activo, pensionistas y modalidades formativas a su cargo.','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-20 21:31:22',1),
(143,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/19','Cuadros de Asignación de Personal - CAPP','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','El Cuadro para Asignación de Personal (CAP) es el Documento de Gestión Institucional que contiene la planta orgánica de cargos definidos y aprobados de la Entidad, necesarios para su adecuado funcionamiento, sobre la base de su estructura orgánica prevista en el Reglamento de Organización y Funciones (ROF)','Cuadro para Asignación de Personal (CAP), resolución, informes, cartas, formatos, oficios','Nula','Directiva N° 006-SERVIR-GDSRH Elaboración del manual de cargos y del cuadro para asignación de personal provisional.  Ley 30220 Ley universitaria.  Estatuto universitario.','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-13 17:27:10',1),
(144,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/20','Presupuestos Analiticos de Personal PAP','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Es un documento técnico normativo de gestión institucional, cuya finalidad es regular la estimación de los costos de personal, del número de plazas necesarias para un período determinado en función del Presupuesto aprobado (la disponibilidad presupuestal)','Cuadro de prepuesto analítico, Oficio, informe','Nula','Directiva N° 005-2021-DF/53.01 Lineamientos para la formulación, registro y modificación del Prespuesto analitico del personal (PAP) en las entidades del sector publico, aprobado por Resolución directoral N° 0109-2021-EF/53.01','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-13 17:30:57',1),
(145,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/21','Boletas de pago','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Una boleta de pago es un documento que acredita que un trabajador ha sido remunerado por el trabajo realizado en una relación laboral. La boleta de pago debe estar firmada por el trabajador o debe haber constancia de que ha recibido la boleta si el pago se realiza a través de terceros.','Boleta de pago','Alta','Ley N° 27658,Ley Marco de la Modernización de la Gestión del Estado, Ley N° 30840,Ley que promueve el Servicio de Facilitación Administrativa Preferente en Beneficio de Personas en Situación Especial de Vulnerabilidad a través de medios tecnológicos o de atención administrativa domiciliaria, Decreto Supremo N° 052-2008-PCM,que aprueba el Reglamento de la Ley 27269, Ley de Firmas y Certificados Digitales.Decreto Supremo N° 007-2011-PCM','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-13 19:47:22',1),
(146,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/22','Reglamentos, Lineamientos y/o Directivas','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Los reglamentos, lineamientos y directivas son normas que emanan de una autoridad normativa y tienen como objetivo regular las relaciones sociales','Reglamentos, Lineamientos y/o Directivas','Media','Ley 30220','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-13 19:50:22',1),
(147,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/23','Expedientes de sanciones','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Un expediente sancionador es una amonestación oficial que te llega cuando incumples alguna norma.','Informes, reportes del registro nacional de sanciones contra servidores civiles - transparencia.','Baja','Reglamento de la Comisión Organizadora UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-13 19:59:43',1),
(148,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/24','Expedientes del Órgano sancionador de informes de no a lugar','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Un órgano sancionador es el órgano que tiene la potestad de imponer sanciones a los ciudadanos por la comisión de infracciones administrativas previstas en la ley. El órgano sancionador puede determinar la inexistencia de responsabilidad, establecer que si existe responsabilidad, o imponer una sanción distinta a la recomendada. Sin embargo, el órgano sancionador no puede imponer una sanción de mayor gravedad a la que puede imponer dentro de su competencia','Reporte del Registro nacional de Sanciones contra los servidores civiles, resoluciones, carta, informes, proveído, solicitud, constancia de notificación, resolución directoral administrativa, memorandum, informe jurídico, cédula de notificación, oficio, informe de control especifico, ','Media','Directiva N° 02-2015-SERVIR/GPGSC Régimen Disciplinario y Procedimiento Sancionador de la Ley N° 30057, Ley del Servicio Civil','Reservada','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-13 20:13:53',1),
(149,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/25','Liquidaciones de vacaciones truncas','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Las vacaciones truncas se producen cuando un trabajador termina su relación laboral con su empleador antes de cumplir un año. En este caso, la empresa debe pagar al trabajador una remuneración vacacional proporcional a los meses y días trabajados','Informes, cartas, memorandum, Informe jurídico, planilla de liquidación ','Nula','Decreto Legislatvio N° 1057','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-13 20:26:13',1),
(151,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/27','Planes de desarrollo del personal (Capacitaciones)','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','La capacitación de personal es el conjunto de formaciones, entrenamientos o actividades que la UNAJ realiza para que sus colaboradores adquieran y desarrollen habilidades o conocimientos enfocados a hacer mejor su trabajo.','Plan de Desarrollo de las personas, actas de validación de desarrollo de personal,cartas, oficios, Resolución, cronogramas de capacitación.','Media','LEY DEL SERVICIO CIVIL, Ley N° 30057, Artículo N°10, Decreto Supremo N° 040-2014-PCM. Reglamento General de la Ley del Servicio Civil, Artículo N° 9.','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-13 20:32:18',1),
(152,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/28','Cargos de entrega de certificados y constancias de trabajo (Varios)','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Son documentos que acreditan que una persona haya laborado o siga laborando en la institución.  Este tramite inicia con la solicitud del administrado.','Certificados, constancias, cartas, informes, solicitud, contrato','Alta','Segun contrato, segun RIS ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-13 20:38:54',1),
(153,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/29','Convenios colectivos','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Acuerdo vinculante entre los representantes de los trabajadores y los empresarios de un sector o empresa determinados, que regula las condiciones laborales.','Informes, actas, copia de planilla de afiliados al sindicato, resolución','Nula','Ley 31188 Ley de Negociación Colectiva en el Sector Estatal','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-13 20:43:07',1),
(154,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/30','Documentos de control de asistencias','T',2,2,4,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Son documentos que compones los siguiente: control de asistencias, papeletas de salida, actas de reincorporacion, asistencias manuales, justificación de tardanzas e inasistencias, entre otros.','control de asistencias, papeletas de salida, actas de reincorporacion, asistencias manuales, licencias','Nula','Reglamentos Interno de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-13 20:50:40',1),
(155,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/31','Memorándums','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Un memorándum es un documento oficial interno que comunica brevemente un asunto relevante que el destinatario debe tener en cuenta. Es un informe que recoge hechos y razones que deben tenerse en cuenta en un determinado asunto.','Memorandum','Media','ROF UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-13 20:51:34',1),
(156,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','26','DIGA-URH/32','Correspondencia','T',3,5,8,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(157,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','27','DIGA-ABAS/33','Expedientes de contratación de procesos','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Son documentos de procesos de selección y/o contratación para efectos de procesos de selección para la ejecución de un bien o servicio\r\nRequerimiento, previsión presupuestal, estudio de mercado, resolución, resumen ejecutivo, bases, aprobación de bases, presentacion de ofertas, calificaciones, buena pro,  ','Carta, hoja de proveido, contrato, expediente de contratación, requisitos de la formalización del contrato, ordenes de compra','Alta','Ley de contrataciones del estado 30225','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-06 20:25:16',1),
(158,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','27','DIGA-ABAS/34','Expedientes de contratos (Locación, otros)','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Son documentos por la cual se establece el vinculo laboral entre la entidad con el locador, donde se establece monto y plazo de la prestacion del servicio.  Esta se inicia con un requerimiento, previsión presupuestal, estudio de mercado, resolución, resumen ejecutivo, bases, aprobación de bases, presentación de ofertas, calificaciones, buena pro,  ','Informe, carta, TRD, disponibilidad prespuestal, estudio de mercado, Legajo personal, contrato','Alta','Ley de contrataciones del estado, D.S 1057 Ley de Contratación administrativa de Sercivios, Ley 27444 Ley del Procedimiento administrativo; Codigo Civil del Perú','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-06 20:30:22',1),
(159,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','27','DIGA-ABAS/35','Ordenes de compra y servicios','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Es un contrato entre la UNAJ con el proveedor, segun la seleccion realizada en base a especificaciones tecnicas.','Informe, carta, oficios, certificacion prespuestal, informe juridico, estudio de mercado, cotizaciones, procesos de seleccion, peru compra, compra directa, orden de compra, hoja SIGA','Alta','Ley de contratacion del Estado Ley 30225, Directiva de contrataciones de 8 UIT','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-06 20:35:26',1),
(160,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','27','DIGA-ABAS/36','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(161,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','28','DIGA-ALMAC/37','Pecosas','T',3,2,5,'Directiva 004-2021-EF/54.01 MEF','Es un documento que justifica la salida y bienes y/o materiales del almacén, hacia el área usuario debidamente firmada por el área usuario y el responsable de almacén.','orden de compra, guia de remision, pecosa','Alta','MEF','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-04-23 17:06:22',1),
(162,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','28','DIGA-ALMAC/38','Notas de Entrada de almacén','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Se utiliza para informar sobre ingresos de bienes al almacén por conceptos distintos de la adquisición tales como donación de bienes, producción de bienes, sobrantes de inventario remesa de bienes, transferencias','NEA, Inventario, resolución, póliza, factura y/o boleta de compra','Baja','SIGA-MEF','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-20 21:35:11',1),
(163,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','28','DIGA-ALMAC/39','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Alta','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-04-23 17:07:47',1),
(164,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','29','DIGA-UEI/40','Expedientes técnicos','P',4,26,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Son documentos relacionados a un proyecto donde contiene la información al detalle incluyendo presupuesto y programación','resolución, Informe, carta, informe técnico, informe jurídicos, medios electrónicos','Alta','Reglamento de contrataciones del estado; Reglamento nacional de edificaciones; Directivas General del sistema nacional de programación multianual y gestión de inversiones N° 0011-2019-EF/63.01','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-06 19:45:27',1),
(165,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','29','DIGA-UEI/41','Valorizaciones','P',4,26,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Es un informe mensual que corresponde a la valorización de mensual de acuerdo a la programación de obra','Informe, carta, Informe mensual, informes de calidad, informes de calidad de material, cuaderno de obra, programacion de obra, resoluciones, planes de replanteo','Alta','Reglamento de contrataciones del estado; Reglamento nacional de edificaciones; Directivas General del sistema nacional de programación multianual y gestión de inversiones N° 0011-2019-EF/63.01','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-06 19:48:34',1),
(166,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','29','DIGA-UEI/42','Liquidaciones de obras','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Es el presupuesto real de un proyecto de ejecución.  Hay expedientes de liquidación de ejecución de obra y de consultorías.','Memoria descriptiva, informes, informe general de obra, detalle de partidas ejecutadas, % de avance de obra, equipos y maquinaria, resumen de valorización, control general de valorizaciones, valorización desagregada, planilla de metrados, calendario valorizado de avance obra, ficha técnica, panel fotográfico.','Alta','Reglamento de contrataciones del estado; Reglamento nacional de edificaciones; Directivas General del sistema nacional de programación multianual y gestión de inversiones N° 0011-2019-EF/63.01','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-06 19:52:53',1),
(167,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','29','DIGA-UEI/43','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Alta','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-06 19:54:24',1),
(168,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','30','DIGA-CONTA/44','Libros contables','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Son documentos que se evidian los gastos o movimientos de ingresos y salidas.   documentos que sirven para extraer información económica y financiera de la empresa','Libro mayor, libro diario','Nula','Ley 28708 Ley Sistema Nacional de Contabilidad ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 16:10:56',1),
(170,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','30','DIGA-CONTA/46','Libros de Inventarios y Balances','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Son documentos que muestran lo movimientos económicos, de activos y existencias, incluye información financiera de todos los activos','Empastado ','Nula','Ley 28708 Ley Sistema Nacional de Contabilidad ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 16:13:10',1),
(171,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','30','DIGA-CONTA/47','Documentos de Movimientos de almacenes','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','En base a las notas de almacen se generan una nota de contabilidad, se realiza de forma mensual.  ','Notas de contabilidad, informe, reporte de entrada de almacén, pecosa, inventarios, ','Nula','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 16:16:38',1),
(172,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','30','DIGA-CONTA/48','Conciliaciones bancarias','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','La conciliación bancaria es la comparación que se lleva a cabo entre los registros contables de la cuenta corriente de la empresa y los ajustes que el banco realiza en la misma cuenta.  Estas se realizan de forma trimestral','Carta, conciliaciones por cuentas bancarias','Nula','Ley 28708 Ley Sistema Nacional de Contabilidad ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 16:20:22',1),
(173,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','30','DIGA-CONTA/49','Informaciones financieras de presupuestaria','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','El presupuesto contable es un documento que refleja una previsión o predicción de cómo serán los resultados y los flujos de dinero que se obtendrán en un periodo futuro. Este es un cálculo aproximado de los ingresos y gastos que se obtendrán tras la realización de la actividad','Oficio, hoja de presentación de información, estado situacional financiero, saldo histórico, notas comparativas a los estados financieros, efectivo y equivalente de efectivo, análisis de cuenta, análisis de bienes y servicios, ','Nula','Ley 28708 Ley Sistema Nacional de Contabilidad ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 16:27:24',1),
(174,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','30','DIGA-CONTA/50','Inventarios de Bienes Patrimoniales','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','El inventario es una relación detallada, ordenada y valorada de todos los bienes, derechos generados por el area de patrimonio, que sirve para comprobar cuáles son los elementos que componen su patrimonio a una fecha determinada.','Listado de bienes muebles','Nula','Ley Nº 29151, Ley General del Sistema Nacional de Bienes Estatales y su Reglamento D.S. Nº 007-2008-VIVIENDA ,\r\ny modificatorias D.S. Nº 007-2010-VIVIENDA y D.S. Nº 013-2012-VIVIENDA','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 16:30:31',1),
(175,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','30','DIGA-CONTA/51','Inventarios Físicos de libros de Biblioteca','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','El inventario es una relación detallada, ordenada y valorada de todos el material bibliográfico, generados por el área de patrimonio, que sirve para comprobar cuáles son los elementos que componen su patrimonio a una fecha determinada.','Libros, Revistas, Guías, Informes de practicas, tesis','Nula','FORMATOS DE LA SUNEDU, Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 16:32:20',1),
(176,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','30','DIGA-CONTA/52','Sinceramientos contables','T',3,7,10,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                             ','Son documentos contables de análisis y depuración de los movimientos económicos de bienes, bienes activos de la universidad, cuya finalidad es reflejar de forma verídica los movimientos, excedentes o faltantes en el ejercicio fiscal de cada año.','Resolución, informe técnico, acta, hoja de tramite, carta, RNP, comprobantes de pago, memorandum, planilla de viaticos','Nula','Ley 28708 Ley Sistema Nacional de Contabilidad ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 16:45:41',1),
(177,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','30','DIGA-CONTA/53','Declaraciones a la SUNAT','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Son las Declaraciones en las que el Contribuyente o Declarante determina el importe de impuestos a pagar, es decir la deuda tributaria en un periodo determinado.  Esto se realiza de forma mensual','Formularios de declaración 0621, constancias de recepción de información, comprobantes de retención, facturas emitidos por la universidad, formulario 626','Nula','Norma N°5. MARCO NORMATIVO SAFE – 2015 en Ingles ; Norma N°6. LEY GENERAL DE ADUANAS DECRETO LEGISLATIVO N° 1235 ARTÍCULOS PERTINENTES','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 16:42:43',1),
(180,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','30','DIGA-CONTA/54','Correspondencia','T',2,8,10,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Alta','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 16:44:54',1),
(181,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','31','DIGA-TESO/57','Comprobantes de pago','T',6,6,12,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                             ','Son documentos que sirven como evidencia de una transacción financiera entre dos partes. Este documento incluye información crucial, como la fecha de la transacción, el monto pagado, el método de pago utilizado y los detalles tanto del pagador como del receptor.','Nota de pago, Comprobante de pago, constancia de pago, factura, carta, orden de servicio, hoja de tramite, formatos, memorandum, certificación de presupuesto, solicitud de cotización, informe de actividades, valorizaciones, planos, resolución, planes de trabajo.','Baja','Ley General de Tesorería N° 28693, DL 1441','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 15:57:25',1),
(182,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','31','DIGA-TESO/58','Recibos de Ingresos RDR','T',6,4,10,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Documentos que acreditan la entrega de un importe generalmente por ingresos recaudados por la institución. La dirección nacional del tesoro público regula los procedimientos para la percepción o recaudación así como para su depósito y registro en las cuentas del tesoro público.','Esta serie está conformada por vouchers del depósito, los recibos de ingreso por recursos directamente recaudados segun TUPA','Media','D.L N° 1441- Ley Del Sistema Nacional De Tesorería, Directiva de Tesorería N° 001-2007-EF/77.15\r\nLey Nº27444- Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-21 16:00:02',1),
(183,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','31','DIGA-TESO/59','Vouchers de depositos','T(antes P)',6,4,10,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(184,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','31','DIGA-TESO/60','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(185,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','33','DIGA-USG/61','Expedientes técnicos de mantenimiento','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Es un expediente que se inicia a traves de una necesidad institucional, que pasa por diversos actos administrativos, para brindar la solución a la necesidad requerida.','Carta, informes, Oficios, planos, medios magneticos (CD o DVD), memoria descriptiva, resolución','Media','La Norma Técnica “Disposiciones para la ejecución del Programa de Mantenimiento para el año 2024”','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 13:45:41',1),
(186,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','33','DIGA-USG/62','Correspondencia','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Alta','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-24 19:36:41',1),
(187,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','33','DIGA-USG/63','Papeletas de salida vehicular','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Son documentos de control de movimiento y desplazamiento vehicular de la institución, debidamente autorizados, donde se consigna el nombre del vehículo, placa, hora de salida, fecha, hora de llegada entre otros. ','Papeletas, vale de combustible, resolucion u otros documentos','Alta','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-24 19:39:57',1),
(188,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','33','DIGA-USG/64','Documentos SOAT','T',1,1,2,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','El Seguro Obligatorio de Accidentes de Tránsito, mejor conocido como SOAT, se encuentra vigente desde el 2002','SOAT','Baja','La Ley N° 27181, Ley General de Transporte y Tránsito Terrestre, en su Artículo 30°','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 13:47:55',1),
(189,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','33','DIGA-USG/65','Fichas Técnicas vehiculares','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Es un documento por medio del cual se les asigna un vehiculo.  Esta contiene las características completo del vehiculo, su estado, y las herramientas de dicho vehiculo.','Acta, ficha técnica, memorandum','Media','DIRECTIVA DE USO, CONTROL, MANTENIMIENTO, REPARACIÓN Y ABASTECIMIENTO DE COMBUSTIBLE DE LOS VEHÍCULOS DE LA UNIVERSIDAD NACIONAL DE JULIACA - UNAJ Directiva N° 004-2023-UNAJ/USG','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 13:49:03',1),
(190,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','33','DIGA-USG/66','Revisiones técnicas','T',1,1,2,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Son documentos que acreditan una inspección periódica de los vehículos para verificar su buen funcionamiento y determinar si están aptos para circular.','Solicitud, informe, orden de servicio','Baja','Decreto Supremo Nº 025- 2008-MTC','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 13:51:14',1),
(191,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','33','DIGA-USG/67','Legajos de conductores','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un documento oficial e individual de carácter estrictamente confidencial y de valor permanente, en el cual se archivan y registran los documentos personales y administrativos del Servidor Civil a partir de su ingreso a la Administración Pública y todo lo que genere en la propia entidad, así como lo incorporado durante su relación laboral.','Títulos profesionales, títulos técnicos, Certificados, experiencia laboral, informe de vacaciones, permisos, documentos de rotación, asignación de funciones o encargaturas, uso de viáticos, sanciones, culminación o cese de funciones.  ','Baja','Normas para la administración de legajos personales de los servidores del programa nacional PLATAFORMA DE ACCION PARA LA INCLUSIÓN SOCIAL - PAIS. PAIS-GHR.P23','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 13:53:15',1),
(192,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','33','DIGA-USG/68','Correspondencia','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Alta','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-24 19:53:26',1),
(193,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',16,'OFICINA DE TECNOLOGÍAS DE LA INFORMACION','34','OTI/01','Manuales de sistemas','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Documentos con información técnica general de requisitos y caracteristicas, asi mismo presenta la forma de uso de las aplicaciones.  Algunos presentan privilegios de usuario y otros no. ','Manuales, CD y DVD','Media','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ , Indicador de Calidad','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-21 13:55:48',1),
(194,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',16,'OFICINA DE TECNOLOGÍAS DE LA INFORMACION','34','OTI/02','Planes de Gobierno y Transformación digital','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Son documentos que presentan la estructura funcional y actividades a desarrollar en el marco de la marco de la modernización contemplados en el gobierno digital en la UNAJ, que contribuye al logro de objetivos estratégicos institucionales, sectoriales y nacionales.','Planes, resolucion, cartera de proyectos multianual, convenios','Media','DL 1412 LEY DE GOBIERNO DIGITAL','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-23 15:52:40',1),
(195,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',16,'OFICINA DE TECNOLOGÍAS DE LA INFORMACION','34','OTI/03','Informes de avances en proyectos de tecnología','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Son de perfiles, propuestas de implementación de tecnologías previas a ser aprobadas.','Plan, Informes, evidencias, reportes','Baja','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ ','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-21 14:03:45',1),
(196,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',16,'OFICINA DE TECNOLOGÍAS DE LA INFORMACION','34','OTI/04','Planes de Trabajo OTI','T',5,5,10,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos que contemplas las funciones y actividades del personal a cargo de areas que contemplan la OTI','Plan, Resolución','Baja','ROF','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-23 15:58:46',1),
(197,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',16,'OFICINA DE TECNOLOGÍAS DE LA INFORMACION','34','OTI/05','Políticas y directivas OTI','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Son documentos normativos que regulan el uso adecuado de los servicios, aplicaciones informáticas y mutiles tecnologías con las que cuenta la UNAJ','Directivas, reglamentos, manuales de usuario','Alta','ROF','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-04-23 16:24:18',1),
(198,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',16,'OFICINA DE TECNOLOGÍAS DE LA INFORMACION','34','OTI/06','Resoluciones','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Resoluciones ','Resoluciones','Media','ROF','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-23 16:05:40',1),
(199,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',16,'OFICINA DE TECNOLOGÍAS DE LA INFORMACION','34','OTI/07','Informes técnicos','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos con información de los bienes informáticos de la UNAJ. Dan respuesta a un servicio requerido, conformidad','Informes, carta, especificaciones del bien o servicio','Media','ROF','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-23 16:19:55',1),
(200,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',16,'OFICINA DE TECNOLOGÍAS DE LA INFORMACION','34','OTI/08','Hojas de Cargos de Bienes','T',3,5,8,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Presenta un inventario de los bienes informáticos que administra la OTI.  En base a esta documentación, se atienden a las solicitudes de las oficinas, que contempla, instalación, reemplazo de los equipos requeridos.','Inventario','Alta','ROF','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-04-23 16:23:45',1),
(201,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',16,'OFICINA DE TECNOLOGÍAS DE LA INFORMACION','34','OTI/09','Correspondencia','T',3,3,6,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-23 15:28:20',1),
(202,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',16,'OFICINA DE TECNOLOGÍAS DE LA INFORMACION','34','OTI-DIG/10','BACKUP base de datos','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Copias de seguridad de las bases de datos. Se generan cada 15 dias y mensualmente.','Backup','Alta','ROF','Publica','Soporte: Papel(  ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-23 16:25:51',1),
(203,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',16,'OFICINA DE TECNOLOGÍAS DE LA INFORMACION','34','OTI-DIG/11','Código fuente de sistemas','P',20,10,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Todos los archivos que comprende la adquisición de un software con todo el codigo fuente','CD o DVD repositorios digitales o Cloud','Media','Decreto Legislativo que aprueba la Ley de Gobierno Digital establece que todas las entidades de la Administración Pública deben compartir el Software Público Peruano bajo licencias libres o abiertas','Reservada','Soporte: Papel(  ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-21 14:03:00',1),
(204,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',16,'OFICINA DE TECNOLOGÍAS DE LA INFORMACION','34','OTI-DIG/12','Licencias de software','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Son documentos que define los derechos del desarrollador y del usuario de un software, y especifica cómo se puede utilizar y pagar el software. Las licencias de software son contratos que proporcionan a los usuarios instrucciones sobre cómo utilizar diferentes aplicaciones de forma legalmente vinculante. Los términos de la licencia dictan las políticas de uso justo y los acuerdos de propiedad intelectual','Contratos, cartas, CD DVD','Baja','Decreto Legislativo que aprueba la Ley de Gobierno Digital establece que todas las entidades de la Administración Pública deben compartir el Software Público Peruano bajo licencias libres o abiertas','Reservada','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-21 14:05:51',1),
(205,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',16,'OFICINA DE TECNOLOGÍAS DE LA INFORMACION','34','OTI-DIG/13','Mesa de ayuda (virtual)','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Es un sistema que se utiliza para el registro de atencion en materia de softrware y hardware en la universidad','Registros de atenciones en Base de Datos','Alta','Decreto Legislativo que aprueba la Ley de Gobierno Digital establece que todas las entidades de la Administración Pública deben compartir el Software Público Peruano bajo licencias libres o abiertas','Publica','Soporte: Papel(  ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-21 14:08:09',1),
(206,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',16,'OFICINA DE TECNOLOGÍAS DE LA INFORMACION','34','OTI-DIG/14','Repositorios digitales','P',20,10,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Un repositorio digital es un sistema de información que ingiere, almacena, administra, conserva y proporciona acceso a contenido digital. Los repositorios digitales son una estructura web que permite organizar, almacenar, preservar y difundir de manera abierta la producción intelectual resultante de la actividad académica e investigadora de una institución.','Fotografias, videos, documentos multimedia, etc','Alta','Decreto Legislativo que aprueba la Ley de Gobierno Digital establece que todas las entidades de la Administración Pública deben compartir el Software Público Peruano bajo licencias libres o abiertas','Publica','Soporte: Papel(  ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-21 14:09:37',1),
(207,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',16,'OFICINA DE TECNOLOGÍAS DE LA INFORMACION','34','OTI-DIG/15','Documentación de sistemas','P',20,10,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Son documentos que contienen información general sobre cómo se ha creado el software, cómo funciona y otros detalles. Es un recurso que proporciona información sobre cómo instalar, utilizar y/o mantener un software. Además, sirve como referencia técnica para quienes necesitan comprender su código y arquitectura subyacente.','Manual, documentación del sistema, CD o DVD repositorios digitales o Cloud','Baja','Decreto Legislativo que aprueba la Ley de Gobierno Digital establece que todas las entidades de la Administración Pública deben compartir el Software Público Peruano bajo licencias libres o abiertas','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-21 14:11:24',1),
(208,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',16,'OFICINA DE TECNOLOGÍAS DE LA INFORMACION','34','OTI-DIG/16','Diccionarios de datos','P',20,10,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Un diccionario de datos es una colección organizada de nombres, definiciones y atributos de los elementos de datos de una base de datos, sistema de información o proyecto de investigación. El objetivo de un diccionario de datos es proporcionar un lenguaje común entre el autor de los datos y sus usuarios','Diccionario de datos','Alta','Decreto Legislativo que aprueba la Ley de Gobierno Digital establece que todas las entidades de la Administración Pública deben compartir el Software Público Peruano bajo licencias libres o abiertas','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-21 14:13:08',1),
(209,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',17,'SECRETARIA GENERAL','35','SG/01','Resoluciones de Consejo de Comisión','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Es un acto administrativo emitidos en función a los acuerdos tomados por el consejo de comisión organizadora de la UNAJ, que contiene la decisión sobre diferentes temas administrativos, académicos y de otra índole, cuya finalidad es de disponer las acciones, sobre cada proceso o acto administrativo de forma particular.','Cartas, oficios, informes, solicitudes, tesis, proveídos, informes técnicos, hojas de tramite, planes, material multitudinaria, planes de trabajo, memorial, memorandum, contratos, actas, reglamentos, directivas, políticas, informes jurídicos','Media','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-07-24 17:36:42',1),
(210,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',17,'SECRETARIA GENERAL','35','SG/02','Resoluciones Presidenciales','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                        ','Es un acto administrativo emitidos por disposición del titular del pliego de la UNAJ, que contiene la decisión sobre diferentes temas administrativos, cuya finalidad es de disponer las acciones, sobre cada proceso o acto administrativo de forma particular.','Cartas, oficios, informes, solicitudes, proveídos, informes técnicos, hojas de tramite, planes, material multimedia, planes de trabajo, memorandum, contratos, actas, reglamentos, directivas, políticas, informes jurídicos','Alta','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ   ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-04-24 16:33:31',1),
(211,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',17,'SECRETARIA GENERAL','35','SG/05','Decretos presidenciales','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un acto administrativo que tiene por finalidad dar un tramite a cuestiones de orden puntual.','Informes, informes técnicos, informes jurídicos, solicitud','Alta','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ   ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-04-24 16:33:17',1),
(212,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',17,'SECRETARIA GENERAL','35','SG/06','Libros de actas','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Es un documento administrativo que contiene las actas de sesiones ordinarias y extraordinarias, el mismo que presenta los acuerdos tomados en dichas sesiones.','Actas','Alta','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-24 16:36:40',1),
(213,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',17,'SECRETARIA GENERAL','35','SG/07','Libros de Actas de sesiones de Consejo Universitario','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Es un registro oficial y legal de las reuniones, las decisiones y los acuerdos alcanzados por los órganos de gobierno de la UNAJ tomados en Consejo Universitario','Libro de actas','Alta','Ley Universitaria Nª 30220, Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-02 18:52:19',1),
(216,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',17,'SECRETARIA GENERAL','35','SG/08','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Alta','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-24 16:41:55',1),
(217,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',17,'SECRETARIA GENERAL','35','SG-MP/01','Cuadernos de registro de documentos externos','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Un cuaderno de registro de documentos es un documento que se utiliza para registrar los documentos recibidos por un usuario o destinatario, quien firma en señal de cargo.','Libro de actas','Alta','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-26 17:11:52',1),
(218,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',17,'SECRETARIA GENERAL','35','SG-MP/02','Correspondencia','T',1,4,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Alta','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-26 17:12:46',1),
(219,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','21','GRTI/01','Expedientes de grado de Bachiller de la Escuela profesional de Gestión pública y Desarrollo Social','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                                        ','Es un conjunto de documentos que acreditan la condición del egresado para la obtención del grado académico de Bachiller','Certificado de estudios, record curricular, constancia de no adeudar, comprobantes de pago, solicitud, informe, carta, oficio, resolución','Alta','Reglamento General de Grados y Titulos; ROF','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 15:38:58',1),
(220,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','21','GRTI/02','Expedientes de grado de Bachiller de la Escuela profesional de Ingeniería Textil y de Confecciones','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un conjunto de documentos que acreditan la condición del egresado para la obtención del grado académico de Bachiller','Certificado de estudios, record curricular, constancia de no adeudar, comprobantes de pago, solicitud, informe, carta, oficio, resolución','Alta','Reglamento General de Grados y Titulos; ROF','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 15:53:07',1),
(221,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','21','GRTI/03','Expedientes de grado de Bachiller de la Escuela profesional de Ingeniería Ambiental y Forestal','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un conjunto de documentos que acreditan la condición del egresado para la obtención del grado académico de Bachiller','Certificado de estudios, record curricular, constancia de no adeudar, comprobantes de pago, solicitud, informe, carta, oficio, resolución','Alta','Reglamento General de Grados y Titulos; ROF','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 15:54:21',1),
(222,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','21','GRTI/04','Expedientes de grado de Bachiller de la Escuela profesional de Ingeniería en Energías Renovables','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un conjunto de documentos que acreditan la condición del egresado para la obtención del grado académico de Bachiller','Certificado de estudios, record curricular, constancia de no adeudar, comprobantes de pago, solicitud, informe, carta, oficio, resolución','Alta','Reglamento General de Grados y Titulos; ROF\r\n','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 15:56:13',1),
(223,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','21','GRTI/05','Expedientes de grado de Bachiller de la Escuela profesional de Ingeniería Industrias Alimentarias','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un conjunto de documentos que acreditan la condición del egresado para la obtención del grado académico de Bachiller','Certificado de estudios, record curricular, constancia de no adeudar, comprobantes de pago, solicitud, informe, carta, oficio, resolución','Alta','Reglamento General de Grados y Titulos; ROF','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 15:56:47',1),
(224,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','21','GRTI/06','Expedientes de grado de Bachiller de la Escuela profesional de Ingeniería Industrial','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un conjunto de documentos que acreditan la condición del egresado para la obtención del grado académico de Bachiller','Certificado de estudios, record curricular, constancia de no adeudar, comprobantes de pago, solicitud, informe, carta, oficio, resolución','Alta','Reglamento General de Grados y Titulos; ROF','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 15:57:26',1),
(225,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','21','GRTI/07','Expedientes de grado de Bachiller de la Escuela profesional de Ingeniería de Software y Sistemas','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un conjunto de documentos que acreditan la condición del egresado para la obtención del grado académico de Bachiller','Certificado de estudios, record curricular, constancia de no adeudar, comprobantes de pago, solicitud, informe, carta, oficio, resolución','Alta','Reglamento General de Grados y Titulos; ROF','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 15:58:03',1),
(226,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','21','GRTI/08','Expedientes de grado de Bachiller de la Escuela profesional de Ingeniería Mecatrónica ','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un conjunto de documentos que acreditan la condición del egresado para la obtención del grado académico de Bachiller','Certificado de estudios, record curricular, constancia de no adeudar, comprobantes de pago, solicitud, informe, carta, oficio, resolución\r\n','Alta','Reglamento General de Grados y Titulos; ROF','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 15:58:41',1),
(227,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','21','GRTI/09','Expedientes de grado de Bachiller de la Escuela profesional de Economía','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un conjunto de documentos que acreditan la condición del egresado para la obtención del grado académico de Bachiller','Certificado de estudios, record curricular, constancia de no adeudar, comprobantes de pago, solicitud, informe, carta, oficio, resolución','Alta','Reglamento General de Grados y Titulos; ROF','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 15:59:16',1),
(228,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','21','GRTI/10','Expedientes de grado de Bachiller de la Escuela profesional de Administración y Emprendimiento Empresarial','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un conjunto de documentos que acreditan la condición del egresado para la obtención del grado académico de Bachiller\r\n','Certificado de estudios, record curricular, constancia de no adeudar, comprobantes de pago, solicitud, informe, carta, oficio, resolución','Alta','Reglamento General de Grados y Titulos; ROF','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 16:00:31',1),
(229,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','21','GRTI/11','Expediente de Títulos','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un conjunto de documentos que acreditan la condición del egresado para la obtención del grado académico de Titulo Profesional','FUT, carta, resolución, solicitud, informe, oficio, acta de aprobación de sustencion de titulo, constancia de no adeudar ','Alta','Reglamento General de Grados y Titulos; ROF','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 16:05:58',1),
(230,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','21','GRTI/12','Registros de titulos profesionales (Varias carreras)','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un libro donde se registra los grados academicos emitidos por la UNAJ, consigna el nombre completo del alumno, fotografia, carrera, numero de resolucion de consejo, fecha de expedicion de titulo, firma del alumno DNI y huellas digital, numero de diploma ','Libro de padrón empastado','Media','Reglamento General de Grados y Titulos; ROF','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 16:06:47',1),
(231,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','21','GRTI/13','Registros de Grados de bachiller (Varias carreras)','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un libro donde se registra los grados academicos de bachiller emitidos por la UNAJ, consigna el nombre completo del alumno, fotografia, nombre de la carrera, numero de resolucion de consejo, fecha de expedición de grado, firma del alumno DNI y huellas digital, numero de diploma.','Libro de padrón empastado','Media','Reglamento General de Grados y Titulos; ROF','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 16:07:21',1),
(232,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','21','GRTI/14','Tesis','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un documento académico y de investigación por lo general monográfico o investigativo, que consiste en una disertación y comprobación de hipótesis previamente establecidas, para demostrar una capacidad analítica y el manejo de procedimientos de investigación','Empastado de la tesis, CD o DVD','Baja','Reglamento de la plataforma Pilar','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 16:08:46',1),
(233,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',3,'PRESIDENCIA DE COMISION ORGANIZADORA','21','GRTI/15','Correspondencia','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 16:09:16',1),
(234,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',18,'ARCHIVO CENTRAL','36','AC/01','Planes Anuales de Trabajo Archivístico (PATA)','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(235,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',18,'ARCHIVO CENTRAL','36','AC/02','Instrumentos de gestión Archivística','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(236,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',18,'ARCHIVO CENTRAL','36','AC/03','Documentos del CED','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(237,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',18,'ARCHIVO CENTRAL','36','AC/04','Documentos de Transferencia','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(238,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',18,'ARCHIVO CENTRAL','36','AC/05','Expedientes de Eliminación','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(239,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',18,'ARCHIVO CENTRAL','36','AC/06','Inventarios','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(240,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',18,'ARCHIVO CENTRAL','36','AC/07','Catálogos','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(241,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',18,'ARCHIVO CENTRAL','36','AC/08','Fichas de evaluación de documentos','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(242,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',18,'ARCHIVO CENTRAL','36','AC/09','Programas de Control de Documentos (PCDA)','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(243,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',18,'ARCHIVO CENTRAL','36','AC/10','Manuales','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(244,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',18,'ARCHIVO CENTRAL','36','AC/11','Actas','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(245,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',18,'ARCHIVO CENTRAL','36','AC/12','Fichas Técnicas de Series Documentales (FTSD)','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(246,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',18,'ARCHIVO CENTRAL','36','AC/16','Cuadernos de registro de prestamo de documentos','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(247,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',18,'ARCHIVO CENTRAL','36','AC/17','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(248,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',19,'CONSEJO DE FACULTAD','1','COFA/01','','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(249,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',20,'DECANATO','38','DECA/01','','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(250,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',20,'DECANATO','38','DECA-DEAC/10','','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(251,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',20,'DECANATO','38','DECA-EP/20','Estructuras curriculares','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(252,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',20,'DECANATO','38','DECA-EP/21','Silabus','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(253,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',20,'DECANATO','38','DECA-EP/22','Informes de practicas','T',1,4,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(254,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',20,'DECANATO','38','DECA-EP/23','Partes de asistencias','T',1,4,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(255,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',20,'DECANATO','38','DECA-EP/24','Carpetas de docentes','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(256,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',20,'DECANATO','38','DECA-EP/25','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(257,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',20,'DECANATO','38','DECA-UI/30','Actas de sustentaciones','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(258,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',20,'DECANATO','38','DECA-UI/31','Dictámenes','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(259,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',20,'DECANATO','38','DECA-UI/32','Investigaciones formativas','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(260,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',20,'DECANATO','38','DECA-UI/33','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(261,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',20,'DECANATO','38','DECA-UP/40','','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(262,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',21,'PRESIDENCIA DE COMISION ORGANIZADORA','22','POST/01','','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(263,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',22,'DIRECCION DE PROYECCION SOCIAL Y EXTENSION CULTURAL','39','DPSEC/01','Politicas, reglamentos y normas','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Conforman el régimen aplicable para la operatividad de cualquier organización. Además, son un elemento importante para promover un desarrollo rentable y ajustado a las normativas aplicables','Politicas, reglamento normas','Alta','','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-02 15:53:01',1),
(264,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE PROYECCION SOCIAL Y EXTENSION CULTURAL','39','DPSEC/02','Proyectos y/o planes de proyección social','T',1,4,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Son documentos donde se plasma el cronograma, presupuesto de las actividades a realizar como parte de la responsabilidad social universitaria.','Proyecto, carta, medios digitales, constancia','Baja','Ley Universitaria 30220, Ley General de Educación N° 28044, Ley de creacion de la UNAJ N° 29074, Proyecto de Desarrollo Institucional UNAJ, ROF UNAJ, Resolución de Consejo de Comisión Organizadora N° 527-2022-CCO-UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-02 16:12:31',1),
(265,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE PROYECCION SOCIAL Y EXTENSION CULTURAL','39','DPSEC/03','Planes de trabajo de proyección social','T',1,4,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Son documentos de gestión administrativa que tiene por finalidad planificar actividades, acciones y otros, orientados hacia la comunidad universitaria y la sociedad.','Informe, proveído, carta, plan anual de trabajo','Alta','Ley Universitaria 30220, Ley General de Educación N° 28044, Ley de creacion de la UNAJ N° 29074, Proyecto de Desarrollo Institucional UNAJ, ROF UNAJ, Resolución de Consejo de Comisión Organizadora N° 527-2022-CCO-UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-02 15:59:02',1),
(266,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE PROYECCION SOCIAL Y EXTENSION CULTURAL','39','DPSEC/04','Informes finales de proyección social','P',1,29,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                          ','Son documentos donde se plasma el cronograma, presupuesto de las actividades realizadas  como parte de la responsabilidad social universitaria y corresponde al informe final empastado presentado al finalizar el proyecto.','Empastado del informe final, CD o DVD','Baja','Ley Universitaria 30220, Ley General de Educación N° 28044, Ley de creacion de la UNAJ N° 29074, Proyecto de Desarrollo Institucional UNAJ, ROF UNAJ, Resolución de Consejo de Comisión Organizadora N° 527-2022-CCO-UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-02 16:14:55',1),
(267,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',26,'DIRECCION DE PROYECCION SOCIAL Y EXTENSION CULTURAL','39','DPSEC/05','Planes Anuales','P',1,29,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Es un documento de gestión, donde plasma las actividades de proyección social y de extensión cultural anual','Plan anual, informe, oficio, cuadro de presupuesto, resolución','Alta','Ley Universitaria 30220, Ley General de Educación N° 28044, Ley de creacion de la UNAJ N° 29074, Proyecto de Desarrollo Institucional UNAJ, ROF UNAJ, Resolución de Consejo de Comisión Organizadora N° 527-2022-CCO-UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-02 16:18:34',1),
(268,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',27,'DIRECCION DE PROYECCION SOCIAL Y EXTENSION CULTURAL','39','DPSEC/06','Expedientes de actividades anuales','P',1,29,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                                           ','Son documentos que agrupan el conjunto de actividades y proyectos que vinculan el quehacer académico de la institución – vale decir, la docencia y la investigación – con la realidad natural, cultural y social del país. Se entiende que la investigación y la docencia enriquecen la proyección social y está, a su vez, enriquece la investigación y la docencia.','Plan, Informes, cartas','Baja','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 13:34:02',1),
(269,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',28,'DIRECCION DE PROYECCION SOCIAL Y EXTENSION CULTURAL','39','DPSEC/07','Expedientes de conformación de centros culturales artisticos','P',1,29,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Son documentos que se refiere al proceso de establecer y organizar un espacio destinado a promover y nutrir la expresión artística y cultural en la UNAJ. Este tipo de centro puede albergar una variedad de actividades, como exposiciones de arte, conciertos, obras de teatro, talleres, clases y eventos culturales diversos.','Informe, Resolución','Baja','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-06 16:37:00',1),
(270,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',29,'DIRECCION DE PROYECCION SOCIAL Y EXTENSION CULTURAL','39','DPSEC/08','Programas de gestión ambiental','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Son documentos que reflejan las acciones ambientales de la UNAJ ejecutados por estudiantes y docentes en favor de la sostenibilidad ambiental.','Carta, informe, memoria anual','Baja','Ley universitaria N 30220, Reglamento N° 527-2022-CCO-UNAJ, Politica Nacional de Educación Ambiental D.S. 017-2012-ED','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-02 17:13:23',1),
(271,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',30,'DIRECCION DE PROYECCION SOCIAL Y EXTENSION CULTURAL','39','DPSEC/09','Programas de desarrollo y convervación','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Son documentos proyectos de brigadas o actividades que realice la dirección orientado al desarrollo y conservación junto con la comunidad universitaria','Carta, Oficio, informes, empastado del informe final','Baja','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ    ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 13:43:48',1),
(272,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',31,'DIRECCION DE PROYECCION SOCIAL Y EXTENSION CULTURAL','39','DPSEC/11','Correspondencia','T',1,4,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 13:41:08',1),
(273,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','40','DBU/01','Reglamentos, directivas, Lineamientos','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Propone lineamientos, políticas y directivas de calidad universitaria en la UNAJ','Lineamientos, políticas y normas','Baja','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 21:31:54',1),
(274,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','40','DBU/02','Correspondencia','T',1,4,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 21:32:09',1),
(275,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','41','DBU-BIBLIO/03','Libros','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Conjunto de material bibliografico que presta sevicio en la biblioteca central y biblioteca especializada','Libros, Revistas, Guias, Informes de practicas, tesis','Alta','FORMATOS DE LA SUNEDU, Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 19:20:24',1),
(276,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','41','DBU-BIBLIO/04','Reglamentos','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Son documentos los reglamentos que rigen rigen actuar el Servicio de Biblioteca en la UNAJ','Resolucion directoral, Resolucion de consejo de comision organizadora, lineamientos y directivas','Baja','Lineamientos y directivas internas, Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 19:17:34',1),
(277,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','41','DBU-BIBLIO/05','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 19:20:52',1),
(278,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','42','DBU-PSICO/06','Fichas Psicológicas de estudiantes','T',5,5,10,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Son documentos que consignan datos sobre el estudiante que contiene información personal y social del estudiante. ','Ficha psicológica','Baja','NTS N° 139-MINSA-2018-DGAIN Norma técnica de salud para la historia clínica','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 19:04:59',1),
(279,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','42','DBU-PSICO/07','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','','Ley N° 27444- Ley de Procedimiento Administrativo General','Seleccionar','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 19:05:47',1),
(280,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','43','DBU-SALUD/01','Revisiones médicas de estudiantes','T',5,5,10,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                                        ','Son formatos que contiene información medica por cada estudiante, donde se consigan: Hoja de ruta de atención integral de salud, historia clínica del estudiante, ficha de evaluación nutricional, historia clínica dental','Fichas de evaluación','Baja','Falta','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-15 18:56:27',1),
(281,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','43','DBU-SALUD/09','Resultados de laboratorio','T',5,5,10,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Son documentos de laboratorio externo que contiene los datos del paciente, edad, fecha  y los resultados del análisis de laboratorio','Resultados de laboratorio','','La norma ISO 15189:2022 contiene todos los requisitos que los LABORATORIOS CLÍNICOS QUE ANALIZAN MUESTRAS BIOLÓGICAS DE ORIGEN HUMANO','Seleccionar','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-15 19:07:21',0),
(282,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','43','DBU-SALUD/10','Constancias de Atención','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(283,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','43','DBU-SALUD/11','Certificados de Vacunación','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(284,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','43','DBU-SALUD/12','Fichas de Evaluaciones nutricionales','T',5,5,10,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','','','','','Seleccionar','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-15 19:03:07',0),
(285,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','43','DBU-SALUD/13','Cuadernos de registro de salida de medicamentos','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(286,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','43','DBU-SALUD/14','Cuadernos de evaluaciones médicas','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(287,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','43','DBU-SALUD/15','Correspondencia','T',1,4,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(288,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','44','DBU-DyR/16','Informes de actividades','T',5,5,10,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Son documentos que hacen de conocimiento a la autoridad de la universidad de las actividades mas importantes desarrollas en el servicio de deporte y recreación. Esta compuesta por rendiciones de cargo y con evidencias fotográficas.','Informe, rendición de gastos, fotografías, formatos, recibos','Baja','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Seleccionar','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-15 19:45:02',1),
(290,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','44','DBU-DyR/18','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-15 19:49:29',1),
(291,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','45','DBU-ARTE/19','Registros de instrumentos musicales','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Asiento de los bienes y demás cosas pertenecientes al servicio de arte y cultura de la UNAJ, hecho con orden y precisión.','Inventario','Nula','Superintendencia de Bienes Estatales y Sistema de Información de Gestión Administrativa - MEF','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-15 16:36:34',1),
(293,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','45','DBU-ARTE/20','Informes de actividades','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Son documentos que hacen de conocimiento a la autoridad de la universidad de las actividades mas importantes desarrollas por esta oficina.  Esta compuesta por rendiciones de cargo y con evidencias fotográficas.','Informe, rendición de gastos, fotografías, formatos, recibos','Baja','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-15 16:31:24',1),
(295,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','45','DBU-ARTE/21','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Baja','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-15 16:41:35',1),
(296,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','45','DBU-ARTE/22','Repositorio digital','',0,0,0,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Lugar de almacenamiento virtual de fotografias y videos de las participaciones en eventos y actividades del servicio de arte y cultura de la UNAJ','Medios electronicos','Alta','ROF UNAJ','Publica','Soporte: Papel(  ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-15 16:43:28',1),
(297,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','46','DBU-SS/25','Actas de entregas de bienes y/o beneficios','T',1,3,4,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Son documentos que evidencia la entrega de beneficios orientados al estudiantes de la UNAJ, el cual cuenta con una hoja de cargo de entrega','Formato de Cargo de entrega','Baja','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 18:34:02',1),
(298,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','46','DBU-SS/26','Expedientes de evaluación de becarios','T',1,4,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Son documentos de expedientes de solicitud de becas, previa evaluacion socio economica, que consigna la boleta de notas, fichas de evalación, constancia de matriculas y el resultado socioeconomico del SISFO, copia del seguro SIS','Solcitud, boleta de notas, fichas de evalación, constancia de matriculas y el resultado socioeconomico del SISFO, copia del seguro SIS, copia del DNI, declaraciones juradas, ficha de evaluacion nutricional, acta de visita domiciliaria.','Baja','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ    ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 18:35:14',1),
(299,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','46','DBU-SS/27','Informes sociales','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Son documentos que recoge, sintetiza y selecciona la información de la historia social restringiéndola a una finalidad concreta. Requiere por parte del profesional una serie de habilidades que es importante destacar: capacidad de síntesis, claridad y concreción en la transmisión de la información.','Informes, fichas de alumnos','Baja','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 18:42:50',1),
(301,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','46','DBU-SS/29','Correspondencia','T',4,1,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 18:37:30',1),
(302,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','47','DBU-CU/30','Registros de entregas ?','T',1,4,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(304,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','47','DBU-CU/32','Fichas de evaluación nutricional y consejería','T',3,5,8,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(305,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','47','DBU-CU/33','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(306,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','48','DIGEAA/01','Normas, lineamientos, Reglamentos y directivas','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Regla que se debe seguir o a que se deben ajustar las conductas, tareas, actividades, etcétera.','Carta, reglamento','Baja','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-07 16:29:52',1),
(307,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','48','DIGEAA/02','Correspondencia','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 17:09:52',1),
(308,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','49','DIGEAA-ERAA/01','Historiales académicos del estudiante - Sistema','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                          ','Es la agrupación de información emitida a solicitud del estudiante, que contiene certificados, records, constancias, fichas, boleta de notas.','Certificado de estudios UNAJ, record academico y Record curricular integral, constancias ingreso, constancia de estudios, constancia de egreso, constancia de cuadro de merito constancia de ranking del egresado, constancia de primera matricula, constancia de necesidad académica, ficha de matricula, boleta de notas.','Alta','TUPA de UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 18:39:17',1),
(309,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','49','DIGEAA-ERAA/02','Documentación personal de estudiantes','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                          ','Son datos personales del estudiante desde que postula hasta que cubre una vacante y se llega a matricular, para que sea considerado como estudiantes universitario regular, información que se consolida como requisito para la obtención del grado de bachiller.','Ficha de postulante, DNI, Certificado de estudios original, atención medica, ficha de matricula.','Alta','Reglamento de matriculas.  TUPA.','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 18:40:15',1),
(310,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','49','DIGEAA-ERAA/03','Certificados de estudios - Sistema','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                          ','Es un documento oficial que acredita las notas aprobatorias por ciclo, culminadas según el plan y programa de estudios por estudiante, principalmente para la obtención del grado de bachiller u otros fines, convalidaciones, traslados internos y externos','Copia del certificado de estudios, cargo de atención.','Alta','TUPA UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 18:41:09',1),
(314,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','49','DIGEAA-ERAA/04','Actas de notas','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                          ','Es un documento oficial de las notas obtenidas en las unidades correspondientes por el estudiante en cada curso programado durante el semestre académico, el cual es rubricado por el docente dando su conformidad y veracidad, la misma que es validada por las dependencias correspondientes.','Acta de notas','Media','Reglamento de Acta de Notas','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 18:41:59',1),
(317,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','49','DIGEAA-ERAA/05','Resolución de cuadro de meritos','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                                        ','Es un documento que da el valor oficial al cuadro de mérito obtenido por el estudiante en el semestre académico cursado, asimismo el ranking del egresado.','Resolución, informe, cartas, informe técnico','Alta','TUPA, Reglamento de cuadro de méritos y Ranking de egresados.','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 18:42:50',1),
(319,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','49','DIGEAA-ERAA/06','Correspondencia','T',3,3,6,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Alta','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-07 16:09:10',1),
(320,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','50','DIGEAA-EPDEA/01','Constancia de no adeudar','T',1,1,2,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(321,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','50','DIGEAA-EPDEA/02','Informe técnico','T',3,3,6,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(322,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','50','DIGEAA-EPDEA/03','Expediente de aprobación del plan de trabajo','T',3,3,6,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(323,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','50','DIGEAA-EPDEA/04','Correspondencia','T',5,5,10,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(324,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','51','DIGEAA-ESM/01','Evaluación de Desempeño Docente','T',2,3,5,'Resolución N° 192-2028-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Son documentos que se registran semestralmente, cuya finalidad es implementar mecanismos de control y procedimientos de evaluación del desempeño docente.',' Calificación del desempeño docente, parte de asistencia','Media','Ley Universitaria 30220','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-07 16:51:03',1),
(325,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','51','DIGEAA-ESM/02','Normas y procedimientos','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Son directivas academicas y reglamentos de gestión academica para el cumplimiento','Resolución, calendario académico, formato de revisión documentaría, informes técnicos, memorandum múltiple, cartas, reglamentos.','Baja','Ley universitaria 30220','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-07 16:56:43',1),
(326,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','51','DIGEAA-ESM/03','Actas de supervisión','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Son documentos de supervisión y control docente de la asistencia, y cumplimiento de actividades académicas en la UNAJ','Actas, Informe, carta, constancia de inasistencia','Media','Ley universitaria 30220','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-07 17:01:04',1),
(327,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','51','DIGEAA-ESM/04','Planes de recuperación','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Son documentos que sustentan el cumplimento de la recuperación de las horas lectivas en conformidad de la oficina','Carta, memorial, plan de recuperación','Baja','Ley universitaria 30220','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-07 17:03:33',1),
(328,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','51','DIGEAA-ESM/05','Correspondencia','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-21 18:45:00',1),
(329,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','52','DIGEAA-SEyBT/01','Sistema de seguimiento de egresados','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Son documentos que permite a la Universidad Nacional de Juliaca conocer la situación actual de sus egresados y evaluar la pertinencia de sus programas de estudio. El seguimiento también ayuda a mejorar la calidad académica y a impulsar proyectos que involucren a los egresados.','Carta, informe','Alta','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 13:58:29',1),
(331,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','52','DIGEAA-SEyBT/02','Bolsa de trabajo','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','El servicio consiste en ofrecer oportunidades de trabajo a los buscadores de empleo y difundir las vacantes de empleo que comunican las empresas.','Cartas, informes','Alta','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ  ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 13:56:01',1),
(332,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','52','DIGEAA-SEyBT/03','Correspondencia','T',6,1,7,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 13:53:37',1),
(333,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','42','DIGEAA-TUTOR/28','Orientación psicopedagógica (Tutoría)','T',5,1,6,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','La orientación psicopedagógica es un proceso de ayuda continuo que involucra a toda la comunidad educativa para potenciar el desarrollo intelectual, social, emocional, académico y profesional de un individuo o grupo. Su objetivo es que los estudiantes adquieran los conocimientos y las destrezas necesarias para incorporarse a la sociedad y al mundo profesional desde la estabilidad y bienestar emocional y psicológico.','Fichas','Baja','Resolución Viceministerial N° 212-2020-MINEDU, que aprueba el documento normativo denominado Lineamientos de Tutoría y Orientación Educativa para la Educación Básica','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 14:06:13',0),
(334,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','53','DIGEAA-TUTOR/04','Correspondencia','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                             ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 17:16:31',1),
(335,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','54','DIGEAA-CURR/30','Estructuras curriculares','P',6,24,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Es un conjunto de experiencias planificadas para desarrollar los aprendizajes en los estudiantes','Diseño curricular, malla curricular, planes de estudio, sumillas','Media','Ley universitario 30220, Condiciones básicas de calidad, Proceso de renovación de licencia','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-07 16:36:02',1),
(336,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','54','DIGEAA-CURR/31','Evaluación curricular','P',6,24,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Corresponde a la verificación a al aplicabilidad de la estructura curricular, cuya finalidad que la aplicación y pertinencia de las estructuras curriculares.','Evaluación curricular','Media','Resolución de renovación N° 007-2023-SUNEDU','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-07 16:39:56',1),
(337,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','54','DIGEAA-CURR/32','Rediseño curricular','P',6,24,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Es un proceso de elaboración de un diseño curricular, se realiza cada 3 años como mínimo','Evaluación de la estructura, rediseño de la estructura curricular','Media','Ley universitaria 30220','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-07 16:42:53',1),
(339,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','54','DIGEAA-CURR/34','Correspondencia','T',6,1,7,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(340,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','55','DA/01','Reglamento General de admisión','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Son documentos tiene como objeto establecer los lineamientos generales de las modalidades de admisión que la UNAJ ofrece','Reglamento','Alta','Constitución política del Perú, ley universitaria 30220, ley general de educación n° 28044, Resolución vice ministerial 244-2021-MINEDU, estatuto de la universidad, TUSNE. ','Publica','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-04-26 16:00:17',1),
(341,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','55','DA/02','Planes de trabajo','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(342,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','55','DA/03','Expediente de procesos de Admisión','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(343,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','55','DA/04','Banco de preguntas','T',3,3,6,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(344,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','55','DA/05','Resultados de los procesos','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(345,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','55','DA/06','Registro de postulantes e ingresantes por proceso de admision','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(346,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','55','DA/07','Constancia de ingreso','T',3,5,8,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(347,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','55','DA/08','Expediente de los Ingresantes por proceso (Informe final, Ingresantes, etc)','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(348,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','55','DA/09','Correspondencia','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(349,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','56','DA-CEPRE/10','Reglamentos','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(350,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','56','DA-CEPRE/11','Plan de trabajo','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(351,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','56','DA-CEPRE/12','Registro de estudiantes inscritos','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','1) Es un listado de los estudiantes que estudian en la CEPRE.  2) Es un listado de los postulantes modalidad de Admisión ordinario y extraordinario ','Listado de estudiantes','Media','Reglamento del proceso de admisión CEPRE, Ordinario','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 20:09:12',1),
(352,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','56','DA-CEPRE/13','Certificados de estudios de postulantes','T',3,5,8,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Es un documento oficial emitido por el ministerio de educación que acredita que el alumno haya concluido sus estudios secundarios.','Certificado de estudios','Baja','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 19:06:00',1),
(353,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','56','DA-CEPRE/14','Libro de actas','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Se utiliza para realizar el registro de las reuniones y decisiones relevantes tomadas por los órganos de gobierno del Centro Pre Universitario UNAJ','Libro de actas','Baja','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 19:08:27',1),
(354,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','56','DA-CEPRE/15','Exámenes de los procesos de admisión','T',3,5,8,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Es hoja de evaluación que tiene por finalidad que demuestre las capacidad de un estudiante para su selección e ingreso de los postulantes','Examen, ficha de respuesta, ficha de identificación','Baja','Reglamento de proceso de admisión del Centro Pre universitario UNAJ','Confidencial','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 19:15:02',1),
(355,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','56','DA-CEPRE/16','Exámenes de los procesos de admisión de postulantes','T',1,1,2,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Examenes resueltos posterior al examen de admisión, custodiados por la CEPRE, agrupados por proceso de admisión','Examen del postulante','Baja','Reglamento del Proceso de admisión y CEPRE del fiscal en curso','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 19:20:36',1),
(356,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','56','DA-CEPRE/17','Cuadernillos CEPRE','T',3,3,6,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(357,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','56','DA-CEPRE/18','Expediente de concurso publico de docentes (Bases, Acta, Resultados)',' P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                            ','Son documentos de la convocatoria al concurso publico docente para la CEPRE','Informe, carta, cuadro para concurso de catedra, resultados finales del concurso, actas, oficios','Baja','Reglamento para concurso docente UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 20:43:22',1),
(358,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','56','DA-CEPRE/21','Kardex de materiales y equipos','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                          ','Es un control de entradas y salidas de bienes y materiales para un correcto inventario de los diferentes requerimientos en cada etapas de admisión. ','Registro de entrega de materiales','Baja','Directiva N° 0006-2021-EF/54.01 Directiva para la gestión de bienes muebles patrimoniales en el marco del Sistema Nacional de Abastecimiento','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 20:46:59',1),
(359,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','56','DA-CEPRE/22','Cuaderno de cargos','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(360,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','56','DA-CEPRE/23','Compendio','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(361,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',25,'DIRECCION DE ADMISION','56','DA-CEPRE/24','Correspondencia','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                               ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 20:44:17',1),
(362,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',26,'DIRECCION DE PRODUCCION DE BIENES Y SERVICIOS','57','DPByS/01','Alianzas estratégicas Instituciones publicas y privadas','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(363,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',26,'DIRECCION DE PRODUCCION DE BIENES Y SERVICIOS','57','DPByS/02','Documentos de asesoramiento','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(364,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',26,'DIRECCION DE PRODUCCION DE BIENES Y SERVICIOS','57','DPByS/03','Documentos de asistencia técnica','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(365,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',26,'DIRECCION DE PRODUCCION DE BIENES Y SERVICIOS','57','DPByS/04','Programas de producción','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(366,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',26,'DIRECCION DE PRODUCCION DE BIENES Y SERVICIOS','57','DPByS/05','Políticas, reglamentos y/o normas','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(367,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',26,'DIRECCION DE PRODUCCION DE BIENES Y SERVICIOS','57','DPByS/06','Proyectos de investigación','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(368,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',26,'DIRECCION DE PRODUCCION DE BIENES Y SERVICIOS','57','DPByS/07','Centros de producción','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(369,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',26,'DIRECCION DE PRODUCCION DE BIENES Y SERVICIOS','57','DPByS/08','Memoria anual de la dirección','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(370,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',26,'DIRECCION DE PRODUCCION DE BIENES Y SERVICIOS','57','DPByS/09','Correspondencia','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(371,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',27,'DIRECCION DE INCUBADORA DE EMPRESAS','58','DIE/01','Documentos de cooperación nacional / internacional','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(372,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',27,'DIRECCION DE INCUBADORA DE EMPRESAS','58','DIE/02','Políticas, reglamentos y normas','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(373,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',27,'DIRECCION DE INCUBADORA DE EMPRESAS','58','DIE/03','Servicios de la incubadora','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(374,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',27,'DIRECCION DE INCUBADORA DE EMPRESAS','58','DIE/04','Procedimientos generales','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(375,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',27,'DIRECCION DE INCUBADORA DE EMPRESAS','58','DIE/05','Directorio de incubados','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(376,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',27,'DIRECCION DE INCUBADORA DE EMPRESAS','58','DIE/06','Personal de contacto de la incubadora','T',1,4,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(377,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',27,'DIRECCION DE INCUBADORA DE EMPRESAS','58','DIE/07','Talleres','T',1,4,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(378,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',27,'DIRECCION DE INCUBADORA DE EMPRESAS','58','DIE/08','Redes de contacto','T',1,4,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(379,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',27,'DIRECCION DE INCUBADORA DE EMPRESAS','58','DIE/09','Alianzas estratégicas','T',2,6,8,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(380,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',27,'DIRECCION DE INCUBADORA DE EMPRESAS','58','DIE/10','Plataforma de innovación y capacitación','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(381,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',27,'DIRECCION DE INCUBADORA DE EMPRESAS','58','DIE/11','Asesoría técnica','P',4,26,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(382,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',27,'DIRECCION DE INCUBADORA DE EMPRESAS','58','DIE/12','Políticas internas de la incubadora de empresas','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(383,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',27,'DIRECCION DE INCUBADORA DE EMPRESAS','58','DIE/13','Monitoreo y asesoría de la incubadora','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(384,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',27,'DIRECCION DE INCUBADORA DE EMPRESAS','58','DIE/14','Correspondencia','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(385,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',28,'DIRECCION DE INNOVACION Y TRANSFERENCIA TECNOLOGICA','59','DITT/01','Normas, reglamentos y directivas','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(386,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',28,'DIRECCION DE INNOVACION Y TRANSFERENCIA TECNOLOGICA','59','DITT/02','Información transferible de unidades de investigación','P - Colección',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(387,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',28,'DIRECCION DE INNOVACION Y TRANSFERENCIA TECNOLOGICA','59','DITT/03','Producción científica','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(388,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',28,'DIRECCION DE INNOVACION Y TRANSFERENCIA TECNOLOGICA','59','DITT/04','Lineamientos de política y capacitación','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(389,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',28,'DIRECCION DE INNOVACION Y TRANSFERENCIA TECNOLOGICA','59','DITT/06','Normas de seguimiento, monitoreo y evaluación de programas','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(390,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',28,'DIRECCION DE INNOVACION Y TRANSFERENCIA TECNOLOGICA','59','DITT/07','Políticas de vinculación en la UNAJ','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(391,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',28,'DIRECCION DE INNOVACION Y TRANSFERENCIA TECNOLOGICA','59','DITT/08','Trabajos de investigación generados por la UNAJ','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(392,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',28,'DIRECCION DE INNOVACION Y TRANSFERENCIA TECNOLOGICA','59','DITT/09','Proyectos de investigación científica','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(393,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',28,'DIRECCION DE INNOVACION Y TRANSFERENCIA TECNOLOGICA','59','DITT/10','Subvención parcial o total','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(394,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',28,'DIRECCION DE INNOVACION Y TRANSFERENCIA TECNOLOGICA','59','DITT/12','Repositorio institucional de la UNAJ','P',4,26,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(395,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',28,'DIRECCION DE INNOVACION Y TRANSFERENCIA TECNOLOGICA','59','DITT/13','Programas de estimulo a la investigación','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(396,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',28,'DIRECCION DE INNOVACION Y TRANSFERENCIA TECNOLOGICA','59','DITT/14','Correspondencia','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(397,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',29,'INSTITUTO DE INVESTIGACION','60','ININ/01','Políticas, reglamentos y/o Normas','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(398,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',29,'INSTITUTO DE INVESTIGACION','60','ININ/02','Semilleros de investigación','P',4,26,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(399,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',29,'INSTITUTO DE INVESTIGACION','60','ININ/03','Círculos de investigación','P',4,26,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(400,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',29,'INSTITUTO DE INVESTIGACION','60','ININ/04','Institutos de investigación','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(401,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',29,'INSTITUTO DE INVESTIGACION','60','ININ/05','Publicación de investigaciones','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(402,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',29,'INSTITUTO DE INVESTIGACION','60','ININ/06','Registro de publicaciones oficiales','P',5,25,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','','','4','','','','2024-04-01','2024-04-01 00:00:00',0),
(403,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',29,'INSTITUTO DE INVESTIGACION','60','ININ/07','Correspondencia','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                 ','Documentos emitidos y/o recibidos por la Universidad Nacional de Juliaca en el ámbito de sus atribuciones y competencias','Cartas, oficios, informes, memorándum, solicitudes, conformidades, cargos, entre otros','Media','Ley N° 27444- Ley de Procedimiento Administrativo General','Pública','','2024-04-01','2024-04-01 00:00:00',0),
(404,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','28','DIGA-ALMAC/40','Guia de remisión','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Documento que sirve para sustentar el traslado de bienes emitida por el propietario de los bienes','Guía de remisión','Alta','MEF','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-20 21:36:20',1),
(405,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','28','DIGA-ALMAC/40','Nota de entrada a almacen','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ',NULL,NULL,NULL,NULL,NULL,NULL,'2024-04-01','2024-04-01 00:00:00',0),
(406,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',32,'DIRECCION DE PROYECCION SOCIAL Y EXTENSION CULTURAL','39','DPSEC/10','Informe de avances por Carrera profesional','P',2,28,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                                                                                                                 ','Son los informes que permiten dar el seguimiento a cada proyecto estratégico por facultades. Debe rendirse cuando el proyecto tiene un cambio sustancial al 50% avance del proyecto de proyección social','Carta, solicitud, resolución, Informe, constancia','Baja','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )','2024-04-01','2024-05-22 13:40:38',1),
(407,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','25','DIGA/06','Informe de acción de oficio posterior ','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ        ','Es un documento o hallazgo en el transcurso de alguna oficina no hay cumplido con la regulación o directivas estipuladas, se realiza de un informe de accione posterior para tomar acciones, correcciones y el deslinde de responsabilidades.  Esta acarrea acciones de sanciones administrativas y disciplinaras.','Ce dula de notificación, oficio, cartas, informes, memorandum','Media','Contraloria General de Republica','Reservada','Soporte: Papel( X ) Medios Electronicos ( X ) Otros (  )','2024-04-01','2024-05-07 14:34:01',1),
(408,'UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','31','DIGA-TESO/57','Estado de cuentas corrientes','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Son documentos que muestran el estado de una cuenta corriente, que es una herramienta financiera que te permite administrar, realizar pagos y recibir tus cobranzas de manera eficiente y segura.','Reporte de saldos','Media','Ley General de Tesorería N° 28693, DL 1441','Reservada','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )',NULL,'2024-05-21 15:28:00',0),
(409,'UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','31','DIGA-TESO/57','Estados bancarios','T',3,2,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Son documentos que informan de todos los movimientos que se producen en tu cuenta bancaria en un determinado periodo de tiempo','Acta de conciliación, oficios','Baja','Ley General de Tesorería N° 28693, DL 1441','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )',NULL,'2024-05-21 15:31:42',0),
(410,'UNAJ',15,'DIRECCION GENERAL DE ADMINISTRACION','31','','Conciliaciones','T',3,2,5,'              ','Consiste en comparar los movimientos registrados en la contabilidad de la empresa con los movimientos registrados en el estado de cuenta bancario.','Acta de conciliación, oficios','Baja','Ley General de Tesorería N° 28693, DL 1441','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )',NULL,'2024-05-21 15:33:20',0),
(411,'unaj',15,'DIRECCION GENERAL DE ADMINISTRACION','31','DIGA-TESO/61','Libro bancos','T',6,4,10,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                          ','Un extracto bancario es un documento en el que el banco informa a la universidad de los movimientos y el saldo de su cuenta bancaria en un periodo determinado. Se trata de información de gran utilidad para el titular de una cuenta, pues le permite llevar un control de lo que ingresa y gasta.','Reportes de estados bancarios del SIAF-SP, consultas de saldos, Extracto bancario, estados bancarios entre otros.','Baja','D.L N° 1441 Ley del Sistema Nacional de Tesoreria, Diirectiva de Tesoreria N° 001-2007-EF/77.15\r\nRD Nº002-2007-EF- Directiva de Tesorería Nº 001-2007-EF/77.15, D.L. N° 1438 Ley del Sistema Nacional de Tesoreria','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )',NULL,'2024-05-21 16:47:55',1),
(412,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','53','DIGEAA-TUTOR/01','Informes seguimiento de tutoria','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ              ','Son documentos que reflejan las evidencias del trabajo de tutoria, esta contiene informacion basica, confidencial de los estudiantes que presentan problemas.  Esta contiene fichas grupales y tambien fichas individuales, evidencias fotograficas y lista de asistencia.','Carta, informe, fichas de seguimiento','Baja','Ley universitaria 30220, Art 87, literal 5','Confidencial','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )',NULL,'2024-05-22 14:37:15',1),
(413,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','53','DIGEAA-TUTOR/02','Planes de trabajo','T',1,4,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Son documentos de gestión administrativa que tiene por finalidad planificar actividades, acciones y otros, orientados hacia la comunidad universitaria y la sociedad.','Resolución, plan de trabajo','Baja','Ley Universitaria 30220, Ley General de Educación N° 28044, Ley de creacion de la UNAJ N° 29074, Proyecto de Desarrollo Institucional UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )',NULL,'2024-05-22 14:47:41',1),
(414,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',24,'DIRECCION DE GESTION DE ASUNTOS ACADEMICOS','53','DIGEAA-TUTOR/03','Constancias de tutoria','T',2,3,5,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                  ','Son documentos que se expide a solicitud del estudiante con fines de matricula','Solicitud, Resolucion, ficha de compromiso, constancia','Baja','Ley universitaria 30220, Art 87, literal 5','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )',NULL,'2024-05-22 15:06:19',1),
(417,'UNAJ',NULL,NULL,'56','','Banco de preguntas','T',2,3,5,'                            ','Son un conjunto de preguntas de diferentes asignaturas que corresponden al CEPRE, cuya finalidad es utilizarlos para la elaboración de los exámenes de admisión CEPRE','Banco de preguntas por áreas','Baja','ROF','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )',NULL,'2024-05-22 19:52:45',1),
(418,'',NULL,NULL,'56','','Informe final de admisión CEPRE','T',3,3,6,'              ','Son documentos que evidencias el proceso de Admision CEPRE por cada ciclo','Resolución, Plan de trabajo, reglamento general CEPRE, contratos de personal docente y administrativo, planilla de pago de docentes, actas generadas por la unidad académica, adjudicación de vacantes, consolidado de asistencia, consolidado de horarios, avance programático, banco de preguntas, listado de materiales, rendición de cuentas, ','Baja','Reglamento del proceso de Admisión CEPRE','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )',NULL,'2024-05-22 20:23:44',1),
(419,'',NULL,NULL,'55','','Informe final de Admisión','T',3,3,6,'              ','Son documentos que evidencias el proceso de Admisión de la UNAJ','Informe, material de publicidad, elaboración del examen, calificación del examen, lista de asistencia, lista de ingresantes y lista de postulantes, acta de adjudicación de vacantes, actas, declaraciones juradas, acta de recepcion de materiales, asistencia de docentes controladores','Baja','Reglamento de admisión de la UNAJ','Reservada','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )',NULL,'2024-05-22 20:31:42',1),
(420,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',23,'DIRECCION DE BIENESTAR UNIVERSITARIO','41','DBU-BIBLIO/05','Informes de practicas','',0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),
(421,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',17,'SECRETARIA GENERAL','35','SG/03','Resoluciones de Vicepresidencia Academica','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                   ','Es un acto administrativo emitidos en función a los acuerdos tomados por la Vice presidencia academica','Cartas, oficios, informes, solicitudes, tesis, proveídos, informes técnicos, hojas de tramite, planes, material multitudinaria, planes de trabajo, memorial, memorandum, contratos, actas, reglamentos, directivas, políticas, informes jurídicos','Media','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )',NULL,'2024-07-24 17:37:00',1),
(422,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',17,'SECRETARIA GENERAL','35','SG/04','Resoluciones de Vicepresidencia Administrativa','P',3,27,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ         ','Es un acto administrativo emitidos en función a los acuerdos tomados por la Vice presidencia Administrativa','Cartas, oficios, informes, solicitudes, tesis, proveídos, informes técnicos, hojas de tramite, planes, material multitudinaria, planes de trabajo, memorial, memorandum, contratos, actas, reglamentos, directivas, políticas, informes jurídicos','Alta','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )',NULL,'2024-07-24 17:40:41',1),
(423,'UNIVERSIDAD NACIONAL DE JULIACA - UNAJ',22,'DIRECCION DE PROYECCION SOCIAL Y EXTENSION CULTURAL','39','DPSEC/12','Libros de Actas','P',10,20,30,'Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ                                                                                                                                               ','Son libros de actas de monitoreo, libros de registros y cuadernos de registros','Libro de actas, cuadernos de registros','Nula','Resolución N° 192-2021-CCO-UNAJ - Reglamento de Organización y Funciones de la UNAJ   ','Publica','Soporte: Papel( X ) Medios Electronicos (  ) Otros (  )',NULL,'2024-08-29 17:34:25',1);
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uniorganica`
--

DROP TABLE IF EXISTS `uniorganica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uniorganica` (
  `iduniorganica` int(11) NOT NULL AUTO_INCREMENT,
  `uniorganica` varchar(255) NOT NULL,
  `codigo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`iduniorganica`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uniorganica`
--

LOCK TABLES `uniorganica` WRITE;
/*!40000 ALTER TABLE `uniorganica` DISABLE KEYS */;
INSERT INTO `uniorganica` (`iduniorganica`, `uniorganica`, `codigo`) VALUES (1,'Asamblea Universitaria','ASUN'),
(2,'Consejo Universitario','CU'),
(3,'Presidencia de la comisión organizadora','PCO'),
(4,'Vicerrectorado Académico','VPAC'),
(5,'Vicerrectorado de Investigación','VPIN'),
(6,'Defensoría Universitaria','DU'),
(7,'Tribunal de Honor Universitario','THU'),
(8,'Comisión Permanente de Fiscalización','CPF'),
(9,'Órgano de Control Institucional','OCI'),
(10,'Oficina de Asesoría Jurídica','OAJ'),
(11,'Oficina de Planeamiento y Presupuesto','OPP'),
(12,'Oficina de Cooperación y Relaciones Internacionales','OCRI'),
(13,'Oficina de Gestión de la Calidad','OGC'),
(14,'Oficina de Comunicación e Imagen Institucional','OCII'),
(15,'Dirección General de Administración','DIGA'),
(16,'Oficina de Tecnologías de la Información','OTI'),
(17,'Secretaría General','SG'),
(18,'Archivo Central','AC'),
(19,'Consejo de Facultad','CF'),
(20,'Decanato','DECA'),
(21,'Escuela de Posgrado','POST'),
(22,'Dirección de Proyección Social y Extensión Cultural','DPSEC'),
(23,'Dirección de Bienestar Universitario','DBU'),
(24,'Dirección de Gestión de Asuntos Académicos','DIGEA'),
(25,'Dirección de Admisión','DA'),
(26,'Dirección de Centros de Producción de Bienes y Servicios','DCPBS'),
(27,'Dirección de Incubadora de Empresas','DIE'),
(28,'Dirección de Innovación y Transferencia Tecnológica','DITT'),
(29,'Instituto de Investigación','ININ');
/*!40000 ALTER TABLE `uniorganica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'acentral'
--

--
-- Final view structure for view `resoluciones_view`
--

/*!50001 DROP VIEW IF EXISTS `resoluciones_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`archivo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `resoluciones_view` AS select (select `p`.`seccion` from `proyecto` `p` where `p`.`idproyecto` = `r`.`idproyecto`) AS `Seccion`,(select `p`.`serie` from `proyecto` `p` where `p`.`idproyecto` = `r`.`idproyecto`) AS `Serie`,(select `c`.`tipo` from `cajas` `c` where `c`.`idcajas` = `r`.`idcaja`) AS `Tipo`,(select `c`.`cajanum` from `cajas` `c` where `c`.`idcajas` = `r`.`idcaja`) AS `Caja`,(select `c`.`anio` from `cajas` `c` where `c`.`idcajas` = `r`.`idcaja`) AS `Año`,concat(lpad(`r`.`numResolucion`,3,'0'),'-',`r`.`anio`,'-CCO-UNAJ') AS `NumResolucion`,`r`.`fecha` AS `fecha`,`r`.`resuelve` AS `resuelve`,`r`.`totalfolios` AS `totalfolios` from ((`resoluciones` `r` join `proyecto` `p`) join `cajas` `c`) where `p`.`idproyecto` = `r`.`idproyecto` and `c`.`idcajas` = `r`.`idcaja` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-07  9:32:37
