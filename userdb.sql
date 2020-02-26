/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.1.38-MariaDB : Database - userdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`userdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `userdb`;

/*Table structure for table `reply` */

DROP TABLE IF EXISTS `reply`;

CREATE TABLE `reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rName` varchar(45) DEFAULT NULL,
  `rContent` varchar(255) DEFAULT NULL,
  `rTime` varchar(45) DEFAULT NULL,
  `rId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rId` (`rId`),
  CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`rId`) REFERENCES `title` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `reply` */

insert  into `reply`(`id`,`rName`,`rContent`,`rTime`,`rId`) values 
(6,'朱','真的吗','2019-10-29 23:21:43',9),
(7,'阙','他不姓周，他姓王','2019-10-29 23:24:55',9),
(8,'阙','来个赞！','2019-10-29 23:27:56',10),
(9,'周','赞！赞！赞！','2019-10-29 23:28:37',10),
(10,'阙','谢谢！谢谢！','2019-10-29 23:44:22',10),
(11,'刘','学如逆水行舟，不进则退','2019-10-30 09:18:31',14),
(12,'阙','心似平原走马，易放难追','2019-10-30 09:19:48',14);

/*Table structure for table `testuser` */

DROP TABLE IF EXISTS `testuser`;

CREATE TABLE `testuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `collage` varchar(45) DEFAULT NULL,
  `number` int(11) DEFAULT '0',
  `major` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `testuser` */

insert  into `testuser`(`id`,`username`,`password`,`sex`,`age`,`email`,`tel`,`collage`,`number`,`major`) values 
(5,'年轻的神','123456','male','12','21221212','12121212','计算机',0,'计算机'),
(7,'周','123456','male','12','12','12','12',0,'12'),
(8,'朱','123456','male','12','122','1223','12',0,'12'),
(9,'阙','123456','male','22','9485043812@qq.com','15211118888','计算机数据与科学学院',0,'计算机科学与技术'),
(11,'1','123','1','1','1','1','1',0,'1'),
(12,'刘','123456','male','22','34','45','56',0,'78');

/*Table structure for table `title` */

DROP TABLE IF EXISTS `title`;

CREATE TABLE `title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorName` varchar(45) DEFAULT NULL,
  `headline` varchar(45) DEFAULT NULL,
  `content` varchar(225) DEFAULT NULL,
  `ftime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `title` */

insert  into `title`(`id`,`authorName`,`headline`,`content`,`ftime`) values 
(9,'周','我姓周','123456','2019-10-29 23:20:26'),
(10,'阙','处女帖','第一次发帖呢！','2019-10-29 23:26:45'),
(11,'阙','【10.29 NBA常规赛】勇士VS鹈鹕 ','各位吧友大家好！2019-2020赛季已经拉开大幕。NBA吧将在每个比赛日推出话题直播，供吧友在比赛期间讨论战况，发表意见看法。希望吧友们文明观赛，理性交流！','2019-10-30 00:31:16'),
(12,'阙','VB6Rsizer控件如何使用','B6Resizer是一个开源的控件,它的作用是在运行时刻自动对其它可视控件进行动态的位置/大小调整.','2019-10-30 00:34:21'),
(13,'朱','如何学习JavaWeb？','1、...\r\n2、....','2019-10-30 00:36:20'),
(14,'刘','天王盖地虎','宝塔镇河妖','2019-10-30 09:17:28');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
