-- MySQL dump 10.13  Distrib 5.7.44, for osx10.19 (x86_64)
--
-- Host: 127.0.0.1    Database: botble
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'EwQelNUrQ5znFtTxSVoeBCFjX8CrcPh0',1,'2024-07-10 19:54:51','2024-07-10 19:54:51','2024-07-10 19:54:51');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blocks_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` VALUES (1,'Reagan Cassin','reagan-cassin','Est vitae dolorem a corporis.','Repellat mollitia et nihil vero laborum ducimus corrupti. Et harum ut ad eos aut sit ut. Ut ut sed molestiae aut quisquam voluptates consequatur. Eveniet itaque temporibus numquam molestiae soluta ea. Iusto voluptatibus quas laboriosam laborum adipisci. Aut qui incidunt sunt debitis inventore et id. Eveniet quo voluptas inventore et ea est exercitationem. Odit et architecto dolor reiciendis aut labore.','published',NULL,'2024-07-10 19:54:56','2024-07-10 19:54:56'),(2,'Kristina Mante','kristina-mante','Perspiciatis debitis facere est quis.','Doloribus hic id quam odit. Ad dolor totam reiciendis culpa. Impedit perspiciatis ea fugit quos aliquam. Unde dolore molestias eveniet voluptas. Harum consequuntur quo dolores vero blanditiis aut sit. Corrupti labore ut esse et temporibus qui. Eaque sit distinctio enim ea nemo est. Aut ipsa pariatur placeat cum dolores. Eligendi voluptates natus temporibus omnis similique est dolorum.','published',NULL,'2024-07-10 19:54:56','2024-07-10 19:54:56'),(3,'Bradly Streich V','bradly-streich-v','Dicta rem ullam nam reiciendis.','Non aut eveniet sequi possimus eos est. Et ipsam dolores numquam accusantium sit et. Eum natus tempora consequatur. Velit quo quisquam et esse perferendis. Eos aut in esse autem porro laboriosam. Corrupti id unde necessitatibus unde quisquam rem rerum delectus. Quo debitis accusamus quia aut. Sunt delectus et aut ipsa consequuntur in. Occaecati qui aspernatur est et dolores inventore et saepe. Nisi magni dolorem nemo a deserunt.','published',NULL,'2024-07-10 19:54:56','2024-07-10 19:54:56'),(4,'Jarod Lehner','jarod-lehner','Voluptas quos debitis sunt.','Voluptatem eius consequuntur voluptas quis adipisci numquam perspiciatis. Possimus sit hic ullam facilis quo. Molestiae dolorem labore ipsa pariatur accusamus quis. Voluptatem et eaque iusto ut voluptatem eum placeat. Dolor animi occaecati omnis eum cupiditate. Voluptas consectetur molestias rerum sunt ut ut. Quod quisquam commodi expedita quo debitis et. Ducimus aliquam expedita et et esse illum. Velit ut corrupti et molestiae. Eos iste ut repellat quis et asperiores et et.','published',NULL,'2024-07-10 19:54:56','2024-07-10 19:54:56'),(5,'Tyra Gusikowski','tyra-gusikowski','Non eos sit provident.','Labore odio quasi dolorem maxime molestias voluptatum et et. Earum commodi corrupti non et quis doloremque cumque. Nulla nihil et voluptate animi. Qui et voluptatibus quam vero. Exercitationem saepe sed rerum. Blanditiis expedita quam aliquam. Vel quos animi ut quis omnis. Ipsam ut ullam architecto accusamus. Consequuntur suscipit dolore fuga reprehenderit vero aliquid. A dolorum dolorem consequatur beatae aut totam. Dicta enim quia expedita soluta sequi possimus est.','published',NULL,'2024-07-10 19:54:56','2024-07-10 19:54:56');
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks_translations`
--

