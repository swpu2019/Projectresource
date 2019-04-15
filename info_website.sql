/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.40 : Database - info_website
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`info_website` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `info_website`;

/*Table structure for table `banner_img_info` */

DROP TABLE IF EXISTS `banner_img_info`;

CREATE TABLE `banner_img_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_name_type` varchar(30) NOT NULL,
  `url` varchar(30) DEFAULT NULL,
  `describe_info` varchar(50) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `banner_img_info` */

insert  into `banner_img_info`(`id`,`banner_name_type`,`url`,`describe_info`,`create_date`,`modify_date`) values (1,'banner1.jpg','../../assets/admin/layout/img/','校园风景1',NULL,NULL),(2,'banner2.jpg','../../assets/admin/layout/img/','校园风景2',NULL,NULL),(3,'banner3.jpg','../../assets/admin/layout/img/','校园风景3',NULL,NULL),(4,'banner4.jpg','../../assets/admin/layout/img/','校园风景4',NULL,NULL);

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `message_title` varchar(100) NOT NULL,
  `message_type` int(11) NOT NULL,
  `message_content` varchar(255) NOT NULL,
  `message_img` varchar(255) DEFAULT NULL,
  `message_addition` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `message` */

insert  into `message`(`id`,`message_title`,`message_type`,`message_content`,`message_img`,`message_addition`,`create_date`,`modify_date`) values (1,'学院第一次团课活动圆满举行',2,'学院第一次团课活动圆满举行',NULL,NULL,'2019-03-28 17:59:08',NULL),(2,'信息学院成功举办大数据主题讲座',2,'信息学院成功举办大数据主题讲座',NULL,NULL,'2019-03-28 17:57:26',NULL),(3,'信息学院党支部召开第XXX次会议',3,'信息学院党支部召开第XXX次会议',NULL,NULL,'2019-03-28 17:59:08',NULL),(4,'学生会xx部开展xxx志愿活动',4,'学生会xx部开展xxx志愿活动',NULL,NULL,'2019-03-28 17:59:08',NULL);

/*Table structure for table `message_type` */

DROP TABLE IF EXISTS `message_type`;

CREATE TABLE `message_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `message_type` */

insert  into `message_type`(`id`,`type`,`name`,`create_date`,`modify_date`) values (1,1,'notice','2019-03-28 17:55:52',NULL),(2,2,'news','2019-03-28 17:56:16',NULL),(3,3,'Party','2019-03-28 17:56:16',NULL),(4,4,'Activities ','2019-03-28 17:56:16',NULL);

/*Table structure for table `ops_function` */

DROP TABLE IF EXISTS `ops_function`;

CREATE TABLE `ops_function` (
  `id` bigint(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `resource_key` varchar(30) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ops_function` */

insert  into `ops_function`(`id`,`name`,`url`,`resource_key`,`parent_id`,`icon`,`create_date`,`modify_date`) values (1,'学院首页','/index','index',NULL,NULL,'2019-03-28 17:25:54',NULL),(2,'学院概况','/overview/list','overview',NULL,NULL,'2019-03-28 17:29:29',NULL),(3,'学生工作','/studentJob','studentJob',NULL,NULL,'2019-03-28 17:42:10',NULL),(4,'师资队伍','/teacherIntroduce','teacherIntroduce',NULL,NULL,'2019-03-28 17:43:25',NULL),(5,'考研','/postgraduate','postgraduate',NULL,NULL,'2019-03-28 17:43:25',NULL),(6,'就业','/employment','employment',NULL,NULL,'2019-03-28 17:43:25',NULL),(7,'党建','/party','party',NULL,NULL,'2019-03-28 17:43:25',NULL),(8,'学生中心','/studentsCenter','studentsCenter',NULL,NULL,'2019-03-28 17:43:25',NULL),(9,'教师中心','/teachersCenter','teachersCenter',NULL,NULL,'2019-03-28 17:43:25',NULL),(10,'联系我们','/contactUs','contactUs',NULL,NULL,'2019-03-28 17:43:25',NULL),(11,'学院简介','/overview/list','overview',2,NULL,'2019-03-28 17:31:16',NULL),(12,'学院领导','/overview/collegeLeader','overview',2,NULL,'2019-03-28 17:32:38',NULL),(13,'机构设置','/overview/institutionalSetup','overview',2,NULL,'2019-03-28 17:43:25',NULL),(14,'学院实验室','/overview/collegeLab','overview',2,NULL,'2019-03-28 17:43:25',NULL),(15,'学工通知','/studentJob/studyWorkerNotice','studentJob',3,NULL,'2019-03-28 17:43:25',NULL),(16,'学生会概况','/studentJob/studentUnion','studentJob',3,NULL,'2019-03-28 17:43:25',NULL),(17,'规章制度','/studentJob/rulesRegulations','studentJob',3,NULL,'2019-03-28 17:43:25',NULL),(18,'在职教师','/teacherIntroduce/teachers','teacherIntroduce',4,NULL,'2019-03-28 17:43:25',NULL),(19,'学术交流','/teacherIntroduce/academicExchange','teacherIntroduce',4,NULL,'2019-03-28 17:43:25',NULL),(20,'考研指导','/postgraduate/guidancePostgraduate','postgraduate',5,NULL,'2019-03-28 17:43:25',NULL),(21,'本科生培养','/postgraduate/undergraduateTraining','postgraduate',5,NULL,'2019-03-28 17:43:25',NULL),(22,'就业指导','/employment/careerGuidance','employment',6,NULL,'2019-03-28 17:43:25',NULL),(23,'创新创业','/employment/innovationEntrepreneurship','employment',6,NULL,'2019-03-28 17:43:25',NULL),(24,'党团快讯','/party/partyNews','party',7,NULL,'2019-03-28 17:43:25',NULL),(25,'组织结构','/party/organizationalStructure','party',7,NULL,'2019-03-28 17:43:25',NULL),(26,'成员概况','/party/membership','party',7,NULL,'2019-03-28 17:43:25',NULL),(27,'思想政治','/party/ideologicalPolitics','party',7,NULL,'2019-03-28 17:43:25',NULL),(28,'课外实验','/studentsCenter/extracurricularExperiment','studentsCenter',8,NULL,'2019-03-28 17:43:25',NULL),(29,'项目实训','/studentsCenter/projectTraining','studentsCenter',8,NULL,'2019-03-28 17:43:25',NULL),(30,'评教中心','/studentsCenter/teachingEvaluation','studentsCenter',8,NULL,'2019-03-28 17:43:25',NULL),(31,'实训平台','/studentsCenter/trainingPlatform','studentsCenter',8,NULL,'2019-03-28 17:43:25',NULL),(32,'通知发布','/teachersCenter/releaseNotice','teachersCenter',9,NULL,'2019-03-28 17:43:25',NULL),(33,'学生管理','/teachersCenter/studentManagement','teachersCenter',9,NULL,'2019-03-28 17:43:25',NULL),(34,'实验验收','/teachersCenter/experimentalAcceptance','teachersCenter',9,NULL,'2019-03-28 17:43:25',NULL);

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `id` bigint(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(20) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_info` */

insert  into `user_info`(`id`,`name`,`password`,`create_date`,`modify_date`) values (1,'张飞','123456','2019-03-28 17:43:25',NULL),(2,'刘备','123456','2019-03-28 17:43:25',NULL),(3,'关羽','123456','2019-03-28 17:43:25',NULL),(4,'用户','123456','2019-03-28 17:43:25',NULL),(5,'游客','666666','2019-03-28 17:43:25',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
