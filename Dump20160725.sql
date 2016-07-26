CREATE DATABASE  IF NOT EXISTS `seu-engenheiro_development` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `seu-engenheiro_development`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: seu-engenheiro_development
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `anexo_relatorios_colaborador`
--

DROP TABLE IF EXISTS `anexo_relatorios_colaborador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anexo_relatorios_colaborador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  `relatorio_colaborador_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_anexo_relatorios_colaborador_on_relatorio_colaborador_id` (`relatorio_colaborador_id`),
  CONSTRAINT `fk_rails_439b547c1a` FOREIGN KEY (`relatorio_colaborador_id`) REFERENCES `relatorios_colaborador` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anexo_relatorios_colaborador`
--

LOCK TABLES `anexo_relatorios_colaborador` WRITE;
/*!40000 ALTER TABLE `anexo_relatorios_colaborador` DISABLE KEYS */;
/*!40000 ALTER TABLE `anexo_relatorios_colaborador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2016-07-04 23:06:43','2016-07-04 23:06:43');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidades`
--

DROP TABLE IF EXISTS `cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado_id` int(11) DEFAULT NULL,
  `tipo_localidade` varchar(255) DEFAULT NULL,
  `municipio` varchar(255) DEFAULT NULL,
  `localidade` varchar(255) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rails_d51899ba78` (`estado_id`),
  CONSTRAINT `fk_rails_d51899ba78` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidades`
--

LOCK TABLES `cidades` WRITE;
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
INSERT INTO `cidades` VALUES (1,1,NULL,'Ilhéus','Ilhéus','IOS','2016-07-05 01:44:10','2016-07-05 01:44:10');
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaboradores`
--

DROP TABLE IF EXISTS `colaboradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colaboradores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pessoa_id` int(11) DEFAULT NULL,
  `tipo_colaborador_id` int(11) DEFAULT NULL,
  `habilitado` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradores`
--

LOCK TABLES `colaboradores` WRITE;
/*!40000 ALTER TABLE `colaboradores` DISABLE KEYS */;
INSERT INTO `colaboradores` VALUES (1,3,1,0,'2016-07-06 14:36:59','2016-07-06 14:36:59');
/*!40000 ALTER TABLE `colaboradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaboradores_grupos_demandas`
--

DROP TABLE IF EXISTS `colaboradores_grupos_demandas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colaboradores_grupos_demandas` (
  `grupo_demandas_id` int(11) NOT NULL,
  `colaborador_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradores_grupos_demandas`
--

LOCK TABLES `colaboradores_grupos_demandas` WRITE;
/*!40000 ALTER TABLE `colaboradores_grupos_demandas` DISABLE KEYS */;
INSERT INTO `colaboradores_grupos_demandas` VALUES (1,1);
/*!40000 ALTER TABLE `colaboradores_grupos_demandas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demandas`
--

DROP TABLE IF EXISTS `demandas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demandas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pessoa_id` int(11) DEFAULT NULL,
  `endereco_id` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `data_fim` datetime DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `grupo_demandas_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rails_2fbc0ec8b2` (`pessoa_id`),
  KEY `fk_rails_ed8df0481a` (`endereco_id`),
  CONSTRAINT `fk_rails_2fbc0ec8b2` FOREIGN KEY (`pessoa_id`) REFERENCES `pessoas` (`id`),
  CONSTRAINT `fk_rails_ed8df0481a` FOREIGN KEY (`endereco_id`) REFERENCES `enderecos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demandas`
--

LOCK TABLES `demandas` WRITE;
/*!40000 ALTER TABLE `demandas` DISABLE KEYS */;
INSERT INTO `demandas` VALUES (1,2,3,1,NULL,'teste','2016-07-06 13:46:50','2016-07-13 00:35:02',1),(2,2,5,1,NULL,'Lol','2016-07-13 00:02:31','2016-07-13 00:35:02',1);
/*!40000 ALTER TABLE `demandas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enderecos`
--

DROP TABLE IF EXISTS `enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enderecos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cidade_id` int(11) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `tipo_localidade_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rails_56ba484db1` (`cidade_id`),
  CONSTRAINT `fk_rails_56ba484db1` FOREIGN KEY (`cidade_id`) REFERENCES `cidades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (1,1,NULL,NULL,'3','5',NULL,'2016-07-05 01:53:31','2016-07-05 01:53:31'),(2,1,'aaaa','a','a','a',NULL,'2016-07-05 02:09:11','2016-07-05 02:09:11'),(3,1,'9','Rua Teste','ali','45656530',NULL,'2016-07-06 13:46:50','2016-07-06 13:46:50'),(4,1,'1','Teste','Teste','Teste',NULL,'2016-07-06 14:36:59','2016-07-06 14:36:59'),(5,1,'123','1234','12343','1234',NULL,'2016-07-13 00:02:31','2016-07-13 00:02:31');
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) DEFAULT NULL,
  `sigla` varchar(2) DEFAULT NULL,
  `pais_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rails_04cf8c14b4` (`pais_id`),
  CONSTRAINT `fk_rails_04cf8c14b4` FOREIGN KEY (`pais_id`) REFERENCES `paises` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'Bahia','BA',1,'2016-07-05 01:44:10','2016-07-05 01:44:10');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
INSERT INTO `grupos` VALUES (1,'Administrador','admin','2016-07-20 19:18:49','2016-07-20 19:18:49'),(2,'Cliente','cliente','2016-07-20 19:21:22','2016-07-20 19:21:22'),(3,'Colaborador','colaborador','2016-07-20 19:22:34','2016-07-20 19:22:34');
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos_demandas`
--

DROP TABLE IF EXISTS `grupos_demandas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupos_demandas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos_demandas`
--

LOCK TABLES `grupos_demandas` WRITE;
/*!40000 ALTER TABLE `grupos_demandas` DISABLE KEYS */;
INSERT INTO `grupos_demandas` VALUES (1,1,'2016-07-13 00:22:36','2016-07-13 00:22:36');
/*!40000 ALTER TABLE `grupos_demandas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos_regras`
--

DROP TABLE IF EXISTS `grupos_regras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupos_regras` (
  `grupo_id` int(11) NOT NULL,
  `regra_id` int(11) NOT NULL,
  KEY `index_grupos_regras_on_grupo_id_and_regra_id` (`grupo_id`,`regra_id`),
  KEY `index_grupos_regras_on_regra_id_and_grupo_id` (`regra_id`,`grupo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos_regras`
--

LOCK TABLES `grupos_regras` WRITE;
/*!40000 ALTER TABLE `grupos_regras` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupos_regras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (1,'Brasil','2016-07-05 01:44:10','2016-07-05 01:44:10');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `rg` varchar(255) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `endereco_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rails_5ed4cd9168` (`endereco_id`),
  CONSTRAINT `fk_rails_5ed4cd9168` FOREIGN KEY (`endereco_id`) REFERENCES `enderecos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas`
--

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
INSERT INTO `pessoas` VALUES (1,'TEste','shshdosih','ahsoiauhsioah','1991-11-21','teste@teste.com','12345','12345',1,'2016-07-05 01:44:10','2016-07-05 01:53:31'),(2,'testando','1234','1234','1999-02-12','teste@teste.com','aa','aaaaaa',2,'2016-07-05 02:09:11','2016-07-05 02:09:11'),(3,'Teste','009-39','21-9129','1991-01-21','ppsdjsodjsodijs@gmail.com','2302309','2-3920',4,'2016-07-06 14:36:59','2016-07-06 14:36:59');
/*!40000 ALTER TABLE `pessoas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regras`
--

DROP TABLE IF EXISTS `regras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regras`
--

LOCK TABLES `regras` WRITE;
/*!40000 ALTER TABLE `regras` DISABLE KEYS */;
/*!40000 ALTER TABLE `regras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relatorios_colaborador`
--

DROP TABLE IF EXISTS `relatorios_colaborador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relatorios_colaborador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `demanda_id` int(11) DEFAULT NULL,
  `colaborador_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_relatorios_colaborador_on_demanda_id` (`demanda_id`),
  KEY `index_relatorios_colaborador_on_colaborador_id` (`colaborador_id`),
  CONSTRAINT `fk_rails_5ac3bb4f9b` FOREIGN KEY (`demanda_id`) REFERENCES `demandas` (`id`),
  CONSTRAINT `fk_rails_a7f801ef3a` FOREIGN KEY (`colaborador_id`) REFERENCES `colaboradores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relatorios_colaborador`
--

LOCK TABLES `relatorios_colaborador` WRITE;
/*!40000 ALTER TABLE `relatorios_colaborador` DISABLE KEYS */;
/*!40000 ALTER TABLE `relatorios_colaborador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20160704212320'),('20160704213514'),('20160704214513'),('20160704214647'),('20160704221050'),('20160704225100'),('20160704230716'),('20160704234316'),('20160706130004'),('20160706135525'),('20160706140515'),('20160706141029'),('20160712233241'),('20160714014901'),('20160714015941'),('20160720171303'),('20160720184848'),('20160720190055');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_colaborador`
--

DROP TABLE IF EXISTS `tipos_colaborador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_colaborador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_colaborador`
--

LOCK TABLES `tipos_colaborador` WRITE;
/*!40000 ALTER TABLE `tipos_colaborador` DISABLE KEYS */;
INSERT INTO `tipos_colaborador` VALUES (1,'Engenheiro','2016-07-06 14:29:29','2016-07-06 14:29:29'),(2,'Mestre de Obras','2016-07-06 14:30:17','2016-07-06 14:30:17');
/*!40000 ALTER TABLE `tipos_colaborador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pessoa_id` int(11) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rails_ca91aa5f28` (`pessoa_id`),
  CONSTRAINT `fk_rails_ca91aa5f28` FOREIGN KEY (`pessoa_id`) REFERENCES `pessoas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,1,'teste','$2a$10$MkrlXH9ys.6YBdEutlAvDOSbmozCAiX/w3jizJ2T1HSeAlgDPZIIO','2016-07-05 01:44:10','2016-07-05 01:44:10'),(2,2,'test','$2a$10$BXu2EQnUna19MjhNhEsz6evDsn7hq6lqG/6TDOrNS1YFXV/Yo7eui','2016-07-05 02:09:11','2016-07-05 02:09:11');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'seu-engenheiro_development'
--

--
-- Dumping routines for database 'seu-engenheiro_development'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-25 22:20:32