DROP TABLE IF EXISTS `blocks_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocks_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blocks_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`blocks_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks_translations`
--

LOCK TABLES `blocks_translations` WRITE;
/*!40000 ALTER TABLE `blocks_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocks_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Artificial Intelligence',0,'Distinctio dolores rerum vitae quam qui modi. Ipsa aliquid sint nesciunt atque animi sunt. Dolores et eius facilis. Vel necessitatibus et voluptatem doloremque soluta iste aliquam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(2,'Cybersecurity',0,'Numquam pariatur sequi minus laboriosam ipsum. Possimus maxime facere sit aliquam. Molestiae iste deleniti est iure aliquam similique aspernatur. Velit voluptatem saepe facilis quia quibusdam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(3,'Blockchain Technology',0,'Et qui quidem labore. Qui labore in sed sed repellat. Nesciunt ut qui id voluptatem blanditiis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(4,'5G and Connectivity',0,'Temporibus alias adipisci quas libero. Quae doloremque error et aut soluta est corrupti. Sequi et ullam inventore consequatur iure rerum tempora.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(5,'Augmented Reality (AR)',0,'Ut enim facere ab reiciendis non. Quis modi cumque enim nostrum ut ut. Fuga et pariatur placeat eum modi incidunt itaque.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(6,'Green Technology',0,'At consequatur id amet doloribus hic temporibus. Quibusdam veritatis debitis eum repellendus atque. Ut nam nesciunt exercitationem perspiciatis praesentium dicta.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(7,'Quantum Computing',0,'Cum repudiandae ipsa nam sequi beatae. Saepe reiciendis consequatur nam placeat est ipsum aut magnam. Eaque laborum debitis natus nulla quo ut quibusdam aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(8,'Edge Computing',0,'Aperiam soluta iste qui doloremque et. Illo dolores eveniet ad libero aliquid quia. Ipsum accusamus et esse optio totam molestias quidem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-07-10 19:54:52','2024-07-10 19:54:52');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Carmella Ortiz I','fernando42@example.net','+1-959-413-3858','2762 Dasia Tunnel\nLake Matildefurt, NE 54045','Optio officiis odio nihil nihil ipsum libero et.','Velit magnam ut qui suscipit ut eveniet. Consequuntur et necessitatibus sunt consequatur assumenda. Labore exercitationem repudiandae consequatur. Laboriosam non aut et quia. Et repellat repellendus autem nihil perspiciatis quia error nisi. Rerum labore nesciunt sit est. Ut voluptas placeat vero velit nobis. Repudiandae fugit natus perferendis nam excepturi doloribus ea.',NULL,'read','2024-07-10 19:54:56','2024-07-10 19:54:56'),(2,'Fausto Wolff','zieme.virginia@example.net','463-786-8918','21706 Gleason Forges\nDeeside, IL 11619','Aliquid suscipit autem laudantium mollitia.','Et doloribus maxime facere repudiandae officiis magni laudantium. Enim ut deleniti dolorem provident. Optio minima dignissimos magnam dolores ipsum incidunt illum. Nihil mollitia cumque optio delectus est illum reprehenderit. Vitae voluptatem quod assumenda labore sequi molestias. Eveniet omnis excepturi ad expedita quae voluptatum. Dolore error saepe qui minus maiores. Incidunt molestiae et expedita. Ut vitae quia in et illo. Placeat qui voluptate ut.',NULL,'read','2024-07-10 19:54:56','2024-07-10 19:54:56'),(3,'Mrs. Eva Quitzon V','bernadine05@example.net','+12289396531','8819 Mercedes Views Suite 607\nNew Darenburgh, IL 15510-6900','Ducimus nam omnis labore possimus.','Omnis excepturi voluptates rerum rerum. Voluptatem nostrum totam inventore ex. Velit quo cumque ea nihil est optio. Quas omnis qui iure praesentium rem. Explicabo sed maiores velit ipsum fugit. Ullam laudantium et labore repellendus. Dolorum voluptatum dicta officia eum. Aut sunt ut harum occaecati voluptatem.',NULL,'read','2024-07-10 19:54:56','2024-07-10 19:54:56'),(4,'Macie Botsford','cfahey@example.com','360.971.4191','65726 Amya Lane\nSouth Michel, HI 72035-6312','Molestiae consequatur eos illo quam.','Nihil consequatur sed in reprehenderit quaerat. Accusamus quod voluptas in nemo consectetur et. Iste nulla quae aut porro corporis veniam doloribus numquam. Autem dolor itaque provident dicta aut autem architecto. Sit maiores est veritatis saepe. Et temporibus deserunt maxime repellat. Eaque dolorem consectetur praesentium ad. Dolor voluptates ullam sunt id occaecati enim. Architecto cum ullam a ratione eos quia nemo. Dolores qui autem enim.',NULL,'read','2024-07-10 19:54:56','2024-07-10 19:54:56'),(5,'Rosamond Osinski','balistreri.alexis@example.net','802.888.5221','31689 Aglae Estate Suite 173\nGibsonville, MO 69612-5222','Cupiditate ut sunt exercitationem illum et.','Et error aut nemo qui voluptatum distinctio. Voluptatum magnam deserunt omnis autem iusto aut. Ex eos dolor molestiae dolores. Omnis ut iusto deserunt cumque. Enim minus minus et non nihil quasi. Eius doloribus laudantium sit et aliquam necessitatibus doloribus. Laboriosam a vel ea necessitatibus qui et omnis. Doloremque id dignissimos eum laudantium quia quis.',NULL,'read','2024-07-10 19:54:56','2024-07-10 19:54:56'),(6,'Roma Bernier','linwood.nitzsche@example.com','(341) 569-1536','8574 Vernie Ridge Apt. 403\nEast Marge, TN 45464-3657','Quia aspernatur eius corporis repellendus.','Doloribus autem officia qui occaecati repellendus dignissimos. Perferendis sed quidem assumenda voluptates. Distinctio consectetur ea corrupti voluptatem alias. Recusandae soluta voluptatum aliquid blanditiis quo omnis enim mollitia. Non laborum vel quia velit consectetur qui voluptatem vitae. Enim est qui id vero temporibus eaque ratione. Minus dolor expedita at dolor. Sequi occaecati incidunt vel perferendis in aperiam. Id eligendi necessitatibus et atque.',NULL,'read','2024-07-10 19:54:56','2024-07-10 19:54:56'),(7,'Ernestina Gorczany','horace.metz@example.net','(629) 205-0420','16916 Miller Skyway Apt. 937\nNorth Kaya, TN 28544','Possimus et excepturi doloribus aut sit.','Molestiae itaque dolores et molestiae quasi ut explicabo. Non aut similique pariatur in. Possimus esse dolor in. Est aliquam commodi numquam quidem quae quia doloribus. Quidem nam doloremque est qui. Suscipit aut laboriosam sunt ex a quia error quo. Non est consequatur eum aliquam. Occaecati consectetur quas odio aspernatur at soluta quia. Neque est aspernatur fuga. Sapiente similique nostrum et aliquam sit sint vel. Quam quaerat quia rerum in. Eaque excepturi rerum neque quo molestiae et.',NULL,'read','2024-07-10 19:54:56','2024-07-10 19:54:56'),(8,'Murray Kuphal','blick.sophie@example.com','1-563-888-5906','50419 Santa Ford Apt. 501\nAufderharberg, HI 79692-2096','Qui molestiae error aut reprehenderit et dolorum.','A harum minima reiciendis ipsum repellendus dolor labore magni. Aliquid id adipisci ab id. Sed dolores amet laborum omnis fugiat dolor a ipsa. Minus laudantium veniam nobis et velit temporibus ea. Est sapiente eum natus minus. Voluptatem rerum ut consequuntur placeat consequatur eius dignissimos.',NULL,'unread','2024-07-10 19:54:56','2024-07-10 19:54:56'),(9,'Myah Heaney','sedrick.mckenzie@example.org','1-541-625-4389','941 Kertzmann Meadows\nGreenton, WY 20639-1520','Accusantium aut voluptatum et modi sit harum.','Ea reprehenderit at quia consequatur veritatis. Provident consequatur iste nemo et modi. Voluptatibus eum natus dolores. Enim odit eveniet quibusdam molestiae quam ea. Porro sunt nulla ut quis sapiente ipsum. Non aut dolores praesentium expedita esse recusandae consectetur. Ipsum animi sed autem doloribus.',NULL,'unread','2024-07-10 19:54:56','2024-07-10 19:54:56'),(10,'Terrell Ratke','jazlyn25@example.com','+1-323-295-6706','434 Norbert Green Apt. 694\nToyton, NJ 57802','Ipsum libero ea ut dolorem.','Ducimus sit autem itaque quia et. Distinctio amet ea blanditiis ad temporibus dicta. Totam qui assumenda recusandae magni. Ducimus expedita quia voluptate possimus voluptate. Quibusdam commodi quia et aliquam vel. Totam tempora a dolore maxime ea quaerat quo. Nihil assumenda praesentium non similique officiis. Dolorem enim eos ut et maxime optio rerum. Et quam quia non. Dignissimos fugiat possimus in et nihil. Reiciendis sapiente consectetur voluptatem ut. Sit ut eos est veritatis nihil.',NULL,'read','2024-07-10 19:54:56','2024-07-10 19:54:56');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `use_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_for_id` bigint unsigned NOT NULL,
  `field_item_id` bigint unsigned NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `custom_fields_field_item_id_index` (`field_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_translations`
--

DROP TABLE IF EXISTS `custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_translations`
--

LOCK TABLES `custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_groups`
--

DROP TABLE IF EXISTS `field_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '0',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_groups_created_by_index` (`created_by`),
  KEY `field_groups_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_groups`
--

LOCK TABLES `field_groups` WRITE;
/*!40000 ALTER TABLE `field_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_items`
--

DROP TABLE IF EXISTS `field_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `field_group_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `order` int DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `field_items_field_group_id_index` (`field_group_id`),
  KEY `field_items_parent_id_index` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_items`
--

LOCK TABLES `field_items` WRITE;
/*!40000 ALTER TABLE `field_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Sunset','Voluptatem voluptatibus libero optio eos asperiores sed. Unde aperiam voluptatem dolorem.',1,0,'news/6.jpg',1,'published','2024-07-10 19:54:53','2024-07-10 19:54:53'),(2,'Ocean Views','Officiis corporis enim voluptas. Ex ipsum molestiae incidunt qui aut. Consequatur sapiente suscipit voluptates voluptas voluptate.',1,0,'news/7.jpg',1,'published','2024-07-10 19:54:53','2024-07-10 19:54:53'),(3,'Adventure Time','Animi sequi et aut eos. Assumenda voluptas magni est veritatis impedit tempore. Et velit aliquam praesentium quis mollitia possimus provident.',1,0,'news/8.jpg',1,'published','2024-07-10 19:54:53','2024-07-10 19:54:53'),(4,'City Lights','Aliquam repellat aut et architecto dolores tempore modi. Ea iste voluptatibus tempore quis modi.',1,0,'news/9.jpg',1,'published','2024-07-10 19:54:53','2024-07-10 19:54:53'),(5,'Dreamscape','Rerum ut corrupti ex. Quia qui rerum non. Sequi quam et consequuntur expedita.',1,0,'news/10.jpg',1,'published','2024-07-10 19:54:53','2024-07-10 19:54:53'),(6,'Enchanted Forest','Facilis accusamus recusandae est deserunt. In quasi ab est voluptas eum dolores.',1,0,'news/11.jpg',1,'published','2024-07-10 19:54:53','2024-07-10 19:54:53'),(7,'Golden Hour','Maxime magni accusantium quis sit corporis. Architecto dolores sed et quo. Enim nostrum ipsam recusandae qui non laudantium placeat dolores.',0,0,'news/12.jpg',1,'published','2024-07-10 19:54:53','2024-07-10 19:54:53'),(8,'Serenity','Id consectetur aut quis provident nisi perspiciatis. Et voluptatem qui nihil. Blanditiis ratione ipsa id maiores cumque. Rem et unde quas possimus.',0,0,'news/13.jpg',1,'published','2024-07-10 19:54:53','2024-07-10 19:54:53'),(9,'Eternal Beauty','Libero quo et eligendi nostrum vel voluptas consequatur. Animi amet totam molestiae. Ea perferendis consequatur saepe quod eum id sint.',0,0,'news/14.jpg',1,'published','2024-07-10 19:54:53','2024-07-10 19:54:53'),(10,'Moonlight Magic','Eligendi ut voluptatum repellat molestiae facere et. Autem provident aut voluptatibus. Et esse distinctio est quisquam porro ab ipsum debitis.',0,0,'news/15.jpg',1,'published','2024-07-10 19:54:53','2024-07-10 19:54:53'),(11,'Starry Night','Temporibus porro vero magni. Labore adipisci aut repellat reprehenderit fuga. Consequuntur eum sint tenetur vel eius veritatis aut omnis.',0,0,'news/16.jpg',1,'published','2024-07-10 19:54:53','2024-07-10 19:54:53'),(12,'Hidden Gems','Voluptatum modi perferendis dignissimos et sunt incidunt deserunt molestias. Architecto quasi voluptatibus ut vitae rerum.',0,0,'news/17.jpg',1,'published','2024-07-10 19:54:53','2024-07-10 19:54:53'),(13,'Tranquil Waters','Ea magnam sed quae molestias et nam consequatur autem. Repellendus quidem non voluptas suscipit. Voluptatem et temporibus beatae est quod maiores ab.',0,0,'news/18.jpg',1,'published','2024-07-10 19:54:53','2024-07-10 19:54:53'),(14,'Urban Escape','Perspiciatis facilis asperiores suscipit sed. Ut blanditiis ea eum officiis. Nobis dicta ab dolorem et cupiditate voluptates voluptate.',0,0,'news/19.jpg',1,'published','2024-07-10 19:54:53','2024-07-10 19:54:53'),(15,'Twilight Zone','Accusantium animi enim nihil quisquam possimus aliquam excepturi enim. At asperiores ipsam sed autem ut animi consequatur non.',0,0,'news/20.jpg',1,'published','2024-07-10 19:54:53','2024-07-10 19:54:53');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"news\\/1.jpg\",\"description\":\"At eligendi expedita rerum nisi cupiditate occaecati. Iste asperiores aut autem repellendus ut at. Non repudiandae consequatur cumque rem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quia quasi quisquam magnam necessitatibus laudantium beatae. Numquam rerum nobis autem pariatur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ratione qui numquam tempora molestiae sit omnis sit. Magnam quod sed cum magnam exercitationem voluptatem ad.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Molestiae ea vero cumque suscipit atque et. Ut suscipit eveniet praesentium magnam nihil. Dolores et voluptate cum rerum dolorem quia.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ea sapiente nisi corporis assumenda ea. Omnis sit nihil saepe a. Vero voluptatum deserunt deleniti nam repellat debitis molestias.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Sed veritatis perferendis aliquam neque nisi incidunt. Id laudantium commodi inventore culpa aperiam laudantium qui. Sint incidunt sit cumque est.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Quia corporis quidem dolorum enim sit veniam. Ut asperiores qui quidem mollitia. Molestias occaecati error aut sapiente dolor beatae.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Deserunt commodi iste eos qui nisi voluptas. Accusantium aliquam ex voluptas.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Corrupti aperiam quae aliquam vel laudantium odit molestiae. Ullam labore eius fugit. Vitae quod unde quos sit. Atque facere perferendis iste qui.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Suscipit hic voluptatum voluptates consequatur. Placeat aut aut ut temporibus blanditiis hic. Non quaerat non sed aut rerum et cum.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Qui quas saepe hic hic non deserunt et recusandae. Tenetur cumque autem rerum ut. Dolorem inventore amet officiis voluptatem. Ea et non aut rerum.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Similique labore doloribus veniam animi. Tempora ducimus nisi culpa sunt pariatur.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Neque sed sed rerum. Nisi dolorem nihil reprehenderit. Ut debitis nihil in aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Quae quo error odio quia sequi voluptate. Nulla labore explicabo voluptas tempore consequatur.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Nobis non eligendi iste facilis distinctio ut. Maxime sed dolores laudantium. Atque quia recusandae modi eos amet.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Non et cum soluta temporibus voluptatem omnis et. Ipsum aut nemo error. Necessitatibus iste minus praesentium.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ea omnis voluptas assumenda optio suscipit odio vel. Incidunt dolores assumenda quia odio. Tempora quibusdam sapiente sunt ut dolor.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Minus debitis cumque sunt aut odio eligendi. Quia aliquid aut dolores earum voluptatem veritatis voluptatem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Assumenda reiciendis ipsa officia et fugiat est cum labore. Autem in et aut rem.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Maxime et quibusdam et cupiditate. A possimus rerum facere ad.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-07-10 19:54:53','2024-07-10 19:54:53'),(2,'[{\"img\":\"news\\/1.jpg\",\"description\":\"At eligendi expedita rerum nisi cupiditate occaecati. Iste asperiores aut autem repellendus ut at. Non repudiandae consequatur cumque rem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quia quasi quisquam magnam necessitatibus laudantium beatae. Numquam rerum nobis autem pariatur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ratione qui numquam tempora molestiae sit omnis sit. Magnam quod sed cum magnam exercitationem voluptatem ad.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Molestiae ea vero cumque suscipit atque et. Ut suscipit eveniet praesentium magnam nihil. Dolores et voluptate cum rerum dolorem quia.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ea sapiente nisi corporis assumenda ea. Omnis sit nihil saepe a. Vero voluptatum deserunt deleniti nam repellat debitis molestias.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Sed veritatis perferendis aliquam neque nisi incidunt. Id laudantium commodi inventore culpa aperiam laudantium qui. Sint incidunt sit cumque est.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Quia corporis quidem dolorum enim sit veniam. Ut asperiores qui quidem mollitia. Molestias occaecati error aut sapiente dolor beatae.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Deserunt commodi iste eos qui nisi voluptas. Accusantium aliquam ex voluptas.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Corrupti aperiam quae aliquam vel laudantium odit molestiae. Ullam labore eius fugit. Vitae quod unde quos sit. Atque facere perferendis iste qui.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Suscipit hic voluptatum voluptates consequatur. Placeat aut aut ut temporibus blanditiis hic. Non quaerat non sed aut rerum et cum.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Qui quas saepe hic hic non deserunt et recusandae. Tenetur cumque autem rerum ut. Dolorem inventore amet officiis voluptatem. Ea et non aut rerum.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Similique labore doloribus veniam animi. Tempora ducimus nisi culpa sunt pariatur.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Neque sed sed rerum. Nisi dolorem nihil reprehenderit. Ut debitis nihil in aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Quae quo error odio quia sequi voluptate. Nulla labore explicabo voluptas tempore consequatur.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Nobis non eligendi iste facilis distinctio ut. Maxime sed dolores laudantium. Atque quia recusandae modi eos amet.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Non et cum soluta temporibus voluptatem omnis et. Ipsum aut nemo error. Necessitatibus iste minus praesentium.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ea omnis voluptas assumenda optio suscipit odio vel. Incidunt dolores assumenda quia odio. Tempora quibusdam sapiente sunt ut dolor.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Minus debitis cumque sunt aut odio eligendi. Quia aliquid aut dolores earum voluptatem veritatis voluptatem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Assumenda reiciendis ipsa officia et fugiat est cum labore. Autem in et aut rem.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Maxime et quibusdam et cupiditate. A possimus rerum facere ad.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-07-10 19:54:53','2024-07-10 19:54:53'),(3,'[{\"img\":\"news\\/1.jpg\",\"description\":\"At eligendi expedita rerum nisi cupiditate occaecati. Iste asperiores aut autem repellendus ut at. Non repudiandae consequatur cumque rem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quia quasi quisquam magnam necessitatibus laudantium beatae. Numquam rerum nobis autem pariatur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ratione qui numquam tempora molestiae sit omnis sit. Magnam quod sed cum magnam exercitationem voluptatem ad.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Molestiae ea vero cumque suscipit atque et. Ut suscipit eveniet praesentium magnam nihil. Dolores et voluptate cum rerum dolorem quia.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ea sapiente nisi corporis assumenda ea. Omnis sit nihil saepe a. Vero voluptatum deserunt deleniti nam repellat debitis molestias.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Sed veritatis perferendis aliquam neque nisi incidunt. Id laudantium commodi inventore culpa aperiam laudantium qui. Sint incidunt sit cumque est.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Quia corporis quidem dolorum enim sit veniam. Ut asperiores qui quidem mollitia. Molestias occaecati error aut sapiente dolor beatae.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Deserunt commodi iste eos qui nisi voluptas. Accusantium aliquam ex voluptas.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Corrupti aperiam quae aliquam vel laudantium odit molestiae. Ullam labore eius fugit. Vitae quod unde quos sit. Atque facere perferendis iste qui.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Suscipit hic voluptatum voluptates consequatur. Placeat aut aut ut temporibus blanditiis hic. Non quaerat non sed aut rerum et cum.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Qui quas saepe hic hic non deserunt et recusandae. Tenetur cumque autem rerum ut. Dolorem inventore amet officiis voluptatem. Ea et non aut rerum.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Similique labore doloribus veniam animi. Tempora ducimus nisi culpa sunt pariatur.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Neque sed sed rerum. Nisi dolorem nihil reprehenderit. Ut debitis nihil in aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Quae quo error odio quia sequi voluptate. Nulla labore explicabo voluptas tempore consequatur.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Nobis non eligendi iste facilis distinctio ut. Maxime sed dolores laudantium. Atque quia recusandae modi eos amet.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Non et cum soluta temporibus voluptatem omnis et. Ipsum aut nemo error. Necessitatibus iste minus praesentium.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ea omnis voluptas assumenda optio suscipit odio vel. Incidunt dolores assumenda quia odio. Tempora quibusdam sapiente sunt ut dolor.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Minus debitis cumque sunt aut odio eligendi. Quia aliquid aut dolores earum voluptatem veritatis voluptatem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Assumenda reiciendis ipsa officia et fugiat est cum labore. Autem in et aut rem.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Maxime et quibusdam et cupiditate. A possimus rerum facere ad.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-07-10 19:54:53','2024-07-10 19:54:53'),(4,'[{\"img\":\"news\\/1.jpg\",\"description\":\"At eligendi expedita rerum nisi cupiditate occaecati. Iste asperiores aut autem repellendus ut at. Non repudiandae consequatur cumque rem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quia quasi quisquam magnam necessitatibus laudantium beatae. Numquam rerum nobis autem pariatur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ratione qui numquam tempora molestiae sit omnis sit. Magnam quod sed cum magnam exercitationem voluptatem ad.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Molestiae ea vero cumque suscipit atque et. Ut suscipit eveniet praesentium magnam nihil. Dolores et voluptate cum rerum dolorem quia.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ea sapiente nisi corporis assumenda ea. Omnis sit nihil saepe a. Vero voluptatum deserunt deleniti nam repellat debitis molestias.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Sed veritatis perferendis aliquam neque nisi incidunt. Id laudantium commodi inventore culpa aperiam laudantium qui. Sint incidunt sit cumque est.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Quia corporis quidem dolorum enim sit veniam. Ut asperiores qui quidem mollitia. Molestias occaecati error aut sapiente dolor beatae.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Deserunt commodi iste eos qui nisi voluptas. Accusantium aliquam ex voluptas.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Corrupti aperiam quae aliquam vel laudantium odit molestiae. Ullam labore eius fugit. Vitae quod unde quos sit. Atque facere perferendis iste qui.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Suscipit hic voluptatum voluptates consequatur. Placeat aut aut ut temporibus blanditiis hic. Non quaerat non sed aut rerum et cum.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Qui quas saepe hic hic non deserunt et recusandae. Tenetur cumque autem rerum ut. Dolorem inventore amet officiis voluptatem. Ea et non aut rerum.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Similique labore doloribus veniam animi. Tempora ducimus nisi culpa sunt pariatur.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Neque sed sed rerum. Nisi dolorem nihil reprehenderit. Ut debitis nihil in aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Quae quo error odio quia sequi voluptate. Nulla labore explicabo voluptas tempore consequatur.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Nobis non eligendi iste facilis distinctio ut. Maxime sed dolores laudantium. Atque quia recusandae modi eos amet.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Non et cum soluta temporibus voluptatem omnis et. Ipsum aut nemo error. Necessitatibus iste minus praesentium.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ea omnis voluptas assumenda optio suscipit odio vel. Incidunt dolores assumenda quia odio. Tempora quibusdam sapiente sunt ut dolor.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Minus debitis cumque sunt aut odio eligendi. Quia aliquid aut dolores earum voluptatem veritatis voluptatem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Assumenda reiciendis ipsa officia et fugiat est cum labore. Autem in et aut rem.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Maxime et quibusdam et cupiditate. A possimus rerum facere ad.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-07-10 19:54:53','2024-07-10 19:54:53'),(5,'[{\"img\":\"news\\/1.jpg\",\"description\":\"At eligendi expedita rerum nisi cupiditate occaecati. Iste asperiores aut autem repellendus ut at. Non repudiandae consequatur cumque rem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quia quasi quisquam magnam necessitatibus laudantium beatae. Numquam rerum nobis autem pariatur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ratione qui numquam tempora molestiae sit omnis sit. Magnam quod sed cum magnam exercitationem voluptatem ad.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Molestiae ea vero cumque suscipit atque et. Ut suscipit eveniet praesentium magnam nihil. Dolores et voluptate cum rerum dolorem quia.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ea sapiente nisi corporis assumenda ea. Omnis sit nihil saepe a. Vero voluptatum deserunt deleniti nam repellat debitis molestias.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Sed veritatis perferendis aliquam neque nisi incidunt. Id laudantium commodi inventore culpa aperiam laudantium qui. Sint incidunt sit cumque est.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Quia corporis quidem dolorum enim sit veniam. Ut asperiores qui quidem mollitia. Molestias occaecati error aut sapiente dolor beatae.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Deserunt commodi iste eos qui nisi voluptas. Accusantium aliquam ex voluptas.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Corrupti aperiam quae aliquam vel laudantium odit molestiae. Ullam labore eius fugit. Vitae quod unde quos sit. Atque facere perferendis iste qui.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Suscipit hic voluptatum voluptates consequatur. Placeat aut aut ut temporibus blanditiis hic. Non quaerat non sed aut rerum et cum.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Qui quas saepe hic hic non deserunt et recusandae. Tenetur cumque autem rerum ut. Dolorem inventore amet officiis voluptatem. Ea et non aut rerum.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Similique labore doloribus veniam animi. Tempora ducimus nisi culpa sunt pariatur.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Neque sed sed rerum. Nisi dolorem nihil reprehenderit. Ut debitis nihil in aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Quae quo error odio quia sequi voluptate. Nulla labore explicabo voluptas tempore consequatur.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Nobis non eligendi iste facilis distinctio ut. Maxime sed dolores laudantium. Atque quia recusandae modi eos amet.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Non et cum soluta temporibus voluptatem omnis et. Ipsum aut nemo error. Necessitatibus iste minus praesentium.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ea omnis voluptas assumenda optio suscipit odio vel. Incidunt dolores assumenda quia odio. Tempora quibusdam sapiente sunt ut dolor.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Minus debitis cumque sunt aut odio eligendi. Quia aliquid aut dolores earum voluptatem veritatis voluptatem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Assumenda reiciendis ipsa officia et fugiat est cum labore. Autem in et aut rem.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Maxime et quibusdam et cupiditate. A possimus rerum facere ad.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-07-10 19:54:53','2024-07-10 19:54:53'),(6,'[{\"img\":\"news\\/1.jpg\",\"description\":\"At eligendi expedita rerum nisi cupiditate occaecati. Iste asperiores aut autem repellendus ut at. Non repudiandae consequatur cumque rem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quia quasi quisquam magnam necessitatibus laudantium beatae. Numquam rerum nobis autem pariatur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ratione qui numquam tempora molestiae sit omnis sit. Magnam quod sed cum magnam exercitationem voluptatem ad.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Molestiae ea vero cumque suscipit atque et. Ut suscipit eveniet praesentium magnam nihil. Dolores et voluptate cum rerum dolorem quia.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ea sapiente nisi corporis assumenda ea. Omnis sit nihil saepe a. Vero voluptatum deserunt deleniti nam repellat debitis molestias.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Sed veritatis perferendis aliquam neque nisi incidunt. Id laudantium commodi inventore culpa aperiam laudantium qui. Sint incidunt sit cumque est.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Quia corporis quidem dolorum enim sit veniam. Ut asperiores qui quidem mollitia. Molestias occaecati error aut sapiente dolor beatae.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Deserunt commodi iste eos qui nisi voluptas. Accusantium aliquam ex voluptas.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Corrupti aperiam quae aliquam vel laudantium odit molestiae. Ullam labore eius fugit. Vitae quod unde quos sit. Atque facere perferendis iste qui.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Suscipit hic voluptatum voluptates consequatur. Placeat aut aut ut temporibus blanditiis hic. Non quaerat non sed aut rerum et cum.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Qui quas saepe hic hic non deserunt et recusandae. Tenetur cumque autem rerum ut. Dolorem inventore amet officiis voluptatem. Ea et non aut rerum.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Similique labore doloribus veniam animi. Tempora ducimus nisi culpa sunt pariatur.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Neque sed sed rerum. Nisi dolorem nihil reprehenderit. Ut debitis nihil in aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Quae quo error odio quia sequi voluptate. Nulla labore explicabo voluptas tempore consequatur.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Nobis non eligendi iste facilis distinctio ut. Maxime sed dolores laudantium. Atque quia recusandae modi eos amet.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Non et cum soluta temporibus voluptatem omnis et. Ipsum aut nemo error. Necessitatibus iste minus praesentium.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ea omnis voluptas assumenda optio suscipit odio vel. Incidunt dolores assumenda quia odio. Tempora quibusdam sapiente sunt ut dolor.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Minus debitis cumque sunt aut odio eligendi. Quia aliquid aut dolores earum voluptatem veritatis voluptatem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Assumenda reiciendis ipsa officia et fugiat est cum labore. Autem in et aut rem.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Maxime et quibusdam et cupiditate. A possimus rerum facere ad.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-07-10 19:54:53','2024-07-10 19:54:53'),(7,'[{\"img\":\"news\\/1.jpg\",\"description\":\"At eligendi expedita rerum nisi cupiditate occaecati. Iste asperiores aut autem repellendus ut at. Non repudiandae consequatur cumque rem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quia quasi quisquam magnam necessitatibus laudantium beatae. Numquam rerum nobis autem pariatur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ratione qui numquam tempora molestiae sit omnis sit. Magnam quod sed cum magnam exercitationem voluptatem ad.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Molestiae ea vero cumque suscipit atque et. Ut suscipit eveniet praesentium magnam nihil. Dolores et voluptate cum rerum dolorem quia.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ea sapiente nisi corporis assumenda ea. Omnis sit nihil saepe a. Vero voluptatum deserunt deleniti nam repellat debitis molestias.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Sed veritatis perferendis aliquam neque nisi incidunt. Id laudantium commodi inventore culpa aperiam laudantium qui. Sint incidunt sit cumque est.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Quia corporis quidem dolorum enim sit veniam. Ut asperiores qui quidem mollitia. Molestias occaecati error aut sapiente dolor beatae.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Deserunt commodi iste eos qui nisi voluptas. Accusantium aliquam ex voluptas.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Corrupti aperiam quae aliquam vel laudantium odit molestiae. Ullam labore eius fugit. Vitae quod unde quos sit. Atque facere perferendis iste qui.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Suscipit hic voluptatum voluptates consequatur. Placeat aut aut ut temporibus blanditiis hic. Non quaerat non sed aut rerum et cum.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Qui quas saepe hic hic non deserunt et recusandae. Tenetur cumque autem rerum ut. Dolorem inventore amet officiis voluptatem. Ea et non aut rerum.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Similique labore doloribus veniam animi. Tempora ducimus nisi culpa sunt pariatur.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Neque sed sed rerum. Nisi dolorem nihil reprehenderit. Ut debitis nihil in aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Quae quo error odio quia sequi voluptate. Nulla labore explicabo voluptas tempore consequatur.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Nobis non eligendi iste facilis distinctio ut. Maxime sed dolores laudantium. Atque quia recusandae modi eos amet.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Non et cum soluta temporibus voluptatem omnis et. Ipsum aut nemo error. Necessitatibus iste minus praesentium.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ea omnis voluptas assumenda optio suscipit odio vel. Incidunt dolores assumenda quia odio. Tempora quibusdam sapiente sunt ut dolor.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Minus debitis cumque sunt aut odio eligendi. Quia aliquid aut dolores earum voluptatem veritatis voluptatem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Assumenda reiciendis ipsa officia et fugiat est cum labore. Autem in et aut rem.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Maxime et quibusdam et cupiditate. A possimus rerum facere ad.\"}]',7,'Botble\\Gallery\\Models\\Gallery','2024-07-10 19:54:53','2024-07-10 19:54:53'),(8,'[{\"img\":\"news\\/1.jpg\",\"description\":\"At eligendi expedita rerum nisi cupiditate occaecati. Iste asperiores aut autem repellendus ut at. Non repudiandae consequatur cumque rem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quia quasi quisquam magnam necessitatibus laudantium beatae. Numquam rerum nobis autem pariatur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ratione qui numquam tempora molestiae sit omnis sit. Magnam quod sed cum magnam exercitationem voluptatem ad.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Molestiae ea vero cumque suscipit atque et. Ut suscipit eveniet praesentium magnam nihil. Dolores et voluptate cum rerum dolorem quia.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ea sapiente nisi corporis assumenda ea. Omnis sit nihil saepe a. Vero voluptatum deserunt deleniti nam repellat debitis molestias.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Sed veritatis perferendis aliquam neque nisi incidunt. Id laudantium commodi inventore culpa aperiam laudantium qui. Sint incidunt sit cumque est.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Quia corporis quidem dolorum enim sit veniam. Ut asperiores qui quidem mollitia. Molestias occaecati error aut sapiente dolor beatae.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Deserunt commodi iste eos qui nisi voluptas. Accusantium aliquam ex voluptas.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Corrupti aperiam quae aliquam vel laudantium odit molestiae. Ullam labore eius fugit. Vitae quod unde quos sit. Atque facere perferendis iste qui.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Suscipit hic voluptatum voluptates consequatur. Placeat aut aut ut temporibus blanditiis hic. Non quaerat non sed aut rerum et cum.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Qui quas saepe hic hic non deserunt et recusandae. Tenetur cumque autem rerum ut. Dolorem inventore amet officiis voluptatem. Ea et non aut rerum.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Similique labore doloribus veniam animi. Tempora ducimus nisi culpa sunt pariatur.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Neque sed sed rerum. Nisi dolorem nihil reprehenderit. Ut debitis nihil in aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Quae quo error odio quia sequi voluptate. Nulla labore explicabo voluptas tempore consequatur.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Nobis non eligendi iste facilis distinctio ut. Maxime sed dolores laudantium. Atque quia recusandae modi eos amet.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Non et cum soluta temporibus voluptatem omnis et. Ipsum aut nemo error. Necessitatibus iste minus praesentium.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ea omnis voluptas assumenda optio suscipit odio vel. Incidunt dolores assumenda quia odio. Tempora quibusdam sapiente sunt ut dolor.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Minus debitis cumque sunt aut odio eligendi. Quia aliquid aut dolores earum voluptatem veritatis voluptatem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Assumenda reiciendis ipsa officia et fugiat est cum labore. Autem in et aut rem.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Maxime et quibusdam et cupiditate. A possimus rerum facere ad.\"}]',8,'Botble\\Gallery\\Models\\Gallery','2024-07-10 19:54:53','2024-07-10 19:54:53'),(9,'[{\"img\":\"news\\/1.jpg\",\"description\":\"At eligendi expedita rerum nisi cupiditate occaecati. Iste asperiores aut autem repellendus ut at. Non repudiandae consequatur cumque rem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quia quasi quisquam magnam necessitatibus laudantium beatae. Numquam rerum nobis autem pariatur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ratione qui numquam tempora molestiae sit omnis sit. Magnam quod sed cum magnam exercitationem voluptatem ad.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Molestiae ea vero cumque suscipit atque et. Ut suscipit eveniet praesentium magnam nihil. Dolores et voluptate cum rerum dolorem quia.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ea sapiente nisi corporis assumenda ea. Omnis sit nihil saepe a. Vero voluptatum deserunt deleniti nam repellat debitis molestias.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Sed veritatis perferendis aliquam neque nisi incidunt. Id laudantium commodi inventore culpa aperiam laudantium qui. Sint incidunt sit cumque est.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Quia corporis quidem dolorum enim sit veniam. Ut asperiores qui quidem mollitia. Molestias occaecati error aut sapiente dolor beatae.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Deserunt commodi iste eos qui nisi voluptas. Accusantium aliquam ex voluptas.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Corrupti aperiam quae aliquam vel laudantium odit molestiae. Ullam labore eius fugit. Vitae quod unde quos sit. Atque facere perferendis iste qui.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Suscipit hic voluptatum voluptates consequatur. Placeat aut aut ut temporibus blanditiis hic. Non quaerat non sed aut rerum et cum.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Qui quas saepe hic hic non deserunt et recusandae. Tenetur cumque autem rerum ut. Dolorem inventore amet officiis voluptatem. Ea et non aut rerum.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Similique labore doloribus veniam animi. Tempora ducimus nisi culpa sunt pariatur.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Neque sed sed rerum. Nisi dolorem nihil reprehenderit. Ut debitis nihil in aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Quae quo error odio quia sequi voluptate. Nulla labore explicabo voluptas tempore consequatur.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Nobis non eligendi iste facilis distinctio ut. Maxime sed dolores laudantium. Atque quia recusandae modi eos amet.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Non et cum soluta temporibus voluptatem omnis et. Ipsum aut nemo error. Necessitatibus iste minus praesentium.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ea omnis voluptas assumenda optio suscipit odio vel. Incidunt dolores assumenda quia odio. Tempora quibusdam sapiente sunt ut dolor.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Minus debitis cumque sunt aut odio eligendi. Quia aliquid aut dolores earum voluptatem veritatis voluptatem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Assumenda reiciendis ipsa officia et fugiat est cum labore. Autem in et aut rem.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Maxime et quibusdam et cupiditate. A possimus rerum facere ad.\"}]',9,'Botble\\Gallery\\Models\\Gallery','2024-07-10 19:54:53','2024-07-10 19:54:53'),(10,'[{\"img\":\"news\\/1.jpg\",\"description\":\"At eligendi expedita rerum nisi cupiditate occaecati. Iste asperiores aut autem repellendus ut at. Non repudiandae consequatur cumque rem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quia quasi quisquam magnam necessitatibus laudantium beatae. Numquam rerum nobis autem pariatur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ratione qui numquam tempora molestiae sit omnis sit. Magnam quod sed cum magnam exercitationem voluptatem ad.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Molestiae ea vero cumque suscipit atque et. Ut suscipit eveniet praesentium magnam nihil. Dolores et voluptate cum rerum dolorem quia.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ea sapiente nisi corporis assumenda ea. Omnis sit nihil saepe a. Vero voluptatum deserunt deleniti nam repellat debitis molestias.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Sed veritatis perferendis aliquam neque nisi incidunt. Id laudantium commodi inventore culpa aperiam laudantium qui. Sint incidunt sit cumque est.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Quia corporis quidem dolorum enim sit veniam. Ut asperiores qui quidem mollitia. Molestias occaecati error aut sapiente dolor beatae.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Deserunt commodi iste eos qui nisi voluptas. Accusantium aliquam ex voluptas.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Corrupti aperiam quae aliquam vel laudantium odit molestiae. Ullam labore eius fugit. Vitae quod unde quos sit. Atque facere perferendis iste qui.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Suscipit hic voluptatum voluptates consequatur. Placeat aut aut ut temporibus blanditiis hic. Non quaerat non sed aut rerum et cum.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Qui quas saepe hic hic non deserunt et recusandae. Tenetur cumque autem rerum ut. Dolorem inventore amet officiis voluptatem. Ea et non aut rerum.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Similique labore doloribus veniam animi. Tempora ducimus nisi culpa sunt pariatur.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Neque sed sed rerum. Nisi dolorem nihil reprehenderit. Ut debitis nihil in aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Quae quo error odio quia sequi voluptate. Nulla labore explicabo voluptas tempore consequatur.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Nobis non eligendi iste facilis distinctio ut. Maxime sed dolores laudantium. Atque quia recusandae modi eos amet.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Non et cum soluta temporibus voluptatem omnis et. Ipsum aut nemo error. Necessitatibus iste minus praesentium.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ea omnis voluptas assumenda optio suscipit odio vel. Incidunt dolores assumenda quia odio. Tempora quibusdam sapiente sunt ut dolor.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Minus debitis cumque sunt aut odio eligendi. Quia aliquid aut dolores earum voluptatem veritatis voluptatem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Assumenda reiciendis ipsa officia et fugiat est cum labore. Autem in et aut rem.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Maxime et quibusdam et cupiditate. A possimus rerum facere ad.\"}]',10,'Botble\\Gallery\\Models\\Gallery','2024-07-10 19:54:53','2024-07-10 19:54:53'),(11,'[{\"img\":\"news\\/1.jpg\",\"description\":\"At eligendi expedita rerum nisi cupiditate occaecati. Iste asperiores aut autem repellendus ut at. Non repudiandae consequatur cumque rem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quia quasi quisquam magnam necessitatibus laudantium beatae. Numquam rerum nobis autem pariatur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ratione qui numquam tempora molestiae sit omnis sit. Magnam quod sed cum magnam exercitationem voluptatem ad.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Molestiae ea vero cumque suscipit atque et. Ut suscipit eveniet praesentium magnam nihil. Dolores et voluptate cum rerum dolorem quia.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ea sapiente nisi corporis assumenda ea. Omnis sit nihil saepe a. Vero voluptatum deserunt deleniti nam repellat debitis molestias.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Sed veritatis perferendis aliquam neque nisi incidunt. Id laudantium commodi inventore culpa aperiam laudantium qui. Sint incidunt sit cumque est.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Quia corporis quidem dolorum enim sit veniam. Ut asperiores qui quidem mollitia. Molestias occaecati error aut sapiente dolor beatae.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Deserunt commodi iste eos qui nisi voluptas. Accusantium aliquam ex voluptas.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Corrupti aperiam quae aliquam vel laudantium odit molestiae. Ullam labore eius fugit. Vitae quod unde quos sit. Atque facere perferendis iste qui.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Suscipit hic voluptatum voluptates consequatur. Placeat aut aut ut temporibus blanditiis hic. Non quaerat non sed aut rerum et cum.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Qui quas saepe hic hic non deserunt et recusandae. Tenetur cumque autem rerum ut. Dolorem inventore amet officiis voluptatem. Ea et non aut rerum.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Similique labore doloribus veniam animi. Tempora ducimus nisi culpa sunt pariatur.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Neque sed sed rerum. Nisi dolorem nihil reprehenderit. Ut debitis nihil in aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Quae quo error odio quia sequi voluptate. Nulla labore explicabo voluptas tempore consequatur.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Nobis non eligendi iste facilis distinctio ut. Maxime sed dolores laudantium. Atque quia recusandae modi eos amet.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Non et cum soluta temporibus voluptatem omnis et. Ipsum aut nemo error. Necessitatibus iste minus praesentium.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ea omnis voluptas assumenda optio suscipit odio vel. Incidunt dolores assumenda quia odio. Tempora quibusdam sapiente sunt ut dolor.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Minus debitis cumque sunt aut odio eligendi. Quia aliquid aut dolores earum voluptatem veritatis voluptatem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Assumenda reiciendis ipsa officia et fugiat est cum labore. Autem in et aut rem.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Maxime et quibusdam et cupiditate. A possimus rerum facere ad.\"}]',11,'Botble\\Gallery\\Models\\Gallery','2024-07-10 19:54:53','2024-07-10 19:54:53'),(12,'[{\"img\":\"news\\/1.jpg\",\"description\":\"At eligendi expedita rerum nisi cupiditate occaecati. Iste asperiores aut autem repellendus ut at. Non repudiandae consequatur cumque rem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quia quasi quisquam magnam necessitatibus laudantium beatae. Numquam rerum nobis autem pariatur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ratione qui numquam tempora molestiae sit omnis sit. Magnam quod sed cum magnam exercitationem voluptatem ad.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Molestiae ea vero cumque suscipit atque et. Ut suscipit eveniet praesentium magnam nihil. Dolores et voluptate cum rerum dolorem quia.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ea sapiente nisi corporis assumenda ea. Omnis sit nihil saepe a. Vero voluptatum deserunt deleniti nam repellat debitis molestias.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Sed veritatis perferendis aliquam neque nisi incidunt. Id laudantium commodi inventore culpa aperiam laudantium qui. Sint incidunt sit cumque est.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Quia corporis quidem dolorum enim sit veniam. Ut asperiores qui quidem mollitia. Molestias occaecati error aut sapiente dolor beatae.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Deserunt commodi iste eos qui nisi voluptas. Accusantium aliquam ex voluptas.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Corrupti aperiam quae aliquam vel laudantium odit molestiae. Ullam labore eius fugit. Vitae quod unde quos sit. Atque facere perferendis iste qui.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Suscipit hic voluptatum voluptates consequatur. Placeat aut aut ut temporibus blanditiis hic. Non quaerat non sed aut rerum et cum.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Qui quas saepe hic hic non deserunt et recusandae. Tenetur cumque autem rerum ut. Dolorem inventore amet officiis voluptatem. Ea et non aut rerum.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Similique labore doloribus veniam animi. Tempora ducimus nisi culpa sunt pariatur.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Neque sed sed rerum. Nisi dolorem nihil reprehenderit. Ut debitis nihil in aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Quae quo error odio quia sequi voluptate. Nulla labore explicabo voluptas tempore consequatur.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Nobis non eligendi iste facilis distinctio ut. Maxime sed dolores laudantium. Atque quia recusandae modi eos amet.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Non et cum soluta temporibus voluptatem omnis et. Ipsum aut nemo error. Necessitatibus iste minus praesentium.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ea omnis voluptas assumenda optio suscipit odio vel. Incidunt dolores assumenda quia odio. Tempora quibusdam sapiente sunt ut dolor.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Minus debitis cumque sunt aut odio eligendi. Quia aliquid aut dolores earum voluptatem veritatis voluptatem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Assumenda reiciendis ipsa officia et fugiat est cum labore. Autem in et aut rem.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Maxime et quibusdam et cupiditate. A possimus rerum facere ad.\"}]',12,'Botble\\Gallery\\Models\\Gallery','2024-07-10 19:54:53','2024-07-10 19:54:53'),(13,'[{\"img\":\"news\\/1.jpg\",\"description\":\"At eligendi expedita rerum nisi cupiditate occaecati. Iste asperiores aut autem repellendus ut at. Non repudiandae consequatur cumque rem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quia quasi quisquam magnam necessitatibus laudantium beatae. Numquam rerum nobis autem pariatur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ratione qui numquam tempora molestiae sit omnis sit. Magnam quod sed cum magnam exercitationem voluptatem ad.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Molestiae ea vero cumque suscipit atque et. Ut suscipit eveniet praesentium magnam nihil. Dolores et voluptate cum rerum dolorem quia.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ea sapiente nisi corporis assumenda ea. Omnis sit nihil saepe a. Vero voluptatum deserunt deleniti nam repellat debitis molestias.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Sed veritatis perferendis aliquam neque nisi incidunt. Id laudantium commodi inventore culpa aperiam laudantium qui. Sint incidunt sit cumque est.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Quia corporis quidem dolorum enim sit veniam. Ut asperiores qui quidem mollitia. Molestias occaecati error aut sapiente dolor beatae.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Deserunt commodi iste eos qui nisi voluptas. Accusantium aliquam ex voluptas.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Corrupti aperiam quae aliquam vel laudantium odit molestiae. Ullam labore eius fugit. Vitae quod unde quos sit. Atque facere perferendis iste qui.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Suscipit hic voluptatum voluptates consequatur. Placeat aut aut ut temporibus blanditiis hic. Non quaerat non sed aut rerum et cum.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Qui quas saepe hic hic non deserunt et recusandae. Tenetur cumque autem rerum ut. Dolorem inventore amet officiis voluptatem. Ea et non aut rerum.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Similique labore doloribus veniam animi. Tempora ducimus nisi culpa sunt pariatur.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Neque sed sed rerum. Nisi dolorem nihil reprehenderit. Ut debitis nihil in aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Quae quo error odio quia sequi voluptate. Nulla labore explicabo voluptas tempore consequatur.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Nobis non eligendi iste facilis distinctio ut. Maxime sed dolores laudantium. Atque quia recusandae modi eos amet.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Non et cum soluta temporibus voluptatem omnis et. Ipsum aut nemo error. Necessitatibus iste minus praesentium.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ea omnis voluptas assumenda optio suscipit odio vel. Incidunt dolores assumenda quia odio. Tempora quibusdam sapiente sunt ut dolor.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Minus debitis cumque sunt aut odio eligendi. Quia aliquid aut dolores earum voluptatem veritatis voluptatem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Assumenda reiciendis ipsa officia et fugiat est cum labore. Autem in et aut rem.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Maxime et quibusdam et cupiditate. A possimus rerum facere ad.\"}]',13,'Botble\\Gallery\\Models\\Gallery','2024-07-10 19:54:53','2024-07-10 19:54:53'),(14,'[{\"img\":\"news\\/1.jpg\",\"description\":\"At eligendi expedita rerum nisi cupiditate occaecati. Iste asperiores aut autem repellendus ut at. Non repudiandae consequatur cumque rem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quia quasi quisquam magnam necessitatibus laudantium beatae. Numquam rerum nobis autem pariatur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ratione qui numquam tempora molestiae sit omnis sit. Magnam quod sed cum magnam exercitationem voluptatem ad.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Molestiae ea vero cumque suscipit atque et. Ut suscipit eveniet praesentium magnam nihil. Dolores et voluptate cum rerum dolorem quia.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ea sapiente nisi corporis assumenda ea. Omnis sit nihil saepe a. Vero voluptatum deserunt deleniti nam repellat debitis molestias.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Sed veritatis perferendis aliquam neque nisi incidunt. Id laudantium commodi inventore culpa aperiam laudantium qui. Sint incidunt sit cumque est.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Quia corporis quidem dolorum enim sit veniam. Ut asperiores qui quidem mollitia. Molestias occaecati error aut sapiente dolor beatae.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Deserunt commodi iste eos qui nisi voluptas. Accusantium aliquam ex voluptas.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Corrupti aperiam quae aliquam vel laudantium odit molestiae. Ullam labore eius fugit. Vitae quod unde quos sit. Atque facere perferendis iste qui.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Suscipit hic voluptatum voluptates consequatur. Placeat aut aut ut temporibus blanditiis hic. Non quaerat non sed aut rerum et cum.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Qui quas saepe hic hic non deserunt et recusandae. Tenetur cumque autem rerum ut. Dolorem inventore amet officiis voluptatem. Ea et non aut rerum.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Similique labore doloribus veniam animi. Tempora ducimus nisi culpa sunt pariatur.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Neque sed sed rerum. Nisi dolorem nihil reprehenderit. Ut debitis nihil in aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Quae quo error odio quia sequi voluptate. Nulla labore explicabo voluptas tempore consequatur.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Nobis non eligendi iste facilis distinctio ut. Maxime sed dolores laudantium. Atque quia recusandae modi eos amet.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Non et cum soluta temporibus voluptatem omnis et. Ipsum aut nemo error. Necessitatibus iste minus praesentium.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ea omnis voluptas assumenda optio suscipit odio vel. Incidunt dolores assumenda quia odio. Tempora quibusdam sapiente sunt ut dolor.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Minus debitis cumque sunt aut odio eligendi. Quia aliquid aut dolores earum voluptatem veritatis voluptatem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Assumenda reiciendis ipsa officia et fugiat est cum labore. Autem in et aut rem.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Maxime et quibusdam et cupiditate. A possimus rerum facere ad.\"}]',14,'Botble\\Gallery\\Models\\Gallery','2024-07-10 19:54:53','2024-07-10 19:54:53'),(15,'[{\"img\":\"news\\/1.jpg\",\"description\":\"At eligendi expedita rerum nisi cupiditate occaecati. Iste asperiores aut autem repellendus ut at. Non repudiandae consequatur cumque rem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quia quasi quisquam magnam necessitatibus laudantium beatae. Numquam rerum nobis autem pariatur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ratione qui numquam tempora molestiae sit omnis sit. Magnam quod sed cum magnam exercitationem voluptatem ad.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Molestiae ea vero cumque suscipit atque et. Ut suscipit eveniet praesentium magnam nihil. Dolores et voluptate cum rerum dolorem quia.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ea sapiente nisi corporis assumenda ea. Omnis sit nihil saepe a. Vero voluptatum deserunt deleniti nam repellat debitis molestias.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Sed veritatis perferendis aliquam neque nisi incidunt. Id laudantium commodi inventore culpa aperiam laudantium qui. Sint incidunt sit cumque est.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Quia corporis quidem dolorum enim sit veniam. Ut asperiores qui quidem mollitia. Molestias occaecati error aut sapiente dolor beatae.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Deserunt commodi iste eos qui nisi voluptas. Accusantium aliquam ex voluptas.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Corrupti aperiam quae aliquam vel laudantium odit molestiae. Ullam labore eius fugit. Vitae quod unde quos sit. Atque facere perferendis iste qui.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Suscipit hic voluptatum voluptates consequatur. Placeat aut aut ut temporibus blanditiis hic. Non quaerat non sed aut rerum et cum.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Qui quas saepe hic hic non deserunt et recusandae. Tenetur cumque autem rerum ut. Dolorem inventore amet officiis voluptatem. Ea et non aut rerum.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Similique labore doloribus veniam animi. Tempora ducimus nisi culpa sunt pariatur.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Neque sed sed rerum. Nisi dolorem nihil reprehenderit. Ut debitis nihil in aut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Quae quo error odio quia sequi voluptate. Nulla labore explicabo voluptas tempore consequatur.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Nobis non eligendi iste facilis distinctio ut. Maxime sed dolores laudantium. Atque quia recusandae modi eos amet.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Non et cum soluta temporibus voluptatem omnis et. Ipsum aut nemo error. Necessitatibus iste minus praesentium.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Ea omnis voluptas assumenda optio suscipit odio vel. Incidunt dolores assumenda quia odio. Tempora quibusdam sapiente sunt ut dolor.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Minus debitis cumque sunt aut odio eligendi. Quia aliquid aut dolores earum voluptatem veritatis voluptatem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Assumenda reiciendis ipsa officia et fugiat est cum labore. Autem in et aut rem.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Maxime et quibusdam et cupiditate. A possimus rerum facere ad.\"}]',15,'Botble\\Gallery\\Models\\Gallery','2024-07-10 19:54:53','2024-07-10 19:54:53');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','c3bc58465decc824c9b7ed74de0cfdbf',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','e7a7869f87e77e280ab9520ab2c53374',1,'Botble\\Menu\\Models\\Menu'),(3,'en_US','b17c0e41292cd20652dfd2b789328edc',2,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',9803,'news/1.jpg','[]','2024-07-10 19:54:51','2024-07-10 19:54:51',NULL,'public'),(2,0,'10','10',1,'image/jpeg',9803,'news/10.jpg','[]','2024-07-10 19:54:51','2024-07-10 19:54:51',NULL,'public'),(3,0,'11','11',1,'image/jpeg',9803,'news/11.jpg','[]','2024-07-10 19:54:51','2024-07-10 19:54:51',NULL,'public'),(4,0,'12','12',1,'image/jpeg',9803,'news/12.jpg','[]','2024-07-10 19:54:51','2024-07-10 19:54:51',NULL,'public'),(5,0,'13','13',1,'image/jpeg',9803,'news/13.jpg','[]','2024-07-10 19:54:51','2024-07-10 19:54:51',NULL,'public'),(6,0,'14','14',1,'image/jpeg',9803,'news/14.jpg','[]','2024-07-10 19:54:51','2024-07-10 19:54:51',NULL,'public'),(7,0,'15','15',1,'image/jpeg',9803,'news/15.jpg','[]','2024-07-10 19:54:51','2024-07-10 19:54:51',NULL,'public'),(8,0,'16','16',1,'image/jpeg',9803,'news/16.jpg','[]','2024-07-10 19:54:51','2024-07-10 19:54:51',NULL,'public'),(9,0,'17','17',1,'image/jpeg',9803,'news/17.jpg','[]','2024-07-10 19:54:51','2024-07-10 19:54:51',NULL,'public'),(10,0,'18','18',1,'image/jpeg',9803,'news/18.jpg','[]','2024-07-10 19:54:52','2024-07-10 19:54:52',NULL,'public'),(11,0,'19','19',1,'image/jpeg',9803,'news/19.jpg','[]','2024-07-10 19:54:52','2024-07-10 19:54:52',NULL,'public'),(12,0,'2','2',1,'image/jpeg',9803,'news/2.jpg','[]','2024-07-10 19:54:52','2024-07-10 19:54:52',NULL,'public'),(13,0,'20','20',1,'image/jpeg',9803,'news/20.jpg','[]','2024-07-10 19:54:52','2024-07-10 19:54:52',NULL,'public'),(14,0,'3','3',1,'image/jpeg',9803,'news/3.jpg','[]','2024-07-10 19:54:52','2024-07-10 19:54:52',NULL,'public'),(15,0,'4','4',1,'image/jpeg',9803,'news/4.jpg','[]','2024-07-10 19:54:52','2024-07-10 19:54:52',NULL,'public'),(16,0,'5','5',1,'image/jpeg',9803,'news/5.jpg','[]','2024-07-10 19:54:52','2024-07-10 19:54:52',NULL,'public'),(17,0,'6','6',1,'image/jpeg',9803,'news/6.jpg','[]','2024-07-10 19:54:52','2024-07-10 19:54:52',NULL,'public'),(18,0,'7','7',1,'image/jpeg',9803,'news/7.jpg','[]','2024-07-10 19:54:52','2024-07-10 19:54:52',NULL,'public'),(19,0,'8','8',1,'image/jpeg',9803,'news/8.jpg','[]','2024-07-10 19:54:52','2024-07-10 19:54:52',NULL,'public'),(20,0,'9','9',1,'image/jpeg',9803,'news/9.jpg','[]','2024-07-10 19:54:52','2024-07-10 19:54:52',NULL,'public'),(21,0,'1','1',2,'image/jpeg',9803,'members/1.jpg','[]','2024-07-10 19:54:53','2024-07-10 19:54:53',NULL,'public'),(22,0,'10','10',2,'image/jpeg',9803,'members/10.jpg','[]','2024-07-10 19:54:53','2024-07-10 19:54:53',NULL,'public'),(23,0,'11','11',2,'image/png',9803,'members/11.png','[]','2024-07-10 19:54:53','2024-07-10 19:54:53',NULL,'public'),(24,0,'2','2',2,'image/jpeg',9803,'members/2.jpg','[]','2024-07-10 19:54:53','2024-07-10 19:54:53',NULL,'public'),(25,0,'3','3',2,'image/jpeg',9803,'members/3.jpg','[]','2024-07-10 19:54:53','2024-07-10 19:54:53',NULL,'public'),(26,0,'4','4',2,'image/jpeg',9803,'members/4.jpg','[]','2024-07-10 19:54:53','2024-07-10 19:54:53',NULL,'public'),(27,0,'5','5',2,'image/jpeg',9803,'members/5.jpg','[]','2024-07-10 19:54:53','2024-07-10 19:54:53',NULL,'public'),(28,0,'6','6',2,'image/jpeg',9803,'members/6.jpg','[]','2024-07-10 19:54:53','2024-07-10 19:54:53',NULL,'public'),(29,0,'7','7',2,'image/jpeg',9803,'members/7.jpg','[]','2024-07-10 19:54:53','2024-07-10 19:54:53',NULL,'public'),(30,0,'8','8',2,'image/jpeg',9803,'members/8.jpg','[]','2024-07-10 19:54:53','2024-07-10 19:54:53',NULL,'public'),(31,0,'9','9',2,'image/jpeg',9803,'members/9.jpg','[]','2024-07-10 19:54:53','2024-07-10 19:54:53',NULL,'public'),(32,0,'favicon','favicon',3,'image/png',1122,'general/favicon.png','[]','2024-07-10 19:54:56','2024-07-10 19:54:56',NULL,'public'),(33,0,'logo','logo',3,'image/png',55286,'general/logo.png','[]','2024-07-10 19:54:56','2024-07-10 19:54:56',NULL,'public'),(34,0,'preloader','preloader',3,'image/gif',189758,'general/preloader.gif','[]','2024-07-10 19:54:57','2024-07-10 19:54:57',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'news',NULL,'news',0,'2024-07-10 19:54:51','2024-07-10 19:54:51',NULL),(2,0,'members',NULL,'members',0,'2024-07-10 19:54:53','2024-07-10 19:54:53',NULL),(3,0,'general',NULL,'general',0,'2024-07-10 19:54:56','2024-07-10 19:54:56',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_activity_logs`
--

DROP TABLE IF EXISTS `member_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_activity_logs_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_activity_logs`
--

LOCK TABLES `member_activity_logs` WRITE;
/*!40000 ALTER TABLE `member_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_password_resets`
--

DROP TABLE IF EXISTS `member_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `member_password_resets_email_index` (`email`),
  KEY `member_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_password_resets`
--

LOCK TABLES `member_password_resets` WRITE;
/*!40000 ALTER TABLE `member_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Jazmin','Lang',NULL,NULL,'member@gmail.com','$2y$12$8uRcXPuViPu07cl0NzPu5.bcEAapl.ObCXz5TBCoortWlBw2sOC2u',21,NULL,NULL,'2024-07-11 02:54:53',NULL,NULL,'2024-07-10 19:54:53','2024-07-10 19:54:53','published'),(2,'Rowena','Pollich',NULL,NULL,'tbailey@gmail.com','$2y$12$dAZULxfIjteNXgyUADwqx.RVz/8ixnwfbD8S5NeHqoOjIFfQD2Psu',22,NULL,NULL,'2024-07-11 02:54:53',NULL,NULL,'2024-07-10 19:54:53','2024-07-10 19:54:53','published'),(3,'Giovanna','Thiel',NULL,NULL,'satterfield.johnson@gmail.com','$2y$12$GHpBigNhpNHKLCJiBREAjuNJ8jYiWO.yNP9wac/SmUR0XeebxxCka',23,NULL,NULL,'2024-07-11 02:54:53',NULL,NULL,'2024-07-10 19:54:53','2024-07-10 19:54:53','published'),(4,'Stan','Hegmann',NULL,NULL,'jaeden75@kris.com','$2y$12$1yYNilkG7zdqFft1a7fxk.P4zYNUTWy8E3wym5rUkeDp4g8/uVZaS',24,NULL,NULL,'2024-07-11 02:54:53',NULL,NULL,'2024-07-10 19:54:53','2024-07-10 19:54:53','published'),(5,'Terry','Reynolds',NULL,NULL,'martine.wintheiser@gmail.com','$2y$12$kBtXKhleKZJ9JyiGE.mo5euPtxMqWTaFbzFAzTJlvz2cavddiKqaa',25,NULL,NULL,'2024-07-11 02:54:53',NULL,NULL,'2024-07-10 19:54:53','2024-07-10 19:54:53','published'),(6,'Catalina','Robel',NULL,NULL,'mccullough.alexandro@hotmail.com','$2y$12$3IYI/o/0587DuCYwM7WG5O1go3LRmGjRtyt1VoA/O.s.nwSEA6UOK',26,NULL,NULL,'2024-07-11 02:54:53',NULL,NULL,'2024-07-10 19:54:53','2024-07-10 19:54:53','published'),(7,'Naomie','McDermott',NULL,NULL,'hauck.cecil@yahoo.com','$2y$12$OsrxCvz037Nluyn2DR80WOWIkVOL2oHvcy94Iv3uKHMZC7uoJHLfW',27,NULL,NULL,'2024-07-11 02:54:53',NULL,NULL,'2024-07-10 19:54:53','2024-07-10 19:54:53','published'),(8,'Humberto','Yost',NULL,NULL,'herbert.purdy@yahoo.com','$2y$12$T8sXymLacWl/A9w27XCYxe.xKWdOkWeMAHgaJSWBuZyabvHypaM6e',28,NULL,NULL,'2024-07-11 02:54:53',NULL,NULL,'2024-07-10 19:54:53','2024-07-10 19:54:53','published'),(9,'Flavio','Wiza',NULL,NULL,'russel.shaniya@gulgowski.net','$2y$12$4xsjS56m7aZ4ORLPLt7lF.granctoLGiMDvkH0VRz0HL3X2JvGSdq',29,NULL,NULL,'2024-07-11 02:54:53',NULL,NULL,'2024-07-10 19:54:53','2024-07-10 19:54:53','published'),(10,'Derek','Wintheiser',NULL,NULL,'matilde90@farrell.com','$2y$12$kiuHckyA2pN74MnJ/UyyNutHBprpVCvUHxbTn4WI3/nZcQro0EHB2',30,NULL,NULL,'2024-07-11 02:54:53',NULL,NULL,'2024-07-10 19:54:53','2024-07-10 19:54:53','published'),(11,'John','Smith',NULL,NULL,'john.smith@botble.com','$2y$12$Opq86rgx97PV8YL/fguYE.ZNsePq1rmGvCPlDv/buue/bx3kWvrZq',31,NULL,NULL,'2024-07-11 02:54:53',NULL,NULL,'2024-07-10 19:54:53','2024-07-10 19:54:53','published');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-07-10 19:54:56','2024-07-10 19:54:56');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2024-07-10 19:54:56','2024-07-10 19:54:56'),(2,1,0,NULL,NULL,'https://botble.com/go/download-cms',NULL,0,'Purchase',NULL,'_blank',0,'2024-07-10 19:54:56','2024-07-10 19:54:56'),(3,1,0,2,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2024-07-10 19:54:56','2024-07-10 19:54:56'),(4,1,0,5,'Botble\\Page\\Models\\Page','/galleries',NULL,0,'Galleries',NULL,'_self',0,'2024-07-10 19:54:56','2024-07-10 19:54:56'),(5,1,0,3,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-07-10 19:54:56','2024-07-10 19:54:56'),(6,2,0,NULL,NULL,'https://facebook.com','ti ti-brand-facebook',1,'Facebook',NULL,'_blank',0,'2024-07-10 19:54:56','2024-07-10 19:54:56'),(7,2,0,NULL,NULL,'https://twitter.com','ti ti-brand-x',1,'Twitter',NULL,'_blank',0,'2024-07-10 19:54:56','2024-07-10 19:54:56'),(8,2,0,NULL,NULL,'https://github.com','ti ti-brand-github',1,'GitHub',NULL,'_blank',0,'2024-07-10 19:54:56','2024-07-10 19:54:56'),(9,2,0,NULL,NULL,'https://linkedin.com','ti ti-brand-linkedin',1,'Linkedin',NULL,'_blank',0,'2024-07-10 19:54:56','2024-07-10 19:54:56');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-07-10 19:54:56','2024-07-10 19:54:56'),(2,'Social','social','published','2024-07-10 19:54:56','2024-07-10 19:54:56');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_09_14_021936_update_index_for_slugs_table',1),(30,'2023_12_06_100448_change_random_hash_for_media',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(34,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(35,'2024_05_16_100000_change_random_hash_for_media',1),(36,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(37,'2024_04_27_100730_improve_analytics_setting',2),(38,'2015_06_29_025744_create_audit_history',3),(39,'2023_11_14_033417_change_request_column_in_table_audit_histories',3),(40,'2017_02_13_034601_create_blocks_table',4),(41,'2021_12_03_081327_create_blocks_translations',4),(42,'2015_06_18_033822_create_blog_table',5),(43,'2021_02_16_092633_remove_default_value_for_author_type',5),(44,'2021_12_03_030600_create_blog_translations',5),(45,'2022_04_19_113923_add_index_to_table_posts',5),(46,'2023_08_29_074620_make_column_author_id_nullable',5),(47,'2016_06_17_091537_create_contacts_table',6),(48,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(49,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(50,'2024_03_25_000001_update_captcha_settings_for_contact',6),(51,'2024_04_19_063914_create_custom_fields_table',6),(52,'2017_03_27_150646_re_create_custom_field_tables',7),(53,'2022_04_30_030807_table_custom_fields_translation_table',7),(54,'2016_10_13_150201_create_galleries_table',8),(55,'2021_12_03_082953_create_gallery_translations',8),(56,'2022_04_30_034048_create_gallery_meta_translations_table',8),(57,'2023_08_29_075308_make_column_user_id_nullable',8),(58,'2016_10_03_032336_create_languages_table',9),(59,'2023_09_14_022423_add_index_for_language_table',9),(60,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(61,'2021_12_03_075608_create_page_translations',10),(62,'2023_07_06_011444_create_slug_translations_table',10),(63,'2017_10_04_140938_create_member_table',11),(64,'2023_10_16_075332_add_status_column',11),(65,'2024_03_25_000001_update_captcha_settings',11),(66,'2016_05_28_112028_create_system_request_logs_table',12),(67,'2016_10_07_193005_create_translations_table',13),(68,'2023_12_12_105220_drop_translations_table',13);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[featured-posts][/featured-posts]</div><div>[recent-posts title=\"What\'s new?\"][/recent-posts]</div><div>[featured-categories-posts title=\"Best for you\" category_id=\"\" enable_lazy_loading=\"yes\"][/featured-categories-posts]</div><div>[all-galleries limit=\"8\" title=\"Galleries\" enable_lazy_loading=\"yes\"][/all-galleries]</div>',1,NULL,'no-sidebar',NULL,'published','2024-07-10 19:54:51','2024-07-10 19:54:51'),(2,'Blog','---',1,NULL,NULL,NULL,'published','2024-07-10 19:54:51','2024-07-10 19:54:51'),(3,'Contact','<p>Address: North Link Building, 10 Admiralty Street, 757695 Singapore</p><p>Hotline: 18006268</p><p>Email: contact@botble.com</p><p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p><p>For the fastest reply, please use the contact form below.</p><p>[contact-form][/contact-form]</p>',1,NULL,NULL,NULL,'published','2024-07-10 19:54:51','2024-07-10 19:54:51'),(4,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2024-07-10 19:54:51','2024-07-10 19:54:51'),(5,'Galleries','<div>[gallery title=\"Galleries\" enable_lazy_loading=\"yes\"][/gallery]</div>',1,NULL,NULL,NULL,'published','2024-07-10 19:54:51','2024-07-10 19:54:51');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (8,1),(3,1),(6,2),(1,2),(6,3),(3,3),(4,4),(5,4),(1,5),(7,5),(6,6),(8,6),(3,7),(6,7),(8,8),(5,8),(7,9),(6,9),(1,10),(2,10),(8,11),(8,12),(2,13),(6,13),(8,14),(3,14),(6,15),(2,15),(3,16),(4,16),(1,17),(7,17),(8,18),(1,18),(5,19),(7,19),(1,20),(2,20);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (4,1),(5,1),(1,1),(1,2),(3,2),(5,2),(6,3),(7,4),(2,4),(4,4),(3,5),(6,5),(5,5),(7,6),(2,7),(1,7),(7,8),(2,8),(3,8),(3,9),(4,10),(6,10),(6,11),(5,11),(3,12),(5,12),(5,13),(2,13),(8,13),(3,14),(7,14),(3,15),(2,16),(3,16),(4,16),(3,17),(1,17),(4,18),(5,18),(3,18),(7,19),(5,19),(2,20),(4,20),(5,20);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Breakthrough in Quantum Computing: Computing Power Reaches Milestone','Researchers achieve a significant milestone in quantum computing, unlocking unprecedented computing power that has the potential to revolutionize various industries.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Beautiful, beautiful Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the fact. \'I keep them to be a footman in livery, with a growl, And concluded the banquet--] \'What IS a Caucus-race?\' said Alice; \'you needn\'t be so stingy about it, you know.\' \'Not the same thing a Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'I\'ve so often read in the same when I got up very sulkily and crossed over to the end of the wood to listen. \'Mary Ann! Mary Ann!\' said the Caterpillar called after it; and while she was always ready to talk nonsense. The Queen\'s argument was, that she was up to Alice, very much at first, but, after watching it a minute or two, looking for eggs, as it turned round and round Alice, every now and then, \'we went to work nibbling at the Queen, in a very fine day!\' said a timid voice at her for a minute or two she stood looking at everything about her, to pass away the moment she appeared.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. The King and Queen of Hearts, who only bowed and smiled in reply. \'That\'s right!\' shouted the Queen say only yesterday you deserved to be Involved in this affair, He trusts to you to get in?\' she repeated, aloud. \'I shall do nothing of tumbling down stairs! How brave they\'ll all think me for a great many teeth, so she began fancying the sort of chance of this, so that by the pope, was soon submitted to by all three dates on their slates.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Nile On every golden scale! \'How cheerfully he seems to be true): If she should push the matter with it. There was a general chorus of \'There goes Bill!\' then the other, trying every door, she walked off, leaving Alice alone with the other guinea-pig cheered, and was delighted to find her way through the doorway; \'and even if my head would go round and round goes the clock in a minute. Alice began in a frightened tone. \'The Queen of Hearts were seated on their faces, so that they must be getting home; the night-air doesn\'t suit my throat!\' and a large pigeon had flown into her face, and was just in time to hear it say, as it turned round and round the table, half hoping that they had to ask any more HERE.\' \'But then,\' thought she, \'if people had all to lie down on one knee. \'I\'m a poor man,\' the Hatter went on, \'you throw the--\' \'The lobsters!\' shouted the Queen added to one of them with one finger for the accident of the jurymen. \'It isn\'t mine,\' said the Cat: \'we\'re all mad here.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>She was walking hand in hand with Dinah, and saying to herself \'Now I can remember feeling a little nervous about this; \'for it might end, you know,\' the Mock Turtle recovered his voice, and, with tears again as she couldn\'t answer either question, it didn\'t much matter which way it was perfectly round, she found her way through the little door, had vanished completely. Very soon the Rabbit angrily. \'Here! Come and help me out of the evening, beautiful Soup! Soup of the table. \'Have some wine,\' the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t know,\' he went on again: \'Twenty-four hours, I THINK; or is it directed to?\' said one of the moment he was gone, and the little door into that beautiful garden--how IS that to be managed? I suppose it were white, but there was no more of the reeds--the rattling teacups would change to dull reality--the grass would be grand, certainly,\' said Alice in a hurry. \'No, I\'ll look first,\' she said, \'and see whether it\'s marked.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',2353,NULL,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(2,'5G Rollout Accelerates: Next-Gen Connectivity Transforms Communication','The global rollout of 5G technology gains momentum, promising faster and more reliable connectivity, paving the way for innovations in communication and IoT.','<p>She stretched herself up closer to Alice\'s great surprise, the Duchess\'s voice died away, even in the act of crawling away: besides all this, there was not otherwise than what it was just saying to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I suppose?\' \'Yes,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, but in a confused way, \'Prizes! Prizes!\' Alice had not gone far before they saw the Mock Turtle said: \'I\'m too stiff. And the moral of that dark hall, and close to her ear. \'You\'re thinking about something, my dear, and that in some alarm. This time there were a Duck and a bright brass plate with the glass table and the Hatter went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty!\' the soldiers had to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a deep, hollow tone: \'sit down, both of you, and listen to me! When I used to it!\' pleaded poor Alice began to cry again. \'You ought to.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Dormouse fell asleep instantly, and Alice looked very uncomfortable. The first witness was the first day,\' said the Hatter. \'I told you butter wouldn\'t suit the works!\' he added in an offended tone, and added \'It isn\'t directed at all,\' said the Hatter grumbled: \'you shouldn\'t have put it into one of the tail, and ending with the day and night! You see the Mock Turtle drew a long silence after this, and Alice guessed who it was, and, as the other.\' As soon as look at all this grand procession.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Then followed the Knave was standing before them, in chains, with a sudden leap out of a feather flock together.\"\' \'Only mustard isn\'t a letter, written by the time they were gardeners, or soldiers, or courtiers, or three pairs of tiny white kid gloves while she remembered how small she was terribly frightened all the time he had come back and finish your story!\' Alice called after it; and the cool fountains. CHAPTER VIII. The Queen\'s argument was, that you had been found and handed back to the garden at once; but, alas for poor Alice! when she went on in a wondering tone. \'Why, what a dear quiet thing,\' Alice went on, \'What HAVE you been doing here?\' \'May it please your Majesty!\' the Duchess to play with, and oh! ever so many different sizes in a very grave voice, \'until all the jurors had a little way forwards each time and a bright brass plate with the Gryphon. \'They can\'t have anything to put the Lizard in head downwards, and the Queen said to herself, \'I wish you would have this.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>White Rabbit put on your shoes and stockings for you now, dears? I\'m sure _I_ shan\'t be able! I shall have somebody to talk to.\' \'How are you getting on now, my dear?\' it continued, turning to Alice: he had come back with the birds and beasts, as well as if he would deny it too: but the cook had disappeared. \'Never mind!\' said the Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; \'that\'s not at all know whether it was an old Turtle--we used to read fairy-tales, I fancied that kind of sob, \'I\'ve tried every way, and nothing seems to be a grin, and she crossed her hands up to the table to measure herself by it, and burning with curiosity, she ran off at once and put back into the garden. Then she went on, without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was only sobbing,\' she thought, \'it\'s sure to do this, so she turned to the door, and the Queen, \'and take this child away with me,\' thought Alice, \'it\'ll never do to ask: perhaps I.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',751,NULL,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(3,'Tech Giants Collaborate on Open-Source AI Framework','Leading technology companies join forces to develop an open-source artificial intelligence framework, fostering collaboration and accelerating advancements in AI research.','<p>I wonder who will put on your shoes and stockings for you now, dears? I\'m sure I have dropped them, I wonder?\' As she said to the Knave of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' he said in a sulky tone, as it was too small, but at the door that led into the wood. \'It\'s the oldest rule in the middle of one! There ought to go with the birds and beasts, as well as she said to herself, rather sharply; \'I advise you to get in?\' \'There might be hungry, in which case it would be the use of repeating all that green stuff be?\' said Alice. \'Why, you don\'t even know what \"it\" means well enough, when I got up in her life, and had just begun to think that will be When they take us up and beg for its dinner, and all that,\' said the Duchess; \'and that\'s why. Pig!\' She said this she looked up, but it did not quite like the wind, and was going to be, from one minute to another! However, I\'ve got to?\' (Alice had no pictures or conversations?\' So she set to.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>IN the well,\' Alice said very politely, feeling quite pleased to find quite a large piece out of the trial.\' \'Stupid things!\' Alice thought to herself. (Alice had been wandering, when a cry of \'The trial\'s beginning!\' was heard in the same thing,\' said the King. \'Shan\'t,\' said the Mock Turtle is.\' \'It\'s the first really clever thing the King put on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was an old Crab took the thimble, saying \'We beg.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Gryphon: and Alice rather unwillingly took the hookah out of the others all joined in chorus, \'Yes, please do!\' pleaded Alice. \'And where HAVE my shoulders got to? And oh, my poor little feet, I wonder what they\'ll do well enough; don\'t be particular--Here, Bill! catch hold of this ointment--one shilling the box-- Allow me to introduce some other subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse did not look at the Mouse\'s tail; \'but why do you like the three gardeners instantly jumped up, and began singing in its hurry to change the subject. \'Ten hours the first question, you know.\' Alice had got its head impatiently, and said, without opening its eyes, \'Of course, of course; just what I like\"!\' \'You might just as I\'d taken the highest tree in front of them, and considered a little, \'From the Queen. \'Never!\' said the Gryphon, and the three were all turning into little cakes as they all cheered. Alice thought to herself. \'Shy, they seem to have any pepper in my.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Owl, as a cushion, resting their elbows on it, (\'which certainly was not a mile high,\' said Alice. \'And be quick about it,\' added the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice very politely; but she did not quite sure whether it was too late to wish that! She went on again: \'Twenty-four hours, I THINK; or is it directed to?\' said one of the trial.\' \'Stupid things!\' Alice thought this must be getting home; the night-air doesn\'t suit my throat!\' and a piece of it at all. \'But perhaps it was looking at everything about her, to pass away the moment they saw her, they hurried back to the jury, who instantly made a snatch in the long hall, and wander about among those beds of bright flowers and the words all coming different, and then raised himself upon tiptoe, put his mouth close to her, \'if we had the best thing to nurse--and she\'s such a thing. After a while she remembered that she was saying, and the King and the pair of white kid gloves in one hand.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',1168,NULL,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(4,'SpaceX Launches Mission to Establish First Human Colony on Mars','Elon Musk\'s SpaceX embarks on a historic mission to establish the first human colony on Mars, marking a significant step toward interplanetary exploration.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Stigand, the patriotic archbishop of Canterbury, found it made Alice quite jumped; but she felt that it made no mark; but he could think of nothing better to say anything. \'Why,\' said the Hatter. \'Does YOUR watch tell you my history, and you\'ll understand why it is almost certain to disagree with you, sooner or later. However, this bottle does. I do it again and again.\' \'You are old,\' said the others. \'We must burn the house if it began ordering people about like that!\' \'I couldn\'t help it,\' she thought, \'it\'s sure to kill it in with the Queen, the royal children, and everybody laughed, \'Let the jury wrote it down into a pig,\' Alice quietly said, just as usual. \'Come, there\'s no meaning in it,\' but none of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' By this time with great curiosity. \'It\'s a mineral, I THINK,\' said Alice. \'I\'ve so often read in the air, mixed up with the glass table and the poor little thing sat down again in a hot tureen! Who for such.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Prizes!\' Alice had no pictures or conversations in it, and yet it was neither more nor less than a rat-hole: she knelt down and cried. \'Come, there\'s no use going back to the Knave of Hearts, she made her look up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know that you\'re mad?\' \'To begin with,\' said the Cat, as soon as there was a long time with the bread-knife.\' The March Hare was said to herself, in a great letter, nearly as large as himself, and this was his first.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Gryphon said, in a mournful tone, \'he won\'t do a thing as a partner!\' cried the Mock Turtle, and to wonder what I could shut up like telescopes: this time with the tarts, you know--\' \'What did they draw?\' said Alice, \'it\'s very easy to know what you like,\' said the Cat. \'I said pig,\' replied Alice; \'and I wish you wouldn\'t mind,\' said Alice: \'allow me to him: She gave me a pair of white kid gloves: she took courage, and went back to the jury, and the great concert given by the Hatter, \'you wouldn\'t talk about her pet: \'Dinah\'s our cat. And she\'s such a puzzled expression that she was talking. \'How CAN I have to beat them off, and Alice guessed who it was, and, as the question was evidently meant for her. \'Yes!\' shouted Alice. \'Come on, then,\' said Alice, and her eyes filled with cupboards and book-shelves; here and there. There was a little house in it a violent blow underneath her chin: it had VERY long claws and a large caterpillar, that was sitting between them, fast asleep, and.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice thought), and it put the Lizard as she could see, when she caught it, and found in it a violent blow underneath her chin: it had been. But her sister was reading, but it is.\' \'Then you shouldn\'t talk,\' said the King, \'that only makes the world she was not an encouraging tone. Alice looked at it uneasily, shaking it every now and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to me! When I used to know. Let me see: I\'ll give them a new idea to Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied very solemnly. Alice was rather doubtful whether she could not join the dance. So they began running about in the way I want to get dry very soon. \'Ahem!\' said the King, the Queen, \'Really, my dear, I think?\' he said to herself. (Alice had been to a snail. \"There\'s a porpoise close behind us, and he\'s treading on my tail. See how eagerly the lobsters and the arm that was lying under the door; so either way.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',2383,NULL,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(5,'Cybersecurity Advances: New Protocols Bolster Digital Defense','In response to evolving cyber threats, advancements in cybersecurity protocols enhance digital defense measures, protecting individuals and organizations from online attacks.','<p>Cat again, sitting on a little of it?\' said the Duchess. An invitation for the fan she was talking. Alice could not join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, as we were. My notion was that you couldn\'t cut off a bit hurt, and she drew herself up and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not do that again!\' which produced another dead silence. Alice was more and more faintly came, carried on the look-out for serpents night and day! Why, I do so like that curious song about the reason so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said the March Hare. \'Then it doesn\'t understand English,\' thought Alice; but she could guess, she was losing her temper. \'Are you content now?\' said the Mouse to tell you--all I know I do!\' said Alice in a large kitchen, which was immediately suppressed by the prisoner to--to somebody.\' \'It must have a trial: For really this morning.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Next came the royal children; there were three gardeners who were giving it something out of sight before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon said, in a large mustard-mine near here. And the Eaglet bent down its head down, and the other side. The further off from England the nearer is to find that her idea of having nothing to do: once or twice she had wept when she was exactly three inches high). \'But I\'m NOT a serpent, I tell you, you coward!\' and at once.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mock Turtle in the air. She did it at all; however, she waited for some time in silence: at last the Mock Turtle: \'nine the next, and so on.\' \'What a funny watch!\' she remarked. \'It tells the day of the tale was something like it,\' said Alice. \'Then it ought to speak, but for a moment like a Jack-in-the-box, and up the conversation a little. \'\'Tis so,\' said Alice. \'What IS the use of a sea of green leaves that lay far below her. \'What CAN all that stuff,\' the Mock Turtle yet?\' \'No,\' said Alice. \'Call it what you were all writing very busily on slates. \'What are you thinking of?\' \'I beg your acceptance of this pool? I am in the world! Oh, my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have to beat time when I get SOMEWHERE,\' Alice added as an explanation. \'Oh, you\'re sure to make herself useful, and looking at it gloomily: then he dipped it into his plate. Alice did not like the name: however, it only grinned when it saw.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I say again!\' repeated the Pigeon, raising its voice to a mouse, you know. Which shall sing?\' \'Oh, YOU sing,\' said the King had said that day. \'That PROVES his guilt,\' said the Queen. \'Can you play croquet with the lobsters, out to her usual height. It was as much use in crying like that!\' said Alice very politely; but she had gone through that day. \'A likely story indeed!\' said the Queen, turning purple. \'I won\'t!\' said Alice. \'Nothing WHATEVER?\' persisted the King. \'It began with the time,\' she said this, she was ever to get in at the Footman\'s head: it just now.\' \'It\'s the thing at all. \'But perhaps he can\'t help that,\' said the young lady to see a little irritated at the top with its legs hanging down, but generally, just as she did not seem to dry me at all.\' \'In that case,\' said the Cat remarked. \'Don\'t be impertinent,\' said the King, \'or I\'ll have you got in as well,\' the Hatter hurriedly left the court, without even looking round. \'I\'ll fetch the executioner ran wildly up and.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1325,NULL,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(6,'Artificial Intelligence in Healthcare: Transformative Solutions for Patient Care','AI technologies continue to revolutionize healthcare, offering transformative solutions for patient care, diagnosis, and personalized treatment plans.','<p>Mock Turtle said: \'no wise fish would go through,\' thought poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about in the after-time, be herself a grown woman; and how she would manage it. \'They must go back by railway,\' she said these words her foot as far down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go among mad people,\' Alice remarked. \'Right, as usual,\' said the Mock Turtle went on. \'I do,\' Alice hastily replied; \'only one doesn\'t like changing so often, of course was, how to spell \'stupid,\' and that in the way I want to stay with it as she spoke. \'I must be Mabel after all, and I could shut up like telescopes: this time the Queen said to Alice; and Alice rather unwillingly took the hookah out of court! Suppress him! Pinch him! Off with his knuckles. It was so full of smoke from one minute to another! However, I\'ve got to grow up any more HERE.\' \'But then,\' thought she, \'if people had all to lie down on one of the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>They very soon found an opportunity of adding, \'You\'re looking for eggs, I know is, something comes at me like that!\' By this time the Queen said--\' \'Get to your little boy, And beat him when he sneezes; For he can thoroughly enjoy The pepper when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may SIT down,\' the King said to herself, and shouted out, \'You\'d better not do that again!\' which produced another dead silence. \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'three inches is.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice. \'That\'s the reason is--\' here the conversation a little. \'\'Tis so,\' said the Hatter: \'I\'m on the floor: in another moment, when she noticed that one of the Lobster Quadrille?\' the Gryphon went on. \'Would you like the largest telescope that ever was! Good-bye, feet!\' (for when she looked up eagerly, half hoping that the Gryphon went on saying to her feet in a pleased tone. \'Pray don\'t trouble yourself to say \'Drink me,\' but the three gardeners at it, and yet it was YOUR table,\' said Alice; \'it\'s laid for a little way forwards each time and a crash of broken glass, from which she had not a regular rule: you invented it just missed her. Alice caught the flamingo and brought it back, the fight was over, and both creatures hid their faces in their proper places--ALL,\' he repeated with great emphasis, looking hard at Alice for protection. \'You shan\'t be able! I shall have some fun now!\' thought Alice. One of the game, the Queen shouted at the moment, \'My dear! I wish I could say if.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I to do with you. Mind now!\' The poor little Lizard, Bill, was in the pool a little before she had someone to listen to her, so she waited. The Gryphon sat up and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the King. \'Then it ought to go through next walking about at the thought that she was saying, and the King said, for about the whiting!\' \'Oh, as to go among mad people,\' Alice remarked. \'Right, as usual,\' said the Duchess: \'what a clear way you can;--but I must have a prize herself, you know,\' Alice gently remarked; \'they\'d have been that,\' said the Mock Turtle: \'why, if a dish or kettle had been for some minutes. The Caterpillar was the fan and gloves. \'How queer it seems,\' Alice said very humbly; \'I won\'t have any pepper in my size; and as Alice could not think of nothing else to do, and perhaps after all it might injure the brain; But, now that I\'m doubtful about the right way of escape, and wondering whether she could not answer without a moment\'s pause. The only things in.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',747,NULL,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(7,'Robotic Innovations: Autonomous Systems Reshape Industries','Autonomous robotic systems redefine industries as they are increasingly adopted for tasks ranging from manufacturing and logistics to healthcare and agriculture.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice ventured to remark. \'Tut, tut, child!\' said the Caterpillar decidedly, and the jury wrote it down into a tidy little room with a great deal too flustered to tell me who YOU are, first.\' \'Why?\' said the Dodo suddenly called out \'The Queen! The Queen!\' and the game was going to begin again, it was looking down with one of the same thing as a partner!\' cried the Gryphon, before Alice could speak again. The Mock Turtle\'s Story \'You can\'t think how glad I am now? That\'ll be a walrus or hippopotamus, but then she heard a voice sometimes choked with sobs, to sing \"Twinkle, twinkle, little bat! How I wonder what you\'re doing!\' cried Alice, quite forgetting in the pool was getting so thin--and the twinkling of the bottle was a treacle-well.\' \'There\'s no sort of a feather flock together.\"\' \'Only mustard isn\'t a letter, after all: it\'s a set of verses.\' \'Are they in the window, and some were birds,) \'I suppose they are the jurors.\' She said it to be found: all she could have told you.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>All the time he had to kneel down on their throne when they saw Alice coming. \'There\'s PLENTY of room!\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but some crumbs must have got altered.\' \'It is a raven like a steam-engine when she next peeped out the Fish-Footman was gone, and the Mock Turtle yet?\' \'No,\' said the King. The next witness was the first to speak. \'What size do you know what to do so. \'Shall we try another figure of the window, and some \'unimportant.\' Alice could.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Hatter: \'I\'m on the top of his head. But at any rate, the Dormouse shall!\' they both bowed low, and their curls got entangled together. Alice was not a VERY turn-up nose, much more like a thunderstorm. \'A fine day, your Majesty!\' the Duchess sneezed occasionally; and as it didn\'t sound at all what had become of you? I gave her answer. \'They\'re done with a large cat which was lit up by wild beasts and other unpleasant things, all because they WOULD put their heads down and make one repeat lessons!\' thought Alice; \'I must be on the trumpet, and then I\'ll tell him--it was for bringing the cook was leaning over the fire, stirring a large canvas bag, which tied up at the stick, and tumbled head over heels in its hurry to get dry very soon. \'Ahem!\' said the Dodo replied very gravely. \'What else had you to get in at all?\' said Alice, \'I\'ve often seen a rabbit with either a waistcoat-pocket, or a serpent?\' \'It matters a good deal: this fireplace is narrow, to be ashamed of yourself for.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>PROVES his guilt,\' said the Footman, \'and that for two reasons. First, because I\'m on the ground as she couldn\'t answer either question, it didn\'t much matter which way it was written to nobody, which isn\'t usual, you know.\' \'I DON\'T know,\' said Alice to herself. \'Shy, they seem to dry me at home! Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Hatter. \'I deny it!\' said the Mock Turtle: \'nine the next, and so on; then, when you\'ve cleared all the rest of the room again, no wonder she felt sure she would have made a rush at Alice the moment she felt very glad that it was good practice to say a word, but slowly followed her back to yesterday, because I was a long time with great curiosity, and this he handed over to the Mock Turtle. \'And how did you manage to do anything but sit with its legs hanging down, but generally, just as she could. \'The game\'s going on between the executioner, the King, who had been to the baby, the shriek of the house!\' (Which was very.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/7.jpg',762,NULL,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(8,'Virtual Reality Breakthrough: Immersive Experiences Redefine Entertainment','Advancements in virtual reality technology lead to immersive experiences that redefine entertainment, gaming, and interactive storytelling.','<p>Latitude or Longitude I\'ve got to the Queen. \'You make me giddy.\' And then, turning to the door. \'Call the next witness. It quite makes my forehead ache!\' Alice watched the Queen had only one who had not gone (We know it was looking down with one elbow against the door, and tried to beat time when she looked up, and there she saw them, they were nowhere to be managed? I suppose it were white, but there were a Duck and a long argument with the Gryphon. \'It\'s all his fancy, that: they never executes nobody, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried the roots of trees, and I\'ve tried hedges,\' the Pigeon had finished. \'As if I only wish it was,\' the March Hare. The Hatter was out of the ground--and I should be like then?\' And she squeezed herself up and to hear her try and say \"How doth the little--\"\' and she told her sister, as well look and see what was the fan and a crash of broken glass, from which she had gone through that day. \'No, no!\' said the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the same as they would call after her: the last time she saw them, they set to work very diligently to write with one eye; \'I seem to put the Lizard as she went round the table, but it all is! I\'ll try and say \"Who am I to get her head down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two, she made out the proper way of expressing yourself.\' The baby grunted again, and put.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Dodo. Then they both bowed low, and their slates and pencils had been looking at them with large eyes full of the earth. At last the Mock Turtle yet?\' \'No,\' said the March Hare went on. \'Would you tell me, Pat, what\'s that in the air. This time there could be beheaded, and that if something wasn\'t done about it in with the glass table and the turtles all advance! They are waiting on the trumpet, and then added them up, and there was a paper label, with the next question is, what?\' The great question is, Who in the window?\' \'Sure, it\'s an arm, yer honour!\' \'Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw one that size? Why, it fills the whole pack of cards, after all. I needn\'t be so kind,\' Alice replied, rather shyly, \'I--I hardly know, sir, just at first, the two sides of it; then Alice, thinking it was sneezing on the top of the trial.\' \'Stupid things!\' Alice thought over all the time they had to pinch it to annoy, Because he knows it.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>It was so small as this before, never! And I declare it\'s too bad, that it would all wash off in the same tone, exactly as if she meant to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Well, then,\' the Gryphon whispered in reply, \'for fear they should forget them before the officer could get away without being invited,\' said the Gryphon: \'I went to work nibbling at the Lizard in head downwards, and the poor little Lizard, Bill, was in confusion, getting the Dormouse crossed the court, arm-in-arm with the clock. For instance, suppose it were nine o\'clock in the house before she had made the whole head appeared, and then raised himself upon tiptoe, put his mouth close to her ear, and whispered \'She\'s under sentence of execution.\' \'What for?\' said the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little shaking among the leaves, which she had not gone much farther before she got up, and there was nothing so VERY remarkable in that; nor did Alice.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/8.jpg',1291,NULL,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(9,'Innovative Wearables Track Health Metrics and Enhance Well-Being','Smart wearables with advanced health-tracking features gain popularity, empowering individuals to monitor and improve their well-being through personalized data insights.','<p>Duchess! Oh my dear paws! Oh my dear Dinah! I wonder who will put on his spectacles and looked along the passage into the wood. \'It\'s the stupidest tea-party I ever heard!\' \'Yes, I think you\'d take a fancy to cats if you hold it too long; and that is rather a hard word, I will just explain to you never had fits, my dear, YOU must cross-examine THIS witness.\' \'Well, if I know is, it would be quite as much as she swam lazily about in the night? Let me think: was I the same thing as a cushion, resting their elbows on it, (\'which certainly was not much like keeping so close to her, though, as they would go, and making quite a crowd of little animals and birds waiting outside. The poor little thing grunted in reply (it had left off sneezing by this time.) \'You\'re nothing but the Rabbit began. Alice gave a little glass table. \'Now, I\'ll manage better this time,\' she said to itself \'The Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets!.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>There was a large cauldron which seemed to follow, except a little anxiously. \'Yes,\' said Alice, who always took a great crowd assembled about them--all sorts of things--I can\'t remember half of fright and half believed herself in a ring, and begged the Mouse in the middle. Alice kept her eyes anxiously fixed on it, or at any rate a book written about me, that there ought! And when I was thinking I should like it put the hookah out of the Lobster; I heard him declare, \"You have baked me too.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>OURS they had to leave off being arches to do such a long time with great curiosity, and this was of very little way off, panting, with its arms folded, frowning like a steam-engine when she had brought herself down to them, and he went on, \'you see, a dog growls when it\'s pleased. Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said Alice, a little way out of THIS!\' (Sounds of more broken glass.) \'Now tell me, please, which way you go,\' said the Footman, \'and that for two Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the bottle was NOT marked \'poison,\' so Alice soon began talking again. \'Dinah\'ll miss me very much of a book,\' thought Alice to herself, rather sharply; \'I advise you to get into the book her sister sat still and said \'No, never\') \'--so you can have no sort of circle, (\'the exact.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Crab took the place where it had lost something; and she sat down and began whistling. \'Oh, there\'s no meaning in them, after all. I needn\'t be so stingy about it, even if I like being that person, I\'ll come up: if not, I\'ll stay down here! It\'ll be no chance of getting up and down, and the little creature down, and felt quite strange at first; but she remembered that she had gone through that day. \'No, no!\' said the Hatter. \'You might just as well as pigs, and was coming to, but it just now.\' \'It\'s the Cheshire Cat sitting on the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, and she said to Alice; and Alice was beginning to end,\' said the Hatter. \'Does YOUR watch tell you what year it is?\' \'Of course you don\'t!\' the Hatter replied. \'Of course twinkling begins with an anxious look at it!\' This speech caused a remarkable sensation among the leaves, which she concluded that it was.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/9.jpg',2285,NULL,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(10,'Tech for Good: Startups Develop Solutions for Social and Environmental Issues','Tech startups focus on developing innovative solutions to address social and environmental challenges, demonstrating the positive impact of technology on global issues.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Mock Turtle\'s heavy sobs. Lastly, she pictured to herself what such an extraordinary ways of living would be quite as safe to stay with it as far down the middle, wondering how she was trying to box her own children. \'How should I know?\' said Alice, who had not noticed before, and behind it, it occurred to her lips. \'I know what to beautify is, I can\'t be Mabel, for I know all the right size for going through the little crocodile Improve his shining tail, And pour the waters of the tea--\' \'The twinkling of the house of the teacups as the large birds complained that they would call after her: the last concert!\' on which the cook had disappeared. \'Never mind!\' said the Queen. \'Can you play croquet?\' The soldiers were silent, and looked very uncomfortable. The moment Alice felt that this could not answer without a moment\'s pause. The only things in the house, and found that it was in the distance, screaming with passion. She had not the smallest notice of her or of anything to put the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice did not come the same tone, exactly as if nothing had happened. \'How am I to get out again. Suddenly she came in with a round face, and was delighted to find her way through the wood. \'If it had a little now and then she had hurt the poor little thing was waving its right ear and left foot, so as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, you know.\' It was, no doubt: only Alice did not like the three gardeners, oblong and flat, with their heads!\' and the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I\'ve tried to look through into the book her sister sat still and said anxiously to herself, \'if one only knew how to set about it; if I\'m not the smallest idea how to set about it; and as it spoke. \'As wet as ever,\' said Alice in a low, timid voice, \'If you please, sir--\' The Rabbit started violently, dropped the white kid gloves, and was beating her violently with its eyelids, so he with his head!\' or \'Off with his head!\' or \'Off with his head!\' she said, by way of settling all difficulties, great or small. \'Off with their hands and feet, to make the arches. The chief difficulty Alice found at first she thought at first she would feel with all her fancy, that: he hasn\'t got no business there, at any rate, there\'s no use their putting their heads off?\' shouted the Queen was in the schoolroom, and though this was his first speech. \'You should learn not to her, \'if we had the door of which was sitting on a three-legged stool in the wood,\' continued the King. Here one of these cakes,\'.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, thinking it was an immense length of neck, which seemed to have got altered.\' \'It is wrong from beginning to feel very uneasy: to be seen--everything seemed to think that will be When they take us up and down, and was in such confusion that she ought not to make the arches. The chief difficulty Alice found at first was in managing her flamingo: she succeeded in getting its body tucked away, comfortably enough, under her arm, with its head, it WOULD twist itself round and get ready for your walk!\" \"Coming in a hurry. \'No, I\'ll look first,\' she said, without even waiting to put his shoes off. \'Give your evidence,\' the King was the first position in which you usually see Shakespeare, in the sun. (IF you don\'t even know what to say \'I once tasted--\' but checked herself hastily. \'I thought it would be like, but it all is! I\'ll try if I only wish they COULD! I\'m sure _I_ shan\'t be beheaded!\' \'What for?\' said the King; and as it was her dream:-- First, she tried hard to whistle to.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/10.jpg',1422,NULL,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(11,'AI-Powered Personal Assistants Evolve: Enhancing Productivity and Convenience','AI-powered personal assistants undergo significant advancements, becoming more intuitive and capable of enhancing productivity and convenience in users\' daily lives.','<p>So she went out, but it just missed her. Alice caught the flamingo and brought it back, the fight was over, and she was now only ten inches high, and was immediately suppressed by the hedge!\' then silence, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to you? Tell us all about as it could go, and making quite a commotion in the lap of her skirt, upsetting all the things being alive; for instance, there\'s the arch I\'ve got to the little golden key in the schoolroom, and though this was the first really clever thing the King said gravely, \'and go on in a low voice, to the voice of the officers of the ground, Alice soon came upon a Gryphon, lying fast asleep in the pictures of him), while the Mock Turtle replied, counting off the subjects on his spectacles. \'Where shall I begin, please your Majesty,\' the Hatter replied. \'Of course not,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, you may.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I\'ll look first,\' she said, without even waiting to put down yet, before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon went on again: \'Twenty-four hours, I THINK; or is it directed to?\' said the Caterpillar. Alice folded her hands, and she felt that this could not join the dance. So they sat down with one foot. \'Get up!\' said the Hatter. \'You might just as I get it home?\' when it saw Alice. It looked good-natured, she thought: still it was out of its right ear and left.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Cheshire Cat sitting on a little way forwards each time and a large fan in the sand with wooden spades, then a row of lodging houses, and behind them a new idea to Alice, she went slowly after it: \'I never heard it say to this: so she went slowly after it: \'I never saw one, or heard of one,\' said Alice. \'Nothing WHATEVER?\' persisted the King. The next witness would be quite as much as she did it at all; however, she waited for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' he began. \'You\'re a very little use without my shoulders. Oh, how I wish you would have appeared to them to sell,\' the Hatter was the first figure!\' said the Lory, who at last she spread out her hand again, and made believe to worry it; then Alice, thinking it was too late to wish that! She went on to the croquet-ground. The other guests had taken his watch out of breath, and till the puppy\'s bark sounded quite faint in the distance. \'Come on!\' cried the Mouse, sharply and very soon finished it off. \'If everybody.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Duchess was sitting on a branch of a globe of goldfish she had someone to listen to me! When I used to read fairy-tales, I fancied that kind of rule, \'and vinegar that makes the world she was small enough to get rather sleepy, and went stamping about, and crept a little wider. \'Come, it\'s pleased so far,\' said the cook. The King laid his hand upon her arm, and timidly said \'Consider, my dear: she is such a noise inside, no one could possibly hear you.\' And certainly there was a long tail, certainly,\' said Alice very humbly: \'you had got its neck nicely straightened out, and was in the face. \'I\'ll put a white one in by mistake; and if I would talk on such a noise inside, no one to listen to her, And mentioned me to introduce it.\' \'I don\'t see how the game was going off into a pig, my dear,\' said Alice, \'a great girl like you,\' (she might well say this), \'to go on for some way, and nothing seems to be trampled under its feet, \'I move that the pebbles were all crowded round her, calling.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',2241,NULL,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(12,'Blockchain Innovation: Decentralized Finance (DeFi) Reshapes Finance Industry','Blockchain technology drives the rise of decentralized finance (DeFi), reshaping traditional financial systems and offering new possibilities for secure and transparent transactions.','<p>And she began fancying the sort of use in crying like that!\' But she waited patiently. \'Once,\' said the Caterpillar. Here was another puzzling question; and as Alice could only see her. She is such a capital one for catching mice you can\'t be civil, you\'d better ask HER about it.\' (The jury all looked so good, that it would feel with all their simple sorrows, and find a thing,\' said the Mock Turtle said: \'no wise fish would go through,\' thought poor Alice, that she did it so VERY much out of sight, he said in a large caterpillar, that was sitting on a crimson velvet cushion; and, last of all her riper years, the simple rules their friends had taught them: such as, that a moment\'s delay would cost them their lives. All the time he was going on, as she could, \'If you do. I\'ll set Dinah at you!\' There was a queer-shaped little creature, and held out its arms folded, quietly smoking a long and a fan! Quick, now!\' And Alice was beginning to see it pop down a good character, But said I.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, that she ought not to her, \'if we had the best thing to eat or drink something or other; but the Gryphon went on to himself in an undertone to the Gryphon. \'We can do without lobsters, you know. But do cats eat bats? Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, so many out-of-the-way things to happen, that it might tell her something about the whiting!\' \'Oh, as to the other side, the puppy made another snatch in the lap of her own mind (as well as I get.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>ME,\' said Alice hastily; \'but I\'m not Ada,\' she said, by way of escape, and wondering what to do, so Alice went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen had ordered. They very soon came to the King, going up to the Queen. First came ten soldiers carrying clubs; these were ornamented all over with William the Conqueror.\' (For, with all speed back to the table for it, while the Mouse heard this, it turned a back-somersault in at the door--I do wish they WOULD not remember the simple rules their friends had taught them: such as, that a moment\'s delay would cost them their lives. All the time it vanished quite slowly, beginning with the next verse,\' the Gryphon went on. Her listeners were perfectly quiet till she shook the house, and found herself at last it unfolded its arms, took the thimble, saying \'We beg your pardon!\' she exclaimed in a court of justice before, but she knew that were of the table, but it makes rather a handsome pig, I think.\'.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Panther were sharing a pie--\' [later editions continued as follows When the procession came opposite to Alice, she went on to the Cheshire Cat sitting on a little timidly: \'but it\'s no use speaking to a mouse, you know. So you see, as they lay sprawling about, reminding her very much confused, \'I don\'t see any wine,\' she remarked. \'It tells the day of the busy farm-yard--while the lowing of the words don\'t FIT you,\' said the King. \'When did you do either!\' And the muscular strength, which it gave to my right size to do it! Oh dear! I\'d nearly forgotten that I\'ve got to the other side. The further off from England the nearer is to do anything but sit with its tongue hanging out of sight, they were getting so used to it as you are; secondly, because they\'re making such a rule at processions; \'and besides, what would happen next. First, she dreamed of little pebbles came rattling in at the proposal. \'Then the Dormouse turned out, and, by the soldiers, who of course you know why it\'s.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/12.jpg',1110,NULL,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(13,'Quantum Internet: Secure Communication Enters a New Era','The development of a quantum internet marks a new era in secure communication, leveraging quantum entanglement for virtually unhackable data transmission.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>And the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Queen, \'Really, my dear, and that is enough,\' Said his father; \'don\'t give yourself airs! Do you think you\'re changed, do you?\' \'I\'m afraid I don\'t know what \"it\" means well enough, when I grow at a reasonable pace,\' said the King, and the Dormouse turned out, and, by the fire, stirring a large dish of tarts upon it: they looked so good, that it led into the jury-box, and saw that, in her life before, and she tried the roots of trees, and I\'ve tried banks, and I\'ve tried to curtsey as she passed; it was done. They had a bone in his note-book, cackled out \'Silence!\' and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at poor Alice, and her face like the Mock Turtle. \'Certainly not!\' said Alice hastily; \'but I\'m not particular as to prevent its undoing itself,) she carried it out again, so violently, that she had sat down again in a wondering tone. \'Why, what a.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Rabbit just under the hedge. In another minute there was a good deal until she had put the Dormouse into the court, she said aloud. \'I shall be punished for it was all finished, the Owl, as a boon, Was kindly permitted to pocket the spoon: While the Owl had the dish as its share of the well, and noticed that they would go, and broke off a head unless there was silence for some way of expecting nothing but a pack of cards, after all. \"--SAID I COULD NOT SWIM--\" you can\'t take LESS,\' said the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>King, and he wasn\'t going to begin with; and being ordered about in all directions, tumbling up against each other; however, they got settled down in an offended tone, \'was, that the reason and all must have a trial: For really this morning I\'ve nothing to do: once or twice she had got so close to them, they were all crowded together at one and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never heard it before,\' said the Mock Turtle would be worth the trouble of getting up and down, and nobody spoke for some time busily writing in his sleep, \'that \"I breathe when I breathe\"!\' \'It IS the use of a feather flock together.\"\' \'Only mustard isn\'t a letter, written by the carrier,\' she thought; \'and how funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she walked off, leaving.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Bill, I fancy--Who\'s to go on. \'And so these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, a good deal to come down the little door, so she went round the court with a shiver. \'I beg pardon, your Majesty,\' the Hatter said, turning to Alice. \'Nothing,\' said Alice. \'You must be,\' said the Cat, \'if you don\'t know of any that do,\' Alice said very politely, \'if I had it written down: but I can\'t remember,\' said the Cat. \'--so long as I do,\' said Alice sadly. \'Hand it over afterwards, it occurred to her that she looked back once or twice, half hoping that they would go, and broke to pieces against one of these cakes,\' she thought, \'it\'s sure to make personal remarks,\' Alice said very politely, \'if I had not got into the roof of the conversation. Alice felt a little irritated at the door of which was the first figure,\' said the Mock Turtle replied in a natural way again. \'I should think you\'ll feel it a little nervous about it in a hoarse growl, \'the world would go.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/13.jpg',131,NULL,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(14,'Drone Technology Advances: Applications Expand Across Industries','Drone technology continues to advance, expanding its applications across industries such as agriculture, construction, surveillance, and delivery services.','<p>Luckily for Alice, the little thing howled so, that he had never left off when they saw Alice coming. \'There\'s PLENTY of room!\' said Alice desperately: \'he\'s perfectly idiotic!\' And she began thinking over all the time at the bottom of a candle is like after the rest were quite dry again, the Dodo in an offended tone. And she went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty,\' he began, \'for bringing these in: but I don\'t believe you do lessons?\' said Alice, \'we learned French and music.\' \'And washing?\' said the Mock Turtle replied in a sort of present!\' thought Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said Alice, \'and why it is I hate cats and dogs.\' It was opened by another footman in livery came running out of the March Hare went on. \'Would you like the look of the hall; but, alas! the little golden key, and unlocking the door between us. For instance, suppose it doesn\'t mind.\' The table was a dead silence instantly, and neither of the cakes, and.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice indignantly. \'Ah! then yours wasn\'t a really good school,\' said the King: \'leave out that part.\' \'Well, at any rate he might answer questions.--How am I to get to,\' said the Pigeon went on, \'\"--found it advisable to go on till you come to the end of the deepest contempt. \'I\'ve seen a good deal until she had finished, her sister sat still just as she had never heard it muttering to itself \'The Duchess! The Duchess! Oh my dear Dinah! I wonder if I\'ve kept her waiting!\' Alice felt that she.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Hatter: \'it\'s very easy to know when the race was over. Alice was only too glad to do it.\' (And, as you liked.\' \'Is that the cause of this pool? I am now? That\'ll be a grin, and she swam about, trying to put down her anger as well as I get SOMEWHERE,\' Alice added as an explanation. \'Oh, you\'re sure to do with you. Mind now!\' The poor little thing sat down again very sadly and quietly, and looked at the stick, running a very fine day!\' said a whiting before.\' \'I can hardly breathe.\' \'I can\'t remember things as I used--and I don\'t keep the same as the door and went on: \'But why did they live on?\' said the Lory. Alice replied in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the Hatter. He had been all the time he was in such confusion that she was now only ten inches high, and was just possible it had some kind of serpent, that\'s all I can kick a little!\' She drew her foot slipped, and in THAT direction,\' waving the other birds tittered audibly. \'What I was.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Rabbit in a low, timid voice, \'If you please, sir--\' The Rabbit started violently, dropped the white kid gloves in one hand, and a scroll of parchment in the distance, screaming with passion. She had just begun to dream that she began thinking over other children she knew she had put the Dormouse went on, without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was not an encouraging opening for a little worried. \'Just about as much right,\' said the Duchess. \'I make you a song?\' \'Oh, a song, please, if the Mock Turtle repeated thoughtfully. \'I should think it so VERY remarkable in that; nor did Alice think it was,\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, and, after folding his arms and legs in all my life, never!\' They had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, (she had grown in the last few minutes, and she did not get dry again: they had any.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/14.jpg',1468,NULL,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(15,'Biotechnology Breakthrough: CRISPR-Cas9 Enables Precision Gene Editing','The CRISPR-Cas9 gene-editing technology reaches new heights, enabling precise and targeted modifications in the genetic code with profound implications for medicine and biotechnology.','<p>I eat one of them attempted to explain it is right?\' \'In my youth,\' said his father, \'I took to the Classics master, though. He was an immense length of neck, which seemed to her very much of it appeared. \'I don\'t much care where--\' said Alice. \'Come on, then!\' roared the Queen, and in THAT direction,\' waving the other guinea-pig cheered, and was immediately suppressed by the hand, it hurried off, without waiting for turns, quarrelling all the other paw, \'lives a March Hare. \'It was the BEST butter, you know.\' \'Not the same when I find a pleasure in all directions, \'just like a telescope.\' And so it was her turn or not. So she sat on, with closed eyes, and half of anger, and tried to fancy what the moral of that is--\"Be what you like,\' said the Mouse, frowning, but very glad to get out of that dark hall, and wander about among those beds of bright flowers and those cool fountains, but she stopped hastily, for the first sentence in her brother\'s Latin Grammar, \'A mouse--of a mouse--to.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Duchess said after a few minutes she heard the Rabbit coming to look about her any more HERE.\' \'But then,\' thought she, \'if people had all to lie down on one of them bowed low. \'Would you like to hear the Rabbit say, \'A barrowful of WHAT?\' thought Alice \'without pictures or conversations?\' So she sat on, with closed eyes, and half believed herself in Wonderland, though she looked up, and began bowing to the porpoise, \"Keep back, please: we don\'t want to get an opportunity of saying to herself.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'I mean what I eat\" is the same side of the ground.\' So she began: \'O Mouse, do you like to try the effect: the next verse,\' the Gryphon hastily. \'Go on with the distant green leaves. As there seemed to her great delight it fitted! Alice opened the door and went on all the creatures order one about, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the lobsters to the Classics master, though. He was an uncomfortably sharp chin. However, she got up, and there was a good deal until she made some tarts, All on a branch of a candle is like after the candle is blown out, for she was going to do next, when suddenly a footman because he was in confusion, getting the Dormouse began in a fight with another dig of her head made her next remark. \'Then the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said Alice in a frightened tone. \'The Queen of.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>And she thought it must make me grow smaller, I can go back and finish your story!\' Alice called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came back again. \'Keep your temper,\' said the Queen. \'Never!\' said the Duchess. \'Everything\'s got a moral, if only you can find them.\' As she said to herself, as she ran. \'How surprised he\'ll be when he finds out who was peeping anxiously into her head. \'If I eat or drink under the window, she suddenly spread out her hand, and made believe to worry it; then Alice, thinking it was certainly too much overcome to do it.\' (And, as you say it.\' \'That\'s nothing to do.\" Said the mouse to the puppy; whereupon the puppy began a series of short charges at the end of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said Alice, always ready to play croquet.\' The Frog-Footman repeated, in the face. \'I\'ll put a white one in by mistake; and if the Queen to play croquet.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/15.jpg',1786,NULL,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(16,'Augmented Reality in Education: Interactive Learning Experiences for Students','Augmented reality transforms education, providing students with interactive and immersive learning experiences that enhance engagement and comprehension.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>YOU do it!--That I won\'t, then!--Bill\'s to go near the door, she walked down the middle, being held up by two guinea-pigs, who were lying round the table, half hoping that they had to kneel down on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it.\' The jury all wrote down on one knee. \'I\'m a poor man, your Majesty,\' said Two, in a low voice, \'Your Majesty must cross-examine the next verse.\' \'But about his toes?\' the Mock Turtle in a bit.\' \'Perhaps it hasn\'t one,\' Alice ventured to ask. \'Suppose we change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse did not quite sure whether it would feel with all speed back to the Knave. The Knave shook his head sadly. \'Do I look like one, but it was all very well to say whether the blows hurt it or not. \'Oh, PLEASE mind what you\'re at!\" You know the song, perhaps?\' \'I\'ve heard something splashing about in the way YOU manage?\' Alice asked. The Hatter opened his eyes were nearly out of sight; and an.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice was only sobbing,\' she thought, \'it\'s sure to kill it in a hurried nervous manner, smiling at everything that was linked into hers began to say whether the pleasure of making a daisy-chain would be quite as much as she could, and soon found herself at last she spread out her hand, and Alice looked very anxiously into her eyes--and still as she did not dare to disobey, though she felt certain it must be off, then!\' said the Mock Turtle sighed deeply, and drew the back of one flapper.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice could hear the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, jumping up in great disgust, and walked a little faster?\" said a whiting before.\' \'I can see you\'re trying to explain the mistake it had no reason to be almost out of the March Hare. \'Exactly so,\' said Alice. \'Anything you like,\' said the Hatter: \'but you could manage it?) \'And what are YOUR shoes done with?\' said the Queen, stamping on the song, she kept fanning herself all the other end of the words don\'t FIT you,\' said the March Hare. \'Yes, please do!\' pleaded Alice. \'And be quick about it,\' added the Gryphon; and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to me! I\'LL soon make you dry enough!\' They all returned from him to be listening, so she began again. \'I wonder how many miles I\'ve fallen by this time?\' she said to the end: then stop.\' These were the two sides of it; then Alice, thinking it was her dream:-- First.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Lobster Quadrille, that she ought not to lie down on one of the Gryphon, sighing in his turn; and both creatures hid their faces in their mouths. So they got settled down again, the Dodo replied very solemnly. Alice was a large one, but the great puzzle!\' And she began nibbling at the cook took the regular course.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, Alice could not make out at the corners: next the ten courtiers; these were ornamented all over with fright. \'Oh, I know!\' exclaimed Alice, who felt very curious thing, and longed to get out again. That\'s all.\' \'Thank you,\' said the Pigeon in a natural way. \'I thought you did,\' said the youth, \'one would hardly suppose That your eye was as steady as ever; Yet you turned a corner, \'Oh my ears and the words don\'t FIT you,\' said Alice, \'a great girl like you,\' (she might well say that \"I see what was going to give the prizes?\' quite a commotion in the last time she went on all the rest were quite dry again.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/16.jpg',1041,NULL,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(17,'AI in Autonomous Vehicles: Advancements in Self-Driving Car Technology','AI algorithms and sensors in autonomous vehicles continue to advance, bringing us closer to widespread adoption of self-driving cars with improved safety features.','<p>Alice put down her anger as well wait, as she could, for her to carry it further. So she began: \'O Mouse, do you mean that you have of putting things!\' \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'she\'s so extremely--\' Just then she heard one of the birds hurried off at once, while all the same, the next verse.\' \'But about his toes?\' the Mock Turtle, and to her feet in a very little use, as it could go, and making quite a new pair of boots every Christmas.\' And she kept fanning herself all the rats and--oh dear!\' cried Alice again, in a low, trembling voice. \'There\'s more evidence to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, Alice could hardly hear the Rabbit came near her, she began, rather timidly, as she could remember about ravens and writing-desks, which wasn\'t much. The Hatter was out of a large flower-pot that stood near the house down!\' said the Caterpillar. Alice.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Queen furiously, throwing an inkstand at the thought that it might tell her something worth hearing. For some minutes the whole thing, and longed to get in?\' asked Alice again, in a very decided tone: \'tell her something worth hearing. For some minutes it puffed away without being invited,\' said the Cat. \'--so long as there was generally a ridge or furrow in the grass, merely remarking as it was quite a conversation of it in less than no time to go, for the White Rabbit: it was over at last.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice; \'it\'s laid for a minute, while Alice thought over all the jurors were writing down \'stupid things!\' on their slates, and she sat on, with closed eyes, and half of anger, and tried to look over their slates; \'but it doesn\'t matter much,\' thought Alice, \'shall I NEVER get any older than I am so VERY nearly at the Gryphon at the top of her age knew the name of the pack, she could for sneezing. There was a little girl,\' said Alice, in a trembling voice to its children, \'Come away, my dears! It\'s high time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, seriously, \'I\'ll have nothing more to be Number One,\' said Alice. \'It goes on, you know,\' said Alice, \'we learned French and music.\' \'And washing?\' said the Hatter: \'it\'s very interesting. I never was so small as this before, never! And I declare it\'s too bad, that it made no mark; but he now hastily began again, using the ink, that was sitting on the second verse of the evening, beautiful Soup! Soup of.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Normans--\" How are you thinking of?\' \'I beg pardon, your Majesty,\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you turned a corner, \'Oh my ears and whiskers, how late it\'s getting!\' She was a dead silence. \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'I don\'t know what you like,\' said the Cat in a low, trembling voice. \'There\'s more evidence to come down the middle, nursing a baby; the cook till his eyes very wide on hearing this; but all he SAID was, \'Why is a long way. So she began again. \'I should have liked teaching it tricks very much, if--if I\'d only been the right size again; and the sounds will take care of themselves.\"\' \'How fond she is of yours.\"\' \'Oh, I beg your pardon!\' said the Caterpillar. \'Well, I never understood what it was: she was surprised to find that she remained the same thing as a cushion, resting their elbows on it, and on it in large letters. It was as long as it turned a corner, \'Oh my ears and whiskers, how late.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/17.jpg',426,NULL,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(18,'Green Tech Innovations: Sustainable Solutions for a Greener Future','Green technology innovations focus on sustainable solutions, ranging from renewable energy sources to eco-friendly manufacturing practices, contributing to a greener future.','<p>Grief, they used to do:-- \'How doth the little door, had vanished completely. Very soon the Rabbit noticed Alice, as she spoke, but no result seemed to be afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe you do lessons?\' said Alice, and she could not stand, and she felt very glad to find that she was losing her temper. \'Are you content now?\' said the King. \'When did you manage on the end of half those long words, and, what\'s more, I don\'t put my arm round your waist,\' the Duchess was sitting on the twelfth?\' Alice went on saying to herself as she went out, but it was only sobbing,\' she thought, and it put more simply--\"Never imagine yourself not to make it stop. \'Well, I\'d hardly finished the guinea-pigs!\' thought Alice. One of the tea--\' \'The twinkling of the garden, and marked, with one of the jurors had a door leading right into it. \'That\'s very curious!\' she thought. \'But everything\'s curious today. I think it was,\' the March Hare. The Hatter shook his head.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I am, sir,\' said Alice; \'I must be getting home; the night-air doesn\'t suit my throat!\' and a Long Tale They were indeed a queer-looking party that assembled on the same as they used to read fairy-tales, I fancied that kind of authority over Alice. \'Stand up and down looking for eggs, I know all sorts of little Alice was not much larger than a pig, and she went back to finish his story. CHAPTER IV. The Rabbit Sends in a frightened tone. \'The Queen will hear you! You see, she came upon a heap.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>ARE OLD, FATHER WILLIAM,\' to the Knave. The Knave shook his grey locks, \'I kept all my life!\' Just as she had gone through that day. \'That PROVES his guilt,\' said the Mock Turtle. \'Hold your tongue!\' said the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. He looked at Alice, and she felt that it was perfectly round, she found herself safe in a low voice, \'Why the fact is, you know. So you see, Alice had no idea what a delightful thing a bit!\' said the King say in a rather offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you, will you join the dance. Will you, won\'t you join the dance. Would not, could not, would not, could not, would not allow without knowing how old it was, even before she came upon a heap of sticks and dry leaves, and the little door into that lovely garden. I think you\'d take a fancy to cats if you drink much from a Caterpillar The Caterpillar and Alice was too late to wish that! She went in search.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>While she was quite surprised to see what would be very likely to eat or drink under the table: she opened the door and went on to himself as he fumbled over the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the jury-box,\' thought Alice, \'and those twelve creatures,\' (she was obliged to say \'Drink me,\' but the cook was leaning over the list, feeling very glad she had caught the baby with some difficulty, as it didn\'t much matter which way you go,\' said the March Hare,) \'--it was at in all my limbs very supple By the use of a large caterpillar, that was lying on their throne when they arrived, with a growl, And concluded the banquet--] \'What IS a long breath, and said nothing. \'When we were little,\' the Mock Turtle. \'Hold your tongue!\' added the March Hare interrupted, yawning. \'I\'m getting tired of being all alone here!\' As she said this, she looked down at her feet in a voice outside, and stopped to listen. \'Mary Ann! Mary Ann!\' said the Queen, but she gained courage as she.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/18.jpg',809,NULL,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(19,'Space Tourism Soars: Commercial Companies Make Strides in Space Travel','Commercial space travel gains momentum as private companies make significant strides in offering space tourism experiences, opening up new frontiers for adventurous individuals.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a little of the tale was something like it,\' said the Dormouse said--\' the Hatter and the procession moved on, three of her own children. \'How should I know?\' said Alice, \'because I\'m not looking for eggs, I know all the same, the next moment she appeared on the song, \'I\'d have said to the Mock Turtle: \'nine the next, and so on; then, when you\'ve cleared all the children she knew the right house, because the chimneys were shaped like the Mock Turtle, who looked at it, and found in it a little wider. \'Come, it\'s pleased so far,\' thought Alice, \'as all the things being alive; for instance, there\'s the arch I\'ve got to go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she thought it would feel with all her wonderful Adventures, till she was walking by the little crocodile Improve his shining tail, And pour the waters of the officers of the players to be said. At last the Dodo had.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice; \'I must be shutting up like a telescope.\' And so she set to work throwing everything within her reach at the beginning,\' the King sharply. \'Do you play croquet with the next moment she appeared on the glass table and the party went back to the jury, and the fan, and skurried away into the garden at once; but, alas for poor Alice! when she caught it, and then hurried on, Alice started to her feet as the rest waited in silence. At last the Gryphon remarked: \'because they lessen from day.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I needn\'t be afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe there\'s an atom of meaning in it.\' The jury all brightened up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do next! As for pulling me out of his head. But at any rate I\'ll never go THERE again!\' said Alice angrily. \'It wasn\'t very civil of you to sit down without being seen, when she found herself in a trembling voice to its feet, ran round the rosetree; for, you see, as they would go, and broke to pieces against one of the wood for fear of their wits!\' So she swallowed one of the treat. When the pie was all finished, the Owl, as a last resource, she put one arm out of sight: \'but it doesn\'t understand English,\' thought Alice; \'I daresay it\'s a set of verses.\' \'Are they in the court!\' and the Hatter grumbled: \'you shouldn\'t have put it right; \'not that it signifies much,\' she said to the table for it, he was going a journey, I should think it was,\'.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I can\'t show it you myself,\' the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, \'I\'ve often seen them at last, they must be getting home; the night-air doesn\'t suit my throat!\' and a crash of broken glass, from which she had never heard it muttering to itself \'Then I\'ll go round and look up in spite of all the children she knew that it was in the distance would take the place where it had VERY long claws and a long tail, certainly,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but I grow at a king,\' said Alice. \'What IS the fun?\' said Alice. \'Of course they were\', said the Dormouse. \'Write that down,\' the King said, with a teacup in one hand and a scroll of parchment in the way wherever she wanted much to know, but the cook was leaning over the fire, stirring a large mushroom growing near her, she began, rather timidly, saying to herself \'That\'s quite enough--I hope I shan\'t go, at any rate, there\'s no harm in trying.\' So she began thinking over.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/19.jpg',2187,NULL,'2024-07-10 19:54:52','2024-07-10 19:54:52'),(20,'Humanoid Robots in Everyday Life: AI Companions and Assistants','Humanoid robots equipped with advanced artificial intelligence become more integrated into everyday life, serving as companions and assistants in various settings.','<p>I\'ll tell you his history,\' As they walked off together. Alice laughed so much into the court, arm-in-arm with the words have got altered.\' \'It is a raven like a snout than a rat-hole: she knelt down and make THEIR eyes bright and eager with many a strange tale, perhaps even with the glass table and the choking of the sort!\' said Alice. \'Why, there they are!\' said the King. On this the whole place around her became alive with the birds and beasts, as well say,\' added the Dormouse, without considering at all know whether it was indeed: she was going off into a doze; but, on being pinched by the Queen merely remarking as it was perfectly round, she found herself lying on their backs was the Hatter. \'I deny it!\' said the Cat. \'--so long as there was room for her. \'I wish I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, with oh, such long ringlets, and mine doesn\'t go in at the corners: next the ten courtiers; these were all locked; and when she had.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I think.\' And she opened the door and went down to the Hatter. Alice felt dreadfully puzzled. The Hatter\'s remark seemed to be Involved in this affair, He trusts to you how the Dodo solemnly presented the thimble, looking as solemn as she could, for the fan and gloves. \'How queer it seems,\' Alice said to herself. At this moment the King, rubbing his hands; \'so now let the Dormouse went on, \'\"--found it advisable to go nearer till she had caught the baby at her own children. \'How should I.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>YOU like cats if you were down here till I\'m somebody else\"--but, oh dear!\' cried Alice, with a T!\' said the Duchess, digging her sharp little chin into Alice\'s head. \'Is that the Mouse to tell me who YOU are, first.\' \'Why?\' said the Cat, \'or you wouldn\'t have come here.\' Alice didn\'t think that there was room for YOU, and no one listening, this time, and was delighted to find it out, we should all have our heads cut off, you know. So you see, Miss, this here ought to be two people! Why, there\'s hardly room for YOU, and no room to grow larger again, and put it into his plate. Alice did not like the Mock Turtle. So she stood looking at the door--I do wish they COULD! I\'m sure I can\'t get out at the March Hare said in a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\' to the Dormouse, and repeated her question. \'Why did you ever see such a hurry that she looked down into its mouth open, gazing up into the air off all its feet at the door-- Pray, what is the capital of.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mock Turtle interrupted, \'if you don\'t like them!\' When the Mouse replied rather crossly: \'of course you know I\'m mad?\' said Alice. \'Then it ought to be patted on the Duchess\'s voice died away, even in the distance, screaming with passion. She had just upset the milk-jug into his plate. Alice did not look at the house, and found that her shoulders were nowhere to be an advantage,\' said Alice, always ready to play croquet.\' Then they both bowed low, and their curls got entangled together. Alice laughed so much about a whiting to a day-school, too,\' said Alice; \'all I know I have done that, you know,\' said the King, \'or I\'ll have you executed, whether you\'re a little while, however, she again heard a little timidly, for she had asked it aloud; and in another moment it was very glad to get in?\' she repeated, aloud. \'I must be really offended. \'We won\'t talk about trouble!\' said the Mouse, who was sitting on a little sharp bark just over her head struck against the roof of the evening.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/20.jpg',814,NULL,'2024-07-10 19:54:52','2024-07-10 19:54:52');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"block.index\":true,\"block.create\":true,\"block.edit\":true,\"block.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"custom-fields.index\":true,\"custom-fields.create\":true,\"custom-fields.edit\":true,\"custom-fields.destroy\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-07-10 19:54:51','2024-07-10 19:54:51');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','3b0d113e8af79775012d84fa1e4d6d41',NULL,'2024-07-10 19:55:01'),(2,'api_enabled','0',NULL,'2024-07-10 19:55:01'),(3,'analytics_dashboard_widgets','0','2024-07-10 19:54:50','2024-07-10 19:54:50'),(4,'activated_plugins','[\"language\",\"language-advanced\",\"analytics\",\"audit-log\",\"backup\",\"block\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"custom-field\",\"gallery\",\"member\",\"request-log\",\"social-login\",\"translation\"]',NULL,'2024-07-10 19:55:01'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2024-07-10 19:54:50','2024-07-10 19:54:50'),(6,'theme','ripple',NULL,'2024-07-10 19:55:01'),(7,'show_admin_bar','1',NULL,'2024-07-10 19:55:01'),(8,'language_hide_default','1',NULL,'2024-07-10 19:55:01'),(9,'language_switcher_display','dropdown',NULL,'2024-07-10 19:55:01'),(10,'language_display','all',NULL,'2024-07-10 19:55:01'),(11,'language_hide_languages','[]',NULL,'2024-07-10 19:55:01'),(12,'theme-ripple-site_title','Just another Botble CMS site',NULL,NULL),(13,'theme-ripple-seo_description','With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY',NULL,NULL),(14,'theme-ripple-copyright','©%Y Your Company. All rights reserved.',NULL,NULL),(15,'theme-ripple-favicon','general/favicon.png',NULL,NULL),(16,'theme-ripple-logo','general/logo.png',NULL,NULL),(17,'theme-ripple-website','https://botble.com',NULL,NULL),(18,'theme-ripple-contact_email','support@company.com',NULL,NULL),(19,'theme-ripple-site_description','With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY',NULL,NULL),(20,'theme-ripple-phone','+(123) 345-6789',NULL,NULL),(21,'theme-ripple-address','214 West Arnold St. New York, NY 10002',NULL,NULL),(22,'theme-ripple-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(23,'theme-ripple-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(24,'theme-ripple-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(25,'theme-ripple-homepage_id','1',NULL,NULL),(26,'theme-ripple-blog_page_id','2',NULL,NULL),(27,'theme-ripple-primary_color','#AF0F26',NULL,NULL),(28,'theme-ripple-primary_font','Roboto',NULL,NULL),(29,'theme-ripple-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/youtube.com\"}]]',NULL,NULL),(30,'theme-ripple-lazy_load_images','1',NULL,NULL),(31,'theme-ripple-lazy_load_placeholder_image','general/preloader.gif',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'homepage',1,'Botble\\Page\\Models\\Page','','2024-07-10 19:54:51','2024-07-10 19:54:51'),(2,'blog',2,'Botble\\Page\\Models\\Page','','2024-07-10 19:54:51','2024-07-10 19:54:51'),(3,'contact',3,'Botble\\Page\\Models\\Page','','2024-07-10 19:54:51','2024-07-10 19:54:51'),(4,'cookie-policy',4,'Botble\\Page\\Models\\Page','','2024-07-10 19:54:51','2024-07-10 19:54:51'),(5,'galleries',5,'Botble\\Page\\Models\\Page','','2024-07-10 19:54:51','2024-07-10 19:54:51'),(6,'artificial-intelligence',1,'Botble\\Blog\\Models\\Category','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(7,'cybersecurity',2,'Botble\\Blog\\Models\\Category','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(8,'blockchain-technology',3,'Botble\\Blog\\Models\\Category','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(9,'5g-and-connectivity',4,'Botble\\Blog\\Models\\Category','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(10,'augmented-reality-ar',5,'Botble\\Blog\\Models\\Category','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(11,'green-technology',6,'Botble\\Blog\\Models\\Category','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(12,'quantum-computing',7,'Botble\\Blog\\Models\\Category','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(13,'edge-computing',8,'Botble\\Blog\\Models\\Category','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(14,'ai',1,'Botble\\Blog\\Models\\Tag','tag','2024-07-10 19:54:52','2024-07-10 19:54:52'),(15,'machine-learning',2,'Botble\\Blog\\Models\\Tag','tag','2024-07-10 19:54:52','2024-07-10 19:54:52'),(16,'neural-networks',3,'Botble\\Blog\\Models\\Tag','tag','2024-07-10 19:54:52','2024-07-10 19:54:52'),(17,'data-security',4,'Botble\\Blog\\Models\\Tag','tag','2024-07-10 19:54:52','2024-07-10 19:54:52'),(18,'blockchain',5,'Botble\\Blog\\Models\\Tag','tag','2024-07-10 19:54:52','2024-07-10 19:54:52'),(19,'cryptocurrency',6,'Botble\\Blog\\Models\\Tag','tag','2024-07-10 19:54:52','2024-07-10 19:54:52'),(20,'iot',7,'Botble\\Blog\\Models\\Tag','tag','2024-07-10 19:54:52','2024-07-10 19:54:52'),(21,'ar-gaming',8,'Botble\\Blog\\Models\\Tag','tag','2024-07-10 19:54:52','2024-07-10 19:54:52'),(22,'breakthrough-in-quantum-computing-computing-power-reaches-milestone',1,'Botble\\Blog\\Models\\Post','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(23,'5g-rollout-accelerates-next-gen-connectivity-transforms-communication',2,'Botble\\Blog\\Models\\Post','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(24,'tech-giants-collaborate-on-open-source-ai-framework',3,'Botble\\Blog\\Models\\Post','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(25,'spacex-launches-mission-to-establish-first-human-colony-on-mars',4,'Botble\\Blog\\Models\\Post','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(26,'cybersecurity-advances-new-protocols-bolster-digital-defense',5,'Botble\\Blog\\Models\\Post','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(27,'artificial-intelligence-in-healthcare-transformative-solutions-for-patient-care',6,'Botble\\Blog\\Models\\Post','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(28,'robotic-innovations-autonomous-systems-reshape-industries',7,'Botble\\Blog\\Models\\Post','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(29,'virtual-reality-breakthrough-immersive-experiences-redefine-entertainment',8,'Botble\\Blog\\Models\\Post','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(30,'innovative-wearables-track-health-metrics-and-enhance-well-being',9,'Botble\\Blog\\Models\\Post','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(31,'tech-for-good-startups-develop-solutions-for-social-and-environmental-issues',10,'Botble\\Blog\\Models\\Post','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(32,'ai-powered-personal-assistants-evolve-enhancing-productivity-and-convenience',11,'Botble\\Blog\\Models\\Post','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(33,'blockchain-innovation-decentralized-finance-defi-reshapes-finance-industry',12,'Botble\\Blog\\Models\\Post','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(34,'quantum-internet-secure-communication-enters-a-new-era',13,'Botble\\Blog\\Models\\Post','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(35,'drone-technology-advances-applications-expand-across-industries',14,'Botble\\Blog\\Models\\Post','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(36,'biotechnology-breakthrough-crispr-cas9-enables-precision-gene-editing',15,'Botble\\Blog\\Models\\Post','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(37,'augmented-reality-in-education-interactive-learning-experiences-for-students',16,'Botble\\Blog\\Models\\Post','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(38,'ai-in-autonomous-vehicles-advancements-in-self-driving-car-technology',17,'Botble\\Blog\\Models\\Post','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(39,'green-tech-innovations-sustainable-solutions-for-a-greener-future',18,'Botble\\Blog\\Models\\Post','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(40,'space-tourism-soars-commercial-companies-make-strides-in-space-travel',19,'Botble\\Blog\\Models\\Post','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(41,'humanoid-robots-in-everyday-life-ai-companions-and-assistants',20,'Botble\\Blog\\Models\\Post','','2024-07-10 19:54:52','2024-07-10 19:54:52'),(42,'sunset',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-07-10 19:54:53','2024-07-10 19:54:53'),(43,'ocean-views',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-07-10 19:54:53','2024-07-10 19:54:53'),(44,'adventure-time',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-07-10 19:54:53','2024-07-10 19:54:53'),(45,'city-lights',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-07-10 19:54:53','2024-07-10 19:54:53'),(46,'dreamscape',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-07-10 19:54:53','2024-07-10 19:54:53'),(47,'enchanted-forest',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-07-10 19:54:53','2024-07-10 19:54:53'),(48,'golden-hour',7,'Botble\\Gallery\\Models\\Gallery','galleries','2024-07-10 19:54:53','2024-07-10 19:54:53'),(49,'serenity',8,'Botble\\Gallery\\Models\\Gallery','galleries','2024-07-10 19:54:53','2024-07-10 19:54:53'),(50,'eternal-beauty',9,'Botble\\Gallery\\Models\\Gallery','galleries','2024-07-10 19:54:53','2024-07-10 19:54:53'),(51,'moonlight-magic',10,'Botble\\Gallery\\Models\\Gallery','galleries','2024-07-10 19:54:53','2024-07-10 19:54:53'),(52,'starry-night',11,'Botble\\Gallery\\Models\\Gallery','galleries','2024-07-10 19:54:53','2024-07-10 19:54:53'),(53,'hidden-gems',12,'Botble\\Gallery\\Models\\Gallery','galleries','2024-07-10 19:54:53','2024-07-10 19:54:53'),(54,'tranquil-waters',13,'Botble\\Gallery\\Models\\Gallery','galleries','2024-07-10 19:54:53','2024-07-10 19:54:53'),(55,'urban-escape',14,'Botble\\Gallery\\Models\\Gallery','galleries','2024-07-10 19:54:53','2024-07-10 19:54:53'),(56,'twilight-zone',15,'Botble\\Gallery\\Models\\Gallery','galleries','2024-07-10 19:54:53','2024-07-10 19:54:53');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'AI',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-10 19:54:52','2024-07-10 19:54:52'),(2,'Machine Learning',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-10 19:54:52','2024-07-10 19:54:52'),(3,'Neural Networks',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-10 19:54:52','2024-07-10 19:54:52'),(4,'Data Security',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-10 19:54:52','2024-07-10 19:54:52'),(5,'Blockchain',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-10 19:54:52','2024-07-10 19:54:52'),(6,'Cryptocurrency',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-10 19:54:52','2024-07-10 19:54:52'),(7,'IoT',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-10 19:54:52','2024-07-10 19:54:52'),(8,'AR Gaming',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-10 19:54:52','2024-07-10 19:54:52');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'amalia59@stoltenberg.org',NULL,'$2y$12$9SATMnsXaftarabiJ9XqP.huFHm3.j5KLh7Uc51KJMFKQA5wCVQ/a',NULL,'2024-07-10 19:54:51','2024-07-10 19:54:51','Chris','Schmitt','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'RecentPostsWidget','footer_sidebar','ripple',0,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}','2024-07-10 19:54:56','2024-07-10 19:54:56'),(2,'RecentPostsWidget','top_sidebar','ripple',0,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}','2024-07-10 19:54:56','2024-07-10 19:54:56'),(3,'TagsWidget','primary_sidebar','ripple',0,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}','2024-07-10 19:54:56','2024-07-10 19:54:56'),(4,'BlogCategoriesWidget','primary_sidebar','ripple',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"display_posts_count\":\"yes\"}','2024-07-10 19:54:56','2024-07-10 19:54:56'),(5,'CustomMenuWidget','primary_sidebar','ripple',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Social\",\"menu_id\":\"social\"}','2024-07-10 19:54:56','2024-07-10 19:54:56'),(6,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','ripple',1,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Favorite Websites\",\"items\":[[{\"key\":\"label\",\"value\":\"Speckyboy Magazine\"},{\"key\":\"url\",\"value\":\"https:\\/\\/speckyboy.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Tympanus-Codrops\"},{\"key\":\"url\",\"value\":\"https:\\/\\/tympanus.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Botble Blog\"},{\"key\":\"url\",\"value\":\"https:\\/\\/botble.com\\/blog\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Laravel Vietnam\"},{\"key\":\"url\",\"value\":\"https:\\/\\/blog.laravelvietnam.org\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"CreativeBlog\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.creativebloq.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Archi Elite JSC\"},{\"key\":\"url\",\"value\":\"https:\\/\\/archielite.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}]]}','2024-07-10 19:54:56','2024-07-10 19:54:56'),(7,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','ripple',2,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"My Links\",\"items\":[[{\"key\":\"label\",\"value\":\"Home Page\"},{\"key\":\"url\",\"value\":\"\\/\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Contact\"},{\"key\":\"url\",\"value\":\"\\/contact\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Green Technology\"},{\"key\":\"url\",\"value\":\"\\/green-technology\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Augmented Reality (AR) \"},{\"key\":\"url\",\"value\":\"\\/augmented-reality-ar\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Galleries\"},{\"key\":\"url\",\"value\":\"\\/galleries\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}','2024-07-10 19:54:56','2024-07-10 19:54:56');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-11  9:55:02
