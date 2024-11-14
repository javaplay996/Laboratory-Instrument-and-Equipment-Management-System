/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shiyanshiguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shiyanshiguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shiyanshiguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-05-07 09:06:51'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-05-07 09:06:51'),(3,'shiyanshi_types','实验室类型名称',1,'实验室类型1',NULL,'2021-05-07 09:06:51'),(4,'shiyanshi_types','实验室类型名称',2,'实验室类型2',NULL,'2021-05-07 09:06:51'),(5,'shiyanshi_types','实验室类型名称',3,'实验室类型3',NULL,'2021-05-07 09:06:51'),(6,'shebei_types','设备类型名称',1,'设备类型1',NULL,'2021-05-07 09:06:51'),(7,'shebei_types','设备类型名称',2,'设备类型2',NULL,'2021-05-07 09:06:51'),(8,'shebei_types','设备类型名称',3,'设备类型3',NULL,'2021-05-07 09:06:51'),(9,'shebei_zhuangtai_types','设备状态名称',1,'报废',NULL,'2021-05-07 09:06:51'),(10,'shebei_zhuangtai_types','设备状态名称',2,'正常',NULL,'2021-05-07 09:06:51'),(11,'shiyanshi_yuyue_types','实验室预约是否同意',1,'待审批',NULL,'2021-05-07 09:06:51'),(12,'shiyanshi_yuyue_types','实验室预约是否同意',2,'同意',NULL,'2021-05-07 09:06:51'),(13,'shiyanshi_yuyue_types','实验室预约是否同意',3,'不同意',NULL,'2021-05-07 09:06:51'),(14,'shebei_jieyong_types','设备借用是否归还',1,'未归还',NULL,'2021-05-07 09:06:51'),(15,'shebei_jieyong_types','设备借用是否归还',2,'已归还',NULL,'2021-05-07 09:06:51'),(16,'gonggao_types','公告类型名称',1,'日常公告',NULL,'2021-05-07 09:06:51'),(17,'gonggao_types','公告类型名称',2,'紧急公告',NULL,'2021-05-07 09:06:51'),(18,'shiyanshi_types','实验室类型名称',4,'实验室类型4',NULL,'2021-05-07 10:07:21');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `gonggao_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (3,'公告 1',1,'2021-05-07 10:01:07','公告1的详情\r\n','2021-05-07 10:01:07'),(4,'公告2',2,'2021-05-07 10:06:51','公告2的详情\r\n','2021-05-07 10:06:51');

/*Table structure for table `shebei` */

DROP TABLE IF EXISTS `shebei`;

CREATE TABLE `shebei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shebei_name` varchar(200) DEFAULT NULL COMMENT '设备名称 Search111 ',
  `shebei_types` int(11) DEFAULT NULL COMMENT '设备分类 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `shebei_content` text COMMENT '设备详情',
  `shebei_zhuangtai_types` int(11) DEFAULT NULL COMMENT '设备状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='设备';

/*Data for the table `shebei` */

insert  into `shebei`(`id`,`shebei_name`,`shebei_types`,`insert_time`,`shebei_content`,`shebei_zhuangtai_types`,`create_time`) values (3,'设备1',1,'2021-05-07 09:58:55','设备1的详情\r\n',2,'2021-05-07 09:58:55'),(4,'设备2',2,'2021-05-07 10:05:26','设备2的详情\r\n',2,'2021-05-07 10:05:26');

/*Table structure for table `shebei_jieyong` */

DROP TABLE IF EXISTS `shebei_jieyong`;

CREATE TABLE `shebei_jieyong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `shebei_id` int(11) DEFAULT NULL COMMENT '设备',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间 Search111 ',
  `shebei_jieyong_number` int(11) DEFAULT NULL COMMENT '借用数量 Search111 ',
  `beizhu_content` text COMMENT '备注',
  `shebei_jieyong_types` int(11) DEFAULT NULL COMMENT '是否归还 Search111 ',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '归还时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='设备借用';

/*Data for the table `shebei_jieyong` */

insert  into `shebei_jieyong`(`id`,`yonghu_id`,`shebei_id`,`insert_time`,`shebei_jieyong_number`,`beizhu_content`,`shebei_jieyong_types`,`update_time`,`create_time`) values (3,25,3,'2021-05-07 10:00:10',10,'无\r\n',2,'2021-05-07 10:00:36','2021-05-07 10:00:10'),(4,26,4,'2021-05-07 10:05:54',15,'无\r\n',2,'2021-05-07 10:06:00','2021-05-07 10:05:54');

/*Table structure for table `shiyanshi` */

DROP TABLE IF EXISTS `shiyanshi`;

CREATE TABLE `shiyanshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shiyanshi_name` varchar(200) DEFAULT NULL COMMENT '实验室名称 Search111 ',
  `shiyanshi_types` int(11) DEFAULT NULL COMMENT '实验室类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `shiyanshi_content` text COMMENT '实验室详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='实验室';

/*Data for the table `shiyanshi` */

insert  into `shiyanshi`(`id`,`shiyanshi_name`,`shiyanshi_types`,`insert_time`,`shiyanshi_content`,`create_time`) values (3,'实验室1',1,'2021-05-07 10:00:57','实验室1的详情\r\n','2021-05-07 10:00:57'),(4,'实验室2',2,'2021-05-07 10:06:21','实验室2的详情\r\n','2021-05-07 10:06:21');

/*Table structure for table `shiyanshi_yuyue` */

DROP TABLE IF EXISTS `shiyanshi_yuyue`;

CREATE TABLE `shiyanshi_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `shiyanshi_id` int(11) DEFAULT NULL COMMENT '实验室',
  `yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `shiyanshi_yuyue_number` int(11) DEFAULT NULL COMMENT '人数 Search111 ',
  `shenqing_content` text COMMENT '申请详情',
  `shiyanshi_yuyue_types` int(11) DEFAULT NULL COMMENT '是否同意 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='实验室预约';

/*Data for the table `shiyanshi_yuyue` */

insert  into `shiyanshi_yuyue`(`id`,`yonghu_id`,`shiyanshi_id`,`yuyue_time`,`insert_time`,`shiyanshi_yuyue_number`,`shenqing_content`,`shiyanshi_yuyue_types`,`create_time`) values (3,25,3,'2021-05-15 00:00:00','2021-05-07 10:03:41',10,'申请详情\r\n',2,'2021-05-07 10:03:41'),(4,26,4,'2021-05-12 00:00:00','2021-05-07 10:08:29',14,'申请详情\r\n',1,'2021-05-07 10:08:29');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','ittkb4kk9mfhpufajbl5gj8okeifi9r7','2021-05-07 09:58:19','2021-05-07 11:04:28'),(2,25,'a1','yonghu','用户','uv1kl3vmau10jtduh9u8d1ifwjd158ss','2021-05-07 10:02:29','2021-05-07 11:07:30'),(3,26,'a2','yonghu','用户','xs7k01bf3kgp68xtcstfx5v9g2gy9uqp','2021-05-07 10:07:40','2021-05-07 11:07:40');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`create_time`) values (25,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/shiyanshiguanlixitong/file/download?fileName=1620352717579.jpg',1,'2021-05-07 09:58:40'),(26,'a2','123456','张22','17703786902','410224199610232002','http://localhost:8080/shiyanshiguanlixitong/file/download?fileName=1620353094123.jpg',1,'2021-05-07 10:05:01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
