-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: omnee
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

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
-- Table structure for table `api_services` 
--

DROP TABLE IF EXISTS `api_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'GET',
  `headers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_services`
--

LOCK TABLES `api_services` WRITE;
/*!40000 ALTER TABLE `api_services` DISABLE KEYS */;
INSERT INTO `api_services` VALUES (1,'Login','api/login','POST','','email | password | device_id | role','role: customer or provider\r\nif role is not send we will consider customer role','2019-03-14 01:12:37',NULL),(2,'Register','api/register','POST','','name | email | password | mobile | gender | age | is_terms | platform | device_id','platform -> 1 = Android , 2 = IOS','2019-03-14 01:12:37',NULL),(3,'Edit Profile','api/user/editprofile','POST','Accept | Authorization','name | mobile | gender | age',NULL,'2019-03-14 01:12:37',NULL),(4,'Change Password','api/user/changepassword','POST','Accept | Authorization','passsword',NULL,'2019-03-14 01:12:37',NULL),(5,'Reset Password','api/forgot/password','POST','','email',NULL,'2019-03-14 01:12:37',NULL),(6,'Add Property','api/user/add_property','POST','Accept | Authorization','name | address | apt_no',NULL,'2019-03-14 01:12:37',NULL),(7,'Get Property','api/user/properties','GET','Accept | Authorization','',NULL,'2019-03-14 01:12:37',NULL),(8,'Get Subscription','api/user/subscription','GET','Accept | Authorization','',NULL,'2019-03-14 01:12:37',NULL),(9,'Get Cities','api/get/city','GET','','',NULL,'2019-03-14 01:12:37',NULL),(10,'Add User Card','api/user/add/card','POST','Accept | Authorization','holder_name | card_number | expiry_month | expiry_year','Month Format -> 11 & Year Format -> 2019','2019-03-14 01:12:37',NULL),(11,'User Get Card','api/user/cardlist','POST','Accept | Authorization','',NULL,'2019-03-14 01:12:37',NULL),(12,'Delete User Card','api/user/deletecard','POST','Accept | Authorization','card_id',NULL,'2019-03-14 01:12:37',NULL),(13,'Get all active category with sub-category','api/user/get/category','GET','Accept | Authorization','','send search text in url api/get/category/{search_text}','2019-03-14 01:12:37',NULL),(14,'Update User Property','api/user/update_property','POST','Accept | Authorization','property_id | name | address | apt_no | status',NULL,'2019-03-14 01:12:37',NULL),(15,'Rating List','api/user/ratinglist','GET','Accept | Authorization','',NULL,'2019-03-14 01:12:37',NULL),(16,'Add Tenants','api/user/addtenants','POST','Accept | Authorization','property_id | name | email | mobile | gender | age | status | platform',NULL,'2019-03-14 01:12:37',NULL),(17,'Tenants List','api/user/tenants','POST','Accept | Authorization','',NULL,'2019-03-14 01:12:37',NULL),(18,'Contact Us','api/user/contactus','POST','Accept | Authorization','name | email | mobile | reason | comment',NULL,'2019-03-14 01:12:37',NULL),(19,'Sub category detail with top rated service provider','api/get/subcategorydetail/{subcategory_id}','GET','Accept | Authorization','subcategory_id',NULL,'2019-03-14 01:12:37',NULL),(20,'Static Pages Detail (About, Terms & Conditions, FAQs)','api/user/pages','GET','Accept | Authorization','',NULL,'2019-03-14 01:12:37',NULL),(21,'Add Job','api/user/addjob','POST','Accept | Authorization','property_id | category_id | sub_category_id | vendor_id | mobile_number | prefered_method | description\r\n','if(One time booking form) requested_date | requested_time OR if(On Going Booking Form) frequency | start_date | end_date | repeat_on\r\n','2019-03-14 01:12:37',NULL),(22,'Add Job Image','api/user/addjobimages','POST','Accept | Authorization','job_id | image',NULL,'2019-03-14 01:12:37',NULL),(23,'Delete Property','api/user/delete/property','POST','Accept | Authorization ','property_id',NULL,NULL,NULL),(24,'User Job Status','api/user/jobstatus','GET','Accept | Authorization',NULL,NULL,NULL,NULL),(25,'Job Timeline','api/user/jobdetailtracklist','POST','Accept | Authorization','job_id',NULL,NULL,NULL),(26,'Open Job','api/provider/openjob','GET','Accept | Authorization',NULL,NULL,NULL,NULL),(27,'Accept Job','api/provider/acceptjob','POST','Accept | Authorization','job_id',NULL,NULL,NULL),(28,'Reject Job','api/provider/rejectjob','POST','Accept | Authorization','job_id',NULL,NULL,NULL),(29,'Add Job Quotation','api/provider/addjobquotation','POST','Accept | Authorization','job_id | quotation_item | agreed_on | agreed_at | deposite_amount | tax_rate','Quotation item format : [{\"name\":\"abc\",\"cost\":100},{\"name\":\"abc\",\"cost\":100}]',NULL,NULL),(30,'Quotation Detail','api/user/quotationapproval','POST','Accept | Authorization','user_id | job_id',NULL,NULL,NULL),(31,'Quotation Approval','api/provider/quotationapproval','POST','Accept | Authorization','vendor_id | job_id | status',NULL,NULL,NULL),(32,'In Progress Job','api/provider/inprogressjob','POST','Accept | Authorization','job_id',NULL,NULL,NULL),(33,'Check in/Check Out','api/provider/checkin_out','POST','Accept | Authorization','job_id | type','type => checkin | checkout',NULL,NULL),(36,'Provider Detail Page','api/user/providerraringlist/{provider_id}','GET','Accept | Authorization','provider_id',NULL,NULL,NULL),(37,'Add Rating','api/user/addrating','POST','Accept | Authorization','job_id | rating_to | rating | review_text',NULL,NULL,NULL),(38,'Provider Listing (Get Quote Screen Dropdown)','api/user/get/providerlisting/{sub_category_id}','GET','Accept | Authorization','sub_category_id',NULL,NULL,NULL),(39,'Get user current subscription plan','api/user/usersubscription','GET','Accept | Authorization',NULL,NULL,NULL,NULL),(40,'Edit Tenant','api/user/edittenants','POST','Accept | Authorization','tenant_id | property_id | name | mobile | gender | age | platform',NULL,NULL,NULL);
/*!40000 ALTER TABLE `api_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `broadcast_messages`
--

DROP TABLE IF EXISTS `broadcast_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `broadcast_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notification_type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_to_all` int(11) NOT NULL DEFAULT '1',
  `role_id` int(10) unsigned NOT NULL,
  `sent_users` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `broadcast_messages_role_id_foreign` (`role_id`),
  CONSTRAINT `broadcast_messages_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `broadcast_messages`
--

