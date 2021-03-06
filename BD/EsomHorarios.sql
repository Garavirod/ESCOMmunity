-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: escomHoriario
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `asignacion`
--

DROP TABLE IF EXISTS `asignacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignacion` (
  `idAsignacion` int(11) NOT NULL AUTO_INCREMENT,
  `idMateria` int(11) DEFAULT NULL,
  `idProfesor` int(11) DEFAULT NULL,
  `idGrupo` int(11) DEFAULT NULL,
  `idHorario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAsignacion`),
  KEY `idMateria` (`idMateria`),
  KEY `idProfesor` (`idProfesor`),
  KEY `idGrupo` (`idGrupo`),
  KEY `idHorario` (`idHorario`),
  CONSTRAINT `asignacion_ibfk_1` FOREIGN KEY (`idMateria`) REFERENCES `materia` (`idMateria`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `asignacion_ibfk_2` FOREIGN KEY (`idProfesor`) REFERENCES `profesor` (`idProfesor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `asignacion_ibfk_3` FOREIGN KEY (`idGrupo`) REFERENCES `grupo` (`idGrupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `asignacion_ibfk_4` FOREIGN KEY (`idHorario`) REFERENCES `horario` (`idHorario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1023 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignacion`
--

LOCK TABLES `asignacion` WRITE;
/*!40000 ALTER TABLE `asignacion` DISABLE KEYS */;
INSERT INTO `asignacion` VALUES (512,126,443,217,69),(513,126,443,221,79),(514,126,443,222,81),(515,126,505,220,74),(516,126,536,247,67),(517,126,583,219,84),(518,126,623,223,91),(519,126,623,245,90),(520,127,476,275,90),(521,127,502,277,81),(522,127,545,276,67),(523,127,569,270,69),(524,127,569,273,82),(525,127,569,274,70),(526,127,577,216,88),(527,127,577,271,89),(528,127,608,268,91),(529,127,608,272,90),(530,128,488,218,74),(531,128,496,234,88),(532,128,496,239,89),(533,128,517,210,90),(534,128,548,244,81),(535,128,576,209,67),(536,128,576,238,77),(537,128,583,229,79),(538,129,455,254,82),(539,129,462,252,69),(540,129,500,251,81),(541,129,501,264,79),(542,129,526,266,74),(543,129,538,253,76),(544,129,556,249,79),(545,129,564,250,90),(546,129,564,257,89),(547,129,601,225,77),(548,129,613,248,89),(549,129,613,263,88),(550,129,616,265,69),(551,130,477,260,79),(552,130,477,262,81),(553,130,498,259,74),(554,130,534,257,88),(555,130,575,261,89),(556,130,589,256,77),(557,130,609,258,67),(558,131,449,220,89),(559,131,494,221,81),(560,131,494,222,77),(561,131,573,219,74),(562,131,575,223,90),(563,131,575,245,76),(564,131,595,247,79),(565,131,596,217,67),(566,132,444,254,77),(567,132,453,249,81),(568,132,453,264,67),(569,132,457,269,84),(570,132,484,251,69),(571,132,484,252,82),(572,132,491,265,79),(573,132,543,250,76),(574,132,543,253,91),(575,132,582,225,82),(576,132,587,263,74),(577,132,602,248,90),(578,132,602,266,89),(579,133,456,227,69),(580,133,462,253,88),(581,133,478,251,77),(582,133,485,266,90),(583,133,501,225,81),(584,133,503,263,89),(585,133,504,252,67),(586,133,526,250,88),(587,133,542,248,84),(588,133,542,249,82),(589,133,586,254,79),(590,134,458,238,67),(591,134,469,243,81),(592,134,482,209,79),(593,134,533,218,88),(594,134,547,234,84),(595,134,547,244,69),(596,134,619,242,74),(597,135,450,241,89),(598,135,450,246,74),(599,135,545,240,77),(600,135,553,214,79),(601,135,553,215,81),(602,135,577,237,90),(603,135,600,212,67),(604,136,468,215,77),(605,136,468,237,84),(606,137,459,217,70),(607,137,459,221,69),(608,137,459,247,81),(609,137,527,245,91),(610,137,567,222,82),(611,137,618,219,89),(612,137,618,220,90),(613,137,618,223,88),(614,138,461,223,76),(615,138,533,220,84),(616,139,451,224,88),(617,139,461,228,89),(618,139,466,229,77),(619,139,509,226,74),(620,139,513,233,84),(621,139,513,236,69),(622,139,547,229,82),(623,139,559,230,67),(624,139,559,232,79),(625,139,585,211,90),(626,139,593,235,81),(627,140,516,257,89),(628,140,519,256,67),(629,140,519,262,69),(630,140,520,259,76),(631,140,523,269,88),(632,140,578,261,90),(633,140,586,257,84),(634,140,592,258,79),(635,140,592,260,81),(636,141,516,251,82),(637,141,550,253,74),(638,141,558,269,89),(639,141,564,263,84),(640,141,564,266,76),(641,141,578,257,74),(642,141,599,227,79),(643,141,599,264,81),(644,141,601,254,67),(645,141,621,249,69),(646,141,621,265,81),(647,142,512,231,76),(648,142,512,241,90),(649,142,562,212,79),(650,142,597,240,67),(651,142,603,237,74),(652,142,603,246,89),(653,142,610,214,81),(654,142,610,215,69),(655,143,566,219,88),(656,144,603,246,90),(657,145,521,214,77),(658,145,524,220,88),(659,146,446,261,72),(660,146,446,262,82),(661,146,463,256,79),(662,146,492,269,74),(663,146,499,259,88),(664,146,525,257,76),(665,146,572,265,67),(666,146,598,264,70),(667,146,612,258,81),(668,146,612,260,69),(669,147,472,247,70),(670,147,480,212,82),(671,147,605,223,89),(672,148,451,213,89),(673,148,466,267,67),(674,149,451,231,74),(675,150,470,270,67),(676,150,470,273,79),(677,150,470,274,81),(678,150,470,277,69),(679,150,476,271,88),(680,150,549,216,74),(681,150,549,268,89),(682,151,495,238,79),(683,151,497,209,81),(684,151,518,218,90),(685,151,527,234,89),(686,151,529,210,91),(687,151,531,239,74),(688,151,531,244,82),(689,151,557,243,69),(690,152,509,240,82),(691,152,593,247,77),(692,153,467,241,84),(693,154,456,265,82),(694,154,465,251,67),(695,154,487,266,91),(696,154,522,252,79),(697,154,522,254,81),(698,154,523,263,76),(699,154,606,248,88),(700,154,606,250,74),(701,154,606,253,89),(702,154,607,249,77),(703,154,607,264,69),(704,155,444,229,67),(705,155,445,230,79),(706,155,445,232,81),(707,155,457,236,82),(708,155,464,226,89),(709,155,507,224,74),(710,155,543,228,90),(711,155,611,235,69),(712,155,617,211,76),(713,156,449,253,90),(714,156,494,251,79),(715,156,534,248,74),(716,156,534,250,89),(717,156,555,263,91),(718,156,555,269,76),(719,156,573,266,88),(720,156,579,252,81),(721,156,579,254,69),(722,156,589,249,67),(723,156,596,227,70),(724,156,597,264,82),(725,156,609,265,77),(726,157,588,245,89),(727,158,478,260,82),(728,158,487,259,90),(729,158,504,262,77),(730,158,520,257,90),(731,158,528,227,67),(732,158,528,258,69),(733,158,538,269,90),(734,158,591,261,76),(735,158,616,256,81),(736,159,442,230,81),(737,159,442,242,84),(738,159,481,232,69),(739,159,495,235,82),(740,159,527,226,90),(741,159,529,228,76),(742,159,551,224,90),(743,159,570,229,79),(744,159,570,236,70),(745,160,460,229,81),(746,160,460,232,82),(747,160,488,224,89),(748,160,594,211,84),(749,160,594,230,69),(750,160,594,235,70),(751,160,614,236,77),(752,160,620,226,76),(753,160,620,228,91),(754,161,475,240,69),(755,162,454,216,84),(756,162,505,277,70),(757,162,517,268,88),(758,162,536,274,69),(759,162,548,270,79),(760,162,584,271,76),(761,162,614,273,81),(762,163,532,241,88),(763,164,475,214,70),(764,165,452,220,76),(765,165,469,221,82),(766,165,482,217,81),(767,165,530,247,69),(768,165,535,231,88),(769,165,561,222,70),(770,165,561,223,74),(771,165,619,219,90),(772,166,474,259,89),(773,166,511,257,74),(774,166,540,256,69),(775,166,540,262,84),(776,166,571,260,77),(777,166,598,258,82),(778,166,622,261,88),(779,167,464,220,91),(780,167,507,219,76),(781,167,507,245,88),(782,167,541,217,79),(783,167,541,222,69),(784,167,560,247,82),(785,167,582,223,84),(786,167,611,221,70),(787,168,442,240,79),(788,168,497,214,69),(789,168,518,237,89),(790,168,527,241,76),(791,168,551,246,91),(792,168,570,212,81),(793,168,570,215,82),(794,169,496,231,90),(795,169,505,217,82),(796,169,565,246,84),(797,170,474,271,91),(798,170,490,270,81),(799,170,490,273,69),(800,170,492,275,89),(801,170,499,216,90),(802,170,511,268,76),(803,170,571,255,67),(804,170,572,274,77),(805,170,622,272,84),(806,171,462,236,67),(807,171,465,235,77),(808,171,485,224,76),(809,171,500,233,74),(810,171,503,211,88),(811,171,580,229,69),(812,171,580,232,70),(813,171,615,228,84),(814,171,615,230,82),(815,172,500,259,85),(816,172,514,258,78),(817,172,514,260,67),(818,172,524,261,86),(819,172,554,262,80),(820,172,558,257,92),(821,172,601,256,83),(822,173,532,215,70),(823,173,532,231,84),(824,173,539,212,69),(825,173,539,240,81),(826,173,544,214,82),(827,173,546,237,88),(828,173,546,241,91),(829,173,546,246,76),(830,174,552,217,77),(831,175,604,213,74),(832,176,455,209,69),(833,176,455,238,81),(834,176,467,244,70),(835,176,537,234,90),(836,176,537,239,91),(837,176,550,210,84),(838,176,578,218,76),(839,176,578,226,91),(840,176,590,229,77),(841,176,590,243,82),(842,177,441,236,79),(843,177,473,211,74),(844,177,473,228,88),(845,177,493,226,84),(846,177,498,229,82),(847,177,498,230,70),(848,177,512,224,91),(849,177,512,233,89),(850,177,610,232,77),(851,177,610,235,67),(852,178,450,210,88),(853,178,450,218,91),(854,178,472,238,69),(855,178,502,209,82),(856,178,506,239,84),(857,178,553,229,67),(858,178,574,234,74),(859,178,600,243,79),(860,178,600,244,77),(861,179,447,218,84),(862,179,471,243,77),(863,179,471,244,67),(864,179,515,210,89),(865,179,515,234,91),(866,179,561,238,82),(867,179,577,239,76),(868,179,619,209,70),(869,180,581,221,77),(870,181,476,218,89),(871,181,510,239,88),(872,181,530,244,79),(873,181,533,210,74),(874,181,563,238,70),(875,181,568,209,77),(876,181,581,243,67),(877,181,608,234,76),(878,182,441,230,77),(879,182,479,232,67),(880,182,480,229,70),(881,182,493,228,74),(882,182,521,224,84),(883,182,521,235,79),(884,182,555,233,90),(885,182,566,211,89),(886,182,588,226,88),(887,182,595,236,81),(888,183,448,231,89),(889,183,448,240,70),(890,183,448,246,88),(891,183,481,215,79),(892,183,481,241,74),(893,183,489,267,82),(894,183,502,212,77),(895,183,502,214,67),(896,183,574,237,76),(897,184,476,216,75),(898,184,483,273,66),(899,184,499,268,73),(900,184,536,270,63),(901,184,576,274,64),(902,184,607,271,71),(903,185,463,207,66),(904,185,477,203,68),(905,185,497,208,73),(906,185,505,205,64),(907,185,517,204,65),(908,185,608,206,87),(909,186,486,267,79),(910,186,549,212,70),(911,186,568,222,67),(912,187,508,245,74);
/*!40000 ALTER TABLE `asignacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo` (
  `idGrupo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `idSalon` int(11) DEFAULT NULL,
  PRIMARY KEY (`idGrupo`),
  KEY `idSalon` (`idSalon`),
  CONSTRAINT `grupo_ibfk_1` FOREIGN KEY (`idSalon`) REFERENCES `salon` (`idSalon`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=330 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (203,'5CM2',102),(204,'5CV3',102),(205,'5CM3',102),(206,'5CV1',102),(207,'5CM1',102),(208,'5CV2',102),(209,'2CM7',103),(210,'2CV9',103),(211,'2CV4',104),(212,'3CM6',104),(213,'3CV9',105),(214,'3CM7',105),(215,'3CM8',106),(216,'4CV1',106),(217,'3CM1',107),(218,'2CV7',107),(219,'3CV1',108),(220,'3CV2',109),(221,'3CM3',109),(222,'3CM4',110),(223,'3CV3',110),(224,'2CV1',111),(225,'1CM11',111),(226,'2CV2',112),(227,'1CM12',112),(228,'2CV3',113),(229,'2CM1',113),(230,'2CM2',114),(231,'3CV8',114),(232,'2CM3',115),(233,'2CV5',115),(234,'2CV6',116),(235,'2CM4',116),(236,'2CM5',117),(237,'3CV5',117),(238,'2CM6',118),(239,'2CV8',118),(240,'3CM5',119),(241,'3CV7',119),(242,'2CV10',120),(243,'2CM8',120),(244,'2CM9',121),(245,'3CV4',121),(246,'3CV6',122),(247,'3CM2',122),(248,'1CV7',123),(249,'1CM7',123),(250,'1CV8',124),(251,'1CM8',124),(252,'1CM9',125),(253,'1CV9',125),(254,'1CM10',126),(255,'4CM5',127),(256,'1CM1',128),(257,'1CV1',128),(258,'1CM2',129),(259,'1CV2',129),(260,'1CM3',130),(261,'1CV3',130),(262,'1CM4',131),(263,'1CV5',132),(264,'1CM5',132),(265,'1CM6',133),(266,'1CV6',133),(267,'3CM9',134),(268,'4CV2',134),(269,'1CV4',135),(270,'4CM1',135),(271,'4CV3',135),(272,'4CV4',136),(273,'4CM2',136),(274,'4CM3',137),(275,'4CV5',137),(276,'4CM6',138),(277,'4CM4',138);
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horario` (
  `idHorario` int(11) NOT NULL AUTO_INCREMENT,
  `Lunes` varchar(20) DEFAULT NULL,
  `Martes` varchar(20) DEFAULT NULL,
  `Miercoles` varchar(20) DEFAULT NULL,
  `Jueves` varchar(20) DEFAULT NULL,
  `Viernes` varchar(20) DEFAULT NULL,
  `Sabado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idHorario`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
INSERT INTO `horario` VALUES (63,'-','-','-','07:00-08:30','08:30-10:00','-'),(64,'-','-','08:30-10:00','08:30-10:00','-','-'),(65,'-','-','16:30-18:00','16:30-18:00','-','-'),(66,'-','07:00-08:30','07:00-08:30','-','-','-'),(67,'-','07:00-08:30','07:00-08:30','-','07:00-08:30','-'),(68,'-','10:30-12:00','10:30-12:00','-','-','-'),(69,'-','10:30-12:00','10:30-12:00','-','10:30-12:00','-'),(70,'-','12:00-13:30','13:30-15:00','-','12:00-13:30','-'),(71,'-','13:30-15:00','-','13:30-15:00','-','-'),(72,'-','13:30-15:00','13:30-15:00','13:30-15:00','-','-'),(73,'-','15:00-16:30','15:00-16:30','-','-','-'),(74,'-','15:00-16:30','15:00-16:30','-','15:00-16:30','-'),(75,'-','18:30-20:00','18:30-20:00','-','-','-'),(76,'-','18:30-20:00','18:30-20:00','-','18:30-20:00','-'),(77,'07:00-08:30','-','-','07:00-08:30','08:30-10:00','-'),(78,'07:00-08:30','12:00-13:30','-','07:00-08:30','08:30-10:00','-'),(79,'08:30-10:00','-','08:30-10:00','08:30-10:00','-','-'),(80,'08:30-10:00','12:00-13:30','08:30-10:00','08:30-10:00','-','-'),(81,'10:30-12:00','08:30-10:00','-','10:30-12:00','-','-'),(82,'12:00-13:30','-','12:00-13:30','12:00-13:30','-','-'),(83,'12:00-13:30','-','12:00-13:30','12:00-13:30','12:00-13:30','-'),(84,'13:30-15:00','13:30-15:00','-','13:30-15:00','-','-'),(85,'13:30-15:00','13:30-15:00','-','13:30-15:00','13:30-15:00','-'),(86,'13:30-15:00','15:00-16:30','15:00-16:30','-','15:00-16:30','-'),(87,'15:00-16:30','-','-','15:00-16:30','-','-'),(88,'15:00-16:30','-','-','15:00-16:30','16:30-18:00','-'),(89,'16:30-18:00','-','16:30-18:00','16:30-18:00','-','-'),(90,'18:30-20:00','16:30-18:00','-','18:30-20:00','-','-'),(91,'20:00-21:30','-','20:00-21:30','20:00-21:30','-','-'),(92,'20:00-21:30','13:30-15:00','20:00-21:30','20:00-21:30','-','-');
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materia` (
  `idMateria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`idMateria`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (126,'ADMINISTRACION DE PROYECTOS'),(127,'ADMINISTRACION DE SERVICIOS EN RED'),(128,'ADMINISTRACION FINANCIERA'),(129,'ALGEBRA LINEAL'),(130,'ALGORITMIA Y PROGRAMACION ESTRUCTURADA'),(131,'ANALISIS DE ALGORITMOS'),(132,'ANALISIS FUNDAMENTAL DE CIRCUITOS'),(133,'ANALISIS VECTORIAL'),(134,'ANALISIS Y DISEÑO ORIENTADO A OBJETOS'),(135,'APLICACIONES PARA COMUNICACIONES DE RED'),(136,'APPLICATION DEVELOPMENT FOR MOBILE DEVICES'),(137,'ARQUITECTURA DE COMPUTADORAS'),(138,'ARTIFICIAL INTELLIGENCE'),(139,'BASES DE DATOS'),(140,'CALCULO'),(141,'CALCULO APLICADO'),(142,'COMPILADORES'),(143,'COMPUTATIONAL GEOMETRY'),(144,'COMPUTER GRAPHICS'),(145,'COMPUTING SELECTED TOPICS'),(146,'COMUNICACION ORAL Y ESCRITA'),(147,'CRYPTOGRAPHY'),(148,'DATA BASE SELECTED TOPICS'),(149,'DATA MINING'),(150,'DESARROLLO DE SISTEMAS DISTRIBUIDOS'),(151,'DISEÑO DE SISTEMAS DIGITALES'),(152,'DISTRIBUTED DATA BASE'),(153,'ECONOMIC ENGINEERING'),(154,'ECUACIONES DIFERENCIALES'),(155,'ELECTRONICA ANALOGICA'),(156,'ESTRUCTURAS DE DATOS'),(157,'EVOLUTIONARY COMPUTING'),(158,'FISICA'),(159,'FUNDAMENTOS DE DISEÑO DIGITAL'),(160,'FUNDAMENTOS ECONOMICOS'),(161,'GENETIC ALGORITHMS'),(162,'GESTION EMPRESARIAL'),(163,'HIGH TECHNOLOGY ENTERPRISE MANAGEMENT'),(164,'IMAGE ANALYSIS'),(165,'INGENIERIA DE SOFTWARE'),(166,'INGENIERIA ETICA Y SOCIEDAD'),(167,'INSTRUMENTACION'),(168,'INTRODUCCION A LOS MICROCONTROLADORES'),(169,'IT GOVERNANCE'),(170,'LIDERAZGO Y DESARROLLO PROFESIONAL'),(171,'MATEMATICAS AVANZADAS PARA LA INGENIERIA'),(172,'MATEMATICAS DISCRETAS'),(173,'METODOS CUANTITATIVOS PARA LA TOMA DE DECISIONES'),(174,'NEURAL NETWORKS'),(175,'PATTERN RECOGNITION'),(176,'PROBABILIDAD Y ESTADISTICA'),(177,'PROGRAMACION ORIENTADA A OBJETOS'),(178,'REDES DE COMPUTADORAS'),(179,'SISTEMAS OPERATIVOS'),(180,'SOFTWARE ENGINEERING FOR MOBILE DEVICES'),(181,'TECNOLOGIAS PARA LA WEB'),(182,'TEORIA COMPUTACIONAL'),(183,'TEORIA DE COMUNICACIONES Y SEÑALES'),(184,'TRABAJO TERMINAL I'),(185,'TRABAJO TERMINAL II'),(186,'WEB APPLICATION DEVELOPMENT'),(187,'WEB SECURITY');
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesor` (
  `idProfesor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`idProfesor`)
) ENGINE=InnoDB AUTO_INCREMENT=696 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (441,'AGUILAR GARCIA RAFAEL'),(442,'AGUILAR SANCHEZ FERNANDO'),(443,'AGUSTIN DOMINGUEZ VERONICA'),(444,'ALCANTARA MENDEZ ALBERTO JESUS'),(445,'ALMAZAN FARFAN ROCIO'),(446,'ARAGON GARCIA MARIBEL'),(447,'ARAUJO DIAZ DAVID'),(448,'ARZATE GORDILLO JACQUELINE'),(449,'AVILA SANCHEZ CRISTHIAN ALEJANDRO'),(450,'BAUTISTA ROSALES SANDRA IVETTE'),(451,'BOTELLO CASTILLO ALEJANDRO'),(452,'CABRERA CHAVEZ GLORIA LOURDES'),(453,'CANCINO CALDERON SERGIO'),(454,'CANCINO MOSQUEDA ODETTE BERENICE'),(455,'CAÑEDO SUAREZ LETICIA'),(456,'CARBALLO JIMENEZ JUAN MANUEL'),(457,'CARRANZA CASTILLO OSCAR'),(458,'CARRETO ARELLANO CHADWICK'),(459,'CASTILLO CABRERA GELACIO'),(460,'CASTILLO MARRUFO JUAN ANTONIO'),(461,'CATALAN SALGADO EDGAR ARMANDO'),(462,'CEBALLOS SEBASTIAN RICARDO'),(463,'CELIS DOMINGUEZ ADRIANA BERENICE'),(464,'CERVANTES DE ANDA ISMAEL'),(465,'CERVANTES ESPINOSA LUIS MOCTEZUMA'),(466,'CHAVARRIA BAEZ LORENA'),(467,'CHAVEZ LIMA EDUARDO'),(468,'CIFUENTES ALVAREZ ALEJANDRO SIGFRIDO'),(469,'CORDERO LOPEZ MARTHA ROSA'),(470,'CORONILLA CONTRERAS UKRANIO'),(471,'CORTES GALICIA JORGE'),(472,'CORTEZ DUARTE NIDIA ASUNCION'),(473,'CRUZ GARCIA DANIEL'),(474,'CRUZ LAZARO APOLINAR FRANCISCO'),(475,'CRUZ MEZA MARIA ELENA'),(476,'CRUZ TORRES BENJAMIN'),(477,'DAVALOS LOPEZ JOSE CARLOS'),(478,'DIAZ HUERTA CLAUDIA CELIA'),(479,'DIAZ SANTIAGO RICARDO FELIPE'),(480,'DIAZ SANTIAGO SANDRA'),(481,'DIAZ TOALA IVAN'),(482,'DORANTES GONZALEZ MARCO ANTONIO'),(483,'DURAN CAMARILLO EDMUNDO RENE'),(484,'DURAN CAMARILLO EDMUNDO RENE;'),(485,'DURAN LEDEZMA ANGEL ADALBERTO'),(486,'ENRIQUEZ ZARATE M. EN C. JOSE ASUNCION'),(487,'ESQUIVEL CENTENO JOSE ARMANDO'),(488,'ESTRADA ELIZALDE SERAFIN'),(489,'FERNANDEZ VAZQUEZ ALFONSO'),(490,'FERRER TENORIO JORGE'),(491,'FIGUEROA DEL PRADO FELIPE DE JESUS'),(492,'FLORES DELGADO RAQUEL'),(493,'FLORES MENDOZA YAXKIN'),(494,'FRANCO MARTINEZ EDGARDO ADRIAN'),(495,'GALICIA MEJIA RUBEN'),(496,'GALIÑANES RODRIGUEZ MARIA GABRIELA'),(497,'GARCIA ORTEGA VICTOR HUGO'),(498,'GARCIA SALES JUAN VICENTE'),(499,'GONZALEZ ALBARRAN GISELA'),(500,'GONZALEZ CISNEROS ALEJANDRO'),(501,'GONZALEZ TRUJILLO MIGUEL'),(502,'GUTIERREZ ALDANA EDUARDO'),(503,'GUTIERREZ MEJIA DARWIN'),(504,'GUZMAN AGUILAR FLORENCIO'),(505,'GUZMAN FLORES JESSIE PAULINA'),(506,'HENESTROSA CARRASCO LETICIA'),(507,'HERNANDEZ AGUILAR JOSE LUIS'),(508,'HERNANDEZ AVILES FERNANDO DANTE'),(509,'HERNANDEZ CONTRERAS EULER'),(510,'HERNANDEZ CRUZ MACARIO'),(511,'HERNANDEZ GARCIA ROSA ALBA'),(512,'HERNANDEZ OLVERA LUIS ENRIQUE'),(513,'HERNANDEZ RUBIO ERIKA'),(514,'HERRERA YAÑEZ CRISPIN'),(515,'JIMENEZ BENITEZ JOSE ALFREDO'),(516,'JIMENEZ CONTRERAS EDITH ADRIANA'),(517,'JIMENEZ GALAN YASMIN IVETTE'),(518,'JIMENEZ RUIZ RENE BALTAZAR'),(519,'JIMENEZ VILLANUEVA MARTHA PATRICIA'),(520,'JUAREZ LEON CARLOS'),(521,'JUAREZ MARTINEZ GENARO'),(522,'JUAREZ RAMIREZ JAZMIN ADRIANA'),(523,'JURADO JIMENEZ ROBERTO'),(524,'KOLESNIKOVA OLGA'),(525,'LAZCANO XOXOTLA LAURA'),(526,'LEON HERNANDEZ MIGUEL ABEL'),(527,'LINARES VALLEJO ERICK EUGENIO'),(528,'LOPEZ CARRERA BENJAMIN'),(529,'LOPEZ LEYVA LUIS OCTAVIO'),(530,'LOPEZ RABADAN JOSE JAIME'),(531,'LOPEZ RODRIGUEZ CLAUDIA ALEJAN'),(532,'LOPEZ ROJAS ARIEL'),(533,'LOPEZ RUIZ GABRIELA DE JESUS'),(534,'LUNA BENOSO BENJAMIN'),(535,'MALDONADO CASTILLO M. EN C. IDALIA'),(536,'MALDONADO MUÑOZ MIGUEL ANGEL'),(537,'MANDUJANO JOSE ROBERTO'),(538,'MANZANILLA GRANADOS HECTOR MANUEL'),(539,'MARQUEZ ARREGUIN GUILLERMO'),(540,'MARTINEZ ACOSTA LILIAN'),(541,'MARTINEZ DIAZ JUAN CARLOS'),(542,'MARTINEZ GARCIA CESAR ROMAN'),(543,'MARTINEZ GUERRERO JOSE ALFREDO'),(544,'MARTINEZ PERALES JOSE CRUZ'),(545,'MARTINEZ ROSALES RICARDO'),(546,'MEDINA MEJIA VIRGINIA'),(547,'MELARA ABARCA REYNA ELIA'),(548,'MENDOZA MACIAS ELBA'),(549,'MONTES CASIANO HERMES FRANCISCO'),(550,'MONTIEL SANCHEZ ANGEL SALVADOR'),(551,'MORALES CRUZ JUAN CARLOS'),(552,'MORENO ARMENDARIZ MARCO ANTONIO'),(553,'MORENO CERVANTES AXEL ERNESTO'),(554,'MORENO PEÑA VICTOR RAFAEL'),(555,'MOSCOSO MALAGON YOSAFAT'),(556,'MOSSO GARCIA M. EN C. IVAN GIOVANNY'),(557,'MUJICA ASCENCIO CESAR'),(558,'NAVA LARA JOEL'),(559,'OCOTITLA ROJAS NANCY'),(560,'ORTEGA GONZALEZ RUBEN'),(561,'ORTEGA PACHECO JOSE DAVID'),(562,'ORTIGOZA CAMPOS LIC. ANDRES'),(563,'ORTIZ RAMIREZ JOSE ANTONIO'),(564,'ORTUÑO ARAUJO JESUS'),(565,'PALACIOS SOLANO ROCIO'),(566,'PALMA OROZCO ROSAURA'),(567,'PASTRANA FERNANDEZ CARLOS JESUS'),(568,'PEREDO VALDERRAMA RUBEN'),(569,'PEREZ DE LOS SANTOS MONDRAGON TANIBET'),(570,'PEREZ PEREZ JOSE JUAN'),(571,'PEREZ VERA MONSERRAT GABRIELA'),(572,'PEREZ VERA SANDRA MERCEDES'),(573,'PESCADOR ROJAS MIRIAM'),(574,'PUEBLA LOMAS JAIME HUGO'),(575,'RAMIREZ ROMERO TONAHTIU ARTURO'),(576,'RAMIREZ TENORIO RAFAEL'),(577,'RANGEL GONZALEZ JOSUE'),(578,'RANGEL GUZMAN ALFREDO'),(579,'RESENDIZ MUÑOZ ROCIO'),(580,'RIOS DE LA TORRE IGNACIO'),(581,'RIVERA DE LA ROSA MONICA'),(582,'ROCHA BERNABE ROSARIO'),(583,'RODRIGUEZ FLORES EDUARDO'),(584,'RODRIGUEZ ORDAZ MARISOL'),(585,'RODRIGUEZ SARABIA TANIA'),(586,'ROJAS LUNA HECTOR'),(587,'ROMERO HERRERA RODOLFO'),(588,'ROSAS TRIGUEROS JORGE LUIS'),(589,'RUEDA MELENDEZ MARCO ANTONIO'),(590,'RUIZ LEDESMA ELENA FABIOLA'),(591,'SALAZAR RAMIREZ MANUEL'),(592,'SALINAS HERNANDEZ ENCARNACION'),(593,'SALINAS LUGO SERGIO'),(594,'SANCHEZ CRUZ VIRGINIA'),(595,'SANCHEZ GARCIA LUZ MARIA'),(596,'SANCHEZ GARFIAS Dr. FLAVIO ARTURO'),(597,'SANCHEZ JUAREZ JOSE'),(598,'SANCHEZ MORENO ADRIANA DE LA P'),(599,'SANCHEZ PALACIOS MARIA SUSANA'),(600,'SANCHEZ QUINTANILLA GILBERTO'),(601,'SANCHEZ VARGAS PERLA REBECA'),(602,'SANTILLAN LUNA RAUL'),(603,'SAUCEDO DELGADO RAFAEL NORMAN'),(604,'SERRANO TALAMANTES J. FELIX'),(605,'SILVA GARCIA VICTOR MANUEL'),(606,'SILVA MARTINEZ JORGE JAVIER'),(607,'SOLORZA GUZMAN MISAEL'),(608,'SOTO RAMOS MANUEL ALEJANDRO'),(609,'SUAREZ CASTAÑON MIGUEL SANTIAG'),(610,'TECLA PARRA ROBERTO'),(611,'TELLEZ BARRERA JUAN CARLOS'),(612,'TELLEZ REYES MARIA DEL SOCORRO'),(613,'TIRADO LULE JUDITH MARGARITA'),(614,'TORRES GONZALEZ ENRIQUE'),(615,'TORRES MANRIQUEZ JUAN JOSE'),(616,'VAZQUEZ ARREGUIN ROBERTO'),(617,'VAZQUEZ ORTIZ MIJAIL'),(618,'VEGA GARCIA NAYELI'),(619,'VELEZ SALDAÑA ULISES'),(620,'VILLEGAS NAVARRETE SONIA'),(621,'VIVEROS VELA KARINA'),(622,'WINFIELD REYES ANA MARIA'),(623,'YLLANES MEJIA BERNARDO');
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salon`
--

DROP TABLE IF EXISTS `salon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salon` (
  `idSalon` int(11) NOT NULL AUTO_INCREMENT,
  `Salon` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSalon`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salon`
--

LOCK TABLES `salon` WRITE;
/*!40000 ALTER TABLE `salon` DISABLE KEYS */;
INSERT INTO `salon` VALUES (102,0),(103,1011),(104,1012),(105,1013),(106,1014),(107,1110),(108,1111),(109,1112),(110,1113),(111,1202),(112,1203),(113,1204),(114,1205),(115,1206),(116,1207),(117,1209),(118,1210),(119,1211),(120,1212),(121,1213),(122,1214),(123,2004),(124,2005),(125,2006),(126,2007),(127,2110),(128,2202),(129,2203),(130,2204),(131,2205),(132,2206),(133,2207),(134,2209),(135,2210),(136,2211),(137,2212),(138,2213);
/*!40000 ALTER TABLE `salon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-22 16:02:40

DROP PROCEDURE IF EXISTS `Consulta_Profesor`;

delimiter #
create procedure `Consulta_Profesor`(in n varchar(80))
	begin 
	select g.nombre,m.nombre,h.lunes,h.MARTES,h.MIERCOLES,h.JUEVES,h.VIERNES,h.SABADO from grupo g,materia m, profesor p,Asignacion a,horario h
	where m.idMateria=a.idMateria
	and p.idProfesor=a.idProfesor
	and h.idHorario=a.idHorario
	and g.idGrupo=a.idGrupo
	and p.nombre like concat(n,"%");
	end #
delimiter ;
DROP PROCEDURE IF EXISTS `Consulta_Grupo`;
delimiter #
create procedure `Consulta_Grupo`(in g varchar(20))
	begin
	select m.nombre,h.lunes,h.MARTES,h.MIERCOLES,h.JUEVES,h.VIERNES,h.SABADO
	from materia m, Asignacion a,horario h,grupo g
	where m.idMateria=a.idMateria
	and h.idHorario=a.idHorario
	and g.idGrupo=a.idGrupo
	and g.nombre like concat(g,"%");
	end #
delimiter ;