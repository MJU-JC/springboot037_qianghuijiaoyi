/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - qianghuichapin
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qianghuichapin` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `qianghuichapin`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618053552037 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-13 15:59:12',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-13 15:59:12',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-13 15:59:12',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-13 15:59:12',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-13 15:59:12',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-13 15:59:12',6,'宇宙银河系月球1号','月某','13823888886','是'),(1615000734921,'2021-03-06 11:18:53',11,'陕西省安康市旬阳市小河镇闫家坪','联系人1','12312312312','否'),(1618053552036,'2021-04-10 19:19:11',11,'新疆维吾尔自治区阿拉尔市兵团十二团','123','12312312312','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618053521805 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1618053521804,'2021-04-10 19:18:41','shangpinxinxi',11,43,'商品名称3','http://localhost:8080/qianghuichapin/upload/1618044594454.jpg',1,99.9,0);

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618053624272 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (61,'2021-03-13 15:59:12',1,1,'提问1','回复1',0),(62,'2021-03-13 15:59:12',2,2,'提问2','回复2',2),(63,'2021-03-13 15:59:12',3,3,'提问3','回复3',3),(64,'2021-03-13 15:59:12',4,4,'提问4','回复4',4),(65,'2021-03-13 15:59:12',5,5,'提问5','回复5',5),(66,'2021-03-13 15:59:12',6,6,'提问6','回复6',6),(1615551500494,'2021-03-12 20:18:20',11,NULL,'123123',NULL,0),(1615551511515,'2021-03-12 20:18:30',11,NULL,'这里可以和客服进行投书',NULL,0),(1615551539376,'2021-03-12 20:18:58',1,1,NULL,'213231',NULL),(1615551539554,'2021-03-12 20:18:58',1,1,NULL,'213231',0),(1615551545730,'2021-03-12 20:19:05',11,1,NULL,'213132132',0),(1615551545806,'2021-03-12 20:19:05',11,1,NULL,'213132132',0),(1615551546125,'2021-03-12 20:19:05',11,1,NULL,'213132132',0),(1618053624271,'2021-04-10 19:20:24',11,NULL,'123132',NULL,1);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/qianghuichapin/upload/1618044415121.jpg'),(2,'picture2','http://localhost:8080/qianghuichapin/upload/1618044422531.jpg'),(3,'picture3','http://localhost:8080/qianghuichapin/upload/1618044431400.jpg'),(6,'homepage','http://localhost:8080/qianghuichapin/upload/1618044441051.jpg');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615551314340 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (121,'2021-03-13 15:59:12',1,1,'评论内容1','回复内容1'),(122,'2021-03-13 15:59:12',2,2,'评论内容2','回复内容2'),(123,'2021-03-13 15:59:12',3,3,'评论内容3','回复内容3'),(124,'2021-03-13 15:59:12',4,4,'评论内容4','回复内容4'),(125,'2021-03-13 15:59:12',5,5,'评论内容5','回复内容5'),(126,'2021-03-13 15:59:12',6,6,'评论内容6','回复内容6'),(1615551314339,'2021-03-12 20:15:13',1615551151507,11,'买了几次挺不错的',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COMMENT='商品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-03-13 15:59:12','标题1','简介1','http://localhost:8080/qianghuichapin/upload/1615036500334.jpg','<p>内容1</p>'),(112,'2021-03-13 15:59:12','标题2','简介2','http://localhost:8080/qianghuichapin/upload/1615036508609.jpg','<p>内容2</p>'),(113,'2021-03-13 15:59:12','标题3','简介3','http://localhost:8080/qianghuichapin/upload/1615036516431.jpg','<p>内容3</p>'),(114,'2021-03-13 15:59:12','标题4','简介4','http://localhost:8080/qianghuichapin/upload/1615036522325.jpg','<p>内容4</p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1618053292808 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1618053278692,'2021-04-10 19:14:38','202141019143853818128','shangpinxinxi',11,43,'商品名称3','http://localhost:8080/qianghuichapin/upload/1618044594454.jpg',5,99.9,99.9,499.5,499.5,1,'已完成','陕西省安康市旬阳市小河镇闫家坪'),(1618053292807,'2021-04-10 19:14:52','202141019145218434588','shangpinxinxi',11,1618053187544,'商品4','http://localhost:8080/qianghuichapin/upload/1618053171980.jpg',1,400,400,400,400,1,'已支付','陕西省安康市旬阳市小河镇闫家坪');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1615551113089 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-03-13 15:59:12','分类1'),(22,'2021-03-13 15:59:12','分类2'),(23,'2021-03-13 15:59:12','分类3'),(24,'2021-03-13 15:59:12','分类4'),(25,'2021-03-13 15:59:12','分类5'),(26,'2021-03-13 15:59:12','分类6');

/*Table structure for table `shangpinpingjia` */

DROP TABLE IF EXISTS `shangpinpingjia`;

CREATE TABLE `shangpinpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `pingfen` varchar(200) NOT NULL COMMENT '评分',
  `pingjianeirong` longtext NOT NULL COMMENT '评价内容',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615551418201 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpinpingjia` */

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618053187981 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`biaoqian`,`pinpai`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`) values (41,'2021-03-13 15:59:12','商品名称1','分类1','http://localhost:8080/qianghuichapin/upload/1618044576364.jpg','标签1','品牌1','<p>商品详情1</p>','2021-04-10 08:49:30',15,99.9),(42,'2021-03-13 15:59:12','商品名称2','分类2','http://localhost:8080/qianghuichapin/upload/1618044583943.jpg','标签2','品牌2','<p>商品详情2</p>','2021-04-10 11:19:44',30,99.9),(43,'2021-03-13 15:59:12','商品名称3','分类3','http://localhost:8080/qianghuichapin/upload/1618044594454.jpg','标签3','品牌3','<p>商品详情3</p>','2021-04-10 11:15:47',38,99.9),(1618053187544,'2021-04-10 19:13:06','商品4','分类4','http://localhost:8080/qianghuichapin/upload/1618053171980.jpg','标签4','品牌4','<p><span style=\"color: rgb(96, 98, 102);\">商品详情商品详情商品详情商品详情商品详情</span></p>','2021-04-10 11:19:20',3,400);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618053586638 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1618053343825,'2021-04-10 19:15:42',11,43,'shangpinxinxi','商品名称3','http://localhost:8080/qianghuichapin/upload/1618044594454.jpg'),(1618053562487,'2021-04-10 19:19:21',11,1618053187544,'shangpinxinxi','商品4','http://localhost:8080/qianghuichapin/upload/1618053171980.jpg'),(1618053586637,'2021-04-10 19:19:46',11,42,'shangpinxinxi','商品名称2','http://localhost:8080/qianghuichapin/upload/1618044583943.jpg');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','q3v2oyx0gn8p2lxdj8oh3mzzujah2afk','2021-03-13 16:04:27','2021-04-10 12:21:31'),(2,1,'abo','users','管理员','b6etj4qcv6yx4yolkpis47dl5ct29vst','2021-03-13 16:05:48','2021-04-10 12:20:39'),(3,1614241036888,'1','yonghu','用户','w59s1pisbi8g0x8b2ur0mwjdewf0lepf','2021-03-13 16:18:05','2021-03-13 09:22:12'),(4,1618051719320,'222','yonghu','用户','vqybmnhr6no0eib3oxxl79ims7f0l4nb','2021-04-10 18:48:45','2021-04-10 11:48:45');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-03-13 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  `heimd` int(11) DEFAULT '0' COMMENT '黑名单',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1618051719321 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`,`heimd`) values (11,'2021-03-13 15:59:12','111','111','姓名1','http://localhost:8080/qianghuichapin/upload/1615036163640.jpg','男','13823888881',5531.5,0),(12,'2021-03-13 15:59:12','用户2','123456','姓名2','http://localhost:8080/qianghuichapin/upload/1615036189919.jpg','男','13823888882',100,0),(13,'2021-03-13 15:59:12','用户3','123456','姓名3','http://localhost:8080/qianghuichapin/upload/1615036201218.jpg','男','13823888883',100,0),(14,'2021-03-13 15:59:12','用户4','123456','姓名4','http://localhost:8080/qianghuichapin/upload/1615036215497.jpg','男','13823888884',100,0),(15,'2021-03-13 15:59:12','用户5','123456','姓名5','http://localhost:8080/qianghuichapin/upload/1615036231399.jpg','男','13823888885',100,0),(16,'2021-03-13 15:59:12','用户6','123456','姓名6','http://localhost:8080/qianghuichapin/upload/1615036258696.jpg','男','13823888886',100,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