LOCK TABLES `broadcast_messages` WRITE;
/*!40000 ALTER TABLE `broadcast_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `broadcast_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sequence_number` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Appliances','categories/omnee-category-image-1553607513.png','categories/omnee-category-hover-image-1553607513.png','1',1,'2019-03-26 09:19:46','2019-04-01 02:26:31'),(2,'Building Materials','categories/omnee-category-image-1553607488.png','categories/omnee-category-hover-image-1553607488.png','2',1,'2019-03-26 09:19:46','2019-04-01 02:26:31'),(3,'Carpentry','categories/omnee-category-image-1553607459.png','categories/omnee-category-hover-image-1553607459.png','3',1,'2019-03-26 09:19:46','2019-04-03 01:21:49'),(36,'Cat1','categories/omnee-category-image-1554268837.png','categories/omnee-category-hover-image-1554268837.png','4',1,'2019-04-03 01:20:37','2019-04-03 01:21:49');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` int(10) unsigned NOT NULL,
  `service_available` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city_state_id_foreign` (`state_id`),
  CONSTRAINT `city_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (15,'Ahmedabad',16,1,1,NULL,NULL),(16,'Vadodara',16,0,1,NULL,NULL),(17,'Mumbai',17,1,1,NULL,NULL),(18,'Pune',17,1,1,NULL,NULL),(19,'Nasik',17,1,0,NULL,'2019-03-26 09:07:57'),(22,'Rajkot',16,0,0,'2019-04-02 02:23:49','2019-04-02 02:24:20');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city_id` int(10) unsigned DEFAULT NULL,
  `state_id` int(10) unsigned DEFAULT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  `zipcode` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `need_only_local_quote_request` tinyint(1) NOT NULL DEFAULT '0',
  `kms` int(11) DEFAULT NULL,
  `need_multi_states_quote_request` tinyint(1) NOT NULL DEFAULT '0',
  `states` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `need_multi_cities_quote_request` tinyint(1) NOT NULL DEFAULT '0',
  `cities` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_city_id_foreign` (`city_id`),
  KEY `company_state_id_foreign` (`state_id`),
  KEY `company_country_id_foreign` (`country_id`),
  CONSTRAINT `company_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `company_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `company_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (11,'Elegant Microweb','shapath 4',15,16,1,'380013','123456789',NULL,'pinki+1@elegantmicroweb.com','www.elegant.com',NULL,'company/omnee-company-logo-1553596581.png',NULL,1,0,1,'16',1,'15',1,NULL,NULL,'2019-03-26 14:43:08','2019-03-29 03:11:38'),(16,'XYZ Company',NULL,NULL,NULL,1,NULL,'123456789',NULL,'xyzz@gmail.com',NULL,NULL,'company/omnee-company-logo-1553866227.png',NULL,1,0,1,'',1,'',1,NULL,NULL,'2019-03-29 09:29:26','2019-03-29 09:30:27'),(29,'test','Dry Ridge, KY, USA',15,16,1,'435434',NULL,NULL,'test44@test.com',NULL,'yrdy',NULL,NULL,1,NULL,1,'',1,'',1,NULL,NULL,'2019-04-02 10:43:35','2019-04-03 12:31:59'),(30,'My company','Gandhinagar, Gujarat, India',15,16,1,'370110','2342353241',NULL,'abcabc@gmail.com','https://www.go','this is my bio',NULL,NULL,0,NULL,0,'',0,'',1,NULL,NULL,'2019-04-03 12:37:30','2019-04-03 01:02:08');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_services`
--

DROP TABLE IF EXISTS `company_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL,
  `sub_category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_services_company_id_foreign` (`company_id`),
  KEY `company_services_sub_category_id_foreign` (`sub_category_id`),
  CONSTRAINT `company_services_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `company_services_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=545 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_services`
--

LOCK TABLES `company_services` WRITE;
/*!40000 ALTER TABLE `company_services` DISABLE KEYS */;
INSERT INTO `company_services` VALUES (366,11,101,'2019-03-27 04:38:12','2019-03-27 04:38:12'),(367,11,102,'2019-03-27 04:38:12','2019-03-27 04:38:12'),(368,11,196,'2019-03-27 04:38:12','2019-03-27 04:38:12'),(369,11,103,'2019-03-27 04:38:12','2019-03-27 04:38:12'),(370,11,200,'2019-03-27 04:38:12','2019-03-27 04:38:12'),(371,11,105,'2019-03-27 04:38:12','2019-03-27 04:38:12'),(372,11,107,'2019-03-27 04:38:12','2019-03-27 04:38:12'),(373,11,108,'2019-03-27 04:38:12','2019-03-27 04:38:12'),(374,11,202,'2019-03-27 04:38:12','2019-03-27 04:38:12'),(375,11,205,'2019-03-27 04:38:12','2019-03-27 04:38:12'),(376,16,101,'2019-03-29 09:29:40','2019-03-29 09:29:40'),(377,16,102,'2019-03-29 09:29:40','2019-03-29 09:29:40'),(378,16,196,'2019-03-29 09:29:40','2019-03-29 09:29:40'),(379,16,103,'2019-03-29 09:29:40','2019-03-29 09:29:40'),(380,16,200,'2019-03-29 09:29:40','2019-03-29 09:29:40'),(381,16,105,'2019-03-29 09:29:40','2019-03-29 09:29:40'),(382,16,107,'2019-03-29 09:29:40','2019-03-29 09:29:40'),(383,16,108,'2019-03-29 09:29:40','2019-03-29 09:29:40'),(384,16,202,'2019-03-29 09:29:40','2019-03-29 09:29:40'),(385,16,205,'2019-03-29 09:29:40','2019-03-29 09:29:40'),(439,29,101,'2019-04-03 00:28:36','2019-04-03 00:28:36'),(440,29,102,'2019-04-03 00:28:36','2019-04-03 00:28:36'),(441,29,196,'2019-04-03 00:28:36','2019-04-03 00:28:36'),(442,29,103,'2019-04-03 00:28:36','2019-04-03 00:28:36'),(443,29,200,'2019-04-03 00:28:36','2019-04-03 00:28:36'),(444,29,105,'2019-04-03 00:28:36','2019-04-03 00:28:36'),(445,29,107,'2019-04-03 00:28:36','2019-04-03 00:28:36'),(446,29,108,'2019-04-03 00:28:36','2019-04-03 00:28:36'),(447,29,202,'2019-04-03 00:28:36','2019-04-03 00:28:36'),(448,29,205,'2019-04-03 00:28:36','2019-04-03 00:28:36');
/*!40000 ALTER TABLE `company_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_users`
--

DROP TABLE IF EXISTS `company_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `company_id` int(10) unsigned DEFAULT NULL,
  `employee_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_users_user_id_foreign` (`user_id`),
  KEY `company_users_company_id_foreign` (`company_id`),
  CONSTRAINT `company_users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `company_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_users`
--

LOCK TABLES `company_users` WRITE;
/*!40000 ALTER TABLE `company_users` DISABLE KEYS */;
INSERT INTO `company_users` VALUES (17,96,11,NULL,1,NULL,NULL),(18,105,11,'057',0,NULL,NULL),(25,150,16,NULL,1,NULL,NULL),(42,220,29,NULL,1,NULL,NULL),(43,224,30,NULL,1,NULL,NULL),(46,236,30,'ABC',0,NULL,NULL);
/*!40000 ALTER TABLE `company_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_us` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us`
--

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'India',1,'2019-03-14 01:12:37',NULL);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templete_type`
--

DROP TABLE IF EXISTS `email_templete_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templete_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templete_type`
--

LOCK TABLES `email_templete_type` WRITE;
/*!40000 ALTER TABLE `email_templete_type` DISABLE KEYS */;
INSERT INTO `email_templete_type` VALUES (1,'WELCOME _EMAIL_USER','2019-03-29 07:43:55',NULL),(2,'FORGOT_PASSWORD_USER','2019-03-29 07:43:55',NULL),(3,'WELCOME _EMAIL_ADMIN','2019-03-29 07:43:55',NULL),(4,'FORGOT_PASSWORD_ADMIN','2019-03-29 07:43:55',NULL),(5,'YOUR_REQUEST_HAS_BEEN_POSTED','2019-03-29 07:43:55',NULL),(6,'NOTIFICATION_OF_NEW_LEAD_POST','2019-03-29 07:43:55',NULL),(7,'REQUEST/LEAD_[REQUEST..','2019-03-29 07:43:55',NULL),(8,'CUSTOMER_HAS_RATED_YOU','2019-03-29 07:43:55',NULL),(9,'BUSINESS_HAS_RATED_YOU','2019-03-29 07:43:55',NULL);
/*!40000 ALTER TABLE `email_templete_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_details_track`
--

DROP TABLE IF EXISTS `job_details_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_details_track` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `job_id` int(10) unsigned NOT NULL,
  `process_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_details_track_job_id_foreign` (`job_id`),
  KEY `job_details_track_user_id_foreign` (`user_id`),
  CONSTRAINT `job_details_track_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `job_details_track_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=444 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_details_track`
--

LOCK TABLES `job_details_track` WRITE;
/*!40000 ALTER TABLE `job_details_track` DISABLE KEYS */;
INSERT INTO `job_details_track` VALUES (72,148,19,'1','Your request has been sent to our Service Provider and is under review.','2019-03-29 07:37:33','2019-03-29 07:37:33'),(73,NULL,19,'1','Your request has been sent to our Vendor and is under review.','2019-03-29 07:37:33','2019-03-29 07:37:33'),(74,148,19,'1','Your request has been sent to our Service Provider and is under review.','2019-03-29 07:37:33','2019-03-29 07:37:33'),(100,148,27,'1','Your request has been sent to our Service Provider and is under review.','2019-03-29 08:14:47','2019-03-29 08:14:47'),(101,NULL,27,'1','Your request has been sent to our Vendor and is under review.','2019-03-29 08:14:47','2019-03-29 08:14:47'),(102,148,27,'1','Your request has been sent to our Service Provider and is under review.','2019-03-29 08:14:47','2019-03-29 08:14:47'),(103,148,27,'1','Your request has been sent to our Service Provider and is under review.','2019-03-29 08:14:47','2019-03-29 08:14:47'),(186,89,48,'1','Your request has been sent to our Service Provider and is under review.','2019-04-01 06:50:52','2019-04-01 06:50:52'),(187,NULL,48,'1','Your request has been sent to our Vendor and is under review.','2019-04-01 06:50:52','2019-04-01 06:50:52'),(188,150,48,'1','You\'ve got a new quote request.','2019-04-01 06:50:52','2019-04-01 06:50:52'),(201,148,53,'1','Your request has been sent to our Service Provider and is under review.','2019-04-01 09:37:30','2019-04-01 09:37:30'),(202,NULL,53,'1','Your request has been sent to our Vendor and is under review.','2019-04-01 09:37:30','2019-04-01 09:37:30'),(203,148,54,'1','Your request has been sent to our Service Provider and is under review.','2019-04-01 09:38:48','2019-04-01 09:38:48'),(204,NULL,54,'1','Your request has been sent to our Vendor and is under review.','2019-04-01 09:38:48','2019-04-01 09:38:48'),(205,148,55,'1','Your request has been sent to our Service Provider and is under review.','2019-04-01 09:46:30','2019-04-01 09:46:30'),(206,NULL,55,'1','Your request has been sent to our Vendor and is under review.','2019-04-01 09:46:30','2019-04-01 09:46:30'),(207,148,56,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 00:35:54','2019-04-02 00:35:54'),(208,NULL,56,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 00:35:54','2019-04-02 00:35:54'),(209,148,57,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 00:38:07','2019-04-02 00:38:07'),(210,NULL,57,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 00:38:07','2019-04-02 00:38:07'),(211,148,58,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 00:47:37','2019-04-02 00:47:37'),(212,NULL,58,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 00:47:37','2019-04-02 00:47:37'),(213,148,59,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 01:11:39','2019-04-02 01:11:39'),(214,NULL,59,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 01:11:39','2019-04-02 01:11:39'),(215,150,59,'1','You\'ve got a new quote request.','2019-04-02 01:11:39','2019-04-02 01:11:39'),(216,148,60,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 01:18:35','2019-04-02 01:18:35'),(217,NULL,60,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 01:18:35','2019-04-02 01:18:35'),(218,96,60,'1','You\'ve got a new quote request.','2019-04-02 01:18:35','2019-04-02 01:18:35'),(219,148,61,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 01:18:48','2019-04-02 01:18:48'),(220,NULL,61,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 01:18:48','2019-04-02 01:18:48'),(221,96,61,'1','You\'ve got a new quote request.','2019-04-02 01:18:48','2019-04-02 01:18:48'),(222,148,62,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 01:19:13','2019-04-02 01:19:13'),(223,NULL,62,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 01:19:13','2019-04-02 01:19:13'),(224,96,62,'1','You\'ve got a new quote request.','2019-04-02 01:19:13','2019-04-02 01:19:13'),(225,148,63,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 01:23:53','2019-04-02 01:23:53'),(226,NULL,63,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 01:23:53','2019-04-02 01:23:53'),(227,96,63,'1','You\'ve got a new quote request.','2019-04-02 01:23:53','2019-04-02 01:23:53'),(231,148,65,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 01:24:51','2019-04-02 01:24:51'),(232,NULL,65,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 01:24:51','2019-04-02 01:24:51'),(233,150,65,'1','You\'ve got a new quote request.','2019-04-02 01:24:51','2019-04-02 01:24:51'),(306,180,90,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 06:31:31','2019-04-02 06:31:31'),(307,NULL,90,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 06:31:31','2019-04-02 06:31:31'),(308,150,90,'1','You\'ve got a new quote request.','2019-04-02 06:31:31','2019-04-02 06:31:31'),(393,180,119,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 07:21:30','2019-04-02 07:21:30'),(394,NULL,119,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 07:21:30','2019-04-02 07:21:30'),(395,150,119,'1','You\'ve got a new quote request.','2019-04-02 07:21:30','2019-04-02 07:21:30'),(396,180,120,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 07:21:54','2019-04-02 07:21:54'),(397,NULL,120,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 07:21:54','2019-04-02 07:21:54'),(398,150,120,'1','You\'ve got a new quote request.','2019-04-02 07:21:54','2019-04-02 07:21:54'),(399,148,121,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 07:24:07','2019-04-02 07:24:07'),(400,NULL,121,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 07:24:07','2019-04-02 07:24:07'),(401,150,121,'1','You\'ve got a new quote request.','2019-04-02 07:24:07','2019-04-02 07:24:07'),(402,148,122,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 07:30:02','2019-04-02 07:30:02'),(403,NULL,122,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 07:30:02','2019-04-02 07:30:02'),(404,96,122,'1','You\'ve got a new quote request.','2019-04-02 07:30:02','2019-04-02 07:30:02'),(405,148,123,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 07:30:07','2019-04-02 07:30:07'),(406,NULL,123,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 07:30:07','2019-04-02 07:30:07'),(407,96,123,'1','You\'ve got a new quote request.','2019-04-02 07:30:07','2019-04-02 07:30:07'),(408,148,124,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 07:30:09','2019-04-02 07:30:09'),(409,NULL,124,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 07:30:09','2019-04-02 07:30:09'),(410,96,124,'1','You\'ve got a new quote request.','2019-04-02 07:30:09','2019-04-02 07:30:09'),(411,148,125,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 07:30:09','2019-04-02 07:30:09'),(412,NULL,125,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 07:30:09','2019-04-02 07:30:09'),(413,96,125,'1','You\'ve got a new quote request.','2019-04-02 07:30:09','2019-04-02 07:30:09'),(414,148,126,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 07:30:10','2019-04-02 07:30:10'),(415,NULL,126,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 07:30:10','2019-04-02 07:30:10'),(416,96,126,'1','You\'ve got a new quote request.','2019-04-02 07:30:10','2019-04-02 07:30:10'),(417,148,127,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 07:30:10','2019-04-02 07:30:10'),(418,NULL,127,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 07:30:10','2019-04-02 07:30:10'),(419,96,127,'1','You\'ve got a new quote request.','2019-04-02 07:30:10','2019-04-02 07:30:10'),(420,148,128,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 07:30:18','2019-04-02 07:30:18'),(421,NULL,128,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 07:30:18','2019-04-02 07:30:18'),(422,96,128,'1','You\'ve got a new quote request.','2019-04-02 07:30:18','2019-04-02 07:30:18'),(423,148,129,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 07:32:06','2019-04-02 07:32:06'),(424,NULL,129,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 07:32:06','2019-04-02 07:32:06'),(425,150,129,'1','You\'ve got a new quote request.','2019-04-02 07:32:06','2019-04-02 07:32:06'),(426,148,130,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 07:33:02','2019-04-02 07:33:02'),(427,NULL,130,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 07:33:02','2019-04-02 07:33:02'),(428,150,130,'1','You\'ve got a new quote request.','2019-04-02 07:33:02','2019-04-02 07:33:02'),(441,180,135,'1','Your request has been sent to our Service Provider and is under review.','2019-04-02 09:25:48','2019-04-02 09:25:48'),(442,NULL,135,'1','Your request has been sent to our Vendor and is under review.','2019-04-02 09:25:48','2019-04-02 09:25:48'),(443,96,135,'1','You\'ve got a new quote request.','2019-04-02 09:25:48','2019-04-02 09:25:48');
/*!40000 ALTER TABLE `job_details_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_disputes`
--

DROP TABLE IF EXISTS `job_disputes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_disputes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `job_quotation_id` int(10) unsigned DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolve_comment` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_disputes_job_id_foreign` (`job_id`),
  KEY `job_disputes_user_id_foreign` (`user_id`),
  KEY `job_disputes_job_quotation_id_foreign` (`job_quotation_id`),
  CONSTRAINT `job_disputes_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `job_disputes_job_quotation_id_foreign` FOREIGN KEY (`job_quotation_id`) REFERENCES `job_quotations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `job_disputes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_disputes`
--

LOCK TABLES `job_disputes` WRITE;
/*!40000 ALTER TABLE `job_disputes` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_disputes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_images`
--

DROP TABLE IF EXISTS `job_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_images_job_id_foreign` (`job_id`),
  KEY `job_images_user_id_foreign` (`user_id`),
  CONSTRAINT `job_images_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `job_images_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_images`
--

LOCK TABLES `job_images` WRITE;
/*!40000 ALTER TABLE `job_images` DISABLE KEYS */;
INSERT INTO `job_images` VALUES (13,48,89,'jobs/omnee-job-image-1554115866.jpeg','2019-04-01 06:51:06','2019-04-01 06:51:06'),(14,48,89,'jobs/omnee-job-image-1554115866.jpeg','2019-04-01 06:51:06','2019-04-01 06:51:06'),(21,55,148,'jobs/omnee-job-image-1554126391.jpg','2019-04-01 09:46:31','2019-04-01 09:46:31'),(22,56,148,'jobs/omnee-job-image-1554179755.jpg','2019-04-02 00:35:55','2019-04-02 00:35:55'),(23,56,148,'jobs/omnee-job-image-1554179755.jpg','2019-04-02 00:35:55','2019-04-02 00:35:55'),(24,57,148,'jobs/omnee-job-image-1554179894.jpg','2019-04-02 00:38:14','2019-04-02 00:38:14'),(25,58,148,'jobs/omnee-job-image-1554180458.jpg','2019-04-02 00:47:38','2019-04-02 00:47:38'),(26,58,148,'jobs/omnee-job-image-1554180458.jpg','2019-04-02 00:47:38','2019-04-02 00:47:38'),(27,59,148,'jobs/omnee-job-image-1554181947.jpg','2019-04-02 01:12:27','2019-04-02 01:12:27'),(28,59,148,'jobs/omnee-job-image-1554181947.jpg','2019-04-02 01:12:27','2019-04-02 01:12:27'),(29,63,148,'jobs/omnee-job-image-01554182635.jpg','2019-04-02 01:23:55','2019-04-02 01:23:55'),(30,63,148,'jobs/omnee-job-image-11554182635.jpg','2019-04-02 01:23:55','2019-04-02 01:23:55'),(33,65,148,'jobs/omnee-job-image-01554182715.jpg','2019-04-02 01:25:15','2019-04-02 01:25:15'),(34,65,148,'jobs/omnee-job-image-11554182715.jpg','2019-04-02 01:25:15','2019-04-02 01:25:15'),(135,90,180,'jobs/omnee-job-image-01554201112.jpeg','2019-04-02 06:31:52','2019-04-02 06:31:52'),(136,90,180,'jobs/omnee-job-image-11554201112.jpeg','2019-04-02 06:31:52','2019-04-02 06:31:52'),(137,90,180,'jobs/omnee-job-image-21554201112.jpeg','2019-04-02 06:31:52','2019-04-02 06:31:52'),(138,90,180,'jobs/omnee-job-image-31554201112.jpeg','2019-04-02 06:31:52','2019-04-02 06:31:52'),(139,90,180,'jobs/omnee-job-image-41554201112.jpeg','2019-04-02 06:31:52','2019-04-02 06:31:52'),(145,120,180,'jobs/omnee-job-image-01554204117.jpeg','2019-04-02 07:21:57','2019-04-02 07:21:57'),(146,121,148,'jobs/omnee-job-image-01554204257.jpg','2019-04-02 07:24:17','2019-04-02 07:24:17'),(147,130,148,'jobs/omnee-job-image-01554204803.jpg','2019-04-02 07:33:23','2019-04-02 07:33:23');
/*!40000 ALTER TABLE `job_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_invoices`
--

DROP TABLE IF EXISTS `job_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(10) unsigned DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_invoices_job_id_foreign` (`job_id`),
  CONSTRAINT `job_invoices_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_invoices`
--

LOCK TABLES `job_invoices` WRITE;
/*!40000 ALTER TABLE `job_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_quotation_items`
--

DROP TABLE IF EXISTS `job_quotation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_quotation_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` int(10) unsigned NOT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_quotation_items_quotation_id_foreign` (`quotation_id`),
  CONSTRAINT `job_quotation_items_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `job_quotations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_quotation_items`
--

LOCK TABLES `job_quotation_items` WRITE;
/*!40000 ALTER TABLE `job_quotation_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_quotation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_quotations`
--

DROP TABLE IF EXISTS `job_quotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_quotations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(10) unsigned NOT NULL,
  `vendor_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `agreed_on` date NOT NULL,
  `agreed_at` time NOT NULL,
  `amount` float DEFAULT NULL,
  `tax_rate` float DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_quotations_job_id_foreign` (`job_id`),
  KEY `job_quotations_vendor_id_foreign` (`vendor_id`),
  KEY `job_quotations_user_id_foreign` (`user_id`),
  CONSTRAINT `job_quotations_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `job_quotations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `job_quotations_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_quotations`
--

LOCK TABLES `job_quotations` WRITE;
/*!40000 ALTER TABLE `job_quotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_quotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_status`
--

DROP TABLE IF EXISTS `job_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_status`
--

LOCK TABLES `job_status` WRITE;
/*!40000 ALTER TABLE `job_status` DISABLE KEYS */;
INSERT INTO `job_status` VALUES (1,'Pending','2019-03-14 01:12:37',NULL),(2,'Assigned','2019-03-14 01:12:37',NULL),(3,'Quote Added','2019-03-14 01:12:37',NULL),(4,'Quote Accepted','2019-03-14 01:12:37',NULL),(5,'In Progress','2019-03-14 01:12:37',NULL),(6,'Completed','2019-03-14 01:12:37',NULL),(7,'Disputed','2019-03-14 01:12:37',NULL),(8,'Closed',NULL,NULL),(9,'Rejected',NULL,NULL);
/*!40000 ALTER TABLE `job_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_transactions`
--

DROP TABLE IF EXISTS `job_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(10) unsigned NOT NULL,
  `final_amount` double NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_transactions_job_id_foreign` (`job_id`),
  CONSTRAINT `job_transactions_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_transactions`
--

LOCK TABLES `job_transactions` WRITE;
/*!40000 ALTER TABLE `job_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `sub_category_id` int(10) unsigned NOT NULL,
  `type` int(10) DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `requested_date` date DEFAULT NULL,
  `requested_time` time DEFAULT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefered_method` smallint(6) NOT NULL DEFAULT '0',
  `frequency` smallint(6) DEFAULT NULL,
  `repeat_on` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL,
  `closed_on` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jobs_job_number_unique` (`job_number`),
  KEY `jobs_property_id_foreign` (`property_id`),
  KEY `jobs_user_id_foreign` (`user_id`),
  KEY `jobs_category_id_foreign` (`category_id`),
  KEY `jobs_sub_category_id_foreign` (`sub_category_id`),
  CONSTRAINT `jobs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `jobs_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `jobs_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (19,'544007381',53,148,'129',NULL,1,101,0,NULL,NULL,'2019-03-28','09:00:00','885-555-5555',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-03-29 07:37:33',NULL),(27,'103841208',53,148,'129',NULL,1,101,0,NULL,NULL,'2019-03-28','09:00:00','885-555-5555',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-03-29 08:14:47',NULL),(48,'933254884',57,89,'150',NULL,2,200,0,NULL,NULL,'2019-04-01','11:00:00','855-666-6855',2,NULL,NULL,NULL,NULL,NULL,'Fghjjk',1,'2019-04-01 06:50:52',NULL),(53,'970955783',53,148,'0',NULL,2,200,0,NULL,NULL,'2019-03-28','07:00:00','\"445-434-4343\"',1,NULL,NULL,NULL,NULL,NULL,'Test',1,'2019-04-01 09:37:30',NULL),(54,'31437435',53,148,'0',NULL,2,200,0,NULL,NULL,'2019-04-21','08:00:00','\"989-989-9899\"',1,NULL,NULL,NULL,NULL,NULL,'Test',1,'2019-04-01 09:38:48',NULL),(55,'344495219',53,148,'0',NULL,2,200,0,NULL,NULL,'2019-04-01','07:00:00','565-',1,NULL,NULL,NULL,NULL,NULL,'c v',1,'2019-04-01 09:46:30',NULL),(56,'839575701',53,148,'0',NULL,2,200,0,NULL,NULL,'2019-04-01','08:00:00','545-455-4545',1,NULL,NULL,NULL,NULL,NULL,'ccc',1,'2019-04-02 12:35:54',NULL),(57,'664715876',53,148,'0',NULL,2,103,0,NULL,NULL,'2019-04-01','07:00:00','555-555-5555',1,NULL,NULL,NULL,NULL,NULL,'xxx',1,'2019-04-02 12:38:07',NULL),(58,'887239800',53,148,'0',NULL,2,200,0,NULL,NULL,'2019-04-02','07:00:00','666-666-6333',2,NULL,NULL,NULL,NULL,NULL,'new',1,'2019-04-02 12:47:37',NULL),(59,'815773216',53,148,'150',NULL,2,200,0,NULL,NULL,'2019-04-01','08:00:00','555-555-5555',1,NULL,NULL,NULL,NULL,NULL,'vv',1,'2019-04-02 01:11:39',NULL),(60,'460105744',53,148,'96',NULL,2,200,0,NULL,NULL,'2019-04-02','07:00:00','544-444-4444',0,NULL,NULL,NULL,NULL,NULL,'fff',1,'2019-04-02 01:18:35',NULL),(61,'882210581',53,148,'96',NULL,2,200,0,NULL,NULL,'2019-04-02','07:00:00','544-444-4444',0,NULL,NULL,NULL,NULL,NULL,'fff',1,'2019-04-02 01:18:48',NULL),(62,'987951331',53,148,'96',NULL,2,200,0,NULL,NULL,'2019-04-02','07:00:00','544-444-4444',0,NULL,NULL,NULL,NULL,NULL,'fff',1,'2019-04-02 01:19:13',NULL),(63,'807485640',53,148,'96',NULL,2,200,0,NULL,NULL,'2019-04-02','07:00:00','545-454-5454',0,NULL,NULL,NULL,NULL,NULL,'fff',1,'2019-04-02 01:23:53',NULL),(65,'83133421',53,148,'150',NULL,3,107,0,NULL,NULL,'2019-04-01','08:00:00','555-555-5555',1,NULL,NULL,NULL,NULL,NULL,'bxbdbbd',1,'2019-04-02 01:24:51',NULL),(90,'932491755',74,180,'150',NULL,1,101,0,NULL,NULL,'2019-04-02','11:00:00','534-534-5345',2,NULL,NULL,NULL,NULL,NULL,'TYesttt',1,'2019-04-02 06:31:31',NULL),(119,'824214012',74,180,'150',NULL,1,101,0,NULL,NULL,'2019-04-02','11:00:00','334-534-5345',2,NULL,NULL,NULL,NULL,NULL,'Fgsdfsdfsdf',1,'2019-04-02 07:21:30',NULL),(120,'54635030',74,180,'150',NULL,1,101,0,NULL,NULL,'2019-04-02','11:00:00','234-234-2342',2,NULL,NULL,NULL,NULL,NULL,'Fgsdfsdfsdf',1,'2019-04-02 07:21:54',NULL),(121,'361969424',53,148,'150',NULL,2,200,0,NULL,NULL,'2019-04-03','09:00:00','546-469-4949',1,NULL,NULL,NULL,NULL,NULL,'vggg',1,'2019-04-02 07:24:07',NULL),(122,'644978612',53,148,'96',NULL,2,200,0,NULL,NULL,'2019-04-03','08:00:00','676-464-6467',1,NULL,NULL,NULL,NULL,NULL,'vzvz',1,'2019-04-02 07:30:02',NULL),(123,'329535324',53,148,'96',NULL,2,200,0,NULL,NULL,'2019-04-03','08:00:00','676-464-6467',1,NULL,NULL,NULL,NULL,NULL,'vzvz',1,'2019-04-02 07:30:07',NULL),(124,'850463174',53,148,'96',NULL,2,200,0,NULL,NULL,'2019-04-03','08:00:00','676-464-6467',1,NULL,NULL,NULL,NULL,NULL,'vzvz',1,'2019-04-02 07:30:09',NULL),(125,'903275967',53,148,'96',NULL,2,200,0,NULL,NULL,'2019-04-03','08:00:00','676-464-6467',1,NULL,NULL,NULL,NULL,NULL,'vzvz',1,'2019-04-02 07:30:09',NULL),(126,'571862079',53,148,'96',NULL,2,200,0,NULL,NULL,'2019-04-03','08:00:00','676-464-6467',1,NULL,NULL,NULL,NULL,NULL,'vzvz',1,'2019-04-02 07:30:10',NULL),(127,'948849347',53,148,'96',NULL,2,200,0,NULL,NULL,'2019-04-03','08:00:00','676-464-6467',1,NULL,NULL,NULL,NULL,NULL,'vzvz',1,'2019-04-02 07:30:10',NULL),(128,'712385821',53,148,'96',NULL,2,200,0,NULL,NULL,'2019-04-03','08:00:00','676-464-6467',1,NULL,NULL,NULL,NULL,NULL,'vzvz',1,'2019-04-02 07:30:18',NULL),(129,'539807944',53,148,'150',NULL,2,200,0,NULL,NULL,'2019-04-02','08:00:00','555-646-4646',1,NULL,NULL,NULL,NULL,NULL,'vxvd',1,'2019-04-02 07:32:06',NULL),(130,'246799181',53,148,'150',NULL,2,200,0,NULL,NULL,'2019-04-03','09:00:00','646-461-6166',1,NULL,NULL,NULL,NULL,NULL,'x',1,'2019-04-02 07:33:02',NULL),(135,'19000290',74,180,'96',NULL,1,101,0,NULL,NULL,'2019-04-02','11:00:00','565-756-7567',0,NULL,NULL,NULL,NULL,NULL,'Hellloopoasasda',1,'2019-04-02 09:25:48',NULL);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_appearance_settings`
--

DROP TABLE IF EXISTS `master_appearance_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_appearance_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `copyright_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `control_panel_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote_waiting_acceptance_time` int(11) DEFAULT '5',
  `valid_image_extensions` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `records_per_page` int(11) DEFAULT '25',
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_appearance_settings`
--

LOCK TABLES `master_appearance_settings` WRITE;
/*!40000 ALTER TABLE `master_appearance_settings` DISABLE KEYS */;
INSERT INTO `master_appearance_settings` VALUES (1,'Copyright © Omnee 2019',NULL,NULL,'jpg,jpeg,png',10,1,NULL,NULL,'2019-03-29 07:32:08');
/*!40000 ALTER TABLE `master_appearance_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_company`
--

DROP TABLE IF EXISTS `master_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city_id` int(10) unsigned DEFAULT NULL,
  `state_id` int(10) unsigned DEFAULT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  `zipcode` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number1` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number2` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `master_company_city_id_foreign` (`city_id`),
  KEY `master_company_state_id_foreign` (`state_id`),
  KEY `master_company_country_id_foreign` (`country_id`),
  CONSTRAINT `master_company_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `master_company_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `master_company_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_company`
--

LOCK TABLES `master_company` WRITE;
/*!40000 ALTER TABLE `master_company` DISABLE KEYS */;
INSERT INTO `master_company` VALUES (1,'Technologies','Toronto, Canada',NULL,NULL,1,NULL,NULL,'980865986598','pinki@microweb','https://omnee.com','','','2019-03-28 07:45:53','2019-04-01 03:13:07');
/*!40000 ALTER TABLE `master_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_email_settings`
--

DROP TABLE IF EXISTS `master_email_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_email_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_from_name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_from_name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user_name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_mail_via_smtp` tinyint(1) DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_email_settings`
--

LOCK TABLES `master_email_settings` WRITE;
/*!40000 ALTER TABLE `master_email_settings` DISABLE KEYS */;
INSERT INTO `master_email_settings` VALUES (1,'omnee@gmail.com',NULL,'support@omnee.com',NULL,'info@omnee.com','smtp.gmail.com','587','testyourwork.em@gmail.com','elegant@123',1,1,1,'2019-03-28 07:52:48','2019-04-03 01:17:16');
/*!40000 ALTER TABLE `master_email_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_sms_settings`
--

DROP TABLE IF EXISTS `master_sms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_sms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `api_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_sms_settings`
--

LOCK TABLES `master_sms_settings` WRITE;
/*!40000 ALTER TABLE `master_sms_settings` DISABLE KEYS */;
INSERT INTO `master_sms_settings` VALUES (1,NULL,'admin','admin@123',NULL,1,1,'2019-03-28 07:56:15','2019-03-28 09:25:40');
/*!40000 ALTER TABLE `master_sms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_settings`
--

DROP TABLE IF EXISTS `meta_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `home_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_meta_keyword` text COLLATE utf8mb4_unicode_ci,
  `home_meta_description` text COLLATE utf8mb4_unicode_ci,
  `category_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_meta_keyword` text COLLATE utf8mb4_unicode_ci,
  `category_meta_description` text COLLATE utf8mb4_unicode_ci,
  `google_analytics_code` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_settings`
--

LOCK TABLES `meta_settings` WRITE;
/*!40000 ALTER TABLE `meta_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_100000_create_password_resets_table',1),(2,'2016_06_01_000001_create_oauth_auth_codes_table',1),(3,'2016_06_01_000002_create_oauth_access_tokens_table',1),(4,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(5,'2016_06_01_000004_create_oauth_clients_table',1),(6,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(7,'2019_02_08_000000_create_users_table',1),(8,'2019_02_08_114405_entrust_setup_tables',1),(9,'2019_02_08_150000_create_property_table',1),(10,'2019_02_09_052028_create_subscriptions_table',1),(11,'2019_02_09_062012_create_user_subscriptions_table',1),(12,'2019_02_09_093142_create_categories_table',1),(13,'2019_02_09_093257_create_sub_categories_table',1),(14,'2019_02_09_121803_create_services_table',1),(15,'2019_03_04_044329_create_property_tenants_table',1),(16,'2019_03_04_044605_create_jobs_table',1),(17,'2019_03_04_045632_create_ratings_table',1),(18,'2019_03_04_054607_create_country_table',1),(19,'2019_03_04_054609_create_state_table',1),(20,'2019_03_04_054858_create_city_table',1),(21,'2019_03_04_055104_create_job_quotations_table',1),(22,'2019_03_04_055538_create_job_transactions_table',1),(23,'2019_03_04_060702_create_user_cards_table',1),(24,'2019_03_04_062659_create_notification_settings_table',1),(25,'2019_03_04_064902_create_job_invoices_table',1),(26,'2019_03_04_065257_create_job_disputes_table',1),(27,'2019_03_04_065745_create_contact_us_table',1),(28,'2019_03_04_070631_create_master_appearance_settings_table',1),(29,'2019_03_04_071010_create_meta_settings_table',1),(30,'2019_03_04_071310_create_master_email_settings_table',1),(31,'2019_03_04_071547_create_master_sms_settings_table',1),(32,'2019_03_04_071915_create_pages_table',1),(33,'2019_03_04_072210_create_system_email_templates_table',1),(34,'2019_03_04_072620_create_system_email_variables_table',1),(35,'2019_03_04_072912_create_social_media_info_table',1),(36,'2019_03_04_073311_create_system_notification_templates_table',1),(37,'2019_03_04_073658_create_broadcast_messages_table',1),(38,'2019_03_04_623250_create_company_table',1),(39,'2019_03_04_645400_create_company_services_table',1),(40,'2019_03_04_663251_create_company_users_table',1),(41,'2019_03_12_094316_create_job_images_table',1),(42,'2019_03_14_044826_create_api_services_table',1),(43,'2019_03_14_091050_create_job_details_track_table',1),(44,'2019_03_14_092610_create_job_status_table',1),(45,'2019_03_14_121349_create_notification_table',1),(46,'2019_03_15_090539_create_job_quotation_items_table',2),(47,'2019_03_22_064005_create_email_templete_type_table',3),(48,'2019_03_27_022752_create_master_company_table',3),(49,'2019_03_29_011342_create_subscription_feature_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_check` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notification_user_id_foreign` (`user_id`),
  CONSTRAINT `notification_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,96,'You\'ve got a new quote request.',0,0,'2019-03-27 05:53:34','2019-03-27 05:53:34'),(2,105,'You\'ve got a new quote request.',0,0,'2019-03-27 05:53:34','2019-03-27 05:53:34'),(3,96,'You\'ve got a new quote request.',0,0,'2019-03-27 05:56:15','2019-03-27 05:56:15'),(4,105,'You\'ve got a new quote request.',0,0,'2019-03-27 05:56:15','2019-03-27 05:56:15'),(5,96,'You\'ve got a new quote request.',0,0,'2019-03-27 05:58:13','2019-03-27 05:58:13'),(6,105,'You\'ve got a new quote request.',0,0,'2019-03-27 05:58:13','2019-03-27 05:58:13'),(7,96,'You\'ve got a new quote request.',0,0,'2019-03-27 05:58:19','2019-03-27 05:58:19'),(8,105,'You\'ve got a new quote request.',0,0,'2019-03-27 05:58:19','2019-03-27 05:58:19'),(9,96,'You\'ve got a new quote request.',0,0,'2019-03-27 06:00:02','2019-03-27 06:00:02'),(10,105,'You\'ve got a new quote request.',0,0,'2019-03-27 06:00:02','2019-03-27 06:00:02'),(11,96,'You\'ve got a new quote request.',0,0,'2019-03-27 06:23:50','2019-03-27 06:23:50'),(12,105,'You\'ve got a new quote request.',0,0,'2019-03-27 06:23:50','2019-03-27 06:23:50'),(13,96,'You\'ve got a new quote request.',0,0,'2019-03-28 06:39:10','2019-03-28 06:39:10'),(14,105,'You\'ve got a new quote request.',0,0,'2019-03-28 06:39:10','2019-03-28 06:39:10'),(15,96,'You\'ve got a new quote request.',0,0,'2019-03-28 06:41:06','2019-03-28 06:41:06'),(16,105,'You\'ve got a new quote request.',0,0,'2019-03-28 06:41:06','2019-03-28 06:41:06'),(17,96,'You\'ve got a new quote request.',0,0,'2019-03-28 07:25:09','2019-03-28 07:25:09'),(18,105,'You\'ve got a new quote request.',0,0,'2019-03-28 07:25:09','2019-03-28 07:25:09'),(19,96,'You\'ve got a new quote request.',0,0,'2019-03-28 07:25:34','2019-03-28 07:25:34'),(20,105,'You\'ve got a new quote request.',0,0,'2019-03-28 07:25:34','2019-03-28 07:25:34'),(21,96,'You\'ve got a new quote request.',0,0,'2019-03-28 07:30:32','2019-03-28 07:30:32'),(22,105,'You\'ve got a new quote request.',0,0,'2019-03-28 07:30:32','2019-03-28 07:30:32'),(23,96,'You\'ve got a new quote request.',0,0,'2019-03-29 01:57:59','2019-03-29 01:57:59'),(24,105,'You\'ve got a new quote request.',0,0,'2019-03-29 01:57:59','2019-03-29 01:57:59'),(25,96,'You\'ve got a new quote request.',0,0,'2019-03-29 02:50:06','2019-03-29 02:50:06'),(26,105,'You\'ve got a new quote request.',0,0,'2019-03-29 02:50:06','2019-03-29 02:50:06'),(27,96,'You\'ve got a new quote request.',0,0,'2019-03-29 02:51:53','2019-03-29 02:51:53'),(28,105,'You\'ve got a new quote request.',0,0,'2019-03-29 02:51:53','2019-03-29 02:51:53'),(29,96,'You\'ve got a new quote request.',0,0,'2019-03-29 07:21:34','2019-03-29 07:21:34'),(30,105,'You\'ve got a new quote request.',0,0,'2019-03-29 07:21:34','2019-03-29 07:21:34'),(31,96,'You\'ve got a new quote request.',0,0,'2019-03-29 07:21:46','2019-03-29 07:21:46'),(32,105,'You\'ve got a new quote request.',0,0,'2019-03-29 07:21:46','2019-03-29 07:21:46'),(33,96,'You\'ve got a new quote request.',0,0,'2019-03-29 07:33:43','2019-03-29 07:33:43'),(34,105,'You\'ve got a new quote request.',0,0,'2019-03-29 07:33:43','2019-03-29 07:33:43'),(35,96,'You\'ve got a new quote request.',0,0,'2019-03-29 07:36:42','2019-03-29 07:36:42'),(36,96,'You\'ve got a new quote request.',0,0,'2019-03-29 07:37:33','2019-03-29 07:37:33'),(37,96,'You\'ve got a new quote request.',0,0,'2019-03-29 07:37:48','2019-03-29 07:37:48'),(38,96,'You\'ve got a new quote request.',0,0,'2019-03-29 07:40:27','2019-03-29 07:40:27'),(39,96,'You\'ve got a new quote request.',0,0,'2019-03-29 07:44:23','2019-03-29 07:44:23'),(40,96,'You\'ve got a new quote request.',0,0,'2019-03-29 07:46:57','2019-03-29 07:46:57'),(41,105,'You\'ve got a new quote request.',0,0,'2019-03-29 07:46:58','2019-03-29 07:46:58'),(42,96,'You\'ve got a new quote request.',0,0,'2019-03-29 07:48:54','2019-03-29 07:48:54'),(43,105,'You\'ve got a new quote request.',0,0,'2019-03-29 07:48:54','2019-03-29 07:48:54'),(44,96,'You\'ve got a new quote request.',0,0,'2019-03-29 07:49:05','2019-03-29 07:49:05'),(45,105,'You\'ve got a new quote request.',0,0,'2019-03-29 07:49:05','2019-03-29 07:49:05'),(46,96,'You\'ve got a new quote request.',0,0,'2019-03-29 08:12:34','2019-03-29 08:12:34'),(47,105,'You\'ve got a new quote request.',0,0,'2019-03-29 08:12:34','2019-03-29 08:12:34'),(48,96,'You\'ve got a new quote request.',0,0,'2019-03-29 08:14:47','2019-03-29 08:14:47'),(49,105,'You\'ve got a new quote request.',0,0,'2019-03-29 08:14:47','2019-03-29 08:14:47'),(50,96,'You\'ve got a new quote request.',0,0,'2019-03-29 08:21:30','2019-03-29 08:21:30'),(51,105,'You\'ve got a new quote request.',0,0,'2019-03-29 08:21:30','2019-03-29 08:21:30'),(52,96,'You\'ve got a new quote request.',0,0,'2019-03-29 08:30:06','2019-03-29 08:30:06'),(53,105,'You\'ve got a new quote request.',0,0,'2019-03-29 08:30:08','2019-03-29 08:30:08'),(54,96,'You\'ve got a new quote request.',0,0,'2019-03-29 08:30:46','2019-03-29 08:30:46'),(55,105,'You\'ve got a new quote request.',0,0,'2019-03-29 08:30:47','2019-03-29 08:30:47'),(56,96,'You\'ve got a new quote request.',0,0,'2019-03-29 08:31:36','2019-03-29 08:31:36'),(57,105,'You\'ve got a new quote request.',0,0,'2019-03-29 08:31:37','2019-03-29 08:31:37'),(58,96,'You\'ve got a new quote request.',0,0,'2019-03-29 08:31:41','2019-03-29 08:31:41'),(59,105,'You\'ve got a new quote request.',0,0,'2019-03-29 08:31:42','2019-03-29 08:31:42'),(60,96,'You\'ve got a new quote request.',0,0,'2019-03-29 08:33:50','2019-03-29 08:33:50'),(61,105,'You\'ve got a new quote request.',0,0,'2019-03-29 08:33:51','2019-03-29 08:33:51'),(62,96,'You\'ve got a new quote request.',0,0,'2019-03-29 08:34:35','2019-03-29 08:34:35'),(63,105,'You\'ve got a new quote request.',0,0,'2019-03-29 08:34:36','2019-03-29 08:34:36'),(64,96,'You\'ve got a new quote request.',0,0,'2019-03-29 08:35:23','2019-03-29 08:35:23'),(65,105,'You\'ve got a new quote request.',0,0,'2019-03-29 08:35:24','2019-03-29 08:35:24'),(66,96,'You\'ve got a new quote request.',0,0,'2019-03-29 08:35:51','2019-03-29 08:35:51'),(67,105,'You\'ve got a new quote request.',0,0,'2019-03-29 08:35:52','2019-03-29 08:35:52'),(68,96,'You\'ve got a new quote request.',0,0,'2019-03-29 08:40:18','2019-03-29 08:40:18'),(69,105,'You\'ve got a new quote request.',0,0,'2019-03-29 08:40:19','2019-03-29 08:40:19'),(70,96,'You\'ve got a new quote request.',0,0,'2019-03-29 08:43:14','2019-03-29 08:43:14'),(71,105,'You\'ve got a new quote request.',0,0,'2019-03-29 08:43:16','2019-03-29 08:43:16'),(72,96,'You\'ve got a new quote request.',0,0,'2019-03-29 08:43:34','2019-03-29 08:43:34'),(73,105,'You\'ve got a new quote request.',0,0,'2019-03-29 08:43:35','2019-03-29 08:43:35'),(74,96,'You\'ve got a new quote request.',0,0,'2019-03-29 08:50:06','2019-03-29 08:50:06'),(75,105,'You\'ve got a new quote request.',0,0,'2019-03-29 08:50:08','2019-03-29 08:50:08'),(76,96,'You\'ve got a new quote request.',0,0,'2019-03-29 09:25:53','2019-03-29 09:25:53'),(77,105,'You\'ve got a new quote request.',0,0,'2019-03-29 09:25:55','2019-03-29 09:25:55'),(78,96,'You\'ve got a new quote request.',0,0,'2019-04-01 01:30:05','2019-04-01 01:30:05'),(79,105,'You\'ve got a new quote request.',0,0,'2019-04-01 01:30:06','2019-04-01 01:30:06'),(80,150,'You\'ve got a new quote request.',0,0,'2019-04-01 01:30:08','2019-04-01 01:30:08'),(81,96,'You\'ve got a new quote request.',0,0,'2019-04-01 03:30:59','2019-04-01 03:30:59'),(82,105,'You\'ve got a new quote request.',0,0,'2019-04-01 03:31:01','2019-04-01 03:31:01'),(83,150,'You\'ve got a new quote request.',0,0,'2019-04-01 03:31:02','2019-04-01 03:31:02'),(84,96,'You\'ve got a new quote request.',0,0,'2019-04-01 03:32:15','2019-04-01 03:32:15'),(85,150,'You\'ve got a new quote request.',0,0,'2019-04-01 03:32:16','2019-04-01 03:32:16'),(86,96,'You\'ve got a new quote request.',0,0,'2019-04-01 03:32:27','2019-04-01 03:32:27'),(87,150,'You\'ve got a new quote request.',0,0,'2019-04-01 03:32:29','2019-04-01 03:32:29'),(88,96,'You\'ve got a new quote request.',0,0,'2019-04-01 03:32:37','2019-04-01 03:32:37'),(89,150,'You\'ve got a new quote request.',0,0,'2019-04-01 03:32:38','2019-04-01 03:32:38'),(90,96,'You\'ve got a new quote request.',0,0,'2019-04-01 04:38:03','2019-04-01 04:38:03'),(91,150,'You\'ve got a new quote request.',0,0,'2019-04-01 04:38:05','2019-04-01 04:38:05'),(92,150,'You\'ve got a new quote request.',0,0,'2019-04-01 06:50:52','2019-04-01 06:50:52'),(93,150,'You\'ve got a new quote request.',0,0,'2019-04-01 09:00:47','2019-04-01 09:00:47'),(94,96,'You\'ve got a new quote request.',0,0,'2019-04-01 09:01:00','2019-04-01 09:01:00'),(95,150,'You\'ve got a new quote request.',0,0,'2019-04-01 09:01:11','2019-04-01 09:01:11'),(96,150,'You\'ve got a new quote request.',0,0,'2019-04-01 09:01:40','2019-04-01 09:01:40'),(97,150,'You\'ve got a new quote request.',0,0,'2019-04-02 01:11:39','2019-04-02 01:11:39'),(98,96,'You\'ve got a new quote request.',0,0,'2019-04-02 01:18:35','2019-04-02 01:18:35'),(99,96,'You\'ve got a new quote request.',0,0,'2019-04-02 01:18:48','2019-04-02 01:18:48'),(100,96,'You\'ve got a new quote request.',0,0,'2019-04-02 01:19:13','2019-04-02 01:19:13'),(101,96,'You\'ve got a new quote request.',0,0,'2019-04-02 01:23:53','2019-04-02 01:23:53'),(102,96,'You\'ve got a new quote request.',0,0,'2019-04-02 01:24:36','2019-04-02 01:24:36'),(103,150,'You\'ve got a new quote request.',0,0,'2019-04-02 01:24:51','2019-04-02 01:24:51'),(104,96,'You\'ve got a new quote request.',0,0,'2019-04-02 02:22:10','2019-04-02 02:22:10'),(105,96,'You\'ve got a new quote request.',0,0,'2019-04-02 02:22:11','2019-04-02 02:22:11'),(106,96,'You\'ve got a new quote request.',0,0,'2019-04-02 02:22:12','2019-04-02 02:22:12'),(107,96,'You\'ve got a new quote request.',0,0,'2019-04-02 02:22:13','2019-04-02 02:22:13'),(108,96,'You\'ve got a new quote request.',0,0,'2019-04-02 02:22:13','2019-04-02 02:22:13'),(109,96,'You\'ve got a new quote request.',0,0,'2019-04-02 02:22:13','2019-04-02 02:22:13'),(110,96,'You\'ve got a new quote request.',0,0,'2019-04-02 02:22:14','2019-04-02 02:22:14'),(111,96,'You\'ve got a new quote request.',0,0,'2019-04-02 02:22:15','2019-04-02 02:22:15'),(112,96,'You\'ve got a new quote request.',0,0,'2019-04-02 02:22:15','2019-04-02 02:22:15'),(113,96,'You\'ve got a new quote request.',0,0,'2019-04-02 02:22:15','2019-04-02 02:22:15'),(114,96,'You\'ve got a new quote request.',0,0,'2019-04-02 02:22:16','2019-04-02 02:22:16'),(115,96,'You\'ve got a new quote request.',0,0,'2019-04-02 02:22:17','2019-04-02 02:22:17'),(116,96,'You\'ve got a new quote request.',0,0,'2019-04-02 02:22:17','2019-04-02 02:22:17'),(117,96,'You\'ve got a new quote request.',0,0,'2019-04-02 02:22:17','2019-04-02 02:22:17'),(118,96,'You\'ve got a new quote request.',0,0,'2019-04-02 02:22:18','2019-04-02 02:22:18'),(119,96,'You\'ve got a new quote request.',0,0,'2019-04-02 02:22:19','2019-04-02 02:22:19'),(120,96,'You\'ve got a new quote request.',0,0,'2019-04-02 02:22:19','2019-04-02 02:22:19'),(121,96,'You\'ve got a new quote request.',0,0,'2019-04-02 02:26:52','2019-04-02 02:26:52'),(122,96,'You\'ve got a new quote request.',0,0,'2019-04-02 02:26:53','2019-04-02 02:26:53'),(123,96,'You\'ve got a new quote request.',0,0,'2019-04-02 05:48:55','2019-04-02 05:48:55'),(124,96,'You\'ve got a new quote request.',0,0,'2019-04-02 05:48:56','2019-04-02 05:48:56'),(125,96,'You\'ve got a new quote request.',0,0,'2019-04-02 05:48:59','2019-04-02 05:48:59'),(126,96,'You\'ve got a new quote request.',0,0,'2019-04-02 05:49:01','2019-04-02 05:49:01'),(127,150,'You\'ve got a new quote request.',0,0,'2019-04-02 06:00:13','2019-04-02 06:00:13'),(128,150,'You\'ve got a new quote request.',0,0,'2019-04-02 06:31:31','2019-04-02 06:31:31'),(129,150,'You\'ve got a new quote request.',0,0,'2019-04-02 07:12:32','2019-04-02 07:12:32'),(130,150,'You\'ve got a new quote request.',0,0,'2019-04-02 07:12:49','2019-04-02 07:12:49'),(131,150,'You\'ve got a new quote request.',0,0,'2019-04-02 07:13:34','2019-04-02 07:13:34'),(132,150,'You\'ve got a new quote request.',0,0,'2019-04-02 07:14:18','2019-04-02 07:14:18'),(133,150,'You\'ve got a new quote request.',0,0,'2019-04-02 07:14:18','2019-04-02 07:14:18'),(134,150,'You\'ve got a new quote request.',0,0,'2019-04-02 07:16:05','2019-04-02 07:16:05'),(135,150,'You\'ve got a new quote request.',0,0,'2019-04-02 07:16:12','2019-04-02 07:16:12'),(136,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:16:49','2019-04-02 07:16:49'),(137,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:16:50','2019-04-02 07:16:50'),(138,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:16:51','2019-04-02 07:16:51'),(139,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:16:51','2019-04-02 07:16:51'),(140,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:16:51','2019-04-02 07:16:51'),(141,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:16:52','2019-04-02 07:16:52'),(142,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:16:52','2019-04-02 07:16:52'),(143,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:16:53','2019-04-02 07:16:53'),(144,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:16:53','2019-04-02 07:16:53'),(145,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:16:53','2019-04-02 07:16:53'),(146,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:16:54','2019-04-02 07:16:54'),(147,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:16:54','2019-04-02 07:16:54'),(148,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:16:55','2019-04-02 07:16:55'),(149,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:17:10','2019-04-02 07:17:10'),(150,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:17:13','2019-04-02 07:17:13'),(151,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:17:14','2019-04-02 07:17:14'),(152,150,'You\'ve got a new quote request.',0,0,'2019-04-02 07:17:39','2019-04-02 07:17:39'),(153,150,'You\'ve got a new quote request.',0,0,'2019-04-02 07:17:42','2019-04-02 07:17:42'),(154,150,'You\'ve got a new quote request.',0,0,'2019-04-02 07:17:43','2019-04-02 07:17:43'),(155,150,'You\'ve got a new quote request.',0,0,'2019-04-02 07:18:01','2019-04-02 07:18:01'),(156,150,'You\'ve got a new quote request.',0,0,'2019-04-02 07:18:06','2019-04-02 07:18:06'),(157,150,'You\'ve got a new quote request.',0,0,'2019-04-02 07:21:30','2019-04-02 07:21:30'),(158,150,'You\'ve got a new quote request.',0,0,'2019-04-02 07:21:54','2019-04-02 07:21:54'),(159,150,'You\'ve got a new quote request.',0,0,'2019-04-02 07:24:07','2019-04-02 07:24:07'),(160,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:30:02','2019-04-02 07:30:02'),(161,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:30:07','2019-04-02 07:30:07'),(162,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:30:09','2019-04-02 07:30:09'),(163,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:30:09','2019-04-02 07:30:09'),(164,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:30:10','2019-04-02 07:30:10'),(165,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:30:10','2019-04-02 07:30:10'),(166,96,'You\'ve got a new quote request.',0,0,'2019-04-02 07:30:18','2019-04-02 07:30:18'),(167,150,'You\'ve got a new quote request.',0,0,'2019-04-02 07:32:06','2019-04-02 07:32:06'),(168,150,'You\'ve got a new quote request.',0,0,'2019-04-02 07:33:02','2019-04-02 07:33:02'),(169,176,'You\'ve got a new quote request.',0,0,'2019-04-02 08:25:31','2019-04-02 08:25:31'),(170,176,'You\'ve got a new quote request.',0,0,'2019-04-02 08:25:32','2019-04-02 08:25:32'),(171,176,'You\'ve got a new quote request.',0,0,'2019-04-02 08:25:32','2019-04-02 08:25:32'),(172,176,'You\'ve got a new quote request.',0,0,'2019-04-02 08:25:33','2019-04-02 08:25:33'),(173,96,'You\'ve got a new quote request.',0,0,'2019-04-02 09:25:48','2019-04-02 09:25:48');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_settings`
--

DROP TABLE IF EXISTS `notification_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `on_status_update_for_my_jobs` tinyint(1) NOT NULL DEFAULT '0',
  `on_status_update_for_my_quote` tinyint(1) NOT NULL DEFAULT '0',
  `plan_expires` tinyint(1) NOT NULL DEFAULT '0',
  `tenant_add_new_service_quote` tinyint(1) NOT NULL DEFAULT '0',
  `general_update` tinyint(1) NOT NULL DEFAULT '0',
  `enable_all` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notification_settings_user_id_foreign` (`user_id`),
  CONSTRAINT `notification_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_settings`
--

LOCK TABLES `notification_settings` WRITE;
/*!40000 ALTER TABLE `notification_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('00a9f7f00b1c71d31601e187c64d7f950f265da8839a54e71db53391095979af500434b7e08753e2',28,1,'MyApp','[]',0,'2019-03-29 04:45:59','2019-03-29 04:45:59','2020-03-29 04:45:59'),('016aa5c5f1cc08d10c214ffd0782fbfde496bde0c779b2103170fa7f89f65eda0d6ae7a60e39dfec',89,1,'MyApp','[]',0,'2019-03-26 12:29:41','2019-03-26 12:29:41','2020-03-26 12:29:41'),('030ec1b155ccb88f6881eb3c2b7d995b85125a400b6cfdcc846ea213d108ddb89f057e2d7e04b35a',155,1,'MyApp','[]',0,'2019-04-01 06:10:50','2019-04-01 06:10:50','2020-04-01 06:10:50'),('09d7c12712114dc34fd7e8a84f916e8f80ddbb2fbbedfcbf425438a22098b6eecb920e8c50dd278d',17,1,'MyApp','[]',0,'2019-03-28 06:17:00','2019-03-28 06:17:00','2020-03-28 06:17:00'),('09e05968cde021e1cae6faa9a9f0d7fbcd30228665c8b2f3f9d636f6b6eea75a323ade279ffb02a8',17,1,'MyApp','[]',0,'2019-03-22 06:20:06','2019-03-22 06:20:06','2020-03-22 06:20:06'),('0bd391825132a9ab030c3f0fab5697280803c0b497d10d9b51d2399321e66a126ac5f9a452a5b98c',17,1,'MyApp','[]',0,'2019-03-26 12:02:04','2019-03-26 12:02:04','2020-03-26 12:02:04'),('0c3339e58042698a0237a482956cc324bdb01d66df75936a920da65786fcf7ad752ba2b4ba37d387',104,1,'MyApp','[]',0,'2019-03-26 15:32:59','2019-03-26 15:32:59','2020-03-26 15:32:59'),('0c78f536c9eda8736688162f28d1e53903dfc8f5aad78d3a068361af8223834db042551036f91323',27,1,'MyApp','[]',0,'2019-03-22 11:08:09','2019-03-22 11:08:09','2020-03-22 11:08:09'),('104cdb75d76716a2f7ac6628cf405cbe596afdb27185296e2654c2c96a5eee57963fc5aee026f143',124,1,'MyApp','[]',0,'2019-04-02 03:05:04','2019-04-02 03:05:04','2020-04-02 03:05:04'),('12cbc8f8fae8d367d09e8a9e53cd26696295b4e1318e3ef773ebb956f14a764b575e6fad55c59ec9',30,1,'MyApp','[]',0,'2019-03-23 10:04:38','2019-03-23 10:04:38','2020-03-23 10:04:38'),('156c798acb7c7d4e6605ac2f0786c982f94a08d08ac88c4814e69626e25862ac704aa436bfbb6641',21,1,'MyApp','[]',0,'2019-03-22 11:02:08','2019-03-22 11:02:08','2020-03-22 11:02:08'),('15c22c8ecc396f2905668378696e0eb31bc6d03278ca33a6c7e99b636f000842629114c39410f2ff',89,1,'MyApp','[]',0,'2019-04-01 06:01:20','2019-04-01 06:01:20','2020-04-01 06:01:20'),('1623a59eb8a86b040d78ae5ef0cc612777d39f7572f69e33769f89a0ffba44dfae2c96859ad081d6',142,1,'MyApp','[]',0,'2019-04-02 04:46:19','2019-04-02 04:46:19','2020-04-02 04:46:19'),('1671f5881e3feb6022f7d3538046efa5bed700c4d48e0e9b957f550dd80d9829a035c9c66bbc054e',139,1,'MyApp','[]',0,'2019-03-27 07:59:41','2019-03-27 07:59:41','2020-03-27 07:59:41'),('169b182a9fb866e5c4bc6396d47f33c437b04f8a90ffa16095db505f6065468ae3d05518d33bf304',148,1,'MyApp','[]',0,'2019-04-02 07:23:12','2019-04-02 07:23:12','2020-04-02 07:23:12'),('173ece2ad2621cb3c1d7fb0dd5cd67d2cd8c2e2e65909e635513919baf9927f4f85fc0acff8d6faf',17,1,'MyApp','[]',0,'2019-03-26 12:41:44','2019-03-26 12:41:44','2020-03-26 12:41:44'),('18795af762529c3d6731fc2e33ef9d193aeb31b648ca374e15ab569558595708a6e9af5e30ce9bee',17,1,'MyApp','[]',0,'2019-03-27 00:42:30','2019-03-27 00:42:30','2020-03-27 00:42:30'),('187f14a0b370a931e4cc69cdca84aa6ca6286cab8a9136216626ba1d731f8e6723518ed8bf870db9',87,1,'MyApp','[]',0,'2019-03-26 11:26:08','2019-03-26 11:26:08','2020-03-26 11:26:08'),('1897cd38a2de44add78ef02f37020782cdf73d9cb89e42f5e4ce8d8b878f499b23b2db72739276dd',89,1,'MyApp','[]',0,'2019-03-27 07:19:35','2019-03-27 07:19:35','2020-03-27 07:19:35'),('18de8746845b85410a70297edbc4d4b02247dfcb8baa620297dd2e89d8f5e11f5e3aee95898ca290',106,1,'MyApp','[]',0,'2019-03-26 15:46:31','2019-03-26 15:46:31','2020-03-26 15:46:31'),('1a011afc6a4989da12f92ce23cbaeda2de1f68495892be8df417795ff16506de01656e7924850109',14,1,'MyApp','[]',0,'2019-03-25 14:05:49','2019-03-25 14:05:49','2020-03-25 14:05:49'),('1bd67c726dc38f6567001ff8447eb4309efadf9dbc4dd5b8ffe452ab32fff2686d5d0cc089db7566',176,1,'MyApp','[]',0,'2019-04-02 05:07:51','2019-04-02 05:07:51','2020-04-02 05:07:51'),('1c1fff431d0603b85fb95b0e44202472312ff94c1b27fadb39663bfc9512cec0798ee546558c0ce8',88,1,'MyApp','[]',0,'2019-03-27 06:22:39','2019-03-27 06:22:39','2020-03-27 06:22:39'),('1da19397f7702b720e202d645cd2306887291f6c3803c179687c84470de441ce759d299cc742fe48',74,1,'MyApp','[]',0,'2019-03-26 10:32:51','2019-03-26 10:32:51','2020-03-26 10:32:51'),('1fa2bbf6c1878dbe9df3110981ed1bc3fa7b47736de5fdb84bed0fa05b0a71fe1782db8266f62f5c',139,1,'MyApp','[]',0,'2019-03-27 07:54:06','2019-03-27 07:54:06','2020-03-27 07:54:06'),('201309d10f698fdeecc84cf7000949456d3aadb0f17c98bc6e1dbcf6d7c691edf02dd03b23b92d30',21,1,'MyApp','[]',0,'2019-03-22 11:01:30','2019-03-22 11:01:30','2020-03-22 11:01:30'),('27188775e95b75f99eab74e9c5ba31a5be1af4b27510f173ac6fa2ce374334d926ffcefdbe1bec45',21,1,'MyApp','[]',0,'2019-03-22 13:15:10','2019-03-22 13:15:10','2020-03-22 13:15:10'),('277db674729467428f5f2a82c1eb92f5ae394be1f8cfe2e3ce21a8d0470b50fafdb39f4712580b40',32,1,'MyApp','[]',0,'2019-03-23 10:09:16','2019-03-23 10:09:16','2020-03-23 10:09:16'),('291f89d72c00abbd8143b9b99022fe218541b699240d44602fbff184fabdf1ab0de8fb905b4ee722',21,1,'MyApp','[]',0,'2019-03-25 12:10:02','2019-03-25 12:10:02','2020-03-25 12:10:02'),('295256c3fb676da59fada8fe1f34f52e9dca61db046675044561ac05dfe8bd0b169fb08523294cd5',17,1,'MyApp','[]',0,'2019-03-22 10:36:59','2019-03-22 10:36:59','2020-03-22 10:36:59'),('2a47d6dec91cb6e6b02c890e8c3305c8301543daa81adfaea0d107553e4d6bedaa21d3287c8685c5',89,1,'MyApp','[]',0,'2019-04-02 02:44:34','2019-04-02 02:44:34','2020-04-02 02:44:34'),('2b5ec6c1231707d906e230ff6b2323eabb6fab383c2cee8b1601468fd8f906513f551a3a21abf8de',89,1,'MyApp','[]',0,'2019-03-26 11:30:05','2019-03-26 11:30:05','2020-03-26 11:30:05'),('2dd536e590b65df78dfadad43e12f3256fbe207a2761b5f9a267217b9ff7ae09eb9965dddcea12a8',15,1,'MyApp','[]',0,'2019-03-22 06:11:36','2019-03-22 06:11:36','2020-03-22 06:11:36'),('302036cd693f138c1a32be8eda1c46b3f8f70c68bbf8db0ff44ae9392ed73b43140ea050e8ff7493',21,1,'MyApp','[]',0,'2019-03-22 10:40:42','2019-03-22 10:40:42','2020-03-22 10:40:42'),('308bba78fd08fbf2b963a77d5fd74666d71da9adfeaa3d1e11423e0ce548fcfb8f6b0ce5f8d1fd60',18,1,'MyApp','[]',0,'2019-03-22 06:20:29','2019-03-22 06:20:29','2020-03-22 06:20:29'),('30a3f3e745dcd45f18691e0faecc0e136e10d803832190f400c41f7cc0b5a5997707bbd64c87ef42',101,1,'MyApp','[]',0,'2019-03-26 15:09:26','2019-03-26 15:09:26','2020-03-26 15:09:26'),('33e00b8cbc23d144422b3f045d4969f7bf1448cc90b26c952d492d18cb28a97826b18bbbda3c06f6',141,1,'MyApp','[]',0,'2019-03-27 07:58:19','2019-03-27 07:58:19','2020-03-27 07:58:19'),('35f28d4b68a7e95b4e0c0cc33b225bc53a2152bb57b51bbef49fc7bc62beaefbaa2204a0ea7d9098',155,1,'MyApp','[]',0,'2019-04-01 08:35:20','2019-04-01 08:35:20','2020-04-01 08:35:20'),('386ff4fc32e075cf0365331be2f177f9994a9f72d2daa249a18dd866396322abfb5f1184b7377150',88,1,'MyApp','[]',0,'2019-03-27 00:47:10','2019-03-27 00:47:10','2020-03-27 00:47:10'),('3a302eaeb886dcd190c9f9087cc7789442d5dc252c7e3697959a64de5806a5134fc8ab5bb1fccba7',74,1,'MyApp','[]',0,'2019-03-25 18:38:26','2019-03-25 18:38:26','2020-03-25 18:38:26'),('3a39a18b4ab93bd73fbfbca219aa359856204eb97f9f40fe167f69ce8df93d56dfc8ad463b960929',98,1,'MyApp','[]',0,'2019-03-26 14:50:38','2019-03-26 14:50:38','2020-03-26 14:50:38'),('3b2eb74e75fb7cb4ef0d5f9414436f8802b0ba8be40f9ad4d051e6c7e2bd437739d8c2bd020a7418',14,1,'MyApp','[]',0,'2019-03-25 13:16:03','2019-03-25 13:16:03','2020-03-25 13:16:03'),('3c53cc3fbc0d1687cca6f1193671d75ac7d8360172a726f83a8b417064c4ecf351d76a359efc8573',34,1,'MyApp','[]',0,'2019-03-23 10:28:37','2019-03-23 10:28:37','2020-03-23 10:28:37'),('3d512189dd211546fd6ee6064a1b3de09ebd14fb54b1b8b9ff14007bb0b59b73120e043bb225c3d1',17,1,'MyApp','[]',0,'2019-03-26 15:05:38','2019-03-26 15:05:38','2020-03-26 15:05:38'),('3e6df7c04d3e28f322570842b8b58123b95303d2312af36976ee51dd0a6dfe375e753caa46b7ddec',17,1,'MyApp','[]',0,'2019-03-27 05:55:48','2019-03-27 05:55:48','2020-03-27 05:55:48'),('3e86f834d8becf06ac99f3a4acf8ce9d4366d9ea82d428019022652e27321316b11225af5dc9f962',17,1,'MyApp','[]',0,'2019-03-26 11:33:06','2019-03-26 11:33:06','2020-03-26 11:33:06'),('3ed9c27e5349f4716d1088a02d26bbd4e022155accfe4844a3fa869a142d0bd22ad29ab62e710cd6',176,1,'MyApp','[]',0,'2019-04-03 01:22:58','2019-04-03 01:22:58','2020-04-03 01:22:58'),('3f1e16b5f75c920cca46b91b9df68f3ea7ecf8d028ff72868ddcd00f24cde9af9430951aed7ed377',88,1,'MyApp','[]',0,'2019-04-01 05:08:34','2019-04-01 05:08:34','2020-04-01 05:08:34'),('3fe27ca391fff9d7adb9a03cea13e7f6388d7c37dc258e1923f4288a8fc74432c3b5fb65ce414bfe',28,1,'MyApp','[]',0,'2019-03-26 14:55:35','2019-03-26 14:55:35','2020-03-26 14:55:35'),('40a5d2e3c13f7437687421e71bf630935f29eeee8b1f1c6ed9701d9c3ca54b27b830d477f4b1c915',17,1,'MyApp','[]',0,'2019-03-22 13:33:54','2019-03-22 13:33:54','2020-03-22 13:33:54'),('41b6b4c57f20a5a99cf8ee38ebc1a34a70ec5427b924649ac636a8ed8841c985d367d73a0f07e23d',26,1,'MyApp','[]',0,'2019-03-22 11:05:10','2019-03-22 11:05:10','2020-03-22 11:05:10'),('43c5887fa68540a23a3bfee6fcbfdae64e58d208b445e26dc67a0a2caf26dc57ce8c8766099503cb',21,1,'MyApp','[]',0,'2019-03-22 10:15:57','2019-03-22 10:15:57','2020-03-22 10:15:57'),('442c4a7df594f4185955b82b1a4632dc396640ee60534183e4f2bce89c6dfd2fd86801d6de7bd44c',17,1,'MyApp','[]',0,'2019-03-25 17:56:35','2019-03-25 17:56:35','2020-03-25 17:56:35'),('44938b1982c48117ba35e04b2381fc61e4ebb26fcabe407f4ca605dcb80ed3e079417e0c1e754f21',155,1,'MyApp','[]',0,'2019-04-01 05:56:33','2019-04-01 05:56:33','2020-04-01 05:56:33'),('45f790da0347308d72377d40a1094d9d0a5ac31721a6b010800f0b099118bcf0fe364936f078f226',22,1,'MyApp','[]',0,'2019-03-22 10:46:39','2019-03-22 10:46:39','2020-03-22 10:46:39'),('4619030e7070354430bf12408af91136488b381512f57aa5b2b96136a241ab5dd8c6cc56889ab065',139,1,'MyApp','[]',0,'2019-03-27 08:02:28','2019-03-27 08:02:28','2020-03-27 08:02:28'),('473404c7586fb2bd77e145206903fd0cd212a2fdc92c71aa0bfc39f15cca2370e53ef4c07bf3838b',176,1,'MyApp','[]',0,'2019-04-02 08:05:51','2019-04-02 08:05:51','2020-04-02 08:05:51'),('4ce58c9832a235c6f69ffec751840b32eca85f0f17d7f157f5952e87b8146118819f8957166fc2ae',14,1,'MyApp','[]',0,'2019-03-25 12:49:59','2019-03-25 12:49:59','2020-03-25 12:49:59'),('4d03299bbb3e64fa84ac0359c114df7ad42ff4d3b5145aa9d939e05161586a797a0b39f486a0afcf',172,1,'MyApp','[]',0,'2019-04-02 03:21:32','2019-04-02 03:21:32','2020-04-02 03:21:32'),('4f88933a7670dc7bd445407299c5b2c8321cf1aa3cb711001256fd5a851845ea67347c8a58388d14',94,1,'MyApp','[]',0,'2019-03-26 12:58:28','2019-03-26 12:58:28','2020-03-26 12:58:28'),('4ffda818a0b22383b74614062c9d6ba4407e94136c5af8e0f26446d6cbf325ad7be72b5940436b63',17,1,'MyApp','[]',0,'2019-03-22 10:40:49','2019-03-22 10:40:49','2020-03-22 10:40:49'),('50d15b46341b21e2a59df73b117daf45293cfc99a3d5acc35062d0c7ef9f7f1236322106e43e8284',17,1,'MyApp','[]',0,'2019-03-25 16:10:03','2019-03-25 16:10:03','2020-03-25 16:10:03'),('50f8dd65ed2f9defd1906d04566aa2421cc0f3255e1e2bc1b5df91768a1fb428b6a60449b1db4000',88,1,'MyApp','[]',0,'2019-03-26 11:28:12','2019-03-26 11:28:12','2020-03-26 11:28:12'),('528f5705d3e368021e7f2cffda5f251217ed02fa97591f8c37faacc010aa8ab1d267aca117c991bb',100,1,'MyApp','[]',0,'2019-03-26 14:58:41','2019-03-26 14:58:41','2020-03-26 14:58:41'),('52bfb31647fc74c1c50f9b5a1d348067d9c353456795add57ff23a09054732723899914d5705312f',89,1,'MyApp','[]',0,'2019-03-26 18:07:21','2019-03-26 18:07:21','2020-03-26 18:07:21'),('531df2dacb13f4aa41c69c0539fc2d324e6df572a0608872a186914e46cb77aaedec3b53dec9642d',174,1,'MyApp','[]',0,'2019-04-02 03:36:47','2019-04-02 03:36:47','2020-04-02 03:36:47'),('532e12dd54b87cf8afef66d6d600a18fbeb2060636162df7a7a97a7a7f3f7d6a6915f23973961f05',17,1,'MyApp','[]',0,'2019-03-26 10:35:49','2019-03-26 10:35:49','2020-03-26 10:35:49'),('5787df06dd7fff276e96bc08bd642918cdc03ca797fc970d51422a176c4cc3b5e51f715a429cb31e',29,1,'MyApp','[]',0,'2019-04-01 03:19:34','2019-04-01 03:19:34','2020-04-01 03:19:34'),('582d13b5fd7c9ad5eabcebd63c9390178b537a4fb444bf7215a6404834e57a58dce1e615a36c455a',28,1,'MyApp','[]',0,'2019-03-23 09:42:36','2019-03-23 09:42:36','2020-03-23 09:42:36'),('586cf3e3ee155e2325e38bae99c5a3a2611a835a204ca5b916bf7eeaabadf1e7b24f0c1042451fb9',89,1,'MyApp','[]',0,'2019-03-26 18:17:16','2019-03-26 18:17:16','2020-03-26 18:17:16'),('5933e4f109a74542a4cb28fd5a14601d527f55e92e6868801cdf5731229bc6f407bb20e670de0ab8',182,1,'MyApp','[]',0,'2019-04-02 06:06:16','2019-04-02 06:06:16','2020-04-02 06:06:16'),('5a37fd74b357efd67180266adf9b04a28d3b6636c91a68b0d67b66c7a9982f3f7a6ded0872f6fd2b',14,1,'MyApp','[]',0,'2019-03-25 12:33:33','2019-03-25 12:33:33','2020-03-25 12:33:33'),('5c1191dafe98b50f41972310c649979abd1a8df8ab5bbdae88992f5d4eb39b02de7adc204e1a487a',177,1,'MyApp','[]',0,'2019-04-02 05:02:07','2019-04-02 05:02:07','2020-04-02 05:02:07'),('5d48369d7cd77c80601400261b3d6be3fa593d4bdae66f6e6c4faae961d423dc49b9cf3101540e5e',20,1,'MyApp','[]',0,'2019-03-22 09:56:46','2019-03-22 09:56:46','2020-03-22 09:56:46'),('5dcf34b7e6d9ea2f2001ee5705b3ce67fc04897d3f7032c35798b9513fdfd54468dcaf532f25b37b',176,1,'MyApp','[]',0,'2019-04-02 06:22:37','2019-04-02 06:22:37','2020-04-02 06:22:37'),('5f76e96374ff570aeac54c3bfb30e29ac2e8980a623cea8527dd8e18d29db1692d4c08cf7e3524fe',21,1,'MyApp','[]',0,'2019-03-22 11:23:10','2019-03-22 11:23:10','2020-03-22 11:23:10'),('5f99dba89aa39eddd5b10832ec1459e83f1a6932b9e861c9c5d588ce93fc814b86ba3a75165e3e6f',88,1,'MyApp','[]',0,'2019-04-01 08:59:43','2019-04-01 08:59:43','2020-04-01 08:59:43'),('5fc445fdcaec7867416c5cc7da6633f3884c14e3d79d9f608cb134d29d1fbc1936f221908fd2929f',33,1,'MyApp','[]',0,'2019-03-23 10:11:23','2019-03-23 10:11:23','2020-03-23 10:11:23'),('609d0be619496873a85764bd19823bc268478e41c827a10f4c795fe73e234b80bca4cb53534b2ad8',176,1,'MyApp','[]',0,'2019-04-03 01:19:56','2019-04-03 01:19:56','2020-04-03 01:19:56'),('62064e013fa6fc171e38f2e0354259c71e8959a75e003424c232b90566e02ef71abb738a1d116797',21,1,'MyApp','[]',0,'2019-03-23 05:25:18','2019-03-23 05:25:18','2020-03-23 05:25:18'),('62e9e6a3c5d90655e7a7a287b0ed89d84a3405c2eec0c57dcdfb4bada8e3040106d9a70f2306283c',74,1,'MyApp','[]',0,'2019-03-25 18:30:10','2019-03-25 18:30:10','2020-03-25 18:30:10'),('6308d34abfe4bd334d6078487c7deab2a79221955f27d86dfacf365b5a303443b766539bf91a0d52',146,1,'MyApp','[]',0,'2019-03-29 02:21:47','2019-03-29 02:21:47','2020-03-29 02:21:47'),('66f49fc968b9d145369fa52730f0de71afdeb8d2e39869a8b18afa63adbc34e7f14e479210f00a3b',17,1,'MyApp','[]',0,'2019-03-22 11:41:08','2019-03-22 11:41:08','2020-03-22 11:41:08'),('67e5197ee184aa20d7167e6aa80b66d73f277e087ebcd92c2fb00628123621d8ef698cc13b53b1a6',17,1,'MyApp','[]',0,'2019-03-25 16:02:32','2019-03-25 16:02:32','2020-03-25 16:02:32'),('6ba0ae5069e6bc26f3bca567970cacf2c4709dd38b825a6df496c0d627f2800a1bdc162ab001ee00',88,1,'MyApp','[]',0,'2019-03-26 09:47:32','2019-03-26 09:47:32','2020-03-26 09:47:32'),('6c9879f76f4b9f7a1dbb23d2a96955318bf1cc32978dbb0a513d9d25bcda9fdd9c6acd84ed7b58fc',107,1,'MyApp','[]',0,'2019-03-26 16:49:09','2019-03-26 16:49:09','2020-03-26 16:49:09'),('6e00efca42c8afe0bbb0c6ed3d43fd29afdad8bfb4e2f30471f41604a5d8d88657dadf1578f04885',180,1,'MyApp','[]',0,'2019-04-02 05:50:17','2019-04-02 05:50:17','2020-04-02 05:50:17'),('6e1ad429e9a3295d8fbdf8e0b52c777e92cbbb7891499a0f17810117b5e0f3cd5ea4547d8a67a145',14,1,'MyApp','[]',0,'2019-03-25 16:58:27','2019-03-25 16:58:27','2020-03-25 16:58:27'),('6f70a40cc46620bd2905b711a6159c983753fb64c96c5fd199e3ede52bb4475cf2cf2537f100a16d',101,1,'MyApp','[]',0,'2019-03-26 15:14:02','2019-03-26 15:14:02','2020-03-26 15:14:02'),('7029774511ecb764d63bd9cab5598f82791dba28f7f173e141382ee3a7bbb5911d9da502e3a10161',176,1,'MyApp','[]',0,'2019-04-03 01:21:37','2019-04-03 01:21:37','2020-04-03 01:21:37'),('7376155c16c8a3a689dd178b924332bf3fcfacc20c420d67510084b80c0b86d8ca79c0456a19fe73',139,1,'MyApp','[]',0,'2019-03-27 07:55:27','2019-03-27 07:55:27','2020-03-27 07:55:27'),('772a4900239e1fa3e414da242ecfdf7b499d1c61635ff4bd9b791ecbec9ec0d67304ae56917ed2ad',88,1,'MyApp','[]',0,'2019-03-29 08:48:17','2019-03-29 08:48:17','2020-03-29 08:48:17'),('7737314daa8395b67eb3e26cac42c70742a5a411bbcb3019090d1c4c5b66b05d89c210c2b9a64cdb',89,1,'MyApp','[]',0,'2019-03-26 12:04:01','2019-03-26 12:04:01','2020-03-26 12:04:01'),('78348803116c76374ca0053bfb1d32b3a5a1ba0385618ba7db7288f2eb8c79693def5d4c103d3b7e',89,1,'MyApp','[]',0,'2019-04-01 05:42:06','2019-04-01 05:42:06','2020-04-01 05:42:06'),('7d6e61c2c2eaf2085a5fec955bca5231d77c499724bd0b1c90c110f7443029c3e680bbe5be90344a',24,1,'MyApp','[]',0,'2019-03-22 10:53:57','2019-03-22 10:53:57','2020-03-22 10:53:57'),('7d9da001d5f1cfbf640d1825e9477008750ae2bdbe52fdab4f2dad037052f69f57dae3bc5211db37',17,1,'MyApp','[]',0,'2019-03-25 18:54:41','2019-03-25 18:54:41','2020-03-25 18:54:41'),('7dae9ec68cf01b76972120c64c25669675c3f9a9539609970cb3ce1cbbf8b151ff030cd9a9c74102',17,1,'MyApp','[]',0,'2019-03-23 11:13:37','2019-03-23 11:13:37','2020-03-23 11:13:37'),('7f256a5e740bc2f327edfd3684620791ad5bd095206fffdc40299047928761d8d98ccda29781bc5b',14,1,'MyApp','[]',0,'2019-03-25 17:21:47','2019-03-25 17:21:47','2020-03-25 17:21:47'),('819e3a6761d9ef32f2137e0e9e1b986c7f38fe225b9b76235347a4bd674fbb4bdb2ab9c6842de4b8',141,1,'MyApp','[]',0,'2019-03-27 08:01:40','2019-03-27 08:01:40','2020-03-27 08:01:40'),('8263a125a532fae3f442ba957cf49f0cefa8037f22404322bbf8a2fa1c56178b6647450af7280019',155,1,'MyApp','[]',0,'2019-04-01 05:53:44','2019-04-01 05:53:44','2020-04-01 05:53:44'),('85c43bab41a8984c5da219ef359b60b52268156176273367c53c51ec8819a6e80f5ed67b91c10570',231,1,'MyApp','[]',0,'2019-04-03 01:01:18','2019-04-03 01:01:18','2020-04-03 01:01:18'),('87dcfcaa2c433bf2cf03ba88c92d1027f7819394a92cbc8990f49a1868c59acb775513a27c6b8dc3',88,1,'MyApp','[]',0,'2019-03-26 12:48:56','2019-03-26 12:48:56','2020-03-26 12:48:56'),('88f39f0141e9231b5d0ac8805c51ba1c29d4b87b02add54277b93a9eaec2f17e57abd3dd9ef3b8ec',155,1,'MyApp','[]',0,'2019-04-01 08:06:25','2019-04-01 08:06:25','2020-04-01 08:06:25'),('89af4c9d456a70ad6cd9cf1809d6c294c2726638abc358f870d50c5db4337877cf782cd5ea33ba45',176,1,'MyApp','[]',0,'2019-04-02 09:10:37','2019-04-02 09:10:37','2020-04-02 09:10:37'),('8b29bc1bb66d669856697ad076942bbb7d3c142d7d0d44e9cee9cd7d11ba6fe5ba8b6515c3d558a6',148,1,'MyApp','[]',0,'2019-03-29 04:47:36','2019-03-29 04:47:36','2020-03-29 04:47:36'),('8f87dd21eea5568b4bad9faf92ee25c93479565141333996cbf5ddd8cd3bacdf656cead17c057fe1',182,1,'MyApp','[]',0,'2019-04-02 05:58:12','2019-04-02 05:58:12','2020-04-02 05:58:12'),('9052cb0e566fd7bd5f64b588de38e4b7eca760a8b5cfc2d741c7a721c9b69cadee253744d4aade74',139,1,'MyApp','[]',0,'2019-03-27 07:57:03','2019-03-27 07:57:03','2020-03-27 07:57:03'),('922d59e7a251612b6d15c96955d1f3046900c27189d570fa4257cd60b3378cd6a3ba1d544e5c4573',88,1,'MyApp','[]',0,'2019-03-26 12:39:39','2019-03-26 12:39:39','2020-03-26 12:39:39'),('93bd52f670f57f35e217de047361e6ecbb8224f940c5f9f4f82da361a1431e48a7ffeecfec92b51d',17,1,'MyApp','[]',0,'2019-03-26 11:35:35','2019-03-26 11:35:35','2020-03-26 11:35:35'),('93f7ab3c393baaeea5342db3b59bd350c3615a7b81ac0ae1ad7096380a4a26c1e59321c5c287095f',17,1,'MyApp','[]',0,'2019-03-26 10:53:13','2019-03-26 10:53:13','2020-03-26 10:53:13'),('9633fe303b68bdace59217467938caf121829fde36a0564eab5a8df960a20d392be9deffa5517ebb',74,1,'MyApp','[]',0,'2019-03-25 18:29:44','2019-03-25 18:29:44','2020-03-25 18:29:44'),('9698f79955eab61c5ac573bcde155580dae932b9a6a2a350df908658d4fb9b3186da49a2f692754c',148,1,'MyApp','[]',0,'2019-04-02 06:59:46','2019-04-02 06:59:46','2020-04-02 06:59:46'),('96d5cfd5f62f81f9962c08bef089db85345c05ceb210d950e933e68d7c5007660008c6a8a19b522a',230,1,'MyApp','[]',0,'2019-04-03 00:59:18','2019-04-03 00:59:18','2020-04-03 00:59:18'),('9bfac8a6a1d914ee328083b993a0a08f1721d6776eb3cc96595d6c58d30702d91586109bc21a5851',17,1,'MyApp','[]',0,'2019-03-26 14:36:59','2019-03-26 14:36:59','2020-03-26 14:36:59'),('9edcc76f6dae72234358237dc389ad211e275223b8460c43892f43952a796c7645d6c7a288f4abec',17,1,'MyApp','[]',0,'2019-03-22 13:33:14','2019-03-22 13:33:14','2020-03-22 13:33:14'),('9f548cd3262c15aac2841492f0489a460dbb23d5a68d6a4086889d0a21d35ef1462838080c0b1af6',17,1,'MyApp','[]',0,'2019-03-27 07:55:34','2019-03-27 07:55:34','2020-03-27 07:55:34'),('9f57562e2f5cbeed11597d9e897f6c4a2a1ef861aca33a383ec9e362b902d9bfbd71bbfaec9320fc',155,1,'MyApp','[]',0,'2019-04-01 05:56:17','2019-04-01 05:56:17','2020-04-01 05:56:17'),('a00783cb348d56e0c2366f6fcc14aaac6208c0d04a614b7f452989f0ea5ad1a115273eced9c2154a',176,1,'MyApp','[]',0,'2019-04-02 06:38:25','2019-04-02 06:38:25','2020-04-02 06:38:25'),('a3cd23c920e892010c456df41314521528baf0e3a03e894e9f6ad8685857024e6f9b159390cbaa4e',17,1,'MyApp','[]',0,'2019-03-23 09:20:46','2019-03-23 09:20:46','2020-03-23 09:20:46'),('a6c787cab17ddf18cc2851967e5c679ebac68b30b1e3059d35f5340f2ad488bc83c606888af4106f',155,1,'MyApp','[]',0,'2019-04-01 06:09:16','2019-04-01 06:09:16','2020-04-01 06:09:16'),('a7bcb260d4c1cf7cda905968c84c353772d867c964e93e4f9bf1730157cbc4f57ee790edea880d16',29,1,'MyApp','[]',0,'2019-04-02 01:57:32','2019-04-02 01:57:32','2020-04-02 01:57:32'),('a843f97e117ad37f35955b10f8e15c9af570cde686f6a7db554b55a5156eb3b4d6c424eee3036fac',17,1,'MyApp','[]',0,'2019-03-25 17:45:56','2019-03-25 17:45:56','2020-03-25 17:45:56'),('a9d795f72aa400f7033af867f5a9a1320d4c4e605b37fd7119b74f51ee28825f3768e41fafd4e1c3',35,1,'MyApp','[]',0,'2019-03-25 10:22:21','2019-03-25 10:22:21','2020-03-25 10:22:21'),('ab4a10f0a847d5d5e88538a362b021148bb2fb2fe84550e7df20a5b2a1833bf09804a577762f9407',154,1,'MyApp','[]',0,'2019-04-01 05:14:12','2019-04-01 05:14:12','2020-04-01 05:14:12'),('ac0fb5360ad74d2a97334fa50fdef65bcc5ff4d2c1c738b5a61958ff9312a33186f267030a6530fe',17,1,'MyApp','[]',0,'2019-03-26 12:47:57','2019-03-26 12:47:57','2020-03-26 12:47:57'),('ac1fe5f5f8020a01b15b4ebf3a96674932bc893a5137b6e0d80973c877d74b83ff084707bfe4e0e2',124,1,'MyApp','[]',0,'2019-03-27 01:08:16','2019-03-27 01:08:16','2020-03-27 01:08:16'),('ad0dbb2d9e3059c160fc16033f1480f6ba5c26292612cb69a2d093afeb204ca3f2bd658dd3599654',17,1,'MyApp','[]',0,'2019-03-26 12:45:04','2019-03-26 12:45:04','2020-03-26 12:45:04'),('aeafbb9a0cb6861b4001495a22e23bf97ddb7127c8c79287acb6655ab19342d432d86d8e1cb4d489',141,1,'MyApp','[]',0,'2019-04-02 01:44:18','2019-04-02 01:44:18','2020-04-02 01:44:18'),('aeef8b9d935e0bd13cef0a04a7827aa19b357893f8919654b7ff2091b8560ce274dd7a6765b9b00f',176,1,'MyApp','[]',0,'2019-04-02 06:17:29','2019-04-02 06:17:29','2020-04-02 06:17:29'),('af274a0b379c9608a09bdee71c3e0477211c6749494dc5414ba9e5ba815fe9f08c2373be1144278b',17,1,'MyApp','[]',0,'2019-03-22 13:19:05','2019-03-22 13:19:05','2020-03-22 13:19:05'),('af5055d19550a4773086aa8aa1f46e68abf55d6f8e2f68a0b7e1d36fa988b585126c1dc96f05437f',17,1,'MyApp','[]',0,'2019-03-26 14:26:15','2019-03-26 14:26:15','2020-03-26 14:26:15'),('b0552a35940d9e5e5b943aae53eccfd6da066b6b05f3ac31469bd68f67695a51ebd80ba3faaa8653',17,1,'MyApp','[]',0,'2019-03-26 12:35:15','2019-03-26 12:35:15','2020-03-26 12:35:15'),('b250882758838998d06933760b93d1b17ee132b256d7d24cce851467849b5d3b156bdfdec8e28d78',230,1,'MyApp','[]',0,'2019-04-03 02:22:29','2019-04-03 02:22:29','2020-04-03 02:22:29'),('b46e0de81d184247e732b939b66aa1fa6e6cfa6f07ecaaebae1060a012cd83a791ea7ade39653ba4',17,1,'MyApp','[]',0,'2019-03-25 16:00:44','2019-03-25 16:00:44','2020-03-25 16:00:44'),('b479a1632b328a3322487322ad8768254b907ec46952f3d208e3cfd516fabe18c181bbd4b37a79cb',89,1,'MyApp','[]',0,'2019-03-26 14:19:34','2019-03-26 14:19:34','2020-03-26 14:19:34'),('b47c0f2c6aff961e442d7af616db4a90718d8ad792bddd38b378313a849262cee3b99b5990393153',176,1,'MyApp','[]',0,'2019-04-03 01:51:33','2019-04-03 01:51:33','2020-04-03 01:51:33'),('b76a316520c361f4abae268bd755fc0f2641f2d425fc2ae5959dd92bd720fb3100d1ffffc2f78f6c',14,1,'MyApp','[]',0,'2019-03-22 10:58:17','2019-03-22 10:58:17','2020-03-22 10:58:17'),('b8d8e17885e3024164e5450a6f834d85730782d86738b90ce4bd53b635f762a20331a35dc2567c99',35,1,'MyApp','[]',0,'2019-03-25 10:20:23','2019-03-25 10:20:23','2020-03-25 10:20:23'),('b8e6e4b3c15e2dddf202c40b097eb8118c10c5c6447fd0225f0992f37b44909b2fd9dfa2b0cdf1ae',17,1,'MyApp','[]',0,'2019-03-22 06:30:22','2019-03-22 06:30:22','2020-03-22 06:30:22'),('b98c8ee14035f430f3fed07c4802df0b5b9c24fafe1486211f13a101be03106bfdd85bd28c0e4fe6',28,1,'MyApp','[]',0,'2019-03-29 04:45:48','2019-03-29 04:45:48','2020-03-29 04:45:48'),('ba54d62168c4267a2151bfd20f5e4661353b513f60266a6ca437f8762edeeb2f7797aeb608d44913',17,1,'MyApp','[]',0,'2019-03-22 11:11:21','2019-03-22 11:11:21','2020-03-22 11:11:21'),('bd852ec172de872dce427ed9854776d916e727578674efe868ffa09196d361a0a0483492a01927a5',29,1,'MyApp','[]',0,'2019-03-23 09:45:17','2019-03-23 09:45:17','2020-03-23 09:45:17'),('bd8aef8168176a95544d77062dda4035bd724d71b078f8e992c778378215d6363b7aaaa3198c7d0c',17,1,'MyApp','[]',0,'2019-03-22 13:33:31','2019-03-22 13:33:31','2020-03-22 13:33:31'),('bd97c77fa08b3ae4d24f0f33be5a459ba73a5ec197bf3b25303652081eca5ab60564c8fd86b633c3',230,1,'MyApp','[]',0,'2019-04-03 01:03:30','2019-04-03 01:03:30','2020-04-03 01:03:30'),('beadcf7170f53fc90479e0ea0ceb9f0a7a9dc0002e621aaa854b6c477837f999ab0693a5a6f049bb',176,1,'MyApp','[]',0,'2019-04-03 01:18:49','2019-04-03 01:18:49','2020-04-03 01:18:49'),('bf31ae355538b3a02ad7bc8e3a72c3c9398c03835bc129bca7363150af40ef5d05933614a463519a',88,1,'MyApp','[]',0,'2019-04-01 09:08:23','2019-04-01 09:08:23','2020-04-01 09:08:23'),('bf8c2c2f3419644d91a7645b8ce584217dc4b29854b1f66c802e758a7060add991d4064a4baec4fa',14,1,'MyApp','[]',0,'2019-03-22 06:30:58','2019-03-22 06:30:58','2020-03-22 06:30:58'),('bfe554b81b1ad57670efe30c4e8de86a61b3dea030d6d8c9934307884e27592001a7d82a1a877a38',177,1,'MyApp','[]',0,'2019-04-02 05:01:18','2019-04-02 05:01:18','2020-04-02 05:01:18'),('c02b01573406ce57beb74d9e77d3cc5d76e043e6a144118ea606d96bbcd8ff965c50b58afe7d892e',17,1,'MyApp','[]',0,'2019-03-22 12:03:48','2019-03-22 12:03:48','2020-03-22 12:03:48'),('c0e2205718cf11cb9ceff6a064e8d222320e05a5f7b14bd072f274c9a08e890911325c8fadac84c8',21,1,'MyApp','[]',0,'2019-03-22 09:58:02','2019-03-22 09:58:02','2020-03-22 09:58:02'),('c1ecd32e744d38f414490faac46ddc711647038494009e01fa26c3f42f8413d555cad215efae9266',19,1,'MyApp','[]',0,'2019-03-22 09:33:45','2019-03-22 09:33:45','2020-03-22 09:33:45'),('c3d5716310ede6ee00314584562e0f4db85055294996e17ff04235d08881555b01c6dd03f179e059',231,1,'MyApp','[]',0,'2019-04-03 01:00:20','2019-04-03 01:00:20','2020-04-03 01:00:20'),('c4908d97abdf665eb17de147d267c6a2992fc0cd4403885dc467f9649d6b4b1e1692efb8fab87049',176,1,'MyApp','[]',0,'2019-04-02 06:12:56','2019-04-02 06:12:56','2020-04-02 06:12:56'),('c6066f6467de2a0bf6d5edeba0ce314adc1b99e0b91f031f1fd2926e583cc689013c7ffb6a588f97',17,1,'MyApp','[]',0,'2019-03-25 18:01:22','2019-03-25 18:01:22','2020-03-25 18:01:22'),('c6de55069f298aac5d2db21f4756d5708b0cea97e2acb306cc57d500d3d43d26e61946d21439674b',23,1,'MyApp','[]',0,'2019-03-22 10:51:05','2019-03-22 10:51:05','2020-03-22 10:51:05'),('c7872651e9d3b775af6fa2a6e2c9b2da0113cbe8d448cdb58b8ab3cc8e93a4c5660ff8b09b2868e2',177,1,'MyApp','[]',0,'2019-04-02 08:12:51','2019-04-02 08:12:51','2020-04-02 08:12:51'),('c8026ad0e42cd211c12eeee4a0a047e81667f21b2860e400eb7b45d4ca2d1bce5903ebdb42a594d8',88,1,'MyApp','[]',0,'2019-03-26 17:06:46','2019-03-26 17:06:46','2020-03-26 17:06:46'),('c87c29ab83cded8935cb35eb2fd24d772dfa7897195245867bdf9463fd18f6bf51020b15b7e658a6',17,1,'MyApp','[]',0,'2019-03-27 08:16:30','2019-03-27 08:16:30','2020-03-27 08:16:30'),('c8dec6b9462c6dbd5cbfd66260990abe3fbb257d95a62e9b599733e42f630567cbe49d1aacaaf788',91,1,'MyApp','[]',0,'2019-03-26 11:47:07','2019-03-26 11:47:07','2020-03-26 11:47:07'),('c9b898fded516b0226e25678ea1e7e7d5efbd08ac14da5d6f3f8514364a6a8972b199451107777f1',103,1,'MyApp','[]',0,'2019-03-26 15:32:15','2019-03-26 15:32:15','2020-03-26 15:32:15'),('ccf0fb0e012de6ce4126dc8f91859f9ff14967c4e30a0cba36b949c28532dff04dcdd2104ba0e7d5',17,1,'MyApp','[]',0,'2019-03-26 14:48:15','2019-03-26 14:48:15','2020-03-26 14:48:15'),('cd092c44cf56dd1c8e25759cea220a0ac83ae9360cf791985db9ec34830ff5ecffa17b0694901628',141,1,'MyApp','[]',0,'2019-04-01 05:40:32','2019-04-01 05:40:32','2020-04-01 05:40:32'),('cdb73e8a0f85206958ad3190e5370ea6daf3a9d57e4f039b8b9b2f6718685a20ac509104ad2bede5',89,1,'MyApp','[]',0,'2019-03-26 09:15:52','2019-03-26 09:15:52','2020-03-26 09:15:52'),('ce2be60979694ee3ac2eab7f1e635be67843bd10d9209a0b4a3fd3fc57cd4085a7ea05f279ccbaef',99,1,'MyApp','[]',0,'2019-03-26 14:56:07','2019-03-26 14:56:07','2020-03-26 14:56:07'),('cf3265a7edbfe428c405892c8fa211929201891476b1469d52b53669c273cef85b6c83f19a81698c',155,1,'MyApp','[]',0,'2019-04-01 06:12:36','2019-04-01 06:12:36','2020-04-01 06:12:36'),('d1ef5f6fcd9de650bad45eaa7feb70cc3d61ff91f1aa9506f9796f8dff61c920d1466956547c78db',88,1,'MyApp','[]',0,'2019-03-29 06:21:05','2019-03-29 06:21:05','2020-03-29 06:21:05'),('d1f58ddc1905ec7035bf9650130e65c5928f6ecbb4526172ed6c9de8bf7b30de38095c620301b3c0',21,1,'MyApp','[]',0,'2019-03-22 10:57:46','2019-03-22 10:57:46','2020-03-22 10:57:46'),('d21a3a6e5271150743eedcc761850ca265ffcdcd0821fe1be5836a03666851b97ad42e1f1a43a1b9',17,1,'MyApp','[]',0,'2019-04-01 08:59:25','2019-04-01 08:59:25','2020-04-01 08:59:25'),('d32161fba0e42c7e5a443d6007e47a3e10d48aff48645b4dd1c91f412906e14f2d982534b9421d2b',17,1,'MyApp','[]',0,'2019-03-22 13:25:56','2019-03-22 13:25:56','2020-03-22 13:25:56'),('d84095d39e1cf67a6a0636ec77dc99b4c2769bcf03761c82eb4f62613ef7da0613eae48d3f0f7523',141,1,'MyApp','[]',0,'2019-04-01 06:07:11','2019-04-01 06:07:11','2020-04-01 06:07:11'),('da69837b49b82665588bf44c03402b13dbde56cd6c02670a18e7afdd1a9fb870d037c0ad5e7cce23',31,1,'MyApp','[]',0,'2019-03-23 10:05:18','2019-03-23 10:05:18','2020-03-23 10:05:18'),('dad970a66411bd27de8482df6c818c102110f656d9aea0167f219d8ad38c7b54239063b4a6c6d6ca',14,1,'MyApp','[]',0,'2019-03-25 11:13:57','2019-03-25 11:13:57','2020-03-25 11:13:57'),('dcca2a859725ca4422e47c0a64581ee31b07ff80bf359746d989475cd196950610999fb6d23e11ff',17,1,'MyApp','[]',0,'2019-03-26 18:13:47','2019-03-26 18:13:47','2020-03-26 18:13:47'),('df0106fd92a6eda49e0c705454d41bec8e8dde3794d0199b5fb849e38e83864bda7765b834933940',142,1,'MyApp','[]',0,'2019-03-27 08:11:43','2019-03-27 08:11:43','2020-03-27 08:11:43'),('e18de2652164f20783faefce6b63272e7b73e0edee1d51fab51e106430579a09d8adada81b1cd039',155,1,'MyApp','[]',0,'2019-04-01 05:54:48','2019-04-01 05:54:48','2020-04-01 05:54:48'),('e251745ddc641d1df0dd7fb54e6c268711089e7113dcbf42de0782f74508d1ed0a3656009c77698a',102,1,'MyApp','[]',0,'2019-03-26 15:21:45','2019-03-26 15:21:45','2020-03-26 15:21:45'),('e3ea2141048942d077802a802f5ed6d8720f47bab0881ebe3752fe24dbedb8a45215e61223d11b99',124,1,'MyApp','[]',0,'2019-03-27 01:01:19','2019-03-27 01:01:19','2020-03-27 01:01:19'),('e81da79b078ca469a1a092516a95de7ecf59e86896b497e41e15f5ee691727b74cda0d7b9792670a',141,1,'MyApp','[]',0,'2019-03-29 09:01:05','2019-03-29 09:01:05','2020-03-29 09:01:05'),('e98fd86c68959ed670d8d8cccae09f9f3c5c728fad5e0caf4cf5def04ddf8b07da06690957d6561f',90,1,'MyApp','[]',0,'2019-03-26 11:29:50','2019-03-26 11:29:50','2020-03-26 11:29:50'),('e9db0c11ece6dd568cc1cc1ddf2e2901b0b8a5c8e7f334859dd770c2d8a3b0bd7053676cffc2ebc6',155,1,'MyApp','[]',0,'2019-04-01 07:53:23','2019-04-01 07:53:23','2020-04-01 07:53:23'),('eacf5079a12a2c7d48b19be653ae75204127e28180c1e97531ca94b57da0a79aa85fabbe520a025f',14,1,'MyApp','[]',0,'2019-03-25 16:11:24','2019-03-25 16:11:24','2020-03-25 16:11:24'),('ed3ddc876aac7fa765042b67afa318c7534da1340e3a9fe0554ea9c25586698b913f0f3870903dc8',155,1,'MyApp','[]',0,'2019-04-01 05:53:15','2019-04-01 05:53:15','2020-04-01 05:53:15'),('efbf6706d728995e4759caa2646a6602e7be66d10a7eff7af8278a58f3f0f3456e2173add073690a',141,1,'MyApp','[]',0,'2019-03-29 09:08:27','2019-03-29 09:08:27','2020-03-29 09:08:27'),('f122a5318034bb4d3c5a9a43d4834bb46a9cda8a8b6660e2d20680b760c2b2daf2a2646657f2f2c5',16,1,'MyApp','[]',0,'2019-03-22 06:13:00','2019-03-22 06:13:00','2020-03-22 06:13:00'),('f304db999c98dca0a3fdb90b8f1dffed8786f622630853e38dcd89935abac06f376a663470ab124d',108,1,'MyApp','[]',0,'2019-03-26 16:51:50','2019-03-26 16:51:50','2020-03-26 16:51:50'),('f5746c640c5e61aee8eafd7e39af84317b8f41b33d2c8de9ee7a7757219154bc70334d3afc59a509',25,1,'MyApp','[]',0,'2019-03-22 10:55:15','2019-03-22 10:55:15','2020-03-22 10:55:15'),('f70d82238f042a78c7b1a7bb605b0257eb7815efec46f2a997a0ceaa18100b0cca2c35510a677d69',21,1,'MyApp','[]',0,'2019-03-22 09:58:24','2019-03-22 09:58:24','2020-03-22 09:58:24'),('f7ddd1dd392c7234f6de93ed914d9d59f9de84b6302ceec16a456676bdcb10b9a875cabaaed403e3',89,1,'MyApp','[]',0,'2019-04-02 04:48:11','2019-04-02 04:48:11','2020-04-02 04:48:11'),('f97f5deda065d87b64fce1fed46301fe1483377c65cab82ffa49806b47c5391742a32f286a9e57c2',98,1,'MyApp','[]',0,'2019-03-26 14:46:31','2019-03-26 14:46:31','2020-03-26 14:46:31'),('f9cb2bb72c91bb5b1259a00f6ee566a2f83d9f0959d12f65877b67d5bb043588649c762650b68821',88,1,'MyApp','[]',0,'2019-03-27 08:14:01','2019-03-27 08:14:01','2020-03-27 08:14:01'),('fb4b1dc500fd427984e0781ececcb70f5d1383c2ba3ec36935cabf581116b86f9b39e0d325ec7ad7',17,1,'MyApp','[]',0,'2019-03-26 11:06:04','2019-03-26 11:06:04','2020-03-26 11:06:04'),('fb97844f01a65630e322ced6b5997bb71dc4971e12ba1af93bae917094e60af4c69491dd4c368947',90,1,'MyApp','[]',0,'2019-03-26 11:29:17','2019-03-26 11:29:17','2020-03-26 11:29:17'),('fd01439b61b02dc341b879493f3627275ff6b371d79065a31270c03143d9b4c03caf6f002239d247',17,1,'MyApp','[]',0,'2019-03-22 11:15:28','2019-03-22 11:15:28','2020-03-22 11:15:28'),('febe72f493267c489c51ad66cdd5afdaffc1380b31ec74416e0f2591d597d2281f4e3a8f08deb533',176,1,'MyApp','[]',0,'2019-04-03 01:18:40','2019-04-03 01:18:40','2020-04-03 01:18:40'),('ffdfc92d19ea67ef926cbe039a7895cfc1e4d6d370981feaf327283682bb0a6c38845113599d8f5a',88,1,'MyApp','[]',0,'2019-04-01 06:40:25','2019-04-01 06:40:25','2020-04-01 06:40:25');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Omnee Personal Access Client','2jtupzS0kyQDGoyiJeSQT6ohdjVSxEIyxVbMU0WX','http://localhost',1,0,0,'2019-03-14 13:12:55','2019-03-14 13:12:55'),(2,NULL,'Omnee Password Grant Client','UeyIWkSQCd5ItHtRNenLSOJYBrlTNX4TkYS4CIMz','http://localhost',0,1,0,'2019-03-14 13:12:55','2019-03-14 13:12:55');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2019-03-14 13:12:55','2019-03-14 13:12:55');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'About Us','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum, nulla luctus pharetra vulputate, felis tellus mollis orci, sed rhoncus sapien nunc eget odio.',NULL,NULL,'2019-03-14 01:12:37',NULL),(2,'FAQ','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum, nulla luctus pharetra vulputate, felis tellus mollis orci, sed rhoncus sapien nunc eget odio.',NULL,NULL,'2019-03-14 01:12:37',NULL),(3,'Terms & Conditions','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum, nulla luctus pharetra vulputate, felis tellus mollis orci, sed rhoncus sapien nunc eget odio.',NULL,1,'2019-03-14 01:12:37','2019-03-28 08:45:38');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('chinjal@elegantmicroweb.com','$2y$10$JlaTbQeBJsWY8dVmkKLRqedli6olzad2.HDiaHbummZdIWJhkUrRq','2019-04-03 01:38:46');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `properties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apt_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `properties_user_id_foreign` (`user_id`),
  CONSTRAINT `properties_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (34,122,'test','test','test',1,'2019-03-26 10:29:46','2019-03-26 10:34:22'),(53,148,'fg','cccvvv',NULL,0,NULL,NULL),(57,89,'Snow removal','222,canada',NULL,0,NULL,NULL),(64,172,'pro1w','new abb',NULL,0,NULL,NULL),(69,172,'testone','new',NULL,0,NULL,NULL),(71,172,'test','good',NULL,0,NULL,NULL),(74,180,'Test','Sasktton','24234234',0,NULL,NULL),(86,234,'Property 1','Naranpura Cross Road','12 dsfs',1,'2019-04-03 01:30:24','2019-04-03 01:31:36');
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_tenants`
--

DROP TABLE IF EXISTS `property_tenants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_tenants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `tenant_id` int(10) unsigned NOT NULL,
  `property_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `property_tenants_user_id_foreign` (`user_id`),
  KEY `property_tenants_tenant_id_foreign` (`tenant_id`),
  KEY `property_tenants_property_id_foreign` (`property_id`),
  CONSTRAINT `property_tenants_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `property_tenants_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `property_tenants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_tenants`
--

LOCK TABLES `property_tenants` WRITE;
/*!40000 ALTER TABLE `property_tenants` DISABLE KEYS */;
INSERT INTO `property_tenants` VALUES (32,122,123,34,NULL,NULL),(48,89,156,57,NULL,NULL),(50,122,158,34,NULL,NULL),(76,172,173,64,NULL,NULL),(79,148,69,53,NULL,NULL),(80,148,66,53,NULL,NULL),(88,180,183,74,NULL,NULL),(113,234,239,86,NULL,NULL);
/*!40000 ALTER TABLE `property_tenants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rating_to` int(10) unsigned NOT NULL,
  `rating_by` int(10) unsigned NOT NULL,
  `job_id` int(10) unsigned NOT NULL,
  `rating` double(8,2) NOT NULL DEFAULT '5.00',
  `review_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ratings_rating_to_foreign` (`rating_to`),
  KEY `ratings_rating_by_foreign` (`rating_by`),
  KEY `ratings_job_id_foreign` (`job_id`),
  CONSTRAINT `ratings_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ratings_rating_by_foreign` FOREIGN KEY (`rating_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ratings_rating_to_foreign` FOREIGN KEY (`rating_to`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1),(95,1),(222,1),(89,4),(102,4),(121,4),(122,4),(148,4),(154,4),(172,4),(174,4),(175,4),(177,4),(180,4),(230,4),(234,4),(3,5),(4,5),(5,5),(6,5),(7,5),(8,5),(40,5),(41,5),(49,5),(59,5),(66,5),(76,5),(82,5),(83,5),(96,5),(105,5),(114,5),(128,5),(130,5),(131,5),(132,5),(150,5),(159,5),(160,5),(161,5),(162,5),(165,5),(166,5),(171,5),(176,5),(191,5),(194,5),(195,5),(198,5),(210,5),(218,5),(220,5),(224,5),(236,5),(241,5),(10,6),(11,6),(39,6),(47,6),(53,6),(56,6),(57,6),(60,6),(61,6),(67,6),(68,6),(69,6),(71,6),(72,6),(79,6),(80,6),(84,6),(85,6),(86,6),(93,6),(97,6),(109,6),(123,6),(140,6),(143,6),(144,6),(145,6),(151,6),(152,6),(153,6),(156,6),(157,6),(158,6),(163,6),(164,6),(167,6),(168,6),(169,6),(170,6),(173,6),(178,6),(179,6),(181,6),(183,6),(190,6),(192,6),(193,6),(206,6),(208,6),(213,6),(214,6),(215,6),(229,6),(233,6),(239,6);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin',NULL,NULL,NULL),(2,'group_a','Group A',NULL,NULL,NULL),(3,'group_b','Group B',NULL,NULL,NULL),(4,'customer','Customer',NULL,NULL,NULL),(5,'provider','Provider',NULL,NULL,NULL),(6,'tenant','Tenant',NULL,NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `identification_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `sub_category_id` int(10) unsigned NOT NULL,
  `type` enum('E','G') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `services_property_id_foreign` (`property_id`),
  KEY `services_user_id_foreign` (`user_id`),
  KEY `services_category_id_foreign` (`category_id`),
  KEY `services_sub_category_id_foreign` (`sub_category_id`),
  CONSTRAINT `services_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `services_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `services_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `services_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_info`
--

DROP TABLE IF EXISTS `social_media_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_media_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `facebook_page_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linked_in_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_application_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_secret_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_application_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_info`
--

LOCK TABLES `social_media_info` WRITE;
/*!40000 ALTER TABLE `social_media_info` DISABLE KEYS */;
INSERT INTO `social_media_info` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2019-03-28 07:57:04','2019-03-28 09:15:10');
/*!40000 ALTER TABLE `social_media_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `state_country_id_foreign` (`country_id`),
  CONSTRAINT `state_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (16,'Gujarat','GJ','12',1,1,'2019-03-26 02:37:52',NULL),(17,'Maharastra','MH','10',1,1,'2019-03-26 02:38:08','2019-04-01 03:19:38'),(18,'Punjab','PJ8944','23',1,1,'2019-03-28 09:18:59',NULL);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sequence_number` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `service_offers_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_categories_category_id_foreign` (`category_id`),
  CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (101,1,'Central Vac','sub_categories/omnee-sub_category-image-1553842073.png',NULL,'11',0,'1,2,3','For the repair or installation of central vac systems.',1,'2019-03-26 11:08:53','2019-03-29 02:47:53'),(102,1,'Moving/Delivery','sub_categories/omnee-sub_category-image-1553664932.png',NULL,'6',0,'1,2,3','For moving or delivering household appliances.',1,'2019-03-26 11:08:53','2019-03-27 01:35:32'),(103,2,'Material Quotes','sub_categories/omnee-sub_category-image-1553664877.png',NULL,'5',0,'3','For help with pricing out materials for do-it-yourself projects',1,'2019-03-26 11:08:53','2019-03-27 01:34:37'),(105,3,'Cabinetry','sub_categories/omnee-sub_category-image-1553664807.png',NULL,'4',0,'2','For any cabinetry needs. Includes cabinet replacement, repairs, new kitchens, bathroom vanities, etc.',1,'2019-03-26 11:08:53','2019-03-27 01:33:27'),(107,3,'Interior Rough (framing, etc.)','sub_categories/omnee-sub_category-image-1553664746.png',NULL,'3',0,'1','For any rough carpentry needs. Includes framing, stairs, subfloors, etc.',1,'2019-03-26 11:08:53','2019-03-27 01:32:26'),(108,3,'Interior Finish (trim, etc.)','sub_categories/omnee-sub_category-image-1553664671.png',NULL,'2',0,'2,3','For any interior fine carpentry work. Includes trim and baseboards, shelving, and any other interior wood-related projects.',1,'2019-03-26 11:08:53','2019-03-27 01:31:11'),(196,1,'Appliance Repair','sub_categories/omnee-sub_category-image-1553664573.png',NULL,'10',0,'1,2','For the emergency repair of any major household appliance. Includes refrigerators, dishwashers, ranges, washers, dryers,\r\ncentral vac systems, etc.',1,'2019-03-26 09:22:07','2019-03-27 01:36:51'),(200,2,'Project Planning','sub_categories/omnee-sub_category-image-1553664503.png',NULL,'9',0,'1,3','For help with planning a do-it-yourself project.',1,'2019-03-26 09:22:07','2019-03-27 01:36:03'),(202,3,'Exterior (decks, fences, etc.)','sub_categories/omnee-sub_category-image-1553664427.png',NULL,'8',0,'1,2,3','For any exterior carpentry projects. Includes fences, decks, trim work, and any other exterior wood structures.',1,'2019-03-26 09:22:07','2019-03-27 01:35:56'),(205,3,'Railings/Banisters','sub_categories/omnee-sub_category-image-1553843335.png',NULL,'7',0,'1,2,3','For any railing and banister needs.',1,'2019-03-26 09:22:07','2019-03-29 03:08:55');
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_feature`
--

DROP TABLE IF EXISTS `subscription_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_feature` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subscription_id` int(10) unsigned NOT NULL,
  `feature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subscription_feature_subscription_id_foreign` (`subscription_id`),
  CONSTRAINT `subscription_feature_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_feature`
--

LOCK TABLES `subscription_feature` WRITE;
/*!40000 ALTER TABLE `subscription_feature` DISABLE KEYS */;
INSERT INTO `subscription_feature` VALUES (1,1,'1 Property',NULL,NULL),(2,1,'1 Emergency Quote',NULL,NULL),(3,2,'1 Property',NULL,NULL),(4,2,'1 EMergency Quote',NULL,NULL),(5,3,'1 Property',NULL,NULL),(6,3,'1 EMergency Quote',NULL,NULL);
/*!40000 ALTER TABLE `subscription_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `discont` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,'Basic','Basic Free',0,NULL,NULL,NULL,365,1,NULL,NULL),(2,'Plus+','Plus+ ($9.99/mo)',19.99,'50% off','9.99','Price Per Month',0,1,NULL,NULL),(3,'Premium','Premium ($19.99/mo)',19.99,NULL,'9.99','Price Per Month',0,1,NULL,NULL);
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_email_templates`
--

DROP TABLE IF EXISTS `system_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_email` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bcc_emails` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_emails` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_html` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_email_templates`
--

LOCK TABLES `system_email_templates` WRITE;
/*!40000 ALTER TABLE `system_email_templates` DISABLE KEYS */;
INSERT INTO `system_email_templates` VALUES (1,'Welcome Email To User','1','Welcome email for newly registered user','Omnee','omnee@gmail.com',NULL,NULL,'<p>Hello&nbsp; #USER_NAME#</p>\r\n\r\n<p>Welcome to&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam interdum pulvinar nibh. Maecenas eget nunc in justo rhoncus aliquam.</p>\r\n\r\n<p>#SYSTEM_ADMIN_URL#<br />\r\nRegards,<br />\r\n#SYSTEM_COMPANY_NAME#<br />\r\n#SYSTEM_SITE_URL#</p>',1,'2019-03-29 07:43:39','2019-04-02 08:13:37'),(2,'Forgot Password User','2','Wecom email for newly registered user','Omnee','omnee@gmail.com',NULL,NULL,'Welcome to <<Project Name>> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam interdum pulvinar nibh. Maecenas eget nunc in justo rhoncus aliquam. #SYSTEM.admin_url# Regards, #SYSTEM.COMPANY_NAME# #SYSTEM.site_url#',1,'2019-03-29 07:43:39','2019-03-29 08:29:18'),(3,'Welcome Email To Admin','3','Wecom email for newly registered user','Omnee','omnee@gmail.com',NULL,NULL,'<p>Hello&nbsp; #USER_NAME#</p>\r\n\r\n<p>Welcome to&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam interdum pulvinar nibh. Maecenas eget nunc in justo rhoncus aliquam.</p>\r\n\r\n<p>#SYSTEM_ADMIN_URL#<br />\r\nRegards,<br />\r\n#SYSTEM_COMPANY_NAME#<br />\r\n#SYSTEM_SITE_URL#</p>',1,'2019-03-29 07:43:39','2019-03-29 08:29:18'),(4,'Forgot Password Admin','4','Wecom email for newly registered user','Omnee','omnee@gmail.com',NULL,NULL,'Welcome to <<Project Name>> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam interdum pulvinar nibh. Maecenas eget nunc in justo rhoncus aliquam. #SYSTEM.admin_url# Regards, #SYSTEM.COMPANY_NAME# #SYSTEM.site_url#',1,'2019-03-29 07:43:39','2019-03-29 08:29:18'),(5,'Your request has been posted','5','Wecom email for newly registered user','Omnee','omnee@gmail.com',NULL,NULL,'Welcome to <<Project Name>> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam interdum pulvinar nibh. Maecenas eget nunc in justo rhoncus aliquam. #SYSTEM.admin_url# Regards, #SYSTEM.COMPANY_NAME# #SYSTEM.site_url#',1,'2019-03-29 07:43:39','2019-03-29 08:29:18'),(6,'Notification of new quote request','6','Wecom email for newly registered user','Omnee','omnee@gmail.com',NULL,NULL,'Welcome to <<Project Name>> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam interdum pulvinar nibh. Maecenas eget nunc in justo rhoncus aliquam. #SYSTEM.admin_url# Regards, #SYSTEM.COMPANY_NAME# #SYSTEM.site_url#',1,'2019-03-29 07:43:39','2019-03-29 08:29:18'),(7,'Request/Lead [Request/Lead number] was awarded to someone else.','7','Wecom email for newly registered user','Omnee','omnee@gmail.com',NULL,NULL,'Welcome to <<Project Name>> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam interdum pulvinar nibh. Maecenas eget nunc in justo rhoncus aliquam. #SYSTEM.admin_url# Regards, #SYSTEM.COMPANY_NAME# #SYSTEM.site_url#',1,'2019-03-29 07:43:39','2019-03-29 08:29:18'),(8,'Custmer has rated you','8','Wecom email for newly registered user','Omnee','omnee@gmail.com',NULL,NULL,'Welcome to <<Project Name>> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam interdum pulvinar nibh. Maecenas eget nunc in justo rhoncus aliquam. #SYSTEM.admin_url# Regards, #SYSTEM.COMPANY_NAME# #SYSTEM.site_url#',1,'2019-03-29 07:43:39','2019-03-29 08:29:18'),(9,'Provider has rated you','9','Wecom email for newly registered user','Omnee','omnee@gmail.com',NULL,NULL,'Welcome to <<Project Name>> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam interdum pulvinar nibh. Maecenas eget nunc in justo rhoncus aliquam. #SYSTEM.admin_url# Regards, #SYSTEM.COMPANY_NAME# #SYSTEM.site_url#',1,'2019-03-29 07:43:39','2019-03-29 08:29:18');
/*!40000 ALTER TABLE `system_email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_email_variables`
--

DROP TABLE IF EXISTS `system_email_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_email_variables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `system_email_id` int(10) unsigned NOT NULL,
  `variable_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_email_variables_system_email_id_foreign` (`system_email_id`),
  CONSTRAINT `system_email_variables_system_email_id_foreign` FOREIGN KEY (`system_email_id`) REFERENCES `system_email_templates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_email_variables`
--

LOCK TABLES `system_email_variables` WRITE;
/*!40000 ALTER TABLE `system_email_variables` DISABLE KEYS */;
INSERT INTO `system_email_variables` VALUES (1,1,'#USER_NAME#',NULL,'2019-03-29 08:23:45',NULL),(3,1,'#SYSTEM_COMPANY_NAME#',NULL,'2019-03-29 08:23:45',NULL),(4,1,'#SYSTEM_SITE_URL#',NULL,'2019-03-29 08:23:45',NULL),(5,2,'#USER_NAME#',NULL,'2019-03-29 08:23:45',NULL),(7,2,'#SYSTEM_COMPANY_NAME#',NULL,'2019-03-29 08:23:45',NULL),(8,2,'#SYSTEM_SITE_URL#',NULL,'2019-03-29 08:23:45',NULL),(9,3,'#USER_NAME#',NULL,'2019-03-29 08:23:45',NULL),(11,3,'#SYSTEM_COMPANY_NAME#',NULL,'2019-03-29 08:23:45',NULL),(12,3,'#SYSTEM_SITE_URL#',NULL,'2019-03-29 08:23:45',NULL),(13,4,'#USER_NAME#',NULL,'2019-03-29 08:23:45',NULL),(14,4,'#SYSTEM_ADMIN_URL#',NULL,'2019-03-29 08:23:45',NULL),(15,4,'#SYSTEM_COMPANY_NAME#',NULL,'2019-03-29 08:23:45',NULL),(16,4,'#SYSTEM_SITE_URL#',NULL,'2019-03-29 08:23:45',NULL),(17,5,'#USER_NAME#',NULL,'2019-03-29 08:23:45',NULL),(18,5,'#SYSTEM_ADMIN_URL#',NULL,'2019-03-29 08:23:45',NULL),(19,5,'#SYSTEM_COMPANY_NAME#',NULL,'2019-03-29 08:23:45',NULL),(21,6,'#USER_NAME#',NULL,'2019-03-29 08:23:45',NULL),(22,6,'#SYSTEM_ADMIN_URL#',NULL,'2019-03-29 08:23:45',NULL),(23,6,'#SYSTEM_COMPANY_NAME#',NULL,'2019-03-29 08:23:45',NULL),(24,6,'#SYSTEM_SITE_URL#',NULL,'2019-03-29 08:23:45',NULL),(25,7,'#USER_NAME#',NULL,'2019-03-29 08:23:45',NULL),(26,7,'#SYSTEM_ADMIN_URL#',NULL,'2019-03-29 08:23:45',NULL),(27,7,'#SYSTEM_COMPANY_NAME#',NULL,'2019-03-29 08:23:45',NULL),(28,7,'#SYSTEM_SITE_URL#',NULL,'2019-03-29 08:23:45',NULL),(29,8,'#USER_NAME#',NULL,'2019-03-29 08:23:45',NULL),(30,8,'#SYSTEM_ADMIN_URL#',NULL,'2019-03-29 08:23:45',NULL),(31,8,'#SYSTEM_COMPANY_NAME#',NULL,'2019-03-29 08:23:45',NULL),(32,8,'#SYSTEM_SITE_URL#',NULL,'2019-03-29 08:23:45',NULL),(33,9,'#USER_NAME#',NULL,'2019-03-29 08:23:45',NULL),(34,9,'#SYSTEM_ADMIN_URL#',NULL,'2019-03-29 08:23:45',NULL),(35,9,'#SYSTEM_COMPANY_NAME#',NULL,'2019-03-29 08:23:45',NULL),(36,9,'#SYSTEM_SITE_URL#',NULL,'2019-03-29 08:23:45',NULL);
/*!40000 ALTER TABLE `system_email_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_notification_templates`
--

DROP TABLE IF EXISTS `system_notification_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_notification_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_notification_templates_role_id_foreign` (`role_id`),
  CONSTRAINT `system_notification_templates_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_notification_templates`
--

LOCK TABLES `system_notification_templates` WRITE;
/*!40000 ALTER TABLE `system_notification_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_notification_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_cards`
--

DROP TABLE IF EXISTS `user_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `holder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_month` int(11) NOT NULL,
  `expiry_year` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_cards_user_id_foreign` (`user_id`),
  CONSTRAINT `user_cards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_cards`
--

LOCK TABLES `user_cards` WRITE;
/*!40000 ALTER TABLE `user_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_subscriptions`
--

DROP TABLE IF EXISTS `user_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `subscription_id` int(10) unsigned NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_free` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_subscriptions_user_id_foreign` (`user_id`),
  KEY `user_subscriptions_subscription_id_foreign` (`subscription_id`),
  CONSTRAINT `user_subscriptions_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_subscriptions`
--

LOCK TABLES `user_subscriptions` WRITE;
/*!40000 ALTER TABLE `user_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` int(11) DEFAULT '1',
  `iso_code` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in',
  `mobile` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT 'male',
  `age` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tenant_by` int(11) DEFAULT NULL,
  `profile_status` int(11) NOT NULL DEFAULT '0',
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` tinyint(1) NOT NULL DEFAULT '0',
  `is_terms` tinyint(1) NOT NULL DEFAULT '0',
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `email_verify_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logged_in_ip` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_access` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','','omnee@gmail.com','admin','$2y$10$a3doPqEaONzCd3pEhZ8z8uqLe.7eqdeqizeEJ6LBG67juHTZCPEFm',91,'in',NULL,'male',NULL,NULL,NULL,0,NULL,NULL,0,0,0,1,0,NULL,NULL,'vfGRNBrnLisGYBwQVqVsZx4nJR2Vjahe2OrRuos57k0X6jAv5ZeNt0kI8lsh','103.238.106.126','2019-04-03 02:10:49','2019-03-14 01:12:37','2019-03-26 12:42:11'),(3,'Harshal','Shah','harshal@gmail.com',NULL,'$2y$10$H5kDMfy6WP2Bwa.hVu6XMu7IPnsD2EBQUvAJ.MNJuAKJ.MqbHA1tK',91,'in','79941323485','male',NULL,NULL,NULL,0,NULL,NULL,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-03-14 13:24:21','2019-03-14 13:24:21'),(4,'Divyang','patel','divyang@gmail.com',NULL,'$2y$10$P5Ija3kmupoH8NJqWtXFp..D4ZIgYmrs5GxyBcQpbWbNghDpwx2W.',91,'in','765565468971','male',NULL,NULL,NULL,0,NULL,NULL,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-03-14 13:25:38','2019-03-14 13:25:38'),(5,'vishal','gosia','vishal.innovius@gmail.com',NULL,'$2y$10$eFL8UURTeCgO92TXwAEndekhfJd8gtrgcTYQfMGnxR8GvC7z.Y1Ku',91,'in','8460030312','male',NULL,NULL,NULL,0,'374661',NULL,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-03-14 13:26:48','2019-03-14 13:26:48'),(6,'Raj','Barot','raj.innovius@gmail.com',NULL,'$2y$10$tVnhP4P0r4y9R0fz7ZC9DOHtIPLIKQFQpkAttM9wDw6nGTRGALg/2',91,'in','8460521189','male',NULL,NULL,NULL,0,'364812',NULL,0,0,0,1,0,NULL,NULL,'RCRFpfGTds0F4DZkW0y90nYogcvmPmer8mEilbTlp7bIj5iiU30fSaheqXqr',NULL,NULL,'2019-03-14 13:27:31','2019-03-14 13:31:39'),(7,'ravi','dubey','ravi@gmail.com',NULL,'$2y$10$QhPpXD.q4y5dF537s0qm8eWbSiHocJqwlXNPoVAhh8rwLecnN5LwS',91,'in','79845413545','male',NULL,NULL,NULL,0,'345612',NULL,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-03-14 13:28:47','2019-03-14 13:28:47'),(8,'shahid','patel','shahid.innovius@gmail.com',NULL,'$2y$10$w2KuT1.0kNeIVn6iLi2nAO1hDRYZMjtR.im2CUT37gcJVhzAgvoga',91,'in','984655784113','male',NULL,NULL,NULL,0,'325486',NULL,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-03-14 13:29:57','2019-03-14 13:29:57'),(10,'princy',NULL,'princy.innovius@gmail.com',NULL,'$2y$10$pDao8HFdHCw5lOmF8YSk1eYujrTeX6MOzrNFGiE2VrMJU17kmjaCe',91,'in','12456317489','female','25-34',NULL,NULL,0,NULL,NULL,0,0,1,1,0,'2019-03-15 01:24:56',NULL,NULL,NULL,NULL,'2019-03-15 13:23:01','2019-03-15 13:24:56'),(11,'test',NULL,'e@gmail.com',NULL,'$2y$10$1opppa9oQxvkbaEduKc0l.77hR9WJUv5GJPgNchF1qriRYsnm36D2',91,'in','799877987445','male','25-34',NULL,NULL,0,NULL,NULL,0,0,0,1,0,NULL,'kbSoDrrVAH4TiXVOHuKuTWU4gpGsC2yOMdBXpjR0',NULL,NULL,NULL,'2019-03-15 13:27:09','2019-03-15 13:27:09'),(39,'jack donald',NULL,'jack@gmail.com',NULL,'$2y$10$18PSk65.QmFJkhdb3iTEIeyh06GHvlmxkEOtb69Ak7QC5C/JFKcdu',91,'in','12345678410','male','44-60',NULL,38,0,NULL,NULL,0,0,1,1,0,'2019-03-25 03:26:02',NULL,NULL,NULL,NULL,'2019-03-25 15:03:32','2019-03-25 15:26:02'),(40,'Picas','duke','picas@gmail.com',NULL,'$2y$10$x98GwGZGHlK6oenixOwb.OuJSphxmrKTWS/wZSlb3n2tNm4NIpFfa',91,'in','124567897126','male',NULL,NULL,NULL,0,NULL,NULL,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-03-25 15:06:49','2019-03-25 15:11:39'),(41,'jihan','tu','jihan@gmail.com',NULL,'$2y$10$/nGaGz//f2b3OH.qS7osauCPN3QBuBl0ZbJ9gr.mMDtpb0eSDiRb2',91,'in','1234567890','male',NULL,NULL,NULL,0,'478946',NULL,0,0,1,1,0,'2019-03-25 03:26:30',NULL,NULL,NULL,NULL,'2019-03-25 15:25:17','2019-03-25 15:28:20'),(47,'harshal',NULL,'z@s.com',NULL,'$2y$10$xjRwDQhfTlvOy6kb7mzRregUhL0EBb63IaKFfWjhdDt9tTJwXcOY6',91,'in','293490234230','male','34-44',NULL,44,0,NULL,NULL,0,0,0,1,0,NULL,'ujXBgAwBcYfumAi8feQwVgyLgwArZFATrDgrDIsU',NULL,NULL,NULL,'2019-03-25 15:49:01','2019-03-25 15:49:01'),(49,'first','second','ac@gmail.com',NULL,'$2y$10$uO0rWXJ8IuXW/xbOXWDNkO1iK8XAX4NKWcnA3CwjtU7K556HE9/fe',NULL,'in','421341234123','male',NULL,NULL,NULL,0,NULL,NULL,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-03-25 15:58:33','2019-03-25 17:36:30'),(53,'rool',NULL,'tenant@gmail.com',NULL,'$2y$10$Itt7IA/Ip5WBvebSZW6q/.tlwn34xfRF3yVLLHqZxEGZo0NFMGOPi',NULL,'in','222-222-2222','Female','34-44',NULL,NULL,0,NULL,NULL,1,0,1,1,0,'2019-03-25 04:15:54',NULL,NULL,NULL,NULL,'2019-03-25 16:15:54','2019-03-25 16:15:54'),(56,'Test Tenants',NULL,'tenant1@gmail.com',NULL,'$2y$10$rtB8b6I8.pgmFRUTGAakXO3qlwmpxqUHUKjHTKVXzOKEz3ScGWuBu',NULL,'in','1234567890','Male','25-34',NULL,14,0,NULL,NULL,1,0,1,1,0,'2019-03-25 04:22:38',NULL,NULL,NULL,NULL,'2019-03-25 16:22:38','2019-03-25 16:22:38'),(57,'resttttt',NULL,'new@tenant.com',NULL,'$2y$10$.20wzwJYGBy7afvzRI75iuaV4SdrhmEhuMYZ.SLFHSd9pLzvFh8Wi',NULL,'in','222-222-2222','Female','44-60',NULL,14,0,NULL,NULL,1,0,1,1,0,'2019-03-25 04:26:15',NULL,NULL,NULL,NULL,'2019-03-25 16:26:15','2019-03-25 16:26:15'),(59,'vendor','test','vendr@gmail.com',NULL,'$2y$10$aGlTYHHKj97LFiurimQhH.Zd7qOYgTlKS8bkxPay50ojOKINb8H4.',NULL,'in','34324234','male',NULL,NULL,NULL,0,NULL,NULL,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-03-25 16:29:34','2019-03-25 16:29:34'),(60,'man',NULL,'abcdddd@gmail.com',NULL,'$2y$10$tD32ZkYbgAF4PKFIAm3w/ep1d27KAItapcdRNGnqQl69IwynIJil2',NULL,'in','7894561230','Male','45-35',NULL,17,0,NULL,NULL,1,0,1,0,0,'2019-03-25 04:38:17',NULL,NULL,NULL,NULL,'2019-03-25 16:38:17','2019-03-25 16:38:17'),(61,'man',NULL,'ba@gmail.com',NULL,'$2y$10$BGC72Bs3paYdZb8VwKoKter/yk5hSowYC0VAcpsMSQD53flkyjOdi',NULL,'in','7894561230','Male','45-35',NULL,17,0,NULL,NULL,1,0,1,0,0,'2019-03-25 04:49:29',NULL,NULL,NULL,NULL,'2019-03-25 16:49:29','2019-03-25 16:49:29'),(66,'goodew','dd','tuser9544@gmail.com',NULL,'$2y$10$F82RsSB4jcDZjP1aDz/k.OVi.H281RFBJRP6tT3HH0OFBWhQlh5rG',NULL,'in','\"999-999-999','male','25',NULL,NULL,0,',45416',NULL,1,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-03-25 17:39:08','2019-03-25 18:18:30'),(67,'David',NULL,'tuser9556@gmail',NULL,'$2y$10$4F0EAZC.gGCdGz08uKFe6u7DqHrvz/nkBwyV5tyxOtp5RhdnIX/Z2',NULL,'in','657656587687','female','25-34',NULL,64,0,NULL,NULL,2,0,0,1,0,NULL,'yoXSARS71UjIPI9qVjriYKkebiDcrxmjVZ89bMZj',NULL,NULL,NULL,'2019-03-25 17:40:41','2019-03-25 18:17:42'),(68,'good',NULL,'good@gmil.con',NULL,'$2y$10$2E/Z8BVVyYi2OBYKGprsDO7uj0Wjpa.UQox2eRiHAJ63tLy.yDn8O',NULL,'in','364-948-8484','Female','25',NULL,17,0,NULL,NULL,1,0,1,0,0,'2019-03-25 05:57:27',NULL,NULL,NULL,NULL,'2019-03-25 17:57:27','2019-03-25 17:57:27'),(69,'good1',NULL,'yehio@gmail.com',NULL,'$2y$10$mBUja2HNoZEFafut4gv5UefgPL6OsXpn.MVpRPqsBPEn/XFK3ezCK',NULL,'in','\"999-999-999','male','25',NULL,17,0,NULL,NULL,1,0,1,0,0,'2019-03-25 06:03:23',NULL,NULL,NULL,NULL,'2019-03-25 18:03:23','2019-03-25 18:03:23'),(71,'John',NULL,'tuser9556@gmail.com',NULL,'$2y$10$eN.ehfMx3XuqTojr3QHDiuzWap.vcZrlDCvfJml8L8TXJ2C9V7hHy',1,'in','975223242121','female','25-34',NULL,64,0,NULL,NULL,2,0,0,1,0,NULL,'NYzn4q571NGIwhHTNy9Lmnec7t5xZcsFzLa36RGV',NULL,NULL,NULL,'2019-03-25 18:17:26','2019-03-25 18:17:26'),(72,'latest',NULL,'last@gmail.com',NULL,'$2y$10$CVXuXtwwQIdS1s.usHaWS.//ApIhLVf4pUPHMkQxeCRlr3zB8ovRK',1,'in','697-845-1230','Female','44-60',NULL,17,0,NULL,NULL,1,0,1,0,0,'2019-03-25 06:29:04',NULL,NULL,NULL,NULL,'2019-03-25 18:29:04','2019-03-25 18:29:04'),(76,'tesyeh','yh','vivhana@gmail.com',NULL,'$2y$10$EB0IeiE7gyZ93SaHbq7SGei7sRdwFFjQxwh69h/XcgrsfQYm0gx/C',1,'in','123456049876','male',NULL,NULL,NULL,0,',45416',NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-03-25 18:49:59','2019-03-25 19:25:32'),(79,'Tesrtrt',NULL,'Test12345454@gmail.com',NULL,'$2y$10$FeF3cWzXPWNUEUjwmJ0WvOgIoHBjkygs7Iu.FsbIM8KczKXfv9Dly',1,'in','232-323-4234','Male','25',NULL,74,0,NULL,NULL,2,0,1,1,0,'2019-03-25 06:58:02',NULL,NULL,NULL,NULL,'2019-03-25 18:58:02','2019-03-25 18:58:02'),(80,'TestNeww',NULL,'Testttt@gmail.com',NULL,'$2y$10$wno89uukOZ0uUzoaIzJYe.EMwtWXtaNUni4cSs43pSgM2SRVhknvy',1,'in','345-345-3453','Male','25',NULL,74,0,NULL,NULL,2,0,1,1,0,'2019-03-25 06:59:41',NULL,NULL,NULL,NULL,'2019-03-25 18:59:41','2019-03-25 18:59:41'),(82,'sdf','asdf','admin@s.com',NULL,'$2y$10$CIPKgu8H2NJvBBhPpYACEObpuJDFCj.kHyf9ZHO9EhikxIYkVuSXa',1,'in','234234234','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-03-25 19:28:09','2019-03-25 19:36:43'),(83,'asdf','asdf','admin@gami.com',NULL,'$2y$10$wTa/AsQsl1S7fcmeXXPS4OY9MxvfE0tFf9cqVDX7CHqQgbWF2UvxW',1,'in','234234234','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-03-25 19:30:48','2019-03-25 19:30:48'),(84,'Markk',NULL,'tuser95562@gmail.com',NULL,'$2y$10$xzd8srdTaFnZPlPdISx9m.UWNvwwNi/uPAZ0.m340Emfep1POXRqi',1,'in','908349859358',NULL,'25-34',NULL,81,0,NULL,NULL,2,0,0,1,0,NULL,'AJ9sN7T8aq4ZrjNao1ff1FLpMmn89RFXM2c0OGzF',NULL,NULL,NULL,'2019-03-25 19:32:47','2019-03-25 19:32:47'),(85,'Geing',NULL,'tuser95563@gmail.com',NULL,'$2y$10$2pxuQgoSArigGC8E387fUu7lqSXhpuX7t4NwMGfnEAKnjyr8FZxfS',1,'in','984556645756',NULL,'25-34',NULL,81,0,NULL,NULL,2,0,0,1,0,NULL,'nvp6rXcHFlJYoH8DMIBFZNRETeAPpAv4fF6H8OBv',NULL,NULL,NULL,'2019-03-25 19:34:31','2019-03-25 19:34:31'),(86,'Test New',NULL,'TEST12121@gmail.com',NULL,'$2y$10$l41xYaz/wgPKrcIlX9kecOt5bwjEeHdG/acDwvMZHmINmqT.Q/4e.',1,'in','312-123-1231','Male','25',NULL,74,0,NULL,NULL,2,0,1,1,0,'2019-03-26 10:25:01',NULL,NULL,NULL,NULL,'2019-03-26 10:25:01','2019-03-26 10:25:01'),(89,'Jack',NULL,'tuser9565@gmail.com',NULL,'$2y$10$6MwlhvdBR..LItjQjHSHy.a24g3tA77dnx0k4U8mrm36kCH1djBfu',1,'in','646-616-6161','Male','25-34',NULL,NULL,0,NULL,'c-4PZxYqWuw:APA91bGwLewF5IyVr3PcPggUahN677XelvxSJ4dWTLOoi73sZjhgNQ49kM3mP2MEIcNhAVTxCtvLdLrfjmBXpKyZNgmaXNFiEJbx1R8hc0DhWnpA6w2GAseAPjT1hYE4MZGDwPc3uNG9',2,0,0,1,0,NULL,'sbXqlgXAh7QfRqes7wOtZiPQpgL91bCXaBgM9GKI',NULL,NULL,NULL,'2019-03-26 11:29:06','2019-03-26 06:08:49'),(93,'Mack',NULL,'tuser9878@gmail.com',NULL,'$2y$10$Uq.DFgtte3GsYtkFhqvYmuXorUqQko5C7OGPZpbytcGewMfbsTLM2',1,'in','998874379785','female','25-34',NULL,89,0,NULL,NULL,2,0,0,1,0,NULL,'XtzOwSszEoAxD1ODgaccTGXrXefDcIiteTKV51Ti',NULL,NULL,NULL,NULL,NULL),(95,'Pinki','Patel','pinki@elegantmicroweb.com','pinki','$2y$10$LwXiuNSQf6qKid9am6rSGO8F/GaYVm1jRfslItdvsTP5A2GnE4/SW',1,'in','123456789','male',NULL,NULL,NULL,0,NULL,NULL,0,0,0,1,0,NULL,NULL,'CUJGpz3Zlz10rDFkAzmZ6Ise8w57kZCJLsS88SJZ0a6V2oESEbrXltHBeOd4','180.211.99.99','2019-04-03 02:17:25','2019-03-26 01:12:22','2019-04-03 01:19:30'),(96,'Pinki','Patel','pinki+1@elegantmicroweb.com',NULL,'$2y$10$6F1wt7S6qQQDuYjHmk6Lhen3WFC7IgYCwsLEnbDNz3/w3RqUTXkWa',1,'in','123456789','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,'2019-03-26 05:40:07'),(97,'Rony',NULL,'bb@gmail.com',NULL,'$2y$10$4VC/8yO4vw36bJRfXKJo0eVPvEq2Y69HqZnYtX45NPdlTof0UqV4K',1,'in','868-838-6866','Male','25',NULL,17,0,NULL,NULL,1,0,1,0,0,'2019-03-26 02:45:47',NULL,NULL,NULL,NULL,NULL,NULL),(102,'Visara',NULL,'Visara@gmail.com',NULL,'$2y$10$THKoMKwk7sAOEse.AwOiEuB/ib0lgsKsEndPHNKTtFWnTPe4Zbo1a',1,'in','233-212-3123','Male','25',NULL,NULL,0,NULL,'epapRxll_GI:APA91bH47Br2qHAF0NApy44xEghdsN4AusdhVSQs62Qxyo0Z2JpO9CyoFyfPdtVE-hOejE5cMLzDGSkL6NnxGaTXQFhNNxxRHs7-LEbxAdgqgJeVlW0imHnBaDItPC9iV0WkNsVsrvPn',2,1,0,1,0,NULL,'COKy1eskNy8QrBcfwPuKewDp2SsRkszjhULKBgEJ',NULL,NULL,NULL,NULL,NULL),(105,'Ankit','Vyas','ankitv@elegantmicroweb.com',NULL,'$2y$10$h/k4G/IdbQqJneHxeOKTZeolpruPuXYT.ofwUVtEzf8MzbbL0WVNG',1,'in','123456789','male',NULL,NULL,NULL,0,'123456',NULL,2,0,1,1,0,'2019-03-26 03:45:31',NULL,'WwUyKcWQ3hUjXyZZ8FbgvjKsjAJDJgMGUgloH72sS0cWvHwnZ97BMJoZWH56',NULL,NULL,'2019-03-26 03:44:33','2019-04-01 04:54:57'),(109,'TestTenant',NULL,'Test11234@gmail.com',NULL,'$2y$10$YDC32VK8pT.oL2GZmQSIJuWmh3jWraYb8YHQ3YP02N6CrZGzBwUy2',1,'in','423-423-4234','Male','25',NULL,108,0,NULL,NULL,2,0,1,1,0,'2019-03-26 05:10:46',NULL,NULL,NULL,NULL,NULL,NULL),(114,'Yeing','Alex','yeing@gmail.com',NULL,'$2y$10$M6wWXch0rRee/6N9SW2.YOdB0rNaq5sVNJUU1OXDjYtoEG4zMSCt.',1,'in','989873473587','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-03-26 09:21:19','2019-03-26 09:29:16'),(121,'Mack',NULL,'mack@gmail.com',NULL,'$2y$10$ykNlV0ADK17mVOlkrOgEQu9pKH9aygnFNQvZ0XXwtkX/yK.HcDnBq',1,'in','869866496999','female','25',NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,'KbQIP7lGX82x4WOIhEgUzk1qZfPAw1FC89qVGfng',NULL,NULL,NULL,'2019-03-26 09:36:41','2019-03-26 09:36:54'),(122,'chinjal',NULL,'chinjal@gmail',NULL,'$2y$10$OluACJpjnYeOgAtUHsYWiOt7AjfYZouQkT2a7U9./bht.Kop.0ISK',1,'in','154566556234','male','25',NULL,NULL,0,NULL,NULL,2,0,0,0,0,NULL,'Efl75LZ6OjV4NilnNhH8QvCG2TcOaiuAd74B2O5r',NULL,NULL,NULL,'2019-03-26 10:08:39','2019-03-27 02:07:25'),(123,'test',NULL,'anand@gmail',NULL,'$2y$10$xhXJSe4UAZF/.ILoSyP8VO96Q4xjdkVrt.7xEWvqf7HrqcgTJ93E2',1,'in','654656444564','male','25-34',NULL,122,0,NULL,NULL,2,0,0,1,0,NULL,'mujbtAArP67wGa6gMoEYQJg6EnDClV9lSbmHjWnl',NULL,NULL,NULL,NULL,NULL),(128,'anand','thaker','anand@gmail.com',NULL,'$2y$10$ybHScCII.qptxogwkDLwtuP1qqVTpVLuYi5bJSDHImTnOCyWAQKU2',1,'in','46545646566','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-03-27 01:29:44','2019-03-27 01:34:17'),(130,'test','test','test@gmail564.com',NULL,'$2y$10$uQWr41Z9cP.8JByY6xY1duSxwG02deNcgfvli3alxoUZXgQ8HsoT.',1,'in','54465654646','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-03-27 01:52:21',NULL),(131,'Vaibhav','Ved','vaibhav@gmail.com',NULL,'$2y$10$h4qJ5B65Z7MdLuNiSdOcAO5xMUYpdTS6y0WAs4YjnWJ21jfWOjnui',1,'in','446546545646','male',NULL,NULL,NULL,0,'465465',NULL,2,0,0,0,0,NULL,'iy9e0hYiAe0cNcVbSSt8Cjg7wUM04Bn8bQbTyOUA',NULL,NULL,NULL,'2019-03-27 02:01:12','2019-03-27 02:07:44'),(132,'Ankit','testfdf','ankit@gmail.com',NULL,'$2y$10$3Xq7YylIFr26yWhDBrwWVecMCC/fCG36ou2NFnJp4OHoYNMeHIiO.',1,'in','646544645645','male',NULL,'users/omnee-provider-image-1553668161.jpg',NULL,0,'654545',NULL,2,0,0,1,0,NULL,'6qiWLc0gsqOb1Q3mL50SmAQ30s1UgRRTOMtra0xN',NULL,NULL,NULL,'2019-03-27 02:27:37','2019-04-01 09:24:21'),(140,'Test Tenant',NULL,'Tenanat@gmail.com',NULL,'$2y$10$d3Ufo0fbw7BzIPT5sJr4JOQP9eFxYM9ImBw2KtfAwrFwAoPz9GMkm',1,'in','423-423-4234','Male','25',NULL,88,0,NULL,NULL,2,0,1,1,0,'2019-03-27 07:57:57',NULL,NULL,NULL,NULL,NULL,NULL),(143,'Adam',NULL,'adam@gmail.com',NULL,'$2y$10$3CP9mlHG5EfSnUgvVodduuVbXUJEMwimI4Kwzwr.2LmkExCb/piLa',1,'in','986-986-4484','Female','25',NULL,142,0,NULL,NULL,2,0,1,1,0,'2019-03-27 08:20:42',NULL,NULL,NULL,NULL,NULL,NULL),(144,'Xiam',NULL,'xiam@gmail.com',NULL,'$2y$10$LebpQc4jgI90EqGAKApgTeDEfBn8lLDCPMf6n/mVmR2dsio.iifim',1,'in','986-534-9484','Female','25',NULL,142,0,NULL,NULL,2,0,1,1,0,'2019-03-27 08:32:06',NULL,NULL,NULL,NULL,NULL,NULL),(145,'shirt',NULL,'shiry@gmail.com',NULL,'$2y$10$e.NKNZ0LxCRtWU2UXqU3oO/wql370P3DDgjgqpLGZYsRNcA1LamlK',1,'in','976-484-6184','Female','25',NULL,142,0,NULL,NULL,2,0,1,0,0,'2019-03-27 08:32:55',NULL,NULL,NULL,NULL,NULL,'2019-03-27 09:10:40'),(148,'RajaHsnfff',NULL,'raja1@gmail.com',NULL,'$2y$10$J877hb.ObziZdLIx0eI3Q.z4OVqAh/VjsCiGVqilh.Ys6mHZkP1n6',1,'in','987-456-3210','Male','25',NULL,NULL,0,NULL,'fcNetkT_Rbs:APA91bF9tH8oHzq5muyGUqJSw8tMPok756dvVe5ZEjzjuFvF7ds7E_Kh_2z7wBj6bHFe0p6WhXTjGz72kkem05dxjTRl-MPfnqy3Y_h8irH0xWyAmmoJesI-5--DfoffYh7azYXzlxzr',1,1,0,1,0,NULL,'yJzOP3l7Hhth8dCmqgc5ZDQPxmWt77TXZsSRZul8',NULL,NULL,NULL,NULL,NULL),(150,'XYZ','ABC','xyzz@gmail.com',NULL,'$2y$10$IhPHg9yNzvrM9XkHSU6.D.yQPjMLbAOtXGjER0RLK12oX.MJWmjTG',1,'in','123456789','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-03-29 09:29:26','2019-03-29 09:30:27'),(151,'Test',NULL,'Test121212@gmail.com',NULL,'$2y$10$MEuo5M4GCXaDglWVSsaULebBjOSyHgXge7VGSyNpXXcvW/2UXtKP.',1,'in','341-231-2312','Male','25',NULL,88,0,NULL,NULL,2,0,1,1,0,'2019-04-01 01:31:44',NULL,NULL,NULL,NULL,NULL,NULL),(152,'Test NEW',NULL,'test1212@gmail.com',NULL,'$2y$10$fU65dSY3CRFyrk0iZCCA3u/r3LzOia0klqdtGqH9mEBc0G4CzPUs2',1,'in','212-121-2121','Female','25',NULL,88,0,NULL,NULL,2,0,1,1,0,'2019-04-01 03:14:17',NULL,NULL,NULL,NULL,NULL,NULL),(153,'Test',NULL,'tenant_1@gmail.com',NULL,'$2y$10$bquUWgiFqAB5ELb/yP2kKeKLR./7f4Me.zwVMp3OeELCBmClQKdx6',1,'in','7574022303','Female','25',NULL,124,0,NULL,NULL,1,0,1,1,0,'2019-04-01 03:20:36',NULL,NULL,NULL,NULL,NULL,NULL),(154,'testjay',NULL,'testjay@gmail.com',NULL,'$2y$10$aLX728GWvhKlDeGofGaTL.in0VTne6Qs.TEuzgbMjPmkGnHEC8r6W',1,'in','848-488-4848','Male','25',NULL,NULL,0,NULL,'dfjlvoKJzdU:APA91bH5lhEgScug_wJcbVnIjTtrTbGxzamBFXCC2UAQUz1oNY3UEC8oTPwVk7v2bX3RG7ojTVAkiQEl73iIbeFFkB7ZZWuJQGxj3noukeIEYFtfbUSPZx92m1EErA3ONtGqZuCFhteR',2,1,0,1,0,NULL,'PvKiqRTvd1dUGVzP4jlMzniy0Gzd3lJkPD4UQYot',NULL,NULL,NULL,NULL,NULL),(156,'robi',NULL,'g@f.co',NULL,'$2y$10$4.EwpUCnINJ3oFiUWuAnwugNMG0xmVCoPtaLfPP1a770G3g72twtm',1,'in','585-828-2838','Female','25-34',NULL,89,0,NULL,NULL,2,0,1,1,0,'2019-04-01 06:25:42',NULL,NULL,NULL,NULL,NULL,NULL),(157,'gsh',NULL,'g@g.co',NULL,'$2y$10$f.UnKvyuXSdSl1LjicVRb.HBkD1nqHAAcB061XitBk/LSnq3Sb0HG',1,'in','776-765-7567','Male','25',NULL,141,0,NULL,NULL,1,0,1,0,0,'2019-04-01 06:28:39',NULL,NULL,NULL,NULL,NULL,NULL),(158,'test',NULL,'test@test55645.com',NULL,'$2y$10$Z5U1x05.0vhF/IUsjRjA7OqXQT4efhLYlOAGAQKa0x82XWOd5HjLG',1,'in','43534534535','male','25',NULL,122,0,NULL,NULL,2,0,0,1,0,NULL,'Q28cU74PuB9dH0XoWTJ4lZdu3t3jCKp5JFFGuABg',NULL,NULL,NULL,'2019-04-01 09:28:33',NULL),(159,'Yeing','Alex','frfr.t@g',NULL,'$2y$10$xkF6AboiBzj4mwQ3A1XFQuJRleknN4PSoNnkv1AbQbso6QowxjtHq',1,'in','989873473587','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-04-01 09:45:16',NULL),(160,'test','test','test23@test.com',NULL,'$2y$10$Crp8iCfgKzYm4EeoSYddteZ6fokHd/riAEKPQ5VaHx/cF2VBX4Vh6',1,'in','34534534534','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-04-01 09:57:32',NULL),(161,'test','user','testuser@gmail.com',NULL,'$2y$10$VNUX./W1cdqebS1KeUlRjOO72U0hq8.HMFX54VZIcnS4IVKe3T.kC',1,'in','988344444444','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-04-02 01:01:19',NULL),(162,'test','user','testuser9554@gmail.com',NULL,'$2y$10$lFOAefA4wXtHckNG0xdHpeO4BA2u7GcEpG.g26G6TuMVTBgahG2uO',1,'in','988344444444','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-04-02 01:01:43','2019-04-02 02:17:06'),(163,'Rosely',NULL,'jj@g.com',NULL,'$2y$10$ymB7q8mHh8CRaDSteMVx8uCVyOctrqqEqJGa05F5.8mfhRseU7916',1,'in','832-853-765','Female','25-34',NULL,141,0,NULL,NULL,1,0,1,0,0,'2019-04-02 02:00:42',NULL,NULL,NULL,NULL,NULL,NULL),(164,'tent1',NULL,'google@gmail.com',NULL,'$2y$10$hH/AExtTZd9QXDZc.3P71OWYBfShp.KLALMz/WdDLXxJ75DRM4nWa',1,'in','222-222-2222','Male','44-60',NULL,29,0,NULL,NULL,1,0,1,0,0,'2019-04-02 02:30:06',NULL,NULL,NULL,NULL,NULL,NULL),(165,'new','vendor','newven@gmail.com',NULL,'$2y$10$cXEq2ZKAVlc7XyJFRRiLQef18QyHB4S1cCvXy7Rm6DuQ6MyiOH.Z.',1,'in','123547897987','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-04-02 02:32:57',NULL),(166,'Test32','Test342','Test234@gmail.com',NULL,'$2y$10$czpEJQhE7bK96Igk3PTgmODinszHpuIU/9OOL8dzewhXkfQXep6Vy',1,'in','466465465564','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-04-02 02:35:45','2019-04-02 02:36:45'),(167,'rrrrrr',NULL,'rest@gmail.com',NULL,'$2y$10$anSgq54ypSZOdm..BsRjxeq7TrIsXzPAtYMzDGUT0E5Uh5FnbA/Ci',1,'in',NULL,'Female','34-44',NULL,29,0,NULL,NULL,1,0,1,0,0,'2019-04-02 02:38:28',NULL,NULL,NULL,NULL,NULL,NULL),(168,'TestJay122222',NULL,'Testjay12121@gmail.com',NULL,'$2y$10$V4VJvtAMXz1m5OBbK2hGRekd3PMmKyI1.UstdQTo1lcp0WgpyKlam',1,'in','242-342-3423','Male','25',NULL,88,0,NULL,NULL,2,0,1,1,0,'2019-04-02 02:54:06',NULL,NULL,NULL,NULL,NULL,NULL),(169,'Test',NULL,'Test4234242423@gmail.com',NULL,'$2y$10$lwHPiazRLu42O8ZWkSGQxeo/cFa/XpaA2DNKj.8ddR63QBAYSHz6y',1,'in','121-212-1212','Male','25-34',NULL,14,0,NULL,NULL,2,0,1,1,0,'2019-04-02 02:55:51',NULL,NULL,NULL,NULL,NULL,NULL),(170,'TEstFemale',NULL,'TESTSTTSTS@gmail.com',NULL,'$2y$10$OB1UDTCWHO/djqvy/OIZXO38OQxUSIL7A0HTkNC9HeyrVYToz29Ce',1,'in','234-242-4234','Female','25',NULL,88,0,NULL,NULL,2,0,1,1,0,'2019-04-02 03:18:06',NULL,NULL,NULL,NULL,NULL,NULL),(171,'Software','Software','alex@gmail.com',NULL,'$2y$10$VdbbdoHPRCHZdT4qr.NJQO0TZt/hwnf0rcyI0s7NRzIrRQ4/dX62C',1,'in','988656233445','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-04-02 03:21:07','2019-04-02 03:36:36'),(172,'pik',NULL,'pik@gmail.com',NULL,'$2y$10$1TvaGRma7R1RhqliwLM/Quf6h4z3.cmw28cWHG0DYCZeT.A/QUIOK',1,'in','546-789-1533','female','34-44',NULL,NULL,0,NULL,'fcNetkT_Rbs:APA91bF9tH8oHzq5muyGUqJSw8tMPok756dvVe5ZEjzjuFvF7ds7E_Kh_2z7wBj6bHFe0p6WhXTjGz72kkem05dxjTRl-MPfnqy3Y_h8irH0xWyAmmoJesI-5--DfoffYh7azYXzlxzr',1,1,0,1,0,NULL,'hlwHMN1ATHvlRx7viIx5QXBRkMk7ACpTEo5npiN0',NULL,NULL,NULL,NULL,NULL),(173,'firstne',NULL,'first@gmail.com',NULL,'$2y$10$RrdIfuW2KxI8PbwodOqZpeDbMiz5/tjBtyX9vf.Qx1TvRONxPAPje',1,'in',NULL,'female','25',NULL,172,0,NULL,NULL,1,0,1,0,0,'2019-04-02 03:22:10',NULL,NULL,NULL,NULL,NULL,NULL),(174,'jay1223',NULL,'jayqqqq@yahoo.com',NULL,'$2y$10$QvHAqcEDEzyOp5Ng66t8AeHJXiEiSAtFFNnesZijGpETV77DvbXt.',1,'in','848-488-8848','male','25',NULL,NULL,0,NULL,'c-4PZxYqWuw:APA91bGwLewF5IyVr3PcPggUahN677XelvxSJ4dWTLOoi73sZjhgNQ49kM3mP2MEIcNhAVTxCtvLdLrfjmBXpKyZNgmaXNFiEJbx1R8hc0DhWnpA6w2GAseAPjT1hYE4MZGDwPc3uNG9',2,1,0,1,0,NULL,'YLj27YA5kn1WWdsvb6hfcoIBwsGPUdJFBrpP8CCE',NULL,NULL,NULL,NULL,NULL),(175,'test',NULL,'test324@test',NULL,'$2y$10$c2uu5JkPlHjmljpUnDNGOOFS6ugIINoGbuGTVY40cqdJjQuy.6zI.',1,'in','345345343453',NULL,'25',NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,'01ZEagWaA1bIntmU1ZSWdn4UcK7AFnF77Qw02ZJ0',NULL,NULL,NULL,'2019-04-02 04:18:38',NULL),(176,'harshal','shah','harshal123@gmail.com',NULL,'$2y$10$k6tvb0OVYx8tGsFpW75KS.Mbzp64jlBp5kPNS9d/WNWD2i/kBBGAO',1,'in','12345678','male',NULL,NULL,NULL,0,NULL,'dPLVUqpz05Q:APA91bFtUxfHaVNAJ20ChmWgZaGjrQyZ9GRvuGZudMdXCvA0XHX4XTL9RIfOp19e4eDBhoBDwhv_YUR653Fx7_SxjUpMKQz35z7LqqnIkzQ38DNI9EJXlF2GsoDPprpN49CD0atftTgy',2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-04-02 04:54:03',NULL),(177,'Alex',NULL,'alex.dias22@gmail.com',NULL,'$2y$10$.hK9JkZj3gOMmCUyjQ2o1.2ow6YTxafMDSpx6xMvMdbP7s1zjNvEa',1,'in','986','male','25',NULL,NULL,0,NULL,'eVBriWikFIA:APA91bH_D1Pe9bWl4SOyPrw9l9b0tSFN4ar12TsSqVrsfUuRR_Ro5S21Ts3-6JuGIwPuviaSt-_CDrM5bhgyv_2zYUE5l4DM3ozw6DE2WUaes2_qO2s_sKCqFRxfq_hea-0W39siS34M',1,1,0,1,0,NULL,'qZOxnJSBnxIBA6GwzXNawRnWrmn9fY3883VdS2Mr',NULL,NULL,NULL,NULL,NULL),(178,'Robert lio',NULL,'robert@gmail.com',NULL,'$2y$10$SwdfiX6Ft19t7ZWlTlTdeueqdygYwnaN4s3TH2g99WdLnaRtdystm',1,'in',NULL,'male','25-34',NULL,177,0,NULL,NULL,1,0,1,0,0,'2019-04-02 05:29:21',NULL,NULL,NULL,NULL,NULL,NULL),(179,'Michel',NULL,'michel@gmail.com',NULL,'$2y$10$FjzCV1fTqdAjhO7RZBoTHe7zWwP91cZcoo7vVkaI/7IArZTbNQIbq',1,'in',NULL,'male','25',NULL,177,0,NULL,NULL,2,0,1,1,0,'2019-04-02 05:29:58',NULL,NULL,NULL,NULL,NULL,NULL),(180,'Test',NULL,'TestUser123@gmail.com',NULL,'$2y$10$D3kuOcvom7NKsofvEMkeDuDeNdw/JrhO5BojhkSgZYwrmqD7akaKi',1,'in','121-212-1212','male','25',NULL,NULL,0,NULL,'cuo3qtj6nkY:APA91bEktYyhQRpLha_pscqWXulN_gmHJWgdr5vK3KKTj5jW8d3WwWWWkZoCg_clfioh6CZPjoKsdUCZYMpbzqvu3Xu4-jHN8mcyr5T45hTawKs7zwwQiA0cT2UJOHGlhMrfDocGYJp0',2,1,0,1,0,NULL,'zVSERgIWrAtd3N1YVh6gbfJb7DEN9O2vZgjDxBVe',NULL,NULL,NULL,NULL,NULL),(181,'testteannat121212',NULL,'test2222@gmail.com',NULL,'$2y$10$NOkthJIjhTSXkxOflZHswOQZY7OerIKQSdMAvOdRmIUh2vjqXwU3u',1,'in','423-423-2342','male','34-44',NULL,180,0,NULL,NULL,2,0,1,1,0,'2019-04-02 05:51:24',NULL,NULL,NULL,NULL,NULL,NULL),(183,'Test',NULL,'abc1122@gmail.com',NULL,'$2y$10$WO3wxdhlE15NzGERljHZl.pLL9zg3wuuAYhbn/LVFFTSFyqv/wJD.',1,'in','234-232-3423','male','25',NULL,180,0,NULL,NULL,2,0,1,1,0,'2019-04-02 06:27:31',NULL,NULL,NULL,NULL,NULL,NULL),(190,'Rosee',NULL,'test@g.co',NULL,'$2y$10$fsjl4z.yHcLQ8BmBubzSqeeRVPERbqnZUUtzdatTDj3tVTpavtHyS',1,'in',NULL,'female','25-34',NULL,177,0,NULL,NULL,1,0,1,0,0,'2019-04-02 08:22:26',NULL,NULL,NULL,NULL,NULL,NULL),(191,'testsetjlerlksjdfshdjfhsjkdhfjkshdjhjkshdjkhks','sjkdhfjkshdjkh','test@test234.com',NULL,'$2y$10$WCrD6yvMBY.08IjEsfFIi.zRB33J5R8y8Yuet.i4mXGXJJFBp3ne2',1,'in','46545645665','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-04-02 08:26:33','2019-04-02 08:38:52'),(192,'gwhwg',NULL,'jg@g.co',NULL,'$2y$10$rju9ruZnC3KXdYoerMNm6.V8Whw129ANU05C37n784nZscS96y.Vi',1,'in',NULL,'male','25-34',NULL,177,0,NULL,NULL,1,0,1,0,0,'2019-04-02 08:28:11',NULL,NULL,NULL,NULL,NULL,NULL),(193,'rytrweye',NULL,'dgsah@gmail.com',NULL,'$2y$10$yNUTWpnNe4zgPDDfmhSQle0InISJtLXKu222vyw.uJTaRYUYJaMuC',1,'in','98656445575','female','25',NULL,188,0,NULL,NULL,2,0,0,1,0,NULL,'79plpMJB398FPmQ9KbVv6HjffSlzrWkVIqLEPNPT',NULL,NULL,NULL,'2019-04-02 08:35:57',NULL),(194,'Vaibhav','Ved','vaibhav@elegantmicroweb.com',NULL,'$2y$10$um2k6T39CRI8AyB.400K9eVaoGGEysUNBhVgF8aix3Yy4U61Ig9ye',1,'in','32424234234','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-04-02 08:40:43',NULL),(195,'test','tset','tset@test.com',NULL,'$2y$10$Tu.30LwxW2xHVtcmXim38evPi7oxIVL4o9VPX6NUxS7.EyBYkCgCK',1,'in','234234234234','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,'VLpFupVKA0koqrSq1gg8IWeFygadGTweS2SGT4Dj',NULL,NULL,NULL,'2019-04-02 08:48:32',NULL),(198,'test','test','teste@gmi.com',NULL,'$2y$10$s2q2KSTI4xLvalqQa56d1.dnl9IRu6j4aOvTfqFcYU/tDiG6GYkOi',1,'in','89685565565','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-04-02 09:10:26',NULL),(206,'test tenant',NULL,'test122@gmail.com',NULL,'$2y$10$bQNAPKla079uuDWaoz2ZzezS.zQzWlRQ/25Kecuj1RgKqg9hMxkTa',1,'in','1234567890','female','25',NULL,200,0,NULL,NULL,2,0,0,1,0,NULL,'9SIrKIOifJqPRe2X305tUozYcep84tVPnpVcE9xZ',NULL,NULL,NULL,'2019-04-02 09:52:05',NULL),(208,'test tenant',NULL,'test1221@gmail.com',NULL,'$2y$10$cSeeodAZHLW8zw2KA05Czee7fSHEN9UIjisIxl98YStztoaJtxKLu',1,'in','1234567890','male','25',NULL,200,0,NULL,NULL,2,0,0,1,0,NULL,'ZToLQjxfhMFLFa0xVIxYb9NgaiGI6kqg8dGz7QLk',NULL,NULL,NULL,'2019-04-02 09:52:59',NULL),(210,'asdsad','asdasd','adminasdasd@a.c',NULL,'$2y$10$LhebmHwOFAuM0z8tX9JGX.QX7ZEW1G91u0gv1XG1Ot74uImbhapWi',1,'in','78795734857','male',NULL,NULL,NULL,0,'asdasd',NULL,2,0,0,1,0,NULL,'OH5psJJPyMiLOSQFdAJexEzrpi2JyDVJjg7GQZIU',NULL,NULL,NULL,'2019-04-02 10:02:22','2019-04-02 10:13:36'),(213,'tset',NULL,'test343@gmail.com',NULL,'$2y$10$rWbRVpyxKj8jbHNblkMcKeXJlJqyCZQvCvzixrgZCj8VS8HhHycUa',1,'in',NULL,'male','25-34',NULL,185,0,NULL,NULL,2,0,0,1,0,NULL,'KpUvPuqOLbKpOyGdN7dBW23olwQR5PLkshXDFUwK',NULL,NULL,NULL,'2019-04-02 10:16:38',NULL),(214,'vaibhv',NULL,'ankit@elegantmicroweb.com',NULL,'$2y$10$GQK/yJluG7eoQhUHR7x.XuoV3O.hVvPhHfYOYeltM25.ZVSVQpB5G',1,'in',NULL,'male','34-44',NULL,185,0,NULL,NULL,2,0,0,1,0,NULL,'HavtzSAuiFykwkU7GdQeUy329mDklS3Yi1J9o7eR',NULL,NULL,NULL,'2019-04-02 10:17:52',NULL),(215,'ankit',NULL,'ankits@elegantmicroweb.com',NULL,'$2y$10$fUOFiWSGL/lwhaF.XZC8TeQRqSf.1.VAjW8Dih4UevcL2A8Hn/GXW',1,'in','46466545654','male','25-34',NULL,185,0,NULL,NULL,2,0,0,1,0,NULL,'gbc1t6Z4AYMYX6lENZBsF5QgDYAB5tlAlsjMgswN',NULL,NULL,NULL,'2019-04-02 10:18:44',NULL),(218,'com','a','sdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasdsdasd@gmail.com',NULL,'$2y$10$XpehJebpRCodHiLCO6l3zeVzloloQA0N/lbub56Hpwjg8VDqRRdbm',1,'in','1234567890','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-04-02 10:41:12',NULL),(220,'tset','tset','test44@test.com',NULL,'$2y$10$rJfHpMhxykEOOD/AhvA2Au9JJEMkAZuOaT9FImnzS5nxNY7oWJTaa',1,'in',NULL,'male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-04-02 10:43:35','2019-04-03 12:31:06'),(221,'Jaymin','Patel','jaimin@elegantmicroweb.com','Jaimin','$2y$10$Mm5bRMiY/2g89pYjjW.DvujMqfBkhtns4vo7Caf.RehyEFeYeZzqG',1,'in','343534534543','male',NULL,NULL,NULL,0,NULL,NULL,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-04-02 10:54:30',NULL),(222,'Jaymin','Patel','jaymin@elegantmicroweb.com','Jaymin','$2y$10$C7bNQvJhGoQqTlbH0fyvpe8.SYoE5sxuQQP78zsnBoKQl68mp4Z1G',1,'in','453453435353','male',NULL,NULL,NULL,0,NULL,NULL,0,0,0,1,0,NULL,NULL,'YYxrHw2baMfeWlB9umP2xlORCBOZxLcwupQyPm5C0Ikd5vaUvpBu8Jy1GPSM','180.211.99.99','2019-04-03 01:38:27','2019-04-02 10:55:25',NULL),(224,'first name','last name','abcabc@gmail.com',NULL,'$2y$10$R5eCR3U5SpGZwJ2wd5f1Uu9wVQdjfeWxAJeoQMUNWmTRFJGUV3yRW',1,'in','2342353241','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-04-03 12:37:30',NULL),(229,'myname',NULL,'email@email.com',NULL,'$2y$10$xN2aDg2mt5hm3dg4sns70.VV.aoUu/AOmI.oDyJD6o70iuPjwBrQK',1,'in','7940324727','male','25-34',NULL,217,0,NULL,NULL,2,0,0,1,0,NULL,'dCYzGa2gaxgyGZlzsA8nn20TkbsPKfI8lt2L8uOX',NULL,NULL,NULL,'2019-04-03 12:59:14','2019-04-03 01:01:23'),(230,'TestUsere',NULL,'Test123@gmail.com',NULL,'$2y$10$s7K1IU0ZR6Ne50e/sVmQIOUDw7mN.GvcYiPzEU1FccH2ncshJTsNK',1,'in','123-123-1231','male','25',NULL,NULL,0,NULL,'dwKATxbslIE:APA91bFb7aMHKl892tBmAkCtNfZ74Tn5RO5o-TT7XidDHU6cpJVGrzatn3V9mVJfBIDc_Iljm6o14qEjE2id0DzMwaXpSVlkR0WzlWcKZXBCfqnx3_eFFKM6h1JYUFXREIGLS9jfHqKm',2,1,0,1,0,NULL,'1n1MLz2fY2rUifri90BHnJIw4DB3RasPfHWhYq8h',NULL,NULL,NULL,NULL,NULL),(233,'test',NULL,'testacp50@gmail.com',NULL,'$2y$10$1/8J8nNgloPdrFrrRbJmief2YWqlR6cY3HdiX7kAnWwQOAVTgkPn2',1,'in','34534535343','male','25',NULL,185,0,NULL,NULL,2,0,0,1,0,NULL,'ZUuip5BDqq14H3grT1lhMcwHK7rWEb9mnfZtZDWx',NULL,NULL,NULL,'2019-04-03 01:12:12',NULL),(234,'anand',NULL,'anand@elegantmicroweb.com',NULL,'$2y$10$QYZX2R.J53d12rw5Kdy2t.Qhq8jPGR.pua03IgHz0PkAN1C22W/6W',1,'in','35345345345','male','25',NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,'u4EesnkDUvZismW06uj8Xw3DGuGC7fctdjc0hkTu','Qg1evpZPrd87LCQT69zX914iyVkvE4qOQEPQ0WdzVNXf4yBtIQslYpXzy2F5','180.211.99.99','2019-04-03 01:58:13','2019-04-03 01:13:10','2019-04-03 01:57:13'),(236,'Test','Employee','omnee.employee@gmail.com',NULL,'$2y$10$E9wzrvvGBT9tVbvjSXdkZOtFK7bDvpP9Od.ERGGHWGTdQYypYY7Na',1,'in',NULL,'male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,'hc3tkHqa6kGJ2l1XDZqbZL8nK6uJ1wAKIyiLwEI2',NULL,NULL,NULL,'2019-04-03 01:25:19','2019-04-03 01:25:58'),(239,'asds',NULL,'omneasdsdasdase@gmail.com',NULL,'$2y$10$fjx4ZOfI4kieoSSL.k.CWuBYwfjESC0Z8OUFDEg4HA6TMYSOC3Xwi',1,'in',NULL,'male','25',NULL,234,0,NULL,NULL,2,0,0,1,0,NULL,'DL9xeabcc6yBl97bo2CnEmh9cKQFHyrAPRDTwGPx',NULL,NULL,NULL,'2019-04-03 01:43:10',NULL),(241,'test','test','chinjal@elegantmicroweb.com',NULL,'$2y$10$LggbNxwtSH8eLvkn2D.bEOjeMTNPDju6d6vUbC4K16ufC0R7hwx4G',1,'in','34534534534','male',NULL,NULL,NULL,0,NULL,NULL,2,0,0,1,0,NULL,NULL,NULL,NULL,NULL,'2019-04-03 01:48:13',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-03  6:26:51
