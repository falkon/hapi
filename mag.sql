/*
SQLyog Ultimate v10.42 
MySQL - 5.5.5-10.2.11-MariaDB : Database - magazine
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `applications` */

DROP TABLE IF EXISTS `applications`;

CREATE TABLE `applications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `whom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `growth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `applications` */

insert  into `applications`(`id`,`created_at`,`updated_at`,`phone`,`category_id`,`whom`,`reason`,`price`,`growth`) values (5,'2018-07-18 11:30:34','2018-07-18 11:30:34','+7 (654)-654-65-46',NULL,NULL,NULL,NULL,NULL),(6,'2018-07-18 11:31:19','2018-07-18 11:31:19','+7 (324)-234-23-42',NULL,NULL,NULL,NULL,NULL),(7,'2018-07-18 11:31:48','2018-07-18 11:31:48','+7 (324)-234-23-42',NULL,NULL,NULL,NULL,NULL),(8,'2018-07-18 11:34:20','2018-07-18 11:34:20','+7 (435)-435-43-54',NULL,'Себе','Без повода','4000',4),(9,'2018-07-19 07:18:03','2018-07-19 07:18:03',NULL,'3',NULL,NULL,NULL,NULL),(10,'2018-07-19 07:18:05','2018-07-19 07:18:05',NULL,'3',NULL,NULL,NULL,NULL),(11,'2018-07-19 07:18:05','2018-07-19 07:18:05',NULL,'3',NULL,NULL,NULL,NULL),(12,'2018-07-19 08:20:16','2018-07-19 08:20:16','+7 (423)-423-42-34',NULL,NULL,NULL,NULL,NULL),(13,'2018-07-19 08:20:54','2018-07-19 08:20:54','+7 (353)-454-35-43',NULL,NULL,NULL,NULL,NULL),(14,'2018-07-20 08:07:43','2018-07-20 08:07:43','+7 (888)-888-88-88',NULL,NULL,NULL,NULL,NULL),(15,'2018-07-20 08:12:18','2018-07-20 08:12:18','+7 (000)-000-00-00',NULL,NULL,NULL,NULL,NULL),(16,'2018-07-20 08:43:17','2018-07-20 08:43:17','+7 (999)-888-77-75','5',NULL,NULL,NULL,NULL),(17,'2018-07-20 08:44:23','2018-07-20 08:44:23','+7 (777)-777-77-77',NULL,'Себе','Без повода','4000',4),(18,'2018-07-20 08:44:35','2018-07-20 08:44:35','+7 (777)-777-77-77',NULL,'Себе','Без повода','4000',4),(19,'2018-07-20 08:44:39','2018-07-20 08:44:39','+7 (777)-777-77-77',NULL,'Себе','Без повода','4000',4),(20,'2018-07-20 08:44:42','2018-07-20 08:44:42','+7 (777)-777-77-77',NULL,'Себе','Без повода','4000',4),(21,'2018-07-20 08:45:18','2018-07-20 08:45:18','+7 (999)-888-77-75','5',NULL,NULL,NULL,NULL),(22,'2018-07-20 08:45:23','2018-07-20 08:45:23','+7 (999)-888-77-75','5',NULL,NULL,NULL,NULL),(23,'2018-07-20 08:45:34','2018-07-20 08:45:34','+7 (575)-575-45-45','5',NULL,NULL,NULL,NULL),(24,'2018-07-20 08:45:47','2018-07-20 08:45:47','+7 (857)-572-42-76',NULL,NULL,NULL,NULL,NULL),(25,'2018-07-20 09:02:20','2018-07-20 09:02:20','+7 (435)-435-43-54',NULL,NULL,NULL,NULL,NULL),(26,'2018-07-20 09:02:26','2018-07-20 09:02:26','+7 (435)-435-43-54',NULL,NULL,NULL,NULL,NULL),(27,'2018-07-20 09:04:20','2018-07-20 09:04:20','+7 (435)-435-43-54',NULL,NULL,NULL,NULL,NULL),(28,'2018-07-25 11:22:07','2018-07-25 11:22:07','+7 (435)-353-45-34',NULL,'Себе',NULL,'3000',4),(29,'2018-07-25 11:22:13','2018-07-25 11:22:13','+7 (435)-353-45-34',NULL,'Себе',NULL,'3000',4),(30,'2018-07-25 11:22:20','2018-07-25 11:22:20','+7 (232)-342-34-23',NULL,NULL,NULL,NULL,NULL),(31,'2018-07-25 11:22:23','2018-07-25 11:22:23','+7 (232)-342-34-23',NULL,NULL,NULL,NULL,NULL),(32,'2018-07-25 11:22:28','2018-07-25 11:22:28','+7 (232)-342-34-23',NULL,NULL,NULL,NULL,NULL),(33,'2018-07-25 11:25:24','2018-07-25 11:25:24','+7 (232)-342-34-23',NULL,NULL,NULL,NULL,NULL),(34,'2018-07-25 15:42:37','2018-07-25 15:42:37','+7 (555)-555-55-55',NULL,NULL,NULL,NULL,NULL),(35,'2018-07-25 15:42:45','2018-07-25 15:42:45','+7 (444)-444-44-44',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `bigImage` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `is_show_dynamic` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `categories` */

insert  into `categories`(`id`,`parent_id`,`order`,`name`,`slug`,`created_at`,`updated_at`,`image`,`bigImage`,`meta_title`,`meta_keywords`,`meta_description`,`is_show_dynamic`) values (4,NULL,5,'Шарики','shariki','2018-07-17 13:18:33','2018-07-25 14:43:24','categories/July2018/RuT7JKHW5gP1h1ZTAjMkgIwfICncydkwm3nzm9lB.jpeg','categories/July2018/Z5cVxsviBqX0RZJh9IlEVs18huxhT4btDyZ8nuNM.jpeg','Шарики','Тестим','Тестим',1),(11,NULL,6,'мишки','mishki','2018-07-23 14:01:04','2018-07-27 05:43:42','categories/July2018/B0tezJFxmYPMxsBQGjjU8LJqdNVvzx7rqXbtjHOZ.jpeg',NULL,NULL,NULL,NULL,1),(12,NULL,1,'пижамы','pizhamy','2018-07-24 08:07:23','2018-07-24 08:17:15','categories/July2018/qdewFnBsLVIdgVxhRFpopRNh6tSiSHulteH4xirE.jpeg',NULL,'пижамы','пижамы','пижамы',1);

/*Table structure for table `counters` */

DROP TABLE IF EXISTS `counters`;

CREATE TABLE `counters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `days_discount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `hide_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hours` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `counters` */

insert  into `counters`(`id`,`created_at`,`updated_at`,`category_id`,`image`,`days_discount`,`date`,`discount`,`hide_date`,`hours`) values (1,'2018-07-17 12:34:39','2018-07-25 11:26:11',3,'counters/July2018/YHlrKYYXerfymhkbp5OyyV1LNf7qQrqsUCr2RRY4.jpeg','2','2018-07-19 00:00:00',99,'2018-07-23',NULL),(2,'2018-07-19 07:39:02','2018-07-30 06:59:54',4,'counters/July2018/rKLIycbKGjqE4bPuxl8fEupirgx4hN2d8f00lQOy.jpeg','1','2018-07-22 00:00:00',55,'2018-07-27','20:00'),(3,'2018-07-24 08:18:54','2018-07-30 06:45:53',12,'counters/July2018/EcvY7VcKwobsGBtAW0pSNZM33sSdNwcOvKjhYDbX.jpeg','3','2018-07-24 00:00:00',11,'2018-07-27','17:00');

/*Table structure for table `data_rows` */

DROP TABLE IF EXISTS `data_rows`;

CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;

/*Data for the table `data_rows` */

insert  into `data_rows`(`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) values (1,1,'id','number','ID',1,0,0,0,0,0,'',1),(2,1,'author_id','text','Author',1,0,0,0,0,1,'',2),(3,1,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',3),(4,1,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',4),(5,1,'category_id','select_dropdown','Category',1,0,1,1,1,0,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',5),(6,1,'title','text','',1,1,1,1,1,1,'',6),(7,1,'excerpt','text_area','',1,0,1,1,1,1,'',7),(8,1,'body','rich_text_box','',1,0,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',8),(9,1,'image','image','Post Image',0,1,1,1,1,1,'{\"cropper\":[{\"name\":\"avatar\",\"size\":{\"name\":\"max\",\"width\":\"300\",\"height\":\"200\"},\"resize\":[{\"name\":\"norm\",\"width\":\"200\",\"height\":\"null\"},{\"name\":\"min\",\"width\":\"100\",\"height\":\"null\"}]}]}',9),(10,1,'meta_description','text_area','meta_description',1,0,1,1,1,1,'',10),(11,1,'meta_keywords','text_area','meta_keywords',1,0,1,1,1,1,'',11),(12,1,'created_at','timestamp','created_at',0,1,1,0,0,0,'',12),(13,1,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',13),(14,2,'id','number','id',1,0,0,0,0,0,NULL,1),(15,2,'author_id','select_dropdown','author_id',1,0,0,0,0,0,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(16,2,'title','text','Название страницы(Title)',1,1,1,1,1,1,NULL,3),(17,2,'excerpt','text_area','excerpt',0,0,0,0,0,0,NULL,4),(18,2,'body','rich_text_box','Текст',0,0,1,1,1,1,NULL,5),(19,2,'slug','text','Url',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"}}',6),(20,2,'meta_description','text','meta_description',0,0,1,1,1,1,NULL,7),(21,2,'meta_keywords','text','meta_keywords',0,0,1,1,1,1,NULL,8),(22,2,'status','select_dropdown','status',1,0,0,0,0,0,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(23,2,'created_at','timestamp','created_at',0,0,0,0,0,0,NULL,10),(24,2,'updated_at','timestamp','updated_at',0,0,0,0,0,0,NULL,11),(25,2,'image','image','image',0,0,0,0,0,0,NULL,12),(26,3,'id','number','id',1,0,0,0,0,0,'',1),(27,3,'name','text','name',1,1,1,1,1,1,'',2),(28,3,'email','text','email',1,1,1,1,1,1,'',3),(29,3,'password','password','password',0,0,0,1,1,0,'',4),(30,3,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"LaravelAdminPanel\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}',10),(31,3,'remember_token','text','remember_token',0,0,0,0,0,0,'',5),(32,3,'created_at','timestamp','created_at',0,1,1,0,0,0,'',6),(33,3,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(34,3,'avatar','image','avatar',0,1,1,1,1,1,'',8),(35,5,'id','number','id',1,0,0,0,0,0,'',1),(36,5,'name','text','name',1,1,1,1,1,1,'',2),(37,5,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(38,5,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(39,4,'id','number','id',1,1,0,0,0,0,NULL,1),(40,4,'parent_id','select_dropdown','parent_id',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(41,4,'order','text','Сортировка(не обязательно)',1,1,1,1,1,1,'{\"default\":1}',3),(42,4,'name','text','Название',1,1,1,1,1,1,NULL,4),(43,4,'slug','text','URL',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(44,4,'created_at','timestamp','created_at',0,0,0,0,0,0,NULL,6),(45,4,'updated_at','timestamp','updated_at',0,0,0,0,0,0,NULL,7),(46,6,'id','number','id',1,0,0,0,0,0,'',1),(47,6,'name','text','Name',1,1,1,1,1,1,'',2),(48,6,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(49,6,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(50,6,'display_name','text','Display Name',1,1,1,1,1,1,'',5),(51,1,'seo_title','text','seo_title',0,1,1,1,1,1,'',14),(52,1,'featured','checkbox','featured',1,1,1,1,1,1,'',15),(53,3,'role_id','text','role_id',1,1,1,1,1,1,'',9),(54,7,'id','number','id',1,0,0,0,0,0,'',1),(55,7,'data_type_id','select_dropdown','Data Type',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"display_name_singular\"}}',2),(56,7,'options','code_editor','Options',1,0,1,1,1,1,'{\"formfields_custom\":\"json_editor\"}',3),(57,8,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(58,8,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,2),(59,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,3),(60,8,'category_id','select_dropdown','Категория',0,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',4),(61,8,'image','image','Изображение',0,1,1,1,1,1,'{\"cropper\":[{\"name\":\"image\",\"size\":{\"name\":\"norm\",\"width\":\"600\",\"height\":\"315\"}}]}',5),(62,8,'days_discount','text','Через сколько дней(4)',0,1,1,1,1,1,NULL,6),(63,8,'date','date','Дата начала',0,1,1,1,1,1,'{\"format\":\"%Y-%m-%d\"}',7),(64,4,'image','image','Изображение',0,1,1,1,1,1,'{\"cropper\":[{\"name\":\"image\",\"size\":{\"name\":\"norm\",\"width\":\"345\",\"height\":\"409\"}}]}',8),(65,4,'bigImage','image','Изображение категории(большое)',0,0,0,0,0,0,'{\"cropper\":[{\"name\":\"big\",\"size\":{\"name\":\"big\",\"width\":\"345\",\"height\":\"409\"}}]}',9),(66,9,'id','checkbox','Id',1,0,0,0,0,0,NULL,2),(67,9,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(68,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(69,9,'name','text','Название',0,1,1,1,1,1,NULL,5),(70,9,'category_id','select_dropdown','Категория',0,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\",\"modelRelationName\":\"LaravelAdminPanel\\\\Models\\\\Category\"}}',1),(71,9,'type_id','select_multiple','Фильтр',0,0,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',9),(72,9,'image','image','Изображение',0,1,1,1,1,1,'{\"cropper\":[{\"name\":\"image\",\"size\":{\"name\":\"norm\",\"width\":\"270\",\"height\":\"356\"}}]}',6),(73,9,'discount','text','Скидка',0,0,0,0,0,0,NULL,7),(74,10,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(75,10,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,2),(76,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,3),(77,10,'name','text','Название',0,1,1,1,1,1,NULL,4),(78,10,'category_id','select_dropdown','Категория',0,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\",\"modelRelationName\":\"LaravelAdminPanel\\\\Models\\\\Category\"}}',5),(79,11,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(80,11,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,2),(81,11,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,3),(82,11,'name','text','Название',0,1,1,1,1,1,NULL,4),(83,11,'price','text','Новая цена',0,1,1,1,1,1,NULL,5),(84,11,'product_id','select_dropdown','Идентификатор товара',0,0,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\",\"modelRelationName\":\"App\\\\Product\"}}',6),(85,9,'description','rich_text_box','Описание',0,0,1,1,1,1,NULL,10),(86,9,'images','multiple_images','Несколько изображений',0,0,1,1,1,1,NULL,11),(87,9,'parametr','text','Параметр',0,0,1,1,1,1,NULL,8),(88,9,'type_view_price','select_dropdown','Тип отображение скидки',0,0,1,1,1,1,'{\"options\":{\"0\":\"Отображение скидки\",\"1\":\"Отображение разницы в цене\"}}',12),(89,12,'id','checkbox','Id',1,1,0,0,0,0,NULL,1),(90,12,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,2),(91,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,3),(92,12,'name','text','Название',0,1,1,1,1,1,NULL,4),(93,12,'product_id','select_dropdown','Продукт',0,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\",\"modelRelationName\":\"LaravelAdminPanel\\\\Models\\\\Category\"}}',5),(94,12,'value','text','Значение',0,1,1,1,1,1,NULL,6),(95,13,'id','checkbox','Id',1,1,0,0,0,0,NULL,1),(96,13,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,2),(97,13,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,3),(98,13,'name','text','Имя покупателя',0,1,1,1,1,1,NULL,4),(99,13,'phone','checkbox','Телефон',0,1,1,1,1,1,NULL,5),(100,13,'order','checkbox','Заказ',0,1,1,1,1,1,NULL,6),(101,13,'fullPrice','checkbox','Полная цена',0,1,1,1,1,1,NULL,7),(102,9,'other_products','select_multiple','Другие товары',0,0,0,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',13),(103,14,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(104,14,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,2),(105,14,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,3),(106,14,'phone','checkbox','Телефон',0,1,1,1,1,1,NULL,4),(107,14,'category','checkbox','Категория',0,1,1,1,1,1,NULL,5),(108,14,'whom','checkbox','Кому',0,1,1,1,1,1,NULL,6),(109,14,'reason','checkbox','Повод',0,1,1,1,1,1,NULL,7),(110,14,'price','checkbox','Бюджет',0,1,1,1,1,1,NULL,8),(111,14,'growth','checkbox','Рост',0,1,1,1,1,1,NULL,9),(112,8,'discount','text','Процент скидки',0,1,1,1,1,1,NULL,9),(119,16,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(120,16,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,2),(121,16,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,3),(122,16,'days_discount','text','Длительность скидки',0,1,1,1,1,1,NULL,4),(123,16,'date','date','Дата начала',0,1,1,1,1,1,'{\"format\":\"%Y-%m-%d\"}',5),(124,16,'discount','text','Процент скидки',0,1,1,1,1,1,NULL,6),(125,16,'image','image','Изображение',0,1,1,1,1,1,'{\"cropper\":[{\"name\":\"image\",\"size\":{\"name\":\"norm\",\"width\":\"600\",\"height\":\"315\"}}]}',7),(126,4,'meta_title','text','Title',0,1,1,1,1,1,NULL,10),(127,4,'meta_keywords','text_area','Ключевые слова',0,1,1,1,1,1,NULL,11),(128,4,'meta_description','text_area','Мета описание',0,1,1,1,1,1,NULL,12),(129,11,'price_old','text','Старая цена',0,1,1,1,1,1,NULL,7),(130,11,'difference_price','text','Разница в цене',0,0,1,1,1,1,NULL,8),(131,9,'product_id_excel','text','Идентификатор',0,0,1,1,1,1,NULL,14),(132,8,'hide_date','checkbox',NULL,0,0,0,0,0,0,NULL,10),(133,8,'hours','text','Время сброса(пример 04:20)',0,1,1,1,1,1,NULL,8),(134,16,'hours','text','Время сброса(пример 04:20)',0,1,1,1,1,1,NULL,8),(135,16,'hide_date','checkbox',NULL,0,0,0,0,0,0,NULL,9),(136,9,'is_active','select_dropdown','Есть ли товар в наличии',0,0,1,1,1,1,'{\"options\":{\"0\":\"Нету\",\"1\":\"Есть\"}}',15),(137,9,'product_hasmany_price_relationship','relationship','Динам. параметр',0,0,1,1,1,1,'{\"model\":\"App\\\\Price\",\"table\":\"prices\",\"type\":\"hasMany\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"applications\",\"pivot\":\"0\",\"details\":\"{\\\"list\\\":\\\"datatable\\\"}\"}',17),(138,9,'price_id','checkbox',NULL,0,0,0,0,0,0,NULL,16),(139,9,'order','text','Сортировка(не обязательно)',0,0,1,1,1,1,NULL,18),(140,4,'is_show_dynamic','select_dropdown','Показывать ли динамический параметр?',0,0,1,1,1,1,'{\"options\":{\"0\":\"Не показывать\",\"1\":\"Показывать\"}}',13),(141,11,'image','image','Изображение',0,0,1,1,1,1,NULL,9);

/*Table structure for table `data_types` */

DROP TABLE IF EXISTS `data_types`;

CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `pagination` varchar(10) NOT NULL DEFAULT 'js',
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `data_types` */

insert  into `data_types`(`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`details`,`generate_permissions`,`pagination`,`server_side`,`created_at`,`updated_at`) values (1,'posts','posts','Post','Posts','admin-news','LaravelAdminPanel\\Models\\Post','LaravelAdminPanel\\Policies\\PostPolicy','','',NULL,1,'js',0,'2018-07-17 11:51:09','2018-07-17 11:51:09'),(2,'pages','pages','Page','Pages','admin-file-text','LaravelAdminPanel\\Models\\Page',NULL,NULL,NULL,NULL,1,'js',0,'2018-07-17 11:51:09','2018-07-17 13:30:54'),(3,'users','users','User','Users','admin-person','LaravelAdminPanel\\Models\\User','LaravelAdminPanel\\Policies\\UserPolicy','','',NULL,1,'js',0,'2018-07-17 11:51:09','2018-07-17 11:51:09'),(4,'categories','categories','Category','Categories','admin-categories','LaravelAdminPanel\\Models\\Category',NULL,NULL,NULL,NULL,1,'js',0,'2018-07-17 11:51:09','2018-07-17 12:21:56'),(5,'menus','menus','Menu','Menus','admin-list','LaravelAdminPanel\\Models\\Menu',NULL,'','',NULL,1,'js',0,'2018-07-17 11:51:09','2018-07-17 11:51:09'),(6,'roles','roles','Role','Roles','admin-lock','LaravelAdminPanel\\Models\\Role',NULL,'','',NULL,1,'js',0,'2018-07-17 11:51:09','2018-07-17 11:51:09'),(7,'form_designer','form-designer','Form Designer','Forms Designer','designer-list','LaravelAdminPanel\\Models\\FormDesigner',NULL,'','',NULL,1,'js',0,'2018-07-17 11:51:09','2018-07-17 11:51:09'),(8,'counters','counters','Counter','Counters',NULL,'App\\Counter',NULL,NULL,NULL,NULL,1,'js',0,'2018-07-17 12:07:03','2018-07-17 12:07:03'),(9,'products','products','Product','Products',NULL,'App\\Product',NULL,NULL,NULL,NULL,1,'ajax',0,'2018-07-17 14:04:12','2018-07-22 18:37:33'),(10,'types','types','Type','Types',NULL,'App\\Type',NULL,NULL,NULL,NULL,1,'ajax',0,'2018-07-17 14:08:29','2018-07-24 07:45:49'),(11,'prices','prices','Price','Prices',NULL,'App\\Price',NULL,NULL,NULL,NULL,1,'ajax',0,'2018-07-17 14:24:10','2018-07-22 18:42:54'),(12,'product_parameters','product-parameters','Product Parameter','Product Parameters',NULL,'App\\ProductParameter',NULL,NULL,NULL,NULL,1,'ajax',0,'2018-07-18 08:21:30','2018-07-22 19:17:04'),(13,'orders','orders','Order','Orders',NULL,'App\\Order',NULL,NULL,NULL,NULL,1,'js',0,'2018-07-18 08:50:24','2018-07-18 08:50:24'),(14,'applications','applications','Application','Applications',NULL,'App\\Application',NULL,NULL,NULL,NULL,1,'js',0,'2018-07-18 11:10:23','2018-07-18 11:10:23'),(16,'home_counters','home-counters','Home Counter','Home Counters',NULL,'App\\HomeCounter',NULL,NULL,NULL,NULL,1,'js',0,'2018-07-19 08:34:44','2018-07-19 08:34:44');

/*Table structure for table `form_designer` */

DROP TABLE IF EXISTS `form_designer`;

CREATE TABLE `form_designer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned DEFAULT NULL,
  `options` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_designer_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `form_designer_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `form_designer` */

insert  into `form_designer`(`id`,`data_type_id`,`options`) values (1,8,'[{\"class\":\"col-md-7\",\"panels\":[{\"class\":\"panel\",\"title\":\"Основная информация\",\"fields\":[\"category_id\",\"days_discount\",\"discount\",\"date\",\"hours\"]}]},{\"class\":\"col-md-5\",\"panels\":[{\"class\":\"panel panel panel-bordered panel-warning\",\"title\":\"Фотографии\",\"fields\":[\"image\"]}]}]'),(2,4,'[{\"class\":\"col-md-7\",\"panels\":[{\"class\":\"panel\",\"title\":\"Основная информация\",\"fields\":[\"parent_id\",\"order\",\"name\",\"slug\",\"meta_title\",\"meta_keywords\",\"meta_description\",\"is_show_dynamic\"]}]},{\"class\":\"col-md-5\",\"panels\":[{\"class\":\"panel panel panel-bordered panel-warning\",\"title\":\"Фотографии\",\"fields\":[\"image\"]}]}]'),(3,9,'[{\"class\":\"col-md-7\",\"panels\":[{\"class\":\"panel\",\"title\":\"Основная информация\",\"fields\":[\"name\",\"category_id\",\"type_id\",\"discount\",\"description\",\"images\",\"parametr\",\"type_view_price\",\"other_products\",\"is_active\",\"product_id_excel\",\"order\"]}]},{\"class\":\"col-md-5\",\"panels\":[{\"class\":\"panel panel panel-bordered panel-warning\",\"title\":\"Фотографии\",\"fields\":[\"image\"]}]}]'),(4,16,'[{\"class\":\"col-md-7\",\"panels\":[{\"class\":\"panel\",\"title\":\"Основная информация\",\"fields\":[\"days_discount\",\"discount\",\"date\",\"hours\"]}]},{\"class\":\"col-md-5\",\"panels\":[{\"class\":\"panel panel panel-bordered panel-warning\",\"title\":\"Фотографии\",\"fields\":[\"image\"]}]}]');

/*Table structure for table `home_counters` */

DROP TABLE IF EXISTS `home_counters`;

CREATE TABLE `home_counters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `days_discount` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hours` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hide_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `home_counters` */

insert  into `home_counters`(`id`,`created_at`,`updated_at`,`days_discount`,`date`,`discount`,`image`,`hours`,`hide_date`) values (1,'2018-07-19 08:06:57','2018-07-30 06:45:49','7','2018-07-22 00:00:00',99,'home-counters/July2018/gkjogKZ0ZejmQtAvLa4L8Ybwjzdc6FZDsjvYP2XS.jpeg','20:00','2018-07-29');

/*Table structure for table `menu_items` */

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `menu_items` */

insert  into `menu_items`(`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) values (1,1,'Dashboard','','_self','admin-boat',NULL,NULL,1,'2018-07-17 11:51:10','2018-07-17 11:51:10','admin.dashboard',NULL),(5,1,'Категории','','_self','admin-categories','#000000',NULL,3,'2018-07-17 11:51:11','2018-07-17 14:10:04','admin.categories.index','null'),(6,1,'Страницы','','_self','admin-file-text','#000000',NULL,2,'2018-07-17 11:51:11','2018-07-19 08:40:45','admin.pages.index','null'),(8,1,'Настройки разработчика','','_self','admin-tools','#000000',NULL,13,'2018-07-17 11:51:11','2018-07-24 13:00:08',NULL,''),(9,1,'Menu Builder','','_self','admin-list',NULL,8,1,'2018-07-17 11:51:11','2018-07-17 14:10:04','admin.menus.index',NULL),(10,1,'Form Designer','','_self','admin-wand',NULL,8,2,'2018-07-17 11:51:11','2018-07-17 14:10:04','admin.form-designer.index',NULL),(11,1,'Database','','_self','admin-data',NULL,8,3,'2018-07-17 11:51:11','2018-07-17 14:10:04','admin.database.index',NULL),(12,1,'Compass','/admin/compass','_self','admin-compass',NULL,8,4,'2018-07-17 11:51:11','2018-07-17 14:10:04',NULL,NULL),(13,1,'Настройки сайта','','_self','admin-settings','#000000',NULL,14,'2018-07-17 11:51:11','2018-07-24 13:00:08','admin.settings.index','null'),(14,1,'Счетчики категорий','','_self',NULL,'#000000',NULL,7,'2018-07-17 12:07:41','2018-07-17 14:25:24','admin.counters.index',NULL),(15,1,'Товары','','_self',NULL,'#000000',NULL,5,'2018-07-17 14:09:37','2018-07-17 14:10:06','admin.products.index',NULL),(16,1,'Фильтры','','_self',NULL,'#000000',NULL,4,'2018-07-17 14:09:48','2018-07-24 07:44:58','admin.types.index','null'),(17,1,'Цены','','_self',NULL,'#000000',NULL,6,'2018-07-17 14:25:20','2018-07-17 14:25:24','admin.prices.index',NULL),(18,1,'Параметры продуктов','','_self',NULL,'#000000',NULL,8,'2018-07-18 08:23:33','2018-07-18 08:23:36','admin.product-parameters.index',NULL),(19,1,'Заказы','','_self',NULL,'#000000',NULL,9,'2018-07-18 08:50:55','2018-07-18 08:51:00','admin.orders.index',NULL),(20,1,'Заявки','','_self',NULL,'#000000',NULL,11,'2018-07-18 11:11:20','2018-07-24 13:00:08','admin.applications.index',NULL),(21,1,'Счетчик главной','','_self',NULL,'#000000',NULL,12,'2018-07-19 08:05:35','2018-07-24 13:00:08','admin.home-counters.index','null'),(22,1,'Медиа','','_self',NULL,'#000000',NULL,10,'2018-07-24 13:00:04','2018-07-24 13:00:08','admin.media.index',NULL);

/*Table structure for table `menus` */

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `menus` */

insert  into `menus`(`id`,`name`,`created_at`,`updated_at`) values (1,'admin','2018-07-17 11:51:10','2018-07-17 11:51:10');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_admin_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_01_01_000000_create_pages_table',1),(6,'2016_01_01_000000_create_posts_table',1),(7,'2016_02_15_204651_create_categories_table',1),(8,'2016_05_19_173453_create_menu_table',1),(9,'2016_10_21_190000_create_roles_table',1),(10,'2016_10_21_190000_create_settings_table',1),(11,'2016_11_30_135954_create_permission_table',1),(12,'2016_11_30_141208_create_permission_role_table',1),(13,'2016_12_26_201236_data_types__add__server_side',1),(14,'2017_01_13_000000_add_route_to_menu_items_table',1),(15,'2017_01_14_005015_create_translations_table',1),(16,'2017_01_15_000000_add_permission_group_id_to_permissions_table',1),(17,'2017_01_15_000000_create_permission_groups_table',1),(18,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(19,'2017_03_06_000000_add_controller_to_data_types_table',1),(20,'2017_04_11_000000_alter_post_nullable_fields_table',1),(21,'2017_04_21_000000_add_order_to_data_rows_table',1),(22,'2017_07_05_210000_add_policyname_to_data_types_table',1),(23,'2017_08_05_000000_add_group_to_settings_table',1),(24,'2018_04_05_200325_add_details_to_data_types_table',1),(25,'2018_04_09_052104_create_form_designer_table',1),(26,'2018_05_22_114810_add_pagination_to_data_types_table',1),(27,'2018_06_06_074941_alter_data_types_table_name_not_unique',1),(28,'2018_06_06_164024_alter_permissions_table',1);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullPrice` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `orders` */

insert  into `orders`(`id`,`created_at`,`updated_at`,`name`,`phone`,`order`,`fullPrice`) values (2,'2018-07-18 09:34:17','2018-07-18 09:34:17','Влад','+7 (234)-242-34-23','[{\"productId\":\"1\",\"price\":1600,\"discount\":25}]',1200),(3,'2018-07-18 12:36:26','2018-07-18 12:36:26',NULL,'+7 (423)-423-42-34','[{\"productId\":1,\"price\":1600,\"discount\":25,\"count\":1}]',1200),(4,'2018-07-19 07:19:13','2018-07-19 07:19:13',NULL,NULL,'[{\"productId\":1,\"price\":1600,\"discount\":25,\"count\":1}]',1200),(5,'2018-07-19 09:47:08','2018-07-19 09:47:08','Johny','+7 (345)-435-34-54','[{\"productId\":\"1\",\"price\":500,\"discount\":25,\"count\":1}]',375),(6,'2018-07-19 15:25:47','2018-07-19 15:25:47','Новые','+7 (455)-255-55-55','[{\"productId\":\"1\",\"price\":500,\"discount\":25,\"count\":1}]',375),(7,'2018-07-20 08:48:56','2018-07-20 08:48:56',NULL,'+7 (111)-122-22-22',NULL,NULL),(8,'2018-07-21 07:18:35','2018-07-21 07:18:35',NULL,'+7 (555)-566-66-66','[{\"productId\":1,\"price\":500,\"discount\":25,\"count\":1},{\"productId\":3,\"price\":1600,\"discount\":5,\"count\":1}]',2100),(9,'2018-07-21 07:19:29','2018-07-21 07:19:29',NULL,'+7 (454)-545-45-45','[{\"productId\":1,\"price\":500,\"discount\":25,\"count\":1},{\"productId\":3,\"price\":1600,\"discount\":5,\"count\":1}]',2100),(10,'2018-07-23 06:59:12','2018-07-23 06:59:12',NULL,'+7 (345)-345-43-54','[{\"productId\":1,\"price\":500,\"discount\":25,\"count\":1}]',500),(11,'2018-07-23 13:36:41','2018-07-23 13:36:41','ппапапап','+7 (123)-123-12-31','[{\"productId\":\"9\",\"price\":1000,\"discount\":45,\"count\":1}]',1000),(12,'2018-07-23 13:37:42','2018-07-23 13:37:42','ппапапап','+7 (123)-123-12-31','[{\"productId\":\"9\",\"price\":1000,\"discount\":45,\"count\":1}]',1000),(13,'2018-07-23 13:39:14','2018-07-23 13:39:14',NULL,'+7 (666)-666-66-66','[{\"productId\":9,\"price\":7300,\"discount\":45,\"count\":1},{\"productId\":9,\"price\":1000,\"discount\":45,\"count\":1}]',8300),(14,'2018-07-23 13:40:59','2018-07-23 13:40:59',NULL,'+7 (123)-123-12-31','[{\"productId\":9,\"price\":7300,\"discount\":45,\"count\":1},{\"productId\":9,\"price\":1000,\"discount\":45,\"count\":1}]',8300),(15,'2018-07-23 14:27:48','2018-07-23 14:27:48','Влад','+7 (345)-345-43-54','[{\"productId\":\"10\",\"price\":3890,\"discount\":null,\"count\":1}]',3890),(16,'2018-07-23 14:30:40','2018-07-23 14:30:40','Влад','+7 (343)-434-34-34','[{\"productId\":\"10\",\"price\":3890,\"discount\":null,\"count\":1}]',3890),(17,'2018-07-24 07:17:41','2018-07-24 07:17:41','Влад','+7 (543)-543-54-35','[{\"productId\":\"1\",\"price\":500,\"discount\":25,\"count\":1}]',500),(18,'2018-07-24 07:33:48','2018-07-24 07:33:48',NULL,'+7 (435)-435-43-54','[{\"productId\":1,\"price\":500,\"discount\":25,\"count\":1}]',500),(19,'2018-07-24 08:17:46','2018-07-24 08:17:46',NULL,'+7 (656)-565-66-55','[{\"productId\":\"155\",\"price\":1980,\"discount\":null,\"count\":1}]',1980),(20,'2018-07-26 11:39:05','2018-07-26 11:39:05',NULL,'+7 (555)-555-55-55','[{\"productId\":265,\"price\":1980,\"discount\":null,\"count\":1},{\"productId\":266,\"price\":1980,\"discount\":null,\"count\":1},{\"productId\":267,\"price\":1980,\"discount\":null,\"count\":1},{\"productId\":268,\"price\":1980,\"discount\":null,\"count\":1}]',7920),(21,'2018-07-26 11:45:45','2018-07-26 11:45:45',NULL,'+7 (343)-434-34-34','[{\"productId\":265,\"price\":1980,\"discount\":null,\"count\":1}]',1980),(22,'2018-07-26 11:50:40','2018-07-26 11:50:40','авыаыява34','+7 (343)-434-34-34','[{\"productId\":\"265\",\"price\":1980,\"discount\":null,\"count\":1}]',1980),(23,'2018-07-26 11:58:14','2018-07-26 11:58:14',NULL,'+7 (566)-666-66-66','[{\"productId\":256,\"price\":3890,\"discount\":null,\"count\":1},{\"productId\":257,\"price\":5800,\"discount\":null,\"count\":1},{\"productId\":258,\"price\":7890,\"discount\":null,\"count\":1}]',17580),(24,'2018-07-26 14:05:45','2018-07-26 14:05:45','324234','+7 (234)-234-23-42','[{\"productId\":\"259\",\"price\":980,\"discount\":null,\"count\":1}]',980),(25,'2018-07-26 14:05:50','2018-07-26 14:05:50','test','+7 (111)-111-11-11','[{\"productId\":\"259\",\"price\":980,\"discount\":null,\"count\":1}]',980),(26,'2018-07-26 14:05:52','2018-07-26 14:05:52','test','+7 (111)-111-11-11','[{\"productId\":\"259\",\"price\":980,\"discount\":null,\"count\":1}]',980),(27,'2018-07-26 14:17:19','2018-07-26 14:17:19',NULL,'+7 (345)-435-34-54','[{\"productId\":265,\"price\":1980,\"discount\":null,\"count\":1},{\"productId\":266,\"price\":1980,\"discount\":null,\"count\":1}]',3960),(28,'2018-07-27 05:54:25','2018-07-27 05:54:25',NULL,'+7 (234)-234-23-42','[{\"productId\":265,\"price\":1980,\"discount\":null,\"count\":1}]',1980),(29,'2018-07-27 05:54:25','2018-07-27 05:54:25',NULL,'+7 (234)-234-23-42','[{\"productId\":265,\"price\":1980,\"discount\":null,\"count\":1}]',1980),(30,'2018-07-27 05:58:06','2018-07-27 05:58:06','Влад','+7 (342)-342-34-23','[{\"productId\":\"265\",\"price\":1980,\"discount\":null,\"count\":1}]',1980),(31,'2018-07-27 06:55:17','2018-07-27 06:55:17',NULL,'+7 (345)-435-43-54','[{\"productId\":265,\"price\":1980,\"discount\":null,\"count\":1}]',1980),(32,'2018-07-30 07:03:19','2018-07-30 07:03:19','Влад','+7 (423)-423-42-34','[{\"productId\":\"256\",\"price\":3890,\"discount\":null,\"count\":1}]',3890),(33,'2018-07-30 08:13:00','2018-07-30 08:13:00','Влад','+7 (543)-454-35-43','[{\"productId\":\"256\",\"price\":3890,\"discount\":null,\"count\":1}]',3890),(34,'2018-07-30 11:40:10','2018-07-30 11:40:10','Влад','+7 (342)-423-42-34','[{\"productId\":\"256\",\"price\":3890,\"discount\":null,\"count\":1}]',3890),(35,'2018-07-30 11:40:46','2018-07-30 11:40:46','Влад','+7 (234)-234-23-42','[{\"productId\":\"258\",\"price\":7890,\"discount\":null,\"count\":1}]',7890),(36,'2018-07-30 11:44:19','2018-07-30 11:44:19','Влад','+7 (454)-353-45-34','[{\"productId\":\"256\",\"price\":3890,\"discount\":null,\"count\":1}]',3890),(37,'2018-07-30 11:44:34','2018-07-30 11:44:34','Влад','+7 (345)-435-43-54','[{\"productId\":\"258\",\"price\":7890,\"discount\":null,\"count\":1}]',7890),(38,'2018-07-30 11:45:58','2018-07-30 11:45:58','Влад','+7 (453)-454-35-43','[{\"productId\":\"259\",\"price\":980,\"discount\":null,\"count\":1}]',980),(39,'2018-07-30 11:47:03','2018-07-30 11:47:03','Влад','+7 (435)-435-43-54','[{\"productId\":\"259\",\"price\":980,\"discount\":null,\"count\":1}]',980),(40,'2018-07-30 11:49:46','2018-07-30 11:49:46','Влад','+7 (435)-435-43-54','[{\"productId\":\"256\",\"price\":3890,\"discount\":null,\"count\":1}]',3890),(41,'2018-07-30 11:50:01','2018-07-30 11:50:01','Влад','+7 (354)-354-35-43','[{\"productId\":\"257\",\"price\":5800,\"discount\":null,\"count\":1}]',5800),(42,'2018-07-30 11:54:29','2018-07-30 11:54:29','Влад','+7 (435)-435-43-5_','[{\"productId\":\"258\",\"price\":7890,\"discount\":null,\"count\":1}]',7890),(43,'2018-07-30 12:04:37','2018-07-30 12:04:37','Влад','+7 (435)-435-34-54','[{\"productId\":\"256\",\"price\":3890,\"discount\":null,\"count\":1}]',3890),(44,'2018-07-30 12:05:06','2018-07-30 12:05:06','345','+7 (543)-543-54-35','[{\"productId\":\"256\",\"price\":3890,\"discount\":null,\"count\":1}]',3890),(45,'2018-07-30 12:05:24','2018-07-30 12:05:24','Влад','+7 (345)-345-34-54','[{\"productId\":\"256\",\"price\":3890,\"discount\":null,\"count\":1}]',3890),(46,'2018-07-30 12:07:07','2018-07-30 12:07:07','Влад','+7 (345)-435-43-54','[{\"productId\":\"256\",\"price\":3890,\"discount\":null,\"count\":1}]',3890),(47,'2018-07-30 12:07:17','2018-07-30 12:07:17','Влад','+7 (534)-543-54-35','[{\"productId\":\"257\",\"price\":5800,\"discount\":null,\"count\":1}]',5800);

/*Table structure for table `pages` */

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `pages` */

insert  into `pages`(`id`,`author_id`,`title`,`excerpt`,`body`,`image`,`slug`,`meta_description`,`meta_keywords`,`status`,`created_at`,`updated_at`) values (1,1,'Контакты',NULL,NULL,NULL,'kontakty',NULL,NULL,'INACTIVE','2018-07-17 13:31:21','2018-07-17 13:31:21'),(2,1,'Доставка',NULL,NULL,NULL,'dostavka',NULL,NULL,'INACTIVE','2018-07-17 13:31:30','2018-07-17 13:31:30'),(3,1,'Оплата',NULL,'<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Source Sans Pro\';\">Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Source Sans Pro\';\">По своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.</p>',NULL,'oplata',NULL,NULL,'INACTIVE','2018-07-17 13:31:37','2018-07-18 11:01:40'),(4,1,'Блог',NULL,NULL,NULL,'blog',NULL,NULL,'INACTIVE','2018-07-17 13:31:44','2018-07-17 13:31:44'),(5,1,'Отзывы',NULL,NULL,NULL,'otzyvy',NULL,NULL,'INACTIVE','2018-07-17 13:31:52','2018-07-17 13:31:52'),(6,1,'Главная',NULL,NULL,NULL,'/','dfgdfg','dfgdfg','INACTIVE','2018-07-17 13:35:10','2018-07-17 13:35:10');

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `password_resets` */

/*Table structure for table `permission_groups` */

DROP TABLE IF EXISTS `permission_groups`;

CREATE TABLE `permission_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `permission_groups` */

/*Table structure for table `permission_role` */

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `permission_role` */

insert  into `permission_role`(`permission_id`,`role_id`) values (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(74,1),(75,1),(76,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1);

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`key`,`slug`,`created_at`,`updated_at`,`permission_group_id`) values (1,'browse_admin',NULL,'2018-07-17 11:51:11','2018-07-17 11:51:11',NULL),(2,'browse_database',NULL,'2018-07-17 11:51:11','2018-07-17 11:51:11',NULL),(3,'browse_media',NULL,'2018-07-17 11:51:11','2018-07-17 11:51:11',NULL),(4,'browse_compass',NULL,'2018-07-17 11:51:11','2018-07-17 11:51:11',NULL),(5,'browse_menus','menus','2018-07-17 11:51:11','2018-07-17 11:51:11',NULL),(6,'read_menus','menus','2018-07-17 11:51:11','2018-07-17 11:51:11',NULL),(7,'edit_menus','menus','2018-07-17 11:51:11','2018-07-17 11:51:11',NULL),(8,'add_menus','menus','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(9,'delete_menus','menus','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(10,'browse_pages','pages','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(11,'read_pages','pages','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(12,'edit_pages','pages','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(13,'add_pages','pages','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(14,'delete_pages','pages','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(15,'browse_roles','roles','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(16,'read_roles','roles','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(17,'edit_roles','roles','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(18,'add_roles','roles','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(19,'delete_roles','roles','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(20,'browse_users','users','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(21,'read_users','users','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(22,'edit_users','users','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(23,'add_users','users','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(24,'delete_users','users','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(25,'browse_posts','posts','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(26,'read_posts','posts','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(27,'edit_posts','posts','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(28,'add_posts','posts','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(29,'delete_posts','posts','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(30,'browse_categories','categories','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(31,'read_categories','categories','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(32,'edit_categories','categories','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(33,'add_categories','categories','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(34,'delete_categories','categories','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(35,'browse_settings','settings','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(36,'read_settings','settings','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(37,'edit_settings','settings','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(38,'add_settings','settings','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(39,'delete_settings','settings','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(40,'browse_form-designer','form-designer','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(41,'read_form-designer','form-designer','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(42,'edit_form-designer','form-designer','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(43,'add_form-designer','form-designer','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(44,'delete_form-designer','form-designer','2018-07-17 11:51:12','2018-07-17 11:51:12',NULL),(45,'browse_counters','counters','2018-07-17 12:07:03','2018-07-17 12:07:03',NULL),(46,'read_counters','counters','2018-07-17 12:07:03','2018-07-17 12:07:03',NULL),(47,'edit_counters','counters','2018-07-17 12:07:03','2018-07-17 12:07:03',NULL),(48,'add_counters','counters','2018-07-17 12:07:03','2018-07-17 12:07:03',NULL),(49,'delete_counters','counters','2018-07-17 12:07:03','2018-07-17 12:07:03',NULL),(50,'browse_products','products','2018-07-17 14:04:12','2018-07-17 14:04:12',NULL),(51,'read_products','products','2018-07-17 14:04:12','2018-07-17 14:04:12',NULL),(52,'edit_products','products','2018-07-17 14:04:12','2018-07-17 14:04:12',NULL),(53,'add_products','products','2018-07-17 14:04:12','2018-07-17 14:04:12',NULL),(54,'delete_products','products','2018-07-17 14:04:12','2018-07-17 14:04:12',NULL),(55,'browse_types','types','2018-07-17 14:08:29','2018-07-17 14:08:29',NULL),(56,'read_types','types','2018-07-17 14:08:29','2018-07-17 14:08:29',NULL),(57,'edit_types','types','2018-07-17 14:08:29','2018-07-17 14:08:29',NULL),(58,'add_types','types','2018-07-17 14:08:29','2018-07-17 14:08:29',NULL),(59,'delete_types','types','2018-07-17 14:08:29','2018-07-17 14:08:29',NULL),(60,'browse_prices','prices','2018-07-17 14:24:10','2018-07-17 14:24:10',NULL),(61,'read_prices','prices','2018-07-17 14:24:10','2018-07-17 14:24:10',NULL),(62,'edit_prices','prices','2018-07-17 14:24:10','2018-07-17 14:24:10',NULL),(63,'add_prices','prices','2018-07-17 14:24:10','2018-07-17 14:24:10',NULL),(64,'delete_prices','prices','2018-07-17 14:24:10','2018-07-17 14:24:10',NULL),(65,'browse_product-parameters','product-parameters','2018-07-18 08:21:30','2018-07-18 08:21:30',NULL),(66,'read_product-parameters','product-parameters','2018-07-18 08:21:30','2018-07-18 08:21:30',NULL),(67,'edit_product-parameters','product-parameters','2018-07-18 08:21:30','2018-07-18 08:21:30',NULL),(68,'add_product-parameters','product-parameters','2018-07-18 08:21:30','2018-07-18 08:21:30',NULL),(69,'delete_product-parameters','product-parameters','2018-07-18 08:21:30','2018-07-18 08:21:30',NULL),(70,'browse_orders','orders','2018-07-18 08:50:24','2018-07-18 08:50:24',NULL),(71,'read_orders','orders','2018-07-18 08:50:24','2018-07-18 08:50:24',NULL),(72,'edit_orders','orders','2018-07-18 08:50:24','2018-07-18 08:50:24',NULL),(73,'add_orders','orders','2018-07-18 08:50:24','2018-07-18 08:50:24',NULL),(74,'delete_orders','orders','2018-07-18 08:50:24','2018-07-18 08:50:24',NULL),(75,'browse_applications','applications','2018-07-18 11:10:23','2018-07-18 11:10:23',NULL),(76,'read_applications','applications','2018-07-18 11:10:23','2018-07-18 11:10:23',NULL),(77,'edit_applications','applications','2018-07-18 11:10:23','2018-07-18 11:10:23',NULL),(78,'add_applications','applications','2018-07-18 11:10:23','2018-07-18 11:10:23',NULL),(79,'delete_applications','applications','2018-07-18 11:10:23','2018-07-18 11:10:23',NULL),(80,'browse_home-counter','home-counter','2018-07-19 08:04:51','2018-07-19 08:04:51',NULL),(81,'read_home-counter','home-counter','2018-07-19 08:04:51','2018-07-19 08:04:51',NULL),(82,'edit_home-counter','home-counter','2018-07-19 08:04:51','2018-07-19 08:04:51',NULL),(83,'add_home-counter','home-counter','2018-07-19 08:04:51','2018-07-19 08:04:51',NULL),(84,'delete_home-counter','home-counter','2018-07-19 08:04:51','2018-07-19 08:04:51',NULL),(85,'browse_home-counters','home-counters','2018-07-19 08:34:44','2018-07-19 08:34:44',NULL),(86,'read_home-counters','home-counters','2018-07-19 08:34:44','2018-07-19 08:34:44',NULL),(87,'edit_home-counters','home-counters','2018-07-19 08:34:44','2018-07-19 08:34:44',NULL),(88,'add_home-counters','home-counters','2018-07-19 08:34:44','2018-07-19 08:34:44',NULL),(89,'delete_home-counters','home-counters','2018-07-19 08:34:44','2018-07-19 08:34:44',NULL);

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `posts` */

/*Table structure for table `prices` */

DROP TABLE IF EXISTS `prices`;

CREATE TABLE `prices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price_old` int(11) DEFAULT NULL,
  `difference_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=485 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `prices` */

insert  into `prices`(`id`,`created_at`,`updated_at`,`name`,`price`,`product_id`,`price_old`,`difference_price`,`image`) values (437,'2018-07-27 13:18:39','2018-07-27 13:18:39','',3890,256,5400,'1500р',NULL),(438,'2018-07-27 13:18:39','2018-07-27 13:18:39','',5800,257,7400,'1500р',NULL),(439,'2018-07-27 13:18:39','2018-07-27 13:18:39','',7890,258,9400,'1500р',NULL),(440,'2018-07-27 13:18:39','2018-07-30 06:53:02','15шт',980,259,2000,'15%','products/razn.jpg'),(441,'2018-07-27 13:18:39','2018-07-30 06:53:02','20шт',1190,259,2000,'15%','products/folg_serdza.jpg'),(442,'2018-07-27 13:18:39','2018-07-30 06:53:02','25шт',1480,259,2000,'15%','products/buket-romashek.jpg'),(443,'2018-07-27 13:18:39','2018-07-30 06:53:02','30шт',1790,259,2000,'15%','products/razn.jpg'),(444,'2018-07-27 13:18:39','2018-07-30 06:53:02','35т',2080,259,2000,'15%','products/razn.jpg'),(445,'2018-07-27 13:18:39','2018-07-30 06:53:02','50шт',2690,259,2000,'15%','products/razn.jpg'),(446,'2018-07-27 13:18:39','2018-07-30 06:53:02','100шт',5490,259,2000,'15%','products/razn.jpg'),(447,'2018-07-27 13:18:39','2018-07-30 06:53:02','3шт',1410,260,2000,'15%','products/fontan.jpg'),(448,'2018-07-27 13:18:39','2018-07-30 06:53:02','4шт',1880,260,2000,'15%','products/folg_serdza.jpg'),(449,'2018-07-27 13:18:39','2018-07-30 06:53:02','5шт',2350,260,2000,'15%','products/buket-romashek.jpg'),(450,'2018-07-27 13:18:39','2018-07-30 06:53:02','6шт',2820,260,2000,'15%','products/razn.jpg'),(451,'2018-07-27 13:18:40','2018-07-30 06:53:02','7шт',3290,260,2000,'15%','products/razn.jpg'),(452,'2018-07-27 13:18:40','2018-07-30 06:53:02','10шт',4700,260,2000,'15%','products/fontan.jpg'),(453,'2018-07-27 13:18:40','2018-07-30 06:53:02','1шт',650,261,2000,'15%','products/folg1.jpg'),(454,'2018-07-27 13:18:40','2018-07-30 06:53:02','2шт',1300,261,2000,'15%','products/folg2.jpg'),(455,'2018-07-27 13:18:40','2018-07-30 06:53:02','4шт',2600,261,2000,'15%','products/folf4.jpg'),(456,'2018-07-27 13:18:40','2018-07-30 06:53:02','15шт',1350,262,2000,'15%','products/bel200.jpg'),(457,'2018-07-27 13:18:40','2018-07-30 06:53:02','20шт',1800,262,2000,'15%','products/edin_gol.jpg'),(458,'2018-07-27 13:18:40','2018-07-30 06:53:02','30шт',2700,262,2000,'15%','products/bel100.jpg'),(459,'2018-07-27 13:18:40','2018-07-30 06:53:02','35шт',3150,262,2000,'15%','products/arka_s_gel.jpg'),(460,'2018-07-27 13:18:40','2018-07-30 06:53:03','50шт',4500,262,2000,'15%','products/beg130.jpg'),(461,'2018-07-27 13:18:40','2018-07-30 06:53:03','100шт',9000,262,2000,'15%','products/gol_pegas.jpg'),(462,'2018-07-27 13:18:40','2018-07-30 06:53:03','1шт',1000,263,2000,'15%','products/zifra_iz_sharov.jpg'),(463,'2018-07-27 13:18:40','2018-07-30 06:53:03','2шт',2000,263,2000,'15%','products/edin_rad.jpg'),(464,'2018-07-27 13:18:40','2018-07-30 06:53:03','15шт',1050,264,2000,'15%','products/smail.jpg'),(465,'2018-07-27 13:18:40','2018-07-30 06:53:03','20шт',1300,264,2000,'15%','products/tigra.jpg'),(466,'2018-07-27 13:18:40','2018-07-30 06:53:03','25шт',1625,264,2000,'15%','products/stich.jpg'),(467,'2018-07-27 13:18:40','2018-07-30 06:53:03','30шт',1950,264,2000,'15%','products/svet_shar.jpg'),(468,'2018-07-27 13:18:40','2018-07-30 06:53:03','35шт',2275,264,2000,'15%','products/Panda160.jpg'),(469,'2018-07-27 13:18:40','2018-07-30 06:53:03','S',1980,265,3000,'1000р','products/edin_rad.jpg'),(470,'2018-07-27 13:18:40','2018-07-30 06:53:03','M',1980,265,3000,'1000р','products/s_dr.jpg'),(471,'2018-07-27 13:18:40','2018-07-30 06:53:03','L',1980,265,3000,'1000р','products/serdza_i_dr_figyr.jpg'),(472,'2018-07-27 13:18:41','2018-07-30 06:53:03','XL',1980,265,3000,'1000р','products/Panda160.jpg'),(473,'2018-07-27 13:18:41','2018-07-30 06:53:03','S',1980,266,3000,'1000р','products/edin_roz.jpg'),(474,'2018-07-27 13:18:41','2018-07-30 06:53:03','M',1980,266,3000,'1000р','products/gol_dla_malchika.jpg'),(475,'2018-07-27 13:18:41','2018-07-30 06:53:03','L',1980,266,3000,'1000р','products/ogrom_shar.jpeg'),(476,'2018-07-27 13:18:41','2018-07-30 06:53:03','XL',1980,266,3000,'1000р','products/oskorbitel.jpg'),(477,'2018-07-27 13:18:41','2018-07-30 06:53:03','S',1980,267,3000,'1000р','products/zapysk.jpg'),(478,'2018-07-27 13:18:41','2018-07-30 06:53:03','M',1980,267,3000,'1000р','products/edin_rad.jpg'),(479,'2018-07-27 13:18:41','2018-07-30 06:53:03','L',1980,267,3000,'1000р','products/folg_serdza.jpg'),(480,'2018-07-27 13:18:41','2018-07-30 06:53:03','XL',1980,267,3000,'1000р','products/panda.jpg'),(481,'2018-07-27 13:18:41','2018-07-30 06:53:03','S',1980,268,3000,'1000р','products/edin_pur.jpg'),(482,'2018-07-27 13:18:41','2018-07-30 06:53:04','M',1980,268,3000,'1000р','products/gol_dla_malchika.jpg'),(483,'2018-07-27 13:18:41','2018-07-30 06:53:04','L',1980,268,3000,'1000р','products/Panda160.jpg'),(484,'2018-07-27 13:18:41','2018-07-30 06:53:04','XL',1980,268,3000,'1000р','products/folg_serdza.jpg');

/*Table structure for table `product_parameters` */

DROP TABLE IF EXISTS `product_parameters`;

CREATE TABLE `product_parameters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `product_parameters` */

insert  into `product_parameters`(`id`,`created_at`,`updated_at`,`name`,`product_id`,`value`) values (1,'2018-07-18 08:24:59','2018-07-18 08:24:59','Рост',1,'75 см'),(2,'2018-07-18 08:25:18','2018-07-18 08:25:18','Цвет',1,'Коричневый'),(3,'2018-07-18 08:25:31','2018-07-18 08:25:31','Материал',1,'Исскуственный мех'),(4,'2018-07-23 07:55:27','2018-07-23 08:06:47','Тестовый1',6,'Тестовое');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `type_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `parametr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_view_price` tinyint(4) DEFAULT 0,
  `other_products` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id_excel` int(11) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT 1,
  `price_id` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`created_at`,`updated_at`,`name`,`category_id`,`type_id`,`image`,`discount`,`description`,`images`,`parametr`,`type_view_price`,`other_products`,`product_id_excel`,`is_active`,`price_id`,`order`) values (256,'2018-07-26 11:12:42','2018-07-27 12:59:09','160см Шампань',11,'[\"9\"]','products/folg1.jpg',NULL,'подгружается в описание где быстрый просмотр товара','{\"1\":\"\\/products\\/folg2.jpg\",\"2\":\"\\/products\\/folf4.jpg\"}','160см',0,'[\"2\",\"3\",\"19\"]',1,1,NULL,1),(257,'2018-07-26 11:12:42','2018-07-27 12:59:09','200см Шампань',11,'[\"10\"]','products/scham160.jpg',NULL,'подгружается в описание где быстрый просмотр товара','{\"1\":\"\\/products\\/bur160.jpg\",\"2\":\"\\/products\\/bur200.jpg\"}','200см',0,'[\"3\"]',2,1,NULL,1),(258,'2018-07-26 11:12:42','2018-07-27 12:59:09','230см Шампаль',11,'[\"10\"]','products/folg1.jpg',NULL,'подгружается в описание где быстрый просмотр товара','{\"1\":\"\\/products\\/folg2.jpg\",\"2\":\"\\/products\\/folf4.jpg\"}','230см',0,'[\"19\"]',3,1,NULL,1),(259,'2018-07-26 11:12:43','2018-07-30 06:53:02','Разноцветные (любой цвет)',4,'[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\"]','products/razn.jpg',NULL,'подгружается в описание где быстрый просмотр товара','[]','1ш=45',0,NULL,19,1,NULL,1),(260,'2018-07-26 11:12:43','2018-07-30 06:53:02','Фонтан из 7 шаров (любой цвет)',4,'[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\"]','products/fontan.jpg',NULL,'подгружается в описание где быстрый просмотр товара','[]','1ф=550р',0,NULL,26,1,NULL,1),(261,'2018-07-26 11:12:43','2018-07-30 06:53:02','Цифры из фольги 1м(золото/серебро)',4,'[\"11\",\"14\",\"15\"]','products/folg1.jpg',NULL,'подгружается в описание где быстрый просмотр товара','[]','1ц=650р',0,NULL,32,1,NULL,1),(262,'2018-07-26 11:12:43','2018-07-30 06:53:02','Светящиеся (любой цвет)',4,'[\"11\",\"14\",\"15\",\"16\",\"20\",\"21\"]','products/cheschir.jpg',NULL,'подгружается в описание где быстрый просмотр товара','[]','1ш=100р',0,'[\"41\",\" 43\",\" 158\"]',35,1,NULL,1),(263,'2018-07-26 11:12:43','2018-07-30 06:53:03','Цифра/Буква из шариков (размер1.5м)',4,'[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\"]','products/zifra_iz_sharov.jpg',NULL,'подгружается в описание где быстрый просмотр товара','[]','1б=1500р',0,NULL,41,1,NULL,1),(264,'2018-07-26 11:12:43','2018-07-30 06:53:03','Разноцветные смайлы',4,'[\"11\",\"17\",\"20\",\"21\"]','products/scham200.jpg',NULL,'подгружается в описание где быстрый просмотр товара','[]','1ш=70р',0,NULL,43,1,NULL,1),(265,'2018-07-26 11:12:43','2018-07-30 06:53:03','Единорог Радужный',12,'[\"22\",\"23\"]','products/edin_rad.jpg',NULL,'подгружается в описание где быстрый просмотр товара','[]','S/M/L/XL',0,'[\"256\",\"263\"]',146,1,NULL,12),(266,'2018-07-26 11:12:43','2018-07-30 06:53:03','Единорог Розовый',12,'[\"22\",\"23\"]','products/edin_roz.jpg',NULL,'подгружается в описание где быстрый просмотр товара','[]','S/M/L/XL',0,NULL,150,1,NULL,1),(267,'2018-07-26 11:12:43','2018-07-27 12:54:26','Единорог Голубой',12,'[\"24\",\"23\"]',NULL,NULL,'подгружается в описание где быстрый просмотр товара','[]','S/M/L/XL',0,NULL,154,1,NULL,1),(268,'2018-07-26 11:12:43','2018-07-30 06:53:03','Единорог Пурпурный',12,'[\"22\",\"23\"]','products/edin_pur.jpg',NULL,'подгружается в описание где быстрый просмотр товара','[]','S/M/L/XL',0,NULL,158,1,NULL,1);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`display_name`,`created_at`,`updated_at`) values (1,'admin','Administrator','2018-07-17 11:51:11','2018-07-17 11:51:11'),(2,'user','Normal User','2018-07-17 11:51:11','2018-07-17 11:51:11');

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `settings` */

insert  into `settings`(`id`,`key`,`display_name`,`value`,`details`,`type`,`order`,`group`) values (1,'.phone','Телефон','+7 (903) 839 37 30',NULL,'text',0,NULL),(2,'.address','Адресс','Рязань, ул.Стройкова 20',NULL,'text',1,NULL),(3,'.email','Почта','M3sale@mail.ru',NULL,'text',2,NULL),(4,'.home_phone','Домашний телефон','+7 (4912) 99 37 30',NULL,'text',3,NULL),(7,'.mail_manager','Почта менеджера','test@test.com',NULL,'text',4,NULL),(8,'.parser_link','Ссылка для парсера','http://u63256cv.beget.tech/excel-download',NULL,'text',5,NULL),(9,'.vk_link','Vk ссылка','www.vk.com/joxbox_spb',NULL,'text',6,NULL),(10,'.instagram','instagram','в админ панеле',NULL,'text',7,NULL),(11,'.facebook','facebook','в админ панеле',NULL,'text',8,NULL),(12,'.odnoklassniki','Одноклассники','в админ панеле',NULL,'text',9,NULL),(13,'.youtube','youtube','в админ панеле',NULL,'text',10,NULL);

/*Table structure for table `translations` */

DROP TABLE IF EXISTS `translations`;

CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `translations` */

/*Table structure for table `types` */

DROP TABLE IF EXISTS `types`;

CREATE TABLE `types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `types` */

insert  into `types`(`id`,`created_at`,`updated_at`,`name`,`category_id`) values (9,'2018-07-25 09:57:31','2018-07-25 09:57:31','средние',11),(10,'2018-07-25 09:57:42','2018-07-25 09:57:42','огромные',11),(11,'2018-07-25 09:58:00','2018-07-25 09:58:00','День Рождения',4),(12,'2018-07-25 09:58:11','2018-07-25 09:58:11','Родили',4),(13,'2018-07-25 09:58:21','2018-07-25 09:58:21','Выписали',4),(14,'2018-07-25 09:58:32','2018-07-25 09:58:32','Юбилей',4),(15,'2018-07-25 09:58:42','2018-07-25 09:58:42','важная дата',4),(16,'2018-07-25 09:58:51','2018-07-25 09:58:51','Свадьба',4),(17,'2018-07-25 09:59:02','2018-07-25 09:59:02','Детский праздник',4),(18,'2018-07-25 09:59:11','2018-07-25 09:59:11','Оформление',4),(19,'2018-07-25 09:59:28','2018-07-25 09:59:28','Детский праздник',4),(20,'2018-07-25 09:59:39','2018-07-25 09:59:39','Необычные',4),(21,'2018-07-25 09:59:50','2018-07-25 09:59:50','Магия',4),(22,'2018-07-25 10:00:02','2018-07-25 10:00:02','девушкам',12),(23,'2018-07-25 10:00:13','2018-07-25 10:00:13','унисекс',12),(24,'2018-07-25 10:00:40','2018-07-25 10:00:40','парням',12);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`role_id`,`name`,`email`,`avatar`,`password`,`remember_token`,`created_at`,`updated_at`) values (1,1,'Admin','admin@admin.com','users/default.png','$2y$10$FPvBnvCO.9o2Mqr5wBUW6.tNVatvPHBENyk/6MmTk7/fOFSPUXQ5C','wMxxsc8PFyECvJjdIo3DCY6xfXjS3wwwngd2wqJfxAVN1o2OgTVjugnZjOoc','2018-07-17 11:52:03','2018-07-17 11:52:03');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
