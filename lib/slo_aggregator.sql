-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: slo_aggregator
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `dataSourceState`
--

DROP TABLE IF EXISTS `dataSourceState`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dataSourceState` (
  `localkey` int NOT NULL AUTO_INCREMENT,
  `stateTimestamp` datetime DEFAULT NULL,
  `odnSet` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`localkey`)
) ENGINE=InnoDB AUTO_INCREMENT=4373 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `metadataSchemaVersions`
--

DROP TABLE IF EXISTS `metadataSchemaVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metadataSchemaVersions` (
  `localkey` int NOT NULL AUTO_INCREMENT,
  `shortDesignation` varchar(48) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `versionNumber` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `versionXsdLink` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`localkey`)
) ENGINE=InnoDB AUTO_INCREMENT=637 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `metadataSchemas`
--

DROP TABLE IF EXISTS `metadataSchemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metadataSchemas` (
  `localkey` int NOT NULL AUTO_INCREMENT,
  `shortDesignation` varchar(2048) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `namespace` varchar(2048) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bOAIAvailable` varchar(24) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `designation` varchar(48) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(48) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`localkey`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `metadataTransformation`
--

DROP TABLE IF EXISTS `metadataTransformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metadataTransformation` (
  `localkey` int NOT NULL AUTO_INCREMENT,
  `editable` varchar(48) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `version` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `odnSet` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(48) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sourceFormat` varchar(2048) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `destinationFormat` varchar(2048) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stylesheet` varchar(4096) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sourceSchema` varchar(2048) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `destSchema` varchar(2048) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `destNamespace` varchar(2048) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`localkey`)
) ENGINE=InnoDB AUTO_INCREMENT=5088 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oldTasks`
--

DROP TABLE IF EXISTS `oldTasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oldTasks` (
  `localkey` int NOT NULL AUTO_INCREMENT,
  `id` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `oldTaskTime` datetime DEFAULT NULL,
  `odnSet` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `logName` varchar(512) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ingestType` varchar(48) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(512) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `records` int DEFAULT NULL,
  `retries` int DEFAULT NULL,
  `retriesMax` int DEFAULT NULL,
  `retriesDelay` int DEFAULT NULL,
  PRIMARY KEY (`localkey`)
) ENGINE=InnoDB AUTO_INCREMENT=18069 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider` (
  `localkey` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(2048) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `odnSet` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`localkey`)
) ENGINE=InnoDB AUTO_INCREMENT=519 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `providerContact`
--

DROP TABLE IF EXISTS `providerContact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `providerContact` (
  `localkey` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `source` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(2048) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`localkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recordcount`
--

DROP TABLE IF EXISTS `recordcount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recordcount` (
  `localkey` int NOT NULL AUTO_INCREMENT,
  `odnSet` varchar(48) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `recordCount` int DEFAULT NULL,
  `lastLineCounted` int DEFAULT NULL,
  `deletedRecords` int DEFAULT NULL,
  `lastCountDate` datetime DEFAULT NULL,
  `lastCountWithChangesDate` datetime DEFAULT NULL,
  PRIMARY KEY (`localkey`)
) ENGINE=InnoDB AUTO_INCREMENT=4283 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `scheduledTasks`
--

DROP TABLE IF EXISTS `scheduledTasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduledTasks` (
  `localkey` int NOT NULL AUTO_INCREMENT,
  `id` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `scheduledTaskTime` datetime DEFAULT NULL,
  `frequencyType` varchar(16) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parameters` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`localkey`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `source`
--

DROP TABLE IF EXISTS `source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `source` (
  `localkey` int NOT NULL AUTO_INCREMENT,
  `providerName` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sourceSchema` varchar(2048) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastIngest` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(2048) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `typeOfSource` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `oaiSource` varchar(512) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `oaiSet` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `metadataPrefix` varchar (30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `odnSet` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sourcesDirPath` varchar(1024) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `retrieveStrategy` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `splitRecordsRecordXPath` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`localkey`),
  UNIQUE (`odnSet`)
) ENGINE=InnoDB AUTO_INCREMENT=4398 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `username`
--

DROP TABLE IF EXISTS `username`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `username` (
  `localkey` int NOT NULL AUTO_INCREMENT,
  `username` varchar(16) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(16) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` varchar(16) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`localkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `setRights`
--

DROP TABLE IF EXISTS `setRights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setRights` (
  `localkey` int NOT NULL AUTO_INCREMENT,
  `odnSet` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `uri` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`localkey`)
) ENGINE=InnoDB AUTO_INCREMENT=4373 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-15  0:13:43
