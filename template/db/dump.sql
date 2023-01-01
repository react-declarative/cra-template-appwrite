-- MariaDB dump 10.19  Distrib 10.7.7-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	10.7.7-MariaDB-1:10.7.7+maria~ubu2004

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
-- Current Database: `appwrite`
--

/*!40000 DROP DATABASE IF EXISTS `appwrite`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `appwrite` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `appwrite`;

--
-- Table structure for table `_1__metadata`
--

DROP TABLE IF EXISTS `_1__metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1__metadata` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(512) DEFAULT NULL,
  `attributes` mediumtext DEFAULT NULL,
  `indexes` mediumtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1__metadata`
--

LOCK TABLES `_1__metadata` WRITE;
/*!40000 ALTER TABLE `_1__metadata` DISABLE KEYS */;
INSERT INTO `_1__metadata` VALUES
(1,'audit','2023-01-01 21:11:52.199','2023-01-01 21:11:52.199','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','audit','[{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"event\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"resource\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"userAgent\",\"type\":\"string\",\"size\":65534,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"ip\",\"type\":\"string\",\"size\":45,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"location\",\"type\":\"string\",\"size\":45,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"time\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"data\",\"type\":\"string\",\"size\":16777216,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"]}]','[{\"$id\":\"index2\",\"type\":\"key\",\"attributes\":[\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index4\",\"type\":\"key\",\"attributes\":[\"userId\",\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index5\",\"type\":\"key\",\"attributes\":[\"resource\",\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index-time\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]}]'),
(2,'abuse','2023-01-01 21:11:52.212','2023-01-01 21:11:52.212','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','abuse','[{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"time\",\"type\":\"datetime\",\"size\":0,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"count\",\"type\":\"integer\",\"size\":11,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[]}]','[{\"$id\":\"unique1\",\"type\":\"unique\",\"attributes\":[\"key\",\"time\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index2\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[]}]'),
(3,'databases','2023-01-01 21:11:52.233','2023-01-01 21:11:52.233','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','databases','[{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[256],\"orders\":[\"ASC\"]}]'),
(4,'attributes','2023-01-01 21:11:52.295','2023-01-01 21:11:52.295','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','attributes','[{\"$id\":\"databaseInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"databaseId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"collectionInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"collectionId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"size\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"required\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"default\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"casting\"],\"default\":null,\"format\":\"\"},{\"$id\":\"signed\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"array\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"format\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"formatOptions\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\",\"range\",\"enum\"],\"default\":{},\"format\":\"\"},{\"$id\":\"filters\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_db_collection\",\"type\":\"key\",\"attributes\":[\"databaseInternalId\",\"collectionInternalId\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]}]'),
(5,'indexes','2023-01-01 21:11:52.309','2023-01-01 21:11:52.309','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','indexes','[{\"$id\":\"databaseInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"databaseId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"collectionInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"collectionId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"attributes\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"lengths\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"orders\",\"type\":\"string\",\"size\":4,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_db_collection\",\"type\":\"key\",\"attributes\":[\"databaseInternalId\",\"collectionInternalId\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]}]'),
(6,'projects','2023-01-01 21:11:52.328','2023-01-01 21:11:52.328','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','projects','[{\"$id\":\"teamInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"teamId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"region\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"description\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"logo\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"url\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"version\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalCountry\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalState\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalCity\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalAddress\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalTaxId\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"services\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":[],\"format\":\"\"},{\"$id\":\"auths\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":[],\"format\":\"\"},{\"$id\":\"authProviders\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\",\"encrypt\"],\"default\":[],\"format\":\"\"},{\"$id\":\"platforms\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryPlatforms\"],\"default\":null,\"format\":\"\"},{\"$id\":\"webhooks\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryWebhooks\"],\"default\":null,\"format\":\"\"},{\"$id\":\"keys\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryKeys\"],\"default\":null,\"format\":\"\"},{\"$id\":\"domains\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryDomains\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_team\",\"type\":\"key\",\"attributes\":[\"teamId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(7,'platforms','2023-01-01 21:11:52.340','2023-01-01 21:11:52.340','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','platforms','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"store\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"hostname\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(8,'domains','2023-01-01 21:11:52.367','2023-01-01 21:11:52.367','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','domains','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"updated\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"domain\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"tld\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"registerable\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"verification\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"certificateId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(9,'keys','2023-01-01 21:11:52.381','2023-01-01 21:11:52.381','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','keys','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":0,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"scopes\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":512,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"expire\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"accessedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"sdks\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_accessedAt\",\"type\":\"key\",\"attributes\":[\"accessedAt\"],\"lengths\":[],\"orders\":[]}]'),
(10,'webhooks','2023-01-01 21:11:52.393','2023-01-01 21:11:52.393','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','webhooks','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"url\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"httpUser\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"httpPass\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"security\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"events\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"signatureKey\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(11,'users','2023-01-01 21:11:52.421','2023-01-01 21:11:52.421','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','users','[{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"email\",\"type\":\"string\",\"size\":320,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"phone\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"password\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"hash\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"argon2\",\"format\":\"\"},{\"$id\":\"hashOptions\",\"type\":\"string\",\"size\":65535,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":{\"type\":\"argon2\",\"memoryCost\":2048,\"timeCost\":4,\"threads\":3},\"format\":\"\"},{\"$id\":\"passwordUpdate\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"prefs\",\"type\":\"string\",\"size\":65535,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":{},\"format\":\"\"},{\"$id\":\"registration\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"emailVerification\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"phoneVerification\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"reset\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"sessions\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQuerySessions\"],\"default\":null,\"format\":\"\"},{\"$id\":\"tokens\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryTokens\"],\"default\":null,\"format\":\"\"},{\"$id\":\"memberships\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryMemberships\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[256],\"orders\":[\"ASC\"]},{\"$id\":\"_key_email\",\"type\":\"unique\",\"attributes\":[\"email\"],\"lengths\":[320],\"orders\":[\"ASC\"]},{\"$id\":\"_key_phone\",\"type\":\"unique\",\"attributes\":[\"phone\"],\"lengths\":[16],\"orders\":[\"ASC\"]},{\"$id\":\"_key_status\",\"type\":\"key\",\"attributes\":[\"status\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_passwordUpdate\",\"type\":\"key\",\"attributes\":[\"passwordUpdate\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_registration\",\"type\":\"key\",\"attributes\":[\"registration\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_emailVerification\",\"type\":\"key\",\"attributes\":[\"emailVerification\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_phoneVerification\",\"type\":\"key\",\"attributes\":[\"phoneVerification\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]}]'),
(12,'tokens','2023-01-01 21:11:52.456','2023-01-01 21:11:52.456','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','tokens','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"integer\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":512,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"expire\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"userAgent\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"ip\",\"type\":\"string\",\"size\":45,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(13,'sessions','2023-01-01 21:11:52.480','2023-01-01 21:11:52.480','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','sessions','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"provider\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerUid\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerAccessToken\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"providerAccessTokenExpiry\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"providerRefreshToken\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":512,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"userAgent\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"ip\",\"type\":\"string\",\"size\":45,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"countryCode\",\"type\":\"string\",\"size\":2,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"osCode\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"osName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"osVersion\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientType\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientCode\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientVersion\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientEngine\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientEngineVersion\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deviceName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deviceBrand\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deviceModel\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_provider_providerUid\",\"type\":\"key\",\"attributes\":[\"provider\",\"providerUid\"],\"lengths\":[100,100],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(14,'teams','2023-01-01 21:11:52.500','2023-01-01 21:11:52.500','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','teams','[{\"$id\":\"name\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"total\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_total\",\"type\":\"key\",\"attributes\":[\"total\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(15,'memberships','2023-01-01 21:11:52.524','2023-01-01 21:11:52.524','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','memberships','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"teamInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"teamId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"roles\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"invited\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"joined\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"confirm\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_unique\",\"type\":\"unique\",\"attributes\":[\"teamInternalId\",\"userInternalId\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_team\",\"type\":\"key\",\"attributes\":[\"teamInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_userId\",\"type\":\"key\",\"attributes\":[\"userId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_teamId\",\"type\":\"key\",\"attributes\":[\"teamId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_invited\",\"type\":\"key\",\"attributes\":[\"invited\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_joined\",\"type\":\"key\",\"attributes\":[\"joined\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_confirm\",\"type\":\"key\",\"attributes\":[\"confirm\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(16,'functions','2023-01-01 21:11:52.562','2023-01-01 21:11:52.562','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','functions','[{\"$id\":\"execute\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"enabled\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"runtime\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deployment\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"vars\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryVariables\"],\"default\":null,\"format\":\"\"},{\"$id\":\"events\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"schedule\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"scheduleUpdatedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"schedulePrevious\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"scheduleNext\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"timeout\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[768],\"orders\":[\"ASC\"]},{\"$id\":\"_key_enabled\",\"type\":\"key\",\"attributes\":[\"enabled\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_runtime\",\"type\":\"key\",\"attributes\":[\"runtime\"],\"lengths\":[768],\"orders\":[\"ASC\"]},{\"$id\":\"_key_deployment\",\"type\":\"key\",\"attributes\":[\"deployment\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_schedule\",\"type\":\"key\",\"attributes\":[\"schedule\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_scheduleNext\",\"type\":\"key\",\"attributes\":[\"scheduleNext\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_schedulePrevious\",\"type\":\"key\",\"attributes\":[\"schedulePrevious\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_timeout\",\"type\":\"key\",\"attributes\":[\"timeout\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(17,'deployments','2023-01-01 21:11:52.593','2023-01-01 21:11:52.593','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','deployments','[{\"$id\":\"resourceId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"resourceType\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"buildId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"entrypoint\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"path\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"size\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"metadata\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksTotal\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksUploaded\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"activate\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":false,\"format\":\"\"}]','[{\"$id\":\"_key_resource\",\"type\":\"key\",\"attributes\":[\"resourceId\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_resource_type\",\"type\":\"key\",\"attributes\":[\"resourceType\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_entrypoint\",\"type\":\"key\",\"attributes\":[\"entrypoint\"],\"lengths\":[768],\"orders\":[\"ASC\"]},{\"$id\":\"_key_size\",\"type\":\"key\",\"attributes\":[\"size\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_buildId\",\"type\":\"key\",\"attributes\":[\"buildId\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_activate\",\"type\":\"key\",\"attributes\":[\"activate\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(18,'builds','2023-01-01 21:11:52.607','2023-01-01 21:11:52.607','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','builds','[{\"$id\":\"startTime\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"endTime\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"duration\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deploymentId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"runtime\",\"type\":\"string\",\"size\":2048,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"processing\",\"format\":\"\"},{\"$id\":\"outputPath\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"stderr\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"stdout\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"sourceType\",\"type\":\"string\",\"size\":2048,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"local\",\"format\":\"\"},{\"$id\":\"source\",\"type\":\"string\",\"size\":2048,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"}]','[{\"$id\":\"_key_deployment\",\"type\":\"key\",\"attributes\":[\"deploymentId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(19,'executions','2023-01-01 21:11:52.628','2023-01-01 21:11:52.628','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','executions','[{\"$id\":\"functionId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deploymentId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"trigger\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"response\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"stderr\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"stdout\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"statusCode\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"duration\",\"type\":\"double\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_function\",\"type\":\"key\",\"attributes\":[\"functionId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_trigger\",\"type\":\"key\",\"attributes\":[\"trigger\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_status\",\"type\":\"key\",\"attributes\":[\"status\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_statusCode\",\"type\":\"key\",\"attributes\":[\"statusCode\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_duration\",\"type\":\"key\",\"attributes\":[\"duration\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(20,'certificates','2023-01-01 21:11:52.681','2023-01-01 21:11:52.681','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','certificates','[{\"$id\":\"domain\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"issueDate\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"renewDate\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"attempts\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"log\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"updated\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_domain\",\"type\":\"key\",\"attributes\":[\"domain\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(21,'buckets','2023-01-01 21:11:52.712','2023-01-01 21:11:52.712','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','buckets','[{\"$id\":\"enabled\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":128,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"fileSecurity\",\"type\":\"boolean\",\"size\":1,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"maximumFileSize\",\"type\":\"integer\",\"size\":8,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"allowedFileExtensions\",\"type\":\"string\",\"size\":64,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"compression\",\"type\":\"string\",\"size\":10,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"encryption\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"antivirus\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_fulltext_name\",\"type\":\"fulltext\",\"attributes\":[\"name\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_enabled\",\"type\":\"key\",\"attributes\":[\"enabled\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_fileSecurity\",\"type\":\"key\",\"attributes\":[\"fileSecurity\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_maximumFileSize\",\"type\":\"key\",\"attributes\":[\"maximumFileSize\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_encryption\",\"type\":\"key\",\"attributes\":[\"encryption\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_antivirus\",\"type\":\"key\",\"attributes\":[\"antivirus\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(22,'stats','2023-01-01 21:11:52.728','2023-01-01 21:11:52.728','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','stats','[{\"$id\":\"metric\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"region\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"value\",\"type\":\"integer\",\"size\":8,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"time\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"period\",\"type\":\"string\",\"size\":4,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"integer\",\"size\":1,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":0,\"format\":\"\"}]','[{\"$id\":\"_key_time\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]},{\"$id\":\"_key_period_time\",\"type\":\"key\",\"attributes\":[\"period\",\"time\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_metric_period_time\",\"type\":\"key\",\"attributes\":[\"metric\",\"period\",\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]}]'),
(23,'realtime','2023-01-01 21:11:52.745','2023-01-01 21:11:52.745','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','realtime','[{\"$id\":\"container\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"timestamp\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"value\",\"type\":\"string\",\"size\":16384,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_timestamp\",\"type\":\"key\",\"attributes\":[\"timestamp\"],\"lengths\":[],\"orders\":[\"DESC\"]}]'),
(24,'cache','2023-01-01 21:11:52.771','2023-01-01 21:11:52.771','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','cache','[{\"$id\":\"resource\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"accessedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"signature\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_accessedAt\",\"type\":\"key\",\"attributes\":[\"accessedAt\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_resource\",\"type\":\"key\",\"attributes\":[\"resource\"],\"lengths\":[],\"orders\":[]}]'),
(25,'variables','2023-01-01 21:11:52.876','2023-01-01 21:11:52.876','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','variables','[{\"$id\":\"functionInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"functionId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"value\",\"type\":\"string\",\"size\":8192,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_function\",\"type\":\"key\",\"attributes\":[\"functionInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_uniqueKey\",\"type\":\"unique\",\"attributes\":[\"functionInternalId\",\"key\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_key\",\"type\":\"key\",\"attributes\":[\"key\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]}]'),
(26,'database_1','2023-01-01 21:12:26.406','2023-01-01 21:12:26.406','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','database_1','[{\"$id\":\"databaseInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"databaseId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"enabled\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"documentSecurity\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"attributes\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryAttributes\"],\"default\":null,\"format\":\"\"},{\"$id\":\"indexes\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryIndexes\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[256],\"orders\":[\"ASC\"]},{\"$id\":\"_key_enabled\",\"type\":\"key\",\"attributes\":[\"enabled\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_documentSecurity\",\"type\":\"key\",\"attributes\":[\"documentSecurity\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(27,'database_1_collection_1','2023-01-01 21:12:33.664','2023-01-01 21:16:21.518','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','database_1_collection_1','[{\"$id\":\"userId\",\"key\":\"userId\",\"type\":\"string\",\"size\":50,\"required\":true,\"default\":null,\"signed\":true,\"array\":false,\"format\":\"\",\"formatOptions\":[],\"filters\":[]},{\"$id\":\"title\",\"key\":\"title\",\"type\":\"string\",\"size\":250,\"required\":true,\"default\":null,\"signed\":true,\"array\":false,\"format\":\"\",\"formatOptions\":[],\"filters\":[]},{\"$id\":\"completed\",\"key\":\"completed\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"default\":null,\"signed\":true,\"array\":false,\"format\":\"\",\"formatOptions\":[],\"filters\":[]}]','[{\"$id\":\"userId\",\"key\":\"userId\",\"type\":\"key\",\"attributes\":[\"userId\"],\"lengths\":[50],\"orders\":[\"ASC\"]}]');
/*!40000 ALTER TABLE `_1__metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1__metadata_perms`
--

DROP TABLE IF EXISTS `_1__metadata_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1__metadata_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1__metadata_perms`
--

LOCK TABLES `_1__metadata_perms` WRITE;
/*!40000 ALTER TABLE `_1__metadata_perms` DISABLE KEYS */;
INSERT INTO `_1__metadata_perms` VALUES
(5,'create','any','abuse'),
(8,'delete','any','abuse'),
(6,'read','any','abuse'),
(7,'update','any','abuse'),
(13,'create','any','attributes'),
(16,'delete','any','attributes'),
(14,'read','any','attributes'),
(15,'update','any','attributes'),
(1,'create','any','audit'),
(4,'delete','any','audit'),
(2,'read','any','audit'),
(3,'update','any','audit'),
(81,'create','any','buckets'),
(84,'delete','any','buckets'),
(82,'read','any','buckets'),
(83,'update','any','buckets'),
(69,'create','any','builds'),
(72,'delete','any','builds'),
(70,'read','any','builds'),
(71,'update','any','builds'),
(93,'create','any','cache'),
(96,'delete','any','cache'),
(94,'read','any','cache'),
(95,'update','any','cache'),
(77,'create','any','certificates'),
(80,'delete','any','certificates'),
(78,'read','any','certificates'),
(79,'update','any','certificates'),
(9,'create','any','databases'),
(12,'delete','any','databases'),
(10,'read','any','databases'),
(11,'update','any','databases'),
(101,'create','any','database_1'),
(104,'delete','any','database_1'),
(102,'read','any','database_1'),
(103,'update','any','database_1'),
(105,'create','any','database_1_collection_1'),
(108,'delete','any','database_1_collection_1'),
(106,'read','any','database_1_collection_1'),
(107,'update','any','database_1_collection_1'),
(65,'create','any','deployments'),
(68,'delete','any','deployments'),
(66,'read','any','deployments'),
(67,'update','any','deployments'),
(29,'create','any','domains'),
(32,'delete','any','domains'),
(30,'read','any','domains'),
(31,'update','any','domains'),
(73,'create','any','executions'),
(76,'delete','any','executions'),
(74,'read','any','executions'),
(75,'update','any','executions'),
(61,'create','any','functions'),
(64,'delete','any','functions'),
(62,'read','any','functions'),
(63,'update','any','functions'),
(17,'create','any','indexes'),
(20,'delete','any','indexes'),
(18,'read','any','indexes'),
(19,'update','any','indexes'),
(33,'create','any','keys'),
(36,'delete','any','keys'),
(34,'read','any','keys'),
(35,'update','any','keys'),
(57,'create','any','memberships'),
(60,'delete','any','memberships'),
(58,'read','any','memberships'),
(59,'update','any','memberships'),
(25,'create','any','platforms'),
(28,'delete','any','platforms'),
(26,'read','any','platforms'),
(27,'update','any','platforms'),
(21,'create','any','projects'),
(24,'delete','any','projects'),
(22,'read','any','projects'),
(23,'update','any','projects'),
(89,'create','any','realtime'),
(92,'delete','any','realtime'),
(90,'read','any','realtime'),
(91,'update','any','realtime'),
(49,'create','any','sessions'),
(52,'delete','any','sessions'),
(50,'read','any','sessions'),
(51,'update','any','sessions'),
(85,'create','any','stats'),
(88,'delete','any','stats'),
(86,'read','any','stats'),
(87,'update','any','stats'),
(53,'create','any','teams'),
(56,'delete','any','teams'),
(54,'read','any','teams'),
(55,'update','any','teams'),
(45,'create','any','tokens'),
(48,'delete','any','tokens'),
(46,'read','any','tokens'),
(47,'update','any','tokens'),
(41,'create','any','users'),
(44,'delete','any','users'),
(42,'read','any','users'),
(43,'update','any','users'),
(97,'create','any','variables'),
(100,'delete','any','variables'),
(98,'read','any','variables'),
(99,'update','any','variables'),
(37,'create','any','webhooks'),
(40,'delete','any','webhooks'),
(38,'read','any','webhooks'),
(39,'update','any','webhooks');
/*!40000 ALTER TABLE `_1__metadata_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_abuse`
--

DROP TABLE IF EXISTS `_1_abuse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_abuse` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `count` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `unique1` (`key`,`time`),
  KEY `index2` (`time`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_abuse`
--

LOCK TABLES `_1_abuse` WRITE;
/*!40000 ALTER TABLE `_1_abuse` DISABLE KEYS */;
INSERT INTO `_1_abuse` VALUES
(1,'63b1f904331fc17f797e','2023-01-01 21:20:04.209','2023-01-01 21:20:04.209','[]','url:8080-appwrite-integrationfor-7cc0ys19d0b.ws-eu80.gitpod.io/v1/account/sessions/email,email:user@noemail.com','2023-01-01 21:00:00.000',1),
(2,'63b1f90889ed7d1e8df8','2023-01-01 21:20:08.564','2023-01-01 21:20:08.564','[]','ip:192.168.159.7,method:POST,url:8080-appwrite-integrationfor-7cc0ys19d0b.ws-eu80.gitpod.io/v1/databases/:databaseId/collections/:collectionId/documents,userId:63b1f8534a7bdc74bf70','2023-01-01 21:20:00.000',1),
(3,'63b1f90d96ef98f78534','2023-01-01 21:20:13.618','2023-01-01 21:20:13.618','[]','ip:192.168.194.8,method:POST,url:8080-appwrite-integrationfor-7cc0ys19d0b.ws-eu80.gitpod.io/v1/databases/:databaseId/collections/:collectionId/documents,userId:63b1f8534a7bdc74bf70','2023-01-01 21:20:00.000',1),
(4,'63b1f910a8469fd379a5','2023-01-01 21:20:16.689','2023-01-01 21:20:16.689','[]','ip:192.168.94.8,method:POST,url:8080-appwrite-integrationfor-7cc0ys19d0b.ws-eu80.gitpod.io/v1/databases/:databaseId/collections/:collectionId/documents,userId:63b1f8534a7bdc74bf70','2023-01-01 21:20:00.000',1),
(5,'63b1f9145ae1c635d15c','2023-01-01 21:20:20.372','2023-01-01 21:20:20.372','[]','ip:192.168.159.7,method:PATCH,url:8080-appwrite-integrationfor-7cc0ys19d0b.ws-eu80.gitpod.io/v1/databases/:databaseId/collections/:collectionId/documents/:documentId,userId:63b1f8534a7bdc74bf70','2023-01-01 21:20:00.000',1);
/*!40000 ALTER TABLE `_1_abuse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_abuse_perms`
--

DROP TABLE IF EXISTS `_1_abuse_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_abuse_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_abuse_perms`
--

LOCK TABLES `_1_abuse_perms` WRITE;
/*!40000 ALTER TABLE `_1_abuse_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_abuse_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_attributes`
--

DROP TABLE IF EXISTS `_1_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_attributes` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `databaseInternalId` varchar(255) DEFAULT NULL,
  `databaseId` varchar(255) DEFAULT NULL,
  `collectionInternalId` varchar(255) DEFAULT NULL,
  `collectionId` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `type` varchar(256) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `default` text DEFAULT NULL,
  `signed` tinyint(1) DEFAULT NULL,
  `array` tinyint(1) DEFAULT NULL,
  `format` varchar(64) DEFAULT NULL,
  `formatOptions` text DEFAULT NULL,
  `filters` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_db_collection` (`databaseInternalId`,`collectionInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_attributes`
--

LOCK TABLES `_1_attributes` WRITE;
/*!40000 ALTER TABLE `_1_attributes` DISABLE KEYS */;
INSERT INTO `_1_attributes` VALUES
(1,'1_1_userId','2023-01-01 21:15:31.465','2023-01-01 21:15:31.562','[]','1','63b1f73a5da8233847c0','1','63b1f7419bd5a1eae520','userId','string','available',50,1,NULL,1,0,'','[]','[]'),
(2,'1_1_title','2023-01-01 21:15:44.384','2023-01-01 21:15:44.432','[]','1','63b1f73a5da8233847c0','1','63b1f7419bd5a1eae520','title','string','available',250,1,NULL,1,0,'','[]','[]'),
(3,'1_1_completed','2023-01-01 21:16:05.562','2023-01-01 21:16:05.637','[]','1','63b1f73a5da8233847c0','1','63b1f7419bd5a1eae520','completed','boolean','available',0,1,NULL,1,0,'','[]','[]');
/*!40000 ALTER TABLE `_1_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_attributes_perms`
--

DROP TABLE IF EXISTS `_1_attributes_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_attributes_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_attributes_perms`
--

LOCK TABLES `_1_attributes_perms` WRITE;
/*!40000 ALTER TABLE `_1_attributes_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_attributes_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_audit`
--

DROP TABLE IF EXISTS `_1_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_audit` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `index2` (`event`),
  KEY `index4` (`userId`,`event`),
  KEY `index5` (`resource`,`event`),
  KEY `index-time` (`time`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_audit`
--

LOCK TABLES `_1_audit` WRITE;
/*!40000 ALTER TABLE `_1_audit` DISABLE KEYS */;
INSERT INTO `_1_audit` VALUES
(1,'63b1f73ad92cbda2ecf1','2023-01-01 21:12:26.889','2023-01-01 21:12:26.889','[]','63b1f70864242b93c492','database.create','database/63b1f73a5da8233847c0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36','192.168.94.8','','2023-01-01 21:12:26.888','{\"userName\":\"admin\",\"userEmail\":\"admin@noemail.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"63b1f73a5da8233847c0\",\"name\":\"TodoDb\",\"$createdAt\":\"2023-01-01T21:12:26.383+00:00\",\"$updatedAt\":\"2023-01-01T21:12:26.383+00:00\"}}'),
(2,'63b1f741db81ea2eef7b','2023-01-01 21:12:33.899','2023-01-01 21:12:33.899','[]','63b1f70864242b93c492','collection.create','database/63b1f73a5da8233847c0/collection/63b1f7419bd5a1eae520','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36','192.168.94.8','','2023-01-01 21:12:33.898','{\"userName\":\"admin\",\"userEmail\":\"admin@noemail.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"63b1f7419bd5a1eae520\",\"$createdAt\":\"2023-01-01T21:12:33.638+00:00\",\"$updatedAt\":\"2023-01-01T21:12:33.638+00:00\",\"$permissions\":[],\"databaseId\":\"63b1f73a5da8233847c0\",\"name\":\"Todos\",\"enabled\":true,\"documentSecurity\":false,\"attributes\":[],\"indexes\":[]}}'),
(3,'63b1f7f4028b69563e67','2023-01-01 21:15:32.010','2023-01-01 21:15:32.010','[]','63b1f70864242b93c492','attribute.create','database/63b1f73a5da8233847c0/collection/63b1f7419bd5a1eae520','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36','192.168.94.8','','2023-01-01 21:15:32.010','{\"userName\":\"admin\",\"userEmail\":\"admin@noemail.com\",\"mode\":\"admin\",\"data\":{\"key\":\"userId\",\"type\":\"string\",\"status\":\"processing\",\"required\":true,\"array\":false,\"size\":50,\"default\":null}}'),
(4,'63b1f80105105a3ea3a8','2023-01-01 21:15:45.020','2023-01-01 21:15:45.020','[]','63b1f70864242b93c492','attribute.create','database/63b1f73a5da8233847c0/collection/63b1f7419bd5a1eae520','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36','192.168.94.8','','2023-01-01 21:15:45.020','{\"userName\":\"admin\",\"userEmail\":\"admin@noemail.com\",\"mode\":\"admin\",\"data\":{\"key\":\"title\",\"type\":\"string\",\"status\":\"processing\",\"required\":true,\"array\":false,\"size\":250,\"default\":null}}'),
(5,'63b1f816086b4efc9964','2023-01-01 21:16:06.034','2023-01-01 21:16:06.034','[]','63b1f70864242b93c492','attribute.create','database/63b1f73a5da8233847c0/collection/63b1f7419bd5a1eae520','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36','192.168.94.8','','2023-01-01 21:16:06.034','{\"userName\":\"admin\",\"userEmail\":\"admin@noemail.com\",\"mode\":\"admin\",\"data\":{\"key\":\"completed\",\"type\":\"boolean\",\"status\":\"processing\",\"required\":true,\"array\":false,\"default\":null}}'),
(6,'63b1f8260bf296180480','2023-01-01 21:16:22.048','2023-01-01 21:16:22.048','[]','63b1f70864242b93c492','index.create','database/63b1f73a5da8233847c0/collection/63b1f7419bd5a1eae520','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36','192.168.94.8','','2023-01-01 21:16:22.048','{\"userName\":\"admin\",\"userEmail\":\"admin@noemail.com\",\"mode\":\"admin\",\"data\":{\"key\":\"userId\",\"type\":\"key\",\"status\":\"processing\",\"attributes\":[\"userId\"],\"orders\":[\"ASC\"]}}'),
(7,'63b1f83e0f970d3c184b','2023-01-01 21:16:46.063','2023-01-01 21:16:46.063','[]','63b1f70864242b93c492','collection.update','database/63b1f73a5da8233847c0/collection/63b1f7419bd5a1eae520','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36','192.168.94.8','','2023-01-01 21:16:46.063','{\"userName\":\"admin\",\"userEmail\":\"admin@noemail.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"63b1f7419bd5a1eae520\",\"$createdAt\":\"2023-01-01T21:12:33.638+00:00\",\"$updatedAt\":\"2023-01-01T21:16:45.308+00:00\",\"$permissions\":[\"create(\\\"any\\\")\",\"read(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"],\"databaseId\":\"63b1f73a5da8233847c0\",\"name\":\"Todos\",\"enabled\":true,\"documentSecurity\":false,\"attributes\":[{\"key\":\"userId\",\"type\":\"string\",\"status\":\"available\",\"required\":true,\"array\":false,\"size\":50,\"default\":null},{\"key\":\"title\",\"type\":\"string\",\"status\":\"available\",\"required\":true,\"array\":false,\"size\":250,\"default\":null},{\"key\":\"completed\",\"type\":\"boolean\",\"status\":\"available\",\"required\":true,\"array\":false,\"default\":null}],\"indexes\":[{\"key\":\"userId\",\"type\":\"key\",\"status\":\"available\",\"attributes\":[\"userId\"],\"orders\":[\"ASC\"]}]}}'),
(8,'63b1f85413112d71cd70','2023-01-01 21:17:08.078','2023-01-01 21:17:08.078','[]','63b1f70864242b93c492','user.create','user/63b1f8534a7bdc74bf70','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36','192.168.94.8','','2023-01-01 21:17:08.077','{\"userName\":\"admin\",\"userEmail\":\"admin@noemail.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"63b1f8534a7bdc74bf70\",\"$createdAt\":\"2023-01-01T21:17:07.400+00:00\",\"$updatedAt\":\"2023-01-01T21:17:07.400+00:00\",\"name\":\"user\",\"password\":\"$argon2id$v=19$m=65536,t=4,p=3$QW11TjNjNTF3N25nLkZZYQ$lxzimgQo4bBXJkRACH7ZhBl9Cam5IkJur4QJkr+YsK8\",\"hash\":\"argon2\",\"hashOptions\":{\"type\":\"argon2\",\"memoryCost\":2048,\"timeCost\":4,\"threads\":3},\"registration\":\"2023-01-01T21:17:07.399+00:00\",\"status\":true,\"passwordUpdate\":\"2023-01-01T21:17:07.399+00:00\",\"email\":\"user@noemail.com\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"prefs\":[]}}'),
(9,'63b1f9052bda8609d94b','2023-01-01 21:20:05.179','2023-01-01 21:20:05.179','[]','63b1f8534a7bdc74bf70','session.create','user/63b1f8534a7bdc74bf70','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36','192.168.159.7','','2023-01-01 21:20:05.179','{\"userName\":\"user\",\"userEmail\":\"user@noemail.com\",\"mode\":\"default\",\"data\":{\"$id\":\"63b1f9044ab33a06c4b5\",\"$createdAt\":\"2023-01-01T21:20:04.311+00:00\",\"userId\":\"63b1f8534a7bdc74bf70\",\"expire\":\"2024-01-01 21:20:04.305\",\"provider\":\"email\",\"providerUid\":\"user@noemail.com\",\"providerAccessToken\":\"\",\"providerAccessTokenExpiry\":\"\",\"providerRefreshToken\":\"\",\"ip\":\"192.168.159.7\",\"osCode\":\"MAC\",\"osName\":\"Mac\",\"osVersion\":\"10.14\",\"clientType\":\"browser\",\"clientCode\":\"CH\",\"clientName\":\"Chrome\",\"clientVersion\":\"108.0\",\"clientEngine\":\"Blink\",\"clientEngineVersion\":\"108.0.0.0\",\"deviceName\":\"desktop\",\"deviceBrand\":\"Apple\",\"deviceModel\":\"\",\"countryCode\":\"--\",\"countryName\":\"Unknown\",\"current\":true}}'),
(10,'63b1f9092d60c09ab34f','2023-01-01 21:20:09.185','2023-01-01 21:20:09.185','[]','63b1f8534a7bdc74bf70','document.create','database/63b1f73a5da8233847c0/collection/63b1f7419bd5a1eae520','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36','192.168.159.7','','2023-01-01 21:20:09.185','{\"userName\":\"user\",\"userEmail\":\"user@noemail.com\",\"mode\":\"default\",\"data\":{\"userId\":\"63b1f8534a7bdc74bf70\",\"completed\":false,\"title\":\"Another boring todo item\",\"$id\":\"63b1f9088a72f7b52548\",\"$permissions\":[\"read(\\\"user:63b1f8534a7bdc74bf70\\\")\",\"update(\\\"user:63b1f8534a7bdc74bf70\\\")\",\"delete(\\\"user:63b1f8534a7bdc74bf70\\\")\"],\"$createdAt\":\"2023-01-01T21:20:08.567+00:00\",\"$updatedAt\":\"2023-01-01T21:20:08.567+00:00\",\"$collectionId\":\"63b1f7419bd5a1eae520\",\"$databaseId\":\"63b1f73a5da8233847c0\"}}'),
(11,'63b1f90e2ee24b24abb4','2023-01-01 21:20:14.192','2023-01-01 21:20:14.192','[]','63b1f8534a7bdc74bf70','document.create','database/63b1f73a5da8233847c0/collection/63b1f7419bd5a1eae520','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36','192.168.194.8','','2023-01-01 21:20:14.191','{\"userName\":\"user\",\"userEmail\":\"user@noemail.com\",\"mode\":\"default\",\"data\":{\"userId\":\"63b1f8534a7bdc74bf70\",\"completed\":false,\"title\":\"Another boring todo item2\",\"$id\":\"63b1f90d97bc3d0feaa9\",\"$permissions\":[\"read(\\\"user:63b1f8534a7bdc74bf70\\\")\",\"update(\\\"user:63b1f8534a7bdc74bf70\\\")\",\"delete(\\\"user:63b1f8534a7bdc74bf70\\\")\"],\"$createdAt\":\"2023-01-01T21:20:13.621+00:00\",\"$updatedAt\":\"2023-01-01T21:20:13.621+00:00\",\"$collectionId\":\"63b1f7419bd5a1eae520\",\"$databaseId\":\"63b1f73a5da8233847c0\"}}'),
(12,'63b1f911301bde2e2438','2023-01-01 21:20:17.197','2023-01-01 21:20:17.197','[]','63b1f8534a7bdc74bf70','document.create','database/63b1f73a5da8233847c0/collection/63b1f7419bd5a1eae520','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36','192.168.94.8','','2023-01-01 21:20:17.196','{\"userName\":\"user\",\"userEmail\":\"user@noemail.com\",\"mode\":\"default\",\"data\":{\"userId\":\"63b1f8534a7bdc74bf70\",\"completed\":false,\"title\":\"Another boring todo item3\",\"$id\":\"63b1f910a8bfa0df3fa1\",\"$permissions\":[\"read(\\\"user:63b1f8534a7bdc74bf70\\\")\",\"update(\\\"user:63b1f8534a7bdc74bf70\\\")\",\"delete(\\\"user:63b1f8534a7bdc74bf70\\\")\"],\"$createdAt\":\"2023-01-01T21:20:16.691+00:00\",\"$updatedAt\":\"2023-01-01T21:20:16.691+00:00\",\"$collectionId\":\"63b1f7419bd5a1eae520\",\"$databaseId\":\"63b1f73a5da8233847c0\"}}'),
(13,'63b1f915315b077edb63','2023-01-01 21:20:21.202','2023-01-01 21:20:21.202','[]','63b1f8534a7bdc74bf70','document.update','database/63b1f73a5da8233847c0/collection/63b1f7419bd5a1eae520/document/63b1f9088a72f7b52548','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36','192.168.159.7','','2023-01-01 21:20:21.202','{\"userName\":\"user\",\"userEmail\":\"user@noemail.com\",\"mode\":\"default\",\"data\":{\"userId\":\"63b1f8534a7bdc74bf70\",\"title\":\"Another boring todo item\",\"completed\":true,\"$id\":\"63b1f9088a72f7b52548\",\"$createdAt\":\"2023-01-01T21:20:08.567+00:00\",\"$updatedAt\":\"2023-01-01T21:20:20.374+00:00\",\"$permissions\":[\"read(\\\"user:63b1f8534a7bdc74bf70\\\")\",\"update(\\\"user:63b1f8534a7bdc74bf70\\\")\",\"delete(\\\"user:63b1f8534a7bdc74bf70\\\")\"],\"$collectionId\":\"63b1f7419bd5a1eae520\",\"$databaseId\":\"63b1f73a5da8233847c0\"}}');
/*!40000 ALTER TABLE `_1_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_audit_perms`
--

DROP TABLE IF EXISTS `_1_audit_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_audit_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_audit_perms`
--

LOCK TABLES `_1_audit_perms` WRITE;
/*!40000 ALTER TABLE `_1_audit_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_audit_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_buckets`
--

DROP TABLE IF EXISTS `_1_buckets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_buckets` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `fileSecurity` tinyint(1) DEFAULT NULL,
  `maximumFileSize` bigint(20) unsigned DEFAULT NULL,
  `allowedFileExtensions` longtext DEFAULT NULL,
  `compression` varchar(10) DEFAULT NULL,
  `encryption` tinyint(1) DEFAULT NULL,
  `antivirus` tinyint(1) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_enabled` (`enabled`),
  KEY `_key_name` (`name`),
  KEY `_key_fileSecurity` (`fileSecurity`),
  KEY `_key_maximumFileSize` (`maximumFileSize`),
  KEY `_key_encryption` (`encryption`),
  KEY `_key_antivirus` (`antivirus`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_name` (`name`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_buckets`
--

LOCK TABLES `_1_buckets` WRITE;
/*!40000 ALTER TABLE `_1_buckets` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_buckets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_buckets_perms`
--

DROP TABLE IF EXISTS `_1_buckets_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_buckets_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_buckets_perms`
--

LOCK TABLES `_1_buckets_perms` WRITE;
/*!40000 ALTER TABLE `_1_buckets_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_buckets_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_builds`
--

DROP TABLE IF EXISTS `_1_builds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_builds` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `startTime` datetime(3) DEFAULT NULL,
  `endTime` datetime(3) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `deploymentId` varchar(255) DEFAULT NULL,
  `runtime` varchar(2048) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL,
  `outputPath` varchar(2048) DEFAULT NULL,
  `stderr` mediumtext DEFAULT NULL,
  `stdout` mediumtext DEFAULT NULL,
  `sourceType` varchar(2048) DEFAULT NULL,
  `source` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_deployment` (`deploymentId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_builds`
--

LOCK TABLES `_1_builds` WRITE;
/*!40000 ALTER TABLE `_1_builds` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_builds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_builds_perms`
--

DROP TABLE IF EXISTS `_1_builds_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_builds_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_builds_perms`
--

LOCK TABLES `_1_builds_perms` WRITE;
/*!40000 ALTER TABLE `_1_builds_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_builds_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_cache`
--

DROP TABLE IF EXISTS `_1_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_cache` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `accessedAt` datetime(3) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_accessedAt` (`accessedAt`),
  KEY `_key_resource` (`resource`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_cache`
--

LOCK TABLES `_1_cache` WRITE;
/*!40000 ALTER TABLE `_1_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_cache_perms`
--

DROP TABLE IF EXISTS `_1_cache_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_cache_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_cache_perms`
--

LOCK TABLES `_1_cache_perms` WRITE;
/*!40000 ALTER TABLE `_1_cache_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_cache_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_certificates`
--

DROP TABLE IF EXISTS `_1_certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_certificates` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `issueDate` datetime(3) DEFAULT NULL,
  `renewDate` datetime(3) DEFAULT NULL,
  `attempts` int(11) DEFAULT NULL,
  `log` text DEFAULT NULL,
  `updated` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_domain` (`domain`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_certificates`
--

LOCK TABLES `_1_certificates` WRITE;
/*!40000 ALTER TABLE `_1_certificates` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_certificates_perms`
--

DROP TABLE IF EXISTS `_1_certificates_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_certificates_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_certificates_perms`
--

LOCK TABLES `_1_certificates_perms` WRITE;
/*!40000 ALTER TABLE `_1_certificates_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_certificates_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_database_1`
--

DROP TABLE IF EXISTS `_1_database_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_database_1` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `databaseInternalId` varchar(255) DEFAULT NULL,
  `databaseId` varchar(255) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `documentSecurity` tinyint(1) DEFAULT NULL,
  `attributes` mediumtext DEFAULT NULL,
  `indexes` mediumtext DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_key_enabled` (`enabled`),
  KEY `_key_documentSecurity` (`documentSecurity`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_database_1`
--

LOCK TABLES `_1_database_1` WRITE;
/*!40000 ALTER TABLE `_1_database_1` DISABLE KEYS */;
INSERT INTO `_1_database_1` VALUES
(1,'63b1f7419bd5a1eae520','2023-01-01 21:12:33.638','2023-01-01 21:16:45.308','[\"create(\\\"any\\\")\",\"read(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','1','63b1f73a5da8233847c0','Todos',1,0,NULL,NULL,'63b1f7419bd5a1eae520 Todos');
/*!40000 ALTER TABLE `_1_database_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_database_1_collection_1`
--

DROP TABLE IF EXISTS `_1_database_1_collection_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_database_1_collection_1` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userId` varchar(50) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_database_1_collection_1`
--

LOCK TABLES `_1_database_1_collection_1` WRITE;
/*!40000 ALTER TABLE `_1_database_1_collection_1` DISABLE KEYS */;
INSERT INTO `_1_database_1_collection_1` VALUES
(1,'63b1f9088a72f7b52548','2023-01-01 21:20:08.567','2023-01-01 21:20:20.374','[\"read(\\\"user:63b1f8534a7bdc74bf70\\\")\",\"update(\\\"user:63b1f8534a7bdc74bf70\\\")\",\"delete(\\\"user:63b1f8534a7bdc74bf70\\\")\"]','63b1f8534a7bdc74bf70','Another boring todo item',1),
(2,'63b1f90d97bc3d0feaa9','2023-01-01 21:20:13.621','2023-01-01 21:20:13.621','[\"read(\\\"user:63b1f8534a7bdc74bf70\\\")\",\"update(\\\"user:63b1f8534a7bdc74bf70\\\")\",\"delete(\\\"user:63b1f8534a7bdc74bf70\\\")\"]','63b1f8534a7bdc74bf70','Another boring todo item2',0),
(3,'63b1f910a8bfa0df3fa1','2023-01-01 21:20:16.691','2023-01-01 21:20:16.691','[\"read(\\\"user:63b1f8534a7bdc74bf70\\\")\",\"update(\\\"user:63b1f8534a7bdc74bf70\\\")\",\"delete(\\\"user:63b1f8534a7bdc74bf70\\\")\"]','63b1f8534a7bdc74bf70','Another boring todo item3',0);
/*!40000 ALTER TABLE `_1_database_1_collection_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_database_1_collection_1_perms`
--

DROP TABLE IF EXISTS `_1_database_1_collection_1_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_database_1_collection_1_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_database_1_collection_1_perms`
--

LOCK TABLES `_1_database_1_collection_1_perms` WRITE;
/*!40000 ALTER TABLE `_1_database_1_collection_1_perms` DISABLE KEYS */;
INSERT INTO `_1_database_1_collection_1_perms` VALUES
(3,'delete','user:63b1f8534a7bdc74bf70','63b1f9088a72f7b52548'),
(1,'read','user:63b1f8534a7bdc74bf70','63b1f9088a72f7b52548'),
(2,'update','user:63b1f8534a7bdc74bf70','63b1f9088a72f7b52548'),
(6,'delete','user:63b1f8534a7bdc74bf70','63b1f90d97bc3d0feaa9'),
(4,'read','user:63b1f8534a7bdc74bf70','63b1f90d97bc3d0feaa9'),
(5,'update','user:63b1f8534a7bdc74bf70','63b1f90d97bc3d0feaa9'),
(9,'delete','user:63b1f8534a7bdc74bf70','63b1f910a8bfa0df3fa1'),
(7,'read','user:63b1f8534a7bdc74bf70','63b1f910a8bfa0df3fa1'),
(8,'update','user:63b1f8534a7bdc74bf70','63b1f910a8bfa0df3fa1');
/*!40000 ALTER TABLE `_1_database_1_collection_1_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_database_1_perms`
--

DROP TABLE IF EXISTS `_1_database_1_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_database_1_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_database_1_perms`
--

LOCK TABLES `_1_database_1_perms` WRITE;
/*!40000 ALTER TABLE `_1_database_1_perms` DISABLE KEYS */;
INSERT INTO `_1_database_1_perms` VALUES
(1,'create','any','63b1f7419bd5a1eae520'),
(4,'delete','any','63b1f7419bd5a1eae520'),
(2,'read','any','63b1f7419bd5a1eae520'),
(3,'update','any','63b1f7419bd5a1eae520');
/*!40000 ALTER TABLE `_1_database_1_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_databases`
--

DROP TABLE IF EXISTS `_1_databases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_databases` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_databases`
--

LOCK TABLES `_1_databases` WRITE;
/*!40000 ALTER TABLE `_1_databases` DISABLE KEYS */;
INSERT INTO `_1_databases` VALUES
(1,'63b1f73a5da8233847c0','2023-01-01 21:12:26.383','2023-01-01 21:12:26.383','[]','TodoDb','63b1f73a5da8233847c0 TodoDb');
/*!40000 ALTER TABLE `_1_databases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_databases_perms`
--

DROP TABLE IF EXISTS `_1_databases_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_databases_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_databases_perms`
--

LOCK TABLES `_1_databases_perms` WRITE;
/*!40000 ALTER TABLE `_1_databases_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_databases_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_deployments`
--

DROP TABLE IF EXISTS `_1_deployments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_deployments` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `resourceId` varchar(255) DEFAULT NULL,
  `resourceType` varchar(255) DEFAULT NULL,
  `buildId` varchar(255) DEFAULT NULL,
  `entrypoint` varchar(2048) DEFAULT NULL,
  `path` varchar(2048) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` text DEFAULT NULL,
  `chunksTotal` int(10) unsigned DEFAULT NULL,
  `chunksUploaded` int(10) unsigned DEFAULT NULL,
  `search` text DEFAULT NULL,
  `activate` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_resource` (`resourceId`),
  KEY `_key_resource_type` (`resourceType`),
  KEY `_key_entrypoint` (`entrypoint`(768)),
  KEY `_key_size` (`size`),
  KEY `_key_buildId` (`buildId`),
  KEY `_key_activate` (`activate`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_deployments`
--

LOCK TABLES `_1_deployments` WRITE;
/*!40000 ALTER TABLE `_1_deployments` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_deployments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_deployments_perms`
--

DROP TABLE IF EXISTS `_1_deployments_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_deployments_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_deployments_perms`
--

LOCK TABLES `_1_deployments_perms` WRITE;
/*!40000 ALTER TABLE `_1_deployments_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_deployments_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_domains`
--

DROP TABLE IF EXISTS `_1_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_domains` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `updated` datetime(3) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `tld` varchar(255) DEFAULT NULL,
  `registerable` varchar(255) DEFAULT NULL,
  `verification` tinyint(1) DEFAULT NULL,
  `certificateId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_domains`
--

LOCK TABLES `_1_domains` WRITE;
/*!40000 ALTER TABLE `_1_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_domains_perms`
--

DROP TABLE IF EXISTS `_1_domains_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_domains_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_domains_perms`
--

LOCK TABLES `_1_domains_perms` WRITE;
/*!40000 ALTER TABLE `_1_domains_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_domains_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_executions`
--

DROP TABLE IF EXISTS `_1_executions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_executions` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `functionId` varchar(255) DEFAULT NULL,
  `deploymentId` varchar(255) DEFAULT NULL,
  `trigger` varchar(128) DEFAULT NULL,
  `status` varchar(128) DEFAULT NULL,
  `response` mediumtext DEFAULT NULL,
  `stderr` mediumtext DEFAULT NULL,
  `stdout` mediumtext DEFAULT NULL,
  `statusCode` int(11) DEFAULT NULL,
  `duration` float DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_function` (`functionId`),
  KEY `_key_trigger` (`trigger`),
  KEY `_key_status` (`status`),
  KEY `_key_statusCode` (`statusCode`),
  KEY `_key_duration` (`duration`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_executions`
--

LOCK TABLES `_1_executions` WRITE;
/*!40000 ALTER TABLE `_1_executions` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_executions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_executions_perms`
--

DROP TABLE IF EXISTS `_1_executions_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_executions_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_executions_perms`
--

LOCK TABLES `_1_executions_perms` WRITE;
/*!40000 ALTER TABLE `_1_executions_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_executions_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_functions`
--

DROP TABLE IF EXISTS `_1_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_functions` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `execute` longtext DEFAULT NULL,
  `name` varchar(2048) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `runtime` varchar(2048) DEFAULT NULL,
  `deployment` varchar(255) DEFAULT NULL,
  `vars` text DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `schedule` varchar(128) DEFAULT NULL,
  `scheduleUpdatedAt` datetime(3) DEFAULT NULL,
  `schedulePrevious` datetime(3) DEFAULT NULL,
  `scheduleNext` datetime(3) DEFAULT NULL,
  `timeout` int(11) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_name` (`name`(768)),
  KEY `_key_enabled` (`enabled`),
  KEY `_key_runtime` (`runtime`(768)),
  KEY `_key_deployment` (`deployment`),
  KEY `_key_schedule` (`schedule`),
  KEY `_key_scheduleNext` (`scheduleNext`),
  KEY `_key_schedulePrevious` (`schedulePrevious`),
  KEY `_key_timeout` (`timeout`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_functions`
--

LOCK TABLES `_1_functions` WRITE;
/*!40000 ALTER TABLE `_1_functions` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_functions_perms`
--

DROP TABLE IF EXISTS `_1_functions_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_functions_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_functions_perms`
--

LOCK TABLES `_1_functions_perms` WRITE;
/*!40000 ALTER TABLE `_1_functions_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_functions_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_indexes`
--

DROP TABLE IF EXISTS `_1_indexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_indexes` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `databaseInternalId` varchar(255) DEFAULT NULL,
  `databaseId` varchar(255) DEFAULT NULL,
  `collectionInternalId` varchar(255) DEFAULT NULL,
  `collectionId` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `attributes` longtext DEFAULT NULL,
  `lengths` longtext DEFAULT NULL,
  `orders` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_db_collection` (`databaseInternalId`,`collectionInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_indexes`
--

LOCK TABLES `_1_indexes` WRITE;
/*!40000 ALTER TABLE `_1_indexes` DISABLE KEYS */;
INSERT INTO `_1_indexes` VALUES
(1,'1_1_userId','2023-01-01 21:16:21.430','2023-01-01 21:16:21.520','[]','1','63b1f73a5da8233847c0','1','63b1f7419bd5a1eae520','userId','key','available','[\"userId\"]','[50]','[\"ASC\"]');
/*!40000 ALTER TABLE `_1_indexes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_indexes_perms`
--

DROP TABLE IF EXISTS `_1_indexes_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_indexes_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_indexes_perms`
--

LOCK TABLES `_1_indexes_perms` WRITE;
/*!40000 ALTER TABLE `_1_indexes_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_indexes_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_keys`
--

DROP TABLE IF EXISTS `_1_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_keys` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` longtext DEFAULT NULL,
  `secret` varchar(512) DEFAULT NULL,
  `expire` datetime(3) DEFAULT NULL,
  `accessedAt` datetime(3) DEFAULT NULL,
  `sdks` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_key_accessedAt` (`accessedAt`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_keys`
--

LOCK TABLES `_1_keys` WRITE;
/*!40000 ALTER TABLE `_1_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_keys_perms`
--

DROP TABLE IF EXISTS `_1_keys_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_keys_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_keys_perms`
--

LOCK TABLES `_1_keys_perms` WRITE;
/*!40000 ALTER TABLE `_1_keys_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_keys_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_memberships`
--

DROP TABLE IF EXISTS `_1_memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_memberships` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `teamInternalId` varchar(255) DEFAULT NULL,
  `teamId` varchar(255) DEFAULT NULL,
  `roles` longtext DEFAULT NULL,
  `invited` datetime(3) DEFAULT NULL,
  `joined` datetime(3) DEFAULT NULL,
  `confirm` tinyint(1) DEFAULT NULL,
  `secret` varchar(256) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_unique` (`teamInternalId`,`userInternalId`),
  KEY `_key_user` (`userInternalId`),
  KEY `_key_team` (`teamInternalId`),
  KEY `_key_userId` (`userId`),
  KEY `_key_teamId` (`teamId`),
  KEY `_key_invited` (`invited`),
  KEY `_key_joined` (`joined`),
  KEY `_key_confirm` (`confirm`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_memberships`
--

LOCK TABLES `_1_memberships` WRITE;
/*!40000 ALTER TABLE `_1_memberships` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_memberships_perms`
--

DROP TABLE IF EXISTS `_1_memberships_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_memberships_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_memberships_perms`
--

LOCK TABLES `_1_memberships_perms` WRITE;
/*!40000 ALTER TABLE `_1_memberships_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_memberships_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_platforms`
--

DROP TABLE IF EXISTS `_1_platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_platforms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `store` varchar(256) DEFAULT NULL,
  `hostname` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_platforms`
--

LOCK TABLES `_1_platforms` WRITE;
/*!40000 ALTER TABLE `_1_platforms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_platforms_perms`
--

DROP TABLE IF EXISTS `_1_platforms_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_platforms_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_platforms_perms`
--

LOCK TABLES `_1_platforms_perms` WRITE;
/*!40000 ALTER TABLE `_1_platforms_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_platforms_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_projects`
--

DROP TABLE IF EXISTS `_1_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_projects` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `teamInternalId` varchar(255) DEFAULT NULL,
  `teamId` varchar(255) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `region` varchar(128) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `version` varchar(16) DEFAULT NULL,
  `legalName` varchar(256) DEFAULT NULL,
  `legalCountry` varchar(256) DEFAULT NULL,
  `legalState` varchar(256) DEFAULT NULL,
  `legalCity` varchar(256) DEFAULT NULL,
  `legalAddress` varchar(256) DEFAULT NULL,
  `legalTaxId` varchar(256) DEFAULT NULL,
  `services` text DEFAULT NULL,
  `auths` text DEFAULT NULL,
  `authProviders` text DEFAULT NULL,
  `platforms` text DEFAULT NULL,
  `webhooks` text DEFAULT NULL,
  `keys` text DEFAULT NULL,
  `domains` text DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_key_team` (`teamId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_projects`
--

LOCK TABLES `_1_projects` WRITE;
/*!40000 ALTER TABLE `_1_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_projects_perms`
--

DROP TABLE IF EXISTS `_1_projects_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_projects_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_projects_perms`
--

LOCK TABLES `_1_projects_perms` WRITE;
/*!40000 ALTER TABLE `_1_projects_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_projects_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_realtime`
--

DROP TABLE IF EXISTS `_1_realtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_realtime` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `container` varchar(255) DEFAULT NULL,
  `timestamp` datetime(3) DEFAULT NULL,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_timestamp` (`timestamp`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_realtime`
--

LOCK TABLES `_1_realtime` WRITE;
/*!40000 ALTER TABLE `_1_realtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_realtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_realtime_perms`
--

DROP TABLE IF EXISTS `_1_realtime_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_realtime_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_realtime_perms`
--

LOCK TABLES `_1_realtime_perms` WRITE;
/*!40000 ALTER TABLE `_1_realtime_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_realtime_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_sessions`
--

DROP TABLE IF EXISTS `_1_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_sessions` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `provider` varchar(128) DEFAULT NULL,
  `providerUid` varchar(2048) DEFAULT NULL,
  `providerAccessToken` text DEFAULT NULL,
  `providerAccessTokenExpiry` datetime(3) DEFAULT NULL,
  `providerRefreshToken` text DEFAULT NULL,
  `secret` varchar(512) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `countryCode` varchar(2) DEFAULT NULL,
  `osCode` varchar(256) DEFAULT NULL,
  `osName` varchar(256) DEFAULT NULL,
  `osVersion` varchar(256) DEFAULT NULL,
  `clientType` varchar(256) DEFAULT NULL,
  `clientCode` varchar(256) DEFAULT NULL,
  `clientName` varchar(256) DEFAULT NULL,
  `clientVersion` varchar(256) DEFAULT NULL,
  `clientEngine` varchar(256) DEFAULT NULL,
  `clientEngineVersion` varchar(256) DEFAULT NULL,
  `deviceName` varchar(256) DEFAULT NULL,
  `deviceBrand` varchar(256) DEFAULT NULL,
  `deviceModel` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_provider_providerUid` (`provider`(100),`providerUid`(100)),
  KEY `_key_user` (`userInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_sessions`
--

LOCK TABLES `_1_sessions` WRITE;
/*!40000 ALTER TABLE `_1_sessions` DISABLE KEYS */;
INSERT INTO `_1_sessions` VALUES
(1,'63b1f9044ab33a06c4b5','2023-01-01 21:20:04.311','2023-01-01 21:20:04.311','[\"read(\\\"user:63b1f8534a7bdc74bf70\\\")\",\"update(\\\"user:63b1f8534a7bdc74bf70\\\")\",\"delete(\\\"user:63b1f8534a7bdc74bf70\\\")\"]','1','63b1f8534a7bdc74bf70','email','user@noemail.com',NULL,NULL,NULL,'{\"data\":\"y0NuPJxJ6gPyq32XE2PPtP8D0uJwAdKdyuANK\\/5DdXc9RD0NmkThWkt1kzKVdviQMdeOmNqIRJ92QBlSfNEzsw==\",\"method\":\"aes-128-gcm\",\"iv\":\"1df4cbd8ef3f06febccb8385\",\"tag\":\"b4d98cc66fa3a5cc733386baeaa18ad4\",\"version\":\"1\"}','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36','192.168.159.7','--','MAC','Mac','10.14','browser','CH','Chrome','108.0','Blink','108.0.0.0','desktop','Apple','');
/*!40000 ALTER TABLE `_1_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_sessions_perms`
--

DROP TABLE IF EXISTS `_1_sessions_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_sessions_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_sessions_perms`
--

LOCK TABLES `_1_sessions_perms` WRITE;
/*!40000 ALTER TABLE `_1_sessions_perms` DISABLE KEYS */;
INSERT INTO `_1_sessions_perms` VALUES
(3,'delete','user:63b1f8534a7bdc74bf70','63b1f9044ab33a06c4b5'),
(1,'read','user:63b1f8534a7bdc74bf70','63b1f9044ab33a06c4b5'),
(2,'update','user:63b1f8534a7bdc74bf70','63b1f9044ab33a06c4b5');
/*!40000 ALTER TABLE `_1_sessions_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_stats`
--

DROP TABLE IF EXISTS `_1_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_stats` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `metric` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `value` bigint(20) unsigned DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `period` varchar(4) DEFAULT NULL,
  `type` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_time` (`time`),
  KEY `_key_period_time` (`period`,`time`),
  KEY `_key_metric_period_time` (`metric`,`period`,`time`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=1737 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_stats`
--

LOCK TABLES `_1_stats` WRITE;
/*!40000 ALTER TABLE `_1_stats` DISABLE KEYS */;
INSERT INTO `_1_stats` VALUES
(1,'1daebddd1f5e483c0331cd6588035ac0','2023-01-01 21:12:32.685','2023-01-01 21:12:33.684','[]','project.$all.network.requests','default',0,'2022-12-31 21:00:00.000','1h',0),
(2,'9d5f92d62825cc6a1e06dcded32ee491','2023-01-01 21:12:32.687','2023-01-01 21:12:33.691','[]','project.$all.network.requests','default',0,'2022-12-31 22:00:00.000','1h',0),
(3,'032774eec627ef5ed5234013fc0c9fb5','2023-01-01 21:12:32.690','2023-01-01 21:12:33.696','[]','project.$all.network.requests','default',0,'2022-12-31 23:00:00.000','1h',0),
(4,'f308c62c22d6681a86b3269da7190d63','2023-01-01 21:12:32.693','2023-01-01 21:12:33.701','[]','project.$all.network.requests','default',0,'2023-01-01 00:00:00.000','1h',0),
(5,'c6168fcd9c1bd3d91f894b8984a62a35','2023-01-01 21:12:32.695','2023-01-01 21:12:33.704','[]','project.$all.network.requests','default',0,'2023-01-01 01:00:00.000','1h',0),
(6,'02998e2ca092ab0183a1f4f45f966e12','2023-01-01 21:12:32.696','2023-01-01 21:12:33.707','[]','project.$all.network.requests','default',0,'2023-01-01 02:00:00.000','1h',0),
(7,'bb469fac2d778c78115510b56871cd02','2023-01-01 21:12:32.698','2023-01-01 21:12:33.709','[]','project.$all.network.requests','default',0,'2023-01-01 03:00:00.000','1h',0),
(8,'4902ca8916e1c08406ce7aaead68229a','2023-01-01 21:12:32.699','2023-01-01 21:12:33.712','[]','project.$all.network.requests','default',0,'2023-01-01 04:00:00.000','1h',0),
(9,'da252751449813d1907fe1b578c00095','2023-01-01 21:12:32.701','2023-01-01 21:12:33.714','[]','project.$all.network.requests','default',0,'2023-01-01 05:00:00.000','1h',0),
(10,'fc191cc62d21bca6214c4eb93b36832a','2023-01-01 21:12:32.703','2023-01-01 21:12:33.717','[]','project.$all.network.requests','default',0,'2023-01-01 06:00:00.000','1h',0),
(11,'0a68859fa5a827903a58ec01e54a236c','2023-01-01 21:12:32.704','2023-01-01 21:12:33.719','[]','project.$all.network.requests','default',0,'2023-01-01 07:00:00.000','1h',0),
(12,'c08848eb2cad241efc931035f4cd5364','2023-01-01 21:12:32.706','2023-01-01 21:12:33.721','[]','project.$all.network.requests','default',0,'2023-01-01 08:00:00.000','1h',0),
(13,'7719155b6cbfbfde070c7b1a28c2a64c','2023-01-01 21:12:32.708','2023-01-01 21:12:33.724','[]','project.$all.network.requests','default',0,'2023-01-01 09:00:00.000','1h',0),
(14,'42112002eb64ac4a85bc3fa9bd838ef6','2023-01-01 21:12:32.710','2023-01-01 21:12:33.726','[]','project.$all.network.requests','default',0,'2023-01-01 10:00:00.000','1h',0),
(15,'c64aa40b3ed9dfc7d6f422e1ec80289e','2023-01-01 21:12:32.712','2023-01-01 21:12:33.729','[]','project.$all.network.requests','default',0,'2023-01-01 11:00:00.000','1h',0),
(16,'c6c19ce03307deb50251ed2cf8c1b4a3','2023-01-01 21:12:32.713','2023-01-01 21:12:33.741','[]','project.$all.network.requests','default',0,'2023-01-01 12:00:00.000','1h',0),
(17,'7cb7bc7ef07c2fd46186232d0f80d0d0','2023-01-01 21:12:32.715','2023-01-01 21:12:33.746','[]','project.$all.network.requests','default',0,'2023-01-01 13:00:00.000','1h',0),
(18,'26827b297552dd4cae064979db233c23','2023-01-01 21:12:32.717','2023-01-01 21:12:33.750','[]','project.$all.network.requests','default',0,'2023-01-01 14:00:00.000','1h',0),
(19,'4c14e4297f2540a8edfbd7fffc35b9b9','2023-01-01 21:12:32.719','2023-01-01 21:12:33.753','[]','project.$all.network.requests','default',0,'2023-01-01 15:00:00.000','1h',0),
(20,'2851471107c428b462a53ce0d84ad20d','2023-01-01 21:12:32.720','2023-01-01 21:12:33.758','[]','project.$all.network.requests','default',0,'2023-01-01 16:00:00.000','1h',0),
(21,'e9c0b07eafe517fb37dca1c2c26e9e29','2023-01-01 21:12:32.721','2023-01-01 21:12:33.761','[]','project.$all.network.requests','default',0,'2023-01-01 17:00:00.000','1h',0),
(22,'65c75b0940fa1c0477496faab0bb4018','2023-01-01 21:12:32.722','2023-01-01 21:12:33.764','[]','project.$all.network.requests','default',0,'2023-01-01 18:00:00.000','1h',0),
(23,'0910924c3d7d7fd526841eeba92bcfa3','2023-01-01 21:12:32.724','2023-01-01 21:12:33.768','[]','project.$all.network.requests','default',0,'2023-01-01 19:00:00.000','1h',0),
(24,'6c703dbf0f0943aef67267106453adc8','2023-01-01 21:12:32.725','2023-01-01 21:12:33.772','[]','project.$all.network.requests','default',0,'2023-01-01 20:00:00.000','1h',0),
(25,'13a9d3849782a4d8227bd537ba846252','2023-01-01 21:12:32.727','2023-01-01 21:20:44.671','[]','project.$all.network.requests','default',52,'2023-01-01 21:00:00.000','1h',0),
(26,'28150a5df47bd9189dd6f8fc8836df4a','2023-01-01 21:12:32.732','2023-01-01 21:12:33.784','[]','project.$all.network.bandwidth','default',0,'2022-12-31 21:00:00.000','1h',0),
(27,'264ae1c0da0a824f08e1f75b1d5b3a1d','2023-01-01 21:12:32.733','2023-01-01 21:12:33.789','[]','project.$all.network.bandwidth','default',0,'2022-12-31 22:00:00.000','1h',0),
(28,'88eb01e89dabb62f7ca28d426a3e00db','2023-01-01 21:12:32.735','2023-01-01 21:12:33.795','[]','project.$all.network.bandwidth','default',0,'2022-12-31 23:00:00.000','1h',0),
(29,'33612957e0debe1ca8563127f36f9ed4','2023-01-01 21:12:32.737','2023-01-01 21:12:33.797','[]','project.$all.network.bandwidth','default',0,'2023-01-01 00:00:00.000','1h',0),
(30,'8c9464573db4bb1fdf3f82ffbd9e307d','2023-01-01 21:12:32.738','2023-01-01 21:12:33.800','[]','project.$all.network.bandwidth','default',0,'2023-01-01 01:00:00.000','1h',0),
(31,'79b35231e982c5e07fa7c2e93d78eb0b','2023-01-01 21:12:32.743','2023-01-01 21:12:33.802','[]','project.$all.network.bandwidth','default',0,'2023-01-01 02:00:00.000','1h',0),
(32,'4351253265b557476a95066f9c9f5587','2023-01-01 21:12:32.747','2023-01-01 21:12:33.805','[]','project.$all.network.bandwidth','default',0,'2023-01-01 03:00:00.000','1h',0),
(33,'fbd1707c844a631387f774821a6b3e5a','2023-01-01 21:12:32.750','2023-01-01 21:12:33.808','[]','project.$all.network.bandwidth','default',0,'2023-01-01 04:00:00.000','1h',0),
(34,'a15c02bcaaecd0599dac9c40d18a8838','2023-01-01 21:12:32.753','2023-01-01 21:12:33.810','[]','project.$all.network.bandwidth','default',0,'2023-01-01 05:00:00.000','1h',0),
(35,'89571f3519cd2fc592b889804eca6c5b','2023-01-01 21:12:32.754','2023-01-01 21:12:33.813','[]','project.$all.network.bandwidth','default',0,'2023-01-01 06:00:00.000','1h',0),
(36,'d95c7d3645f46ac4fec6c4f4b8fcc4a0','2023-01-01 21:12:32.756','2023-01-01 21:12:33.816','[]','project.$all.network.bandwidth','default',0,'2023-01-01 07:00:00.000','1h',0),
(37,'35be8299e7db880aba4e9c747ffbb33c','2023-01-01 21:12:32.760','2023-01-01 21:12:33.842','[]','project.$all.network.bandwidth','default',0,'2023-01-01 08:00:00.000','1h',0),
(38,'768c2d4f2e455f97daa014ff961bb861','2023-01-01 21:12:32.762','2023-01-01 21:12:33.845','[]','project.$all.network.bandwidth','default',0,'2023-01-01 09:00:00.000','1h',0),
(39,'9a42e489927dcb160468b7dbef16aa45','2023-01-01 21:12:32.765','2023-01-01 21:12:33.849','[]','project.$all.network.bandwidth','default',0,'2023-01-01 10:00:00.000','1h',0),
(40,'f612f4e397da81d2aeb04f2ff3e151b7','2023-01-01 21:12:32.767','2023-01-01 21:12:33.853','[]','project.$all.network.bandwidth','default',0,'2023-01-01 11:00:00.000','1h',0),
(41,'b62818f1e686126dbdea0a0bde19bc94','2023-01-01 21:12:32.772','2023-01-01 21:12:33.857','[]','project.$all.network.bandwidth','default',0,'2023-01-01 12:00:00.000','1h',0),
(42,'c31e0ad7be57a6e66f0777c103f270f4','2023-01-01 21:12:32.775','2023-01-01 21:12:33.861','[]','project.$all.network.bandwidth','default',0,'2023-01-01 13:00:00.000','1h',0),
(43,'940a9db264127afa123146dd9de7cd3b','2023-01-01 21:12:32.779','2023-01-01 21:12:33.865','[]','project.$all.network.bandwidth','default',0,'2023-01-01 14:00:00.000','1h',0),
(44,'46260752eeb6d7ed0b99a35748cda027','2023-01-01 21:12:32.784','2023-01-01 21:12:33.869','[]','project.$all.network.bandwidth','default',0,'2023-01-01 15:00:00.000','1h',0),
(45,'9a1e7c0c7271dd7e2631eabcc2d5e1d3','2023-01-01 21:12:32.786','2023-01-01 21:12:33.873','[]','project.$all.network.bandwidth','default',0,'2023-01-01 16:00:00.000','1h',0),
(46,'31e08fcd3a056e7ab3163b7412d42767','2023-01-01 21:12:32.788','2023-01-01 21:12:33.877','[]','project.$all.network.bandwidth','default',0,'2023-01-01 17:00:00.000','1h',0),
(47,'dd8ddd2c70cdc609b187d58d3d8a502a','2023-01-01 21:12:32.790','2023-01-01 21:12:33.880','[]','project.$all.network.bandwidth','default',0,'2023-01-01 18:00:00.000','1h',0),
(48,'8505e0089d5b037c2959078c09be2c2c','2023-01-01 21:12:32.792','2023-01-01 21:12:33.884','[]','project.$all.network.bandwidth','default',0,'2023-01-01 19:00:00.000','1h',0),
(49,'7b5f7fcdd86bab57140762642ccc4f03','2023-01-01 21:12:32.795','2023-01-01 21:12:33.887','[]','project.$all.network.bandwidth','default',0,'2023-01-01 20:00:00.000','1h',0),
(50,'197f03f547949c79cb096669465358eb','2023-01-01 21:12:32.796','2023-01-01 21:20:44.676','[]','project.$all.network.bandwidth','default',105575,'2023-01-01 21:00:00.000','1h',0),
(51,'c320476949b94f4b1d60de8cc2a48b07','2023-01-01 21:12:32.801','2023-01-01 21:12:33.897','[]','project.$all.network.inbound','default',0,'2022-12-31 21:00:00.000','1h',0),
(52,'22eecee7e929db7dd84c7ad8f02f1d57','2023-01-01 21:12:32.802','2023-01-01 21:12:33.900','[]','project.$all.network.inbound','default',0,'2022-12-31 22:00:00.000','1h',0),
(53,'74d658323543d6b17bfdaaa1498f668c','2023-01-01 21:12:32.804','2023-01-01 21:12:33.902','[]','project.$all.network.inbound','default',0,'2022-12-31 23:00:00.000','1h',0),
(54,'4bf91e5f8d0caaf6a9c0eec95813a5ae','2023-01-01 21:12:32.806','2023-01-01 21:12:33.904','[]','project.$all.network.inbound','default',0,'2023-01-01 00:00:00.000','1h',0),
(55,'4acdd32c3c84d88c0da65dc811b10e7f','2023-01-01 21:12:32.808','2023-01-01 21:12:33.906','[]','project.$all.network.inbound','default',0,'2023-01-01 01:00:00.000','1h',0),
(56,'e928647f34f3bd62ee046f4c7a30ce29','2023-01-01 21:12:32.810','2023-01-01 21:12:33.908','[]','project.$all.network.inbound','default',0,'2023-01-01 02:00:00.000','1h',0),
(57,'8f136a836bfa5210669d453bfa495148','2023-01-01 21:12:32.811','2023-01-01 21:12:33.944','[]','project.$all.network.inbound','default',0,'2023-01-01 03:00:00.000','1h',0),
(58,'507f4be4cdc504b4b43b4f728362bcdf','2023-01-01 21:12:32.812','2023-01-01 21:12:33.948','[]','project.$all.network.inbound','default',0,'2023-01-01 04:00:00.000','1h',0),
(59,'7dc8ffe31f5c56289258d57abf6873f4','2023-01-01 21:12:32.814','2023-01-01 21:12:33.952','[]','project.$all.network.inbound','default',0,'2023-01-01 05:00:00.000','1h',0),
(60,'6862f495b2cc60cf996aa95ef483b9cf','2023-01-01 21:12:32.815','2023-01-01 21:12:33.957','[]','project.$all.network.inbound','default',0,'2023-01-01 06:00:00.000','1h',0),
(61,'9b2bec37ac5fb732dcb5a18b746fe393','2023-01-01 21:12:32.817','2023-01-01 21:12:33.960','[]','project.$all.network.inbound','default',0,'2023-01-01 07:00:00.000','1h',0),
(62,'e97a977515743b1a5283957b1db758fd','2023-01-01 21:12:32.819','2023-01-01 21:12:33.965','[]','project.$all.network.inbound','default',0,'2023-01-01 08:00:00.000','1h',0),
(63,'ded18b10edacaee16fbd959eaa3f83a0','2023-01-01 21:12:32.821','2023-01-01 21:12:33.969','[]','project.$all.network.inbound','default',0,'2023-01-01 09:00:00.000','1h',0),
(64,'a52eb75f16faa7fae2f0c7e10e437d86','2023-01-01 21:12:32.822','2023-01-01 21:12:33.972','[]','project.$all.network.inbound','default',0,'2023-01-01 10:00:00.000','1h',0),
(65,'92fdbbfcaacc5f5fb6ce5aed14127f65','2023-01-01 21:12:32.824','2023-01-01 21:12:33.976','[]','project.$all.network.inbound','default',0,'2023-01-01 11:00:00.000','1h',0),
(66,'357162b17eb6fc2bfebe02cf4e46a712','2023-01-01 21:12:32.825','2023-01-01 21:12:33.979','[]','project.$all.network.inbound','default',0,'2023-01-01 12:00:00.000','1h',0),
(67,'b6390c872a40e8ae846d6a694a0843d7','2023-01-01 21:12:32.826','2023-01-01 21:12:33.983','[]','project.$all.network.inbound','default',0,'2023-01-01 13:00:00.000','1h',0),
(68,'86ab528beb11461d36d65d853aad276b','2023-01-01 21:12:32.828','2023-01-01 21:12:33.987','[]','project.$all.network.inbound','default',0,'2023-01-01 14:00:00.000','1h',0),
(69,'3ce10168ba059b3f6b40757520601097','2023-01-01 21:12:32.829','2023-01-01 21:12:33.991','[]','project.$all.network.inbound','default',0,'2023-01-01 15:00:00.000','1h',0),
(70,'b580ab0214c09a0d33c2b45556552680','2023-01-01 21:12:32.830','2023-01-01 21:12:33.994','[]','project.$all.network.inbound','default',0,'2023-01-01 16:00:00.000','1h',0),
(71,'6895b07206b16bdd101b4f8466810dbf','2023-01-01 21:12:32.831','2023-01-01 21:12:33.999','[]','project.$all.network.inbound','default',0,'2023-01-01 17:00:00.000','1h',0),
(72,'d6d45a27a3fda99ea677f8c0b113cd9a','2023-01-01 21:12:32.832','2023-01-01 21:12:34.004','[]','project.$all.network.inbound','default',0,'2023-01-01 18:00:00.000','1h',0),
(73,'153a359356e22ea8e33888e421fd9e22','2023-01-01 21:12:32.833','2023-01-01 21:12:34.007','[]','project.$all.network.inbound','default',0,'2023-01-01 19:00:00.000','1h',0),
(74,'c8eaadb4e90f8e91923565b249b5ca82','2023-01-01 21:12:32.835','2023-01-01 21:12:34.009','[]','project.$all.network.inbound','default',0,'2023-01-01 20:00:00.000','1h',0),
(75,'bce734cc869ed1ff63d72bf2adc93b5d','2023-01-01 21:12:32.836','2023-01-01 21:20:44.680','[]','project.$all.network.inbound','default',40535,'2023-01-01 21:00:00.000','1h',0),
(76,'11ef45f1286d1ed4ba4781cbabaf9000','2023-01-01 21:12:32.850','2023-01-01 21:12:34.051','[]','project.$all.network.outbound','default',0,'2022-12-31 21:00:00.000','1h',0),
(77,'fa17e71a256bf5d95542bdb7504e8dcc','2023-01-01 21:12:32.853','2023-01-01 21:12:34.055','[]','project.$all.network.outbound','default',0,'2022-12-31 22:00:00.000','1h',0),
(78,'5a562b57108b38169d5d1ac8b6f957d0','2023-01-01 21:12:32.857','2023-01-01 21:12:34.061','[]','project.$all.network.outbound','default',0,'2022-12-31 23:00:00.000','1h',0),
(79,'9b3cf4f5d77b06e820cf27ade3fe270e','2023-01-01 21:12:32.861','2023-01-01 21:12:34.065','[]','project.$all.network.outbound','default',0,'2023-01-01 00:00:00.000','1h',0),
(80,'9a735980bd507e8abc53a8324ba3c23b','2023-01-01 21:12:32.863','2023-01-01 21:12:34.074','[]','project.$all.network.outbound','default',0,'2023-01-01 01:00:00.000','1h',0),
(81,'66e4e4a73cf0cb8d35b67cc480514743','2023-01-01 21:12:32.865','2023-01-01 21:12:34.078','[]','project.$all.network.outbound','default',0,'2023-01-01 02:00:00.000','1h',0),
(82,'371eb46cfc4a69cc315fba8a3b04840f','2023-01-01 21:12:32.868','2023-01-01 21:12:34.082','[]','project.$all.network.outbound','default',0,'2023-01-01 03:00:00.000','1h',0),
(83,'fc6a145ad1db1f674995e9e2f7ec4093','2023-01-01 21:12:32.870','2023-01-01 21:12:34.085','[]','project.$all.network.outbound','default',0,'2023-01-01 04:00:00.000','1h',0),
(84,'693b71fefe0d62960507915bfb2ea649','2023-01-01 21:12:32.873','2023-01-01 21:12:34.089','[]','project.$all.network.outbound','default',0,'2023-01-01 05:00:00.000','1h',0),
(85,'0eecf536fa95f3c24731f3eff5edcef1','2023-01-01 21:12:32.875','2023-01-01 21:12:34.092','[]','project.$all.network.outbound','default',0,'2023-01-01 06:00:00.000','1h',0),
(86,'0007bccaf03c948a6ed04a085105409e','2023-01-01 21:12:32.878','2023-01-01 21:12:34.094','[]','project.$all.network.outbound','default',0,'2023-01-01 07:00:00.000','1h',0),
(87,'85d388f0443168f9567b691c3e3f12c0','2023-01-01 21:12:32.882','2023-01-01 21:12:34.097','[]','project.$all.network.outbound','default',0,'2023-01-01 08:00:00.000','1h',0),
(88,'4d67c45bdb58eaa429bd18d185893657','2023-01-01 21:12:32.884','2023-01-01 21:12:34.100','[]','project.$all.network.outbound','default',0,'2023-01-01 09:00:00.000','1h',0),
(89,'ac7da22ae51e2ace5c4c86686f3b3d8c','2023-01-01 21:12:32.888','2023-01-01 21:12:34.102','[]','project.$all.network.outbound','default',0,'2023-01-01 10:00:00.000','1h',0),
(90,'41913fc7e2c5c88d4ac0603decf92bc0','2023-01-01 21:12:32.890','2023-01-01 21:12:34.149','[]','project.$all.network.outbound','default',0,'2023-01-01 11:00:00.000','1h',0),
(91,'adc3d7df276a821398293aedd4e75fb2','2023-01-01 21:12:32.891','2023-01-01 21:12:34.152','[]','project.$all.network.outbound','default',0,'2023-01-01 12:00:00.000','1h',0),
(92,'c4001858876bb638c0476f67b67f7bca','2023-01-01 21:12:32.894','2023-01-01 21:12:34.157','[]','project.$all.network.outbound','default',0,'2023-01-01 13:00:00.000','1h',0),
(93,'fb6ad5ebc4c241718abe46d3d10d4aa1','2023-01-01 21:12:32.896','2023-01-01 21:12:34.161','[]','project.$all.network.outbound','default',0,'2023-01-01 14:00:00.000','1h',0),
(94,'88348baa3658d14fd8887d879f297bbd','2023-01-01 21:12:32.899','2023-01-01 21:12:34.166','[]','project.$all.network.outbound','default',0,'2023-01-01 15:00:00.000','1h',0),
(95,'5c295021a8627402f722ab3b6ea5ed2b','2023-01-01 21:12:32.902','2023-01-01 21:12:34.171','[]','project.$all.network.outbound','default',0,'2023-01-01 16:00:00.000','1h',0),
(96,'81a3e37006cd86382b9d5e3274ab41d0','2023-01-01 21:12:32.904','2023-01-01 21:12:34.175','[]','project.$all.network.outbound','default',0,'2023-01-01 17:00:00.000','1h',0),
(97,'3b8bd4bf36cce749099ef3be9e9a28d5','2023-01-01 21:12:32.906','2023-01-01 21:12:34.178','[]','project.$all.network.outbound','default',0,'2023-01-01 18:00:00.000','1h',0),
(98,'4b3683f947b8e0552e01320e18ed5698','2023-01-01 21:12:32.908','2023-01-01 21:12:34.180','[]','project.$all.network.outbound','default',0,'2023-01-01 19:00:00.000','1h',0),
(99,'a4393c739ae07f21d2774e4e72d3df64','2023-01-01 21:12:32.909','2023-01-01 21:12:34.183','[]','project.$all.network.outbound','default',0,'2023-01-01 20:00:00.000','1h',0),
(100,'a754a70a796c4f67ad6eb97f0b074bad','2023-01-01 21:12:32.911','2023-01-01 21:20:44.685','[]','project.$all.network.outbound','default',65040,'2023-01-01 21:00:00.000','1h',0),
(101,'7b16b16170948b6bdc6b43e118e7be5e','2023-01-01 21:12:32.924','2023-01-01 21:12:34.220','[]','databases.$all.requests.create','default',0,'2022-12-31 21:00:00.000','1h',0),
(102,'6ecab066eb93ad7669c2a64f9ab7a0e9','2023-01-01 21:12:32.926','2023-01-01 21:12:34.223','[]','databases.$all.requests.create','default',0,'2022-12-31 22:00:00.000','1h',0),
(103,'ffa8f7730cfcb986e668951cc814a32c','2023-01-01 21:12:32.928','2023-01-01 21:12:34.226','[]','databases.$all.requests.create','default',0,'2022-12-31 23:00:00.000','1h',0),
(104,'ed26c9ee4968e50690f5cdabe122fea0','2023-01-01 21:12:32.930','2023-01-01 21:12:34.229','[]','databases.$all.requests.create','default',0,'2023-01-01 00:00:00.000','1h',0),
(105,'c5500e1ec46403c6a61a0d33afaa9f2b','2023-01-01 21:12:32.932','2023-01-01 21:12:34.231','[]','databases.$all.requests.create','default',0,'2023-01-01 01:00:00.000','1h',0),
(106,'09737941cdc0fe42ab51915175c7e4a6','2023-01-01 21:12:32.933','2023-01-01 21:12:34.234','[]','databases.$all.requests.create','default',0,'2023-01-01 02:00:00.000','1h',0),
(107,'dc6670615a5fc5c726deac26265ead0c','2023-01-01 21:12:32.936','2023-01-01 21:12:34.238','[]','databases.$all.requests.create','default',0,'2023-01-01 03:00:00.000','1h',0),
(108,'fd1e18a81963fbb1ab2aeb2cb56a7f5f','2023-01-01 21:12:32.937','2023-01-01 21:12:34.245','[]','databases.$all.requests.create','default',0,'2023-01-01 04:00:00.000','1h',0),
(109,'55f91d0b048a666634f2e55e07e11062','2023-01-01 21:12:32.939','2023-01-01 21:12:34.250','[]','databases.$all.requests.create','default',0,'2023-01-01 05:00:00.000','1h',0),
(110,'f89faea464e5e1852d06d53ed709d551','2023-01-01 21:12:32.941','2023-01-01 21:12:34.259','[]','databases.$all.requests.create','default',0,'2023-01-01 06:00:00.000','1h',0),
(111,'1e06791c2a255e5c0be329f659e4a52e','2023-01-01 21:12:32.945','2023-01-01 21:12:34.268','[]','databases.$all.requests.create','default',0,'2023-01-01 07:00:00.000','1h',0),
(112,'f9a1e964922ecca7781e298f0d4e9e6b','2023-01-01 21:12:32.949','2023-01-01 21:12:34.273','[]','databases.$all.requests.create','default',0,'2023-01-01 08:00:00.000','1h',0),
(113,'380d66981c698671d29037004d4fa0dc','2023-01-01 21:12:32.952','2023-01-01 21:12:34.278','[]','databases.$all.requests.create','default',0,'2023-01-01 09:00:00.000','1h',0),
(114,'cb8a7e61801f1ae132ce8fb0dcd807d7','2023-01-01 21:12:32.955','2023-01-01 21:12:34.282','[]','databases.$all.requests.create','default',0,'2023-01-01 10:00:00.000','1h',0),
(115,'a1d436943e0255fc5566c05b0182bfca','2023-01-01 21:12:32.958','2023-01-01 21:12:34.285','[]','databases.$all.requests.create','default',0,'2023-01-01 11:00:00.000','1h',0),
(116,'6b8fd3d5539034da637fdd2d389d9552','2023-01-01 21:12:32.961','2023-01-01 21:12:34.287','[]','databases.$all.requests.create','default',0,'2023-01-01 12:00:00.000','1h',0),
(117,'68028cad431a3ad68f6fa4d9b5ad6460','2023-01-01 21:12:32.972','2023-01-01 21:12:34.289','[]','databases.$all.requests.create','default',0,'2023-01-01 13:00:00.000','1h',0),
(118,'cba185185802227b56a0d53080a8c84f','2023-01-01 21:12:32.977','2023-01-01 21:12:34.292','[]','databases.$all.requests.create','default',0,'2023-01-01 14:00:00.000','1h',0),
(119,'33b081c1405658e4a46fa3edb05d265e','2023-01-01 21:12:32.980','2023-01-01 21:12:34.294','[]','databases.$all.requests.create','default',0,'2023-01-01 15:00:00.000','1h',0),
(120,'a60fe8faa2155429482f15c41a7a24cf','2023-01-01 21:12:32.982','2023-01-01 21:12:34.297','[]','databases.$all.requests.create','default',0,'2023-01-01 16:00:00.000','1h',0),
(121,'c01928d07fe47fde17d6b7f5773eb4a2','2023-01-01 21:12:32.984','2023-01-01 21:12:34.299','[]','databases.$all.requests.create','default',0,'2023-01-01 17:00:00.000','1h',0),
(122,'2434c804b252aecdae460b3d7317b45e','2023-01-01 21:12:32.985','2023-01-01 21:12:34.301','[]','databases.$all.requests.create','default',0,'2023-01-01 18:00:00.000','1h',0),
(123,'bdace5b1202eed3974d4af08a15a2414','2023-01-01 21:12:32.987','2023-01-01 21:12:34.303','[]','databases.$all.requests.create','default',0,'2023-01-01 19:00:00.000','1h',0),
(124,'47a3d07554d740e21c411125ec3f0eb8','2023-01-01 21:12:32.990','2023-01-01 21:12:34.307','[]','databases.$all.requests.create','default',0,'2023-01-01 20:00:00.000','1h',0),
(125,'3eaf51fdac2bf180930938b083310592','2023-01-01 21:12:32.992','2023-01-01 21:20:44.703','[]','databases.$all.requests.create','default',1,'2023-01-01 21:00:00.000','1h',0),
(126,'0086c69716641d8163645140b1678362','2023-01-01 21:12:32.996','2023-01-01 21:12:34.315','[]','databases.$all.requests.read','default',0,'2022-12-31 21:00:00.000','1h',0),
(127,'4372738788999b500ff373c5e553dca8','2023-01-01 21:12:32.998','2023-01-01 21:12:34.319','[]','databases.$all.requests.read','default',0,'2022-12-31 22:00:00.000','1h',0),
(128,'4331bfd569025c6c8d7bfe67a0c5bbcf','2023-01-01 21:12:33.000','2023-01-01 21:12:34.322','[]','databases.$all.requests.read','default',0,'2022-12-31 23:00:00.000','1h',0),
(129,'f52d5c184940a246395ebb59dd0c8297','2023-01-01 21:12:33.003','2023-01-01 21:12:34.344','[]','databases.$all.requests.read','default',0,'2023-01-01 00:00:00.000','1h',0),
(130,'20c618c5a93e6d7c1476c6ec1f1ce131','2023-01-01 21:12:33.004','2023-01-01 21:12:34.348','[]','databases.$all.requests.read','default',0,'2023-01-01 01:00:00.000','1h',0),
(131,'074590ac17ed96c95f059ac4eef8f1e9','2023-01-01 21:12:33.005','2023-01-01 21:12:34.353','[]','databases.$all.requests.read','default',0,'2023-01-01 02:00:00.000','1h',0),
(132,'1e65f9ec692b6b298fd924c3d18d1d0b','2023-01-01 21:12:33.007','2023-01-01 21:12:34.358','[]','databases.$all.requests.read','default',0,'2023-01-01 03:00:00.000','1h',0),
(133,'76c253f8061510397f770bc5caedde5d','2023-01-01 21:12:33.009','2023-01-01 21:12:34.362','[]','databases.$all.requests.read','default',0,'2023-01-01 04:00:00.000','1h',0),
(134,'56e851e5e54400eabf344c47923d9230','2023-01-01 21:12:33.010','2023-01-01 21:12:34.369','[]','databases.$all.requests.read','default',0,'2023-01-01 05:00:00.000','1h',0),
(135,'a623470b6ae07369d0ec43b74d798219','2023-01-01 21:12:33.011','2023-01-01 21:12:34.373','[]','databases.$all.requests.read','default',0,'2023-01-01 06:00:00.000','1h',0),
(136,'393ff35dac590e35330d79ec4b92e586','2023-01-01 21:12:33.013','2023-01-01 21:12:34.376','[]','databases.$all.requests.read','default',0,'2023-01-01 07:00:00.000','1h',0),
(137,'b2c58fc9c228cfe175a5e4859f88b369','2023-01-01 21:12:33.015','2023-01-01 21:12:34.379','[]','databases.$all.requests.read','default',0,'2023-01-01 08:00:00.000','1h',0),
(138,'051e4b9e2db1452487bf0592d50a5a82','2023-01-01 21:12:33.016','2023-01-01 21:12:34.382','[]','databases.$all.requests.read','default',0,'2023-01-01 09:00:00.000','1h',0),
(139,'4698e39df96a74d48c323de177ccce2d','2023-01-01 21:12:33.020','2023-01-01 21:12:34.385','[]','databases.$all.requests.read','default',0,'2023-01-01 10:00:00.000','1h',0),
(140,'a6f53ad8c1f1bf9711248f23861a9c86','2023-01-01 21:12:33.021','2023-01-01 21:12:34.388','[]','databases.$all.requests.read','default',0,'2023-01-01 11:00:00.000','1h',0),
(141,'7e505f6c9ee2b1369495ebd17a1262fb','2023-01-01 21:12:33.023','2023-01-01 21:12:34.390','[]','databases.$all.requests.read','default',0,'2023-01-01 12:00:00.000','1h',0),
(142,'910f2f169291c562a0e40f85bef7d728','2023-01-01 21:12:33.024','2023-01-01 21:12:34.393','[]','databases.$all.requests.read','default',0,'2023-01-01 13:00:00.000','1h',0),
(143,'8d4160f551839ebb2e48ead47879b70d','2023-01-01 21:12:33.026','2023-01-01 21:12:34.395','[]','databases.$all.requests.read','default',0,'2023-01-01 14:00:00.000','1h',0),
(144,'c916b55730348af02c4e6ab861563669','2023-01-01 21:12:33.027','2023-01-01 21:12:34.397','[]','databases.$all.requests.read','default',0,'2023-01-01 15:00:00.000','1h',0),
(145,'9dd64cdde091a857c926e4f2a63b626c','2023-01-01 21:12:33.029','2023-01-01 21:12:34.399','[]','databases.$all.requests.read','default',0,'2023-01-01 16:00:00.000','1h',0),
(146,'8ce60d5a61161db2c9aa934a44ec047a','2023-01-01 21:12:33.030','2023-01-01 21:12:34.401','[]','databases.$all.requests.read','default',0,'2023-01-01 17:00:00.000','1h',0),
(147,'2ce66cd5cdc830c14fb5679508de4e56','2023-01-01 21:12:33.031','2023-01-01 21:12:34.404','[]','databases.$all.requests.read','default',0,'2023-01-01 18:00:00.000','1h',0),
(148,'6249cff7a9740325d5641c65290f2d7d','2023-01-01 21:12:33.033','2023-01-01 21:12:34.406','[]','databases.$all.requests.read','default',0,'2023-01-01 19:00:00.000','1h',0),
(149,'645b2e3f75c7a8702a1c73ccade8b9fa','2023-01-01 21:12:33.035','2023-01-01 21:12:34.408','[]','databases.$all.requests.read','default',0,'2023-01-01 20:00:00.000','1h',0),
(150,'9fbf2df4aeac78430881535143547e49','2023-01-01 21:12:33.036','2023-01-01 21:20:44.709','[]','databases.$all.requests.read','default',5,'2023-01-01 21:00:00.000','1h',0),
(151,'6da51cc95015bad855316069cffac1a2','2023-01-01 21:12:33.051','2023-01-01 21:12:34.420','[]','collections.$all.requests.read','default',0,'2022-12-31 21:00:00.000','1h',0),
(152,'efaf415a068c6568a3c6a5780745b2ce','2023-01-01 21:12:33.054','2023-01-01 21:12:34.423','[]','collections.$all.requests.read','default',0,'2022-12-31 22:00:00.000','1h',0),
(153,'589a739fd5f0f5957683736ae1613b77','2023-01-01 21:12:33.058','2023-01-01 21:12:34.425','[]','collections.$all.requests.read','default',0,'2022-12-31 23:00:00.000','1h',0),
(154,'8f66f7ab90bf54d7487e73635834f4ab','2023-01-01 21:12:33.061','2023-01-01 21:12:34.428','[]','collections.$all.requests.read','default',0,'2023-01-01 00:00:00.000','1h',0),
(155,'74cb87c6b42df9f2d1738fa75e2d380b','2023-01-01 21:12:33.064','2023-01-01 21:12:34.431','[]','collections.$all.requests.read','default',0,'2023-01-01 01:00:00.000','1h',0),
(156,'afc608ea2445908878725808fac96d24','2023-01-01 21:12:33.066','2023-01-01 21:12:34.433','[]','collections.$all.requests.read','default',0,'2023-01-01 02:00:00.000','1h',0),
(157,'6c981bffa4b1869bffe3e18b5e3df7cf','2023-01-01 21:12:33.068','2023-01-01 21:12:34.434','[]','collections.$all.requests.read','default',0,'2023-01-01 03:00:00.000','1h',0),
(158,'90c420a5a49f45c8fe06bfdfa6ca1d67','2023-01-01 21:12:33.071','2023-01-01 21:12:34.437','[]','collections.$all.requests.read','default',0,'2023-01-01 04:00:00.000','1h',0),
(159,'7385aa7dfe3e9ed8bfd7a85c8020b141','2023-01-01 21:12:33.074','2023-01-01 21:12:34.439','[]','collections.$all.requests.read','default',0,'2023-01-01 05:00:00.000','1h',0),
(160,'45b6a7272a84f3773b842f86d29a05ce','2023-01-01 21:12:33.076','2023-01-01 21:12:34.442','[]','collections.$all.requests.read','default',0,'2023-01-01 06:00:00.000','1h',0),
(161,'3f02bd4d71fe572fccbb1ad8385b997c','2023-01-01 21:12:33.078','2023-01-01 21:12:34.445','[]','collections.$all.requests.read','default',0,'2023-01-01 07:00:00.000','1h',0),
(162,'3453eafc0ed8e29295e4c3186d6388da','2023-01-01 21:12:33.080','2023-01-01 21:12:34.448','[]','collections.$all.requests.read','default',0,'2023-01-01 08:00:00.000','1h',0),
(163,'9b12cb70b975dc99a7401560455f8b3f','2023-01-01 21:12:33.081','2023-01-01 21:12:34.457','[]','collections.$all.requests.read','default',0,'2023-01-01 09:00:00.000','1h',0),
(164,'37eadc45a642bfdb97c155069dab57ae','2023-01-01 21:12:33.083','2023-01-01 21:12:34.461','[]','collections.$all.requests.read','default',0,'2023-01-01 10:00:00.000','1h',0),
(165,'c6132dcad681a6256b8f4b7fcd922916','2023-01-01 21:12:33.085','2023-01-01 21:12:34.465','[]','collections.$all.requests.read','default',0,'2023-01-01 11:00:00.000','1h',0),
(166,'0f42be75d7859ad2b79c73fb7a245587','2023-01-01 21:12:33.086','2023-01-01 21:12:34.469','[]','collections.$all.requests.read','default',0,'2023-01-01 12:00:00.000','1h',0),
(167,'b5151bf633f16a130a86fc20bdb9cffe','2023-01-01 21:12:33.088','2023-01-01 21:12:34.471','[]','collections.$all.requests.read','default',0,'2023-01-01 13:00:00.000','1h',0),
(168,'72e2a6d22ac31386d8e84330b7b9ab90','2023-01-01 21:12:33.089','2023-01-01 21:12:34.473','[]','collections.$all.requests.read','default',0,'2023-01-01 14:00:00.000','1h',0),
(169,'c51ba70349866b15fe63f908f3965aef','2023-01-01 21:12:33.090','2023-01-01 21:12:34.475','[]','collections.$all.requests.read','default',0,'2023-01-01 15:00:00.000','1h',0),
(170,'e01d62d0d532974fcd8f5e49f2f3fc5d','2023-01-01 21:12:33.092','2023-01-01 21:12:34.477','[]','collections.$all.requests.read','default',0,'2023-01-01 16:00:00.000','1h',0),
(171,'8136f529ae9a068d3deb8bf68f07a610','2023-01-01 21:12:33.093','2023-01-01 21:12:34.479','[]','collections.$all.requests.read','default',0,'2023-01-01 17:00:00.000','1h',0),
(172,'3adeb6ff85846b70bdbaec3d1e8bf80b','2023-01-01 21:12:33.094','2023-01-01 21:12:34.481','[]','collections.$all.requests.read','default',0,'2023-01-01 18:00:00.000','1h',0),
(173,'fe5f464aba2f99bc25714045191f20ec','2023-01-01 21:12:33.096','2023-01-01 21:12:34.483','[]','collections.$all.requests.read','default',0,'2023-01-01 19:00:00.000','1h',0),
(174,'34d93ae3f7a7dbe6ae778bb456f41ef7','2023-01-01 21:12:33.097','2023-01-01 21:12:34.485','[]','collections.$all.requests.read','default',0,'2023-01-01 20:00:00.000','1h',0),
(175,'8d3076763a824c735244ad2ecc2e26ad','2023-01-01 21:12:33.099','2023-01-01 21:20:44.719','[]','collections.$all.requests.read','default',19,'2023-01-01 21:00:00.000','1h',0),
(176,'d397aef9c3747eebbdfa8101d322cefb','2023-01-01 21:12:33.113','2023-01-01 21:12:34.504','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-31 21:00:00.000','1h',0),
(177,'3038e265a1f2d0217174fd5bcb0e9672','2023-01-01 21:12:33.115','2023-01-01 21:12:34.507','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-31 22:00:00.000','1h',0),
(178,'bbc9ddca23ce9ec603e188eed6003807','2023-01-01 21:12:33.116','2023-01-01 21:12:34.509','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-31 23:00:00.000','1h',0),
(179,'e3429531223ff3d8e4f7f747af611a42','2023-01-01 21:12:33.118','2023-01-01 21:12:34.511','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 00:00:00.000','1h',0),
(180,'103a2a758ff6cba08d4b2524225fa166','2023-01-01 21:12:33.119','2023-01-01 21:12:34.513','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 01:00:00.000','1h',0),
(181,'50bebf766e920db8867d9c189a7b5822','2023-01-01 21:12:33.121','2023-01-01 21:12:34.515','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 02:00:00.000','1h',0),
(182,'9c83d85b8e971fac728dfbcddc451789','2023-01-01 21:12:33.122','2023-01-01 21:12:34.518','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 03:00:00.000','1h',0),
(183,'786d4fc386146dfeaf3fd14cae56bfd8','2023-01-01 21:12:33.124','2023-01-01 21:12:34.520','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 04:00:00.000','1h',0),
(184,'ba8b38aa4d259f1dd960a7338d2130af','2023-01-01 21:12:33.126','2023-01-01 21:12:34.522','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 05:00:00.000','1h',0),
(185,'94d7a35fa15b4d3910da11864cf91a33','2023-01-01 21:12:33.127','2023-01-01 21:12:34.525','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 06:00:00.000','1h',0),
(186,'53cf7f1e03b6fcd9692c21f3d7b82b8e','2023-01-01 21:12:33.129','2023-01-01 21:12:34.526','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 07:00:00.000','1h',0),
(187,'0125a0e7af1e08fda36bdc1f790c0755','2023-01-01 21:12:33.130','2023-01-01 21:12:34.529','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 08:00:00.000','1h',0),
(188,'ca418e9aec4ea8a4db2e6aa979f65ac6','2023-01-01 21:12:33.131','2023-01-01 21:12:34.531','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 09:00:00.000','1h',0),
(189,'b1ac49acdbc75c1ebf54b2b39d17050c','2023-01-01 21:12:33.133','2023-01-01 21:12:34.533','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 10:00:00.000','1h',0),
(190,'4cf01a895b352350f4c3382619ad12ce','2023-01-01 21:12:33.135','2023-01-01 21:12:34.535','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 11:00:00.000','1h',0),
(191,'640f3807b70fd5382f02adb00573e673','2023-01-01 21:12:33.137','2023-01-01 21:12:34.537','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 12:00:00.000','1h',0),
(192,'e0dc804d22f4c8cce69cc5f36793dfaa','2023-01-01 21:12:33.138','2023-01-01 21:12:34.538','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 13:00:00.000','1h',0),
(193,'660f11e74c3bba9957dc94cee172bfbf','2023-01-01 21:12:33.140','2023-01-01 21:12:34.542','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 14:00:00.000','1h',0),
(194,'862c31abcc3f817a79f1d8753c85751c','2023-01-01 21:12:33.143','2023-01-01 21:12:34.547','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 15:00:00.000','1h',0),
(195,'69625ae37051665b7e48df112fe2402d','2023-01-01 21:12:33.146','2023-01-01 21:12:34.551','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 16:00:00.000','1h',0),
(196,'dfe4fbe67ec4fbaee4b096b3ded005dc','2023-01-01 21:12:33.148','2023-01-01 21:12:34.556','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 17:00:00.000','1h',0),
(197,'1ec201ff61f801007aeb09da6a44f44c','2023-01-01 21:12:33.151','2023-01-01 21:12:34.559','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 18:00:00.000','1h',0),
(198,'8da9f608ebce353cf91d9e24d32966f0','2023-01-01 21:12:33.153','2023-01-01 21:12:34.563','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 19:00:00.000','1h',0),
(199,'cb2992296e66638e0e2a88393e65fdbf','2023-01-01 21:12:33.155','2023-01-01 21:12:34.567','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 20:00:00.000','1h',0),
(200,'63dee4eb31740b8895fdc4c3abf5da05','2023-01-01 21:12:33.157','2023-01-01 21:20:44.793','[]','collections.63b1f73a5da8233847c0.requests.read','default',19,'2023-01-01 21:00:00.000','1h',0),
(201,'942ddd85f32f16309bd88324a2903c75','2023-01-01 21:12:33.259','2023-01-01 21:12:34.683','[]','databases.$all.count.total','default',0,'2022-12-31 21:00:00.000','1h',0),
(202,'0b1e2a646aef2ad91b2abcf05062cc0e','2023-01-01 21:12:33.261','2023-01-01 21:12:34.686','[]','databases.$all.count.total','default',0,'2022-12-31 22:00:00.000','1h',0),
(203,'c553d61369ef6ef6eaacd693f08d0983','2023-01-01 21:12:33.263','2023-01-01 21:12:34.689','[]','databases.$all.count.total','default',0,'2022-12-31 23:00:00.000','1h',0),
(204,'3071a3e621b427e0687d972f21f3d60f','2023-01-01 21:12:33.265','2023-01-01 21:12:34.691','[]','databases.$all.count.total','default',0,'2023-01-01 00:00:00.000','1h',0),
(205,'6531c27a11ddc4cea737d6ba56bb1b81','2023-01-01 21:12:33.267','2023-01-01 21:12:34.693','[]','databases.$all.count.total','default',0,'2023-01-01 01:00:00.000','1h',0),
(206,'04b1a2bf1594675d16cea3cc2b644d6a','2023-01-01 21:12:33.269','2023-01-01 21:12:34.695','[]','databases.$all.count.total','default',0,'2023-01-01 02:00:00.000','1h',0),
(207,'bb718ecdcfe671c0be136f55b103fdf7','2023-01-01 21:12:33.271','2023-01-01 21:12:34.698','[]','databases.$all.count.total','default',0,'2023-01-01 03:00:00.000','1h',0),
(208,'8e8f68c1ad8de0a7717aa79f9c2473de','2023-01-01 21:12:33.273','2023-01-01 21:12:34.700','[]','databases.$all.count.total','default',0,'2023-01-01 04:00:00.000','1h',0),
(209,'3c6de91212cf50ff8106d27bc6c9e115','2023-01-01 21:12:33.276','2023-01-01 21:12:34.702','[]','databases.$all.count.total','default',0,'2023-01-01 05:00:00.000','1h',0),
(210,'5c74c2beb475b72fdad6d7ef42393f67','2023-01-01 21:12:33.278','2023-01-01 21:12:34.705','[]','databases.$all.count.total','default',0,'2023-01-01 06:00:00.000','1h',0),
(211,'136ca4ead8289d4fe88f87186f49a244','2023-01-01 21:12:33.281','2023-01-01 21:12:34.707','[]','databases.$all.count.total','default',0,'2023-01-01 07:00:00.000','1h',0),
(212,'c564fa0f6b1c9c81f1631fd145bc1149','2023-01-01 21:12:33.282','2023-01-01 21:12:34.709','[]','databases.$all.count.total','default',0,'2023-01-01 08:00:00.000','1h',0),
(213,'6cb014cbee1c8e32954bed06cd7fb514','2023-01-01 21:12:33.285','2023-01-01 21:12:34.711','[]','databases.$all.count.total','default',0,'2023-01-01 09:00:00.000','1h',0),
(214,'e47da3e601d93603ba140c17f005a7e0','2023-01-01 21:12:33.287','2023-01-01 21:12:34.713','[]','databases.$all.count.total','default',0,'2023-01-01 10:00:00.000','1h',0),
(215,'cee146b23815ea7aa2894a52b51cbd13','2023-01-01 21:12:33.290','2023-01-01 21:12:34.715','[]','databases.$all.count.total','default',0,'2023-01-01 11:00:00.000','1h',0),
(216,'49068466f45b4e6d15d8afc6c9a733f2','2023-01-01 21:12:33.292','2023-01-01 21:12:34.717','[]','databases.$all.count.total','default',0,'2023-01-01 12:00:00.000','1h',0),
(217,'db85d45edad298baed85f5ea98853db6','2023-01-01 21:12:33.294','2023-01-01 21:12:34.719','[]','databases.$all.count.total','default',0,'2023-01-01 13:00:00.000','1h',0),
(218,'4871cf017975a139c3eea040b5a348aa','2023-01-01 21:12:33.296','2023-01-01 21:12:34.722','[]','databases.$all.count.total','default',0,'2023-01-01 14:00:00.000','1h',0),
(219,'6f3336cdeec76b93c72b7ce64453b8fd','2023-01-01 21:12:33.298','2023-01-01 21:12:34.724','[]','databases.$all.count.total','default',0,'2023-01-01 15:00:00.000','1h',0),
(220,'d6910597b7febf0fbec8ed7ae59cdae4','2023-01-01 21:12:33.300','2023-01-01 21:12:34.726','[]','databases.$all.count.total','default',0,'2023-01-01 16:00:00.000','1h',0),
(221,'13dc62af8afb49127cc4f43e3446c01f','2023-01-01 21:12:33.302','2023-01-01 21:12:34.728','[]','databases.$all.count.total','default',0,'2023-01-01 17:00:00.000','1h',0),
(222,'f98304ede913744236ca7e04bb50aeb1','2023-01-01 21:12:33.303','2023-01-01 21:12:34.729','[]','databases.$all.count.total','default',0,'2023-01-01 18:00:00.000','1h',0),
(223,'2183a8b7dbb83652ff165f7dec46467b','2023-01-01 21:12:33.305','2023-01-01 21:12:34.731','[]','databases.$all.count.total','default',0,'2023-01-01 19:00:00.000','1h',0),
(224,'0804ab220de92e2651c61f4aa99764e8','2023-01-01 21:12:33.306','2023-01-01 21:12:34.733','[]','databases.$all.count.total','default',0,'2023-01-01 20:00:00.000','1h',0),
(225,'e18a0c5559472a457462e3778d262c14','2023-01-01 21:12:33.307','2023-01-01 21:20:44.974','[]','databases.$all.count.total','default',1,'2023-01-01 21:00:00.000','1h',0),
(226,'e6da1c85712a86585f9dc48fbc28eef1','2023-01-01 21:12:33.335','2023-01-01 21:12:34.779','[]','project.$all.network.requests','default',0,'2022-12-02 00:00:00.000','1d',0),
(227,'b74b27d3c3298b32047470a0d676bbaa','2023-01-01 21:12:33.336','2023-01-01 21:12:34.782','[]','project.$all.network.requests','default',0,'2022-12-03 00:00:00.000','1d',0),
(228,'9e49953acbbbe8e82d59774aedfa10d1','2023-01-01 21:12:33.341','2023-01-01 21:12:34.784','[]','project.$all.network.requests','default',0,'2022-12-04 00:00:00.000','1d',0),
(229,'fc3c9f90d77ec0ca0117bbb4b124de9f','2023-01-01 21:12:33.343','2023-01-01 21:12:34.787','[]','project.$all.network.requests','default',0,'2022-12-05 00:00:00.000','1d',0),
(230,'7eac8fc6637fb34f414211a4baf9f405','2023-01-01 21:12:33.346','2023-01-01 21:12:34.789','[]','project.$all.network.requests','default',0,'2022-12-06 00:00:00.000','1d',0),
(231,'642d7025039cd79529e54403c1850f9e','2023-01-01 21:12:33.349','2023-01-01 21:12:34.791','[]','project.$all.network.requests','default',0,'2022-12-07 00:00:00.000','1d',0),
(232,'0535d1ff6b3b1743b546acb2431d521f','2023-01-01 21:12:33.351','2023-01-01 21:12:34.794','[]','project.$all.network.requests','default',0,'2022-12-08 00:00:00.000','1d',0),
(233,'647184cb376d21a9fd74da6630cbf46f','2023-01-01 21:12:33.353','2023-01-01 21:12:34.796','[]','project.$all.network.requests','default',0,'2022-12-09 00:00:00.000','1d',0),
(234,'1ef1aa5643d53c5a79b324766a7c42e7','2023-01-01 21:12:33.355','2023-01-01 21:12:34.798','[]','project.$all.network.requests','default',0,'2022-12-10 00:00:00.000','1d',0),
(235,'e52c1889e80c6e0ae73c649b9d234021','2023-01-01 21:12:33.356','2023-01-01 21:12:34.800','[]','project.$all.network.requests','default',0,'2022-12-11 00:00:00.000','1d',0),
(236,'7b6705eda20d469a0cf286e127b97cd7','2023-01-01 21:12:33.358','2023-01-01 21:12:34.802','[]','project.$all.network.requests','default',0,'2022-12-12 00:00:00.000','1d',0),
(237,'23dedb939c5d54a33b84e3d00dd8c593','2023-01-01 21:12:33.359','2023-01-01 21:12:34.804','[]','project.$all.network.requests','default',0,'2022-12-13 00:00:00.000','1d',0),
(238,'cbab74a2ca380d7fafaf0e0a1792736f','2023-01-01 21:12:33.362','2023-01-01 21:12:34.807','[]','project.$all.network.requests','default',0,'2022-12-14 00:00:00.000','1d',0),
(239,'101b0c198125491737d52962cad1c5cf','2023-01-01 21:12:33.364','2023-01-01 21:12:34.809','[]','project.$all.network.requests','default',0,'2022-12-15 00:00:00.000','1d',0),
(240,'8236c171813393fd8af0e86c180b2d25','2023-01-01 21:12:33.365','2023-01-01 21:12:34.811','[]','project.$all.network.requests','default',0,'2022-12-16 00:00:00.000','1d',0),
(241,'c0ddba9666124c974683a1f6c87d6a32','2023-01-01 21:12:33.367','2023-01-01 21:12:34.814','[]','project.$all.network.requests','default',0,'2022-12-17 00:00:00.000','1d',0),
(242,'973b9c8647ce1fc2a29fccfbbd7aa455','2023-01-01 21:12:33.368','2023-01-01 21:12:34.816','[]','project.$all.network.requests','default',0,'2022-12-18 00:00:00.000','1d',0),
(243,'1ab7f324fb898a59d660f4b291d2c677','2023-01-01 21:12:33.370','2023-01-01 21:12:34.818','[]','project.$all.network.requests','default',0,'2022-12-19 00:00:00.000','1d',0),
(244,'781e8ce79659382864c2c37919f9e8dd','2023-01-01 21:12:33.372','2023-01-01 21:12:34.820','[]','project.$all.network.requests','default',0,'2022-12-20 00:00:00.000','1d',0),
(245,'03fb1a49d6954e478b904e82f232e238','2023-01-01 21:12:33.374','2023-01-01 21:12:34.822','[]','project.$all.network.requests','default',0,'2022-12-21 00:00:00.000','1d',0),
(246,'ee32c91b7b863accb2b1888534838ec1','2023-01-01 21:12:33.376','2023-01-01 21:12:34.825','[]','project.$all.network.requests','default',0,'2022-12-22 00:00:00.000','1d',0),
(247,'848344dd793df83c32fb0d64f67cd373','2023-01-01 21:12:33.378','2023-01-01 21:12:34.827','[]','project.$all.network.requests','default',0,'2022-12-23 00:00:00.000','1d',0),
(248,'6934b2dcbf7afa96f4563c0891cdf979','2023-01-01 21:12:33.382','2023-01-01 21:12:34.829','[]','project.$all.network.requests','default',0,'2022-12-24 00:00:00.000','1d',0),
(249,'32b2f39d5b1e586c6b45ae84db63e32c','2023-01-01 21:12:33.385','2023-01-01 21:12:34.831','[]','project.$all.network.requests','default',0,'2022-12-25 00:00:00.000','1d',0),
(250,'1528a933e9aceabc9133740aa09fb92e','2023-01-01 21:12:33.389','2023-01-01 21:12:34.834','[]','project.$all.network.requests','default',0,'2022-12-26 00:00:00.000','1d',0),
(251,'3c32973af723406f2cd16c259f20d047','2023-01-01 21:12:33.392','2023-01-01 21:12:34.836','[]','project.$all.network.requests','default',0,'2022-12-27 00:00:00.000','1d',0),
(252,'679913ff6e9dc24ea0f47f091ebcd728','2023-01-01 21:12:33.394','2023-01-01 21:12:34.838','[]','project.$all.network.requests','default',0,'2022-12-28 00:00:00.000','1d',0),
(253,'47a77988c11ee0e4cbbe25307d0b42e4','2023-01-01 21:12:33.396','2023-01-01 21:12:34.840','[]','project.$all.network.requests','default',0,'2022-12-29 00:00:00.000','1d',0),
(254,'4cdf82bfaab725a818a841653400be3a','2023-01-01 21:12:33.397','2023-01-01 21:12:34.844','[]','project.$all.network.requests','default',0,'2022-12-30 00:00:00.000','1d',0),
(255,'6ea632dd2dfc82c83ebf43c35451d659','2023-01-01 21:12:33.399','2023-01-01 21:12:34.847','[]','project.$all.network.requests','default',0,'2022-12-31 00:00:00.000','1d',0),
(256,'a5f2c7d8306c79e043f305812bd8cacf','2023-01-01 21:12:33.402','2023-01-01 21:20:45.012','[]','project.$all.network.requests','default',52,'2023-01-01 00:00:00.000','1d',0),
(257,'c81ed34e0a869a6a0b0ef8045bcd6d6e','2023-01-01 21:12:33.406','2023-01-01 21:12:34.856','[]','project.$all.network.bandwidth','default',0,'2022-12-02 00:00:00.000','1d',0),
(258,'be16182ce8c47cd0f4d92f0100fd63d8','2023-01-01 21:12:33.408','2023-01-01 21:12:34.859','[]','project.$all.network.bandwidth','default',0,'2022-12-03 00:00:00.000','1d',0),
(259,'016ec5a7ddbcf36524bd2e066cbf94b8','2023-01-01 21:12:33.409','2023-01-01 21:12:34.862','[]','project.$all.network.bandwidth','default',0,'2022-12-04 00:00:00.000','1d',0),
(260,'d516ddbddcbc5786cc17f836bf31779b','2023-01-01 21:12:33.412','2023-01-01 21:12:34.864','[]','project.$all.network.bandwidth','default',0,'2022-12-05 00:00:00.000','1d',0),
(261,'5c22895664bf957f8964a2801096aca8','2023-01-01 21:12:33.413','2023-01-01 21:12:34.867','[]','project.$all.network.bandwidth','default',0,'2022-12-06 00:00:00.000','1d',0),
(262,'3c9d8393e00151444884c73de17be423','2023-01-01 21:12:33.415','2023-01-01 21:12:34.870','[]','project.$all.network.bandwidth','default',0,'2022-12-07 00:00:00.000','1d',0),
(263,'981898079d3a5b59d9a6c5088c351668','2023-01-01 21:12:33.417','2023-01-01 21:12:34.874','[]','project.$all.network.bandwidth','default',0,'2022-12-08 00:00:00.000','1d',0),
(264,'2e2a808b5984a3a7bf0638909fe6ca63','2023-01-01 21:12:33.418','2023-01-01 21:12:34.877','[]','project.$all.network.bandwidth','default',0,'2022-12-09 00:00:00.000','1d',0),
(265,'00eb123515b62fbcf7ab803579f5e07b','2023-01-01 21:12:33.420','2023-01-01 21:12:34.880','[]','project.$all.network.bandwidth','default',0,'2022-12-10 00:00:00.000','1d',0),
(266,'828f82e5fe758631a73d5a9e2de48048','2023-01-01 21:12:33.421','2023-01-01 21:12:34.883','[]','project.$all.network.bandwidth','default',0,'2022-12-11 00:00:00.000','1d',0),
(267,'d1a6e19072dbc1fd16b2a6637042919b','2023-01-01 21:12:33.423','2023-01-01 21:12:34.886','[]','project.$all.network.bandwidth','default',0,'2022-12-12 00:00:00.000','1d',0),
(268,'f8118f622904bb4febe0cc558e992113','2023-01-01 21:12:33.424','2023-01-01 21:12:34.888','[]','project.$all.network.bandwidth','default',0,'2022-12-13 00:00:00.000','1d',0),
(269,'83bc94195d3a7c058de21929361e0e4d','2023-01-01 21:12:33.425','2023-01-01 21:12:34.891','[]','project.$all.network.bandwidth','default',0,'2022-12-14 00:00:00.000','1d',0),
(270,'0be11c44bb0faa8bbd3c47dd923cdb6d','2023-01-01 21:12:33.427','2023-01-01 21:12:34.893','[]','project.$all.network.bandwidth','default',0,'2022-12-15 00:00:00.000','1d',0),
(271,'3174941557d5d9cc808dae734d45dc48','2023-01-01 21:12:33.428','2023-01-01 21:12:34.896','[]','project.$all.network.bandwidth','default',0,'2022-12-16 00:00:00.000','1d',0),
(272,'c95796616d5599b5f4c33b36600acad2','2023-01-01 21:12:33.429','2023-01-01 21:12:34.897','[]','project.$all.network.bandwidth','default',0,'2022-12-17 00:00:00.000','1d',0),
(273,'cb18204d7815b016d8b287beccb24c3e','2023-01-01 21:12:33.431','2023-01-01 21:12:34.899','[]','project.$all.network.bandwidth','default',0,'2022-12-18 00:00:00.000','1d',0),
(274,'06862b591b792fad4fd94bc2ff2eac6a','2023-01-01 21:12:33.434','2023-01-01 21:12:34.901','[]','project.$all.network.bandwidth','default',0,'2022-12-19 00:00:00.000','1d',0),
(275,'722d394fea714adf6d79988f4ad224c9','2023-01-01 21:12:33.435','2023-01-01 21:12:34.903','[]','project.$all.network.bandwidth','default',0,'2022-12-20 00:00:00.000','1d',0),
(276,'e2da37aed6e011225151788908e3ecc5','2023-01-01 21:12:33.437','2023-01-01 21:12:34.905','[]','project.$all.network.bandwidth','default',0,'2022-12-21 00:00:00.000','1d',0),
(277,'438a38262b4fa1ff6db8b37e90de0d67','2023-01-01 21:12:33.438','2023-01-01 21:12:34.908','[]','project.$all.network.bandwidth','default',0,'2022-12-22 00:00:00.000','1d',0),
(278,'9797d919fd1d6eb622c17ac5cd9775d6','2023-01-01 21:12:33.439','2023-01-01 21:12:34.910','[]','project.$all.network.bandwidth','default',0,'2022-12-23 00:00:00.000','1d',0),
(279,'c441435f91eac92c9b4651d8ae41896c','2023-01-01 21:12:33.442','2023-01-01 21:12:34.912','[]','project.$all.network.bandwidth','default',0,'2022-12-24 00:00:00.000','1d',0),
(280,'04a61e6ef04180ea4c97c917cbe77f93','2023-01-01 21:12:33.445','2023-01-01 21:12:34.915','[]','project.$all.network.bandwidth','default',0,'2022-12-25 00:00:00.000','1d',0),
(281,'c6920f28c3fe8ff89bcf7712a2055d83','2023-01-01 21:12:33.447','2023-01-01 21:12:34.917','[]','project.$all.network.bandwidth','default',0,'2022-12-26 00:00:00.000','1d',0),
(282,'9fe2f4036cb2ca74eb43da8696a9cf39','2023-01-01 21:12:33.448','2023-01-01 21:12:34.919','[]','project.$all.network.bandwidth','default',0,'2022-12-27 00:00:00.000','1d',0),
(283,'344e3c16517e8f66e3f344a6e8279d3f','2023-01-01 21:12:33.450','2023-01-01 21:12:34.921','[]','project.$all.network.bandwidth','default',0,'2022-12-28 00:00:00.000','1d',0),
(284,'d5a38c36010476b05ecd8315b81cd8c7','2023-01-01 21:12:33.452','2023-01-01 21:12:34.923','[]','project.$all.network.bandwidth','default',0,'2022-12-29 00:00:00.000','1d',0),
(285,'d1e32e94612874003278ff3f4c94776e','2023-01-01 21:12:33.454','2023-01-01 21:12:34.925','[]','project.$all.network.bandwidth','default',0,'2022-12-30 00:00:00.000','1d',0),
(286,'7045e470a6e265e578419b1e0b87b622','2023-01-01 21:12:33.456','2023-01-01 21:12:34.927','[]','project.$all.network.bandwidth','default',0,'2022-12-31 00:00:00.000','1d',0),
(287,'ebc12e31967dea2dd14b73e6ed7779f6','2023-01-01 21:12:33.458','2023-01-01 21:20:45.040','[]','project.$all.network.bandwidth','default',105575,'2023-01-01 00:00:00.000','1d',0),
(288,'b34c7780e31e0d4785150773a28adad4','2023-01-01 21:12:33.463','2023-01-01 21:12:34.933','[]','project.$all.network.inbound','default',0,'2022-12-02 00:00:00.000','1d',0),
(289,'5c1424922cad93915a24278c4bcefa18','2023-01-01 21:12:33.465','2023-01-01 21:12:34.936','[]','project.$all.network.inbound','default',0,'2022-12-03 00:00:00.000','1d',0),
(290,'0a2f216fea9e220ee7a22cbcc1c1c13f','2023-01-01 21:12:33.467','2023-01-01 21:12:34.938','[]','project.$all.network.inbound','default',0,'2022-12-04 00:00:00.000','1d',0),
(291,'ee49b63601cce7165829b72fe7a42496','2023-01-01 21:12:33.468','2023-01-01 21:12:34.940','[]','project.$all.network.inbound','default',0,'2022-12-05 00:00:00.000','1d',0),
(292,'df4de50a4241784f061bd2fd5c07e027','2023-01-01 21:12:33.473','2023-01-01 21:12:34.943','[]','project.$all.network.inbound','default',0,'2022-12-06 00:00:00.000','1d',0),
(293,'2c095824b083184f7715691ffb5fc8b1','2023-01-01 21:12:33.474','2023-01-01 21:12:34.946','[]','project.$all.network.inbound','default',0,'2022-12-07 00:00:00.000','1d',0),
(294,'bda736d0d874c2b83c1e3dd6bf731b9b','2023-01-01 21:12:33.475','2023-01-01 21:12:34.949','[]','project.$all.network.inbound','default',0,'2022-12-08 00:00:00.000','1d',0),
(295,'44757263d41418a2a1f9f3ca60bb0d29','2023-01-01 21:12:33.477','2023-01-01 21:12:34.952','[]','project.$all.network.inbound','default',0,'2022-12-09 00:00:00.000','1d',0),
(296,'34051d916f3b53aaf5a3dbf03cdd4301','2023-01-01 21:12:33.478','2023-01-01 21:12:34.955','[]','project.$all.network.inbound','default',0,'2022-12-10 00:00:00.000','1d',0),
(297,'1c87760a8677586936d6fae17df6edb6','2023-01-01 21:12:33.480','2023-01-01 21:12:34.958','[]','project.$all.network.inbound','default',0,'2022-12-11 00:00:00.000','1d',0),
(298,'823566cdd25e60300e34175b3c7b969e','2023-01-01 21:12:33.482','2023-01-01 21:12:34.962','[]','project.$all.network.inbound','default',0,'2022-12-12 00:00:00.000','1d',0),
(299,'b09330c6e9e5612b8a7b3a2860ae8dbd','2023-01-01 21:12:33.484','2023-01-01 21:12:34.965','[]','project.$all.network.inbound','default',0,'2022-12-13 00:00:00.000','1d',0),
(300,'a16be34b49ad15700fb872a17fe44136','2023-01-01 21:12:33.486','2023-01-01 21:12:34.969','[]','project.$all.network.inbound','default',0,'2022-12-14 00:00:00.000','1d',0),
(301,'559b52a59c3e7943b4b13f908880e464','2023-01-01 21:12:33.488','2023-01-01 21:12:34.971','[]','project.$all.network.inbound','default',0,'2022-12-15 00:00:00.000','1d',0),
(302,'80be4f8750e6cb5110bf94411ca20458','2023-01-01 21:12:33.491','2023-01-01 21:12:34.974','[]','project.$all.network.inbound','default',0,'2022-12-16 00:00:00.000','1d',0),
(303,'01bc39ce3cbcebb4034de4b4421d0c8e','2023-01-01 21:12:33.493','2023-01-01 21:12:34.977','[]','project.$all.network.inbound','default',0,'2022-12-17 00:00:00.000','1d',0),
(304,'36b29b4483baa33ab9d9d0bd29e9f17a','2023-01-01 21:12:33.495','2023-01-01 21:12:34.979','[]','project.$all.network.inbound','default',0,'2022-12-18 00:00:00.000','1d',0),
(305,'0aedbe3e93e39eb9c6abebbf88dfecac','2023-01-01 21:12:33.496','2023-01-01 21:12:34.982','[]','project.$all.network.inbound','default',0,'2022-12-19 00:00:00.000','1d',0),
(306,'d3161e4d8afbd1814deb118033feb962','2023-01-01 21:12:33.499','2023-01-01 21:12:34.985','[]','project.$all.network.inbound','default',0,'2022-12-20 00:00:00.000','1d',0),
(307,'c39d926335fd274ce66dee330b184afb','2023-01-01 21:12:33.501','2023-01-01 21:12:34.988','[]','project.$all.network.inbound','default',0,'2022-12-21 00:00:00.000','1d',0),
(308,'264e9b02d5ef54180f8a49283a7ae430','2023-01-01 21:12:33.502','2023-01-01 21:12:34.990','[]','project.$all.network.inbound','default',0,'2022-12-22 00:00:00.000','1d',0),
(309,'811a9eafa2ce6a18fcbe1289bab02a56','2023-01-01 21:12:33.504','2023-01-01 21:12:34.993','[]','project.$all.network.inbound','default',0,'2022-12-23 00:00:00.000','1d',0),
(310,'253809aeff817b18108f653b34845302','2023-01-01 21:12:33.505','2023-01-01 21:12:34.995','[]','project.$all.network.inbound','default',0,'2022-12-24 00:00:00.000','1d',0),
(311,'275d46c0942f2ebc5689de0a5ade0c41','2023-01-01 21:12:33.507','2023-01-01 21:12:34.997','[]','project.$all.network.inbound','default',0,'2022-12-25 00:00:00.000','1d',0),
(312,'00dbf5b9171db7341a992027c550ae1e','2023-01-01 21:12:33.509','2023-01-01 21:12:34.999','[]','project.$all.network.inbound','default',0,'2022-12-26 00:00:00.000','1d',0),
(313,'919e5d989ea2382fccaa745a3b8454e8','2023-01-01 21:12:33.510','2023-01-01 21:12:35.002','[]','project.$all.network.inbound','default',0,'2022-12-27 00:00:00.000','1d',0),
(314,'077929f44ce81324d9d0f94d2ed65786','2023-01-01 21:12:33.511','2023-01-01 21:12:35.004','[]','project.$all.network.inbound','default',0,'2022-12-28 00:00:00.000','1d',0),
(315,'e93d6901f83d48fb628d3fa773325167','2023-01-01 21:12:33.513','2023-01-01 21:12:35.006','[]','project.$all.network.inbound','default',0,'2022-12-29 00:00:00.000','1d',0),
(316,'352222d46b05588db56c68483b5770de','2023-01-01 21:12:33.515','2023-01-01 21:12:35.008','[]','project.$all.network.inbound','default',0,'2022-12-30 00:00:00.000','1d',0),
(317,'7652f4cc73ba54ec3410bd6378048865','2023-01-01 21:12:33.517','2023-01-01 21:12:35.010','[]','project.$all.network.inbound','default',0,'2022-12-31 00:00:00.000','1d',0),
(318,'fe1a22220e48312f5bea11d52802dddc','2023-01-01 21:12:33.518','2023-01-01 21:20:45.044','[]','project.$all.network.inbound','default',40535,'2023-01-01 00:00:00.000','1d',0),
(319,'c98a3db6e0c6239542df2079be37817b','2023-01-01 21:12:33.523','2023-01-01 21:12:35.016','[]','project.$all.network.outbound','default',0,'2022-12-02 00:00:00.000','1d',0),
(320,'001da5e143cd1fcea8224af0c7c917fb','2023-01-01 21:12:33.526','2023-01-01 21:12:35.018','[]','project.$all.network.outbound','default',0,'2022-12-03 00:00:00.000','1d',0),
(321,'1e6ece4eab90276ef3762f6f41f0753d','2023-01-01 21:12:33.527','2023-01-01 21:12:35.020','[]','project.$all.network.outbound','default',0,'2022-12-04 00:00:00.000','1d',0),
(322,'855e4933915012939b9f8047654469ef','2023-01-01 21:12:33.529','2023-01-01 21:12:35.022','[]','project.$all.network.outbound','default',0,'2022-12-05 00:00:00.000','1d',0),
(323,'901581118abfdf66d7bd196052e9388d','2023-01-01 21:12:33.530','2023-01-01 21:12:35.024','[]','project.$all.network.outbound','default',0,'2022-12-06 00:00:00.000','1d',0),
(324,'c04bb5b28e72852a65d5d56fb5e68ebb','2023-01-01 21:12:33.532','2023-01-01 21:12:35.025','[]','project.$all.network.outbound','default',0,'2022-12-07 00:00:00.000','1d',0),
(325,'f876a166ea7a2e5d7544fcf45c4b28fa','2023-01-01 21:12:33.533','2023-01-01 21:12:35.027','[]','project.$all.network.outbound','default',0,'2022-12-08 00:00:00.000','1d',0),
(326,'886aadd387c8b07912b53ca4c710982d','2023-01-01 21:12:33.534','2023-01-01 21:12:35.029','[]','project.$all.network.outbound','default',0,'2022-12-09 00:00:00.000','1d',0),
(327,'784af1dd128d5f7c10a63375e0a715d4','2023-01-01 21:12:33.536','2023-01-01 21:12:35.031','[]','project.$all.network.outbound','default',0,'2022-12-10 00:00:00.000','1d',0),
(328,'bd3b0beea79502c7708ab2dff0c382e0','2023-01-01 21:12:33.537','2023-01-01 21:12:35.032','[]','project.$all.network.outbound','default',0,'2022-12-11 00:00:00.000','1d',0),
(329,'ee6fe6fd0249298f4487e667538eb651','2023-01-01 21:12:33.539','2023-01-01 21:12:35.034','[]','project.$all.network.outbound','default',0,'2022-12-12 00:00:00.000','1d',0),
(330,'47a45ce389ec260dc06047613c08c0af','2023-01-01 21:12:33.541','2023-01-01 21:12:35.036','[]','project.$all.network.outbound','default',0,'2022-12-13 00:00:00.000','1d',0),
(331,'fb2ffed5b3336eef8cc4956d911c1ba7','2023-01-01 21:12:33.543','2023-01-01 21:12:35.038','[]','project.$all.network.outbound','default',0,'2022-12-14 00:00:00.000','1d',0),
(332,'6a18b0d32edefeb111504f26e2e6ec5a','2023-01-01 21:12:33.545','2023-01-01 21:12:35.040','[]','project.$all.network.outbound','default',0,'2022-12-15 00:00:00.000','1d',0),
(333,'f3e486dc9c4bf744b064a2065e08b80d','2023-01-01 21:12:33.547','2023-01-01 21:12:35.042','[]','project.$all.network.outbound','default',0,'2022-12-16 00:00:00.000','1d',0),
(334,'65f7c2931e65cbca0d63bd1fd4ecdec1','2023-01-01 21:12:33.549','2023-01-01 21:12:35.044','[]','project.$all.network.outbound','default',0,'2022-12-17 00:00:00.000','1d',0),
(335,'70e1efbad822f0c36a02c40d90624ca2','2023-01-01 21:12:33.551','2023-01-01 21:12:35.047','[]','project.$all.network.outbound','default',0,'2022-12-18 00:00:00.000','1d',0),
(336,'55e2a85758dde775ee6790b586a3158e','2023-01-01 21:12:33.553','2023-01-01 21:12:35.049','[]','project.$all.network.outbound','default',0,'2022-12-19 00:00:00.000','1d',0),
(337,'9cac1030f0dc667405c7d83778a350fe','2023-01-01 21:12:33.555','2023-01-01 21:12:35.051','[]','project.$all.network.outbound','default',0,'2022-12-20 00:00:00.000','1d',0),
(338,'6f6c166e56aed0e441c6cefd326ceb28','2023-01-01 21:12:33.557','2023-01-01 21:12:35.053','[]','project.$all.network.outbound','default',0,'2022-12-21 00:00:00.000','1d',0),
(339,'7cbe6fd9cae18e0932b1216ea567e552','2023-01-01 21:12:33.559','2023-01-01 21:12:35.055','[]','project.$all.network.outbound','default',0,'2022-12-22 00:00:00.000','1d',0),
(340,'89f3425caace0e7084ba22385b3075c8','2023-01-01 21:12:33.561','2023-01-01 21:12:35.057','[]','project.$all.network.outbound','default',0,'2022-12-23 00:00:00.000','1d',0),
(341,'392554c8aee796119a6f1786fa882a23','2023-01-01 21:12:33.564','2023-01-01 21:12:35.060','[]','project.$all.network.outbound','default',0,'2022-12-24 00:00:00.000','1d',0),
(342,'afe9fb3a356b2e0023a8a8a1fe9b315e','2023-01-01 21:12:33.567','2023-01-01 21:12:35.062','[]','project.$all.network.outbound','default',0,'2022-12-25 00:00:00.000','1d',0),
(343,'54463f7543a134bc677d8776e9c2e65d','2023-01-01 21:12:33.569','2023-01-01 21:12:35.064','[]','project.$all.network.outbound','default',0,'2022-12-26 00:00:00.000','1d',0),
(344,'3d7459692ce9b6bf31c9a87987e4db1e','2023-01-01 21:12:33.572','2023-01-01 21:12:35.066','[]','project.$all.network.outbound','default',0,'2022-12-27 00:00:00.000','1d',0),
(345,'8dfa3534b8e9e12f99776e5bb3dcfe6d','2023-01-01 21:12:33.574','2023-01-01 21:12:35.067','[]','project.$all.network.outbound','default',0,'2022-12-28 00:00:00.000','1d',0),
(346,'a522b52b5967cfcc87ca4e4a8f0fd645','2023-01-01 21:12:33.576','2023-01-01 21:12:35.069','[]','project.$all.network.outbound','default',0,'2022-12-29 00:00:00.000','1d',0),
(347,'ea9ffd79a2a5e950eb02d2fd179c219d','2023-01-01 21:12:33.578','2023-01-01 21:12:35.071','[]','project.$all.network.outbound','default',0,'2022-12-30 00:00:00.000','1d',0),
(348,'9f0535306a6f79abdc4aecf488423eab','2023-01-01 21:12:33.581','2023-01-01 21:12:35.073','[]','project.$all.network.outbound','default',0,'2022-12-31 00:00:00.000','1d',0),
(349,'27b822a1a88b469f0561d11f306c9c8e','2023-01-01 21:12:33.583','2023-01-01 21:20:45.049','[]','project.$all.network.outbound','default',65040,'2023-01-01 00:00:00.000','1d',0),
(350,'720a8a72b2ab17a1755020881391828f','2023-01-01 21:12:33.597','2023-01-01 21:12:35.087','[]','databases.$all.requests.create','default',0,'2022-12-02 00:00:00.000','1d',0),
(351,'504845101c18288868bc5892bf2cc2ee','2023-01-01 21:12:33.599','2023-01-01 21:12:35.090','[]','databases.$all.requests.create','default',0,'2022-12-03 00:00:00.000','1d',0),
(352,'2dfe406e7647c6fac5face3efdf772c1','2023-01-01 21:12:33.601','2023-01-01 21:12:35.092','[]','databases.$all.requests.create','default',0,'2022-12-04 00:00:00.000','1d',0),
(353,'d80a1c51fc9389a065d209a18af34594','2023-01-01 21:12:33.603','2023-01-01 21:12:35.093','[]','databases.$all.requests.create','default',0,'2022-12-05 00:00:00.000','1d',0),
(354,'e7bd2e7fcafb90eb713a3ae216815cf4','2023-01-01 21:12:33.605','2023-01-01 21:12:35.096','[]','databases.$all.requests.create','default',0,'2022-12-06 00:00:00.000','1d',0),
(355,'0cb2330c37e4603f347e9735ee724507','2023-01-01 21:12:33.607','2023-01-01 21:12:35.097','[]','databases.$all.requests.create','default',0,'2022-12-07 00:00:00.000','1d',0),
(356,'b3f84c683313d7645c4c6294dfb5c2e2','2023-01-01 21:12:33.609','2023-01-01 21:12:35.099','[]','databases.$all.requests.create','default',0,'2022-12-08 00:00:00.000','1d',0),
(357,'ef4895c74d82aac378b68afd1b7dee0a','2023-01-01 21:12:33.610','2023-01-01 21:12:35.102','[]','databases.$all.requests.create','default',0,'2022-12-09 00:00:00.000','1d',0),
(358,'3286c9ad6e0da25acd4306ca5e89784c','2023-01-01 21:12:33.614','2023-01-01 21:12:35.104','[]','databases.$all.requests.create','default',0,'2022-12-10 00:00:00.000','1d',0),
(359,'58ae5a23580c9b0b3e23231a8f5103ec','2023-01-01 21:12:33.615','2023-01-01 21:12:35.106','[]','databases.$all.requests.create','default',0,'2022-12-11 00:00:00.000','1d',0),
(360,'e4a0101f164bc19d7e2da8f3524b0ced','2023-01-01 21:12:33.617','2023-01-01 21:12:35.110','[]','databases.$all.requests.create','default',0,'2022-12-12 00:00:00.000','1d',0),
(361,'2ca9f39fb1919f77b92f8f3b1a24e920','2023-01-01 21:12:33.618','2023-01-01 21:12:35.112','[]','databases.$all.requests.create','default',0,'2022-12-13 00:00:00.000','1d',0),
(362,'679782d27416103c3bda66f3dda84cf2','2023-01-01 21:12:33.620','2023-01-01 21:12:35.115','[]','databases.$all.requests.create','default',0,'2022-12-14 00:00:00.000','1d',0),
(363,'2a9947c2a7388d77c3fa79deba9d0756','2023-01-01 21:12:33.621','2023-01-01 21:12:35.119','[]','databases.$all.requests.create','default',0,'2022-12-15 00:00:00.000','1d',0),
(364,'a86841a8ef27c63cb753bd9b1c55eb6f','2023-01-01 21:12:33.623','2023-01-01 21:12:35.121','[]','databases.$all.requests.create','default',0,'2022-12-16 00:00:00.000','1d',0),
(365,'021d6a346e837ed7bece585092fbe042','2023-01-01 21:12:33.624','2023-01-01 21:12:35.123','[]','databases.$all.requests.create','default',0,'2022-12-17 00:00:00.000','1d',0),
(366,'e6e4701f547938e201dd8b128e88f9a4','2023-01-01 21:12:33.626','2023-01-01 21:12:35.126','[]','databases.$all.requests.create','default',0,'2022-12-18 00:00:00.000','1d',0),
(367,'49368d47e834e577a30b6a96575a70ce','2023-01-01 21:12:33.628','2023-01-01 21:12:35.128','[]','databases.$all.requests.create','default',0,'2022-12-19 00:00:00.000','1d',0),
(368,'9f7928bc6151b7930d9d20d26796f0bb','2023-01-01 21:12:33.629','2023-01-01 21:12:35.131','[]','databases.$all.requests.create','default',0,'2022-12-20 00:00:00.000','1d',0),
(369,'0986f8059f274607d21088e822a94ccc','2023-01-01 21:12:33.631','2023-01-01 21:12:35.133','[]','databases.$all.requests.create','default',0,'2022-12-21 00:00:00.000','1d',0),
(370,'4627e7a8ed15e01106fe434447372b60','2023-01-01 21:12:33.632','2023-01-01 21:12:35.135','[]','databases.$all.requests.create','default',0,'2022-12-22 00:00:00.000','1d',0),
(371,'587d5094ef7f466bf7ca47a42fe3a48d','2023-01-01 21:12:33.634','2023-01-01 21:12:35.137','[]','databases.$all.requests.create','default',0,'2022-12-23 00:00:00.000','1d',0),
(372,'7d72cab2964042a9bb522ee534a2961e','2023-01-01 21:12:33.635','2023-01-01 21:12:35.139','[]','databases.$all.requests.create','default',0,'2022-12-24 00:00:00.000','1d',0),
(373,'ed63629dd1624d219c58296c22975fcb','2023-01-01 21:12:33.637','2023-01-01 21:12:35.142','[]','databases.$all.requests.create','default',0,'2022-12-25 00:00:00.000','1d',0),
(374,'186a7a12346be9cf262d8e4a3997bc73','2023-01-01 21:12:33.639','2023-01-01 21:12:35.144','[]','databases.$all.requests.create','default',0,'2022-12-26 00:00:00.000','1d',0),
(375,'2670808641d04ba0007b705d6dd360ae','2023-01-01 21:12:33.641','2023-01-01 21:12:35.147','[]','databases.$all.requests.create','default',0,'2022-12-27 00:00:00.000','1d',0),
(376,'9fc659cd37db06a379e63a7aae6d747e','2023-01-01 21:12:33.644','2023-01-01 21:12:35.149','[]','databases.$all.requests.create','default',0,'2022-12-28 00:00:00.000','1d',0),
(377,'9631bb720d06bbd0d0cc495b9800852e','2023-01-01 21:12:33.647','2023-01-01 21:12:35.152','[]','databases.$all.requests.create','default',0,'2022-12-29 00:00:00.000','1d',0),
(378,'e1ea163181be09a9cbd3e1b646f6657b','2023-01-01 21:12:33.650','2023-01-01 21:12:35.154','[]','databases.$all.requests.create','default',0,'2022-12-30 00:00:00.000','1d',0),
(379,'56e473e7a819b7521f32ca5e18a930ce','2023-01-01 21:12:33.652','2023-01-01 21:12:35.156','[]','databases.$all.requests.create','default',0,'2022-12-31 00:00:00.000','1d',0),
(380,'1a30e7811c3a8e1c1c0615d9f221b43e','2023-01-01 21:12:33.655','2023-01-01 21:20:45.062','[]','databases.$all.requests.create','default',1,'2023-01-01 00:00:00.000','1d',0),
(381,'11a74f9bb65039b28153dca526881849','2023-01-01 21:12:33.662','2023-01-01 21:12:35.163','[]','databases.$all.requests.read','default',0,'2022-12-02 00:00:00.000','1d',0),
(382,'73e90e00e64c04e577e465c8bebe7f26','2023-01-01 21:12:33.665','2023-01-01 21:12:35.166','[]','databases.$all.requests.read','default',0,'2022-12-03 00:00:00.000','1d',0),
(383,'cf19c3fa1991cd7837304cc84b1d6631','2023-01-01 21:12:33.668','2023-01-01 21:12:35.168','[]','databases.$all.requests.read','default',0,'2022-12-04 00:00:00.000','1d',0),
(384,'7b206d1f4072dc2bbda45c91cad928d0','2023-01-01 21:12:33.671','2023-01-01 21:12:35.170','[]','databases.$all.requests.read','default',0,'2022-12-05 00:00:00.000','1d',0),
(385,'3b65c6be7a42fadc34fdd89850b7b846','2023-01-01 21:12:33.673','2023-01-01 21:12:35.173','[]','databases.$all.requests.read','default',0,'2022-12-06 00:00:00.000','1d',0),
(386,'ff77336c6b40f7d7806a40142febbbea','2023-01-01 21:12:33.678','2023-01-01 21:12:35.175','[]','databases.$all.requests.read','default',0,'2022-12-07 00:00:00.000','1d',0),
(387,'53cd97c6f411d7ce0d6accb8e48f52fe','2023-01-01 21:12:33.683','2023-01-01 21:12:35.177','[]','databases.$all.requests.read','default',0,'2022-12-08 00:00:00.000','1d',0),
(388,'c2ee3267ed54949ca1f222ea1a185c01','2023-01-01 21:12:33.686','2023-01-01 21:12:35.179','[]','databases.$all.requests.read','default',0,'2022-12-09 00:00:00.000','1d',0),
(389,'0a06c8159d4b12571f8dc92cab7cf270','2023-01-01 21:12:33.689','2023-01-01 21:12:35.182','[]','databases.$all.requests.read','default',0,'2022-12-10 00:00:00.000','1d',0),
(390,'31eac5de1bdf9383334bbfd603c5df48','2023-01-01 21:12:33.691','2023-01-01 21:12:35.184','[]','databases.$all.requests.read','default',0,'2022-12-11 00:00:00.000','1d',0),
(391,'e76bda72ba1f4bf83f26533ed0a682e6','2023-01-01 21:12:33.694','2023-01-01 21:12:35.186','[]','databases.$all.requests.read','default',0,'2022-12-12 00:00:00.000','1d',0),
(392,'1c3b3a1ffe6b86aeff7e3e024186abaf','2023-01-01 21:12:33.696','2023-01-01 21:12:35.188','[]','databases.$all.requests.read','default',0,'2022-12-13 00:00:00.000','1d',0),
(393,'41113d8eddb9ae2ed9f10146e6f63cfe','2023-01-01 21:12:33.698','2023-01-01 21:12:35.190','[]','databases.$all.requests.read','default',0,'2022-12-14 00:00:00.000','1d',0),
(394,'95f03c3bc860a8a342817875b2b82e74','2023-01-01 21:12:33.700','2023-01-01 21:12:35.192','[]','databases.$all.requests.read','default',0,'2022-12-15 00:00:00.000','1d',0),
(395,'30d231eb84a10ea6e8dc2fba83bddb99','2023-01-01 21:12:33.702','2023-01-01 21:12:35.194','[]','databases.$all.requests.read','default',0,'2022-12-16 00:00:00.000','1d',0),
(396,'c9d3d273389f7547c05bb6048461cc45','2023-01-01 21:12:33.704','2023-01-01 21:12:35.196','[]','databases.$all.requests.read','default',0,'2022-12-17 00:00:00.000','1d',0),
(397,'9ed5a16dd742c0100ce8c2cd0a50ff88','2023-01-01 21:12:33.706','2023-01-01 21:12:35.198','[]','databases.$all.requests.read','default',0,'2022-12-18 00:00:00.000','1d',0),
(398,'ea82f6835a32c39560293bd9cb1ad9cf','2023-01-01 21:12:33.708','2023-01-01 21:12:35.200','[]','databases.$all.requests.read','default',0,'2022-12-19 00:00:00.000','1d',0),
(399,'427604cacc0b1e7bb2fdc0bbe7e05be4','2023-01-01 21:12:33.709','2023-01-01 21:12:35.202','[]','databases.$all.requests.read','default',0,'2022-12-20 00:00:00.000','1d',0),
(400,'cdf6ca6318fde76757b11445fccc749a','2023-01-01 21:12:33.712','2023-01-01 21:12:35.204','[]','databases.$all.requests.read','default',0,'2022-12-21 00:00:00.000','1d',0),
(401,'216083209eb25b4fa86a7400a7fe21c6','2023-01-01 21:12:33.714','2023-01-01 21:12:35.206','[]','databases.$all.requests.read','default',0,'2022-12-22 00:00:00.000','1d',0),
(402,'d1deb1f374f6220f6cca12456aec4d35','2023-01-01 21:12:33.716','2023-01-01 21:12:35.207','[]','databases.$all.requests.read','default',0,'2022-12-23 00:00:00.000','1d',0),
(403,'ca5ba19f59cf008e2a92fcb06ee3521c','2023-01-01 21:12:33.717','2023-01-01 21:12:35.210','[]','databases.$all.requests.read','default',0,'2022-12-24 00:00:00.000','1d',0),
(404,'e84f1fda63ffa39b1f246eb0fe234a98','2023-01-01 21:12:33.719','2023-01-01 21:12:35.213','[]','databases.$all.requests.read','default',0,'2022-12-25 00:00:00.000','1d',0),
(405,'5481b315ebf0de2e5ed513e7e2677ff8','2023-01-01 21:12:33.721','2023-01-01 21:12:35.216','[]','databases.$all.requests.read','default',0,'2022-12-26 00:00:00.000','1d',0),
(406,'55fb0cb65400692b78289df3216d409e','2023-01-01 21:12:33.723','2023-01-01 21:12:35.218','[]','databases.$all.requests.read','default',0,'2022-12-27 00:00:00.000','1d',0),
(407,'dba7d9e10e88029f937a16072c75d2b5','2023-01-01 21:12:33.724','2023-01-01 21:12:35.221','[]','databases.$all.requests.read','default',0,'2022-12-28 00:00:00.000','1d',0),
(408,'632b08d5899a170ce73f7f65338f0be4','2023-01-01 21:12:33.726','2023-01-01 21:12:35.224','[]','databases.$all.requests.read','default',0,'2022-12-29 00:00:00.000','1d',0),
(409,'74c772e05cb5c963d6c0946e900dad01','2023-01-01 21:12:33.728','2023-01-01 21:12:35.226','[]','databases.$all.requests.read','default',0,'2022-12-30 00:00:00.000','1d',0),
(410,'83cdc42a99560fd3059fe4cead6c6f6b','2023-01-01 21:12:33.729','2023-01-01 21:12:35.229','[]','databases.$all.requests.read','default',0,'2022-12-31 00:00:00.000','1d',0),
(411,'c1b32699085e3e8a83265adff56748c8','2023-01-01 21:12:33.731','2023-01-01 21:20:45.065','[]','databases.$all.requests.read','default',5,'2023-01-01 00:00:00.000','1d',0),
(412,'e90df3f20c94e51a6aaef4957c3b8f74','2023-01-01 21:12:33.755','2023-01-01 21:12:35.244','[]','collections.$all.requests.read','default',0,'2022-12-02 00:00:00.000','1d',0),
(413,'6dd73b2bdd2a56c945364993200fd7e2','2023-01-01 21:12:33.757','2023-01-01 21:12:35.246','[]','collections.$all.requests.read','default',0,'2022-12-03 00:00:00.000','1d',0),
(414,'0c9ae33ec1bd931ed7400ec504c5a2d8','2023-01-01 21:12:33.760','2023-01-01 21:12:35.248','[]','collections.$all.requests.read','default',0,'2022-12-04 00:00:00.000','1d',0),
(415,'b72b9992f5d8fa33fcffb79a3903b8c4','2023-01-01 21:12:33.763','2023-01-01 21:12:35.249','[]','collections.$all.requests.read','default',0,'2022-12-05 00:00:00.000','1d',0),
(416,'1982c0adcb69eca0c5d0504d6615b011','2023-01-01 21:12:33.765','2023-01-01 21:12:35.251','[]','collections.$all.requests.read','default',0,'2022-12-06 00:00:00.000','1d',0),
(417,'c5016c5521cad4359d10d35ed0959fa5','2023-01-01 21:12:33.768','2023-01-01 21:12:35.253','[]','collections.$all.requests.read','default',0,'2022-12-07 00:00:00.000','1d',0),
(418,'f6599701661ea5283bc9c898d4503bb3','2023-01-01 21:12:33.770','2023-01-01 21:12:35.255','[]','collections.$all.requests.read','default',0,'2022-12-08 00:00:00.000','1d',0),
(419,'3b816565c0ad88215dcc0f70a1b3e091','2023-01-01 21:12:33.772','2023-01-01 21:12:35.258','[]','collections.$all.requests.read','default',0,'2022-12-09 00:00:00.000','1d',0),
(420,'1e6c049265e007fa10cc07fa60642d01','2023-01-01 21:12:33.775','2023-01-01 21:12:35.260','[]','collections.$all.requests.read','default',0,'2022-12-10 00:00:00.000','1d',0),
(421,'7426a86317b3affddb57cf0f95827e40','2023-01-01 21:12:33.778','2023-01-01 21:12:35.262','[]','collections.$all.requests.read','default',0,'2022-12-11 00:00:00.000','1d',0),
(422,'1ac4ea55ae7735465e084611ff05a6cf','2023-01-01 21:12:33.781','2023-01-01 21:12:35.264','[]','collections.$all.requests.read','default',0,'2022-12-12 00:00:00.000','1d',0),
(423,'63eef18ac15d95b880b08d09226f5368','2023-01-01 21:12:33.784','2023-01-01 21:12:35.266','[]','collections.$all.requests.read','default',0,'2022-12-13 00:00:00.000','1d',0),
(424,'9ea53163f938ff92cc01f82030c6a9ad','2023-01-01 21:12:33.786','2023-01-01 21:12:35.268','[]','collections.$all.requests.read','default',0,'2022-12-14 00:00:00.000','1d',0),
(425,'af76bb954baeda52ecd3a6ad66250f71','2023-01-01 21:12:33.789','2023-01-01 21:12:35.270','[]','collections.$all.requests.read','default',0,'2022-12-15 00:00:00.000','1d',0),
(426,'a852e3b579dc5b611f8860b919645ae6','2023-01-01 21:12:33.791','2023-01-01 21:12:35.272','[]','collections.$all.requests.read','default',0,'2022-12-16 00:00:00.000','1d',0),
(427,'d9abef292b22488789e17a22ce7fe4a2','2023-01-01 21:12:33.794','2023-01-01 21:12:35.274','[]','collections.$all.requests.read','default',0,'2022-12-17 00:00:00.000','1d',0),
(428,'43744eaaffef52d0b8b225950decb85f','2023-01-01 21:12:33.796','2023-01-01 21:12:35.276','[]','collections.$all.requests.read','default',0,'2022-12-18 00:00:00.000','1d',0),
(429,'771cdc89a0f9900d02939ae796ee10eb','2023-01-01 21:12:33.798','2023-01-01 21:12:35.278','[]','collections.$all.requests.read','default',0,'2022-12-19 00:00:00.000','1d',0),
(430,'3ed7bbafa4396111b2c16659f17261c1','2023-01-01 21:12:33.800','2023-01-01 21:12:35.280','[]','collections.$all.requests.read','default',0,'2022-12-20 00:00:00.000','1d',0),
(431,'ad5e8ff0ca8885079cce3290b33a817e','2023-01-01 21:12:33.801','2023-01-01 21:12:35.283','[]','collections.$all.requests.read','default',0,'2022-12-21 00:00:00.000','1d',0),
(432,'0475837547f0e0f2f47da3d5dcdcd746','2023-01-01 21:12:33.803','2023-01-01 21:12:35.285','[]','collections.$all.requests.read','default',0,'2022-12-22 00:00:00.000','1d',0),
(433,'1dbe4a2d02924ca76cdebab886e9d8fe','2023-01-01 21:12:33.805','2023-01-01 21:12:35.288','[]','collections.$all.requests.read','default',0,'2022-12-23 00:00:00.000','1d',0),
(434,'1db07d5110d2aacbb7859d4bd5f9335c','2023-01-01 21:12:33.806','2023-01-01 21:12:35.290','[]','collections.$all.requests.read','default',0,'2022-12-24 00:00:00.000','1d',0),
(435,'ed29449a213b821250db9764477034e6','2023-01-01 21:12:33.808','2023-01-01 21:12:35.293','[]','collections.$all.requests.read','default',0,'2022-12-25 00:00:00.000','1d',0),
(436,'de7151b551ad51540fbabc3b5b194345','2023-01-01 21:12:33.810','2023-01-01 21:12:35.296','[]','collections.$all.requests.read','default',0,'2022-12-26 00:00:00.000','1d',0),
(437,'acc77c263126d4ecb13c1534a632e1c3','2023-01-01 21:12:33.812','2023-01-01 21:12:35.298','[]','collections.$all.requests.read','default',0,'2022-12-27 00:00:00.000','1d',0),
(438,'ca134e4aaaafe53f72a51ad011a40d81','2023-01-01 21:12:33.814','2023-01-01 21:12:35.300','[]','collections.$all.requests.read','default',0,'2022-12-28 00:00:00.000','1d',0),
(439,'2580e0afe7312f071fb40397a9f35907','2023-01-01 21:12:33.816','2023-01-01 21:12:35.303','[]','collections.$all.requests.read','default',0,'2022-12-29 00:00:00.000','1d',0),
(440,'489bc654c7141ba087ea9628ab230e5a','2023-01-01 21:12:33.842','2023-01-01 21:12:35.305','[]','collections.$all.requests.read','default',0,'2022-12-30 00:00:00.000','1d',0),
(441,'e233a62612888185f6f25a816a7eedf5','2023-01-01 21:12:33.845','2023-01-01 21:12:35.307','[]','collections.$all.requests.read','default',0,'2022-12-31 00:00:00.000','1d',0),
(442,'effbd03b43e66c51ac380748aa026bce','2023-01-01 21:12:33.849','2023-01-01 21:20:45.075','[]','collections.$all.requests.read','default',19,'2023-01-01 00:00:00.000','1d',0),
(443,'870243dd9c4ee0d28e2e22b8a8dab560','2023-01-01 21:12:33.871','2023-01-01 21:12:35.328','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-02 00:00:00.000','1d',0),
(444,'9bf0ef8be7ca244fc0252035b4167b38','2023-01-01 21:12:33.873','2023-01-01 21:12:35.330','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-03 00:00:00.000','1d',0),
(445,'3bd30432d5287ffc57ef26a046555b83','2023-01-01 21:12:33.876','2023-01-01 21:12:35.333','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-04 00:00:00.000','1d',0),
(446,'4ae42d84f3bae6ad661853206366c48b','2023-01-01 21:12:33.879','2023-01-01 21:12:35.336','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-05 00:00:00.000','1d',0),
(447,'9cb95d8648dd8778496cb8490f75e96f','2023-01-01 21:12:33.881','2023-01-01 21:12:35.338','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-06 00:00:00.000','1d',0),
(448,'faf46cc26345ad39e4e7d03ef058f760','2023-01-01 21:12:33.884','2023-01-01 21:12:35.344','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-07 00:00:00.000','1d',0),
(449,'906a576f4b4a67bbc2c4549ffefa9490','2023-01-01 21:12:33.886','2023-01-01 21:12:35.346','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-08 00:00:00.000','1d',0),
(450,'16c7ed6f97266571a5e05c20f71e5dc0','2023-01-01 21:12:33.889','2023-01-01 21:12:35.348','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-09 00:00:00.000','1d',0),
(451,'275377e0db2d66e3c6c1e5934858c5ef','2023-01-01 21:12:33.891','2023-01-01 21:12:35.351','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-10 00:00:00.000','1d',0),
(452,'3d392ac12bc86ba6c8d0b6a002769113','2023-01-01 21:12:33.896','2023-01-01 21:12:35.353','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-11 00:00:00.000','1d',0),
(453,'220be93255c291fe30355a584eb5651d','2023-01-01 21:12:33.898','2023-01-01 21:12:35.355','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-12 00:00:00.000','1d',0),
(454,'4561409aa45f7b9dff19b87c0ef0b6b0','2023-01-01 21:12:33.900','2023-01-01 21:12:35.357','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-13 00:00:00.000','1d',0),
(455,'490e533b7569cfc50505fbbec4acce0b','2023-01-01 21:12:33.902','2023-01-01 21:12:35.359','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-14 00:00:00.000','1d',0),
(456,'f0775798bb7550e53360d95e598618a2','2023-01-01 21:12:33.904','2023-01-01 21:12:35.362','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-15 00:00:00.000','1d',0),
(457,'dc1026d652f9dd2646b845a13f5cce01','2023-01-01 21:12:33.905','2023-01-01 21:12:35.364','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-16 00:00:00.000','1d',0),
(458,'d734cea2fea57cbec36e218f31aa8a6b','2023-01-01 21:12:33.940','2023-01-01 21:12:35.366','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-17 00:00:00.000','1d',0),
(459,'d79ca5b688f2369c439592a9752ebce2','2023-01-01 21:12:33.944','2023-01-01 21:12:35.369','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-18 00:00:00.000','1d',0),
(460,'c6bd540b6a24fb1b7e071a51baa1ec8e','2023-01-01 21:12:33.946','2023-01-01 21:12:35.371','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-19 00:00:00.000','1d',0),
(461,'4b024b7d0f2ec3ece4e1aa4bc44a2ceb','2023-01-01 21:12:33.949','2023-01-01 21:12:35.373','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-20 00:00:00.000','1d',0),
(462,'38fad15d1d89d2d9b6ea08dd4800d833','2023-01-01 21:12:33.951','2023-01-01 21:12:35.375','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-21 00:00:00.000','1d',0),
(463,'c98e7a329a9260eaea3aa367df7e28c0','2023-01-01 21:12:33.956','2023-01-01 21:12:35.377','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-22 00:00:00.000','1d',0),
(464,'647024624f9ae83a12e0164d4fb8a2de','2023-01-01 21:12:33.958','2023-01-01 21:12:35.379','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-23 00:00:00.000','1d',0),
(465,'3ec1b098ab78d5bc7d7820204a9d3f77','2023-01-01 21:12:33.961','2023-01-01 21:12:35.381','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-24 00:00:00.000','1d',0),
(466,'07a8fa26558a05816d4dff593a754052','2023-01-01 21:12:33.965','2023-01-01 21:12:35.383','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-25 00:00:00.000','1d',0),
(467,'d41bbe6434a9c676b464bce647005583','2023-01-01 21:12:33.969','2023-01-01 21:12:35.385','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-26 00:00:00.000','1d',0),
(468,'bb0e24d823e36deb7e74e03193cf560a','2023-01-01 21:12:33.972','2023-01-01 21:12:35.387','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-27 00:00:00.000','1d',0),
(469,'f25da63b07244083e9ca0a74031bda72','2023-01-01 21:12:33.974','2023-01-01 21:12:35.389','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-28 00:00:00.000','1d',0),
(470,'324bd7002c0782c2b27c001a9aa0ca2d','2023-01-01 21:12:33.977','2023-01-01 21:12:35.391','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-29 00:00:00.000','1d',0),
(471,'c4dada1272333e948374f7c4a291cccd','2023-01-01 21:12:33.979','2023-01-01 21:12:35.393','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-30 00:00:00.000','1d',0),
(472,'e7ee80afb7362c71aae3f05089e709f3','2023-01-01 21:12:33.981','2023-01-01 21:12:35.394','[]','collections.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-31 00:00:00.000','1d',0),
(473,'0eac5bfc626b403125e0121d93c8d715','2023-01-01 21:12:33.984','2023-01-01 21:20:45.162','[]','collections.63b1f73a5da8233847c0.requests.read','default',19,'2023-01-01 00:00:00.000','1d',0),
(474,'ab663407cb5f6c619a0d998f4553a3f0','2023-01-01 21:12:34.217','2023-01-01 21:12:35.476','[]','databases.$all.count.total','default',0,'2022-12-02 00:00:00.000','1d',0),
(475,'b1b32c79c17ce7809a460752dcf97f1c','2023-01-01 21:12:34.220','2023-01-01 21:12:35.478','[]','databases.$all.count.total','default',0,'2022-12-03 00:00:00.000','1d',0),
(476,'1817287e8272def157c68c666e14cc56','2023-01-01 21:12:34.223','2023-01-01 21:12:35.480','[]','databases.$all.count.total','default',0,'2022-12-04 00:00:00.000','1d',0),
(477,'8bdab1fe52a1b47761715723333cfe36','2023-01-01 21:12:34.225','2023-01-01 21:12:35.482','[]','databases.$all.count.total','default',0,'2022-12-05 00:00:00.000','1d',0),
(478,'de007f1ab5a2231adc496895d9199bd1','2023-01-01 21:12:34.227','2023-01-01 21:12:35.485','[]','databases.$all.count.total','default',0,'2022-12-06 00:00:00.000','1d',0),
(479,'c5199e29d6608d55fd5496ab2e4d7286','2023-01-01 21:12:34.229','2023-01-01 21:12:35.487','[]','databases.$all.count.total','default',0,'2022-12-07 00:00:00.000','1d',0),
(480,'fe8f5fc62e7111f6115384f8644c6dbb','2023-01-01 21:12:34.230','2023-01-01 21:12:35.489','[]','databases.$all.count.total','default',0,'2022-12-08 00:00:00.000','1d',0),
(481,'80188e7cdefd515c5cb326055b379ff4','2023-01-01 21:12:34.232','2023-01-01 21:12:35.491','[]','databases.$all.count.total','default',0,'2022-12-09 00:00:00.000','1d',0),
(482,'d4ef86bd8d6796b5b4cdaab3da4c8895','2023-01-01 21:12:34.235','2023-01-01 21:12:35.493','[]','databases.$all.count.total','default',0,'2022-12-10 00:00:00.000','1d',0),
(483,'b78425bf0d328835a7b5788f7a979d90','2023-01-01 21:12:34.239','2023-01-01 21:12:35.495','[]','databases.$all.count.total','default',0,'2022-12-11 00:00:00.000','1d',0),
(484,'d9f2a23b47ca633cb0b853802692f8c9','2023-01-01 21:12:34.245','2023-01-01 21:12:35.497','[]','databases.$all.count.total','default',0,'2022-12-12 00:00:00.000','1d',0),
(485,'2a4200cd7fd55dc6fd150c1ba55ff018','2023-01-01 21:12:34.249','2023-01-01 21:12:35.499','[]','databases.$all.count.total','default',0,'2022-12-13 00:00:00.000','1d',0),
(486,'78dbd4ce5c26faaf80252f2e9c7486d0','2023-01-01 21:12:34.253','2023-01-01 21:12:35.501','[]','databases.$all.count.total','default',0,'2022-12-14 00:00:00.000','1d',0),
(487,'2e10a904ec50ae269c9e63019e2aed06','2023-01-01 21:12:34.259','2023-01-01 21:12:35.503','[]','databases.$all.count.total','default',0,'2022-12-15 00:00:00.000','1d',0),
(488,'a888bc7cbabb2db02d6ed417fddd38e7','2023-01-01 21:12:34.264','2023-01-01 21:12:35.505','[]','databases.$all.count.total','default',0,'2022-12-16 00:00:00.000','1d',0),
(489,'50ba93f5e5f0745592cb2c482e88615e','2023-01-01 21:12:34.268','2023-01-01 21:12:35.507','[]','databases.$all.count.total','default',0,'2022-12-17 00:00:00.000','1d',0),
(490,'34b26a7c9bd6426cb0ec80d88eb7c9bd','2023-01-01 21:12:34.272','2023-01-01 21:12:35.509','[]','databases.$all.count.total','default',0,'2022-12-18 00:00:00.000','1d',0),
(491,'571a6b8037f004adf0fffeb02aae52a3','2023-01-01 21:12:34.276','2023-01-01 21:12:35.511','[]','databases.$all.count.total','default',0,'2022-12-19 00:00:00.000','1d',0),
(492,'d08827192849f345375f7c1543c09b4d','2023-01-01 21:12:34.279','2023-01-01 21:12:35.513','[]','databases.$all.count.total','default',0,'2022-12-20 00:00:00.000','1d',0),
(493,'aca97ca9a34effe6d287d412507d7bb7','2023-01-01 21:12:34.282','2023-01-01 21:12:35.515','[]','databases.$all.count.total','default',0,'2022-12-21 00:00:00.000','1d',0),
(494,'917d806696d22c7f6448aad169569580','2023-01-01 21:12:34.284','2023-01-01 21:12:35.517','[]','databases.$all.count.total','default',0,'2022-12-22 00:00:00.000','1d',0),
(495,'362e65686b11d58f957f7a0097fbc2e1','2023-01-01 21:12:34.286','2023-01-01 21:12:35.519','[]','databases.$all.count.total','default',0,'2022-12-23 00:00:00.000','1d',0),
(496,'6a1c5be0f675004828cf84e6ca698fce','2023-01-01 21:12:34.288','2023-01-01 21:12:35.521','[]','databases.$all.count.total','default',0,'2022-12-24 00:00:00.000','1d',0),
(497,'f2602f5929785961777bdfa6bfe6f2ec','2023-01-01 21:12:34.290','2023-01-01 21:12:35.523','[]','databases.$all.count.total','default',0,'2022-12-25 00:00:00.000','1d',0),
(498,'60434c4a2756f1cd0e6492499e55755c','2023-01-01 21:12:34.293','2023-01-01 21:12:35.525','[]','databases.$all.count.total','default',0,'2022-12-26 00:00:00.000','1d',0),
(499,'aa4760e0498352c358b2b04c73184c77','2023-01-01 21:12:34.296','2023-01-01 21:12:35.527','[]','databases.$all.count.total','default',0,'2022-12-27 00:00:00.000','1d',0),
(500,'aff155abed12ef1dce6907be963c8c7d','2023-01-01 21:12:34.297','2023-01-01 21:12:35.529','[]','databases.$all.count.total','default',0,'2022-12-28 00:00:00.000','1d',0),
(501,'7bb48408d4839d780e472bcb101eb586','2023-01-01 21:12:34.299','2023-01-01 21:12:35.531','[]','databases.$all.count.total','default',0,'2022-12-29 00:00:00.000','1d',0),
(502,'5f1a5c2e6b503ae7fb1a7fda3cbfcacc','2023-01-01 21:12:34.301','2023-01-01 21:12:35.533','[]','databases.$all.count.total','default',0,'2022-12-30 00:00:00.000','1d',0),
(503,'f0440f69d329e12bca1ea24f0037a849','2023-01-01 21:12:34.302','2023-01-01 21:12:35.534','[]','databases.$all.count.total','default',0,'2022-12-31 00:00:00.000','1d',0),
(504,'4527bef99ab560db68add5d09fd8ef98','2023-01-01 21:12:34.304','2023-01-01 21:20:45.361','[]','databases.$all.count.total','default',1,'2023-01-01 00:00:00.000','1d',0),
(505,'971885c21304a6083881230dae1d691f','2023-01-01 21:13:04.414','2023-01-01 21:13:05.655','[]','collections.$all.requests.create','default',0,'2022-12-31 21:00:00.000','1h',0),
(506,'c01a6e924b0da88fd2d0bafc990ef659','2023-01-01 21:13:04.416','2023-01-01 21:13:05.658','[]','collections.$all.requests.create','default',0,'2022-12-31 22:00:00.000','1h',0),
(507,'2a23ddfdda967490df399dcd02a5aaf8','2023-01-01 21:13:04.441','2023-01-01 21:13:05.660','[]','collections.$all.requests.create','default',0,'2022-12-31 23:00:00.000','1h',0),
(508,'1f3eff037a67b4a28799356d082a2313','2023-01-01 21:13:04.442','2023-01-01 21:13:05.662','[]','collections.$all.requests.create','default',0,'2023-01-01 00:00:00.000','1h',0),
(509,'99df91493ff837ec6c4758eba506a571','2023-01-01 21:13:04.444','2023-01-01 21:13:05.665','[]','collections.$all.requests.create','default',0,'2023-01-01 01:00:00.000','1h',0),
(510,'33f1c1f112d7494af7533b41f853a151','2023-01-01 21:13:04.446','2023-01-01 21:13:05.667','[]','collections.$all.requests.create','default',0,'2023-01-01 02:00:00.000','1h',0),
(511,'dc5d7865936663b5fb4b8ac198a2acc0','2023-01-01 21:13:04.448','2023-01-01 21:13:05.670','[]','collections.$all.requests.create','default',0,'2023-01-01 03:00:00.000','1h',0),
(512,'3982df27c15193b51a9990b33c93f72c','2023-01-01 21:13:04.449','2023-01-01 21:13:05.672','[]','collections.$all.requests.create','default',0,'2023-01-01 04:00:00.000','1h',0),
(513,'1133b2e67add9f2cb88eb7f3577d3aca','2023-01-01 21:13:04.451','2023-01-01 21:13:05.675','[]','collections.$all.requests.create','default',0,'2023-01-01 05:00:00.000','1h',0),
(514,'bfbbc4cdc30977993cfd4b0f128dea2d','2023-01-01 21:13:04.452','2023-01-01 21:13:05.677','[]','collections.$all.requests.create','default',0,'2023-01-01 06:00:00.000','1h',0),
(515,'2d8a5454a1fbc7b770953dbe43d4cb27','2023-01-01 21:13:04.454','2023-01-01 21:13:05.680','[]','collections.$all.requests.create','default',0,'2023-01-01 07:00:00.000','1h',0),
(516,'f1782562f25137ec20dc012abbef59e8','2023-01-01 21:13:04.456','2023-01-01 21:13:05.741','[]','collections.$all.requests.create','default',0,'2023-01-01 08:00:00.000','1h',0),
(517,'a754dfe977be842ad1e23a53c64b32d6','2023-01-01 21:13:04.458','2023-01-01 21:13:05.744','[]','collections.$all.requests.create','default',0,'2023-01-01 09:00:00.000','1h',0),
(518,'c63376967c518f0836fa838fe5100426','2023-01-01 21:13:04.460','2023-01-01 21:13:05.748','[]','collections.$all.requests.create','default',0,'2023-01-01 10:00:00.000','1h',0),
(519,'0fbf89e81660b48e010d96b4e88fb7eb','2023-01-01 21:13:04.462','2023-01-01 21:13:05.751','[]','collections.$all.requests.create','default',0,'2023-01-01 11:00:00.000','1h',0),
(520,'27fdc293649188404e419a1131c0125f','2023-01-01 21:13:04.463','2023-01-01 21:13:05.754','[]','collections.$all.requests.create','default',0,'2023-01-01 12:00:00.000','1h',0),
(521,'7599051a09e04e03995a970188dce418','2023-01-01 21:13:04.470','2023-01-01 21:13:05.757','[]','collections.$all.requests.create','default',0,'2023-01-01 13:00:00.000','1h',0),
(522,'8f9dcb63586c9375fd9bc7a7fd2c1d11','2023-01-01 21:13:04.471','2023-01-01 21:13:05.760','[]','collections.$all.requests.create','default',0,'2023-01-01 14:00:00.000','1h',0),
(523,'4c33ce12ac02a173c68c0f30a326ac07','2023-01-01 21:13:04.472','2023-01-01 21:13:05.763','[]','collections.$all.requests.create','default',0,'2023-01-01 15:00:00.000','1h',0),
(524,'4265e864ab5e7eeb841918d519eecef9','2023-01-01 21:13:04.476','2023-01-01 21:13:05.765','[]','collections.$all.requests.create','default',0,'2023-01-01 16:00:00.000','1h',0),
(525,'7fdb85d575a7729a6e40813271d6ede5','2023-01-01 21:13:04.478','2023-01-01 21:13:05.768','[]','collections.$all.requests.create','default',0,'2023-01-01 17:00:00.000','1h',0),
(526,'260d88618d3be153963f433eb8192aba','2023-01-01 21:13:04.479','2023-01-01 21:13:05.770','[]','collections.$all.requests.create','default',0,'2023-01-01 18:00:00.000','1h',0),
(527,'5de588ea74cfb24887898b086f4e01e5','2023-01-01 21:13:04.481','2023-01-01 21:13:05.774','[]','collections.$all.requests.create','default',0,'2023-01-01 19:00:00.000','1h',0),
(528,'7d83c14017deb84af70f88304263b773','2023-01-01 21:13:04.482','2023-01-01 21:13:05.841','[]','collections.$all.requests.create','default',0,'2023-01-01 20:00:00.000','1h',0),
(529,'3a89733ede30fe952ff3771d48122f32','2023-01-01 21:13:04.483','2023-01-01 21:20:44.715','[]','collections.$all.requests.create','default',1,'2023-01-01 21:00:00.000','1h',0),
(530,'d97cc63762c9d0bfacfbefcd484019af','2023-01-01 21:13:04.541','2023-01-01 21:13:05.858','[]','documents.$all.requests.read','default',0,'2022-12-31 21:00:00.000','1h',0),
(531,'b75af3b799546f270679b3f6dd6a9fd0','2023-01-01 21:13:04.544','2023-01-01 21:13:05.861','[]','documents.$all.requests.read','default',0,'2022-12-31 22:00:00.000','1h',0),
(532,'d182af1b3e5a155a12d18826b14026d0','2023-01-01 21:13:04.546','2023-01-01 21:13:05.864','[]','documents.$all.requests.read','default',0,'2022-12-31 23:00:00.000','1h',0),
(533,'7d6a071d1d7e1867be94fac8eeb86241','2023-01-01 21:13:04.549','2023-01-01 21:13:05.866','[]','documents.$all.requests.read','default',0,'2023-01-01 00:00:00.000','1h',0),
(534,'a8d3a08de8629d7bccd791e9457f8f67','2023-01-01 21:13:04.550','2023-01-01 21:13:05.869','[]','documents.$all.requests.read','default',0,'2023-01-01 01:00:00.000','1h',0),
(535,'0c31103f5fde43ddf97bcf31da80df5f','2023-01-01 21:13:04.552','2023-01-01 21:13:05.871','[]','documents.$all.requests.read','default',0,'2023-01-01 02:00:00.000','1h',0),
(536,'ea23fd18dfcfa932de221501c00eb296','2023-01-01 21:13:04.553','2023-01-01 21:13:05.874','[]','documents.$all.requests.read','default',0,'2023-01-01 03:00:00.000','1h',0),
(537,'f33f062f2ea3a10f571c1346db024257','2023-01-01 21:13:04.555','2023-01-01 21:13:05.875','[]','documents.$all.requests.read','default',0,'2023-01-01 04:00:00.000','1h',0),
(538,'61e4f61f906806ec5ae23bf58106dbc4','2023-01-01 21:13:04.556','2023-01-01 21:13:05.878','[]','documents.$all.requests.read','default',0,'2023-01-01 05:00:00.000','1h',0),
(539,'e658f692d46963e47b32b478e22cb659','2023-01-01 21:13:04.558','2023-01-01 21:13:05.881','[]','documents.$all.requests.read','default',0,'2023-01-01 06:00:00.000','1h',0),
(540,'b685acda4a42876644d722380ed15ed1','2023-01-01 21:13:04.559','2023-01-01 21:13:05.941','[]','documents.$all.requests.read','default',0,'2023-01-01 07:00:00.000','1h',0),
(541,'107f4da0a4cad823947cff0906c1682b','2023-01-01 21:13:04.561','2023-01-01 21:13:05.945','[]','documents.$all.requests.read','default',0,'2023-01-01 08:00:00.000','1h',0),
(542,'b6bbe697184b6700ae33c0e20266af66','2023-01-01 21:13:04.563','2023-01-01 21:13:05.948','[]','documents.$all.requests.read','default',0,'2023-01-01 09:00:00.000','1h',0),
(543,'c23f3c678deebd03fd40b338889afc49','2023-01-01 21:13:04.565','2023-01-01 21:13:05.951','[]','documents.$all.requests.read','default',0,'2023-01-01 10:00:00.000','1h',0),
(544,'c46b545c0d80728ef850318be3a7ba9a','2023-01-01 21:13:04.567','2023-01-01 21:13:05.954','[]','documents.$all.requests.read','default',0,'2023-01-01 11:00:00.000','1h',0),
(545,'eaf88bf8fddf8fc69be3a01a2716a384','2023-01-01 21:13:04.569','2023-01-01 21:13:05.957','[]','documents.$all.requests.read','default',0,'2023-01-01 12:00:00.000','1h',0),
(546,'fdeff442c1dcdb3ce2ed73c8a41ae34b','2023-01-01 21:13:04.570','2023-01-01 21:13:05.960','[]','documents.$all.requests.read','default',0,'2023-01-01 13:00:00.000','1h',0),
(547,'d5be337c5621852b8e72d7ca409974c9','2023-01-01 21:13:04.572','2023-01-01 21:13:05.961','[]','documents.$all.requests.read','default',0,'2023-01-01 14:00:00.000','1h',0),
(548,'d87a4102e622e089156a72df7f18e1be','2023-01-01 21:13:04.573','2023-01-01 21:13:05.965','[]','documents.$all.requests.read','default',0,'2023-01-01 15:00:00.000','1h',0),
(549,'3eeeb84611676c3f8747e1a261dd9166','2023-01-01 21:13:04.575','2023-01-01 21:13:05.967','[]','documents.$all.requests.read','default',0,'2023-01-01 16:00:00.000','1h',0),
(550,'552e7550bdc273c5aa6f35452a5dc9bb','2023-01-01 21:13:04.576','2023-01-01 21:13:05.969','[]','documents.$all.requests.read','default',0,'2023-01-01 17:00:00.000','1h',0),
(551,'edf15a63ac37e2bda6d3a621e665259c','2023-01-01 21:13:04.578','2023-01-01 21:13:05.971','[]','documents.$all.requests.read','default',0,'2023-01-01 18:00:00.000','1h',0),
(552,'04150a4d5bf23e2a73fe0821516b1169','2023-01-01 21:13:04.579','2023-01-01 21:13:05.973','[]','documents.$all.requests.read','default',0,'2023-01-01 19:00:00.000','1h',0),
(553,'652ca413fcb8243eda7834ec36d50de2','2023-01-01 21:13:04.581','2023-01-01 21:13:05.975','[]','documents.$all.requests.read','default',0,'2023-01-01 20:00:00.000','1h',0),
(554,'d53bb7db1925d98ffeb15862f136093f','2023-01-01 21:13:04.582','2023-01-01 21:20:44.731','[]','documents.$all.requests.read','default',10,'2023-01-01 21:00:00.000','1h',0),
(555,'12bf3be5581a6e8e6af07f8c07cbf77c','2023-01-01 21:13:04.590','2023-01-01 21:13:06.043','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-31 21:00:00.000','1h',0),
(556,'36bcae76be7ef34fd3819d37fcf334fd','2023-01-01 21:13:04.592','2023-01-01 21:13:06.046','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-31 22:00:00.000','1h',0),
(557,'e8c33efbf96f7b0361e58ea51af219d5','2023-01-01 21:13:04.594','2023-01-01 21:13:06.049','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-31 23:00:00.000','1h',0),
(558,'40dfaafc364a79c978fd5177d8993235','2023-01-01 21:13:04.596','2023-01-01 21:13:06.051','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 00:00:00.000','1h',0),
(559,'8af4d7015ed5bb4bd66e6ddb7061ec59','2023-01-01 21:13:04.597','2023-01-01 21:13:06.053','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 01:00:00.000','1h',0),
(560,'21dd3d8ca97a9fca8ffdbbcdfaff6d43','2023-01-01 21:13:04.599','2023-01-01 21:13:06.055','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 02:00:00.000','1h',0),
(561,'30da919a78d7644073fae3bfca605bc7','2023-01-01 21:13:04.600','2023-01-01 21:13:06.058','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 03:00:00.000','1h',0),
(562,'541adaaa10c085a4b7cd1a0fa546d310','2023-01-01 21:13:04.601','2023-01-01 21:13:06.060','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 04:00:00.000','1h',0),
(563,'5cab6db39cd6873e8bfbb916623170f3','2023-01-01 21:13:04.603','2023-01-01 21:13:06.062','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 05:00:00.000','1h',0),
(564,'f64064af9da0f2095710e10c6ed98931','2023-01-01 21:13:04.605','2023-01-01 21:13:06.064','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 06:00:00.000','1h',0),
(565,'893086094c3fa1943d0480efa21c83b4','2023-01-01 21:13:04.606','2023-01-01 21:13:06.066','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 07:00:00.000','1h',0),
(566,'4522138f8af80a9e74e2aacb953e5428','2023-01-01 21:13:04.608','2023-01-01 21:13:06.068','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 08:00:00.000','1h',0),
(567,'a1ea0ea23597f2bc0e2a70031300a750','2023-01-01 21:13:04.609','2023-01-01 21:13:06.070','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 09:00:00.000','1h',0),
(568,'f12799fffa8080a95fc88850da1424cf','2023-01-01 21:13:04.611','2023-01-01 21:13:06.072','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 10:00:00.000','1h',0),
(569,'5ac0aa1929142a1be794b814d07df661','2023-01-01 21:13:04.612','2023-01-01 21:13:06.074','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 11:00:00.000','1h',0),
(570,'56f401955cfefee94dda2336c78427f1','2023-01-01 21:13:04.614','2023-01-01 21:13:06.076','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 12:00:00.000','1h',0),
(571,'8ff793189c29e5b686cc13dc55c4e49a','2023-01-01 21:13:04.615','2023-01-01 21:13:06.080','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 13:00:00.000','1h',0),
(572,'f2ee5ed2b00d3e8ada6e054188ea1b14','2023-01-01 21:13:04.617','2023-01-01 21:13:06.082','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 14:00:00.000','1h',0),
(573,'03c18384ab5777d74a253293c44b55c5','2023-01-01 21:13:04.619','2023-01-01 21:13:06.084','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 15:00:00.000','1h',0),
(574,'af27d7e13b66e40abf806797a083087f','2023-01-01 21:13:04.620','2023-01-01 21:13:06.087','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 16:00:00.000','1h',0),
(575,'9e9b205fff8a86702bc3d45da17da8e6','2023-01-01 21:13:04.622','2023-01-01 21:13:06.089','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 17:00:00.000','1h',0),
(576,'0fc41e894c642262f0b7cccef9474f2d','2023-01-01 21:13:04.623','2023-01-01 21:13:06.091','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 18:00:00.000','1h',0),
(577,'44da69424ae0934a6c04a4d2029738cc','2023-01-01 21:13:04.642','2023-01-01 21:13:06.093','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 19:00:00.000','1h',0),
(578,'6cac86c6bb6da18d33e8854f3cc70db8','2023-01-01 21:13:04.644','2023-01-01 21:13:06.095','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 20:00:00.000','1h',0),
(579,'145aae75b5008ded1608e3bc91ca3134','2023-01-01 21:13:04.647','2023-01-01 21:20:44.789','[]','collections.63b1f73a5da8233847c0.requests.create','default',1,'2023-01-01 21:00:00.000','1h',0),
(580,'61b59b873ca499222fc962f6b20332a6','2023-01-01 21:13:04.662','2023-01-01 21:13:06.150','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-31 21:00:00.000','1h',0),
(581,'2c94acb7ac1eb1656301bcf9cbb5a123','2023-01-01 21:13:04.664','2023-01-01 21:13:06.153','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-31 22:00:00.000','1h',0),
(582,'903282ab0150c63f627781a342e0417b','2023-01-01 21:13:04.667','2023-01-01 21:13:06.156','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-31 23:00:00.000','1h',0),
(583,'71a905509c0d2de56437ea815e5ccfdf','2023-01-01 21:13:04.669','2023-01-01 21:13:06.159','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 00:00:00.000','1h',0),
(584,'698c8287688d33b754fb7caafda239b7','2023-01-01 21:13:04.677','2023-01-01 21:13:06.161','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 01:00:00.000','1h',0),
(585,'7fba125047d0cfd3ef8f9970e9388957','2023-01-01 21:13:04.680','2023-01-01 21:13:06.163','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 02:00:00.000','1h',0),
(586,'72826a74b8098efc91f6664864ff3d6e','2023-01-01 21:13:04.681','2023-01-01 21:13:06.165','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 03:00:00.000','1h',0),
(587,'7c3e2e62de5fdc8709afc1e6d4583b9f','2023-01-01 21:13:04.683','2023-01-01 21:13:06.167','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 04:00:00.000','1h',0),
(588,'322e5df96a8a04a3abeda2c78a37acef','2023-01-01 21:13:04.685','2023-01-01 21:13:06.169','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 05:00:00.000','1h',0),
(589,'bcb9d607f512b044e2ec0e95a3be3706','2023-01-01 21:13:04.686','2023-01-01 21:13:06.170','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 06:00:00.000','1h',0),
(590,'4c7b52337ba42ef550faa133a82d1d93','2023-01-01 21:13:04.688','2023-01-01 21:13:06.173','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 07:00:00.000','1h',0),
(591,'0128a6078294df320cacba6e408fbc13','2023-01-01 21:13:04.689','2023-01-01 21:13:06.175','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 08:00:00.000','1h',0),
(592,'ec98d40443fd80c03952036f6323e019','2023-01-01 21:13:04.691','2023-01-01 21:13:06.177','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 09:00:00.000','1h',0),
(593,'6721338f9aa098ad3a78c847cc22464e','2023-01-01 21:13:04.692','2023-01-01 21:13:06.179','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 10:00:00.000','1h',0),
(594,'aa680c7574a25aca2c2cef0a87ce72e2','2023-01-01 21:13:04.742','2023-01-01 21:13:06.181','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 11:00:00.000','1h',0),
(595,'8cd6ded71021766a7f62bfccb51394bf','2023-01-01 21:13:04.744','2023-01-01 21:13:06.241','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 12:00:00.000','1h',0),
(596,'1df7eeb543e0dffee86d6b0f0c057696','2023-01-01 21:13:04.745','2023-01-01 21:13:06.244','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 13:00:00.000','1h',0),
(597,'8490a79cd72785c96dad6bfba1e77fbe','2023-01-01 21:13:04.747','2023-01-01 21:13:06.246','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 14:00:00.000','1h',0),
(598,'3cf162231351945ed351ef58bcefd4ad','2023-01-01 21:13:04.749','2023-01-01 21:13:06.247','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 15:00:00.000','1h',0),
(599,'e36ad91c622d2ac3391fa9253e7fdc27','2023-01-01 21:13:04.750','2023-01-01 21:13:06.249','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 16:00:00.000','1h',0),
(600,'a6227bdf10aa6b097f0b75867619fd47','2023-01-01 21:13:04.752','2023-01-01 21:13:06.251','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 17:00:00.000','1h',0),
(601,'9c09da5279e2ce0dd327a7018081e101','2023-01-01 21:13:04.753','2023-01-01 21:13:06.253','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 18:00:00.000','1h',0),
(602,'86e2e21d43ec7c21378aec1120ff698c','2023-01-01 21:13:04.754','2023-01-01 21:13:06.255','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 19:00:00.000','1h',0),
(603,'4ece4b309bfeebb655435fbb19b9072b','2023-01-01 21:13:04.756','2023-01-01 21:13:06.257','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2023-01-01 20:00:00.000','1h',0),
(604,'0d0d74bacf92c891d62ddebbfcda0dd3','2023-01-01 21:13:04.757','2023-01-01 21:20:44.807','[]','documents.63b1f73a5da8233847c0.requests.read','default',10,'2023-01-01 21:00:00.000','1h',0),
(605,'3c11d04d86672bdc4248c7a9b366ec97','2023-01-01 21:13:04.767','2023-01-01 21:13:06.268','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-31 21:00:00.000','1h',0),
(606,'7ac74b68b17e9f5c560867a688748da4','2023-01-01 21:13:04.770','2023-01-01 21:13:06.270','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-31 22:00:00.000','1h',0),
(607,'644c6322523545f428ec8558a5c87f0c','2023-01-01 21:13:04.772','2023-01-01 21:13:06.273','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-31 23:00:00.000','1h',0),
(608,'49a482edd5c4238c5a3b779c7aa8e80b','2023-01-01 21:13:04.781','2023-01-01 21:13:06.275','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 00:00:00.000','1h',0),
(609,'18c0a5490573b7fabbbe794bc999419b','2023-01-01 21:13:04.786','2023-01-01 21:13:06.276','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 01:00:00.000','1h',0),
(610,'3399cec4dec7ad43eda446b761305bdb','2023-01-01 21:13:04.787','2023-01-01 21:13:06.278','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 02:00:00.000','1h',0),
(611,'22ee752784bb18d1b817ca1a4505e5f1','2023-01-01 21:13:04.789','2023-01-01 21:13:06.280','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 03:00:00.000','1h',0),
(612,'f35e00935fe6a763dde23ab8e4ee856b','2023-01-01 21:13:04.790','2023-01-01 21:13:06.282','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 04:00:00.000','1h',0),
(613,'967f91aa14d8eb991043493e6831d77f','2023-01-01 21:13:04.791','2023-01-01 21:13:06.284','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 05:00:00.000','1h',0),
(614,'07dcf63333718cc62794a76a892c2a82','2023-01-01 21:13:04.793','2023-01-01 21:13:06.285','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 06:00:00.000','1h',0),
(615,'98fb9413d96b124ff82f01d7a95ed7a2','2023-01-01 21:13:04.795','2023-01-01 21:13:06.287','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 07:00:00.000','1h',0),
(616,'b67af6a004627e14d1f9908ca642e63c','2023-01-01 21:13:04.796','2023-01-01 21:13:06.289','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 08:00:00.000','1h',0),
(617,'674f45cee21c94aba3e3ed6f330d3160','2023-01-01 21:13:04.797','2023-01-01 21:13:06.291','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 09:00:00.000','1h',0),
(618,'a6ba77a3138e7c1cf2d4d993b9d3edb7','2023-01-01 21:13:04.799','2023-01-01 21:13:06.293','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 10:00:00.000','1h',0),
(619,'87717ccf034feb7c2e68d8415a3a64a7','2023-01-01 21:13:04.800','2023-01-01 21:13:06.295','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 11:00:00.000','1h',0),
(620,'b6bac25dabb1e985eaff859f84b96f27','2023-01-01 21:13:04.801','2023-01-01 21:13:06.297','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 12:00:00.000','1h',0),
(621,'bae666f977d75b6a83a7bea77c16ad12','2023-01-01 21:13:04.803','2023-01-01 21:13:06.299','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 13:00:00.000','1h',0),
(622,'73a62583001ecc75607d800d004f9212','2023-01-01 21:13:04.804','2023-01-01 21:13:06.301','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 14:00:00.000','1h',0),
(623,'d245c523d19029e5dda4ba99b03c8511','2023-01-01 21:13:04.805','2023-01-01 21:13:06.303','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 15:00:00.000','1h',0),
(624,'7a8e086073d729557b98fe9470741d6a','2023-01-01 21:13:04.807','2023-01-01 21:13:06.305','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 16:00:00.000','1h',0),
(625,'d2d3f307b97e083bd1bdd6999ebc0586','2023-01-01 21:13:04.808','2023-01-01 21:13:06.306','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 17:00:00.000','1h',0),
(626,'1eb895da4478a954818de4a7b5824362','2023-01-01 21:13:04.809','2023-01-01 21:13:06.341','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 18:00:00.000','1h',0),
(627,'732bfcca3bd38797a231077cd6a752f1','2023-01-01 21:13:04.811','2023-01-01 21:13:06.343','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 19:00:00.000','1h',0),
(628,'a265b8ce452008cca1fe69825bd68d5c','2023-01-01 21:13:04.812','2023-01-01 21:13:06.346','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2023-01-01 20:00:00.000','1h',0),
(629,'53edad3420edac0ffa36fc88783f6492','2023-01-01 21:13:04.814','2023-01-01 21:20:44.869','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',10,'2023-01-01 21:00:00.000','1h',0),
(630,'8ac3a688d4991a662b3062f07dfa5e27','2023-01-01 21:13:04.941','2023-01-01 21:13:06.460','[]','collections.$all.count.total','default',0,'2022-12-31 21:00:00.000','1h',0),
(631,'52ec334719a3ef6838970052a95af0a0','2023-01-01 21:13:04.943','2023-01-01 21:13:06.462','[]','collections.$all.count.total','default',0,'2022-12-31 22:00:00.000','1h',0),
(632,'064d845090881a4a8869a4bcac3dbf03','2023-01-01 21:13:04.945','2023-01-01 21:13:06.464','[]','collections.$all.count.total','default',0,'2022-12-31 23:00:00.000','1h',0),
(633,'87db10188a1affaeaf14a2a7412dfeca','2023-01-01 21:13:04.947','2023-01-01 21:13:06.466','[]','collections.$all.count.total','default',0,'2023-01-01 00:00:00.000','1h',0),
(634,'ff01cda2bbe36c28c49d5ddf9b426cd2','2023-01-01 21:13:04.948','2023-01-01 21:13:06.468','[]','collections.$all.count.total','default',0,'2023-01-01 01:00:00.000','1h',0),
(635,'228ffa25b35d7b91250dbd6f7e690a63','2023-01-01 21:13:04.949','2023-01-01 21:13:06.471','[]','collections.$all.count.total','default',0,'2023-01-01 02:00:00.000','1h',0),
(636,'98b111fd41cf21308997667b5883581f','2023-01-01 21:13:04.951','2023-01-01 21:13:06.473','[]','collections.$all.count.total','default',0,'2023-01-01 03:00:00.000','1h',0),
(637,'66578d59fb3cfd46afe6ec50862ed583','2023-01-01 21:13:04.952','2023-01-01 21:13:06.474','[]','collections.$all.count.total','default',0,'2023-01-01 04:00:00.000','1h',0),
(638,'ba319d96d26ec9e498b31a9a7b396d0a','2023-01-01 21:13:04.954','2023-01-01 21:13:06.476','[]','collections.$all.count.total','default',0,'2023-01-01 05:00:00.000','1h',0),
(639,'e283d069f97e7e7ee6393e9e3f886df6','2023-01-01 21:13:04.956','2023-01-01 21:13:06.478','[]','collections.$all.count.total','default',0,'2023-01-01 06:00:00.000','1h',0),
(640,'064e2a3d26d9dde1d9dc82c718788bc4','2023-01-01 21:13:04.958','2023-01-01 21:13:06.480','[]','collections.$all.count.total','default',0,'2023-01-01 07:00:00.000','1h',0),
(641,'4d0d819891437112b143c51c24f10dd6','2023-01-01 21:13:04.959','2023-01-01 21:13:06.481','[]','collections.$all.count.total','default',0,'2023-01-01 08:00:00.000','1h',0),
(642,'4515a6f902a641ea231ebaa1a9010a9e','2023-01-01 21:13:04.961','2023-01-01 21:13:06.484','[]','collections.$all.count.total','default',0,'2023-01-01 09:00:00.000','1h',0),
(643,'936fb1cbc6de2f117668c43607c2b73b','2023-01-01 21:13:04.962','2023-01-01 21:13:06.486','[]','collections.$all.count.total','default',0,'2023-01-01 10:00:00.000','1h',0),
(644,'aed5783ca90b9aa8dff5fe4e3347a425','2023-01-01 21:13:04.964','2023-01-01 21:13:06.543','[]','collections.$all.count.total','default',0,'2023-01-01 11:00:00.000','1h',0),
(645,'f5174858e2f7908a3bad21a7a7033b59','2023-01-01 21:13:04.965','2023-01-01 21:13:06.545','[]','collections.$all.count.total','default',0,'2023-01-01 12:00:00.000','1h',0),
(646,'3bffd1f896ec6041ae19ed49b1d946d0','2023-01-01 21:13:04.968','2023-01-01 21:13:06.548','[]','collections.$all.count.total','default',0,'2023-01-01 13:00:00.000','1h',0),
(647,'9a107b8e203995169a5c06ab1aa7031b','2023-01-01 21:13:04.969','2023-01-01 21:13:06.550','[]','collections.$all.count.total','default',0,'2023-01-01 14:00:00.000','1h',0),
(648,'2aca9dc1f8ce7bf76a3898cb55b3effe','2023-01-01 21:13:04.971','2023-01-01 21:13:06.552','[]','collections.$all.count.total','default',0,'2023-01-01 15:00:00.000','1h',0),
(649,'098129613dd226f5a49049e9a7818b1c','2023-01-01 21:13:04.973','2023-01-01 21:13:06.555','[]','collections.$all.count.total','default',0,'2023-01-01 16:00:00.000','1h',0),
(650,'e6e3e7f949412e8478d9df244faae5c5','2023-01-01 21:13:04.974','2023-01-01 21:13:06.557','[]','collections.$all.count.total','default',0,'2023-01-01 17:00:00.000','1h',0),
(651,'5891f5ddbc72f65e40b5b2fe2469b2ae','2023-01-01 21:13:04.975','2023-01-01 21:13:06.559','[]','collections.$all.count.total','default',0,'2023-01-01 18:00:00.000','1h',0),
(652,'e7b6a735d47d5c4c9cacb55d83feaf4b','2023-01-01 21:13:04.977','2023-01-01 21:13:06.561','[]','collections.$all.count.total','default',0,'2023-01-01 19:00:00.000','1h',0),
(653,'f1fbd6e905322b57df8561d262482d3c','2023-01-01 21:13:04.978','2023-01-01 21:13:06.563','[]','collections.$all.count.total','default',0,'2023-01-01 20:00:00.000','1h',0),
(654,'67700114e434347ddb8a993fad130156','2023-01-01 21:13:04.979','2023-01-01 21:20:44.978','[]','collections.$all.count.total','default',1,'2023-01-01 21:00:00.000','1h',0),
(655,'9b59958ec551c522e1f8a78e2e7f5ded','2023-01-01 21:13:04.985','2023-01-01 21:13:06.573','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-31 21:00:00.000','1h',0),
(656,'c8d6beb72b2fd43adcb077c5363019eb','2023-01-01 21:13:04.987','2023-01-01 21:13:06.575','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-31 22:00:00.000','1h',0),
(657,'b29deca4e3b8f44b2864bddab7d503ff','2023-01-01 21:13:04.988','2023-01-01 21:13:06.577','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-31 23:00:00.000','1h',0),
(658,'6aaa584d67aaac92b8bf135799b315d3','2023-01-01 21:13:04.990','2023-01-01 21:13:06.579','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 00:00:00.000','1h',0),
(659,'9712449475aad06f2d5f82035874c1a8','2023-01-01 21:13:04.992','2023-01-01 21:13:06.581','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 01:00:00.000','1h',0),
(660,'879c3b349bf30f2de96020278f1e53aa','2023-01-01 21:13:04.993','2023-01-01 21:13:06.583','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 02:00:00.000','1h',0),
(661,'3dbb3e18b8e56ec2418c39a15714cc09','2023-01-01 21:13:04.995','2023-01-01 21:13:06.585','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 03:00:00.000','1h',0),
(662,'219ca2ff881cd2ba5b0c28bca8d890c7','2023-01-01 21:13:04.996','2023-01-01 21:13:06.587','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 04:00:00.000','1h',0),
(663,'f34fb8aeb470f11444cb2f924c6f51b7','2023-01-01 21:13:04.997','2023-01-01 21:13:06.588','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 05:00:00.000','1h',0),
(664,'f6b5d0ba0fd76e19515457c759b96c21','2023-01-01 21:13:05.006','2023-01-01 21:13:06.590','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 06:00:00.000','1h',0),
(665,'85db8be79d23f56590e0a7ab462f85e2','2023-01-01 21:13:05.008','2023-01-01 21:13:06.592','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 07:00:00.000','1h',0),
(666,'505370253f598bd48dca2f1da1c9dd7c','2023-01-01 21:13:05.009','2023-01-01 21:13:06.594','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 08:00:00.000','1h',0),
(667,'9f4f6c29d268f42921487bcd312ef9e5','2023-01-01 21:13:05.041','2023-01-01 21:13:06.596','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 09:00:00.000','1h',0),
(668,'425ded4b8ca39c06736105c5f9e1cc24','2023-01-01 21:13:05.043','2023-01-01 21:13:06.598','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 10:00:00.000','1h',0),
(669,'5d8bc5ffb14d284e372be49385b8f312','2023-01-01 21:13:05.045','2023-01-01 21:13:06.599','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 11:00:00.000','1h',0),
(670,'3d5ad2c81168112e8d3bd91b8a6cd15b','2023-01-01 21:13:05.047','2023-01-01 21:13:06.601','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 12:00:00.000','1h',0),
(671,'978a14e40db32d2fb0a25f8e11ca4ad7','2023-01-01 21:13:05.049','2023-01-01 21:13:06.603','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 13:00:00.000','1h',0),
(672,'f9325edfc20a76a268c3f6fd8bb0c7fa','2023-01-01 21:13:05.050','2023-01-01 21:13:06.605','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 14:00:00.000','1h',0),
(673,'a433ae8cbba418168b8e8fcdf27fbbba','2023-01-01 21:13:05.052','2023-01-01 21:13:06.607','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 15:00:00.000','1h',0),
(674,'b9e0456b030160f6eb7ba1f008c131ba','2023-01-01 21:13:05.053','2023-01-01 21:13:06.609','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 16:00:00.000','1h',0),
(675,'108410328fdf0801e1e96cc6ced271e2','2023-01-01 21:13:05.055','2023-01-01 21:13:06.611','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 17:00:00.000','1h',0),
(676,'aef469a1d7ee8138a894aa3f2b1a8222','2023-01-01 21:13:05.057','2023-01-01 21:13:06.613','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 18:00:00.000','1h',0),
(677,'30153c2d39ac7f05056f0fac722e53a5','2023-01-01 21:13:05.058','2023-01-01 21:13:06.614','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 19:00:00.000','1h',0),
(678,'70a38ee052d930e6c537779ee9b2bcd3','2023-01-01 21:13:05.060','2023-01-01 21:13:06.616','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 20:00:00.000','1h',0),
(679,'7e437eb29aacea88d664e8f851161905','2023-01-01 21:13:05.061','2023-01-01 21:20:44.986','[]','collections.63b1f73a5da8233847c0.count.total','default',1,'2023-01-01 21:00:00.000','1h',0),
(680,'3e1d84f64d4e8b82546ad006731e463c','2023-01-01 21:13:05.165','2023-01-01 21:13:06.741','[]','collections.$all.requests.create','default',0,'2022-12-02 00:00:00.000','1d',0),
(681,'4a7af6b00074446fdba7c552e3b5f595','2023-01-01 21:13:05.167','2023-01-01 21:13:06.744','[]','collections.$all.requests.create','default',0,'2022-12-03 00:00:00.000','1d',0),
(682,'b53649b983154fe53f690b1bc0877d7a','2023-01-01 21:13:05.169','2023-01-01 21:13:06.746','[]','collections.$all.requests.create','default',0,'2022-12-04 00:00:00.000','1d',0),
(683,'78cf9f1df35197830e5ab363014c4a6d','2023-01-01 21:13:05.170','2023-01-01 21:13:06.749','[]','collections.$all.requests.create','default',0,'2022-12-05 00:00:00.000','1d',0),
(684,'116c7ff7fc0ec2a24051363d08a4426e','2023-01-01 21:13:05.172','2023-01-01 21:13:06.751','[]','collections.$all.requests.create','default',0,'2022-12-06 00:00:00.000','1d',0),
(685,'fd1b36e5ddd33b269df44d4d10fc6206','2023-01-01 21:13:05.173','2023-01-01 21:13:06.754','[]','collections.$all.requests.create','default',0,'2022-12-07 00:00:00.000','1d',0),
(686,'c719d110ccf9e032aa7d5f8919e3f712','2023-01-01 21:13:05.175','2023-01-01 21:13:06.756','[]','collections.$all.requests.create','default',0,'2022-12-08 00:00:00.000','1d',0),
(687,'4b53482c8177233184627b7587728472','2023-01-01 21:13:05.178','2023-01-01 21:13:06.758','[]','collections.$all.requests.create','default',0,'2022-12-09 00:00:00.000','1d',0),
(688,'c8a0681b190bbaeb12e7486d10ac6eae','2023-01-01 21:13:05.180','2023-01-01 21:13:06.760','[]','collections.$all.requests.create','default',0,'2022-12-10 00:00:00.000','1d',0),
(689,'be773b228480af0e95cc6299f160c317','2023-01-01 21:13:05.182','2023-01-01 21:13:06.763','[]','collections.$all.requests.create','default',0,'2022-12-11 00:00:00.000','1d',0),
(690,'e002dcce6963852ba863ece9a8f043fc','2023-01-01 21:13:05.184','2023-01-01 21:13:06.765','[]','collections.$all.requests.create','default',0,'2022-12-12 00:00:00.000','1d',0),
(691,'239be371d2c95d8e3275478b4ddb4089','2023-01-01 21:13:05.186','2023-01-01 21:13:06.768','[]','collections.$all.requests.create','default',0,'2022-12-13 00:00:00.000','1d',0),
(692,'041a0796d115efef2d4e5046cd20a48b','2023-01-01 21:13:05.188','2023-01-01 21:13:06.770','[]','collections.$all.requests.create','default',0,'2022-12-14 00:00:00.000','1d',0),
(693,'fd5f4db8a7b416c8cf3c031f7ebe54ef','2023-01-01 21:13:05.189','2023-01-01 21:13:06.773','[]','collections.$all.requests.create','default',0,'2022-12-15 00:00:00.000','1d',0),
(694,'d2acc3aa94f9c924b89cacdc32f5ecdc','2023-01-01 21:13:05.191','2023-01-01 21:13:06.775','[]','collections.$all.requests.create','default',0,'2022-12-16 00:00:00.000','1d',0),
(695,'6bdb8ca0ddaba013af780580ce16458c','2023-01-01 21:13:05.192','2023-01-01 21:13:06.781','[]','collections.$all.requests.create','default',0,'2022-12-17 00:00:00.000','1d',0),
(696,'88d47a97cb639c90eb089a4e2964694b','2023-01-01 21:13:05.194','2023-01-01 21:13:06.783','[]','collections.$all.requests.create','default',0,'2022-12-18 00:00:00.000','1d',0),
(697,'b7b77658c02db62d6f7a9da8099a1b80','2023-01-01 21:13:05.195','2023-01-01 21:13:06.786','[]','collections.$all.requests.create','default',0,'2022-12-19 00:00:00.000','1d',0),
(698,'1527accecbdf67d7fd0f1a8586177400','2023-01-01 21:13:05.197','2023-01-01 21:13:06.788','[]','collections.$all.requests.create','default',0,'2022-12-20 00:00:00.000','1d',0),
(699,'2a9bacabe54bea1f057a1f1c2fae81b0','2023-01-01 21:13:05.198','2023-01-01 21:13:06.790','[]','collections.$all.requests.create','default',0,'2022-12-21 00:00:00.000','1d',0),
(700,'e37da1d62f22f6cccbb6509e6395443c','2023-01-01 21:13:05.200','2023-01-01 21:13:06.792','[]','collections.$all.requests.create','default',0,'2022-12-22 00:00:00.000','1d',0),
(701,'38d7e40e176b14f3b00c2e1c58fdbb6a','2023-01-01 21:13:05.243','2023-01-01 21:13:06.795','[]','collections.$all.requests.create','default',0,'2022-12-23 00:00:00.000','1d',0),
(702,'ee7fa8c265eacd6ebbff01a0403d82f5','2023-01-01 21:13:05.245','2023-01-01 21:13:06.797','[]','collections.$all.requests.create','default',0,'2022-12-24 00:00:00.000','1d',0),
(703,'ab8c275609db4ab9c2d87a7f9a6d3bc2','2023-01-01 21:13:05.247','2023-01-01 21:13:06.799','[]','collections.$all.requests.create','default',0,'2022-12-25 00:00:00.000','1d',0),
(704,'e74c7aa927fa283d98dcaeb6448208e1','2023-01-01 21:13:05.249','2023-01-01 21:13:06.801','[]','collections.$all.requests.create','default',0,'2022-12-26 00:00:00.000','1d',0),
(705,'e92e3468825b2219897f8c75427ed9cf','2023-01-01 21:13:05.250','2023-01-01 21:13:06.804','[]','collections.$all.requests.create','default',0,'2022-12-27 00:00:00.000','1d',0),
(706,'485c19e6348a97b449ddd6673b2f3666','2023-01-01 21:13:05.252','2023-01-01 21:13:06.845','[]','collections.$all.requests.create','default',0,'2022-12-28 00:00:00.000','1d',0),
(707,'6ca80e9bccb37f86af7e6a081b81a6ad','2023-01-01 21:13:05.255','2023-01-01 21:13:06.848','[]','collections.$all.requests.create','default',0,'2022-12-29 00:00:00.000','1d',0),
(708,'fbf9936f298428c5c0dbb0346fd64910','2023-01-01 21:13:05.257','2023-01-01 21:13:06.850','[]','collections.$all.requests.create','default',0,'2022-12-30 00:00:00.000','1d',0),
(709,'4475c0d67a658eb1288b4746d6afb512','2023-01-01 21:13:05.259','2023-01-01 21:13:06.852','[]','collections.$all.requests.create','default',0,'2022-12-31 00:00:00.000','1d',0),
(710,'b682b5a74f9d77468d4985a8abb1f301','2023-01-01 21:13:05.261','2023-01-01 21:20:45.071','[]','collections.$all.requests.create','default',1,'2023-01-01 00:00:00.000','1d',0),
(711,'1e62ab6074d7fa4bebc63fdeaa88a411','2023-01-01 21:13:05.276','2023-01-01 21:13:06.870','[]','documents.$all.requests.read','default',0,'2022-12-02 00:00:00.000','1d',0),
(712,'eb9a1e90a0360c25ce46681831b77fcb','2023-01-01 21:13:05.280','2023-01-01 21:13:06.872','[]','documents.$all.requests.read','default',0,'2022-12-03 00:00:00.000','1d',0),
(713,'0e470fd5e32e1a9042f8784acaff087f','2023-01-01 21:13:05.281','2023-01-01 21:13:06.874','[]','documents.$all.requests.read','default',0,'2022-12-04 00:00:00.000','1d',0),
(714,'67ea2fceb1dc071b7735b37da84169d6','2023-01-01 21:13:05.283','2023-01-01 21:13:06.877','[]','documents.$all.requests.read','default',0,'2022-12-05 00:00:00.000','1d',0),
(715,'ed6ab84942f9d48ceccf9dc440653541','2023-01-01 21:13:05.285','2023-01-01 21:13:06.879','[]','documents.$all.requests.read','default',0,'2022-12-06 00:00:00.000','1d',0),
(716,'9e4726b105c48e0919766c0141a556fa','2023-01-01 21:13:05.287','2023-01-01 21:13:06.882','[]','documents.$all.requests.read','default',0,'2022-12-07 00:00:00.000','1d',0),
(717,'87cb561ca3b4a4e8f317c0d98df66af8','2023-01-01 21:13:05.289','2023-01-01 21:13:06.884','[]','documents.$all.requests.read','default',0,'2022-12-08 00:00:00.000','1d',0),
(718,'d8c99002f99ade3c47a923d9154108fa','2023-01-01 21:13:05.292','2023-01-01 21:13:06.886','[]','documents.$all.requests.read','default',0,'2022-12-09 00:00:00.000','1d',0),
(719,'c94db7ebf5512db6eb18740ed31b7c46','2023-01-01 21:13:05.293','2023-01-01 21:13:06.888','[]','documents.$all.requests.read','default',0,'2022-12-10 00:00:00.000','1d',0),
(720,'f12422ddd5ce0c4e9ed7322ca574a1e3','2023-01-01 21:13:05.340','2023-01-01 21:13:06.897','[]','documents.$all.requests.read','default',0,'2022-12-11 00:00:00.000','1d',0),
(721,'4ed940f0c1966c057dd9f1b6f45a942a','2023-01-01 21:13:05.342','2023-01-01 21:13:06.901','[]','documents.$all.requests.read','default',0,'2022-12-12 00:00:00.000','1d',0),
(722,'13dc88e20b63692df3233ddea0bdba9f','2023-01-01 21:13:05.344','2023-01-01 21:13:06.903','[]','documents.$all.requests.read','default',0,'2022-12-13 00:00:00.000','1d',0),
(723,'08d2a071a6a551dfb883cd124e848a87','2023-01-01 21:13:05.346','2023-01-01 21:13:06.905','[]','documents.$all.requests.read','default',0,'2022-12-14 00:00:00.000','1d',0),
(724,'185717e669c1c88a5aab5628594bbfee','2023-01-01 21:13:05.347','2023-01-01 21:13:06.943','[]','documents.$all.requests.read','default',0,'2022-12-15 00:00:00.000','1d',0),
(725,'99f496227ff27a9b82c70c74f9c9a189','2023-01-01 21:13:05.349','2023-01-01 21:13:06.946','[]','documents.$all.requests.read','default',0,'2022-12-16 00:00:00.000','1d',0),
(726,'9328a3235e6fd47d2f57d37a8a5a81de','2023-01-01 21:13:05.350','2023-01-01 21:13:06.948','[]','documents.$all.requests.read','default',0,'2022-12-17 00:00:00.000','1d',0),
(727,'a397165cf6e175705d9a32d6e78e64e6','2023-01-01 21:13:05.351','2023-01-01 21:13:06.950','[]','documents.$all.requests.read','default',0,'2022-12-18 00:00:00.000','1d',0),
(728,'1ccf6bb551163437091f2c7d0fba61a4','2023-01-01 21:13:05.354','2023-01-01 21:13:06.953','[]','documents.$all.requests.read','default',0,'2022-12-19 00:00:00.000','1d',0),
(729,'32cc9e0c5ac1542c84505da0aef5105b','2023-01-01 21:13:05.357','2023-01-01 21:13:06.955','[]','documents.$all.requests.read','default',0,'2022-12-20 00:00:00.000','1d',0),
(730,'7cd1931f44a482f50e8bf2fb44693acb','2023-01-01 21:13:05.359','2023-01-01 21:13:06.957','[]','documents.$all.requests.read','default',0,'2022-12-21 00:00:00.000','1d',0),
(731,'935df5ab4fc8cc7df50c712a0ae2d1a3','2023-01-01 21:13:05.361','2023-01-01 21:13:06.959','[]','documents.$all.requests.read','default',0,'2022-12-22 00:00:00.000','1d',0),
(732,'b3d497b1d7a212569eb40c690122de47','2023-01-01 21:13:05.362','2023-01-01 21:13:06.961','[]','documents.$all.requests.read','default',0,'2022-12-23 00:00:00.000','1d',0),
(733,'0920850045cf63800c2551b4577f32fb','2023-01-01 21:13:05.364','2023-01-01 21:13:06.964','[]','documents.$all.requests.read','default',0,'2022-12-24 00:00:00.000','1d',0),
(734,'a4006918bb1aeb68d4edd796c912c28e','2023-01-01 21:13:05.366','2023-01-01 21:13:06.966','[]','documents.$all.requests.read','default',0,'2022-12-25 00:00:00.000','1d',0),
(735,'b6123b1f50494e62b46ba6ccc0539611','2023-01-01 21:13:05.368','2023-01-01 21:13:06.969','[]','documents.$all.requests.read','default',0,'2022-12-26 00:00:00.000','1d',0),
(736,'897516a641a9b9c4abf55d8faa45cc7c','2023-01-01 21:13:05.369','2023-01-01 21:13:06.971','[]','documents.$all.requests.read','default',0,'2022-12-27 00:00:00.000','1d',0),
(737,'78d1de932ccf052b0c2e5fbb72d6fb33','2023-01-01 21:13:05.373','2023-01-01 21:13:06.973','[]','documents.$all.requests.read','default',0,'2022-12-28 00:00:00.000','1d',0),
(738,'08a5949abb9e00803f4646336fff9d43','2023-01-01 21:13:05.374','2023-01-01 21:13:06.978','[]','documents.$all.requests.read','default',0,'2022-12-29 00:00:00.000','1d',0),
(739,'c50c8562128c0e6a94210b10c8637d80','2023-01-01 21:13:05.376','2023-01-01 21:13:06.980','[]','documents.$all.requests.read','default',0,'2022-12-30 00:00:00.000','1d',0),
(740,'cb4a91023ce9e7a73b39e29c162af225','2023-01-01 21:13:05.377','2023-01-01 21:13:06.982','[]','documents.$all.requests.read','default',0,'2022-12-31 00:00:00.000','1d',0),
(741,'57de89e541adb2a21cf3d62fd8d19e36','2023-01-01 21:13:05.379','2023-01-01 21:20:45.087','[]','documents.$all.requests.read','default',10,'2023-01-01 00:00:00.000','1d',0),
(742,'7250b7253463ff53b57b89c7f20e419b','2023-01-01 21:13:05.386','2023-01-01 21:13:06.993','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-02 00:00:00.000','1d',0),
(743,'5db7d074e679c634e7cb5a3271ac337c','2023-01-01 21:13:05.388','2023-01-01 21:13:06.996','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-03 00:00:00.000','1d',0),
(744,'dffd3ba69bd794d81aaffc21d49af5f9','2023-01-01 21:13:05.390','2023-01-01 21:13:06.998','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-04 00:00:00.000','1d',0),
(745,'0f71bd13f820e5bbd8a93bfcda456479','2023-01-01 21:13:05.391','2023-01-01 21:13:07.000','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-05 00:00:00.000','1d',0),
(746,'1eaf690ec75131b2e00cbf1328e6ef02','2023-01-01 21:13:05.393','2023-01-01 21:13:07.003','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-06 00:00:00.000','1d',0),
(747,'c8a66dd8caf173e843d4c01d9f23f23f','2023-01-01 21:13:05.395','2023-01-01 21:13:07.006','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-07 00:00:00.000','1d',0),
(748,'74f38a013633cfc80cd8a5d146e45b7c','2023-01-01 21:13:05.396','2023-01-01 21:13:07.008','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-08 00:00:00.000','1d',0),
(749,'bc93509e43cd670e4cb2e8f7bbe9b310','2023-01-01 21:13:05.398','2023-01-01 21:13:07.010','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-09 00:00:00.000','1d',0),
(750,'8f6daad263781af4b7c6561b37710007','2023-01-01 21:13:05.400','2023-01-01 21:13:07.013','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-10 00:00:00.000','1d',0),
(751,'5c898e43ca9bcde18fabec18b5478744','2023-01-01 21:13:05.401','2023-01-01 21:13:07.015','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-11 00:00:00.000','1d',0),
(752,'7ed1038df0da7e8e467bd165c8f38fbc','2023-01-01 21:13:05.403','2023-01-01 21:13:07.018','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-12 00:00:00.000','1d',0),
(753,'6daf88f9544e5b56b7a75cc5486008ae','2023-01-01 21:13:05.405','2023-01-01 21:13:07.043','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-13 00:00:00.000','1d',0),
(754,'e2b10604be52385d9bdb46283714ae4f','2023-01-01 21:13:05.406','2023-01-01 21:13:07.045','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-14 00:00:00.000','1d',0),
(755,'336cb6d1613d3d0eaffa2afc573ec370','2023-01-01 21:13:05.407','2023-01-01 21:13:07.047','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-15 00:00:00.000','1d',0),
(756,'40def320db93ce671e1794916efb25fb','2023-01-01 21:13:05.409','2023-01-01 21:13:07.049','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-16 00:00:00.000','1d',0),
(757,'b49a40231d092179b74fca189616f88c','2023-01-01 21:13:05.410','2023-01-01 21:13:07.051','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-17 00:00:00.000','1d',0),
(758,'b5d4cdbd98a6bb9cee865669422444c4','2023-01-01 21:13:05.412','2023-01-01 21:13:07.053','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-18 00:00:00.000','1d',0),
(759,'6e4af7158fa606cdb2ad3a8cf19ac82c','2023-01-01 21:13:05.413','2023-01-01 21:13:07.055','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-19 00:00:00.000','1d',0),
(760,'9e2f78dfbad6b0a91fddf88140f46ec8','2023-01-01 21:13:05.414','2023-01-01 21:13:07.057','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-20 00:00:00.000','1d',0),
(761,'ff5e3b06b89a4d85d0936f35795b535e','2023-01-01 21:13:05.415','2023-01-01 21:13:07.060','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-21 00:00:00.000','1d',0),
(762,'df33638c1038e2125417035fdf9d8973','2023-01-01 21:13:05.417','2023-01-01 21:13:07.063','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-22 00:00:00.000','1d',0),
(763,'d1b3b7236c2c2031c129556ceeb6779a','2023-01-01 21:13:05.418','2023-01-01 21:13:07.066','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-23 00:00:00.000','1d',0),
(764,'b6a446353aa2ee9b01d36a6268c3bdb3','2023-01-01 21:13:05.420','2023-01-01 21:13:07.068','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-24 00:00:00.000','1d',0),
(765,'ba1b78350825389bc16e21a8add8aca8','2023-01-01 21:13:05.421','2023-01-01 21:13:07.071','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-25 00:00:00.000','1d',0),
(766,'490d5a480c4ffe0cb587b448e96eabe7','2023-01-01 21:13:05.422','2023-01-01 21:13:07.073','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-26 00:00:00.000','1d',0),
(767,'3085f2729f3a8a1402491752563422b9','2023-01-01 21:13:05.424','2023-01-01 21:13:07.075','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-27 00:00:00.000','1d',0),
(768,'c7909cd6141d54e4f69e6b0ea38952ee','2023-01-01 21:13:05.425','2023-01-01 21:13:07.077','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-28 00:00:00.000','1d',0),
(769,'d3b01f15fd628268fcb103e7e3ae2682','2023-01-01 21:13:05.426','2023-01-01 21:13:07.079','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-29 00:00:00.000','1d',0),
(770,'fd869fc156cfbb8a1b4c49fb3cff6bae','2023-01-01 21:13:05.442','2023-01-01 21:13:07.082','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-30 00:00:00.000','1d',0),
(771,'b31bcfa5196c9815c6237fad5e67abbd','2023-01-01 21:13:05.444','2023-01-01 21:13:07.084','[]','collections.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-31 00:00:00.000','1d',0),
(772,'349131c9574156a6756fd1a924d10de1','2023-01-01 21:13:05.446','2023-01-01 21:20:45.159','[]','collections.63b1f73a5da8233847c0.requests.create','default',1,'2023-01-01 00:00:00.000','1d',0),
(773,'e9f97a665d610d5424b4b4ed15799254','2023-01-01 21:13:05.461','2023-01-01 21:13:07.099','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-02 00:00:00.000','1d',0),
(774,'65e6274ced95676d8d0031e11a7053bc','2023-01-01 21:13:05.463','2023-01-01 21:13:07.102','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-03 00:00:00.000','1d',0),
(775,'d985bc1481a9789972c8d2dad2bc80e5','2023-01-01 21:13:05.465','2023-01-01 21:13:07.104','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-04 00:00:00.000','1d',0),
(776,'1fa39805d83d2b429d8007ca66ff100e','2023-01-01 21:13:05.466','2023-01-01 21:13:07.106','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-05 00:00:00.000','1d',0),
(777,'f078a1d66238cdefaeb32cd2877e30b8','2023-01-01 21:13:05.468','2023-01-01 21:13:07.108','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-06 00:00:00.000','1d',0),
(778,'8b54b11869d39be688344d4462e47ab6','2023-01-01 21:13:05.469','2023-01-01 21:13:07.142','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-07 00:00:00.000','1d',0),
(779,'35e0281472ed78f88aad114304e57568','2023-01-01 21:13:05.470','2023-01-01 21:13:07.145','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-08 00:00:00.000','1d',0),
(780,'93b7a3b60bbd30615f97697d5b2a8c52','2023-01-01 21:13:05.472','2023-01-01 21:13:07.147','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-09 00:00:00.000','1d',0),
(781,'154d98360570438470aafb5b87150119','2023-01-01 21:13:05.473','2023-01-01 21:13:07.148','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-10 00:00:00.000','1d',0),
(782,'b15672855762f4911c588af822ae2623','2023-01-01 21:13:05.475','2023-01-01 21:13:07.150','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-11 00:00:00.000','1d',0),
(783,'bbcf780651cbc39808a9e92e0bfc0f41','2023-01-01 21:13:05.476','2023-01-01 21:13:07.152','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-12 00:00:00.000','1d',0),
(784,'80e8753c8546a67e870730c74c814b9c','2023-01-01 21:13:05.477','2023-01-01 21:13:07.154','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-13 00:00:00.000','1d',0),
(785,'42369b1acb3580f39e15e48a4e4f795e','2023-01-01 21:13:05.479','2023-01-01 21:13:07.156','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-14 00:00:00.000','1d',0),
(786,'f94b39ad0652ead8d34e9c5201f43537','2023-01-01 21:13:05.481','2023-01-01 21:13:07.158','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-15 00:00:00.000','1d',0),
(787,'3fdd8037592bdb4e32441452a1585f1d','2023-01-01 21:13:05.482','2023-01-01 21:13:07.160','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-16 00:00:00.000','1d',0),
(788,'febd030f42a48735dd96f9e70b77c559','2023-01-01 21:13:05.483','2023-01-01 21:13:07.162','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-17 00:00:00.000','1d',0),
(789,'23c13cae5e82b103cca268ee2ade369c','2023-01-01 21:13:05.485','2023-01-01 21:13:07.165','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-18 00:00:00.000','1d',0),
(790,'cf615826a05acb70c13d030dfb359470','2023-01-01 21:13:05.486','2023-01-01 21:13:07.169','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-19 00:00:00.000','1d',0),
(791,'2b17303164e378d32baf974559775ce2','2023-01-01 21:13:05.487','2023-01-01 21:13:07.172','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-20 00:00:00.000','1d',0),
(792,'052d3ae27b52d84d967252691aa00c1e','2023-01-01 21:13:05.490','2023-01-01 21:13:07.173','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-21 00:00:00.000','1d',0),
(793,'ce64dcdabf31413ee4fb0c025a030a86','2023-01-01 21:13:05.492','2023-01-01 21:13:07.175','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-22 00:00:00.000','1d',0),
(794,'f5c82eeed10fff61ac1d8f6d046b25b1','2023-01-01 21:13:05.494','2023-01-01 21:13:07.177','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-23 00:00:00.000','1d',0),
(795,'33d15948023a8b499ec22299466f3a00','2023-01-01 21:13:05.496','2023-01-01 21:13:07.179','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-24 00:00:00.000','1d',0),
(796,'9307ea51b8254455021a026d359f9750','2023-01-01 21:13:05.541','2023-01-01 21:13:07.181','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-25 00:00:00.000','1d',0),
(797,'3170820abc2a3eee1481329adda4a073','2023-01-01 21:13:05.543','2023-01-01 21:13:07.184','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-26 00:00:00.000','1d',0),
(798,'f6b0576edd136e6a10f557b7dfddda67','2023-01-01 21:13:05.546','2023-01-01 21:13:07.185','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-27 00:00:00.000','1d',0),
(799,'eeb1a966b275666195429950ce416ff8','2023-01-01 21:13:05.547','2023-01-01 21:13:07.187','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-28 00:00:00.000','1d',0),
(800,'26139996ea6f3e1dea412c0ca10b8291','2023-01-01 21:13:05.549','2023-01-01 21:13:07.189','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-29 00:00:00.000','1d',0),
(801,'8ab333b8883cc803a7ed38e97b6949bd','2023-01-01 21:13:05.550','2023-01-01 21:13:07.191','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-30 00:00:00.000','1d',0),
(802,'b4d6cfc17bbef8897988f9824e4bfb68','2023-01-01 21:13:05.552','2023-01-01 21:13:07.192','[]','documents.63b1f73a5da8233847c0.requests.read','default',0,'2022-12-31 00:00:00.000','1d',0),
(803,'08005350602eaf7d5b4a208688312312','2023-01-01 21:13:05.554','2023-01-01 21:20:45.175','[]','documents.63b1f73a5da8233847c0.requests.read','default',10,'2023-01-01 00:00:00.000','1d',0),
(804,'27ed8661adb0d50310a6f0e0cbb6f54a','2023-01-01 21:13:05.564','2023-01-01 21:13:07.205','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-02 00:00:00.000','1d',0),
(805,'45cd07b6d6a40292866d720fbd6c25f1','2023-01-01 21:13:05.566','2023-01-01 21:13:07.208','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-03 00:00:00.000','1d',0),
(806,'2c6767f12b69dfdf94a5d6c9170a0740','2023-01-01 21:13:05.568','2023-01-01 21:13:07.211','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-04 00:00:00.000','1d',0),
(807,'b80b83d3baaacd934e77ace9b65a1d92','2023-01-01 21:13:05.570','2023-01-01 21:13:07.213','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-05 00:00:00.000','1d',0),
(808,'dc192b8bfc4175cf07d1d1b8598f8f03','2023-01-01 21:13:05.573','2023-01-01 21:13:07.215','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-06 00:00:00.000','1d',0),
(809,'c4d0beb7d68e44133fc8cb4fb7ec938f','2023-01-01 21:13:05.575','2023-01-01 21:13:07.242','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-07 00:00:00.000','1d',0),
(810,'0eadf3ead6518925ea60f0813012bd29','2023-01-01 21:13:05.578','2023-01-01 21:13:07.244','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-08 00:00:00.000','1d',0),
(811,'da2ef10f10c25abfc55d08a81b4486a8','2023-01-01 21:13:05.579','2023-01-01 21:13:07.246','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-09 00:00:00.000','1d',0),
(812,'9056ed441dd8bff2d5b1a5d1053ea181','2023-01-01 21:13:05.581','2023-01-01 21:13:07.248','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-10 00:00:00.000','1d',0),
(813,'72fe9fb865a877972cb94483594815b6','2023-01-01 21:13:05.583','2023-01-01 21:13:07.249','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-11 00:00:00.000','1d',0),
(814,'84c6b36be667fe538c597e0b4a9caa6a','2023-01-01 21:13:05.585','2023-01-01 21:13:07.251','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-12 00:00:00.000','1d',0),
(815,'29c4e2b04f88ee1a367bfa3307af93fb','2023-01-01 21:13:05.587','2023-01-01 21:13:07.253','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-13 00:00:00.000','1d',0),
(816,'798c7ce628f3b66005c8979a914b8332','2023-01-01 21:13:05.588','2023-01-01 21:13:07.255','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-14 00:00:00.000','1d',0),
(817,'4ac1688a83742d73abec33d46e36bb1f','2023-01-01 21:13:05.591','2023-01-01 21:13:07.257','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-15 00:00:00.000','1d',0),
(818,'c47dde8225979cfd6760601a6253ae8f','2023-01-01 21:13:05.594','2023-01-01 21:13:07.259','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-16 00:00:00.000','1d',0),
(819,'086aa2eb913bcfee2299df2a9dbf0575','2023-01-01 21:13:05.642','2023-01-01 21:13:07.261','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-17 00:00:00.000','1d',0),
(820,'f7d0c48e5ba4f5676a39063db8d69f2b','2023-01-01 21:13:05.644','2023-01-01 21:13:07.263','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-18 00:00:00.000','1d',0),
(821,'d590c91dd781b49c1796cf899af2c9a9','2023-01-01 21:13:05.646','2023-01-01 21:13:07.265','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-19 00:00:00.000','1d',0),
(822,'9b068ad9e937a227f530656b6043dd6f','2023-01-01 21:13:05.648','2023-01-01 21:13:07.267','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-20 00:00:00.000','1d',0),
(823,'81cc144c8251b4cb2d19c36f72235092','2023-01-01 21:13:05.650','2023-01-01 21:13:07.269','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-21 00:00:00.000','1d',0),
(824,'36cc25107ef15a7a1e1079a76812b0ac','2023-01-01 21:13:05.652','2023-01-01 21:13:07.271','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-22 00:00:00.000','1d',0),
(825,'8da274405e9d6a763e9840f6799588be','2023-01-01 21:13:05.654','2023-01-01 21:13:07.273','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-23 00:00:00.000','1d',0),
(826,'43942390cf101a84585d003fd12aee42','2023-01-01 21:13:05.656','2023-01-01 21:13:07.275','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-24 00:00:00.000','1d',0),
(827,'7148a1b6655bc825caf3ab9805649715','2023-01-01 21:13:05.658','2023-01-01 21:13:07.277','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-25 00:00:00.000','1d',0),
(828,'0d45da73212d51c563c96482aeb227ab','2023-01-01 21:13:05.659','2023-01-01 21:13:07.279','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-26 00:00:00.000','1d',0),
(829,'15058159fa9a4fd0a50134b2ba94f33c','2023-01-01 21:13:05.661','2023-01-01 21:13:07.281','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-27 00:00:00.000','1d',0),
(830,'edf10289ea44e1467be6eda30287c3ee','2023-01-01 21:13:05.663','2023-01-01 21:13:07.283','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-28 00:00:00.000','1d',0),
(831,'3d5d5222eea138fb0554a2ba5e924c1b','2023-01-01 21:13:05.666','2023-01-01 21:13:07.285','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-29 00:00:00.000','1d',0),
(832,'989accad570c24953048d87081c890ba','2023-01-01 21:13:05.668','2023-01-01 21:13:07.288','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-30 00:00:00.000','1d',0),
(833,'999dbd1ea810451e0a656418693cad1f','2023-01-01 21:13:05.670','2023-01-01 21:13:07.290','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',0,'2022-12-31 00:00:00.000','1d',0),
(834,'d61b14e6a3050df510b93f9f03a6f9d8','2023-01-01 21:13:05.672','2023-01-01 21:20:45.245','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.read','default',10,'2023-01-01 00:00:00.000','1d',0),
(835,'ea559447d5dbcd68bb4eeeb8f86322d7','2023-01-01 21:13:05.860','2023-01-01 21:13:07.361','[]','collections.$all.count.total','default',0,'2022-12-02 00:00:00.000','1d',0),
(836,'416a965ba39b329d76a6a28b7d6985ee','2023-01-01 21:13:05.862','2023-01-01 21:13:07.363','[]','collections.$all.count.total','default',0,'2022-12-03 00:00:00.000','1d',0),
(837,'3f016aef5b3da8bda8ae8238bf733eca','2023-01-01 21:13:05.864','2023-01-01 21:13:07.366','[]','collections.$all.count.total','default',0,'2022-12-04 00:00:00.000','1d',0),
(838,'2cc5e2a7a5ef6ec36c55d95466357df5','2023-01-01 21:13:05.865','2023-01-01 21:13:07.368','[]','collections.$all.count.total','default',0,'2022-12-05 00:00:00.000','1d',0),
(839,'03a29b1ccbb6d69b1797349c19acb11d','2023-01-01 21:13:05.868','2023-01-01 21:13:07.370','[]','collections.$all.count.total','default',0,'2022-12-06 00:00:00.000','1d',0),
(840,'fde52b5c3d9296e9eb1a7589b16dcd6d','2023-01-01 21:13:05.869','2023-01-01 21:13:07.373','[]','collections.$all.count.total','default',0,'2022-12-07 00:00:00.000','1d',0),
(841,'9fe9305f9dcac5ad31794b11442270f9','2023-01-01 21:13:05.871','2023-01-01 21:13:07.375','[]','collections.$all.count.total','default',0,'2022-12-08 00:00:00.000','1d',0),
(842,'15b85895e2291caba2fbccb3ff1f6269','2023-01-01 21:13:05.873','2023-01-01 21:13:07.377','[]','collections.$all.count.total','default',0,'2022-12-09 00:00:00.000','1d',0),
(843,'01e9984310139b276597c3b5f8b3cf69','2023-01-01 21:13:05.875','2023-01-01 21:13:07.380','[]','collections.$all.count.total','default',0,'2022-12-10 00:00:00.000','1d',0),
(844,'cd1787b2bd2a54403479255b9823c896','2023-01-01 21:13:05.876','2023-01-01 21:13:07.382','[]','collections.$all.count.total','default',0,'2022-12-11 00:00:00.000','1d',0),
(845,'081c79fdec4f26612277c55d54428df7','2023-01-01 21:13:05.879','2023-01-01 21:13:07.384','[]','collections.$all.count.total','default',0,'2022-12-12 00:00:00.000','1d',0),
(846,'d08ff36f1eaadd9987196f16b60456b9','2023-01-01 21:13:05.881','2023-01-01 21:13:07.386','[]','collections.$all.count.total','default',0,'2022-12-13 00:00:00.000','1d',0),
(847,'9ff579e357123aef1186d14308e5f1ce','2023-01-01 21:13:05.883','2023-01-01 21:13:07.388','[]','collections.$all.count.total','default',0,'2022-12-14 00:00:00.000','1d',0),
(848,'d20e80b274c7db671748196d70255671','2023-01-01 21:13:05.941','2023-01-01 21:13:07.390','[]','collections.$all.count.total','default',0,'2022-12-15 00:00:00.000','1d',0),
(849,'2a6cfc2738a3caa0d089a88bcac02ecf','2023-01-01 21:13:05.945','2023-01-01 21:13:07.392','[]','collections.$all.count.total','default',0,'2022-12-16 00:00:00.000','1d',0),
(850,'bf063fd2ad23030ba8012010e8cd2604','2023-01-01 21:13:05.951','2023-01-01 21:13:07.394','[]','collections.$all.count.total','default',0,'2022-12-17 00:00:00.000','1d',0),
(851,'b761cd21dbd5a50deef4101093e7ccfb','2023-01-01 21:13:05.953','2023-01-01 21:13:07.397','[]','collections.$all.count.total','default',0,'2022-12-18 00:00:00.000','1d',0),
(852,'bb4247e71fc3d004f42b54422f5a6f9d','2023-01-01 21:13:05.955','2023-01-01 21:13:07.398','[]','collections.$all.count.total','default',0,'2022-12-19 00:00:00.000','1d',0),
(853,'8ee3fc3627e32acface9e3430dc442fa','2023-01-01 21:13:05.957','2023-01-01 21:13:07.400','[]','collections.$all.count.total','default',0,'2022-12-20 00:00:00.000','1d',0),
(854,'9811239d65af9f19b7df4c0dd5a7b415','2023-01-01 21:13:05.960','2023-01-01 21:13:07.402','[]','collections.$all.count.total','default',0,'2022-12-21 00:00:00.000','1d',0),
(855,'8e1620c05fcd664f00595d86f6180fb8','2023-01-01 21:13:05.962','2023-01-01 21:13:07.404','[]','collections.$all.count.total','default',0,'2022-12-22 00:00:00.000','1d',0),
(856,'993421b61e5986e8540d76c404dc4d82','2023-01-01 21:13:05.963','2023-01-01 21:13:07.405','[]','collections.$all.count.total','default',0,'2022-12-23 00:00:00.000','1d',0),
(857,'58a147a5a3490e12b31fb8c002c977ac','2023-01-01 21:13:05.966','2023-01-01 21:13:07.407','[]','collections.$all.count.total','default',0,'2022-12-24 00:00:00.000','1d',0),
(858,'ce3115e55e84c2179dd696e37dba8c5b','2023-01-01 21:13:05.967','2023-01-01 21:13:07.409','[]','collections.$all.count.total','default',0,'2022-12-25 00:00:00.000','1d',0),
(859,'92252b87c62f0b2622b0284f75a9ca6e','2023-01-01 21:13:05.969','2023-01-01 21:13:07.411','[]','collections.$all.count.total','default',0,'2022-12-26 00:00:00.000','1d',0),
(860,'e2c6c6434a1cf93e5b2c2044bf4b8d9d','2023-01-01 21:13:05.970','2023-01-01 21:13:07.412','[]','collections.$all.count.total','default',0,'2022-12-27 00:00:00.000','1d',0),
(861,'fc847f5f4725aea8a6f98bc6adf3609a','2023-01-01 21:13:05.972','2023-01-01 21:13:07.414','[]','collections.$all.count.total','default',0,'2022-12-28 00:00:00.000','1d',0),
(862,'92d9335a1f65ec38de68a57f7343c845','2023-01-01 21:13:05.973','2023-01-01 21:13:07.416','[]','collections.$all.count.total','default',0,'2022-12-29 00:00:00.000','1d',0),
(863,'6ce1953be79d540f170506314c41ad5b','2023-01-01 21:13:05.975','2023-01-01 21:13:07.418','[]','collections.$all.count.total','default',0,'2022-12-30 00:00:00.000','1d',0),
(864,'8d656bd4b50ff67c41abefd82dc5c953','2023-01-01 21:13:05.977','2023-01-01 21:13:07.420','[]','collections.$all.count.total','default',0,'2022-12-31 00:00:00.000','1d',0),
(865,'53e2b397b11714967d34323639e64f3b','2023-01-01 21:13:05.978','2023-01-01 21:20:45.367','[]','collections.$all.count.total','default',1,'2023-01-01 00:00:00.000','1d',0),
(866,'589120fb81c83417bdd8b3bdb4d980bd','2023-01-01 21:13:06.042','2023-01-01 21:13:07.428','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-02 00:00:00.000','1d',0),
(867,'47c9d34fb3d83ac0d05a0f76d4fb2a18','2023-01-01 21:13:06.045','2023-01-01 21:13:07.433','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-03 00:00:00.000','1d',0),
(868,'385c969118039fba07fd857f605680d7','2023-01-01 21:13:06.048','2023-01-01 21:13:07.435','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-04 00:00:00.000','1d',0),
(869,'48a30407eb578d729608756756605490','2023-01-01 21:13:06.050','2023-01-01 21:13:07.437','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-05 00:00:00.000','1d',0),
(870,'d1260a9737856923b8acaf8ecfff4119','2023-01-01 21:13:06.052','2023-01-01 21:13:07.439','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-06 00:00:00.000','1d',0),
(871,'095e6bece8f4da47a5cd3c877409b9ac','2023-01-01 21:13:06.054','2023-01-01 21:13:07.441','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-07 00:00:00.000','1d',0),
(872,'52a609f763ef6f363eff6c55eff72ea8','2023-01-01 21:13:06.055','2023-01-01 21:13:07.443','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-08 00:00:00.000','1d',0),
(873,'28d4ded4f253cd00dafe87c8f7d6a0c4','2023-01-01 21:13:06.057','2023-01-01 21:13:07.445','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-09 00:00:00.000','1d',0),
(874,'eaa062669b64255600deef05d248d422','2023-01-01 21:13:06.059','2023-01-01 21:13:07.447','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-10 00:00:00.000','1d',0),
(875,'8e871f97262e9ab3952ca3f7413efe68','2023-01-01 21:13:06.061','2023-01-01 21:13:07.449','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-11 00:00:00.000','1d',0),
(876,'ffe39dfdd1d8f3251b582f10a0691c0c','2023-01-01 21:13:06.063','2023-01-01 21:13:07.451','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-12 00:00:00.000','1d',0),
(877,'5a6e1731acfa1a7d15454f87cfb9388b','2023-01-01 21:13:06.064','2023-01-01 21:13:07.453','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-13 00:00:00.000','1d',0),
(878,'d0e31eb7bd73278431715016749b4163','2023-01-01 21:13:06.066','2023-01-01 21:13:07.454','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-14 00:00:00.000','1d',0),
(879,'746784432a21b6db555af036e9b67934','2023-01-01 21:13:06.068','2023-01-01 21:13:07.456','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-15 00:00:00.000','1d',0),
(880,'290f94026161cb1a2fa289a3478dde42','2023-01-01 21:13:06.069','2023-01-01 21:13:07.458','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-16 00:00:00.000','1d',0),
(881,'cc59ba4a3fbbd49655d997b83a53f7f4','2023-01-01 21:13:06.071','2023-01-01 21:13:07.460','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-17 00:00:00.000','1d',0),
(882,'8b3b9f3288ce577d17de46bc64c920f5','2023-01-01 21:13:06.073','2023-01-01 21:13:07.462','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-18 00:00:00.000','1d',0),
(883,'fe5bfe762f3aeb74c5e67bf3e380e90b','2023-01-01 21:13:06.074','2023-01-01 21:13:07.465','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-19 00:00:00.000','1d',0),
(884,'a042786a5fcfec59547ff18fdb97295c','2023-01-01 21:13:06.075','2023-01-01 21:13:07.467','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-20 00:00:00.000','1d',0),
(885,'aaa424e62f97c614c36fdf47b1236a27','2023-01-01 21:13:06.077','2023-01-01 21:13:07.468','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-21 00:00:00.000','1d',0),
(886,'6563fc19d61f1c63c1a362a0c7434784','2023-01-01 21:13:06.080','2023-01-01 21:13:07.471','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-22 00:00:00.000','1d',0),
(887,'2d9e4cb079790319fcae11fd4d266cc7','2023-01-01 21:13:06.082','2023-01-01 21:13:07.473','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-23 00:00:00.000','1d',0),
(888,'7ff83f79523fa89b3794791efacfbc57','2023-01-01 21:13:06.084','2023-01-01 21:13:07.474','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-24 00:00:00.000','1d',0),
(889,'818d671e266ed9c0eefc4c361ed14dde','2023-01-01 21:13:06.085','2023-01-01 21:13:07.476','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-25 00:00:00.000','1d',0),
(890,'442151331b4b3cafe69bee072da048a4','2023-01-01 21:13:06.087','2023-01-01 21:13:07.478','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-26 00:00:00.000','1d',0),
(891,'d8083b126eb6d5ae5a6f154209bd595c','2023-01-01 21:13:06.089','2023-01-01 21:13:07.480','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-27 00:00:00.000','1d',0),
(892,'637a85fabc12b922a31c3968d6fa497e','2023-01-01 21:13:06.090','2023-01-01 21:13:07.482','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-28 00:00:00.000','1d',0),
(893,'ab8b6449204f953bc43d3846d341be17','2023-01-01 21:13:06.092','2023-01-01 21:13:07.484','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-29 00:00:00.000','1d',0),
(894,'a895d5294dafb09efdccaddc0d82a7df','2023-01-01 21:13:06.093','2023-01-01 21:13:07.486','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-30 00:00:00.000','1d',0),
(895,'42578ee30fe5d95d89bdcdaf9be4016e','2023-01-01 21:13:06.095','2023-01-01 21:13:07.488','[]','collections.63b1f73a5da8233847c0.count.total','default',0,'2022-12-31 00:00:00.000','1d',0),
(896,'c89a60138951eca1e2ad311804527c39','2023-01-01 21:13:06.096','2023-01-01 21:20:45.376','[]','collections.63b1f73a5da8233847c0.count.total','default',1,'2023-01-01 00:00:00.000','1d',0),
(897,'4652ba23edb50946ea6336514caea1f2','2023-01-01 21:16:08.209','2023-01-01 21:16:09.531','[]','collections.$all.requests.update','default',0,'2022-12-31 21:00:00.000','1h',0),
(898,'989b0d42c5f062884040e0b84f71f2ac','2023-01-01 21:16:08.210','2023-01-01 21:16:09.533','[]','collections.$all.requests.update','default',0,'2022-12-31 22:00:00.000','1h',0),
(899,'a8f05313369f7ec77626c2e031ce65a4','2023-01-01 21:16:08.213','2023-01-01 21:16:09.535','[]','collections.$all.requests.update','default',0,'2022-12-31 23:00:00.000','1h',0),
(900,'a5bbc0866ffc48c1f0e82b3cb239dc9e','2023-01-01 21:16:08.215','2023-01-01 21:16:09.537','[]','collections.$all.requests.update','default',0,'2023-01-01 00:00:00.000','1h',0),
(901,'00f9fee1b36f1a48fc01205b50ca2b2b','2023-01-01 21:16:08.216','2023-01-01 21:16:09.539','[]','collections.$all.requests.update','default',0,'2023-01-01 01:00:00.000','1h',0),
(902,'aefbe6ec24b38e5317482c37053e19bf','2023-01-01 21:16:08.218','2023-01-01 21:16:09.543','[]','collections.$all.requests.update','default',0,'2023-01-01 02:00:00.000','1h',0),
(903,'178028f58dc1e8fb10cfa91cc8775208','2023-01-01 21:16:08.219','2023-01-01 21:16:09.546','[]','collections.$all.requests.update','default',0,'2023-01-01 03:00:00.000','1h',0),
(904,'188a9aa43b0bf84362c5c3d609f4a255','2023-01-01 21:16:08.221','2023-01-01 21:16:09.549','[]','collections.$all.requests.update','default',0,'2023-01-01 04:00:00.000','1h',0),
(905,'d3d37917bc6fdbd983a4ad97464bd5ae','2023-01-01 21:16:08.223','2023-01-01 21:16:09.552','[]','collections.$all.requests.update','default',0,'2023-01-01 05:00:00.000','1h',0),
(906,'ed71d77a76dac3470fcb519939e7b12e','2023-01-01 21:16:08.225','2023-01-01 21:16:09.554','[]','collections.$all.requests.update','default',0,'2023-01-01 06:00:00.000','1h',0),
(907,'048d3ed551b377c506b75211b6dfe750','2023-01-01 21:16:08.227','2023-01-01 21:16:09.557','[]','collections.$all.requests.update','default',0,'2023-01-01 07:00:00.000','1h',0),
(908,'629dc569aa6e75e82a85cfb3156becb0','2023-01-01 21:16:08.229','2023-01-01 21:16:09.560','[]','collections.$all.requests.update','default',0,'2023-01-01 08:00:00.000','1h',0),
(909,'8afebe4d7ba56d2b30c7c6d942bd55e5','2023-01-01 21:16:08.231','2023-01-01 21:16:09.562','[]','collections.$all.requests.update','default',0,'2023-01-01 09:00:00.000','1h',0),
(910,'cdd6bb000b9e65ab24614fcf47202acd','2023-01-01 21:16:08.233','2023-01-01 21:16:09.565','[]','collections.$all.requests.update','default',0,'2023-01-01 10:00:00.000','1h',0),
(911,'d346abaffb2d90bac8890e36f632d567','2023-01-01 21:16:08.237','2023-01-01 21:16:09.567','[]','collections.$all.requests.update','default',0,'2023-01-01 11:00:00.000','1h',0),
(912,'d97338a4d39ff06a5f0da5c04c420f84','2023-01-01 21:16:08.238','2023-01-01 21:16:09.569','[]','collections.$all.requests.update','default',0,'2023-01-01 12:00:00.000','1h',0),
(913,'840e36438b22f67ab22bf7e4336fe02a','2023-01-01 21:16:08.240','2023-01-01 21:16:09.571','[]','collections.$all.requests.update','default',0,'2023-01-01 13:00:00.000','1h',0),
(914,'512e470e0ab00f88fd38ba716ba65ddb','2023-01-01 21:16:08.241','2023-01-01 21:16:09.573','[]','collections.$all.requests.update','default',0,'2023-01-01 14:00:00.000','1h',0),
(915,'d0b7bc759d173372c899d5ece616d34e','2023-01-01 21:16:08.243','2023-01-01 21:16:09.575','[]','collections.$all.requests.update','default',0,'2023-01-01 15:00:00.000','1h',0),
(916,'d206d6e7ce72ff99d73f723ba6748227','2023-01-01 21:16:08.245','2023-01-01 21:16:09.578','[]','collections.$all.requests.update','default',0,'2023-01-01 16:00:00.000','1h',0),
(917,'8e1719c383004b234799879187881cff','2023-01-01 21:16:08.246','2023-01-01 21:16:09.580','[]','collections.$all.requests.update','default',0,'2023-01-01 17:00:00.000','1h',0),
(918,'ca84185666e73ae974d65fb7b327a4cf','2023-01-01 21:16:08.248','2023-01-01 21:16:09.582','[]','collections.$all.requests.update','default',0,'2023-01-01 18:00:00.000','1h',0),
(919,'f65a10e65ceac2b070f888e4251f8152','2023-01-01 21:16:08.250','2023-01-01 21:16:09.585','[]','collections.$all.requests.update','default',0,'2023-01-01 19:00:00.000','1h',0),
(920,'d3eabc6bebc9265c4159f9297f2f72a2','2023-01-01 21:16:08.251','2023-01-01 21:16:09.587','[]','collections.$all.requests.update','default',0,'2023-01-01 20:00:00.000','1h',0),
(921,'5af9d629cc3c5b8c2ae9688ef70da9cd','2023-01-01 21:16:08.253','2023-01-01 21:20:44.722','[]','collections.$all.requests.update','default',5,'2023-01-01 21:00:00.000','1h',0),
(922,'40de96854e13709da0383575a4c95ee6','2023-01-01 21:16:08.277','2023-01-01 21:16:09.622','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-31 21:00:00.000','1h',0),
(923,'6ae859052da74adcea02df71346f01c9','2023-01-01 21:16:08.279','2023-01-01 21:16:09.625','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-31 22:00:00.000','1h',0),
(924,'390ceeed65ce18a36aef664e27a17212','2023-01-01 21:16:08.280','2023-01-01 21:16:09.627','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-31 23:00:00.000','1h',0),
(925,'1742f5d131a7a41fdb5cd8112a1cedb7','2023-01-01 21:16:08.282','2023-01-01 21:16:09.629','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 00:00:00.000','1h',0),
(926,'981f34781984e476db9d1af3afc02b64','2023-01-01 21:16:08.283','2023-01-01 21:16:09.631','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 01:00:00.000','1h',0),
(927,'45c1ad4b1e966ad696459996ae51232e','2023-01-01 21:16:08.284','2023-01-01 21:16:09.633','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 02:00:00.000','1h',0),
(928,'1906b23943e6040d46506b936bc8798d','2023-01-01 21:16:08.286','2023-01-01 21:16:09.635','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 03:00:00.000','1h',0),
(929,'9bfcfe36e00e76c0579308ee4f386669','2023-01-01 21:16:08.288','2023-01-01 21:16:09.637','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 04:00:00.000','1h',0),
(930,'ce0c00a10309fe09ee2d7c07995d97de','2023-01-01 21:16:08.291','2023-01-01 21:16:09.639','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 05:00:00.000','1h',0),
(931,'981308044555e6c5a7059bf64f649b84','2023-01-01 21:16:08.294','2023-01-01 21:16:09.641','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 06:00:00.000','1h',0),
(932,'cd7bec50db99b26ef151a71f0572d9f0','2023-01-01 21:16:08.296','2023-01-01 21:16:09.643','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 07:00:00.000','1h',0),
(933,'5caa55c496285261d22b9b21a4fe6932','2023-01-01 21:16:08.298','2023-01-01 21:16:09.645','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 08:00:00.000','1h',0),
(934,'78d341e3e85d146ec4705133e5e46de8','2023-01-01 21:16:08.300','2023-01-01 21:16:09.647','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 09:00:00.000','1h',0),
(935,'608ec4c265fc11ce0e80b505722061af','2023-01-01 21:16:08.301','2023-01-01 21:16:09.648','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 10:00:00.000','1h',0),
(936,'8bbbd59e627a195d5aa84486a1827495','2023-01-01 21:16:08.303','2023-01-01 21:16:09.650','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 11:00:00.000','1h',0),
(937,'a9ea1738de0c796ce92e82987a600ef9','2023-01-01 21:16:08.304','2023-01-01 21:16:09.652','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 12:00:00.000','1h',0),
(938,'c9c1aab7758b686293bfbb806ccffbd6','2023-01-01 21:16:08.306','2023-01-01 21:16:09.654','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 13:00:00.000','1h',0),
(939,'c88eb2cacc9e19157840c54fa482c6d3','2023-01-01 21:16:08.307','2023-01-01 21:16:09.657','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 14:00:00.000','1h',0),
(940,'901491dd3ede5f3c11a2d544b5117c98','2023-01-01 21:16:08.309','2023-01-01 21:16:09.658','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 15:00:00.000','1h',0),
(941,'a1d5323d34859a02ef4d8f7a66a093d0','2023-01-01 21:16:08.310','2023-01-01 21:16:09.660','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 16:00:00.000','1h',0),
(942,'7aacb9d783d399d5780afd3aa8930281','2023-01-01 21:16:08.312','2023-01-01 21:16:09.662','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 17:00:00.000','1h',0),
(943,'fa673fa2e4611ea043e397cacd91f65b','2023-01-01 21:16:08.313','2023-01-01 21:16:09.664','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 18:00:00.000','1h',0),
(944,'14369ff563fad724186f7dc40e01c9b0','2023-01-01 21:16:08.315','2023-01-01 21:16:09.666','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 19:00:00.000','1h',0),
(945,'d220b5ae77dc7ef4f7c2ed63c96642ed','2023-01-01 21:16:08.316','2023-01-01 21:16:09.667','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 20:00:00.000','1h',0),
(946,'241909d91158f4fb3a89905ed3096b9f','2023-01-01 21:16:08.317','2023-01-01 21:20:44.797','[]','collections.63b1f73a5da8233847c0.requests.update','default',5,'2023-01-01 21:00:00.000','1h',0),
(947,'7d28993fb3c7de75d0d791167bfa7f36','2023-01-01 21:16:08.497','2023-01-01 21:16:09.852','[]','collections.$all.requests.update','default',0,'2022-12-02 00:00:00.000','1d',0),
(948,'7b0f5b0d9ad1642ee9089b40b91658c3','2023-01-01 21:16:08.499','2023-01-01 21:16:09.854','[]','collections.$all.requests.update','default',0,'2022-12-03 00:00:00.000','1d',0),
(949,'9661d966f2c5ae9966b7dcf2561c00c1','2023-01-01 21:16:08.500','2023-01-01 21:16:09.856','[]','collections.$all.requests.update','default',0,'2022-12-04 00:00:00.000','1d',0),
(950,'8355c8f062035e0e8af2fb297b1c8237','2023-01-01 21:16:08.502','2023-01-01 21:16:09.858','[]','collections.$all.requests.update','default',0,'2022-12-05 00:00:00.000','1d',0),
(951,'7ae9f84af7eec474e8abaa95ac42b191','2023-01-01 21:16:08.504','2023-01-01 21:16:09.860','[]','collections.$all.requests.update','default',0,'2022-12-06 00:00:00.000','1d',0),
(952,'d92aa33756adc9517be575b6ddc7b67e','2023-01-01 21:16:08.505','2023-01-01 21:16:09.862','[]','collections.$all.requests.update','default',0,'2022-12-07 00:00:00.000','1d',0),
(953,'f3600ed4b652acab6661f09695604f6e','2023-01-01 21:16:08.507','2023-01-01 21:16:09.864','[]','collections.$all.requests.update','default',0,'2022-12-08 00:00:00.000','1d',0),
(954,'50b94ca2bfc88aab28278cb3273f7a79','2023-01-01 21:16:08.509','2023-01-01 21:16:09.866','[]','collections.$all.requests.update','default',0,'2022-12-09 00:00:00.000','1d',0),
(955,'f6f8c9a706d6b2c789d858eea4c85c30','2023-01-01 21:16:08.511','2023-01-01 21:16:09.868','[]','collections.$all.requests.update','default',0,'2022-12-10 00:00:00.000','1d',0),
(956,'810aa3bfba90e0747a0ed1d7f8268510','2023-01-01 21:16:08.512','2023-01-01 21:16:09.870','[]','collections.$all.requests.update','default',0,'2022-12-11 00:00:00.000','1d',0),
(957,'42d3f95bc3c3857c2ab26eeda11ca612','2023-01-01 21:16:08.514','2023-01-01 21:16:09.872','[]','collections.$all.requests.update','default',0,'2022-12-12 00:00:00.000','1d',0),
(958,'4d4b378be32eaa011d2531a109d07e61','2023-01-01 21:16:08.516','2023-01-01 21:16:09.874','[]','collections.$all.requests.update','default',0,'2022-12-13 00:00:00.000','1d',0),
(959,'c4bd50073096526e80a4119e2ef50488','2023-01-01 21:16:08.518','2023-01-01 21:16:09.876','[]','collections.$all.requests.update','default',0,'2022-12-14 00:00:00.000','1d',0),
(960,'2b46fc751f2076f7bd28807d30650a98','2023-01-01 21:16:08.519','2023-01-01 21:16:09.878','[]','collections.$all.requests.update','default',0,'2022-12-15 00:00:00.000','1d',0),
(961,'d369f299e0ab427201a18fe69f80b6e0','2023-01-01 21:16:08.521','2023-01-01 21:16:09.880','[]','collections.$all.requests.update','default',0,'2022-12-16 00:00:00.000','1d',0),
(962,'d893d9232eafc3611b7fb7be60d8c29a','2023-01-01 21:16:08.523','2023-01-01 21:16:09.882','[]','collections.$all.requests.update','default',0,'2022-12-17 00:00:00.000','1d',0),
(963,'b37780e667f03d80326e8aaf04ab0899','2023-01-01 21:16:08.524','2023-01-01 21:16:09.884','[]','collections.$all.requests.update','default',0,'2022-12-18 00:00:00.000','1d',0),
(964,'910d7518bbce808269b3fb1886555387','2023-01-01 21:16:08.526','2023-01-01 21:16:09.886','[]','collections.$all.requests.update','default',0,'2022-12-19 00:00:00.000','1d',0),
(965,'39c286760227e9d31b13073d91319c68','2023-01-01 21:16:08.542','2023-01-01 21:16:09.889','[]','collections.$all.requests.update','default',0,'2022-12-20 00:00:00.000','1d',0),
(966,'5ad9b811e6fffbecb0b89df1026a9586','2023-01-01 21:16:08.544','2023-01-01 21:16:09.891','[]','collections.$all.requests.update','default',0,'2022-12-21 00:00:00.000','1d',0),
(967,'b569680ff559ff8e47532ce61a481e20','2023-01-01 21:16:08.546','2023-01-01 21:16:09.893','[]','collections.$all.requests.update','default',0,'2022-12-22 00:00:00.000','1d',0),
(968,'6108a2038f35f862d8ed84bbd8656726','2023-01-01 21:16:08.548','2023-01-01 21:16:09.896','[]','collections.$all.requests.update','default',0,'2022-12-23 00:00:00.000','1d',0),
(969,'3dd8edb016ef46de7f614f9568c18b0e','2023-01-01 21:16:08.549','2023-01-01 21:16:09.898','[]','collections.$all.requests.update','default',0,'2022-12-24 00:00:00.000','1d',0),
(970,'dfbd93006d94667018b512fbbc4b2417','2023-01-01 21:16:08.550','2023-01-01 21:16:09.900','[]','collections.$all.requests.update','default',0,'2022-12-25 00:00:00.000','1d',0),
(971,'15551228478ec96bad4950a2c687266c','2023-01-01 21:16:08.552','2023-01-01 21:16:09.902','[]','collections.$all.requests.update','default',0,'2022-12-26 00:00:00.000','1d',0),
(972,'3d3663a16db245c1112f65442a3f8fa6','2023-01-01 21:16:08.553','2023-01-01 21:16:09.904','[]','collections.$all.requests.update','default',0,'2022-12-27 00:00:00.000','1d',0),
(973,'8012ebc3f1398ae32f9cb32747f83cf9','2023-01-01 21:16:08.556','2023-01-01 21:16:09.906','[]','collections.$all.requests.update','default',0,'2022-12-28 00:00:00.000','1d',0),
(974,'31799d4d9c04145aa31ebeb989025949','2023-01-01 21:16:08.557','2023-01-01 21:16:09.908','[]','collections.$all.requests.update','default',0,'2022-12-29 00:00:00.000','1d',0),
(975,'e8b5ca48faa96ddcf82d99fded0d410b','2023-01-01 21:16:08.559','2023-01-01 21:16:09.910','[]','collections.$all.requests.update','default',0,'2022-12-30 00:00:00.000','1d',0),
(976,'b42b33cb93ed27e253ed02093bbcea70','2023-01-01 21:16:08.561','2023-01-01 21:16:09.912','[]','collections.$all.requests.update','default',0,'2022-12-31 00:00:00.000','1d',0),
(977,'6b77188340473c12cf3d1ce9cacde254','2023-01-01 21:16:08.562','2023-01-01 21:20:45.079','[]','collections.$all.requests.update','default',5,'2023-01-01 00:00:00.000','1d',0),
(978,'49cda3a82d6f003e693e5d69d55eec4d','2023-01-01 21:16:08.584','2023-01-01 21:16:09.937','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-02 00:00:00.000','1d',0),
(979,'82171bb722ba5416bcb139040936d34c','2023-01-01 21:16:08.586','2023-01-01 21:16:09.939','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-03 00:00:00.000','1d',0),
(980,'00dd0636caed5e7a504e4fec1e151677','2023-01-01 21:16:08.587','2023-01-01 21:16:09.941','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-04 00:00:00.000','1d',0),
(981,'25d77d5270e1a33a5f5f3ef98cb7d469','2023-01-01 21:16:08.588','2023-01-01 21:16:09.943','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-05 00:00:00.000','1d',0),
(982,'2b60529986e0aab44b84ef36be4572da','2023-01-01 21:16:08.590','2023-01-01 21:16:09.946','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-06 00:00:00.000','1d',0),
(983,'10abab8e141aa461d9c82140233a311d','2023-01-01 21:16:08.592','2023-01-01 21:16:09.948','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-07 00:00:00.000','1d',0),
(984,'01868d4f87eecc4ca74a69224e8425c3','2023-01-01 21:16:08.593','2023-01-01 21:16:09.950','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-08 00:00:00.000','1d',0),
(985,'aae64ba2f2ebaf2f1f475e0c40c64ab9','2023-01-01 21:16:08.594','2023-01-01 21:16:09.952','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-09 00:00:00.000','1d',0),
(986,'a51927a0562bc159b32d3cf10afec6e5','2023-01-01 21:16:08.595','2023-01-01 21:16:09.954','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-10 00:00:00.000','1d',0),
(987,'e35fac99dfe72066dbd7ddacc4e844bb','2023-01-01 21:16:08.597','2023-01-01 21:16:09.956','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-11 00:00:00.000','1d',0),
(988,'62b8b558ae23b022adde6a70c6e6999d','2023-01-01 21:16:08.598','2023-01-01 21:16:09.958','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-12 00:00:00.000','1d',0),
(989,'861939ab648205ce8ca07e18bcf9d69c','2023-01-01 21:16:08.599','2023-01-01 21:16:09.961','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-13 00:00:00.000','1d',0),
(990,'f55c38cfcc73ca46bd352a3e0433feb4','2023-01-01 21:16:08.600','2023-01-01 21:16:09.963','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-14 00:00:00.000','1d',0),
(991,'f4d4e58a558719582631825d2f4f7172','2023-01-01 21:16:08.602','2023-01-01 21:16:09.965','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-15 00:00:00.000','1d',0),
(992,'1115c64c8633cb9f3609975b0d82f8ca','2023-01-01 21:16:08.604','2023-01-01 21:16:09.967','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-16 00:00:00.000','1d',0),
(993,'36efea651102dc235619d07ced600c86','2023-01-01 21:16:08.605','2023-01-01 21:16:09.969','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-17 00:00:00.000','1d',0),
(994,'2f46edee61a2373a872c33241fe6d3bf','2023-01-01 21:16:08.606','2023-01-01 21:16:09.972','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-18 00:00:00.000','1d',0),
(995,'aaff5382e16509f022f839529a8c6201','2023-01-01 21:16:08.608','2023-01-01 21:16:09.974','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-19 00:00:00.000','1d',0),
(996,'de25f17eb536a16dc032f826fcfc4b81','2023-01-01 21:16:08.609','2023-01-01 21:16:09.976','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-20 00:00:00.000','1d',0),
(997,'6b538903ad3bb45fd9c7ebc0a5af4672','2023-01-01 21:16:08.610','2023-01-01 21:16:09.978','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-21 00:00:00.000','1d',0),
(998,'7cb1b5ed7c98ae093807135b62ec02fc','2023-01-01 21:16:08.612','2023-01-01 21:16:09.980','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-22 00:00:00.000','1d',0),
(999,'b6870584f306fecebbbfb593d4ffb240','2023-01-01 21:16:08.613','2023-01-01 21:16:09.983','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-23 00:00:00.000','1d',0),
(1000,'15866f649714e514a62a5d2aee0fb989','2023-01-01 21:16:08.615','2023-01-01 21:16:09.985','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-24 00:00:00.000','1d',0),
(1001,'b78e23464b7ed23d170c21e9a7d4dc70','2023-01-01 21:16:08.617','2023-01-01 21:16:09.986','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-25 00:00:00.000','1d',0),
(1002,'697c2e0d36f7655794a1454b3b073679','2023-01-01 21:16:08.618','2023-01-01 21:16:09.988','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-26 00:00:00.000','1d',0),
(1003,'07440cc7f72e3b992a19e1b0daedb5f7','2023-01-01 21:16:08.619','2023-01-01 21:16:09.990','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-27 00:00:00.000','1d',0),
(1004,'d22c68564723af96f93bf6cedb3b0170','2023-01-01 21:16:08.621','2023-01-01 21:16:09.992','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-28 00:00:00.000','1d',0),
(1005,'26e67e4fbefd5f789d706cd8d46b9589','2023-01-01 21:16:08.622','2023-01-01 21:16:09.994','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-29 00:00:00.000','1d',0),
(1006,'2ca5216f19116c30c42a2e5c719d557e','2023-01-01 21:16:08.624','2023-01-01 21:16:09.996','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-30 00:00:00.000','1d',0),
(1007,'679149e179b04d40940a6b37161bb9a4','2023-01-01 21:16:08.625','2023-01-01 21:16:09.997','[]','collections.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-31 00:00:00.000','1d',0),
(1008,'f9b477117a77ad61b436b522f22ff3b0','2023-01-01 21:16:08.626','2023-01-01 21:20:45.166','[]','collections.63b1f73a5da8233847c0.requests.update','default',5,'2023-01-01 00:00:00.000','1d',0),
(1009,'5d30003ca5f414b9ed9f4fcda945f97b','2023-01-01 21:17:09.317','2023-01-01 21:17:10.602','[]','users.$all.requests.read','default',0,'2022-12-31 21:00:00.000','1h',0),
(1010,'146da37b792eafd4d298372e86d48b8f','2023-01-01 21:17:09.318','2023-01-01 21:17:10.604','[]','users.$all.requests.read','default',0,'2022-12-31 22:00:00.000','1h',0),
(1011,'925584b3a74fc184d787e7109d542d59','2023-01-01 21:17:09.320','2023-01-01 21:17:10.606','[]','users.$all.requests.read','default',0,'2022-12-31 23:00:00.000','1h',0),
(1012,'562a422f47a5307a079bbd898825a212','2023-01-01 21:17:09.321','2023-01-01 21:17:10.608','[]','users.$all.requests.read','default',0,'2023-01-01 00:00:00.000','1h',0),
(1013,'6e9076cee3238ceb4113583e19454e45','2023-01-01 21:17:09.322','2023-01-01 21:17:10.609','[]','users.$all.requests.read','default',0,'2023-01-01 01:00:00.000','1h',0),
(1014,'72144fd2bff6317c1ea68b715985b262','2023-01-01 21:17:09.324','2023-01-01 21:17:10.611','[]','users.$all.requests.read','default',0,'2023-01-01 02:00:00.000','1h',0),
(1015,'e668a7b68cc0576051621154e14c2ec4','2023-01-01 21:17:09.325','2023-01-01 21:17:10.613','[]','users.$all.requests.read','default',0,'2023-01-01 03:00:00.000','1h',0),
(1016,'2ce20c8c85441b78996db9939c9cde06','2023-01-01 21:17:09.327','2023-01-01 21:17:10.614','[]','users.$all.requests.read','default',0,'2023-01-01 04:00:00.000','1h',0),
(1017,'f81b4546e36e86669d1ba3aae524c1e3','2023-01-01 21:17:09.328','2023-01-01 21:17:10.616','[]','users.$all.requests.read','default',0,'2023-01-01 05:00:00.000','1h',0),
(1018,'a95da06b40d0b13e344fd2963e7f0710','2023-01-01 21:17:09.330','2023-01-01 21:17:10.618','[]','users.$all.requests.read','default',0,'2023-01-01 06:00:00.000','1h',0),
(1019,'4e34896a1391ff5987608a131cfeb71c','2023-01-01 21:17:09.332','2023-01-01 21:17:10.619','[]','users.$all.requests.read','default',0,'2023-01-01 07:00:00.000','1h',0),
(1020,'d6bfc51529df5f24ae0c3135fb41975a','2023-01-01 21:17:09.335','2023-01-01 21:17:10.622','[]','users.$all.requests.read','default',0,'2023-01-01 08:00:00.000','1h',0),
(1021,'ded768196ea38ee3b3f2c1be1d3119de','2023-01-01 21:17:09.337','2023-01-01 21:17:10.624','[]','users.$all.requests.read','default',0,'2023-01-01 09:00:00.000','1h',0),
(1022,'0b9047383c4945bb60dbbc533fb52142','2023-01-01 21:17:09.338','2023-01-01 21:17:10.626','[]','users.$all.requests.read','default',0,'2023-01-01 10:00:00.000','1h',0),
(1023,'443e13d796f45e18036d2c6eadb97399','2023-01-01 21:17:09.340','2023-01-01 21:17:10.628','[]','users.$all.requests.read','default',0,'2023-01-01 11:00:00.000','1h',0),
(1024,'2b9fe64ea62c0fae6d6e98da43a15b88','2023-01-01 21:17:09.342','2023-01-01 21:17:10.629','[]','users.$all.requests.read','default',0,'2023-01-01 12:00:00.000','1h',0),
(1025,'9abcac9a1c83ae5dc1786f784c574e71','2023-01-01 21:17:09.343','2023-01-01 21:17:10.631','[]','users.$all.requests.read','default',0,'2023-01-01 13:00:00.000','1h',0),
(1026,'107b848566e9840e1472d4dd22e7069e','2023-01-01 21:17:09.345','2023-01-01 21:17:10.633','[]','users.$all.requests.read','default',0,'2023-01-01 14:00:00.000','1h',0),
(1027,'21f8472e08d24f4178809c4f788ab3f3','2023-01-01 21:17:09.346','2023-01-01 21:17:10.635','[]','users.$all.requests.read','default',0,'2023-01-01 15:00:00.000','1h',0),
(1028,'d66db99472390155f27bc7d860270427','2023-01-01 21:17:09.347','2023-01-01 21:17:10.638','[]','users.$all.requests.read','default',0,'2023-01-01 16:00:00.000','1h',0),
(1029,'387e3a64aabd16da9b660b7aeb62e371','2023-01-01 21:17:09.349','2023-01-01 21:17:10.640','[]','users.$all.requests.read','default',0,'2023-01-01 17:00:00.000','1h',0),
(1030,'495f2ef1dac18d8f2e941f19f04999b1','2023-01-01 21:17:09.350','2023-01-01 21:17:10.642','[]','users.$all.requests.read','default',0,'2023-01-01 18:00:00.000','1h',0),
(1031,'7f50b1cdaa1272ab8e9c5d8048812792','2023-01-01 21:17:09.351','2023-01-01 21:17:10.644','[]','users.$all.requests.read','default',0,'2023-01-01 19:00:00.000','1h',0),
(1032,'5e11be5925835e616358baf02213f793','2023-01-01 21:17:09.353','2023-01-01 21:17:10.646','[]','users.$all.requests.read','default',0,'2023-01-01 20:00:00.000','1h',0),
(1033,'628e1997b057d96158db217a828b92df','2023-01-01 21:17:09.354','2023-01-01 21:20:44.696','[]','users.$all.requests.read','default',4,'2023-01-01 21:00:00.000','1h',0),
(1034,'68fb1d6fbda674bcf8810715e398d6ce','2023-01-01 21:17:09.676','2023-01-01 21:17:10.870','[]','users.$all.requests.read','default',0,'2022-12-02 00:00:00.000','1d',0),
(1035,'be9797efe9aadcffe2bbcf217a7cc636','2023-01-01 21:17:09.678','2023-01-01 21:17:10.872','[]','users.$all.requests.read','default',0,'2022-12-03 00:00:00.000','1d',0),
(1036,'c5a604b1d07e9b3496cdc658b581cd57','2023-01-01 21:17:09.679','2023-01-01 21:17:10.874','[]','users.$all.requests.read','default',0,'2022-12-04 00:00:00.000','1d',0),
(1037,'955cafaf3f31a6370f1e9fd7105c8806','2023-01-01 21:17:09.681','2023-01-01 21:17:10.876','[]','users.$all.requests.read','default',0,'2022-12-05 00:00:00.000','1d',0),
(1038,'92c8cae57efef8ee33a437a2728432bd','2023-01-01 21:17:09.682','2023-01-01 21:17:10.878','[]','users.$all.requests.read','default',0,'2022-12-06 00:00:00.000','1d',0),
(1039,'a1e8bc03e6a0e556198c5199b56b5a73','2023-01-01 21:17:09.683','2023-01-01 21:17:10.880','[]','users.$all.requests.read','default',0,'2022-12-07 00:00:00.000','1d',0),
(1040,'06dbebeadbe1a6180143738e392dd63b','2023-01-01 21:17:09.685','2023-01-01 21:17:10.882','[]','users.$all.requests.read','default',0,'2022-12-08 00:00:00.000','1d',0),
(1041,'5354c8bbb8ead8229b7ba701d306944b','2023-01-01 21:17:09.686','2023-01-01 21:17:10.884','[]','users.$all.requests.read','default',0,'2022-12-09 00:00:00.000','1d',0),
(1042,'14a652d524e435f18381d52aef75cdc3','2023-01-01 21:17:09.687','2023-01-01 21:17:10.885','[]','users.$all.requests.read','default',0,'2022-12-10 00:00:00.000','1d',0),
(1043,'ec6d49d0bd5dcb8ce37a85f91cb58e84','2023-01-01 21:17:09.689','2023-01-01 21:17:10.887','[]','users.$all.requests.read','default',0,'2022-12-11 00:00:00.000','1d',0),
(1044,'5af45127e9d422adb560c0bfac2a157a','2023-01-01 21:17:09.690','2023-01-01 21:17:10.889','[]','users.$all.requests.read','default',0,'2022-12-12 00:00:00.000','1d',0),
(1045,'39efd8f8fc2da497f15df5cbd702e93f','2023-01-01 21:17:09.693','2023-01-01 21:17:10.891','[]','users.$all.requests.read','default',0,'2022-12-13 00:00:00.000','1d',0),
(1046,'fe9fdf0fb0ef624f487bbd04ed0079e4','2023-01-01 21:17:09.694','2023-01-01 21:17:10.892','[]','users.$all.requests.read','default',0,'2022-12-14 00:00:00.000','1d',0),
(1047,'143bda7a9c0ec80b5cd9fcadd1230364','2023-01-01 21:17:09.696','2023-01-01 21:17:10.894','[]','users.$all.requests.read','default',0,'2022-12-15 00:00:00.000','1d',0),
(1048,'5af874fb1b1497d7a6205f235706826e','2023-01-01 21:17:09.697','2023-01-01 21:17:10.896','[]','users.$all.requests.read','default',0,'2022-12-16 00:00:00.000','1d',0),
(1049,'af970f253e0393c3fdd694f43a6bb39f','2023-01-01 21:17:09.699','2023-01-01 21:17:10.899','[]','users.$all.requests.read','default',0,'2022-12-17 00:00:00.000','1d',0),
(1050,'b6aa9aba055aaf21fe8a1dffb4d14f7e','2023-01-01 21:17:09.700','2023-01-01 21:17:10.902','[]','users.$all.requests.read','default',0,'2022-12-18 00:00:00.000','1d',0),
(1051,'7054e8c0dc515b243c0032de3a56927b','2023-01-01 21:17:09.701','2023-01-01 21:17:10.904','[]','users.$all.requests.read','default',0,'2022-12-19 00:00:00.000','1d',0),
(1052,'08f8038819089477b6ca4315e9012e33','2023-01-01 21:17:09.703','2023-01-01 21:17:10.906','[]','users.$all.requests.read','default',0,'2022-12-20 00:00:00.000','1d',0),
(1053,'31582a15662126d3634499d5e9d8d60f','2023-01-01 21:17:09.704','2023-01-01 21:17:10.907','[]','users.$all.requests.read','default',0,'2022-12-21 00:00:00.000','1d',0),
(1054,'e48a49ba9efb7b9294b5d7d23013f727','2023-01-01 21:17:09.705','2023-01-01 21:17:10.909','[]','users.$all.requests.read','default',0,'2022-12-22 00:00:00.000','1d',0),
(1055,'a1076ecf4b73a115046e95240dc0e116','2023-01-01 21:17:09.707','2023-01-01 21:17:10.911','[]','users.$all.requests.read','default',0,'2022-12-23 00:00:00.000','1d',0),
(1056,'f3620f6338cc1f41a1032a7e5829db22','2023-01-01 21:17:09.708','2023-01-01 21:17:10.913','[]','users.$all.requests.read','default',0,'2022-12-24 00:00:00.000','1d',0),
(1057,'996de72726cda0d5ba4b03922ceb0fb6','2023-01-01 21:17:09.710','2023-01-01 21:17:10.915','[]','users.$all.requests.read','default',0,'2022-12-25 00:00:00.000','1d',0),
(1058,'70738308ba5cc1b04c3ac39fb9624688','2023-01-01 21:17:09.712','2023-01-01 21:17:10.916','[]','users.$all.requests.read','default',0,'2022-12-26 00:00:00.000','1d',0),
(1059,'e027ce13626648762a59cd6787b907e8','2023-01-01 21:17:09.713','2023-01-01 21:17:10.918','[]','users.$all.requests.read','default',0,'2022-12-27 00:00:00.000','1d',0),
(1060,'33a77a791b9036277b7f77f88713a2af','2023-01-01 21:17:09.714','2023-01-01 21:17:10.920','[]','users.$all.requests.read','default',0,'2022-12-28 00:00:00.000','1d',0),
(1061,'647b658ed2d7778ac270918328992ad0','2023-01-01 21:17:09.715','2023-01-01 21:17:10.923','[]','users.$all.requests.read','default',0,'2022-12-29 00:00:00.000','1d',0),
(1062,'23a6476db28a72ec6d09d9d8078f3693','2023-01-01 21:17:09.717','2023-01-01 21:17:10.926','[]','users.$all.requests.read','default',0,'2022-12-30 00:00:00.000','1d',0),
(1063,'1490e354b3c34886aab4731507313d3a','2023-01-01 21:17:09.718','2023-01-01 21:17:10.928','[]','users.$all.requests.read','default',0,'2022-12-31 00:00:00.000','1d',0),
(1064,'8f5477eebab1bb3d5154e11c0552431e','2023-01-01 21:17:09.720','2023-01-01 21:20:45.056','[]','users.$all.requests.read','default',4,'2023-01-01 00:00:00.000','1d',0),
(1065,'1b053db159f38e3c51fbd21ce96d7548','2023-01-01 21:17:39.930','2023-01-01 21:17:41.162','[]','users.$all.requests.create','default',0,'2022-12-31 21:00:00.000','1h',0),
(1066,'b863f8b24f4f35086ef5537bc5ed604f','2023-01-01 21:17:39.932','2023-01-01 21:17:41.164','[]','users.$all.requests.create','default',0,'2022-12-31 22:00:00.000','1h',0),
(1067,'f91759531cf96d2faf087071fc30a931','2023-01-01 21:17:39.934','2023-01-01 21:17:41.167','[]','users.$all.requests.create','default',0,'2022-12-31 23:00:00.000','1h',0),
(1068,'1f0ebd7cb8849ad7349647b18dd84dbc','2023-01-01 21:17:39.935','2023-01-01 21:17:41.168','[]','users.$all.requests.create','default',0,'2023-01-01 00:00:00.000','1h',0),
(1069,'71c131ecb4a2afd85b7c379bb183af81','2023-01-01 21:17:39.936','2023-01-01 21:17:41.170','[]','users.$all.requests.create','default',0,'2023-01-01 01:00:00.000','1h',0),
(1070,'daa3bc8ad01ff2607a5a8341f4b51db5','2023-01-01 21:17:39.938','2023-01-01 21:17:41.172','[]','users.$all.requests.create','default',0,'2023-01-01 02:00:00.000','1h',0),
(1071,'8776413aea2a9f7b26cb1081ad0f832d','2023-01-01 21:17:39.939','2023-01-01 21:17:41.175','[]','users.$all.requests.create','default',0,'2023-01-01 03:00:00.000','1h',0),
(1072,'36cb499dd81289ccc171b6b7a952d3e5','2023-01-01 21:17:39.941','2023-01-01 21:17:41.178','[]','users.$all.requests.create','default',0,'2023-01-01 04:00:00.000','1h',0),
(1073,'c78cd07de18b0b4fa62c7fc55c528cf8','2023-01-01 21:17:39.944','2023-01-01 21:17:41.180','[]','users.$all.requests.create','default',0,'2023-01-01 05:00:00.000','1h',0),
(1074,'82f446a4990d881050727d7c9f955b09','2023-01-01 21:17:39.945','2023-01-01 21:17:41.182','[]','users.$all.requests.create','default',0,'2023-01-01 06:00:00.000','1h',0),
(1075,'a125c1b7b85956dec244e4691e534893','2023-01-01 21:17:39.947','2023-01-01 21:17:41.185','[]','users.$all.requests.create','default',0,'2023-01-01 07:00:00.000','1h',0),
(1076,'06d1ac9c1307630c3707d4d90a26540a','2023-01-01 21:17:39.948','2023-01-01 21:17:41.188','[]','users.$all.requests.create','default',0,'2023-01-01 08:00:00.000','1h',0),
(1077,'67a9eccba9cd9e8d9f1b5799a9441535','2023-01-01 21:17:39.949','2023-01-01 21:17:41.190','[]','users.$all.requests.create','default',0,'2023-01-01 09:00:00.000','1h',0),
(1078,'430747334e03e762e6d26655dec5f098','2023-01-01 21:17:39.951','2023-01-01 21:17:41.192','[]','users.$all.requests.create','default',0,'2023-01-01 10:00:00.000','1h',0),
(1079,'90f860c5b14b479fd03c956fff8c38be','2023-01-01 21:17:39.952','2023-01-01 21:17:41.194','[]','users.$all.requests.create','default',0,'2023-01-01 11:00:00.000','1h',0),
(1080,'9cbb98df3d492bf87046c59a3c7dae36','2023-01-01 21:17:39.954','2023-01-01 21:17:41.197','[]','users.$all.requests.create','default',0,'2023-01-01 12:00:00.000','1h',0),
(1081,'a1c4aa250890951b8db75de903fb9fd7','2023-01-01 21:17:39.955','2023-01-01 21:17:41.199','[]','users.$all.requests.create','default',0,'2023-01-01 13:00:00.000','1h',0),
(1082,'d2fac7005c2a8069b05f772c91a6eb8a','2023-01-01 21:17:39.956','2023-01-01 21:17:41.201','[]','users.$all.requests.create','default',0,'2023-01-01 14:00:00.000','1h',0),
(1083,'97c0fa44d710ae821007c04245e7e74e','2023-01-01 21:17:39.958','2023-01-01 21:17:41.203','[]','users.$all.requests.create','default',0,'2023-01-01 15:00:00.000','1h',0),
(1084,'b3a9da3a49c5da71115d5642e3e48f6a','2023-01-01 21:17:39.959','2023-01-01 21:17:41.205','[]','users.$all.requests.create','default',0,'2023-01-01 16:00:00.000','1h',0),
(1085,'67c021c5cc2c3bba49a32a64fce23a00','2023-01-01 21:17:39.961','2023-01-01 21:17:41.208','[]','users.$all.requests.create','default',0,'2023-01-01 17:00:00.000','1h',0),
(1086,'61123244dcbd06c72c3d8426fda8647e','2023-01-01 21:17:39.962','2023-01-01 21:17:41.210','[]','users.$all.requests.create','default',0,'2023-01-01 18:00:00.000','1h',0),
(1087,'82798dfca0182a957cf24161d4ccba04','2023-01-01 21:17:39.964','2023-01-01 21:17:41.213','[]','users.$all.requests.create','default',0,'2023-01-01 19:00:00.000','1h',0),
(1088,'096089ce3da2678e0cf576c4ce2b461d','2023-01-01 21:17:39.966','2023-01-01 21:17:41.214','[]','users.$all.requests.create','default',0,'2023-01-01 20:00:00.000','1h',0),
(1089,'79d35797541ecb16b385fa6936a5b7bc','2023-01-01 21:17:39.967','2023-01-01 21:20:44.690','[]','users.$all.requests.create','default',1,'2023-01-01 21:00:00.000','1h',0),
(1090,'3f7d4a28d7b845259a90252514ee57b4','2023-01-01 21:17:40.092','2023-01-01 21:17:41.363','[]','users.$all.count.total','default',0,'2022-12-31 21:00:00.000','1h',0),
(1091,'1d3e2ed9c1cc630701eac1699f9aa5fe','2023-01-01 21:17:40.094','2023-01-01 21:17:41.366','[]','users.$all.count.total','default',0,'2022-12-31 22:00:00.000','1h',0),
(1092,'dc33b85d2bbe5dae6377ea661778017b','2023-01-01 21:17:40.096','2023-01-01 21:17:41.368','[]','users.$all.count.total','default',0,'2022-12-31 23:00:00.000','1h',0),
(1093,'11a1542574e8a4c6a8cb5d77a799579b','2023-01-01 21:17:40.097','2023-01-01 21:17:41.370','[]','users.$all.count.total','default',0,'2023-01-01 00:00:00.000','1h',0),
(1094,'e0d373cc52aabcedb9d94f78a9cd85b3','2023-01-01 21:17:40.099','2023-01-01 21:17:41.373','[]','users.$all.count.total','default',0,'2023-01-01 01:00:00.000','1h',0),
(1095,'78ec7d2659e6645dbdcf7c9a3e14accd','2023-01-01 21:17:40.100','2023-01-01 21:17:41.375','[]','users.$all.count.total','default',0,'2023-01-01 02:00:00.000','1h',0),
(1096,'2790512933737767453615964fe2c50c','2023-01-01 21:17:40.102','2023-01-01 21:17:41.378','[]','users.$all.count.total','default',0,'2023-01-01 03:00:00.000','1h',0),
(1097,'9df34501c1c28f1eea0531b56170d406','2023-01-01 21:17:40.103','2023-01-01 21:17:41.380','[]','users.$all.count.total','default',0,'2023-01-01 04:00:00.000','1h',0),
(1098,'64ce57a3e787c2320b4bfa9c13e573a5','2023-01-01 21:17:40.105','2023-01-01 21:17:41.383','[]','users.$all.count.total','default',0,'2023-01-01 05:00:00.000','1h',0),
(1099,'ef7176158c7627dfab90b495c2924467','2023-01-01 21:17:40.106','2023-01-01 21:17:41.385','[]','users.$all.count.total','default',0,'2023-01-01 06:00:00.000','1h',0),
(1100,'44c952a01c0ec588028b175d52ec0a60','2023-01-01 21:17:40.108','2023-01-01 21:17:41.387','[]','users.$all.count.total','default',0,'2023-01-01 07:00:00.000','1h',0),
(1101,'4acbd6bfb2ff94213beeddaeb41576e8','2023-01-01 21:17:40.109','2023-01-01 21:17:41.390','[]','users.$all.count.total','default',0,'2023-01-01 08:00:00.000','1h',0),
(1102,'383a73ba87c59af03918385eb1ed3902','2023-01-01 21:17:40.111','2023-01-01 21:17:41.392','[]','users.$all.count.total','default',0,'2023-01-01 09:00:00.000','1h',0),
(1103,'a61729b147745402638eaaeb92bc4aa1','2023-01-01 21:17:40.112','2023-01-01 21:17:41.394','[]','users.$all.count.total','default',0,'2023-01-01 10:00:00.000','1h',0),
(1104,'85b3010924af18406318f4dc9c87a831','2023-01-01 21:17:40.113','2023-01-01 21:17:41.396','[]','users.$all.count.total','default',0,'2023-01-01 11:00:00.000','1h',0),
(1105,'7c7c2c4c809e70c1fccbccd8afaa36e7','2023-01-01 21:17:40.115','2023-01-01 21:17:41.398','[]','users.$all.count.total','default',0,'2023-01-01 12:00:00.000','1h',0),
(1106,'c13af14897dc02e8b003a6e771ae9d9e','2023-01-01 21:17:40.116','2023-01-01 21:17:41.400','[]','users.$all.count.total','default',0,'2023-01-01 13:00:00.000','1h',0),
(1107,'af4665c9bf7c834b9d41dbcc437a628b','2023-01-01 21:17:40.117','2023-01-01 21:17:41.402','[]','users.$all.count.total','default',0,'2023-01-01 14:00:00.000','1h',0),
(1108,'384820fca8ad12a070bb08b0724cad0d','2023-01-01 21:17:40.118','2023-01-01 21:17:41.404','[]','users.$all.count.total','default',0,'2023-01-01 15:00:00.000','1h',0),
(1109,'b0ebdbfee8cb2aa1c4395bade1f9126c','2023-01-01 21:17:40.120','2023-01-01 21:17:41.406','[]','users.$all.count.total','default',0,'2023-01-01 16:00:00.000','1h',0),
(1110,'9f213fb3dac301dc684d0bf438a776cf','2023-01-01 21:17:40.121','2023-01-01 21:17:41.409','[]','users.$all.count.total','default',0,'2023-01-01 17:00:00.000','1h',0),
(1111,'d1d4431d8fc41828e5ca4f462b677220','2023-01-01 21:17:40.122','2023-01-01 21:17:41.411','[]','users.$all.count.total','default',0,'2023-01-01 18:00:00.000','1h',0),
(1112,'b7e94e41d2387ae22f3ea80eaa51c838','2023-01-01 21:17:40.124','2023-01-01 21:17:41.414','[]','users.$all.count.total','default',0,'2023-01-01 19:00:00.000','1h',0),
(1113,'7386e11bc595bbbf5a0945774d415289','2023-01-01 21:17:40.126','2023-01-01 21:17:41.416','[]','users.$all.count.total','default',0,'2023-01-01 20:00:00.000','1h',0),
(1114,'3d5baa34226a36ccb27fc663b4097648','2023-01-01 21:17:40.127','2023-01-01 21:20:44.966','[]','users.$all.count.total','default',1,'2023-01-01 21:00:00.000','1h',0),
(1115,'32d857816455e5809e77f74042fd14d8','2023-01-01 21:17:40.194','2023-01-01 21:17:41.487','[]','users.$all.requests.create','default',0,'2022-12-02 00:00:00.000','1d',0),
(1116,'721210360a77f9ccf3da81729424104c','2023-01-01 21:17:40.196','2023-01-01 21:17:41.490','[]','users.$all.requests.create','default',0,'2022-12-03 00:00:00.000','1d',0),
(1117,'e376fe26837ffefd8780c817114e1f9d','2023-01-01 21:17:40.197','2023-01-01 21:17:41.492','[]','users.$all.requests.create','default',0,'2022-12-04 00:00:00.000','1d',0),
(1118,'9c5bec6e77619ca517da36181a44d8f3','2023-01-01 21:17:40.199','2023-01-01 21:17:41.494','[]','users.$all.requests.create','default',0,'2022-12-05 00:00:00.000','1d',0),
(1119,'1c66f8f896a736ca42c9e7569c9182ad','2023-01-01 21:17:40.200','2023-01-01 21:17:41.496','[]','users.$all.requests.create','default',0,'2022-12-06 00:00:00.000','1d',0),
(1120,'ca874c961aa04afa3ab302ab48ec0913','2023-01-01 21:17:40.202','2023-01-01 21:17:41.498','[]','users.$all.requests.create','default',0,'2022-12-07 00:00:00.000','1d',0),
(1121,'56906ec3e275987c787e1271319f42c8','2023-01-01 21:17:40.204','2023-01-01 21:17:41.500','[]','users.$all.requests.create','default',0,'2022-12-08 00:00:00.000','1d',0),
(1122,'68d7d33bd07596fb51f333ed26c0d1dd','2023-01-01 21:17:40.205','2023-01-01 21:17:41.502','[]','users.$all.requests.create','default',0,'2022-12-09 00:00:00.000','1d',0),
(1123,'34eaaacb477018665c26ce240ec738fa','2023-01-01 21:17:40.207','2023-01-01 21:17:41.503','[]','users.$all.requests.create','default',0,'2022-12-10 00:00:00.000','1d',0),
(1124,'ef6e785016acd2f448dff1dafa8a4eaf','2023-01-01 21:17:40.208','2023-01-01 21:17:41.505','[]','users.$all.requests.create','default',0,'2022-12-11 00:00:00.000','1d',0),
(1125,'e69a037d225d9b8c8c7dd91358660d89','2023-01-01 21:17:40.210','2023-01-01 21:17:41.507','[]','users.$all.requests.create','default',0,'2022-12-12 00:00:00.000','1d',0),
(1126,'9727783047f609b981c420fb1797bd63','2023-01-01 21:17:40.211','2023-01-01 21:17:41.509','[]','users.$all.requests.create','default',0,'2022-12-13 00:00:00.000','1d',0),
(1127,'2f5f4a0e6a7fc8a15bac86d7e287633e','2023-01-01 21:17:40.213','2023-01-01 21:17:41.512','[]','users.$all.requests.create','default',0,'2022-12-14 00:00:00.000','1d',0),
(1128,'6af3c6993dab7ca9d59619fc908b625f','2023-01-01 21:17:40.215','2023-01-01 21:17:41.514','[]','users.$all.requests.create','default',0,'2022-12-15 00:00:00.000','1d',0),
(1129,'34d3dbfcc0196dc8f00e6b096634299b','2023-01-01 21:17:40.216','2023-01-01 21:17:41.516','[]','users.$all.requests.create','default',0,'2022-12-16 00:00:00.000','1d',0),
(1130,'d8878fd38579dce506e1c9592b41eca5','2023-01-01 21:17:40.217','2023-01-01 21:17:41.518','[]','users.$all.requests.create','default',0,'2022-12-17 00:00:00.000','1d',0),
(1131,'cd72b47434bbea8ec54bff988756f0ad','2023-01-01 21:17:40.219','2023-01-01 21:17:41.520','[]','users.$all.requests.create','default',0,'2022-12-18 00:00:00.000','1d',0),
(1132,'3a999ed365347771f447e371e73d76b5','2023-01-01 21:17:40.220','2023-01-01 21:17:41.522','[]','users.$all.requests.create','default',0,'2022-12-19 00:00:00.000','1d',0),
(1133,'08712e4077e9b32cc29f875262ef0332','2023-01-01 21:17:40.222','2023-01-01 21:17:41.525','[]','users.$all.requests.create','default',0,'2022-12-20 00:00:00.000','1d',0),
(1134,'61dc1c98261f93ec85d1c1040cb083cd','2023-01-01 21:17:40.224','2023-01-01 21:17:41.527','[]','users.$all.requests.create','default',0,'2022-12-21 00:00:00.000','1d',0),
(1135,'74ba6a4e429a0fbfb3cc2f67746bb58c','2023-01-01 21:17:40.225','2023-01-01 21:17:41.529','[]','users.$all.requests.create','default',0,'2022-12-22 00:00:00.000','1d',0),
(1136,'ef22c71252e483c167ea057c342cd77b','2023-01-01 21:17:40.227','2023-01-01 21:17:41.532','[]','users.$all.requests.create','default',0,'2022-12-23 00:00:00.000','1d',0),
(1137,'7d7707fe6f255da48b193d4fa3e2c72b','2023-01-01 21:17:40.228','2023-01-01 21:17:41.534','[]','users.$all.requests.create','default',0,'2022-12-24 00:00:00.000','1d',0),
(1138,'d18b6891f0bccf1e9e9ba5131723bf25','2023-01-01 21:17:40.230','2023-01-01 21:17:41.536','[]','users.$all.requests.create','default',0,'2022-12-25 00:00:00.000','1d',0),
(1139,'f93e5957095294a72ed7c3947124a6cd','2023-01-01 21:17:40.231','2023-01-01 21:17:41.538','[]','users.$all.requests.create','default',0,'2022-12-26 00:00:00.000','1d',0),
(1140,'47a09f4c012517430cdac26cf3b25e5b','2023-01-01 21:17:40.233','2023-01-01 21:17:41.540','[]','users.$all.requests.create','default',0,'2022-12-27 00:00:00.000','1d',0),
(1141,'2d4924cbd2844efc089fe9fae28b3273','2023-01-01 21:17:40.235','2023-01-01 21:17:41.542','[]','users.$all.requests.create','default',0,'2022-12-28 00:00:00.000','1d',0),
(1142,'e1a641585cda22461dca2a498b04b442','2023-01-01 21:17:40.237','2023-01-01 21:17:41.545','[]','users.$all.requests.create','default',0,'2022-12-29 00:00:00.000','1d',0),
(1143,'e8953163117f123e06fdd7a9c027d9e5','2023-01-01 21:17:40.239','2023-01-01 21:17:41.547','[]','users.$all.requests.create','default',0,'2022-12-30 00:00:00.000','1d',0),
(1144,'aed4dd153d64c5790e9681bea1427aef','2023-01-01 21:17:40.240','2023-01-01 21:17:41.549','[]','users.$all.requests.create','default',0,'2022-12-31 00:00:00.000','1d',0),
(1145,'e5bfdba2b3adad3d98b64800126732e5','2023-01-01 21:17:40.242','2023-01-01 21:20:45.052','[]','users.$all.requests.create','default',1,'2023-01-01 00:00:00.000','1d',0),
(1146,'946eecfa66bf6553948df8d2352d0863','2023-01-01 21:17:40.381','2023-01-01 21:17:41.681','[]','users.$all.count.total','default',0,'2022-12-02 00:00:00.000','1d',0),
(1147,'8a2157fcd8325bd31b62e59c126142b2','2023-01-01 21:17:40.383','2023-01-01 21:17:41.683','[]','users.$all.count.total','default',0,'2022-12-03 00:00:00.000','1d',0),
(1148,'29a5c1a90ca0c1cce0a1bd021c9a3279','2023-01-01 21:17:40.385','2023-01-01 21:17:41.685','[]','users.$all.count.total','default',0,'2022-12-04 00:00:00.000','1d',0),
(1149,'c8941390daba62a3c21a736386d93de6','2023-01-01 21:17:40.387','2023-01-01 21:17:41.688','[]','users.$all.count.total','default',0,'2022-12-05 00:00:00.000','1d',0),
(1150,'0c3659a2cc1d12dac744a76cc9c2734c','2023-01-01 21:17:40.389','2023-01-01 21:17:41.690','[]','users.$all.count.total','default',0,'2022-12-06 00:00:00.000','1d',0),
(1151,'b1cdde4812167fe7abd430d21c40cd64','2023-01-01 21:17:40.390','2023-01-01 21:17:41.692','[]','users.$all.count.total','default',0,'2022-12-07 00:00:00.000','1d',0),
(1152,'12cf9541b82703b122001a3c27a1ab07','2023-01-01 21:17:40.393','2023-01-01 21:17:41.694','[]','users.$all.count.total','default',0,'2022-12-08 00:00:00.000','1d',0),
(1153,'9200413ee349b84dfb67303ebf83c7bb','2023-01-01 21:17:40.394','2023-01-01 21:17:41.696','[]','users.$all.count.total','default',0,'2022-12-09 00:00:00.000','1d',0),
(1154,'a06ec471f5cbaa83ca9ffaf7cb2d256e','2023-01-01 21:17:40.396','2023-01-01 21:17:41.698','[]','users.$all.count.total','default',0,'2022-12-10 00:00:00.000','1d',0),
(1155,'deea1cea6d8ba2ae8a6237e2c04630af','2023-01-01 21:17:40.398','2023-01-01 21:17:41.700','[]','users.$all.count.total','default',0,'2022-12-11 00:00:00.000','1d',0),
(1156,'c9cc811754b0c9809cc06f94d63f3917','2023-01-01 21:17:40.400','2023-01-01 21:17:41.702','[]','users.$all.count.total','default',0,'2022-12-12 00:00:00.000','1d',0),
(1157,'7dccefaaacada51fa8847d964eba0faa','2023-01-01 21:17:40.401','2023-01-01 21:17:41.704','[]','users.$all.count.total','default',0,'2022-12-13 00:00:00.000','1d',0),
(1158,'33038e184e394204baeb67fff784e15e','2023-01-01 21:17:40.403','2023-01-01 21:17:41.706','[]','users.$all.count.total','default',0,'2022-12-14 00:00:00.000','1d',0),
(1159,'568209e6ab998ccca4f6b6cf84a1b448','2023-01-01 21:17:40.405','2023-01-01 21:17:41.707','[]','users.$all.count.total','default',0,'2022-12-15 00:00:00.000','1d',0),
(1160,'315c93f1dc5b2ac6677f8b3acee23222','2023-01-01 21:17:40.407','2023-01-01 21:17:41.710','[]','users.$all.count.total','default',0,'2022-12-16 00:00:00.000','1d',0),
(1161,'16bb4ee3afee8d9af0fb894ac7744172','2023-01-01 21:17:40.409','2023-01-01 21:17:41.712','[]','users.$all.count.total','default',0,'2022-12-17 00:00:00.000','1d',0),
(1162,'1e1eceecbb035942bb176bc7411eefed','2023-01-01 21:17:40.410','2023-01-01 21:17:41.715','[]','users.$all.count.total','default',0,'2022-12-18 00:00:00.000','1d',0),
(1163,'8c0d95f3f00662850b1281dfcc9e3587','2023-01-01 21:17:40.412','2023-01-01 21:17:41.717','[]','users.$all.count.total','default',0,'2022-12-19 00:00:00.000','1d',0),
(1164,'9b6ece977620b77e89548a600eb4f044','2023-01-01 21:17:40.413','2023-01-01 21:17:41.719','[]','users.$all.count.total','default',0,'2022-12-20 00:00:00.000','1d',0),
(1165,'fc6d67e999cca802df8b7ab681340d4d','2023-01-01 21:17:40.415','2023-01-01 21:17:41.721','[]','users.$all.count.total','default',0,'2022-12-21 00:00:00.000','1d',0),
(1166,'3cb5c2acd9cd6f34f39858079a116e8f','2023-01-01 21:17:40.416','2023-01-01 21:17:41.723','[]','users.$all.count.total','default',0,'2022-12-22 00:00:00.000','1d',0),
(1167,'8756161490e947fc3f6c1a49daafe561','2023-01-01 21:17:40.417','2023-01-01 21:17:41.725','[]','users.$all.count.total','default',0,'2022-12-23 00:00:00.000','1d',0),
(1168,'9aebd2644e25cb4c52e2ed1697da3276','2023-01-01 21:17:40.419','2023-01-01 21:17:41.727','[]','users.$all.count.total','default',0,'2022-12-24 00:00:00.000','1d',0),
(1169,'220d14989ac95911e62d9a314a184979','2023-01-01 21:17:40.420','2023-01-01 21:17:41.729','[]','users.$all.count.total','default',0,'2022-12-25 00:00:00.000','1d',0),
(1170,'c8b714a08a129a2d377bf071e39e8a8c','2023-01-01 21:17:40.421','2023-01-01 21:17:41.731','[]','users.$all.count.total','default',0,'2022-12-26 00:00:00.000','1d',0),
(1171,'53cfe70301cc1666b2d724b059d1c4d3','2023-01-01 21:17:40.423','2023-01-01 21:17:41.734','[]','users.$all.count.total','default',0,'2022-12-27 00:00:00.000','1d',0),
(1172,'7772f4632175b567ccc6b6a687bdb5dc','2023-01-01 21:17:40.425','2023-01-01 21:17:41.742','[]','users.$all.count.total','default',0,'2022-12-28 00:00:00.000','1d',0),
(1173,'b7d74fa82925a5ada9580be51e19e533','2023-01-01 21:17:40.440','2023-01-01 21:17:41.745','[]','users.$all.count.total','default',0,'2022-12-29 00:00:00.000','1d',0),
(1174,'e24cf2b5a375e92775e3d9a34f94aed4','2023-01-01 21:17:40.442','2023-01-01 21:17:41.747','[]','users.$all.count.total','default',0,'2022-12-30 00:00:00.000','1d',0),
(1175,'8d1b9a9c3aa3bdcb96f0bea1970c59e8','2023-01-01 21:17:40.444','2023-01-01 21:17:41.750','[]','users.$all.count.total','default',0,'2022-12-31 00:00:00.000','1d',0),
(1176,'1b56e56ebfafa696d25abe21e912d9f5','2023-01-01 21:17:40.446','2023-01-01 21:20:45.352','[]','users.$all.count.total','default',1,'2023-01-01 00:00:00.000','1d',0),
(1177,'03038da14225daf99d1d57d022f6566d','2023-01-01 21:20:12.602','2023-01-01 21:20:14.359','[]','sessions.email.requests.create','default',0,'2022-12-02 00:00:00.000','1d',0),
(1178,'971930a82b19f8acd6c4c5b2c1ca1aaa','2023-01-01 21:20:12.604','2023-01-01 21:20:14.362','[]','sessions.email.requests.create','default',0,'2022-12-03 00:00:00.000','1d',0),
(1179,'21b2dcbdd3cd3692b70adcac30b595bf','2023-01-01 21:20:12.606','2023-01-01 21:20:14.364','[]','sessions.email.requests.create','default',0,'2022-12-04 00:00:00.000','1d',0),
(1180,'9650a2b0518f4bd63d3755776dd85e40','2023-01-01 21:20:12.608','2023-01-01 21:20:14.366','[]','sessions.email.requests.create','default',0,'2022-12-05 00:00:00.000','1d',0),
(1181,'2925ed4def4a47645baa40fb49e9db5d','2023-01-01 21:20:12.609','2023-01-01 21:20:14.369','[]','sessions.email.requests.create','default',0,'2022-12-06 00:00:00.000','1d',0),
(1182,'68dadd943622f3902b4867a3609a1e2c','2023-01-01 21:20:12.611','2023-01-01 21:20:14.371','[]','sessions.email.requests.create','default',0,'2022-12-07 00:00:00.000','1d',0),
(1183,'bb26cb6f0e94c2df9e56d8d0ad370d94','2023-01-01 21:20:12.613','2023-01-01 21:20:14.373','[]','sessions.email.requests.create','default',0,'2022-12-08 00:00:00.000','1d',0),
(1184,'ab974a32bbb298eddd2a8da85e835eaf','2023-01-01 21:20:12.614','2023-01-01 21:20:14.376','[]','sessions.email.requests.create','default',0,'2022-12-09 00:00:00.000','1d',0),
(1185,'9af790dfe07275b06778f46e97aea26d','2023-01-01 21:20:12.616','2023-01-01 21:20:14.378','[]','sessions.email.requests.create','default',0,'2022-12-10 00:00:00.000','1d',0),
(1186,'fb4e256fe345f2e42db15bcf7e14788c','2023-01-01 21:20:12.617','2023-01-01 21:20:14.380','[]','sessions.email.requests.create','default',0,'2022-12-11 00:00:00.000','1d',0),
(1187,'8d45cc17fca2157801bf1bb971dff8e4','2023-01-01 21:20:12.619','2023-01-01 21:20:14.383','[]','sessions.email.requests.create','default',0,'2022-12-12 00:00:00.000','1d',0),
(1188,'1e459e326773ed097c36f658ca9fe6ed','2023-01-01 21:20:12.620','2023-01-01 21:20:14.385','[]','sessions.email.requests.create','default',0,'2022-12-13 00:00:00.000','1d',0),
(1189,'bb43182d2637f7529a0ca641b74db2c8','2023-01-01 21:20:12.622','2023-01-01 21:20:14.387','[]','sessions.email.requests.create','default',0,'2022-12-14 00:00:00.000','1d',0),
(1190,'68fb9e1340f5e08baa0f729018f09e5c','2023-01-01 21:20:12.623','2023-01-01 21:20:14.389','[]','sessions.email.requests.create','default',0,'2022-12-15 00:00:00.000','1d',0),
(1191,'e853ed08aaba1a0c0213b03a65be9e0a','2023-01-01 21:20:12.628','2023-01-01 21:20:14.391','[]','sessions.email.requests.create','default',0,'2022-12-16 00:00:00.000','1d',0),
(1192,'c4e699d1f321c5ec3ae7bcb4bc955bdb','2023-01-01 21:20:12.630','2023-01-01 21:20:14.393','[]','sessions.email.requests.create','default',0,'2022-12-17 00:00:00.000','1d',0),
(1193,'5bdd06c3e7ee229cfe178f4e375b47ad','2023-01-01 21:20:12.640','2023-01-01 21:20:14.395','[]','sessions.email.requests.create','default',0,'2022-12-18 00:00:00.000','1d',0),
(1194,'25c78df536d937465460dec111282339','2023-01-01 21:20:12.642','2023-01-01 21:20:14.397','[]','sessions.email.requests.create','default',0,'2022-12-19 00:00:00.000','1d',0),
(1195,'2a8bae15044519b08d6931d839442139','2023-01-01 21:20:12.644','2023-01-01 21:20:14.399','[]','sessions.email.requests.create','default',0,'2022-12-20 00:00:00.000','1d',0),
(1196,'d5606797f757a6476f2898e74a36f793','2023-01-01 21:20:12.645','2023-01-01 21:20:14.401','[]','sessions.email.requests.create','default',0,'2022-12-21 00:00:00.000','1d',0),
(1197,'a088ba0dd5a42ce61018dffc3adfd146','2023-01-01 21:20:12.647','2023-01-01 21:20:14.402','[]','sessions.email.requests.create','default',0,'2022-12-22 00:00:00.000','1d',0),
(1198,'62f88d66803c487437ecd158f2276a05','2023-01-01 21:20:12.649','2023-01-01 21:20:14.404','[]','sessions.email.requests.create','default',0,'2022-12-23 00:00:00.000','1d',0),
(1199,'13f00a13d06fc14bc33f1576b5782d31','2023-01-01 21:20:12.650','2023-01-01 21:20:14.407','[]','sessions.email.requests.create','default',0,'2022-12-24 00:00:00.000','1d',0),
(1200,'87d0c72ecdb03e80c70e42be59ca3cfe','2023-01-01 21:20:12.652','2023-01-01 21:20:14.409','[]','sessions.email.requests.create','default',0,'2022-12-25 00:00:00.000','1d',0),
(1201,'03af996f4de78034b8884876352467d3','2023-01-01 21:20:12.654','2023-01-01 21:20:14.411','[]','sessions.email.requests.create','default',0,'2022-12-26 00:00:00.000','1d',0),
(1202,'461083a850e949f5047b264e65b89d21','2023-01-01 21:20:12.656','2023-01-01 21:20:14.414','[]','sessions.email.requests.create','default',0,'2022-12-27 00:00:00.000','1d',0),
(1203,'ac0e81eca14c6b77c78d2401807906ae','2023-01-01 21:20:12.657','2023-01-01 21:20:14.416','[]','sessions.email.requests.create','default',0,'2022-12-28 00:00:00.000','1d',0),
(1204,'63c3b5d84e9df11868b7889dff3a3ef6','2023-01-01 21:20:12.659','2023-01-01 21:20:14.418','[]','sessions.email.requests.create','default',0,'2022-12-29 00:00:00.000','1d',0),
(1205,'6ba0f3e3ec298a455b2e0e360f3c5bcd','2023-01-01 21:20:12.660','2023-01-01 21:20:14.420','[]','sessions.email.requests.create','default',0,'2022-12-30 00:00:00.000','1d',0),
(1206,'75e3d77ed3bf96e036e345a2ef4074da','2023-01-01 21:20:12.662','2023-01-01 21:20:14.422','[]','sessions.email.requests.create','default',0,'2022-12-31 00:00:00.000','1d',0),
(1207,'3f8d578d1565be8ee10ad3209958ca63','2023-01-01 21:20:12.663','2023-01-01 21:20:45.328','[]','sessions.email.requests.create','default',1,'2023-01-01 00:00:00.000','1d',0),
(1208,'e19306710d6252feea10d955b8a56937','2023-01-01 21:20:12.703','2023-01-01 21:20:14.465','[]','documents.$all.count.total','default',0,'2022-12-02 00:00:00.000','1d',0),
(1209,'f22455430ec81384dc44d947f39749c0','2023-01-01 21:20:12.705','2023-01-01 21:20:14.467','[]','documents.$all.count.total','default',0,'2022-12-03 00:00:00.000','1d',0),
(1210,'429b51db5c217cca1947cabdb3057d25','2023-01-01 21:20:12.707','2023-01-01 21:20:14.469','[]','documents.$all.count.total','default',0,'2022-12-04 00:00:00.000','1d',0),
(1211,'5082aa4ddc161af5d98ba63378b626c1','2023-01-01 21:20:12.708','2023-01-01 21:20:14.471','[]','documents.$all.count.total','default',0,'2022-12-05 00:00:00.000','1d',0),
(1212,'9211e6e8bd5490e0d9fd88373461d501','2023-01-01 21:20:12.710','2023-01-01 21:20:14.472','[]','documents.$all.count.total','default',0,'2022-12-06 00:00:00.000','1d',0),
(1213,'4f0896a1987ad41102ddab87535fa3fb','2023-01-01 21:20:12.711','2023-01-01 21:20:14.474','[]','documents.$all.count.total','default',0,'2022-12-07 00:00:00.000','1d',0),
(1214,'c8bdb4914bde4129524ab6eb9d49bd8f','2023-01-01 21:20:12.713','2023-01-01 21:20:14.476','[]','documents.$all.count.total','default',0,'2022-12-08 00:00:00.000','1d',0),
(1215,'eaca5c1e9cd1a9edf8c15d9964c12f87','2023-01-01 21:20:12.714','2023-01-01 21:20:14.477','[]','documents.$all.count.total','default',0,'2022-12-09 00:00:00.000','1d',0),
(1216,'247d2a0e977a5de59c3f1f39186d135b','2023-01-01 21:20:12.716','2023-01-01 21:20:14.479','[]','documents.$all.count.total','default',0,'2022-12-10 00:00:00.000','1d',0),
(1217,'31f9cb2a0b712904c4ff37afbe2b9236','2023-01-01 21:20:12.717','2023-01-01 21:20:14.481','[]','documents.$all.count.total','default',0,'2022-12-11 00:00:00.000','1d',0),
(1218,'65747dcec0b3cc3989b90e2b8041b1f1','2023-01-01 21:20:12.719','2023-01-01 21:20:14.482','[]','documents.$all.count.total','default',0,'2022-12-12 00:00:00.000','1d',0),
(1219,'3971ca6350aa774569064dbc7674bbdb','2023-01-01 21:20:12.720','2023-01-01 21:20:14.484','[]','documents.$all.count.total','default',0,'2022-12-13 00:00:00.000','1d',0),
(1220,'1003e019d224fce6e3f2f5953a347228','2023-01-01 21:20:12.722','2023-01-01 21:20:14.486','[]','documents.$all.count.total','default',0,'2022-12-14 00:00:00.000','1d',0),
(1221,'bfce645f33f15cd7a904d78f135ca205','2023-01-01 21:20:12.723','2023-01-01 21:20:14.488','[]','documents.$all.count.total','default',0,'2022-12-15 00:00:00.000','1d',0),
(1222,'2893e72c9c8799a5461c9f3e5e1f6f7d','2023-01-01 21:20:12.724','2023-01-01 21:20:14.489','[]','documents.$all.count.total','default',0,'2022-12-16 00:00:00.000','1d',0),
(1223,'a06ab3650f430f96a9f420fcdad6f40b','2023-01-01 21:20:12.726','2023-01-01 21:20:14.491','[]','documents.$all.count.total','default',0,'2022-12-17 00:00:00.000','1d',0),
(1224,'81d4cdd3f1dd3e4273af4121bf2ba9e2','2023-01-01 21:20:12.727','2023-01-01 21:20:14.493','[]','documents.$all.count.total','default',0,'2022-12-18 00:00:00.000','1d',0),
(1225,'a4c5a392d412e6bba886ecd598fc2218','2023-01-01 21:20:12.728','2023-01-01 21:20:14.494','[]','documents.$all.count.total','default',0,'2022-12-19 00:00:00.000','1d',0),
(1226,'00b4668c8875ad87c695427e9c70dde9','2023-01-01 21:20:12.730','2023-01-01 21:20:14.496','[]','documents.$all.count.total','default',0,'2022-12-20 00:00:00.000','1d',0),
(1227,'d995d7847a07a19ec6916496796e3549','2023-01-01 21:20:12.731','2023-01-01 21:20:14.498','[]','documents.$all.count.total','default',0,'2022-12-21 00:00:00.000','1d',0),
(1228,'008f7ccb7fec80544ee1301d1bb654bf','2023-01-01 21:20:12.733','2023-01-01 21:20:14.500','[]','documents.$all.count.total','default',0,'2022-12-22 00:00:00.000','1d',0),
(1229,'c21c6450156768cc8a226c8f92bbf019','2023-01-01 21:20:12.734','2023-01-01 21:20:14.501','[]','documents.$all.count.total','default',0,'2022-12-23 00:00:00.000','1d',0),
(1230,'7630a04c488fd902a8e4074470803bb8','2023-01-01 21:20:12.736','2023-01-01 21:20:14.503','[]','documents.$all.count.total','default',0,'2022-12-24 00:00:00.000','1d',0),
(1231,'679048bfab63e254335f9214dab80385','2023-01-01 21:20:12.737','2023-01-01 21:20:14.505','[]','documents.$all.count.total','default',0,'2022-12-25 00:00:00.000','1d',0),
(1232,'7db0fb62e61e2ac2eec749cd562f613e','2023-01-01 21:20:12.739','2023-01-01 21:20:14.507','[]','documents.$all.count.total','default',0,'2022-12-26 00:00:00.000','1d',0),
(1233,'b638dcba83cba138ea3a9aab6121f969','2023-01-01 21:20:12.741','2023-01-01 21:20:14.509','[]','documents.$all.count.total','default',0,'2022-12-27 00:00:00.000','1d',0),
(1234,'f3d080c54e51657b82cdfa0969c07962','2023-01-01 21:20:12.742','2023-01-01 21:20:14.510','[]','documents.$all.count.total','default',0,'2022-12-28 00:00:00.000','1d',0),
(1235,'10b4a3d8a12b1718fa11e4f3e1d830ae','2023-01-01 21:20:12.743','2023-01-01 21:20:14.512','[]','documents.$all.count.total','default',0,'2022-12-29 00:00:00.000','1d',0),
(1236,'3f2e52a216c3dbbe432fd200e98ea280','2023-01-01 21:20:12.747','2023-01-01 21:20:14.514','[]','documents.$all.count.total','default',0,'2022-12-30 00:00:00.000','1d',0),
(1237,'a68f5ee949d9b418da9849b0d6540c17','2023-01-01 21:20:12.749','2023-01-01 21:20:14.516','[]','documents.$all.count.total','default',0,'2022-12-31 00:00:00.000','1d',0),
(1238,'1a367c3a25336fb73fea97caf5222c67','2023-01-01 21:20:12.750','2023-01-01 21:20:45.372','[]','documents.$all.count.total','default',3,'2023-01-01 00:00:00.000','1d',0),
(1239,'a441d701525fe78ea056ac7f0f53f239','2023-01-01 21:20:12.758','2023-01-01 21:20:14.525','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-02 00:00:00.000','1d',0),
(1240,'a0d96fc27b903e177af4374f3940a58c','2023-01-01 21:20:12.760','2023-01-01 21:20:14.527','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-03 00:00:00.000','1d',0),
(1241,'56c9324fc2176a9658d3d1bc9b596b2e','2023-01-01 21:20:12.761','2023-01-01 21:20:14.529','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-04 00:00:00.000','1d',0),
(1242,'31ece8a5fe636b619ad622f84b1ecb6d','2023-01-01 21:20:12.763','2023-01-01 21:20:14.531','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-05 00:00:00.000','1d',0),
(1243,'7d03cf0bfb58ca25de02e72613112c41','2023-01-01 21:20:12.765','2023-01-01 21:20:14.533','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-06 00:00:00.000','1d',0),
(1244,'287a9eb713ebcb34e385600404482dea','2023-01-01 21:20:12.768','2023-01-01 21:20:14.535','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-07 00:00:00.000','1d',0),
(1245,'6cb7e70ee18afef760a474ab372f6351','2023-01-01 21:20:12.769','2023-01-01 21:20:14.537','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-08 00:00:00.000','1d',0),
(1246,'92867c747ee631d7d1ee6b223a69f536','2023-01-01 21:20:12.771','2023-01-01 21:20:14.539','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-09 00:00:00.000','1d',0),
(1247,'7f34b377142429e18ac3844ab30f59e5','2023-01-01 21:20:12.773','2023-01-01 21:20:14.541','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-10 00:00:00.000','1d',0),
(1248,'9235618ac5766dc0cb75798ee3745afb','2023-01-01 21:20:12.774','2023-01-01 21:20:14.543','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-11 00:00:00.000','1d',0),
(1249,'ec84ebdf76f57117e5bfd08261ff2abc','2023-01-01 21:20:12.776','2023-01-01 21:20:14.545','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-12 00:00:00.000','1d',0),
(1250,'baca3e0a0cf69c5b9a740e5d851d782e','2023-01-01 21:20:12.777','2023-01-01 21:20:14.547','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-13 00:00:00.000','1d',0),
(1251,'cc756468fc293efa906f6f9499804853','2023-01-01 21:20:12.778','2023-01-01 21:20:14.549','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-14 00:00:00.000','1d',0),
(1252,'730d9233648252d9479c4168422cc299','2023-01-01 21:20:12.780','2023-01-01 21:20:14.550','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-15 00:00:00.000','1d',0),
(1253,'fbdf344a6815406cd825d676331b37e0','2023-01-01 21:20:12.782','2023-01-01 21:20:14.552','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-16 00:00:00.000','1d',0),
(1254,'b5f7ba7286cc0b8c52f5cf842d983eeb','2023-01-01 21:20:12.784','2023-01-01 21:20:14.554','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-17 00:00:00.000','1d',0),
(1255,'2dee89c10f6cd6e225d72c5af4040837','2023-01-01 21:20:12.785','2023-01-01 21:20:14.556','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-18 00:00:00.000','1d',0),
(1256,'e18c09414cd49c9060a86fbf293f3c5b','2023-01-01 21:20:12.787','2023-01-01 21:20:14.558','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-19 00:00:00.000','1d',0),
(1257,'3c617f8c20c13d2ed7b8c6db721a2d22','2023-01-01 21:20:12.788','2023-01-01 21:20:14.560','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-20 00:00:00.000','1d',0),
(1258,'2b876041f97acd5a20329c3cd3739311','2023-01-01 21:20:12.790','2023-01-01 21:20:14.562','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-21 00:00:00.000','1d',0),
(1259,'ce8f9d54e2121beb543a5a03d5cdc0d8','2023-01-01 21:20:12.791','2023-01-01 21:20:14.564','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-22 00:00:00.000','1d',0),
(1260,'17ddd49a700d74e5d5810df13e16c490','2023-01-01 21:20:12.793','2023-01-01 21:20:14.566','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-23 00:00:00.000','1d',0),
(1261,'3d7dd065e2ca6c28b4a1cb8e721c560c','2023-01-01 21:20:12.794','2023-01-01 21:20:14.568','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-24 00:00:00.000','1d',0),
(1262,'019e3200cbb61786316076db6e555b0c','2023-01-01 21:20:12.795','2023-01-01 21:20:14.570','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-25 00:00:00.000','1d',0),
(1263,'487a3949ba171d447aa3ad1ec482f177','2023-01-01 21:20:12.797','2023-01-01 21:20:14.572','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-26 00:00:00.000','1d',0),
(1264,'a0a91692604cca19c3178cf164e31b5c','2023-01-01 21:20:12.799','2023-01-01 21:20:14.574','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-27 00:00:00.000','1d',0),
(1265,'09d7a86cc285bf9e9fc0fc04a7c17cfe','2023-01-01 21:20:12.800','2023-01-01 21:20:14.577','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-28 00:00:00.000','1d',0),
(1266,'72c9ca514ea520a52831bbf3412692f7','2023-01-01 21:20:12.801','2023-01-01 21:20:14.579','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-29 00:00:00.000','1d',0),
(1267,'3dd6302f3b3c3e2c05daf8a82e0e9c71','2023-01-01 21:20:12.803','2023-01-01 21:20:14.581','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-30 00:00:00.000','1d',0),
(1268,'af45e2936c22bb0271d2cda718a2b350','2023-01-01 21:20:12.804','2023-01-01 21:20:14.582','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-31 00:00:00.000','1d',0),
(1269,'d3f7f54b0efd417393a8f6ebc77a9314','2023-01-01 21:20:12.806','2023-01-01 21:20:45.380','[]','documents.63b1f73a5da8233847c0.count.total','default',3,'2023-01-01 00:00:00.000','1d',0),
(1270,'14a8533db99e9ef00bfcdd875d2390b6','2023-01-01 21:20:12.810','2023-01-01 21:20:14.588','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-02 00:00:00.000','1d',0),
(1271,'927f3910454506a45090e0b511b1330a','2023-01-01 21:20:12.811','2023-01-01 21:20:14.590','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-03 00:00:00.000','1d',0),
(1272,'6701c202278bc7080939753e9060ee2a','2023-01-01 21:20:12.813','2023-01-01 21:20:14.592','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-04 00:00:00.000','1d',0),
(1273,'2a38b041c497735efb12dbe5e0ed4282','2023-01-01 21:20:12.815','2023-01-01 21:20:14.594','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-05 00:00:00.000','1d',0),
(1274,'b3c137049299401d31f05461887f4a1b','2023-01-01 21:20:12.817','2023-01-01 21:20:14.596','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-06 00:00:00.000','1d',0),
(1275,'52f519c2483aa2ca72651da0ee38ebce','2023-01-01 21:20:12.818','2023-01-01 21:20:14.599','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-07 00:00:00.000','1d',0),
(1276,'3f2be4aa061aad1b62447310c29fcb86','2023-01-01 21:20:12.820','2023-01-01 21:20:14.601','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-08 00:00:00.000','1d',0),
(1277,'d652a9ae28fd4f14ab2bd7eb8ebced65','2023-01-01 21:20:12.821','2023-01-01 21:20:14.603','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-09 00:00:00.000','1d',0),
(1278,'7d27e879a34bdcc35e5359cc87eaaf9b','2023-01-01 21:20:12.823','2023-01-01 21:20:14.605','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-10 00:00:00.000','1d',0),
(1279,'f6675d5fbc0bd2b07e21557075f7b4f3','2023-01-01 21:20:12.824','2023-01-01 21:20:14.607','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-11 00:00:00.000','1d',0),
(1280,'63b6c73006990ff63ee92ba342d5dce7','2023-01-01 21:20:12.825','2023-01-01 21:20:14.609','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-12 00:00:00.000','1d',0),
(1281,'79c02aa98a2cf31c1973bb6fb4e33a6b','2023-01-01 21:20:12.827','2023-01-01 21:20:14.611','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-13 00:00:00.000','1d',0),
(1282,'356c626296805c53fb0b7c03491d985f','2023-01-01 21:20:12.829','2023-01-01 21:20:14.613','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-14 00:00:00.000','1d',0),
(1283,'511a4e940160fdb427702935f68b12de','2023-01-01 21:20:12.830','2023-01-01 21:20:14.615','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-15 00:00:00.000','1d',0),
(1284,'0c6f72d67ba56f097afc64d99d0bb7b4','2023-01-01 21:20:12.831','2023-01-01 21:20:14.617','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-16 00:00:00.000','1d',0),
(1285,'c37d7d0edd8440bfd68b2fce68320070','2023-01-01 21:20:12.833','2023-01-01 21:20:14.620','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-17 00:00:00.000','1d',0),
(1286,'91f1c526ce021fe7a8f1adceca54ebec','2023-01-01 21:20:12.834','2023-01-01 21:20:14.621','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-18 00:00:00.000','1d',0),
(1287,'fa9ff7f1e12ff4690e3c6f0619f13b7b','2023-01-01 21:20:12.835','2023-01-01 21:20:14.624','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-19 00:00:00.000','1d',0),
(1288,'a9da6201102c28aa8b59419f34567145','2023-01-01 21:20:12.836','2023-01-01 21:20:14.626','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-20 00:00:00.000','1d',0),
(1289,'8257ff204a94ba8a7b5c6c3d24d03dcf','2023-01-01 21:20:12.838','2023-01-01 21:20:14.628','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-21 00:00:00.000','1d',0),
(1290,'d8594093f8aed4af189f75ee03b6883f','2023-01-01 21:20:12.840','2023-01-01 21:20:14.630','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-22 00:00:00.000','1d',0),
(1291,'e014f3a055c5690322d463e8ea26f980','2023-01-01 21:20:12.842','2023-01-01 21:20:14.633','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-23 00:00:00.000','1d',0),
(1292,'7a74656c3d09bc25ae45df8d50632ced','2023-01-01 21:20:12.843','2023-01-01 21:20:14.635','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-24 00:00:00.000','1d',0),
(1293,'f0332fdd8829e900bd18b4746721faa3','2023-01-01 21:20:12.845','2023-01-01 21:20:14.637','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-25 00:00:00.000','1d',0),
(1294,'e9f3a4bf0a43c760f58b01e39c3ccaa6','2023-01-01 21:20:12.846','2023-01-01 21:20:14.639','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-26 00:00:00.000','1d',0),
(1295,'baa5d1c30a921e3cd332c3b0ba8c14d5','2023-01-01 21:20:12.848','2023-01-01 21:20:14.641','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-27 00:00:00.000','1d',0),
(1296,'7201f15c3fc1b09d6dd19aa9c9e9c5b5','2023-01-01 21:20:12.849','2023-01-01 21:20:14.643','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-28 00:00:00.000','1d',0),
(1297,'c81d123be6b1a35041e494f1bf818b24','2023-01-01 21:20:12.851','2023-01-01 21:20:14.645','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-29 00:00:00.000','1d',0),
(1298,'f38260bd88948944392ef357f439d2b0','2023-01-01 21:20:12.852','2023-01-01 21:20:14.646','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-30 00:00:00.000','1d',0),
(1299,'6f44574608758f9c78036e61ad2dd49b','2023-01-01 21:20:12.854','2023-01-01 21:20:14.648','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-31 00:00:00.000','1d',0),
(1300,'840674f4e678352e016199a5e2aef1b4','2023-01-01 21:20:12.855','2023-01-01 21:20:45.384','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',3,'2023-01-01 00:00:00.000','1d',0),
(1301,'cf6cfadd1fc0c92056e46c1d6ea894c6','2023-01-01 21:20:13.707','2023-01-01 21:20:42.929','[]','documents.$all.requests.create','default',0,'2022-12-31 21:00:00.000','1h',0),
(1302,'6e29bf640b015ca4e6d85d41d52f456b','2023-01-01 21:20:13.708','2023-01-01 21:20:42.932','[]','documents.$all.requests.create','default',0,'2022-12-31 22:00:00.000','1h',0),
(1303,'b1e322d13ffec1b6af4ae5b2963d706d','2023-01-01 21:20:13.711','2023-01-01 21:20:42.934','[]','documents.$all.requests.create','default',0,'2022-12-31 23:00:00.000','1h',0),
(1304,'aea88c015b7cf6d5b7b87a9bb7e441c6','2023-01-01 21:20:13.712','2023-01-01 21:20:42.936','[]','documents.$all.requests.create','default',0,'2023-01-01 00:00:00.000','1h',0),
(1305,'8e0a1faae1089c65f5f2637450816674','2023-01-01 21:20:13.714','2023-01-01 21:20:42.938','[]','documents.$all.requests.create','default',0,'2023-01-01 01:00:00.000','1h',0),
(1306,'c4501245adc3d1afa8d38127c5e7d72d','2023-01-01 21:20:13.716','2023-01-01 21:20:42.940','[]','documents.$all.requests.create','default',0,'2023-01-01 02:00:00.000','1h',0),
(1307,'d408320204cbcf5a875e23d795e9fdc8','2023-01-01 21:20:13.717','2023-01-01 21:20:42.943','[]','documents.$all.requests.create','default',0,'2023-01-01 03:00:00.000','1h',0),
(1308,'7d231bcd0bbf789ae8774ab1a74d6134','2023-01-01 21:20:13.719','2023-01-01 21:20:42.945','[]','documents.$all.requests.create','default',0,'2023-01-01 04:00:00.000','1h',0),
(1309,'7312794c95385abdadd0637b5189d85a','2023-01-01 21:20:13.721','2023-01-01 21:20:42.947','[]','documents.$all.requests.create','default',0,'2023-01-01 05:00:00.000','1h',0),
(1310,'99b5aad5c7da1a196dbc3eee3d1668ab','2023-01-01 21:20:13.723','2023-01-01 21:20:42.949','[]','documents.$all.requests.create','default',0,'2023-01-01 06:00:00.000','1h',0),
(1311,'00c0b9fbf894eea183c4f87049ce1e55','2023-01-01 21:20:13.724','2023-01-01 21:20:42.951','[]','documents.$all.requests.create','default',0,'2023-01-01 07:00:00.000','1h',0),
(1312,'cf227cbb274b5a23be8954d02fde0721','2023-01-01 21:20:13.725','2023-01-01 21:20:42.953','[]','documents.$all.requests.create','default',0,'2023-01-01 08:00:00.000','1h',0),
(1313,'45ec8513c89e92bed5fd7499bb320f76','2023-01-01 21:20:13.727','2023-01-01 21:20:42.955','[]','documents.$all.requests.create','default',0,'2023-01-01 09:00:00.000','1h',0),
(1314,'0a5640970a425e396cd32bc823ff299a','2023-01-01 21:20:13.728','2023-01-01 21:20:42.957','[]','documents.$all.requests.create','default',0,'2023-01-01 10:00:00.000','1h',0),
(1315,'bfca3939816a167315b3fdb7c42fd1d4','2023-01-01 21:20:13.730','2023-01-01 21:20:42.959','[]','documents.$all.requests.create','default',0,'2023-01-01 11:00:00.000','1h',0),
(1316,'d4f197eef11e3f31bc5d67b98cf080a0','2023-01-01 21:20:13.731','2023-01-01 21:20:42.961','[]','documents.$all.requests.create','default',0,'2023-01-01 12:00:00.000','1h',0),
(1317,'7d05e08738c30a71fdb6251f21eaf4c0','2023-01-01 21:20:13.732','2023-01-01 21:20:42.963','[]','documents.$all.requests.create','default',0,'2023-01-01 13:00:00.000','1h',0),
(1318,'ca6083bc281893b4dd5c5d576e6df5ad','2023-01-01 21:20:13.734','2023-01-01 21:20:42.965','[]','documents.$all.requests.create','default',0,'2023-01-01 14:00:00.000','1h',0),
(1319,'bafbb4567beb7c510404ae759a576fe4','2023-01-01 21:20:13.736','2023-01-01 21:20:42.968','[]','documents.$all.requests.create','default',0,'2023-01-01 15:00:00.000','1h',0),
(1320,'d7b8b6ce1501361cb23e2fb50d9f3286','2023-01-01 21:20:13.737','2023-01-01 21:20:42.970','[]','documents.$all.requests.create','default',0,'2023-01-01 16:00:00.000','1h',0),
(1321,'2ef949980551a5408e23475051aded25','2023-01-01 21:20:13.738','2023-01-01 21:20:42.973','[]','documents.$all.requests.create','default',0,'2023-01-01 17:00:00.000','1h',0),
(1322,'59179fe85ce9bd678fea7e672b2ebd18','2023-01-01 21:20:13.740','2023-01-01 21:20:42.976','[]','documents.$all.requests.create','default',0,'2023-01-01 18:00:00.000','1h',0),
(1323,'6dc3427b123d73be088e1a04d91d1665','2023-01-01 21:20:13.741','2023-01-01 21:20:42.978','[]','documents.$all.requests.create','default',0,'2023-01-01 19:00:00.000','1h',0),
(1324,'f546c7155813e7189b939471aa725b1f','2023-01-01 21:20:13.744','2023-01-01 21:20:42.980','[]','documents.$all.requests.create','default',0,'2023-01-01 20:00:00.000','1h',0),
(1325,'334bd1455518f8854785ed1a7f5eac66','2023-01-01 21:20:13.745','2023-01-01 21:20:44.727','[]','documents.$all.requests.create','default',3,'2023-01-01 21:00:00.000','1h',0),
(1326,'e3c55bdf8486833a7155465f1f445135','2023-01-01 21:20:13.769','2023-01-01 21:20:43.049','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-31 21:00:00.000','1h',0),
(1327,'40057b7d3c56bce0b6b774a8cf0066d3','2023-01-01 21:20:13.771','2023-01-01 21:20:43.051','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-31 22:00:00.000','1h',0),
(1328,'7f42bd4db5e4eac53e6ad6e4367e67c5','2023-01-01 21:20:13.772','2023-01-01 21:20:43.053','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-31 23:00:00.000','1h',0),
(1329,'844b8310fe42e35692680101ebffd0b9','2023-01-01 21:20:13.774','2023-01-01 21:20:43.055','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 00:00:00.000','1h',0),
(1330,'cc8ce7ce0b691ba7f214804b95e719db','2023-01-01 21:20:13.775','2023-01-01 21:20:43.058','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 01:00:00.000','1h',0),
(1331,'142a10272512489ec56f4ff9270bf126','2023-01-01 21:20:13.777','2023-01-01 21:20:43.060','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 02:00:00.000','1h',0),
(1332,'ee5aa870b3468f06b0fd85d9c5f0fb8f','2023-01-01 21:20:13.778','2023-01-01 21:20:43.062','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 03:00:00.000','1h',0),
(1333,'034c285361f9b4c61faab90b904d3e9c','2023-01-01 21:20:13.779','2023-01-01 21:20:43.064','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 04:00:00.000','1h',0),
(1334,'178bdc0123e543acda9adf43b7c4adb7','2023-01-01 21:20:13.782','2023-01-01 21:20:43.066','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 05:00:00.000','1h',0),
(1335,'ab0421bf14ef393d60b43ef2b87e169d','2023-01-01 21:20:13.783','2023-01-01 21:20:43.069','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 06:00:00.000','1h',0),
(1336,'4238716f783b62182c516a76a0aa5889','2023-01-01 21:20:13.785','2023-01-01 21:20:43.071','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 07:00:00.000','1h',0),
(1337,'92a5018a1fc1992aca3de23441579c26','2023-01-01 21:20:13.787','2023-01-01 21:20:43.073','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 08:00:00.000','1h',0),
(1338,'eb28dd8638cab80c64bcdba5c5eb2191','2023-01-01 21:20:13.788','2023-01-01 21:20:43.076','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 09:00:00.000','1h',0),
(1339,'5b45cf9b9b1e63284226dda37f8d68c0','2023-01-01 21:20:13.789','2023-01-01 21:20:43.078','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 10:00:00.000','1h',0),
(1340,'a504f7ae3ceac1b2d15c4cfd37adbb02','2023-01-01 21:20:13.791','2023-01-01 21:20:43.082','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 11:00:00.000','1h',0),
(1341,'ab23d322f039b124c5237adb5b94b11a','2023-01-01 21:20:13.793','2023-01-01 21:20:43.085','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 12:00:00.000','1h',0),
(1342,'51607d281e2d945f33a5a959a86857b3','2023-01-01 21:20:13.794','2023-01-01 21:20:43.087','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 13:00:00.000','1h',0),
(1343,'7a5522f9332dc185c01d2a090f6efafa','2023-01-01 21:20:13.795','2023-01-01 21:20:43.089','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 14:00:00.000','1h',0),
(1344,'564dcc57259ec2a997a27347d8e5f26b','2023-01-01 21:20:13.796','2023-01-01 21:20:43.091','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 15:00:00.000','1h',0),
(1345,'c218c9ad58c28eed6194306d7bab8655','2023-01-01 21:20:13.797','2023-01-01 21:20:43.093','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 16:00:00.000','1h',0),
(1346,'df63c1db847d5db6e08ae2e24a23ccde','2023-01-01 21:20:13.799','2023-01-01 21:20:43.096','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 17:00:00.000','1h',0),
(1347,'b6ab3b17c315fd4fc19871f61c39d13e','2023-01-01 21:20:13.800','2023-01-01 21:20:43.098','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 18:00:00.000','1h',0),
(1348,'d7272c8a698cf6a294e2cce8b97b28b2','2023-01-01 21:20:13.801','2023-01-01 21:20:43.100','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 19:00:00.000','1h',0),
(1349,'a938ac573b479ea600ccc5cf009ec2b5','2023-01-01 21:20:13.803','2023-01-01 21:20:43.102','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2023-01-01 20:00:00.000','1h',0),
(1350,'3f349e3566f226e8d5a4a2cf4579e4af','2023-01-01 21:20:13.805','2023-01-01 21:20:44.803','[]','documents.63b1f73a5da8233847c0.requests.create','default',3,'2023-01-01 21:00:00.000','1h',0),
(1351,'a5b9b9185222a678be62bd77c64b3ed5','2023-01-01 21:20:13.814','2023-01-01 21:20:43.154','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-31 21:00:00.000','1h',0),
(1352,'12a601bc8d8728b7ba97b03abb1c8910','2023-01-01 21:20:13.816','2023-01-01 21:20:43.156','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-31 22:00:00.000','1h',0),
(1353,'8525c9cd2be490dba16a3fe4bbc14a92','2023-01-01 21:20:13.817','2023-01-01 21:20:43.158','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-31 23:00:00.000','1h',0),
(1354,'48c095ea01bf28ef959008fa43166436','2023-01-01 21:20:13.819','2023-01-01 21:20:43.160','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 00:00:00.000','1h',0),
(1355,'547eebac4a7bcd638d33483decd9120b','2023-01-01 21:20:13.820','2023-01-01 21:20:43.161','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 01:00:00.000','1h',0),
(1356,'95d8503a88db9f8982e7efaf051224a1','2023-01-01 21:20:13.821','2023-01-01 21:20:43.163','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 02:00:00.000','1h',0),
(1357,'0f40e8a8087db75ed8902a7cd11174b5','2023-01-01 21:20:13.822','2023-01-01 21:20:43.165','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 03:00:00.000','1h',0),
(1358,'b14dbf599507106cacff979ba8b5e159','2023-01-01 21:20:13.824','2023-01-01 21:20:43.167','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 04:00:00.000','1h',0),
(1359,'9694d7ff2074cc8a14c7adb6128dbbef','2023-01-01 21:20:13.825','2023-01-01 21:20:43.169','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 05:00:00.000','1h',0),
(1360,'1e956743a7dfc89ddbe30340e3cfb423','2023-01-01 21:20:13.827','2023-01-01 21:20:43.171','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 06:00:00.000','1h',0),
(1361,'a2df6046cc8cdf4034e07c687ca29fb5','2023-01-01 21:20:13.828','2023-01-01 21:20:43.173','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 07:00:00.000','1h',0),
(1362,'8502e66a2fc2d1a20ed1ef6b2fcaf2a4','2023-01-01 21:20:13.829','2023-01-01 21:20:43.175','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 08:00:00.000','1h',0),
(1363,'7692abcdbc200ff7bf0eb507377fafa5','2023-01-01 21:20:13.830','2023-01-01 21:20:43.177','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 09:00:00.000','1h',0),
(1364,'a5ec4b85ffbfd9dfa191d2d1eff4cec8','2023-01-01 21:20:13.831','2023-01-01 21:20:43.178','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 10:00:00.000','1h',0),
(1365,'7fa6a2ba78035ed6076ab9bcc63778c4','2023-01-01 21:20:13.833','2023-01-01 21:20:43.180','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 11:00:00.000','1h',0),
(1366,'55096c11f8b13798452d9fb8151901e6','2023-01-01 21:20:13.834','2023-01-01 21:20:43.182','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 12:00:00.000','1h',0),
(1367,'a9a0882c3b5b2963ea2514bac812d89b','2023-01-01 21:20:13.835','2023-01-01 21:20:43.184','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 13:00:00.000','1h',0),
(1368,'46dd6fa1f9746e014c9f2b741eb29fc2','2023-01-01 21:20:13.837','2023-01-01 21:20:43.186','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 14:00:00.000','1h',0),
(1369,'eaa51540d1e48e9f4c9cc61cd3dda831','2023-01-01 21:20:13.838','2023-01-01 21:20:43.187','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 15:00:00.000','1h',0),
(1370,'fb1bf6afd25639b8a45c9e11a248be9b','2023-01-01 21:20:13.840','2023-01-01 21:20:43.189','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 16:00:00.000','1h',0),
(1371,'044118922be0bf72a9cb3e8dec8221d3','2023-01-01 21:20:13.842','2023-01-01 21:20:43.191','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 17:00:00.000','1h',0),
(1372,'f4042d834ff8eeaf91924ab08a6c1800','2023-01-01 21:20:13.843','2023-01-01 21:20:43.192','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 18:00:00.000','1h',0),
(1373,'fcfe8dbbc0d6c4e2b60ed07a4bb9b86d','2023-01-01 21:20:13.845','2023-01-01 21:20:43.194','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 19:00:00.000','1h',0),
(1374,'2de6a29d7d24a497500cdc1ba94756d2','2023-01-01 21:20:13.846','2023-01-01 21:20:43.196','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2023-01-01 20:00:00.000','1h',0),
(1375,'3bff7e0a44530feffc11ad05fe0f03c8','2023-01-01 21:20:13.847','2023-01-01 21:20:44.865','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',3,'2023-01-01 21:00:00.000','1h',0),
(1376,'920fcaa3ee87637b5b332573e97068bb','2023-01-01 21:20:13.879','2023-01-01 21:20:43.263','[]','sessions.email.requests.create','default',0,'2022-12-31 21:00:00.000','1h',0),
(1377,'5664c5b92c1980852393b8a217d3ff56','2023-01-01 21:20:13.880','2023-01-01 21:20:43.265','[]','sessions.email.requests.create','default',0,'2022-12-31 22:00:00.000','1h',0),
(1378,'02187fdba4e77dc07fc4cc957d632291','2023-01-01 21:20:13.882','2023-01-01 21:20:43.267','[]','sessions.email.requests.create','default',0,'2022-12-31 23:00:00.000','1h',0),
(1379,'9db688253887d818dc5a8da9062738cd','2023-01-01 21:20:13.883','2023-01-01 21:20:43.269','[]','sessions.email.requests.create','default',0,'2023-01-01 00:00:00.000','1h',0),
(1380,'a54c9a971857f5536db86676b98ddf61','2023-01-01 21:20:13.885','2023-01-01 21:20:43.271','[]','sessions.email.requests.create','default',0,'2023-01-01 01:00:00.000','1h',0),
(1381,'737fba91631b11208065b0bd5c81344d','2023-01-01 21:20:13.886','2023-01-01 21:20:43.274','[]','sessions.email.requests.create','default',0,'2023-01-01 02:00:00.000','1h',0),
(1382,'76b4285b84f693bfa283752b57455771','2023-01-01 21:20:13.887','2023-01-01 21:20:43.276','[]','sessions.email.requests.create','default',0,'2023-01-01 03:00:00.000','1h',0),
(1383,'5ca13471a0894e43a894535fe047fbd1','2023-01-01 21:20:13.889','2023-01-01 21:20:43.278','[]','sessions.email.requests.create','default',0,'2023-01-01 04:00:00.000','1h',0),
(1384,'b57c7c802f3158ce779c0ccb912ab6eb','2023-01-01 21:20:13.890','2023-01-01 21:20:43.280','[]','sessions.email.requests.create','default',0,'2023-01-01 05:00:00.000','1h',0),
(1385,'4b0c7ea1d044c989a0601e81f411c40d','2023-01-01 21:20:13.892','2023-01-01 21:20:43.283','[]','sessions.email.requests.create','default',0,'2023-01-01 06:00:00.000','1h',0),
(1386,'1a46c1c60a4715caef9e28ec2ff05d46','2023-01-01 21:20:13.893','2023-01-01 21:20:43.285','[]','sessions.email.requests.create','default',0,'2023-01-01 07:00:00.000','1h',0),
(1387,'7edb5dc24f4b97b86d80752ff593efd9','2023-01-01 21:20:13.895','2023-01-01 21:20:43.287','[]','sessions.email.requests.create','default',0,'2023-01-01 08:00:00.000','1h',0),
(1388,'44054816fc44b7781d7ebea809ce1123','2023-01-01 21:20:13.896','2023-01-01 21:20:43.290','[]','sessions.email.requests.create','default',0,'2023-01-01 09:00:00.000','1h',0),
(1389,'a9721dd166122e5ca75593a103258588','2023-01-01 21:20:13.898','2023-01-01 21:20:43.292','[]','sessions.email.requests.create','default',0,'2023-01-01 10:00:00.000','1h',0),
(1390,'ae685d7d4466c854a326f012be2cb911','2023-01-01 21:20:13.899','2023-01-01 21:20:43.294','[]','sessions.email.requests.create','default',0,'2023-01-01 11:00:00.000','1h',0),
(1391,'6d1aa57a1e18395d83f8b8de8dd342c7','2023-01-01 21:20:13.901','2023-01-01 21:20:43.296','[]','sessions.email.requests.create','default',0,'2023-01-01 12:00:00.000','1h',0),
(1392,'da0e0870cafbbaea482338fd66c08e91','2023-01-01 21:20:13.902','2023-01-01 21:20:43.299','[]','sessions.email.requests.create','default',0,'2023-01-01 13:00:00.000','1h',0),
(1393,'68979aa2606463bd7b6e43a184ec01a6','2023-01-01 21:20:13.904','2023-01-01 21:20:43.301','[]','sessions.email.requests.create','default',0,'2023-01-01 14:00:00.000','1h',0),
(1394,'510a55c7a15c520a6c43777086e8a47b','2023-01-01 21:20:13.906','2023-01-01 21:20:43.303','[]','sessions.email.requests.create','default',0,'2023-01-01 15:00:00.000','1h',0),
(1395,'64161bf799d9bdf021ba4ba8aaf73d54','2023-01-01 21:20:13.907','2023-01-01 21:20:43.305','[]','sessions.email.requests.create','default',0,'2023-01-01 16:00:00.000','1h',0),
(1396,'736384dcc461e17a212fa18d2678181c','2023-01-01 21:20:13.909','2023-01-01 21:20:43.307','[]','sessions.email.requests.create','default',0,'2023-01-01 17:00:00.000','1h',0),
(1397,'1ee8b230fa183979b91f9cd0020cbc97','2023-01-01 21:20:13.910','2023-01-01 21:20:43.309','[]','sessions.email.requests.create','default',0,'2023-01-01 18:00:00.000','1h',0),
(1398,'ee35230de2447d116807bd73499a359e','2023-01-01 21:20:13.911','2023-01-01 21:20:43.310','[]','sessions.email.requests.create','default',0,'2023-01-01 19:00:00.000','1h',0),
(1399,'45b375e7dd45111b5212d55e5748e313','2023-01-01 21:20:13.912','2023-01-01 21:20:43.312','[]','sessions.email.requests.create','default',0,'2023-01-01 20:00:00.000','1h',0),
(1400,'0d02b80f1d572cfec0128694cbfa357b','2023-01-01 21:20:13.914','2023-01-01 21:20:44.943','[]','sessions.email.requests.create','default',1,'2023-01-01 21:00:00.000','1h',0),
(1401,'6a3cda36d44d6c83da8693c57b0dcc37','2023-01-01 21:20:13.957','2023-01-01 21:20:43.362','[]','documents.$all.count.total','default',0,'2022-12-31 21:00:00.000','1h',0),
(1402,'ab8bf37ff4b80cfc02f02657af5b73fa','2023-01-01 21:20:13.959','2023-01-01 21:20:43.364','[]','documents.$all.count.total','default',0,'2022-12-31 22:00:00.000','1h',0),
(1403,'c62d57ce7f6b899686f965e4bdac33f2','2023-01-01 21:20:13.960','2023-01-01 21:20:43.366','[]','documents.$all.count.total','default',0,'2022-12-31 23:00:00.000','1h',0),
(1404,'bfa8d1dd5e973317808fcfffc8f0c21c','2023-01-01 21:20:13.962','2023-01-01 21:20:43.368','[]','documents.$all.count.total','default',0,'2023-01-01 00:00:00.000','1h',0),
(1405,'684e428ced0c15953686e852d576d002','2023-01-01 21:20:13.963','2023-01-01 21:20:43.370','[]','documents.$all.count.total','default',0,'2023-01-01 01:00:00.000','1h',0),
(1406,'955a906a3e334bd55c16a6007bea3885','2023-01-01 21:20:13.964','2023-01-01 21:20:43.372','[]','documents.$all.count.total','default',0,'2023-01-01 02:00:00.000','1h',0),
(1407,'58cba5b0a73617297c4f656de43a658a','2023-01-01 21:20:13.966','2023-01-01 21:20:43.374','[]','documents.$all.count.total','default',0,'2023-01-01 03:00:00.000','1h',0),
(1408,'89373445b379e5eb82388a04cabe500b','2023-01-01 21:20:13.967','2023-01-01 21:20:43.376','[]','documents.$all.count.total','default',0,'2023-01-01 04:00:00.000','1h',0),
(1409,'afa49c57474571e199ba0f7984d64a43','2023-01-01 21:20:13.968','2023-01-01 21:20:43.378','[]','documents.$all.count.total','default',0,'2023-01-01 05:00:00.000','1h',0),
(1410,'323689b331aad28ee4cf9e15c403a9cd','2023-01-01 21:20:13.969','2023-01-01 21:20:43.380','[]','documents.$all.count.total','default',0,'2023-01-01 06:00:00.000','1h',0),
(1411,'7f76ab494d3c75758b36e9c3bd049fd2','2023-01-01 21:20:13.971','2023-01-01 21:20:43.382','[]','documents.$all.count.total','default',0,'2023-01-01 07:00:00.000','1h',0),
(1412,'f62f23881e7d4aa01c13af11ada0efd6','2023-01-01 21:20:13.972','2023-01-01 21:20:43.384','[]','documents.$all.count.total','default',0,'2023-01-01 08:00:00.000','1h',0),
(1413,'9b1e0ca74e9cc2d1fed553e3d7a239a6','2023-01-01 21:20:13.974','2023-01-01 21:20:43.391','[]','documents.$all.count.total','default',0,'2023-01-01 09:00:00.000','1h',0),
(1414,'f67dd0eb3c5712a393771c3efcf9f586','2023-01-01 21:20:13.975','2023-01-01 21:20:43.393','[]','documents.$all.count.total','default',0,'2023-01-01 10:00:00.000','1h',0),
(1415,'ef9443de96516ef898dd566b36ce8149','2023-01-01 21:20:13.977','2023-01-01 21:20:43.396','[]','documents.$all.count.total','default',0,'2023-01-01 11:00:00.000','1h',0),
(1416,'a1b502eb2bf27a9069dee3b5d754e31c','2023-01-01 21:20:13.978','2023-01-01 21:20:43.398','[]','documents.$all.count.total','default',0,'2023-01-01 12:00:00.000','1h',0),
(1417,'2c74232912427abaf3f410f4b6151275','2023-01-01 21:20:13.980','2023-01-01 21:20:43.400','[]','documents.$all.count.total','default',0,'2023-01-01 13:00:00.000','1h',0),
(1418,'ae8418ab1149ca56da2e834e07ef9e52','2023-01-01 21:20:13.982','2023-01-01 21:20:43.402','[]','documents.$all.count.total','default',0,'2023-01-01 14:00:00.000','1h',0),
(1419,'bed62bddb2abc59edb76e92650ae04e5','2023-01-01 21:20:13.983','2023-01-01 21:20:43.404','[]','documents.$all.count.total','default',0,'2023-01-01 15:00:00.000','1h',0),
(1420,'b949aa802d862ab5bb7aa3662f7a3978','2023-01-01 21:20:13.985','2023-01-01 21:20:43.406','[]','documents.$all.count.total','default',0,'2023-01-01 16:00:00.000','1h',0),
(1421,'3808fc2af7cfb93b8646683165d6c35c','2023-01-01 21:20:13.986','2023-01-01 21:20:43.408','[]','documents.$all.count.total','default',0,'2023-01-01 17:00:00.000','1h',0),
(1422,'c580fb1a522111e9aa7b2e429e17de94','2023-01-01 21:20:13.987','2023-01-01 21:20:43.410','[]','documents.$all.count.total','default',0,'2023-01-01 18:00:00.000','1h',0),
(1423,'b47f7e431f3da8f86042e9baca9b70e0','2023-01-01 21:20:13.989','2023-01-01 21:20:43.412','[]','documents.$all.count.total','default',0,'2023-01-01 19:00:00.000','1h',0),
(1424,'f6f509bc5bc255120651dfa5d7c6254b','2023-01-01 21:20:13.990','2023-01-01 21:20:43.413','[]','documents.$all.count.total','default',0,'2023-01-01 20:00:00.000','1h',0),
(1425,'efc95208a9694d9be2789b0ef38c4bc2','2023-01-01 21:20:13.991','2023-01-01 21:20:44.983','[]','documents.$all.count.total','default',3,'2023-01-01 21:00:00.000','1h',0),
(1426,'382900ccfc9101be5ceedea082448209','2023-01-01 21:20:14.000','2023-01-01 21:20:43.424','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-31 21:00:00.000','1h',0),
(1427,'d01a319fc3794fa223764ef8c7fb2ae3','2023-01-01 21:20:14.001','2023-01-01 21:20:43.427','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-31 22:00:00.000','1h',0),
(1428,'74d6f022b154311677261722a17a1059','2023-01-01 21:20:14.003','2023-01-01 21:20:43.429','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2022-12-31 23:00:00.000','1h',0),
(1429,'d05dfa5fbbbe19c58fad7e1397143456','2023-01-01 21:20:14.004','2023-01-01 21:20:43.431','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 00:00:00.000','1h',0),
(1430,'ce06ba5a25e0ed25939ba9d03b0fdf3c','2023-01-01 21:20:14.006','2023-01-01 21:20:43.433','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 01:00:00.000','1h',0),
(1431,'e2f9db3773085d17603bf43959b690df','2023-01-01 21:20:14.007','2023-01-01 21:20:43.435','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 02:00:00.000','1h',0),
(1432,'f2ee564d1e686ddcf101ba1db1b00c91','2023-01-01 21:20:14.008','2023-01-01 21:20:43.437','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 03:00:00.000','1h',0),
(1433,'913fefb6e31e5fc0021fec5a961d656e','2023-01-01 21:20:14.010','2023-01-01 21:20:43.440','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 04:00:00.000','1h',0),
(1434,'f6d2309d8fb4a7a65d6fe86106dbd355','2023-01-01 21:20:14.011','2023-01-01 21:20:43.443','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 05:00:00.000','1h',0),
(1435,'c68ace250829b8db78654e85da66f3a7','2023-01-01 21:20:14.013','2023-01-01 21:20:43.445','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 06:00:00.000','1h',0),
(1436,'52361d9267113f9b23926127d2dd1203','2023-01-01 21:20:14.014','2023-01-01 21:20:43.447','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 07:00:00.000','1h',0),
(1437,'b0c0a93c40af6f26d4071115a43b6361','2023-01-01 21:20:14.016','2023-01-01 21:20:43.449','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 08:00:00.000','1h',0),
(1438,'4355f1df0bc3f4c8589c0deafb3da742','2023-01-01 21:20:14.017','2023-01-01 21:20:43.451','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 09:00:00.000','1h',0),
(1439,'973a249f3d7e6fe476a84c57d9cc44ce','2023-01-01 21:20:14.018','2023-01-01 21:20:43.453','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 10:00:00.000','1h',0),
(1440,'24420bb89257d1c23f207760b0a88484','2023-01-01 21:20:14.019','2023-01-01 21:20:43.455','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 11:00:00.000','1h',0),
(1441,'1fd27da8d0c6a20e941999f83453d816','2023-01-01 21:20:14.021','2023-01-01 21:20:43.458','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 12:00:00.000','1h',0),
(1442,'bff52c543c4ddbf8a827c64db26970f8','2023-01-01 21:20:14.022','2023-01-01 21:20:43.460','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 13:00:00.000','1h',0),
(1443,'0b1366d1cc81e1730f9414321b8a5829','2023-01-01 21:20:14.023','2023-01-01 21:20:43.462','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 14:00:00.000','1h',0),
(1444,'4d5b5064bd74bf801e92374aca16519e','2023-01-01 21:20:14.025','2023-01-01 21:20:43.464','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 15:00:00.000','1h',0),
(1445,'25c69168b259fa70e35b5e1780fcb0d9','2023-01-01 21:20:14.026','2023-01-01 21:20:43.465','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 16:00:00.000','1h',0),
(1446,'c006a5085fe509b0a5c966807b7cc1c3','2023-01-01 21:20:14.027','2023-01-01 21:20:43.467','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 17:00:00.000','1h',0),
(1447,'d4f5ad60b84cd4dc917ed188e78e1bbc','2023-01-01 21:20:14.028','2023-01-01 21:20:43.469','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 18:00:00.000','1h',0),
(1448,'902addbfc30edb062152156652448211','2023-01-01 21:20:14.030','2023-01-01 21:20:43.471','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 19:00:00.000','1h',0),
(1449,'f858ff60bbeaf1d4ebac7ce4c8331636','2023-01-01 21:20:14.031','2023-01-01 21:20:43.473','[]','documents.63b1f73a5da8233847c0.count.total','default',0,'2023-01-01 20:00:00.000','1h',0),
(1450,'95df809183bc41e7cdf45ca39b661744','2023-01-01 21:20:14.032','2023-01-01 21:20:44.990','[]','documents.63b1f73a5da8233847c0.count.total','default',3,'2023-01-01 21:00:00.000','1h',0),
(1451,'a9c9f8cfcfc871a6ac9f9c0fa96afde3','2023-01-01 21:20:14.036','2023-01-01 21:20:43.479','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-31 21:00:00.000','1h',0),
(1452,'2b70c62fa7c84acc0848ed39f45daaaa','2023-01-01 21:20:14.037','2023-01-01 21:20:43.481','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-31 22:00:00.000','1h',0),
(1453,'844478308f7b14477e1ae49255d1a714','2023-01-01 21:20:14.038','2023-01-01 21:20:43.483','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2022-12-31 23:00:00.000','1h',0),
(1454,'b7e85b06e04fd8cc99d5791b30236cff','2023-01-01 21:20:14.040','2023-01-01 21:20:43.485','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 00:00:00.000','1h',0),
(1455,'7c0fdb117525a4654a23e0c4082af274','2023-01-01 21:20:14.041','2023-01-01 21:20:43.487','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 01:00:00.000','1h',0),
(1456,'43ee6bd7e6dc20f34ef9c81684b805ff','2023-01-01 21:20:14.042','2023-01-01 21:20:43.489','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 02:00:00.000','1h',0),
(1457,'5e98d59c116da4d2384b201741d6269d','2023-01-01 21:20:14.043','2023-01-01 21:20:43.490','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 03:00:00.000','1h',0),
(1458,'b584edfd2e5762f61331867430699260','2023-01-01 21:20:14.045','2023-01-01 21:20:43.492','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 04:00:00.000','1h',0),
(1459,'fcc514ca0e77a08516565beb6d8c634e','2023-01-01 21:20:14.046','2023-01-01 21:20:43.494','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 05:00:00.000','1h',0),
(1460,'3847a6c720c105cbd50c7c35919d4d35','2023-01-01 21:20:14.048','2023-01-01 21:20:43.496','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 06:00:00.000','1h',0),
(1461,'531fe12ab6634bc3bd5328265241bf9b','2023-01-01 21:20:14.049','2023-01-01 21:20:43.498','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 07:00:00.000','1h',0),
(1462,'394b885ed29190b2426ffde5650aa92f','2023-01-01 21:20:14.051','2023-01-01 21:20:43.500','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 08:00:00.000','1h',0),
(1463,'0a0e25f0930554ee807d47b6692fdf54','2023-01-01 21:20:14.052','2023-01-01 21:20:43.502','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 09:00:00.000','1h',0),
(1464,'1fc9d2ca6cf783244742164b31a3f4ed','2023-01-01 21:20:14.053','2023-01-01 21:20:43.504','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 10:00:00.000','1h',0),
(1465,'2ca78584f307746f8c57bbb33be9ef42','2023-01-01 21:20:14.054','2023-01-01 21:20:43.506','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 11:00:00.000','1h',0),
(1466,'5054aef1ceed6888756a927832c3888c','2023-01-01 21:20:14.056','2023-01-01 21:20:43.508','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 12:00:00.000','1h',0),
(1467,'747cedcb72fe6f8cc2f2f172dc2e2695','2023-01-01 21:20:14.057','2023-01-01 21:20:43.510','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 13:00:00.000','1h',0),
(1468,'f0463d639678ddf939c66ce700dad0f0','2023-01-01 21:20:14.058','2023-01-01 21:20:43.512','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 14:00:00.000','1h',0),
(1469,'d3195b22d82084fa6c1bb79a3c5eb7b6','2023-01-01 21:20:14.059','2023-01-01 21:20:43.514','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 15:00:00.000','1h',0),
(1470,'6facd53b4e13d409102bb85a900aeec8','2023-01-01 21:20:14.060','2023-01-01 21:20:43.516','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 16:00:00.000','1h',0),
(1471,'3f89289ff886b1bc22cf87e4903db037','2023-01-01 21:20:14.062','2023-01-01 21:20:43.518','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 17:00:00.000','1h',0),
(1472,'287ae4fd3db8278377efea894de28a62','2023-01-01 21:20:14.063','2023-01-01 21:20:43.520','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 18:00:00.000','1h',0),
(1473,'98496b7f3f5b8c35d67225d7e4048696','2023-01-01 21:20:14.065','2023-01-01 21:20:43.522','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 19:00:00.000','1h',0),
(1474,'3a492dd5b93a392c7a22eef00324907d','2023-01-01 21:20:14.066','2023-01-01 21:20:43.524','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',0,'2023-01-01 20:00:00.000','1h',0),
(1475,'e174f10b82165dd2eee15690d61c7eea','2023-01-01 21:20:14.067','2023-01-01 21:20:44.994','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.count.total','default',3,'2023-01-01 21:00:00.000','1h',0),
(1476,'e257d3e882d3cd5319ba306263a95e61','2023-01-01 21:20:14.137','2023-01-01 21:20:43.608','[]','documents.$all.requests.create','default',0,'2022-12-02 00:00:00.000','1d',0),
(1477,'d262dc450853229f06464611ade3e564','2023-01-01 21:20:14.139','2023-01-01 21:20:43.611','[]','documents.$all.requests.create','default',0,'2022-12-03 00:00:00.000','1d',0),
(1478,'a408eb068c685454291daa596c8b92f4','2023-01-01 21:20:14.141','2023-01-01 21:20:43.614','[]','documents.$all.requests.create','default',0,'2022-12-04 00:00:00.000','1d',0),
(1479,'44986a5fb42f0e7a914b6e1e434111f7','2023-01-01 21:20:14.142','2023-01-01 21:20:43.616','[]','documents.$all.requests.create','default',0,'2022-12-05 00:00:00.000','1d',0),
(1480,'bd50b212e269d288e9b75e846690ee22','2023-01-01 21:20:14.144','2023-01-01 21:20:43.618','[]','documents.$all.requests.create','default',0,'2022-12-06 00:00:00.000','1d',0),
(1481,'1c5e4a9920f38d409c8d679f3761bd72','2023-01-01 21:20:14.145','2023-01-01 21:20:43.623','[]','documents.$all.requests.create','default',0,'2022-12-07 00:00:00.000','1d',0),
(1482,'014da37a9873aef48e460ff2edf602e8','2023-01-01 21:20:14.147','2023-01-01 21:20:43.625','[]','documents.$all.requests.create','default',0,'2022-12-08 00:00:00.000','1d',0),
(1483,'ddd4726288ca0e30d800fba0cc4063dd','2023-01-01 21:20:14.149','2023-01-01 21:20:43.628','[]','documents.$all.requests.create','default',0,'2022-12-09 00:00:00.000','1d',0),
(1484,'0b213ab2d320556959931ac83dd56f4d','2023-01-01 21:20:14.151','2023-01-01 21:20:43.630','[]','documents.$all.requests.create','default',0,'2022-12-10 00:00:00.000','1d',0),
(1485,'76ef9980d0b7ed1f2c755745f5d2896c','2023-01-01 21:20:14.152','2023-01-01 21:20:43.632','[]','documents.$all.requests.create','default',0,'2022-12-11 00:00:00.000','1d',0),
(1486,'3e072dab8277c1c4beb542294bb76af2','2023-01-01 21:20:14.154','2023-01-01 21:20:43.634','[]','documents.$all.requests.create','default',0,'2022-12-12 00:00:00.000','1d',0),
(1487,'e19dcd0a7370f029807f29662371d768','2023-01-01 21:20:14.156','2023-01-01 21:20:43.637','[]','documents.$all.requests.create','default',0,'2022-12-13 00:00:00.000','1d',0),
(1488,'c6a0eb4f8efaa383fcc74ac50d88b727','2023-01-01 21:20:14.157','2023-01-01 21:20:43.639','[]','documents.$all.requests.create','default',0,'2022-12-14 00:00:00.000','1d',0),
(1489,'63c14715702cd191060326a5f595f0cd','2023-01-01 21:20:14.159','2023-01-01 21:20:43.641','[]','documents.$all.requests.create','default',0,'2022-12-15 00:00:00.000','1d',0),
(1490,'ce95d1102b38dfdb0e5e64e645cf3f38','2023-01-01 21:20:14.161','2023-01-01 21:20:43.643','[]','documents.$all.requests.create','default',0,'2022-12-16 00:00:00.000','1d',0),
(1491,'05bcef4bed0128c876c9cf2a6a8c4033','2023-01-01 21:20:14.162','2023-01-01 21:20:43.645','[]','documents.$all.requests.create','default',0,'2022-12-17 00:00:00.000','1d',0),
(1492,'665e1b947aeb9a417c5b1aa27b946e45','2023-01-01 21:20:14.164','2023-01-01 21:20:43.647','[]','documents.$all.requests.create','default',0,'2022-12-18 00:00:00.000','1d',0),
(1493,'bb9cc7e26161856b783139ba7d2fe332','2023-01-01 21:20:14.166','2023-01-01 21:20:43.649','[]','documents.$all.requests.create','default',0,'2022-12-19 00:00:00.000','1d',0),
(1494,'e3ed0a3c11399ab11b086e7085169928','2023-01-01 21:20:14.168','2023-01-01 21:20:43.652','[]','documents.$all.requests.create','default',0,'2022-12-20 00:00:00.000','1d',0),
(1495,'8b5a956b013c9c78c8b22a0186518741','2023-01-01 21:20:14.169','2023-01-01 21:20:43.654','[]','documents.$all.requests.create','default',0,'2022-12-21 00:00:00.000','1d',0),
(1496,'abd122cbbcb9752d58a56ef4d0845357','2023-01-01 21:20:14.171','2023-01-01 21:20:43.657','[]','documents.$all.requests.create','default',0,'2022-12-22 00:00:00.000','1d',0),
(1497,'7f0255004f2b40b13551091f95e8f191','2023-01-01 21:20:14.172','2023-01-01 21:20:43.659','[]','documents.$all.requests.create','default',0,'2022-12-23 00:00:00.000','1d',0),
(1498,'2431f8325391a5ac575199386cd1c510','2023-01-01 21:20:14.174','2023-01-01 21:20:43.661','[]','documents.$all.requests.create','default',0,'2022-12-24 00:00:00.000','1d',0),
(1499,'ab253d4c2ddf6f08d6ddd7a8099095c8','2023-01-01 21:20:14.175','2023-01-01 21:20:43.662','[]','documents.$all.requests.create','default',0,'2022-12-25 00:00:00.000','1d',0),
(1500,'02fb375d826d3bfc7ec8ddbf8b12d7ed','2023-01-01 21:20:14.176','2023-01-01 21:20:43.664','[]','documents.$all.requests.create','default',0,'2022-12-26 00:00:00.000','1d',0),
(1501,'be74c257dbab95c9688241bf2d274849','2023-01-01 21:20:14.179','2023-01-01 21:20:43.667','[]','documents.$all.requests.create','default',0,'2022-12-27 00:00:00.000','1d',0),
(1502,'d11e62fc8f2587b20e900bab4fb31d18','2023-01-01 21:20:14.181','2023-01-01 21:20:43.669','[]','documents.$all.requests.create','default',0,'2022-12-28 00:00:00.000','1d',0),
(1503,'ccd14983c7802ec6581eeeaec5d86220','2023-01-01 21:20:14.182','2023-01-01 21:20:43.671','[]','documents.$all.requests.create','default',0,'2022-12-29 00:00:00.000','1d',0),
(1504,'0e1384838595b464fe7425c24bb9d90b','2023-01-01 21:20:14.183','2023-01-01 21:20:43.674','[]','documents.$all.requests.create','default',0,'2022-12-30 00:00:00.000','1d',0),
(1505,'6ba878d92d6df966cddd1e6b3253bbec','2023-01-01 21:20:14.185','2023-01-01 21:20:43.676','[]','documents.$all.requests.create','default',0,'2022-12-31 00:00:00.000','1d',0),
(1506,'6c5f0da9155297bea1d3620183945d49','2023-01-01 21:20:14.186','2023-01-01 21:20:45.084','[]','documents.$all.requests.create','default',3,'2023-01-01 00:00:00.000','1d',0),
(1507,'cdea66388745532a30ea1513e4bd55dd','2023-01-01 21:20:14.220','2023-01-01 21:20:43.751','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-02 00:00:00.000','1d',0),
(1508,'67fbefea5d7c2da26cc3052bacfcb4a9','2023-01-01 21:20:14.222','2023-01-01 21:20:43.753','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-03 00:00:00.000','1d',0),
(1509,'ea44a06bf8f0dc195ba299a1c75d103d','2023-01-01 21:20:14.223','2023-01-01 21:20:43.755','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-04 00:00:00.000','1d',0),
(1510,'5475c1760a9a7eb68b72fd4239f55ee7','2023-01-01 21:20:14.224','2023-01-01 21:20:43.757','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-05 00:00:00.000','1d',0),
(1511,'1b9f31a839b7a88442716a47ace28ae9','2023-01-01 21:20:14.226','2023-01-01 21:20:43.759','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-06 00:00:00.000','1d',0),
(1512,'e8886eb0ba1fdbbd907905251341bb50','2023-01-01 21:20:14.227','2023-01-01 21:20:43.760','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-07 00:00:00.000','1d',0),
(1513,'d1c225badf77ae90dbdb026962b50446','2023-01-01 21:20:14.229','2023-01-01 21:20:43.762','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-08 00:00:00.000','1d',0),
(1514,'89d2bad0a0270b9e9d1121cc2292f8ba','2023-01-01 21:20:14.231','2023-01-01 21:20:43.764','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-09 00:00:00.000','1d',0),
(1515,'bcf8b78ba71acd46c42be18c94fc8af8','2023-01-01 21:20:14.232','2023-01-01 21:20:43.765','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-10 00:00:00.000','1d',0),
(1516,'a54c845081d1cc128acd2e4c06c22655','2023-01-01 21:20:14.234','2023-01-01 21:20:43.767','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-11 00:00:00.000','1d',0),
(1517,'8609bc38888a7e7917f1cb3b0b2d846b','2023-01-01 21:20:14.236','2023-01-01 21:20:43.769','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-12 00:00:00.000','1d',0),
(1518,'0a4e90c3d6510ab6f9b3fca995d0a5ed','2023-01-01 21:20:14.238','2023-01-01 21:20:43.771','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-13 00:00:00.000','1d',0),
(1519,'9c2eca16f1e1372cfa217c4e89107f0c','2023-01-01 21:20:14.239','2023-01-01 21:20:43.773','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-14 00:00:00.000','1d',0),
(1520,'31a01b748382381b3bd4b8be8004b5e9','2023-01-01 21:20:14.241','2023-01-01 21:20:43.776','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-15 00:00:00.000','1d',0),
(1521,'46d564e2da80c81ed0a088f13f3d571e','2023-01-01 21:20:14.242','2023-01-01 21:20:43.778','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-16 00:00:00.000','1d',0),
(1522,'b90b40a224c8cb3d83cb74173853969c','2023-01-01 21:20:14.243','2023-01-01 21:20:43.780','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-17 00:00:00.000','1d',0),
(1523,'32104e5471cf9d5b3678def55417e868','2023-01-01 21:20:14.245','2023-01-01 21:20:43.781','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-18 00:00:00.000','1d',0),
(1524,'16670177b3139ac6482f64efaceb94c2','2023-01-01 21:20:14.246','2023-01-01 21:20:43.783','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-19 00:00:00.000','1d',0),
(1525,'ec20aaf31af050b21b817b727cac1ce8','2023-01-01 21:20:14.248','2023-01-01 21:20:43.785','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-20 00:00:00.000','1d',0),
(1526,'7f0bc36dfa7a22d89e62c6b52c3fb570','2023-01-01 21:20:14.249','2023-01-01 21:20:43.787','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-21 00:00:00.000','1d',0),
(1527,'05f58deb0506db88b316e5b0b7906a58','2023-01-01 21:20:14.251','2023-01-01 21:20:43.789','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-22 00:00:00.000','1d',0),
(1528,'b649e9cab2952a8205066c89ecd5a093','2023-01-01 21:20:14.252','2023-01-01 21:20:43.791','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-23 00:00:00.000','1d',0),
(1529,'1e0c651eb579d7f598afcee7b9e12203','2023-01-01 21:20:14.253','2023-01-01 21:20:43.793','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-24 00:00:00.000','1d',0),
(1530,'5cb923aa3317db5aa0e708c77cb1fedd','2023-01-01 21:20:14.255','2023-01-01 21:20:43.795','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-25 00:00:00.000','1d',0),
(1531,'f3d0326a0c61d2dd95b9d6ec29041aa3','2023-01-01 21:20:14.256','2023-01-01 21:20:43.796','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-26 00:00:00.000','1d',0),
(1532,'2ea07f7481be2e125a9172d45479030b','2023-01-01 21:20:14.258','2023-01-01 21:20:43.798','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-27 00:00:00.000','1d',0),
(1533,'d6a655208b9184d8830b700ada986116','2023-01-01 21:20:14.259','2023-01-01 21:20:43.800','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-28 00:00:00.000','1d',0),
(1534,'ef3a55e01e3718a9fd2507c646433f20','2023-01-01 21:20:14.261','2023-01-01 21:20:43.801','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-29 00:00:00.000','1d',0),
(1535,'0e481e230ac92c9279dd40517c605b59','2023-01-01 21:20:14.263','2023-01-01 21:20:43.804','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-30 00:00:00.000','1d',0),
(1536,'8e217b45a91f9995d3d74d65da3566c8','2023-01-01 21:20:14.265','2023-01-01 21:20:43.806','[]','documents.63b1f73a5da8233847c0.requests.create','default',0,'2022-12-31 00:00:00.000','1d',0),
(1537,'0bb2d67724fe991420832557b023e8fc','2023-01-01 21:20:14.266','2023-01-01 21:20:45.171','[]','documents.63b1f73a5da8233847c0.requests.create','default',3,'2023-01-01 00:00:00.000','1d',0),
(1538,'35b44902d7fc7db04807c0f6cb6033f5','2023-01-01 21:20:14.278','2023-01-01 21:20:43.859','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-02 00:00:00.000','1d',0),
(1539,'54ffc2b90e733e914b5795786b2adea3','2023-01-01 21:20:14.280','2023-01-01 21:20:43.861','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-03 00:00:00.000','1d',0),
(1540,'8b16a1eabe6908dc055d6ffe3e756714','2023-01-01 21:20:14.281','2023-01-01 21:20:43.862','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-04 00:00:00.000','1d',0),
(1541,'608e0af012c10d51f9458163963953f3','2023-01-01 21:20:14.283','2023-01-01 21:20:43.864','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-05 00:00:00.000','1d',0),
(1542,'547c914438ee4f8506b332d38882ff2f','2023-01-01 21:20:14.285','2023-01-01 21:20:43.865','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-06 00:00:00.000','1d',0),
(1543,'7615c32bece849a5d48c24caed91c7ca','2023-01-01 21:20:14.286','2023-01-01 21:20:43.867','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-07 00:00:00.000','1d',0),
(1544,'48a89bfa662bfb1c51acc0f82fa104c1','2023-01-01 21:20:14.288','2023-01-01 21:20:43.869','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-08 00:00:00.000','1d',0),
(1545,'509e26b2f7051b6c8165cb25109741cc','2023-01-01 21:20:14.289','2023-01-01 21:20:43.871','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-09 00:00:00.000','1d',0),
(1546,'4ec358c80a1b07ecc21a75f3b399db7e','2023-01-01 21:20:14.291','2023-01-01 21:20:43.872','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-10 00:00:00.000','1d',0),
(1547,'6afb023258fbc4622672b3d15456e5e5','2023-01-01 21:20:14.292','2023-01-01 21:20:43.874','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-11 00:00:00.000','1d',0),
(1548,'d31e5cfcfe113eb7c9ac38989c4e0857','2023-01-01 21:20:14.294','2023-01-01 21:20:43.875','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-12 00:00:00.000','1d',0),
(1549,'9c0068fd2bccbe67f828e00763a2cd66','2023-01-01 21:20:14.295','2023-01-01 21:20:43.877','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-13 00:00:00.000','1d',0),
(1550,'b836a7e057ff532911897f99fb647d19','2023-01-01 21:20:14.297','2023-01-01 21:20:43.878','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-14 00:00:00.000','1d',0),
(1551,'967c35a8e7e6f96d2edfa572dae7ea27','2023-01-01 21:20:14.299','2023-01-01 21:20:43.880','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-15 00:00:00.000','1d',0),
(1552,'ad4eb7bfda0587c565ceb5335964e0e1','2023-01-01 21:20:14.301','2023-01-01 21:20:43.882','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-16 00:00:00.000','1d',0),
(1553,'536451689b1ac0cad328b34e3adbedf2','2023-01-01 21:20:14.303','2023-01-01 21:20:43.883','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-17 00:00:00.000','1d',0),
(1554,'7a067d7517ddcd57149e780ad4c65ea3','2023-01-01 21:20:14.304','2023-01-01 21:20:43.885','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-18 00:00:00.000','1d',0),
(1555,'09aac932b68ce623214cce8a77f86294','2023-01-01 21:20:14.306','2023-01-01 21:20:43.887','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-19 00:00:00.000','1d',0),
(1556,'91d9dd11508c5bfc032ed61bfd6c3cf9','2023-01-01 21:20:14.308','2023-01-01 21:20:43.888','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-20 00:00:00.000','1d',0),
(1557,'4ced1184ed078f17616a51e47dd95ba8','2023-01-01 21:20:14.310','2023-01-01 21:20:43.890','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-21 00:00:00.000','1d',0),
(1558,'e022776bbbc8b1ea1b6c470700f4a915','2023-01-01 21:20:14.312','2023-01-01 21:20:43.891','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-22 00:00:00.000','1d',0),
(1559,'53983cd947370b44d31fbd77ca3cbd9e','2023-01-01 21:20:14.313','2023-01-01 21:20:43.893','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-23 00:00:00.000','1d',0),
(1560,'0a1f3c3dc3fbd001245402a1406035f5','2023-01-01 21:20:14.315','2023-01-01 21:20:43.895','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-24 00:00:00.000','1d',0),
(1561,'71a814e31c38c17821764d7e7ebc35f9','2023-01-01 21:20:14.316','2023-01-01 21:20:43.897','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-25 00:00:00.000','1d',0),
(1562,'4d90c517e5e134e140b253d95ccac44c','2023-01-01 21:20:14.317','2023-01-01 21:20:43.899','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-26 00:00:00.000','1d',0),
(1563,'13ea5668f4de81e326d02e2bb7d6cc8f','2023-01-01 21:20:14.319','2023-01-01 21:20:43.900','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-27 00:00:00.000','1d',0),
(1564,'bb151c75c45ab6c9fd1424246d620152','2023-01-01 21:20:14.321','2023-01-01 21:20:43.902','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-28 00:00:00.000','1d',0),
(1565,'0ec8fb5c9950448a4b04b245c8feafdd','2023-01-01 21:20:14.322','2023-01-01 21:20:43.903','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-29 00:00:00.000','1d',0),
(1566,'cd9d04c1d5454f4e8846977c9d4c235e','2023-01-01 21:20:14.324','2023-01-01 21:20:43.905','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-30 00:00:00.000','1d',0),
(1567,'8a427ff365d93c21c31e6b99be9b1031','2023-01-01 21:20:14.325','2023-01-01 21:20:43.907','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',0,'2022-12-31 00:00:00.000','1d',0),
(1568,'3beff10718d1d70a828e78612c24dedd','2023-01-01 21:20:14.327','2023-01-01 21:20:45.241','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.create','default',3,'2023-01-01 00:00:00.000','1d',0),
(1569,'febc80b7d5b1e56d13c8bcf963a34f15','2023-01-01 21:20:42.992','2023-01-01 21:20:44.735','[]','documents.$all.requests.update','default',0,'2022-12-31 21:00:00.000','1h',0),
(1570,'9ace5346b95225171fc49702980e5b98','2023-01-01 21:20:42.994','2023-01-01 21:20:44.738','[]','documents.$all.requests.update','default',0,'2022-12-31 22:00:00.000','1h',0),
(1571,'8ecb09e7b63f01814df5db93ac6321c2','2023-01-01 21:20:42.995','2023-01-01 21:20:44.740','[]','documents.$all.requests.update','default',0,'2022-12-31 23:00:00.000','1h',0),
(1572,'6aa1cd67eac20f28c2fb723445fbdb18','2023-01-01 21:20:42.997','2023-01-01 21:20:44.742','[]','documents.$all.requests.update','default',0,'2023-01-01 00:00:00.000','1h',0),
(1573,'21f4f52b78c30fd52fce2903841b7784','2023-01-01 21:20:42.998','2023-01-01 21:20:44.744','[]','documents.$all.requests.update','default',0,'2023-01-01 01:00:00.000','1h',0),
(1574,'88e79cca0e08f9e163ac7f90419f4897','2023-01-01 21:20:42.999','2023-01-01 21:20:44.746','[]','documents.$all.requests.update','default',0,'2023-01-01 02:00:00.000','1h',0),
(1575,'8222ef3d60dba5cdc4b8a20ef1ba276e','2023-01-01 21:20:43.001','2023-01-01 21:20:44.748','[]','documents.$all.requests.update','default',0,'2023-01-01 03:00:00.000','1h',0),
(1576,'29c77ce3337a258c6915c18cbd795232','2023-01-01 21:20:43.002','2023-01-01 21:20:44.750','[]','documents.$all.requests.update','default',0,'2023-01-01 04:00:00.000','1h',0),
(1577,'d49d6a6357aedf5ccd0de2a00089c112','2023-01-01 21:20:43.004','2023-01-01 21:20:44.752','[]','documents.$all.requests.update','default',0,'2023-01-01 05:00:00.000','1h',0),
(1578,'b3d5e10ae05370b640adbb62e17062fd','2023-01-01 21:20:43.006','2023-01-01 21:20:44.754','[]','documents.$all.requests.update','default',0,'2023-01-01 06:00:00.000','1h',0),
(1579,'23f46800079d661eeb86ab1081477b05','2023-01-01 21:20:43.007','2023-01-01 21:20:44.756','[]','documents.$all.requests.update','default',0,'2023-01-01 07:00:00.000','1h',0),
(1580,'3a588848296c8937c09b01dd418fc78d','2023-01-01 21:20:43.009','2023-01-01 21:20:44.758','[]','documents.$all.requests.update','default',0,'2023-01-01 08:00:00.000','1h',0),
(1581,'d808a8d7cfebc13323980115264becf5','2023-01-01 21:20:43.010','2023-01-01 21:20:44.760','[]','documents.$all.requests.update','default',0,'2023-01-01 09:00:00.000','1h',0),
(1582,'118deb4442f0ee96b771618a91651183','2023-01-01 21:20:43.012','2023-01-01 21:20:44.762','[]','documents.$all.requests.update','default',0,'2023-01-01 10:00:00.000','1h',0),
(1583,'117f2c226bb29543cc1a5d4eee406608','2023-01-01 21:20:43.013','2023-01-01 21:20:44.764','[]','documents.$all.requests.update','default',0,'2023-01-01 11:00:00.000','1h',0),
(1584,'bca9c8549ac6c06dd29e0d098f3a40a4','2023-01-01 21:20:43.014','2023-01-01 21:20:44.766','[]','documents.$all.requests.update','default',0,'2023-01-01 12:00:00.000','1h',0),
(1585,'452d364f79b4317057de40415e6252ee','2023-01-01 21:20:43.016','2023-01-01 21:20:44.768','[]','documents.$all.requests.update','default',0,'2023-01-01 13:00:00.000','1h',0),
(1586,'040b344d162045ffa6887a4bb0a0f639','2023-01-01 21:20:43.018','2023-01-01 21:20:44.770','[]','documents.$all.requests.update','default',0,'2023-01-01 14:00:00.000','1h',0),
(1587,'3d84ba4e78881b795d888fa38be25b3a','2023-01-01 21:20:43.019','2023-01-01 21:20:44.772','[]','documents.$all.requests.update','default',0,'2023-01-01 15:00:00.000','1h',0),
(1588,'03e4d0a67b167478daeff150e2556b8b','2023-01-01 21:20:43.021','2023-01-01 21:20:44.774','[]','documents.$all.requests.update','default',0,'2023-01-01 16:00:00.000','1h',0),
(1589,'15926ea7ad64b5fc6cc1c5a49addadfa','2023-01-01 21:20:43.022','2023-01-01 21:20:44.775','[]','documents.$all.requests.update','default',0,'2023-01-01 17:00:00.000','1h',0),
(1590,'40377fa92c8d96b8857045192d388368','2023-01-01 21:20:43.024','2023-01-01 21:20:44.777','[]','documents.$all.requests.update','default',0,'2023-01-01 18:00:00.000','1h',0),
(1591,'6198edc0dfb0b4481f4369d7c56f4156','2023-01-01 21:20:43.025','2023-01-01 21:20:44.779','[]','documents.$all.requests.update','default',0,'2023-01-01 19:00:00.000','1h',0),
(1592,'57f934a39fb10ff4c54fd2892c030d14','2023-01-01 21:20:43.026','2023-01-01 21:20:44.781','[]','documents.$all.requests.update','default',0,'2023-01-01 20:00:00.000','1h',0),
(1593,'418b270fc086abedda33891024a282a6','2023-01-01 21:20:43.028','2023-01-01 21:20:44.783','[]','documents.$all.requests.update','default',1,'2023-01-01 21:00:00.000','1h',0),
(1594,'08377fd168be4c51f479cd8568c11aaf','2023-01-01 21:20:43.113','2023-01-01 21:20:44.811','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-31 21:00:00.000','1h',0),
(1595,'4d8bf01d40eff2fa2bae0f3bd8db9426','2023-01-01 21:20:43.115','2023-01-01 21:20:44.814','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-31 22:00:00.000','1h',0),
(1596,'0222d3c15706d2b12457f96a08cd0d7d','2023-01-01 21:20:43.116','2023-01-01 21:20:44.816','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-31 23:00:00.000','1h',0),
(1597,'c4be7541a16788273c3da96446971389','2023-01-01 21:20:43.118','2023-01-01 21:20:44.817','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 00:00:00.000','1h',0),
(1598,'70793c50d27370dd819946dacc8ba858','2023-01-01 21:20:43.120','2023-01-01 21:20:44.819','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 01:00:00.000','1h',0),
(1599,'ebd0968bbd8573c338d58cacddde59fe','2023-01-01 21:20:43.121','2023-01-01 21:20:44.821','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 02:00:00.000','1h',0),
(1600,'fb44b9cbfb20022884222782f674a09e','2023-01-01 21:20:43.123','2023-01-01 21:20:44.823','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 03:00:00.000','1h',0),
(1601,'547bf05f17a285c54cfdd7add7b5010d','2023-01-01 21:20:43.124','2023-01-01 21:20:44.825','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 04:00:00.000','1h',0),
(1602,'d46dec602090e3891cf9286bec9620bf','2023-01-01 21:20:43.126','2023-01-01 21:20:44.827','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 05:00:00.000','1h',0),
(1603,'7fece1b7ea4436b7f6aa99880514e299','2023-01-01 21:20:43.127','2023-01-01 21:20:44.830','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 06:00:00.000','1h',0),
(1604,'192e713a056f63cfa773ae36221d056c','2023-01-01 21:20:43.128','2023-01-01 21:20:44.832','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 07:00:00.000','1h',0),
(1605,'0768fb4568ddabd0caa1c58bcf3a6aba','2023-01-01 21:20:43.130','2023-01-01 21:20:44.835','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 08:00:00.000','1h',0),
(1606,'b54e9db70cad889b27af79e9b2643675','2023-01-01 21:20:43.132','2023-01-01 21:20:44.837','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 09:00:00.000','1h',0),
(1607,'01d1c9fb4253e5dd804f804f4da02846','2023-01-01 21:20:43.133','2023-01-01 21:20:44.838','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 10:00:00.000','1h',0),
(1608,'d589e7254a1aa80e254423d4d98bbbec','2023-01-01 21:20:43.134','2023-01-01 21:20:44.840','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 11:00:00.000','1h',0),
(1609,'34d1a4c84a1dea0923bafe40b00c3f99','2023-01-01 21:20:43.136','2023-01-01 21:20:44.842','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 12:00:00.000','1h',0),
(1610,'e7ecf710f6fe78a7c2525b11e194e5aa','2023-01-01 21:20:43.137','2023-01-01 21:20:44.844','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 13:00:00.000','1h',0),
(1611,'e00f5edda440ec8932bf6d61a8f51323','2023-01-01 21:20:43.139','2023-01-01 21:20:44.846','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 14:00:00.000','1h',0),
(1612,'e34235edd7e8aea2d91f10eb2fe73bb7','2023-01-01 21:20:43.140','2023-01-01 21:20:44.848','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 15:00:00.000','1h',0),
(1613,'01b8af6ef6e4b4830819af69d70864be','2023-01-01 21:20:43.142','2023-01-01 21:20:44.850','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 16:00:00.000','1h',0),
(1614,'9bcb17d2323c94b0459e6569cbf859fd','2023-01-01 21:20:43.143','2023-01-01 21:20:44.852','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 17:00:00.000','1h',0),
(1615,'8c2480ec6ccd0575adadee611518d0dc','2023-01-01 21:20:43.144','2023-01-01 21:20:44.854','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 18:00:00.000','1h',0),
(1616,'db2a50ac77030bb5e6aa5cac2583477e','2023-01-01 21:20:43.146','2023-01-01 21:20:44.856','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 19:00:00.000','1h',0),
(1617,'99a7a68ce37e36c24f4631ab3d72ac20','2023-01-01 21:20:43.147','2023-01-01 21:20:44.858','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2023-01-01 20:00:00.000','1h',0),
(1618,'f4b6001af7414451f8f6863c30491f59','2023-01-01 21:20:43.149','2023-01-01 21:20:44.860','[]','documents.63b1f73a5da8233847c0.requests.update','default',1,'2023-01-01 21:00:00.000','1h',0),
(1619,'8b513a75e574dafaa612d41e23a2e2a2','2023-01-01 21:20:43.206','2023-01-01 21:20:44.873','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-31 21:00:00.000','1h',0),
(1620,'b7c39b91d82f972dc8a58726ee811d31','2023-01-01 21:20:43.208','2023-01-01 21:20:44.875','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-31 22:00:00.000','1h',0),
(1621,'52fe8aa9116c8908156bc0fe8cb5d62f','2023-01-01 21:20:43.209','2023-01-01 21:20:44.877','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-31 23:00:00.000','1h',0),
(1622,'0959a3a05ce736278605467384a97f2f','2023-01-01 21:20:43.210','2023-01-01 21:20:44.880','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 00:00:00.000','1h',0),
(1623,'2bf0f5527772701213817cc7103519e5','2023-01-01 21:20:43.212','2023-01-01 21:20:44.882','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 01:00:00.000','1h',0),
(1624,'121409b1b8e83db33a5f9f9f46c51872','2023-01-01 21:20:43.213','2023-01-01 21:20:44.884','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 02:00:00.000','1h',0),
(1625,'6b1308285f99a667737aeb8a8222713e','2023-01-01 21:20:43.214','2023-01-01 21:20:44.886','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 03:00:00.000','1h',0),
(1626,'09f66bdc899bb2fce1e7297196411df8','2023-01-01 21:20:43.216','2023-01-01 21:20:44.888','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 04:00:00.000','1h',0),
(1627,'5ebb4a8b04f9f47cb3a4a1263df43f6d','2023-01-01 21:20:43.217','2023-01-01 21:20:44.890','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 05:00:00.000','1h',0),
(1628,'d975384246b96a9585449369141e9e2f','2023-01-01 21:20:43.218','2023-01-01 21:20:44.892','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 06:00:00.000','1h',0),
(1629,'b3749d595fef8025ff9b79251a7b95f5','2023-01-01 21:20:43.220','2023-01-01 21:20:44.894','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 07:00:00.000','1h',0),
(1630,'463b2c4e4738eb83e39591a6130328a6','2023-01-01 21:20:43.221','2023-01-01 21:20:44.896','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 08:00:00.000','1h',0),
(1631,'e5a8669a19e620a32e73b7cac97f7b68','2023-01-01 21:20:43.222','2023-01-01 21:20:44.898','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 09:00:00.000','1h',0),
(1632,'21f5ea1bc0c2137bdee4192fbd1cb959','2023-01-01 21:20:43.223','2023-01-01 21:20:44.900','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 10:00:00.000','1h',0),
(1633,'9f447eb3c51c688eddc0d1ddb506d770','2023-01-01 21:20:43.225','2023-01-01 21:20:44.901','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 11:00:00.000','1h',0),
(1634,'9d33951c7654e2abc15a55478c02772e','2023-01-01 21:20:43.226','2023-01-01 21:20:44.903','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 12:00:00.000','1h',0),
(1635,'59bd688105b463abc826c0abe7581a2b','2023-01-01 21:20:43.227','2023-01-01 21:20:44.905','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 13:00:00.000','1h',0),
(1636,'8c99a98ad213f7405eeba2e549115507','2023-01-01 21:20:43.229','2023-01-01 21:20:44.907','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 14:00:00.000','1h',0),
(1637,'81cc79264b7fac173020a3cc53d39659','2023-01-01 21:20:43.230','2023-01-01 21:20:44.909','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 15:00:00.000','1h',0),
(1638,'8ccce88ba14289486b5ef30c93be2917','2023-01-01 21:20:43.231','2023-01-01 21:20:44.910','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 16:00:00.000','1h',0),
(1639,'91d1c47366bb98b94c7ab1ef950671fd','2023-01-01 21:20:43.233','2023-01-01 21:20:44.912','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 17:00:00.000','1h',0),
(1640,'9f8e58e0446db6391a20a5b981d50418','2023-01-01 21:20:43.235','2023-01-01 21:20:44.914','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 18:00:00.000','1h',0),
(1641,'f28c032a2084333e62635bb0318fc6d0','2023-01-01 21:20:43.236','2023-01-01 21:20:44.917','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 19:00:00.000','1h',0),
(1642,'18c9f0555be875cc7e25eb4d64890a22','2023-01-01 21:20:43.237','2023-01-01 21:20:44.919','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2023-01-01 20:00:00.000','1h',0),
(1643,'8220de014998638d406fd1c15753d5c4','2023-01-01 21:20:43.239','2023-01-01 21:20:44.920','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',1,'2023-01-01 21:00:00.000','1h',0),
(1644,'e3428ae9ab34bc0ad3f80739f85d78a8','2023-01-01 21:20:43.687','2023-01-01 21:20:45.092','[]','documents.$all.requests.update','default',0,'2022-12-02 00:00:00.000','1d',0),
(1645,'7148f508fdd807b041f97611a04d8abf','2023-01-01 21:20:43.689','2023-01-01 21:20:45.094','[]','documents.$all.requests.update','default',0,'2022-12-03 00:00:00.000','1d',0),
(1646,'3d06a60812aef34f961ac06700102477','2023-01-01 21:20:43.690','2023-01-01 21:20:45.096','[]','documents.$all.requests.update','default',0,'2022-12-04 00:00:00.000','1d',0),
(1647,'1eecdc3220530e424721b7d52d55b219','2023-01-01 21:20:43.692','2023-01-01 21:20:45.098','[]','documents.$all.requests.update','default',0,'2022-12-05 00:00:00.000','1d',0),
(1648,'d0d4f12c0bdb2d189c5e8ae6438c0cc1','2023-01-01 21:20:43.693','2023-01-01 21:20:45.100','[]','documents.$all.requests.update','default',0,'2022-12-06 00:00:00.000','1d',0),
(1649,'b1bbc7de0e5676a64d3cf46b0632106a','2023-01-01 21:20:43.695','2023-01-01 21:20:45.102','[]','documents.$all.requests.update','default',0,'2022-12-07 00:00:00.000','1d',0),
(1650,'53db45d1e433852d068798c403495375','2023-01-01 21:20:43.696','2023-01-01 21:20:45.104','[]','documents.$all.requests.update','default',0,'2022-12-08 00:00:00.000','1d',0),
(1651,'0197ac46d838e7a0bed3586a3533762c','2023-01-01 21:20:43.697','2023-01-01 21:20:45.105','[]','documents.$all.requests.update','default',0,'2022-12-09 00:00:00.000','1d',0),
(1652,'c1b18bf8c78841207e037b411dce4e12','2023-01-01 21:20:43.698','2023-01-01 21:20:45.107','[]','documents.$all.requests.update','default',0,'2022-12-10 00:00:00.000','1d',0),
(1653,'3f38f7fd76b51831311b0b3b22195858','2023-01-01 21:20:43.700','2023-01-01 21:20:45.109','[]','documents.$all.requests.update','default',0,'2022-12-11 00:00:00.000','1d',0),
(1654,'9e5b145a112737530dd06cb86326d70a','2023-01-01 21:20:43.701','2023-01-01 21:20:45.111','[]','documents.$all.requests.update','default',0,'2022-12-12 00:00:00.000','1d',0),
(1655,'d6144d8f9b2d988bcde1c41f2a96ecfd','2023-01-01 21:20:43.702','2023-01-01 21:20:45.113','[]','documents.$all.requests.update','default',0,'2022-12-13 00:00:00.000','1d',0),
(1656,'6bdfabe59b1ce2046a2fefe5edfd075f','2023-01-01 21:20:43.703','2023-01-01 21:20:45.115','[]','documents.$all.requests.update','default',0,'2022-12-14 00:00:00.000','1d',0),
(1657,'18bcc97ac3d58e314b108d68758ca996','2023-01-01 21:20:43.705','2023-01-01 21:20:45.117','[]','documents.$all.requests.update','default',0,'2022-12-15 00:00:00.000','1d',0),
(1658,'75a9338e6840b8992980d2fdc2be6c9a','2023-01-01 21:20:43.706','2023-01-01 21:20:45.120','[]','documents.$all.requests.update','default',0,'2022-12-16 00:00:00.000','1d',0),
(1659,'f113050026beb4b4b6d7e4a58c75ca4a','2023-01-01 21:20:43.707','2023-01-01 21:20:45.122','[]','documents.$all.requests.update','default',0,'2022-12-17 00:00:00.000','1d',0),
(1660,'cbf9e13392baf9168434a02b241abe31','2023-01-01 21:20:43.708','2023-01-01 21:20:45.124','[]','documents.$all.requests.update','default',0,'2022-12-18 00:00:00.000','1d',0),
(1661,'69393f71842bc5cd310cbcb2873db70e','2023-01-01 21:20:43.710','2023-01-01 21:20:45.126','[]','documents.$all.requests.update','default',0,'2022-12-19 00:00:00.000','1d',0),
(1662,'71469b4331d773428a45b8aa4e6670d4','2023-01-01 21:20:43.712','2023-01-01 21:20:45.128','[]','documents.$all.requests.update','default',0,'2022-12-20 00:00:00.000','1d',0),
(1663,'87134046ec248b87663416c310c18cca','2023-01-01 21:20:43.714','2023-01-01 21:20:45.130','[]','documents.$all.requests.update','default',0,'2022-12-21 00:00:00.000','1d',0),
(1664,'3230d580e9e9f0ee4cb08574d73031d1','2023-01-01 21:20:43.715','2023-01-01 21:20:45.131','[]','documents.$all.requests.update','default',0,'2022-12-22 00:00:00.000','1d',0),
(1665,'1167525d5b842328599e21ac060b8758','2023-01-01 21:20:43.717','2023-01-01 21:20:45.133','[]','documents.$all.requests.update','default',0,'2022-12-23 00:00:00.000','1d',0),
(1666,'fe29f98059f8ad4e6b50169cd2099426','2023-01-01 21:20:43.718','2023-01-01 21:20:45.135','[]','documents.$all.requests.update','default',0,'2022-12-24 00:00:00.000','1d',0),
(1667,'2f402d0cbc2281a37436e33870be29aa','2023-01-01 21:20:43.720','2023-01-01 21:20:45.137','[]','documents.$all.requests.update','default',0,'2022-12-25 00:00:00.000','1d',0),
(1668,'a283c1c2ded3214308433435e69dcedc','2023-01-01 21:20:43.722','2023-01-01 21:20:45.139','[]','documents.$all.requests.update','default',0,'2022-12-26 00:00:00.000','1d',0),
(1669,'3818f0e081997a959fc8642d3140ee66','2023-01-01 21:20:43.723','2023-01-01 21:20:45.141','[]','documents.$all.requests.update','default',0,'2022-12-27 00:00:00.000','1d',0),
(1670,'09bd291415a5ea4879440e3483c0b3a3','2023-01-01 21:20:43.725','2023-01-01 21:20:45.143','[]','documents.$all.requests.update','default',0,'2022-12-28 00:00:00.000','1d',0),
(1671,'8042a8f0a3a11265e70791c4f6098185','2023-01-01 21:20:43.726','2023-01-01 21:20:45.145','[]','documents.$all.requests.update','default',0,'2022-12-29 00:00:00.000','1d',0),
(1672,'b77936576276e7091ee6491935aa1471','2023-01-01 21:20:43.728','2023-01-01 21:20:45.147','[]','documents.$all.requests.update','default',0,'2022-12-30 00:00:00.000','1d',0),
(1673,'b3e7ef16557f6936e8dce6744eb2847b','2023-01-01 21:20:43.729','2023-01-01 21:20:45.150','[]','documents.$all.requests.update','default',0,'2022-12-31 00:00:00.000','1d',0),
(1674,'6d279131b7c0fb9262cd81444ff80a6c','2023-01-01 21:20:43.731','2023-01-01 21:20:45.152','[]','documents.$all.requests.update','default',1,'2023-01-01 00:00:00.000','1d',0),
(1675,'5a67e8cf70eee704e74635cb9518f256','2023-01-01 21:20:43.816','2023-01-01 21:20:45.179','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-02 00:00:00.000','1d',0),
(1676,'80031aa1512602064b8407e16b20a909','2023-01-01 21:20:43.817','2023-01-01 21:20:45.181','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-03 00:00:00.000','1d',0),
(1677,'a46942bc6b54263454c8dc2fffc950cb','2023-01-01 21:20:43.819','2023-01-01 21:20:45.183','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-04 00:00:00.000','1d',0),
(1678,'19ed636fc8cb1a3acdb52720969f4a9f','2023-01-01 21:20:43.820','2023-01-01 21:20:45.185','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-05 00:00:00.000','1d',0),
(1679,'1724452b891724b2dcbeef6282fcd809','2023-01-01 21:20:43.821','2023-01-01 21:20:45.187','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-06 00:00:00.000','1d',0),
(1680,'73f98e76697af21551defdfc9b199a03','2023-01-01 21:20:43.822','2023-01-01 21:20:45.189','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-07 00:00:00.000','1d',0),
(1681,'1ce77693609ed497e1c5e594c2daf79b','2023-01-01 21:20:43.824','2023-01-01 21:20:45.190','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-08 00:00:00.000','1d',0),
(1682,'b19552f12dc60366778cf31fe753ff9e','2023-01-01 21:20:43.825','2023-01-01 21:20:45.192','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-09 00:00:00.000','1d',0),
(1683,'d3d300efc5b8ee879eef95e512951916','2023-01-01 21:20:43.826','2023-01-01 21:20:45.194','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-10 00:00:00.000','1d',0),
(1684,'df0b3fe69e4ad8993d440de5ae51c840','2023-01-01 21:20:43.828','2023-01-01 21:20:45.196','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-11 00:00:00.000','1d',0),
(1685,'2b58d94433ee4cdb29782ebc48a2e62e','2023-01-01 21:20:43.829','2023-01-01 21:20:45.198','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-12 00:00:00.000','1d',0),
(1686,'39ab1a7ac975956bbf244d3c0a52bece','2023-01-01 21:20:43.830','2023-01-01 21:20:45.199','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-13 00:00:00.000','1d',0),
(1687,'9f2b1e57f487c004e989156fb9ab22a8','2023-01-01 21:20:43.832','2023-01-01 21:20:45.201','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-14 00:00:00.000','1d',0),
(1688,'0349a49df1286d446ca99dd2ccd12e54','2023-01-01 21:20:43.833','2023-01-01 21:20:45.203','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-15 00:00:00.000','1d',0),
(1689,'294cd53d51261ae0a61d8d35e715e743','2023-01-01 21:20:43.834','2023-01-01 21:20:45.205','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-16 00:00:00.000','1d',0),
(1690,'b6c55c3b13dfa70c14bee001d7e45483','2023-01-01 21:20:43.835','2023-01-01 21:20:45.207','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-17 00:00:00.000','1d',0),
(1691,'9d5bb65a0c4930a133d5ff00929fb089','2023-01-01 21:20:43.837','2023-01-01 21:20:45.209','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-18 00:00:00.000','1d',0),
(1692,'ae639e9cb4da044f2d68adc5d10eaa4b','2023-01-01 21:20:43.838','2023-01-01 21:20:45.211','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-19 00:00:00.000','1d',0),
(1693,'20a4e0d3e9dd4baebe19149da6672550','2023-01-01 21:20:43.839','2023-01-01 21:20:45.213','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-20 00:00:00.000','1d',0),
(1694,'37be0962137d8c4fb0e4d9890e229ac6','2023-01-01 21:20:43.841','2023-01-01 21:20:45.214','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-21 00:00:00.000','1d',0),
(1695,'7a5556aa5677d158e74b2c51cd633e15','2023-01-01 21:20:43.842','2023-01-01 21:20:45.216','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-22 00:00:00.000','1d',0),
(1696,'c57082918ea70e6868fa0d5209cdeba4','2023-01-01 21:20:43.843','2023-01-01 21:20:45.218','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-23 00:00:00.000','1d',0),
(1697,'1c928b3b674cd44302aa1a71edde0d66','2023-01-01 21:20:43.844','2023-01-01 21:20:45.220','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-24 00:00:00.000','1d',0),
(1698,'31f74a1f32c10b989ac4024e6e10ec43','2023-01-01 21:20:43.845','2023-01-01 21:20:45.222','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-25 00:00:00.000','1d',0),
(1699,'b9ad7986d53773b64c7081676109a8bb','2023-01-01 21:20:43.846','2023-01-01 21:20:45.224','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-26 00:00:00.000','1d',0),
(1700,'43a4aa280e25972314ee720a5d97cd04','2023-01-01 21:20:43.848','2023-01-01 21:20:45.226','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-27 00:00:00.000','1d',0),
(1701,'528cda8e8f4aa9eb5c60a7d07f88dcbc','2023-01-01 21:20:43.849','2023-01-01 21:20:45.227','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-28 00:00:00.000','1d',0),
(1702,'d8b44b2e63c66e589a5e59c4211c9b8d','2023-01-01 21:20:43.851','2023-01-01 21:20:45.230','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-29 00:00:00.000','1d',0),
(1703,'e4e11b66f6c66e8edd0dd91ecf123e7d','2023-01-01 21:20:43.852','2023-01-01 21:20:45.232','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-30 00:00:00.000','1d',0),
(1704,'0eceb686c220c24dd09715437843cdbe','2023-01-01 21:20:43.853','2023-01-01 21:20:45.234','[]','documents.63b1f73a5da8233847c0.requests.update','default',0,'2022-12-31 00:00:00.000','1d',0),
(1705,'49f313725246b2b8e6bde77322bef150','2023-01-01 21:20:43.854','2023-01-01 21:20:45.236','[]','documents.63b1f73a5da8233847c0.requests.update','default',1,'2023-01-01 00:00:00.000','1d',0),
(1706,'89583a5b4af716436158f2e7833c25c8','2023-01-01 21:20:43.916','2023-01-01 21:20:45.249','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-02 00:00:00.000','1d',0),
(1707,'f565824ee30c52e21d7ab6022d92b6d5','2023-01-01 21:20:43.917','2023-01-01 21:20:45.250','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-03 00:00:00.000','1d',0),
(1708,'5e5843bd339c2b0144a5b802e2398a0e','2023-01-01 21:20:43.919','2023-01-01 21:20:45.252','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-04 00:00:00.000','1d',0),
(1709,'66b7f1c57d51c7daa8fee8579855e4f9','2023-01-01 21:20:43.920','2023-01-01 21:20:45.254','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-05 00:00:00.000','1d',0),
(1710,'cd8f3474922bdb6028d705752c3a0ed9','2023-01-01 21:20:43.921','2023-01-01 21:20:45.256','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-06 00:00:00.000','1d',0),
(1711,'800636ee13844711f9538235ac2ac2eb','2023-01-01 21:20:43.922','2023-01-01 21:20:45.258','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-07 00:00:00.000','1d',0),
(1712,'30ee9c1a53a8898844b388e5853c195d','2023-01-01 21:20:43.923','2023-01-01 21:20:45.260','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-08 00:00:00.000','1d',0),
(1713,'fa44dd8085619dc356b5f6bc2ddeab0a','2023-01-01 21:20:43.924','2023-01-01 21:20:45.261','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-09 00:00:00.000','1d',0),
(1714,'0f801903b693dca1a3a4e02047356951','2023-01-01 21:20:43.926','2023-01-01 21:20:45.263','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-10 00:00:00.000','1d',0),
(1715,'5892ecb7607e2afb6dcb520e33b264c5','2023-01-01 21:20:43.927','2023-01-01 21:20:45.265','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-11 00:00:00.000','1d',0),
(1716,'58051ffc7e02414b60fb54bc6699d1ef','2023-01-01 21:20:43.928','2023-01-01 21:20:45.266','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-12 00:00:00.000','1d',0),
(1717,'97b1d85a629c7600b1d5252a8f123654','2023-01-01 21:20:43.930','2023-01-01 21:20:45.268','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-13 00:00:00.000','1d',0),
(1718,'1a74a839f69f4a4e2e69bd09e97dcaa4','2023-01-01 21:20:43.931','2023-01-01 21:20:45.270','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-14 00:00:00.000','1d',0),
(1719,'8adfa42902fc4ed841e9bb9a7c90b097','2023-01-01 21:20:43.932','2023-01-01 21:20:45.272','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-15 00:00:00.000','1d',0),
(1720,'9ec520f4415214d7bc09ccb56e29291b','2023-01-01 21:20:43.933','2023-01-01 21:20:45.273','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-16 00:00:00.000','1d',0),
(1721,'321e699fc19df291b3627ca744710b12','2023-01-01 21:20:43.934','2023-01-01 21:20:45.276','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-17 00:00:00.000','1d',0),
(1722,'623168516eb3b54882a3ece44410a27b','2023-01-01 21:20:43.936','2023-01-01 21:20:45.277','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-18 00:00:00.000','1d',0),
(1723,'7856a51a1467511e14be74d2fc20b3f8','2023-01-01 21:20:43.937','2023-01-01 21:20:45.279','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-19 00:00:00.000','1d',0),
(1724,'e9e2f815bb8626d6e5bc2259dcd1bef1','2023-01-01 21:20:43.938','2023-01-01 21:20:45.281','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-20 00:00:00.000','1d',0),
(1725,'ef4f53a2f65a839551dfc7331f3e7568','2023-01-01 21:20:43.939','2023-01-01 21:20:45.283','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-21 00:00:00.000','1d',0),
(1726,'247b91b346560d326b5bbe9f983956ef','2023-01-01 21:20:43.941','2023-01-01 21:20:45.285','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-22 00:00:00.000','1d',0),
(1727,'b05579e351d97a0c1dd2d70a331540d2','2023-01-01 21:20:43.942','2023-01-01 21:20:45.287','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-23 00:00:00.000','1d',0),
(1728,'d5f262317b6b7797845c0d4ef658a060','2023-01-01 21:20:43.943','2023-01-01 21:20:45.288','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-24 00:00:00.000','1d',0),
(1729,'5c49744f53f97f38b28cf5c6495d2a57','2023-01-01 21:20:43.944','2023-01-01 21:20:45.290','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-25 00:00:00.000','1d',0),
(1730,'2c224fa8fde718b21f7fb0b4fe5e6d98','2023-01-01 21:20:43.945','2023-01-01 21:20:45.292','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-26 00:00:00.000','1d',0),
(1731,'a1585c894544733cb40f2a476e024f74','2023-01-01 21:20:43.947','2023-01-01 21:20:45.294','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-27 00:00:00.000','1d',0),
(1732,'c7163b213e6a050aa37aeafcbf27b54a','2023-01-01 21:20:43.948','2023-01-01 21:20:45.295','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-28 00:00:00.000','1d',0),
(1733,'175b894d42e26cedc187e2ab068d3fb7','2023-01-01 21:20:43.949','2023-01-01 21:20:45.297','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-29 00:00:00.000','1d',0),
(1734,'8e60330edec8b7f53343b0b6fabbc224','2023-01-01 21:20:43.951','2023-01-01 21:20:45.299','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-30 00:00:00.000','1d',0),
(1735,'2e9252499c7cec43b9a3d6dcd12aa525','2023-01-01 21:20:43.952','2023-01-01 21:20:45.301','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',0,'2022-12-31 00:00:00.000','1d',0),
(1736,'d8ca3f74f2f78748a2d13a3456b4fbb8','2023-01-01 21:20:43.954','2023-01-01 21:20:45.303','[]','documents.63b1f73a5da8233847c0/63b1f7419bd5a1eae520.requests.update','default',1,'2023-01-01 00:00:00.000','1d',0);
/*!40000 ALTER TABLE `_1_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_stats_perms`
--

DROP TABLE IF EXISTS `_1_stats_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_stats_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_stats_perms`
--

LOCK TABLES `_1_stats_perms` WRITE;
/*!40000 ALTER TABLE `_1_stats_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_stats_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_teams`
--

DROP TABLE IF EXISTS `_1_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_teams` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_key_total` (`total`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_teams`
--

LOCK TABLES `_1_teams` WRITE;
/*!40000 ALTER TABLE `_1_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_teams_perms`
--

DROP TABLE IF EXISTS `_1_teams_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_teams_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_teams_perms`
--

LOCK TABLES `_1_teams_perms` WRITE;
/*!40000 ALTER TABLE `_1_teams_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_teams_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_tokens`
--

DROP TABLE IF EXISTS `_1_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_tokens` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `secret` varchar(512) DEFAULT NULL,
  `expire` datetime(3) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_user` (`userInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_tokens`
--

LOCK TABLES `_1_tokens` WRITE;
/*!40000 ALTER TABLE `_1_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_tokens_perms`
--

DROP TABLE IF EXISTS `_1_tokens_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_tokens_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_tokens_perms`
--

LOCK TABLES `_1_tokens_perms` WRITE;
/*!40000 ALTER TABLE `_1_tokens_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_tokens_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_users`
--

DROP TABLE IF EXISTS `_1_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_users` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `hash` varchar(256) DEFAULT NULL,
  `hashOptions` text DEFAULT NULL,
  `passwordUpdate` datetime(3) DEFAULT NULL,
  `prefs` text DEFAULT NULL,
  `registration` datetime(3) DEFAULT NULL,
  `emailVerification` tinyint(1) DEFAULT NULL,
  `phoneVerification` tinyint(1) DEFAULT NULL,
  `reset` tinyint(1) DEFAULT NULL,
  `sessions` text DEFAULT NULL,
  `tokens` text DEFAULT NULL,
  `memberships` text DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_email` (`email`),
  UNIQUE KEY `_key_phone` (`phone`),
  KEY `_key_name` (`name`),
  KEY `_key_status` (`status`),
  KEY `_key_passwordUpdate` (`passwordUpdate`),
  KEY `_key_registration` (`registration`),
  KEY `_key_emailVerification` (`emailVerification`),
  KEY `_key_phoneVerification` (`phoneVerification`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_users`
--

LOCK TABLES `_1_users` WRITE;
/*!40000 ALTER TABLE `_1_users` DISABLE KEYS */;
INSERT INTO `_1_users` VALUES
(1,'63b1f8534a7bdc74bf70','2023-01-01 21:17:07.400','2023-01-01 21:17:07.400','[\"read(\\\"any\\\")\",\"update(\\\"user:63b1f8534a7bdc74bf70\\\")\",\"delete(\\\"user:63b1f8534a7bdc74bf70\\\")\"]','user','user@noemail.com',NULL,1,'{\"data\":\"YJ2Bg6qvfTEyZh6SdoTfxT2Gg2psSItYNhOYrQUz2UqZ1dx\\/Djzw2yIfEZRvPhRhBVJoo+pCPddHNzRRJ70ACrUQt1wIH4Ew7bPT+H+Bhm3AfQYBhp29z2fUNAyeKM4Eiw==\",\"method\":\"aes-128-gcm\",\"iv\":\"3c4746cfdadbfe8ab2967540\",\"tag\":\"f19157297b31dccf40d3cc118e2ae071\",\"version\":\"1\"}','argon2','{\"type\":\"argon2\",\"memoryCost\":2048,\"timeCost\":4,\"threads\":3}','2023-01-01 21:17:07.399','{}','2023-01-01 21:17:07.399',0,0,0,NULL,NULL,NULL,'63b1f8534a7bdc74bf70 user@noemail.com  user');
/*!40000 ALTER TABLE `_1_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_users_perms`
--

DROP TABLE IF EXISTS `_1_users_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_users_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_users_perms`
--

LOCK TABLES `_1_users_perms` WRITE;
/*!40000 ALTER TABLE `_1_users_perms` DISABLE KEYS */;
INSERT INTO `_1_users_perms` VALUES
(3,'delete','user:63b1f8534a7bdc74bf70','63b1f8534a7bdc74bf70'),
(1,'read','any','63b1f8534a7bdc74bf70'),
(2,'update','user:63b1f8534a7bdc74bf70','63b1f8534a7bdc74bf70');
/*!40000 ALTER TABLE `_1_users_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_variables`
--

DROP TABLE IF EXISTS `_1_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_variables` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `functionInternalId` varchar(255) DEFAULT NULL,
  `functionId` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(8192) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_uniqueKey` (`functionInternalId`,`key`),
  KEY `_key_function` (`functionInternalId`),
  KEY `_key_key` (`key`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_variables`
--

LOCK TABLES `_1_variables` WRITE;
/*!40000 ALTER TABLE `_1_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_variables_perms`
--

DROP TABLE IF EXISTS `_1_variables_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_variables_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_variables_perms`
--

LOCK TABLES `_1_variables_perms` WRITE;
/*!40000 ALTER TABLE `_1_variables_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_variables_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_webhooks`
--

DROP TABLE IF EXISTS `_1_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_webhooks` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `httpUser` varchar(255) DEFAULT NULL,
  `httpPass` varchar(255) DEFAULT NULL,
  `security` tinyint(1) DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `signatureKey` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_webhooks`
--

LOCK TABLES `_1_webhooks` WRITE;
/*!40000 ALTER TABLE `_1_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_webhooks_perms`
--

DROP TABLE IF EXISTS `_1_webhooks_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_webhooks_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_webhooks_perms`
--

LOCK TABLES `_1_webhooks_perms` WRITE;
/*!40000 ALTER TABLE `_1_webhooks_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_webhooks_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console__metadata`
--

DROP TABLE IF EXISTS `_console__metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console__metadata` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(512) DEFAULT NULL,
  `attributes` mediumtext DEFAULT NULL,
  `indexes` mediumtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console__metadata`
--

LOCK TABLES `_console__metadata` WRITE;
/*!40000 ALTER TABLE `_console__metadata` DISABLE KEYS */;
INSERT INTO `_console__metadata` VALUES
(1,'audit','2023-01-01 21:10:30.201','2023-01-01 21:10:30.201','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','audit','[{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"event\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"resource\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"userAgent\",\"type\":\"string\",\"size\":65534,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"ip\",\"type\":\"string\",\"size\":45,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"location\",\"type\":\"string\",\"size\":45,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"time\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"data\",\"type\":\"string\",\"size\":16777216,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"]}]','[{\"$id\":\"index2\",\"type\":\"key\",\"attributes\":[\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index4\",\"type\":\"key\",\"attributes\":[\"userId\",\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index5\",\"type\":\"key\",\"attributes\":[\"resource\",\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index-time\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]}]'),
(2,'abuse','2023-01-01 21:10:30.215','2023-01-01 21:10:30.215','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','abuse','[{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"time\",\"type\":\"datetime\",\"size\":0,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"count\",\"type\":\"integer\",\"size\":11,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[]}]','[{\"$id\":\"unique1\",\"type\":\"unique\",\"attributes\":[\"key\",\"time\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index2\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[]}]'),
(3,'databases','2023-01-01 21:10:30.234','2023-01-01 21:10:30.234','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','databases','[{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[256],\"orders\":[\"ASC\"]}]'),
(4,'attributes','2023-01-01 21:10:30.251','2023-01-01 21:10:30.251','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','attributes','[{\"$id\":\"databaseInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"databaseId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"collectionInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"collectionId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"size\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"required\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"default\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"casting\"],\"default\":null,\"format\":\"\"},{\"$id\":\"signed\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"array\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"format\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"formatOptions\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\",\"range\",\"enum\"],\"default\":{},\"format\":\"\"},{\"$id\":\"filters\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_db_collection\",\"type\":\"key\",\"attributes\":[\"databaseInternalId\",\"collectionInternalId\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]}]'),
(5,'indexes','2023-01-01 21:10:30.264','2023-01-01 21:10:30.264','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','indexes','[{\"$id\":\"databaseInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"databaseId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"collectionInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"collectionId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"attributes\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"lengths\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"orders\",\"type\":\"string\",\"size\":4,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_db_collection\",\"type\":\"key\",\"attributes\":[\"databaseInternalId\",\"collectionInternalId\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]}]'),
(6,'projects','2023-01-01 21:10:30.283','2023-01-01 21:10:30.283','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','projects','[{\"$id\":\"teamInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"teamId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"region\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"description\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"logo\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"url\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"version\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalCountry\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalState\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalCity\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalAddress\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalTaxId\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"services\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":[],\"format\":\"\"},{\"$id\":\"auths\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":[],\"format\":\"\"},{\"$id\":\"authProviders\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\",\"encrypt\"],\"default\":[],\"format\":\"\"},{\"$id\":\"platforms\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryPlatforms\"],\"default\":null,\"format\":\"\"},{\"$id\":\"webhooks\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryWebhooks\"],\"default\":null,\"format\":\"\"},{\"$id\":\"keys\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryKeys\"],\"default\":null,\"format\":\"\"},{\"$id\":\"domains\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryDomains\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_team\",\"type\":\"key\",\"attributes\":[\"teamId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(7,'platforms','2023-01-01 21:10:30.296','2023-01-01 21:10:30.296','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','platforms','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"store\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"hostname\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(8,'domains','2023-01-01 21:10:30.309','2023-01-01 21:10:30.309','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','domains','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"updated\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"domain\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"tld\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"registerable\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"verification\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"certificateId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(9,'keys','2023-01-01 21:10:30.320','2023-01-01 21:10:30.320','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','keys','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":0,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"scopes\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":512,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"expire\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"accessedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"sdks\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_accessedAt\",\"type\":\"key\",\"attributes\":[\"accessedAt\"],\"lengths\":[],\"orders\":[]}]'),
(10,'webhooks','2023-01-01 21:10:30.332','2023-01-01 21:10:30.332','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','webhooks','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"url\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"httpUser\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"httpPass\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"security\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"events\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"signatureKey\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(11,'users','2023-01-01 21:10:30.351','2023-01-01 21:10:30.351','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','users','[{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"email\",\"type\":\"string\",\"size\":320,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"phone\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"password\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"hash\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"argon2\",\"format\":\"\"},{\"$id\":\"hashOptions\",\"type\":\"string\",\"size\":65535,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":{\"type\":\"argon2\",\"memoryCost\":2048,\"timeCost\":4,\"threads\":3},\"format\":\"\"},{\"$id\":\"passwordUpdate\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"prefs\",\"type\":\"string\",\"size\":65535,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":{},\"format\":\"\"},{\"$id\":\"registration\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"emailVerification\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"phoneVerification\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"reset\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"sessions\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQuerySessions\"],\"default\":null,\"format\":\"\"},{\"$id\":\"tokens\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryTokens\"],\"default\":null,\"format\":\"\"},{\"$id\":\"memberships\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryMemberships\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[256],\"orders\":[\"ASC\"]},{\"$id\":\"_key_email\",\"type\":\"unique\",\"attributes\":[\"email\"],\"lengths\":[320],\"orders\":[\"ASC\"]},{\"$id\":\"_key_phone\",\"type\":\"unique\",\"attributes\":[\"phone\"],\"lengths\":[16],\"orders\":[\"ASC\"]},{\"$id\":\"_key_status\",\"type\":\"key\",\"attributes\":[\"status\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_passwordUpdate\",\"type\":\"key\",\"attributes\":[\"passwordUpdate\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_registration\",\"type\":\"key\",\"attributes\":[\"registration\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_emailVerification\",\"type\":\"key\",\"attributes\":[\"emailVerification\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_phoneVerification\",\"type\":\"key\",\"attributes\":[\"phoneVerification\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]}]'),
(12,'tokens','2023-01-01 21:10:30.365','2023-01-01 21:10:30.365','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','tokens','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"integer\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":512,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"expire\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"userAgent\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"ip\",\"type\":\"string\",\"size\":45,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(13,'sessions','2023-01-01 21:10:30.377','2023-01-01 21:10:30.377','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','sessions','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"provider\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerUid\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerAccessToken\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"providerAccessTokenExpiry\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"providerRefreshToken\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":512,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"userAgent\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"ip\",\"type\":\"string\",\"size\":45,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"countryCode\",\"type\":\"string\",\"size\":2,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"osCode\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"osName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"osVersion\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientType\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientCode\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientVersion\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientEngine\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientEngineVersion\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deviceName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deviceBrand\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deviceModel\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_provider_providerUid\",\"type\":\"key\",\"attributes\":[\"provider\",\"providerUid\"],\"lengths\":[100,100],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(14,'teams','2023-01-01 21:10:30.398','2023-01-01 21:10:30.398','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','teams','[{\"$id\":\"name\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"total\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_total\",\"type\":\"key\",\"attributes\":[\"total\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(15,'memberships','2023-01-01 21:10:30.419','2023-01-01 21:10:30.419','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','memberships','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"teamInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"teamId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"roles\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"invited\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"joined\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"confirm\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_unique\",\"type\":\"unique\",\"attributes\":[\"teamInternalId\",\"userInternalId\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_team\",\"type\":\"key\",\"attributes\":[\"teamInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_userId\",\"type\":\"key\",\"attributes\":[\"userId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_teamId\",\"type\":\"key\",\"attributes\":[\"teamId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_invited\",\"type\":\"key\",\"attributes\":[\"invited\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_joined\",\"type\":\"key\",\"attributes\":[\"joined\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_confirm\",\"type\":\"key\",\"attributes\":[\"confirm\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(16,'functions','2023-01-01 21:10:30.443','2023-01-01 21:10:30.443','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','functions','[{\"$id\":\"execute\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"enabled\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"runtime\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deployment\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"vars\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryVariables\"],\"default\":null,\"format\":\"\"},{\"$id\":\"events\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"schedule\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"scheduleUpdatedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"schedulePrevious\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"scheduleNext\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"timeout\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[768],\"orders\":[\"ASC\"]},{\"$id\":\"_key_enabled\",\"type\":\"key\",\"attributes\":[\"enabled\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_runtime\",\"type\":\"key\",\"attributes\":[\"runtime\"],\"lengths\":[768],\"orders\":[\"ASC\"]},{\"$id\":\"_key_deployment\",\"type\":\"key\",\"attributes\":[\"deployment\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_schedule\",\"type\":\"key\",\"attributes\":[\"schedule\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_scheduleNext\",\"type\":\"key\",\"attributes\":[\"scheduleNext\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_schedulePrevious\",\"type\":\"key\",\"attributes\":[\"schedulePrevious\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_timeout\",\"type\":\"key\",\"attributes\":[\"timeout\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(17,'deployments','2023-01-01 21:10:30.465','2023-01-01 21:10:30.465','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','deployments','[{\"$id\":\"resourceId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"resourceType\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"buildId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"entrypoint\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"path\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"size\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"metadata\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksTotal\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksUploaded\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"activate\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":false,\"format\":\"\"}]','[{\"$id\":\"_key_resource\",\"type\":\"key\",\"attributes\":[\"resourceId\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_resource_type\",\"type\":\"key\",\"attributes\":[\"resourceType\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_entrypoint\",\"type\":\"key\",\"attributes\":[\"entrypoint\"],\"lengths\":[768],\"orders\":[\"ASC\"]},{\"$id\":\"_key_size\",\"type\":\"key\",\"attributes\":[\"size\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_buildId\",\"type\":\"key\",\"attributes\":[\"buildId\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_activate\",\"type\":\"key\",\"attributes\":[\"activate\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(18,'builds','2023-01-01 21:10:30.477','2023-01-01 21:10:30.477','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','builds','[{\"$id\":\"startTime\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"endTime\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"duration\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deploymentId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"runtime\",\"type\":\"string\",\"size\":2048,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"processing\",\"format\":\"\"},{\"$id\":\"outputPath\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"stderr\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"stdout\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"sourceType\",\"type\":\"string\",\"size\":2048,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"local\",\"format\":\"\"},{\"$id\":\"source\",\"type\":\"string\",\"size\":2048,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"}]','[{\"$id\":\"_key_deployment\",\"type\":\"key\",\"attributes\":[\"deploymentId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(19,'executions','2023-01-01 21:10:30.497','2023-01-01 21:10:30.497','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','executions','[{\"$id\":\"functionId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deploymentId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"trigger\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"response\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"stderr\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"stdout\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"statusCode\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"duration\",\"type\":\"double\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_function\",\"type\":\"key\",\"attributes\":[\"functionId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_trigger\",\"type\":\"key\",\"attributes\":[\"trigger\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_status\",\"type\":\"key\",\"attributes\":[\"status\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_statusCode\",\"type\":\"key\",\"attributes\":[\"statusCode\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_duration\",\"type\":\"key\",\"attributes\":[\"duration\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(20,'certificates','2023-01-01 21:10:30.508','2023-01-01 21:10:30.508','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','certificates','[{\"$id\":\"domain\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"issueDate\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"renewDate\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"attempts\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"log\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"updated\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_domain\",\"type\":\"key\",\"attributes\":[\"domain\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(21,'buckets','2023-01-01 21:10:30.530','2023-01-01 21:10:30.530','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','buckets','[{\"$id\":\"enabled\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":128,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"fileSecurity\",\"type\":\"boolean\",\"size\":1,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"maximumFileSize\",\"type\":\"integer\",\"size\":8,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"allowedFileExtensions\",\"type\":\"string\",\"size\":64,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"compression\",\"type\":\"string\",\"size\":10,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"encryption\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"antivirus\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_fulltext_name\",\"type\":\"fulltext\",\"attributes\":[\"name\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_enabled\",\"type\":\"key\",\"attributes\":[\"enabled\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_fileSecurity\",\"type\":\"key\",\"attributes\":[\"fileSecurity\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_maximumFileSize\",\"type\":\"key\",\"attributes\":[\"maximumFileSize\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_encryption\",\"type\":\"key\",\"attributes\":[\"encryption\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_antivirus\",\"type\":\"key\",\"attributes\":[\"antivirus\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(22,'stats','2023-01-01 21:10:30.542','2023-01-01 21:10:30.542','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','stats','[{\"$id\":\"metric\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"region\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"value\",\"type\":\"integer\",\"size\":8,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"time\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"period\",\"type\":\"string\",\"size\":4,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"integer\",\"size\":1,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":0,\"format\":\"\"}]','[{\"$id\":\"_key_time\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]},{\"$id\":\"_key_period_time\",\"type\":\"key\",\"attributes\":[\"period\",\"time\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_metric_period_time\",\"type\":\"key\",\"attributes\":[\"metric\",\"period\",\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]}]'),
(23,'realtime','2023-01-01 21:10:30.554','2023-01-01 21:10:30.554','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','realtime','[{\"$id\":\"container\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"timestamp\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"value\",\"type\":\"string\",\"size\":16384,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_timestamp\",\"type\":\"key\",\"attributes\":[\"timestamp\"],\"lengths\":[],\"orders\":[\"DESC\"]}]'),
(24,'cache','2023-01-01 21:10:30.567','2023-01-01 21:10:30.567','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','cache','[{\"$id\":\"resource\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"accessedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"signature\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_accessedAt\",\"type\":\"key\",\"attributes\":[\"accessedAt\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_resource\",\"type\":\"key\",\"attributes\":[\"resource\"],\"lengths\":[],\"orders\":[]}]'),
(25,'variables','2023-01-01 21:10:30.591','2023-01-01 21:10:30.591','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','variables','[{\"$id\":\"functionInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"functionId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"value\",\"type\":\"string\",\"size\":8192,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_function\",\"type\":\"key\",\"attributes\":[\"functionInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_uniqueKey\",\"type\":\"unique\",\"attributes\":[\"functionInternalId\",\"key\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_key\",\"type\":\"key\",\"attributes\":[\"key\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]}]'),
(26,'bucket_1','2023-01-01 21:10:30.621','2023-01-01 21:10:30.621','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','bucket_1','[{\"$id\":\"bucketId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"path\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"signature\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"mimeType\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"metadata\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":null,\"format\":\"\"},{\"$id\":\"sizeOriginal\",\"type\":\"integer\",\"size\":8,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"sizeActual\",\"type\":\"integer\",\"size\":8,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"algorithm\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"comment\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLVersion\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLCipher\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLTag\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLIV\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksTotal\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksUploaded\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_bucket\",\"type\":\"key\",\"attributes\":[\"bucketId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[768],\"orders\":[\"ASC\"]},{\"$id\":\"_key_signature\",\"type\":\"key\",\"attributes\":[\"signature\"],\"lengths\":[768],\"orders\":[\"ASC\"]},{\"$id\":\"_key_mimeType\",\"type\":\"key\",\"attributes\":[\"mimeType\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_sizeOriginal\",\"type\":\"key\",\"attributes\":[\"sizeOriginal\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_chunksTotal\",\"type\":\"key\",\"attributes\":[\"chunksTotal\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_chunksUploaded\",\"type\":\"key\",\"attributes\":[\"chunksUploaded\"],\"lengths\":[],\"orders\":[\"ASC\"]}]');
/*!40000 ALTER TABLE `_console__metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console__metadata_perms`
--

DROP TABLE IF EXISTS `_console__metadata_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console__metadata_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console__metadata_perms`
--

LOCK TABLES `_console__metadata_perms` WRITE;
/*!40000 ALTER TABLE `_console__metadata_perms` DISABLE KEYS */;
INSERT INTO `_console__metadata_perms` VALUES
(5,'create','any','abuse'),
(8,'delete','any','abuse'),
(6,'read','any','abuse'),
(7,'update','any','abuse'),
(13,'create','any','attributes'),
(16,'delete','any','attributes'),
(14,'read','any','attributes'),
(15,'update','any','attributes'),
(1,'create','any','audit'),
(4,'delete','any','audit'),
(2,'read','any','audit'),
(3,'update','any','audit'),
(81,'create','any','buckets'),
(84,'delete','any','buckets'),
(82,'read','any','buckets'),
(83,'update','any','buckets'),
(101,'create','any','bucket_1'),
(104,'delete','any','bucket_1'),
(102,'read','any','bucket_1'),
(103,'update','any','bucket_1'),
(69,'create','any','builds'),
(72,'delete','any','builds'),
(70,'read','any','builds'),
(71,'update','any','builds'),
(93,'create','any','cache'),
(96,'delete','any','cache'),
(94,'read','any','cache'),
(95,'update','any','cache'),
(77,'create','any','certificates'),
(80,'delete','any','certificates'),
(78,'read','any','certificates'),
(79,'update','any','certificates'),
(9,'create','any','databases'),
(12,'delete','any','databases'),
(10,'read','any','databases'),
(11,'update','any','databases'),
(65,'create','any','deployments'),
(68,'delete','any','deployments'),
(66,'read','any','deployments'),
(67,'update','any','deployments'),
(29,'create','any','domains'),
(32,'delete','any','domains'),
(30,'read','any','domains'),
(31,'update','any','domains'),
(73,'create','any','executions'),
(76,'delete','any','executions'),
(74,'read','any','executions'),
(75,'update','any','executions'),
(61,'create','any','functions'),
(64,'delete','any','functions'),
(62,'read','any','functions'),
(63,'update','any','functions'),
(17,'create','any','indexes'),
(20,'delete','any','indexes'),
(18,'read','any','indexes'),
(19,'update','any','indexes'),
(33,'create','any','keys'),
(36,'delete','any','keys'),
(34,'read','any','keys'),
(35,'update','any','keys'),
(57,'create','any','memberships'),
(60,'delete','any','memberships'),
(58,'read','any','memberships'),
(59,'update','any','memberships'),
(25,'create','any','platforms'),
(28,'delete','any','platforms'),
(26,'read','any','platforms'),
(27,'update','any','platforms'),
(21,'create','any','projects'),
(24,'delete','any','projects'),
(22,'read','any','projects'),
(23,'update','any','projects'),
(89,'create','any','realtime'),
(92,'delete','any','realtime'),
(90,'read','any','realtime'),
(91,'update','any','realtime'),
(49,'create','any','sessions'),
(52,'delete','any','sessions'),
(50,'read','any','sessions'),
(51,'update','any','sessions'),
(85,'create','any','stats'),
(88,'delete','any','stats'),
(86,'read','any','stats'),
(87,'update','any','stats'),
(53,'create','any','teams'),
(56,'delete','any','teams'),
(54,'read','any','teams'),
(55,'update','any','teams'),
(45,'create','any','tokens'),
(48,'delete','any','tokens'),
(46,'read','any','tokens'),
(47,'update','any','tokens'),
(41,'create','any','users'),
(44,'delete','any','users'),
(42,'read','any','users'),
(43,'update','any','users'),
(97,'create','any','variables'),
(100,'delete','any','variables'),
(98,'read','any','variables'),
(99,'update','any','variables'),
(37,'create','any','webhooks'),
(40,'delete','any','webhooks'),
(38,'read','any','webhooks'),
(39,'update','any','webhooks');
/*!40000 ALTER TABLE `_console__metadata_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_abuse`
--

DROP TABLE IF EXISTS `_console_abuse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_abuse` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `count` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `unique1` (`key`,`time`),
  KEY `index2` (`time`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_abuse`
--

LOCK TABLES `_console_abuse` WRITE;
/*!40000 ALTER TABLE `_console_abuse` DISABLE KEYS */;
INSERT INTO `_console_abuse` VALUES
(1,'63b1f708634697f1e82a','2023-01-01 21:11:36.406','2023-01-01 21:11:36.406','[]','url:8080-appwrite-integrationfor-7cc0ys19d0b.ws-eu80.gitpod.io/v1/account,ip:192.168.94.8','2023-01-01 21:00:00.000',1),
(2,'63b1f70895444ba56c9a','2023-01-01 21:11:36.611','2023-01-01 21:11:36.611','[]','url:8080-appwrite-integrationfor-7cc0ys19d0b.ws-eu80.gitpod.io/v1/account/sessions/email,email:admin@noemail.com','2023-01-01 21:00:00.000',1),
(3,'63b1f71a2cdfe854128f','2023-01-01 21:11:54.183','2023-01-01 21:11:54.183','[]','url:/v1/realtime,ip:192.168.159.7','2023-01-01 21:11:00.000',1),
(4,'63b1f7308b6a043ba4ae','2023-01-01 21:12:16.571','2023-01-01 21:12:16.571','[]','url:/v1/realtime,ip:192.168.94.8','2023-01-01 21:12:00.000',1);
/*!40000 ALTER TABLE `_console_abuse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_abuse_perms`
--

DROP TABLE IF EXISTS `_console_abuse_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_abuse_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_abuse_perms`
--

LOCK TABLES `_console_abuse_perms` WRITE;
/*!40000 ALTER TABLE `_console_abuse_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_abuse_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_attributes`
--

DROP TABLE IF EXISTS `_console_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_attributes` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `databaseInternalId` varchar(255) DEFAULT NULL,
  `databaseId` varchar(255) DEFAULT NULL,
  `collectionInternalId` varchar(255) DEFAULT NULL,
  `collectionId` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `type` varchar(256) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `default` text DEFAULT NULL,
  `signed` tinyint(1) DEFAULT NULL,
  `array` tinyint(1) DEFAULT NULL,
  `format` varchar(64) DEFAULT NULL,
  `formatOptions` text DEFAULT NULL,
  `filters` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_db_collection` (`databaseInternalId`,`collectionInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_attributes`
--

LOCK TABLES `_console_attributes` WRITE;
/*!40000 ALTER TABLE `_console_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_attributes_perms`
--

DROP TABLE IF EXISTS `_console_attributes_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_attributes_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_attributes_perms`
--

LOCK TABLES `_console_attributes_perms` WRITE;
/*!40000 ALTER TABLE `_console_attributes_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_attributes_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_audit`
--

DROP TABLE IF EXISTS `_console_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_audit` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `index2` (`event`),
  KEY `index4` (`userId`,`event`),
  KEY `index5` (`resource`,`event`),
  KEY `index-time` (`time`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_audit`
--

LOCK TABLES `_console_audit` WRITE;
/*!40000 ALTER TABLE `_console_audit` DISABLE KEYS */;
INSERT INTO `_console_audit` VALUES
(1,'63b1f708c28ce98eebb1','2023-01-01 21:11:36.796','2023-01-01 21:11:36.796','[]','63b1f70864242b93c492','user.create','user/63b1f70864242b93c492','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36','192.168.94.8','','2023-01-01 21:11:36.795','{\"userName\":\"admin\",\"userEmail\":\"admin@noemail.com\",\"mode\":\"default\",\"data\":{\"$id\":\"63b1f70864242b93c492\",\"$createdAt\":\"2023-01-01T21:11:36.510+00:00\",\"$updatedAt\":\"2023-01-01T21:11:36.510+00:00\",\"name\":\"admin\",\"registration\":\"2023-01-01T21:11:36.509+00:00\",\"status\":true,\"passwordUpdate\":\"2023-01-01T21:11:36.509+00:00\",\"email\":\"admin@noemail.com\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"prefs\":[]}}'),
(2,'63b1f709c39c6b63dcc2','2023-01-01 21:11:37.801','2023-01-01 21:11:37.801','[]','63b1f70864242b93c492','session.create','user/63b1f70864242b93c492','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36','192.168.94.8','','2023-01-01 21:11:37.801','{\"userName\":\"admin\",\"userEmail\":\"admin@noemail.com\",\"mode\":\"default\",\"data\":{\"$id\":\"63b1f708ad198590455a\",\"$createdAt\":\"2023-01-01T21:11:37.063+00:00\",\"userId\":\"63b1f70864242b93c492\",\"expire\":\"2024-01-01 21:11:36.708\",\"provider\":\"email\",\"providerUid\":\"admin@noemail.com\",\"providerAccessToken\":\"\",\"providerAccessTokenExpiry\":\"\",\"providerRefreshToken\":\"\",\"ip\":\"192.168.94.8\",\"osCode\":\"MAC\",\"osName\":\"Mac\",\"osVersion\":\"10.14\",\"clientType\":\"browser\",\"clientCode\":\"CH\",\"clientName\":\"Chrome\",\"clientVersion\":\"108.0\",\"clientEngine\":\"Blink\",\"clientEngineVersion\":\"108.0.0.0\",\"deviceName\":\"desktop\",\"deviceBrand\":\"Apple\",\"deviceModel\":\"\",\"countryCode\":\"--\",\"countryName\":\"Unknown\",\"current\":true}}'),
(3,'63b1f718c6463241f717','2023-01-01 21:11:52.812','2023-01-01 21:11:52.812','[]','63b1f70864242b93c492','team.create','team/63b1f7180b540940220c','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36','192.168.94.8','','2023-01-01 21:11:52.811','{\"userName\":\"admin\",\"userEmail\":\"admin@noemail.com\",\"mode\":\"default\",\"data\":{\"$id\":\"63b1f7180b540940220c\",\"$createdAt\":\"2023-01-01T21:11:52.046+00:00\",\"$updatedAt\":\"2023-01-01T21:11:52.046+00:00\",\"name\":\"Personal Projects\",\"total\":1}}');
/*!40000 ALTER TABLE `_console_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_audit_perms`
--

DROP TABLE IF EXISTS `_console_audit_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_audit_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_audit_perms`
--

LOCK TABLES `_console_audit_perms` WRITE;
/*!40000 ALTER TABLE `_console_audit_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_audit_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_bucket_1`
--

DROP TABLE IF EXISTS `_console_bucket_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_bucket_1` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `bucketId` varchar(255) DEFAULT NULL,
  `name` varchar(2048) DEFAULT NULL,
  `path` varchar(2048) DEFAULT NULL,
  `signature` varchar(2048) DEFAULT NULL,
  `mimeType` varchar(255) DEFAULT NULL,
  `metadata` text DEFAULT NULL,
  `sizeOriginal` bigint(20) unsigned DEFAULT NULL,
  `sizeActual` bigint(20) unsigned DEFAULT NULL,
  `algorithm` varchar(255) DEFAULT NULL,
  `comment` varchar(2048) DEFAULT NULL,
  `openSSLVersion` varchar(64) DEFAULT NULL,
  `openSSLCipher` varchar(64) DEFAULT NULL,
  `openSSLTag` varchar(2048) DEFAULT NULL,
  `openSSLIV` varchar(2048) DEFAULT NULL,
  `chunksTotal` int(10) unsigned DEFAULT NULL,
  `chunksUploaded` int(10) unsigned DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_bucket` (`bucketId`),
  KEY `_key_name` (`name`(768)),
  KEY `_key_signature` (`signature`(768)),
  KEY `_key_mimeType` (`mimeType`),
  KEY `_key_sizeOriginal` (`sizeOriginal`),
  KEY `_key_chunksTotal` (`chunksTotal`),
  KEY `_key_chunksUploaded` (`chunksUploaded`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_bucket_1`
--

LOCK TABLES `_console_bucket_1` WRITE;
/*!40000 ALTER TABLE `_console_bucket_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_bucket_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_bucket_1_perms`
--

DROP TABLE IF EXISTS `_console_bucket_1_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_bucket_1_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_bucket_1_perms`
--

LOCK TABLES `_console_bucket_1_perms` WRITE;
/*!40000 ALTER TABLE `_console_bucket_1_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_bucket_1_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_buckets`
--

DROP TABLE IF EXISTS `_console_buckets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_buckets` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `fileSecurity` tinyint(1) DEFAULT NULL,
  `maximumFileSize` bigint(20) unsigned DEFAULT NULL,
  `allowedFileExtensions` longtext DEFAULT NULL,
  `compression` varchar(10) DEFAULT NULL,
  `encryption` tinyint(1) DEFAULT NULL,
  `antivirus` tinyint(1) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_enabled` (`enabled`),
  KEY `_key_name` (`name`),
  KEY `_key_fileSecurity` (`fileSecurity`),
  KEY `_key_maximumFileSize` (`maximumFileSize`),
  KEY `_key_encryption` (`encryption`),
  KEY `_key_antivirus` (`antivirus`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_name` (`name`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_buckets`
--

LOCK TABLES `_console_buckets` WRITE;
/*!40000 ALTER TABLE `_console_buckets` DISABLE KEYS */;
INSERT INTO `_console_buckets` VALUES
(1,'default','2023-01-01 21:10:30.595','2023-01-01 21:10:30.595','[\"create(\\\"any\\\")\",\"read(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]',1,'Default',1,10000000,'[]','gzip',1,1,'buckets Default');
/*!40000 ALTER TABLE `_console_buckets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_buckets_perms`
--

DROP TABLE IF EXISTS `_console_buckets_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_buckets_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_buckets_perms`
--

LOCK TABLES `_console_buckets_perms` WRITE;
/*!40000 ALTER TABLE `_console_buckets_perms` DISABLE KEYS */;
INSERT INTO `_console_buckets_perms` VALUES
(1,'create','any','default'),
(4,'delete','any','default'),
(2,'read','any','default'),
(3,'update','any','default');
/*!40000 ALTER TABLE `_console_buckets_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_builds`
--

DROP TABLE IF EXISTS `_console_builds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_builds` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `startTime` datetime(3) DEFAULT NULL,
  `endTime` datetime(3) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `deploymentId` varchar(255) DEFAULT NULL,
  `runtime` varchar(2048) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL,
  `outputPath` varchar(2048) DEFAULT NULL,
  `stderr` mediumtext DEFAULT NULL,
  `stdout` mediumtext DEFAULT NULL,
  `sourceType` varchar(2048) DEFAULT NULL,
  `source` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_deployment` (`deploymentId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_builds`
--

LOCK TABLES `_console_builds` WRITE;
/*!40000 ALTER TABLE `_console_builds` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_builds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_builds_perms`
--

DROP TABLE IF EXISTS `_console_builds_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_builds_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_builds_perms`
--

LOCK TABLES `_console_builds_perms` WRITE;
/*!40000 ALTER TABLE `_console_builds_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_builds_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_cache`
--

DROP TABLE IF EXISTS `_console_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_cache` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `accessedAt` datetime(3) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_accessedAt` (`accessedAt`),
  KEY `_key_resource` (`resource`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_cache`
--

LOCK TABLES `_console_cache` WRITE;
/*!40000 ALTER TABLE `_console_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_cache_perms`
--

DROP TABLE IF EXISTS `_console_cache_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_cache_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_cache_perms`
--

LOCK TABLES `_console_cache_perms` WRITE;
/*!40000 ALTER TABLE `_console_cache_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_cache_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_certificates`
--

DROP TABLE IF EXISTS `_console_certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_certificates` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `issueDate` datetime(3) DEFAULT NULL,
  `renewDate` datetime(3) DEFAULT NULL,
  `attempts` int(11) DEFAULT NULL,
  `log` text DEFAULT NULL,
  `updated` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_domain` (`domain`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_certificates`
--

LOCK TABLES `_console_certificates` WRITE;
/*!40000 ALTER TABLE `_console_certificates` DISABLE KEYS */;
INSERT INTO `_console_certificates` VALUES
(1,'63b1f6e41506b311a82b','2023-01-01 21:11:00.086','2023-01-01 21:11:00.086','[]','8080-appwrite-integrationfor-7cc0ys19d0b.ws-eu80.gitpod.io',NULL,'2023-01-01 21:11:00.084',1,'Failed to issue a certificate with message: Saving debug log to /var/log/letsencrypt/letsencrypt.log\nSome challenges have failed.\nAsk for help or search for solutions at https://community.letsencrypt.org. See the logfile /var/log/letsencrypt/letsencrypt.log or re-run Certbot with -v for more details.\n','2023-01-01 21:11:00.085');
/*!40000 ALTER TABLE `_console_certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_certificates_perms`
--

DROP TABLE IF EXISTS `_console_certificates_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_certificates_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_certificates_perms`
--

LOCK TABLES `_console_certificates_perms` WRITE;
/*!40000 ALTER TABLE `_console_certificates_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_certificates_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_databases`
--

DROP TABLE IF EXISTS `_console_databases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_databases` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_databases`
--

LOCK TABLES `_console_databases` WRITE;
/*!40000 ALTER TABLE `_console_databases` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_databases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_databases_perms`
--

DROP TABLE IF EXISTS `_console_databases_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_databases_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_databases_perms`
--

LOCK TABLES `_console_databases_perms` WRITE;
/*!40000 ALTER TABLE `_console_databases_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_databases_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_deployments`
--

DROP TABLE IF EXISTS `_console_deployments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_deployments` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `resourceId` varchar(255) DEFAULT NULL,
  `resourceType` varchar(255) DEFAULT NULL,
  `buildId` varchar(255) DEFAULT NULL,
  `entrypoint` varchar(2048) DEFAULT NULL,
  `path` varchar(2048) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` text DEFAULT NULL,
  `chunksTotal` int(10) unsigned DEFAULT NULL,
  `chunksUploaded` int(10) unsigned DEFAULT NULL,
  `search` text DEFAULT NULL,
  `activate` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_resource` (`resourceId`),
  KEY `_key_resource_type` (`resourceType`),
  KEY `_key_entrypoint` (`entrypoint`(768)),
  KEY `_key_size` (`size`),
  KEY `_key_buildId` (`buildId`),
  KEY `_key_activate` (`activate`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_deployments`
--

LOCK TABLES `_console_deployments` WRITE;
/*!40000 ALTER TABLE `_console_deployments` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_deployments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_deployments_perms`
--

DROP TABLE IF EXISTS `_console_deployments_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_deployments_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_deployments_perms`
--

LOCK TABLES `_console_deployments_perms` WRITE;
/*!40000 ALTER TABLE `_console_deployments_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_deployments_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_domains`
--

DROP TABLE IF EXISTS `_console_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_domains` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `updated` datetime(3) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `tld` varchar(255) DEFAULT NULL,
  `registerable` varchar(255) DEFAULT NULL,
  `verification` tinyint(1) DEFAULT NULL,
  `certificateId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_domains`
--

LOCK TABLES `_console_domains` WRITE;
/*!40000 ALTER TABLE `_console_domains` DISABLE KEYS */;
INSERT INTO `_console_domains` VALUES
(1,'63b1f6e04f69d88e8edb','2023-01-01 21:10:56.325','2023-01-01 21:11:00.088','[]',NULL,NULL,'2023-01-01 21:11:00.088','8080-appwrite-integrationfor-7cc0ys19d0b.ws-eu80.gitpod.io','io','gitpod.io',0,'63b1f6e41506b311a82b');
/*!40000 ALTER TABLE `_console_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_domains_perms`
--

DROP TABLE IF EXISTS `_console_domains_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_domains_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_domains_perms`
--

LOCK TABLES `_console_domains_perms` WRITE;
/*!40000 ALTER TABLE `_console_domains_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_domains_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_executions`
--

DROP TABLE IF EXISTS `_console_executions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_executions` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `functionId` varchar(255) DEFAULT NULL,
  `deploymentId` varchar(255) DEFAULT NULL,
  `trigger` varchar(128) DEFAULT NULL,
  `status` varchar(128) DEFAULT NULL,
  `response` mediumtext DEFAULT NULL,
  `stderr` mediumtext DEFAULT NULL,
  `stdout` mediumtext DEFAULT NULL,
  `statusCode` int(11) DEFAULT NULL,
  `duration` float DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_function` (`functionId`),
  KEY `_key_trigger` (`trigger`),
  KEY `_key_status` (`status`),
  KEY `_key_statusCode` (`statusCode`),
  KEY `_key_duration` (`duration`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_executions`
--

LOCK TABLES `_console_executions` WRITE;
/*!40000 ALTER TABLE `_console_executions` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_executions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_executions_perms`
--

DROP TABLE IF EXISTS `_console_executions_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_executions_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_executions_perms`
--

LOCK TABLES `_console_executions_perms` WRITE;
/*!40000 ALTER TABLE `_console_executions_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_executions_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_functions`
--

DROP TABLE IF EXISTS `_console_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_functions` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `execute` longtext DEFAULT NULL,
  `name` varchar(2048) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `runtime` varchar(2048) DEFAULT NULL,
  `deployment` varchar(255) DEFAULT NULL,
  `vars` text DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `schedule` varchar(128) DEFAULT NULL,
  `scheduleUpdatedAt` datetime(3) DEFAULT NULL,
  `schedulePrevious` datetime(3) DEFAULT NULL,
  `scheduleNext` datetime(3) DEFAULT NULL,
  `timeout` int(11) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_name` (`name`(768)),
  KEY `_key_enabled` (`enabled`),
  KEY `_key_runtime` (`runtime`(768)),
  KEY `_key_deployment` (`deployment`),
  KEY `_key_schedule` (`schedule`),
  KEY `_key_scheduleNext` (`scheduleNext`),
  KEY `_key_schedulePrevious` (`schedulePrevious`),
  KEY `_key_timeout` (`timeout`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_functions`
--

LOCK TABLES `_console_functions` WRITE;
/*!40000 ALTER TABLE `_console_functions` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_functions_perms`
--

DROP TABLE IF EXISTS `_console_functions_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_functions_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_functions_perms`
--

LOCK TABLES `_console_functions_perms` WRITE;
/*!40000 ALTER TABLE `_console_functions_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_functions_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_indexes`
--

DROP TABLE IF EXISTS `_console_indexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_indexes` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `databaseInternalId` varchar(255) DEFAULT NULL,
  `databaseId` varchar(255) DEFAULT NULL,
  `collectionInternalId` varchar(255) DEFAULT NULL,
  `collectionId` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `attributes` longtext DEFAULT NULL,
  `lengths` longtext DEFAULT NULL,
  `orders` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_db_collection` (`databaseInternalId`,`collectionInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_indexes`
--

LOCK TABLES `_console_indexes` WRITE;
/*!40000 ALTER TABLE `_console_indexes` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_indexes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_indexes_perms`
--

DROP TABLE IF EXISTS `_console_indexes_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_indexes_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_indexes_perms`
--

LOCK TABLES `_console_indexes_perms` WRITE;
/*!40000 ALTER TABLE `_console_indexes_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_indexes_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_keys`
--

DROP TABLE IF EXISTS `_console_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_keys` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` longtext DEFAULT NULL,
  `secret` varchar(512) DEFAULT NULL,
  `expire` datetime(3) DEFAULT NULL,
  `accessedAt` datetime(3) DEFAULT NULL,
  `sdks` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_key_accessedAt` (`accessedAt`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_keys`
--

LOCK TABLES `_console_keys` WRITE;
/*!40000 ALTER TABLE `_console_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_keys_perms`
--

DROP TABLE IF EXISTS `_console_keys_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_keys_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_keys_perms`
--

LOCK TABLES `_console_keys_perms` WRITE;
/*!40000 ALTER TABLE `_console_keys_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_keys_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_memberships`
--

DROP TABLE IF EXISTS `_console_memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_memberships` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `teamInternalId` varchar(255) DEFAULT NULL,
  `teamId` varchar(255) DEFAULT NULL,
  `roles` longtext DEFAULT NULL,
  `invited` datetime(3) DEFAULT NULL,
  `joined` datetime(3) DEFAULT NULL,
  `confirm` tinyint(1) DEFAULT NULL,
  `secret` varchar(256) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_unique` (`teamInternalId`,`userInternalId`),
  KEY `_key_user` (`userInternalId`),
  KEY `_key_team` (`teamInternalId`),
  KEY `_key_userId` (`userId`),
  KEY `_key_teamId` (`teamId`),
  KEY `_key_invited` (`invited`),
  KEY `_key_joined` (`joined`),
  KEY `_key_confirm` (`confirm`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_memberships`
--

LOCK TABLES `_console_memberships` WRITE;
/*!40000 ALTER TABLE `_console_memberships` DISABLE KEYS */;
INSERT INTO `_console_memberships` VALUES
(1,'63b1f7180c7141c031cb','2023-01-01 21:11:52.051','2023-01-01 21:11:52.051','[\"read(\\\"user:63b1f70864242b93c492\\\")\",\"read(\\\"team:63b1f7180b540940220c\\\")\",\"update(\\\"user:63b1f70864242b93c492\\\")\",\"update(\\\"team:63b1f7180b540940220c\\/owner\\\")\",\"delete(\\\"user:63b1f70864242b93c492\\\")\",\"delete(\\\"team:63b1f7180b540940220c\\/owner\\\")\"]','1','63b1f70864242b93c492','1','63b1f7180b540940220c','[\"owner\"]','2023-01-01 21:11:52.051','2023-01-01 21:11:52.051',1,'{\"data\":\"\",\"method\":\"aes-128-gcm\",\"iv\":\"7bfd16874d24305f7f0a0ba7\",\"tag\":\"d42240448d256be1a6a989e81351a59e\",\"version\":\"1\"}','63b1f7180c7141c031cb 63b1f70864242b93c492');
/*!40000 ALTER TABLE `_console_memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_memberships_perms`
--

DROP TABLE IF EXISTS `_console_memberships_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_memberships_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_memberships_perms`
--

LOCK TABLES `_console_memberships_perms` WRITE;
/*!40000 ALTER TABLE `_console_memberships_perms` DISABLE KEYS */;
INSERT INTO `_console_memberships_perms` VALUES
(6,'delete','team:63b1f7180b540940220c/owner','63b1f7180c7141c031cb'),
(5,'delete','user:63b1f70864242b93c492','63b1f7180c7141c031cb'),
(2,'read','team:63b1f7180b540940220c','63b1f7180c7141c031cb'),
(1,'read','user:63b1f70864242b93c492','63b1f7180c7141c031cb'),
(4,'update','team:63b1f7180b540940220c/owner','63b1f7180c7141c031cb'),
(3,'update','user:63b1f70864242b93c492','63b1f7180c7141c031cb');
/*!40000 ALTER TABLE `_console_memberships_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_platforms`
--

DROP TABLE IF EXISTS `_console_platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_platforms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `store` varchar(256) DEFAULT NULL,
  `hostname` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_platforms`
--

LOCK TABLES `_console_platforms` WRITE;
/*!40000 ALTER TABLE `_console_platforms` DISABLE KEYS */;
INSERT INTO `_console_platforms` VALUES
(1,'63b1f79779e41fb37f84','2023-01-01 21:13:59.499','2023-01-01 21:13:59.499','[\"read(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','1','63b1f718287c1c2cf019','web','WebApp','','','localhost');
/*!40000 ALTER TABLE `_console_platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_platforms_perms`
--

DROP TABLE IF EXISTS `_console_platforms_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_platforms_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_platforms_perms`
--

LOCK TABLES `_console_platforms_perms` WRITE;
/*!40000 ALTER TABLE `_console_platforms_perms` DISABLE KEYS */;
INSERT INTO `_console_platforms_perms` VALUES
(3,'delete','any','63b1f79779e41fb37f84'),
(1,'read','any','63b1f79779e41fb37f84'),
(2,'update','any','63b1f79779e41fb37f84');
/*!40000 ALTER TABLE `_console_platforms_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_projects`
--

DROP TABLE IF EXISTS `_console_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_projects` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `teamInternalId` varchar(255) DEFAULT NULL,
  `teamId` varchar(255) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `region` varchar(128) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `version` varchar(16) DEFAULT NULL,
  `legalName` varchar(256) DEFAULT NULL,
  `legalCountry` varchar(256) DEFAULT NULL,
  `legalState` varchar(256) DEFAULT NULL,
  `legalCity` varchar(256) DEFAULT NULL,
  `legalAddress` varchar(256) DEFAULT NULL,
  `legalTaxId` varchar(256) DEFAULT NULL,
  `services` text DEFAULT NULL,
  `auths` text DEFAULT NULL,
  `authProviders` text DEFAULT NULL,
  `platforms` text DEFAULT NULL,
  `webhooks` text DEFAULT NULL,
  `keys` text DEFAULT NULL,
  `domains` text DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_key_team` (`teamId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_projects`
--

LOCK TABLES `_console_projects` WRITE;
/*!40000 ALTER TABLE `_console_projects` DISABLE KEYS */;
INSERT INTO `_console_projects` VALUES
(1,'63b1f718287c1c2cf019','2023-01-01 21:11:52.166','2023-01-01 21:11:52.166','[\"read(\\\"team:63b1f7180b540940220c\\\")\",\"update(\\\"team:63b1f7180b540940220c\\/owner\\\")\",\"update(\\\"team:63b1f7180b540940220c\\/developer\\\")\",\"delete(\\\"team:63b1f7180b540940220c\\/owner\\\")\",\"delete(\\\"team:63b1f7180b540940220c\\/developer\\\")\"]','1','63b1f7180b540940220c','TestProject','default','','','','1.2.0','','','','','','','{}','{\"limit\":0,\"maxSessions\":10,\"duration\":31536000,\"emailPassword\":true,\"usersAuthMagicURL\":true,\"anonymous\":true,\"invites\":true,\"JWT\":true,\"phone\":true}','{\"data\":\"hPA=\",\"method\":\"aes-128-gcm\",\"iv\":\"1afbd342af1f88ad1756be03\",\"tag\":\"37fe60f9872e32ce0ac2d9db5d4eb924\",\"version\":\"1\"}',NULL,NULL,NULL,NULL,'63b1f718287c1c2cf019 TestProject');
/*!40000 ALTER TABLE `_console_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_projects_perms`
--

DROP TABLE IF EXISTS `_console_projects_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_projects_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_projects_perms`
--

LOCK TABLES `_console_projects_perms` WRITE;
/*!40000 ALTER TABLE `_console_projects_perms` DISABLE KEYS */;
INSERT INTO `_console_projects_perms` VALUES
(5,'delete','team:63b1f7180b540940220c/developer','63b1f718287c1c2cf019'),
(4,'delete','team:63b1f7180b540940220c/owner','63b1f718287c1c2cf019'),
(1,'read','team:63b1f7180b540940220c','63b1f718287c1c2cf019'),
(3,'update','team:63b1f7180b540940220c/developer','63b1f718287c1c2cf019'),
(2,'update','team:63b1f7180b540940220c/owner','63b1f718287c1c2cf019');
/*!40000 ALTER TABLE `_console_projects_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_realtime`
--

DROP TABLE IF EXISTS `_console_realtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_realtime` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `container` varchar(255) DEFAULT NULL,
  `timestamp` datetime(3) DEFAULT NULL,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_timestamp` (`timestamp`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_realtime`
--

LOCK TABLES `_console_realtime` WRITE;
/*!40000 ALTER TABLE `_console_realtime` DISABLE KEYS */;
INSERT INTO `_console_realtime` VALUES
(1,'63b1f6c7edd5f7c15946','2023-01-01 21:10:31.985','2023-01-01 21:20:51.967','[]','63b1f6c29e1c6','2023-01-01 21:20:51.967','{\"console\":2}');
/*!40000 ALTER TABLE `_console_realtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_realtime_perms`
--

DROP TABLE IF EXISTS `_console_realtime_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_realtime_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_realtime_perms`
--

LOCK TABLES `_console_realtime_perms` WRITE;
/*!40000 ALTER TABLE `_console_realtime_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_realtime_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_sessions`
--

DROP TABLE IF EXISTS `_console_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_sessions` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `provider` varchar(128) DEFAULT NULL,
  `providerUid` varchar(2048) DEFAULT NULL,
  `providerAccessToken` text DEFAULT NULL,
  `providerAccessTokenExpiry` datetime(3) DEFAULT NULL,
  `providerRefreshToken` text DEFAULT NULL,
  `secret` varchar(512) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `countryCode` varchar(2) DEFAULT NULL,
  `osCode` varchar(256) DEFAULT NULL,
  `osName` varchar(256) DEFAULT NULL,
  `osVersion` varchar(256) DEFAULT NULL,
  `clientType` varchar(256) DEFAULT NULL,
  `clientCode` varchar(256) DEFAULT NULL,
  `clientName` varchar(256) DEFAULT NULL,
  `clientVersion` varchar(256) DEFAULT NULL,
  `clientEngine` varchar(256) DEFAULT NULL,
  `clientEngineVersion` varchar(256) DEFAULT NULL,
  `deviceName` varchar(256) DEFAULT NULL,
  `deviceBrand` varchar(256) DEFAULT NULL,
  `deviceModel` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_provider_providerUid` (`provider`(100),`providerUid`(100)),
  KEY `_key_user` (`userInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_sessions`
--

LOCK TABLES `_console_sessions` WRITE;
/*!40000 ALTER TABLE `_console_sessions` DISABLE KEYS */;
INSERT INTO `_console_sessions` VALUES
(1,'63b1f708ad198590455a','2023-01-01 21:11:37.063','2023-01-01 21:11:37.063','[\"read(\\\"user:63b1f70864242b93c492\\\")\",\"update(\\\"user:63b1f70864242b93c492\\\")\",\"delete(\\\"user:63b1f70864242b93c492\\\")\"]','1','63b1f70864242b93c492','email','admin@noemail.com',NULL,NULL,NULL,'{\"data\":\"MQKM2+Z8xOhQjUIcE9if9HjmeuD4xy8stoHYSSzPc7omXWJ89J3mpsQzs0RDyVwylPfas2UyT3eMsxmG+mIrVw==\",\"method\":\"aes-128-gcm\",\"iv\":\"ade34a0dac1958cd6d252f83\",\"tag\":\"9288a58fdd5f05f1158a26bf870214ca\",\"version\":\"1\"}','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36','192.168.94.8','--','MAC','Mac','10.14','browser','CH','Chrome','108.0','Blink','108.0.0.0','desktop','Apple','');
/*!40000 ALTER TABLE `_console_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_sessions_perms`
--

DROP TABLE IF EXISTS `_console_sessions_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_sessions_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_sessions_perms`
--

LOCK TABLES `_console_sessions_perms` WRITE;
/*!40000 ALTER TABLE `_console_sessions_perms` DISABLE KEYS */;
INSERT INTO `_console_sessions_perms` VALUES
(3,'delete','user:63b1f70864242b93c492','63b1f708ad198590455a'),
(1,'read','user:63b1f70864242b93c492','63b1f708ad198590455a'),
(2,'update','user:63b1f70864242b93c492','63b1f708ad198590455a');
/*!40000 ALTER TABLE `_console_sessions_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_stats`
--

DROP TABLE IF EXISTS `_console_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_stats` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `metric` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `value` bigint(20) unsigned DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `period` varchar(4) DEFAULT NULL,
  `type` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_time` (`time`),
  KEY `_key_period_time` (`period`,`time`),
  KEY `_key_metric_period_time` (`metric`,`period`,`time`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_stats`
--

LOCK TABLES `_console_stats` WRITE;
/*!40000 ALTER TABLE `_console_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_stats_perms`
--

DROP TABLE IF EXISTS `_console_stats_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_stats_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_stats_perms`
--

LOCK TABLES `_console_stats_perms` WRITE;
/*!40000 ALTER TABLE `_console_stats_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_stats_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_teams`
--

DROP TABLE IF EXISTS `_console_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_teams` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_key_total` (`total`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_teams`
--

LOCK TABLES `_console_teams` WRITE;
/*!40000 ALTER TABLE `_console_teams` DISABLE KEYS */;
INSERT INTO `_console_teams` VALUES
(1,'63b1f7180b540940220c','2023-01-01 21:11:52.046','2023-01-01 21:11:52.046','[\"read(\\\"team:63b1f7180b540940220c\\\")\",\"update(\\\"team:63b1f7180b540940220c\\/owner\\\")\",\"delete(\\\"team:63b1f7180b540940220c\\/owner\\\")\"]','Personal Projects',1,'63b1f7180b540940220c Personal Projects');
/*!40000 ALTER TABLE `_console_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_teams_perms`
--

DROP TABLE IF EXISTS `_console_teams_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_teams_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_teams_perms`
--

LOCK TABLES `_console_teams_perms` WRITE;
/*!40000 ALTER TABLE `_console_teams_perms` DISABLE KEYS */;
INSERT INTO `_console_teams_perms` VALUES
(3,'delete','team:63b1f7180b540940220c/owner','63b1f7180b540940220c'),
(1,'read','team:63b1f7180b540940220c','63b1f7180b540940220c'),
(2,'update','team:63b1f7180b540940220c/owner','63b1f7180b540940220c');
/*!40000 ALTER TABLE `_console_teams_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_tokens`
--

DROP TABLE IF EXISTS `_console_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_tokens` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `secret` varchar(512) DEFAULT NULL,
  `expire` datetime(3) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_user` (`userInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_tokens`
--

LOCK TABLES `_console_tokens` WRITE;
/*!40000 ALTER TABLE `_console_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_tokens_perms`
--

DROP TABLE IF EXISTS `_console_tokens_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_tokens_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_tokens_perms`
--

LOCK TABLES `_console_tokens_perms` WRITE;
/*!40000 ALTER TABLE `_console_tokens_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_tokens_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_users`
--

DROP TABLE IF EXISTS `_console_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_users` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `hash` varchar(256) DEFAULT NULL,
  `hashOptions` text DEFAULT NULL,
  `passwordUpdate` datetime(3) DEFAULT NULL,
  `prefs` text DEFAULT NULL,
  `registration` datetime(3) DEFAULT NULL,
  `emailVerification` tinyint(1) DEFAULT NULL,
  `phoneVerification` tinyint(1) DEFAULT NULL,
  `reset` tinyint(1) DEFAULT NULL,
  `sessions` text DEFAULT NULL,
  `tokens` text DEFAULT NULL,
  `memberships` text DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_email` (`email`),
  UNIQUE KEY `_key_phone` (`phone`),
  KEY `_key_name` (`name`),
  KEY `_key_status` (`status`),
  KEY `_key_passwordUpdate` (`passwordUpdate`),
  KEY `_key_registration` (`registration`),
  KEY `_key_emailVerification` (`emailVerification`),
  KEY `_key_phoneVerification` (`phoneVerification`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_users`
--

LOCK TABLES `_console_users` WRITE;
/*!40000 ALTER TABLE `_console_users` DISABLE KEYS */;
INSERT INTO `_console_users` VALUES
(1,'63b1f70864242b93c492','2023-01-01 21:11:36.510','2023-01-01 21:11:36.510','[\"read(\\\"any\\\")\",\"update(\\\"user:63b1f70864242b93c492\\\")\",\"delete(\\\"user:63b1f70864242b93c492\\\")\"]','admin','admin@noemail.com',NULL,1,'{\"data\":\"E+GHNKTdDMd6CaXxUW2exl1qXPmhmJg8VjRCnsGYkt8gv5nLUow\\/v\\/UcfLFJoJgCJJdaF\\/RlNiJDBcXxC88Y\\/Q7w96oNME7ka2x7R6Ha3ceaMFbdk0qjRpxdBCvhbr2ptg==\",\"method\":\"aes-128-gcm\",\"iv\":\"7cf6503d27694e1c982296b0\",\"tag\":\"6c5a252e7e7191430526e655d0b0cac9\",\"version\":\"1\"}','argon2','{\"type\":\"argon2\",\"memoryCost\":2048,\"timeCost\":4,\"threads\":3}','2023-01-01 21:11:36.509','{}','2023-01-01 21:11:36.509',0,NULL,0,NULL,NULL,NULL,'63b1f70864242b93c492 admin@noemail.com admin');
/*!40000 ALTER TABLE `_console_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_users_perms`
--

DROP TABLE IF EXISTS `_console_users_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_users_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_users_perms`
--

LOCK TABLES `_console_users_perms` WRITE;
/*!40000 ALTER TABLE `_console_users_perms` DISABLE KEYS */;
INSERT INTO `_console_users_perms` VALUES
(3,'delete','user:63b1f70864242b93c492','63b1f70864242b93c492'),
(1,'read','any','63b1f70864242b93c492'),
(2,'update','user:63b1f70864242b93c492','63b1f70864242b93c492');
/*!40000 ALTER TABLE `_console_users_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_variables`
--

DROP TABLE IF EXISTS `_console_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_variables` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `functionInternalId` varchar(255) DEFAULT NULL,
  `functionId` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(8192) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_uniqueKey` (`functionInternalId`,`key`),
  KEY `_key_function` (`functionInternalId`),
  KEY `_key_key` (`key`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_variables`
--

LOCK TABLES `_console_variables` WRITE;
/*!40000 ALTER TABLE `_console_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_variables_perms`
--

DROP TABLE IF EXISTS `_console_variables_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_variables_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_variables_perms`
--

LOCK TABLES `_console_variables_perms` WRITE;
/*!40000 ALTER TABLE `_console_variables_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_variables_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_webhooks`
--

DROP TABLE IF EXISTS `_console_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_webhooks` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `httpUser` varchar(255) DEFAULT NULL,
  `httpPass` varchar(255) DEFAULT NULL,
  `security` tinyint(1) DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `signatureKey` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_webhooks`
--

LOCK TABLES `_console_webhooks` WRITE;
/*!40000 ALTER TABLE `_console_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_webhooks_perms`
--

DROP TABLE IF EXISTS `_console_webhooks_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_webhooks_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_webhooks_perms`
--

LOCK TABLES `_console_webhooks_perms` WRITE;
/*!40000 ALTER TABLE `_console_webhooks_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_webhooks_perms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-01 21:20:54
