/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm9wv94
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm9wv94` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm9wv94`;

/*Table structure for table `baoxiuxinxi` */

DROP TABLE IF EXISTS `baoxiuxinxi`;

CREATE TABLE `baoxiuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `baoxiuwupin` varchar(200) NOT NULL COMMENT '报修物品',
  `baoxiuwenti` longtext COMMENT '报修问题',
  `baoxiuriqi` datetime DEFAULT NULL COMMENT '报修日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='报修信息';

/*Data for the table `baoxiuxinxi` */

insert  into `baoxiuxinxi`(`id`,`addtime`,`bianhao`,`mingcheng`,`baoxiuwupin`,`baoxiuwenti`,`baoxiuriqi`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (61,'2021-05-20 20:15:04','编号1','名称1','报修物品1','报修问题1','2021-05-20 20:15:04','用户名1','姓名1','手机1','是','',1);
insert  into `baoxiuxinxi`(`id`,`addtime`,`bianhao`,`mingcheng`,`baoxiuwupin`,`baoxiuwenti`,`baoxiuriqi`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (62,'2021-05-20 20:15:04','编号2','名称2','报修物品2','报修问题2','2021-05-20 20:15:04','用户名2','姓名2','手机2','是','',2);
insert  into `baoxiuxinxi`(`id`,`addtime`,`bianhao`,`mingcheng`,`baoxiuwupin`,`baoxiuwenti`,`baoxiuriqi`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (63,'2021-05-20 20:15:04','编号3','名称3','报修物品3','报修问题3','2021-05-20 20:15:04','用户名3','姓名3','手机3','是','',3);
insert  into `baoxiuxinxi`(`id`,`addtime`,`bianhao`,`mingcheng`,`baoxiuwupin`,`baoxiuwenti`,`baoxiuriqi`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (64,'2021-05-20 20:15:04','编号4','名称4','报修物品4','报修问题4','2021-05-20 20:15:04','用户名4','姓名4','手机4','是','',4);
insert  into `baoxiuxinxi`(`id`,`addtime`,`bianhao`,`mingcheng`,`baoxiuwupin`,`baoxiuwenti`,`baoxiuriqi`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (65,'2021-05-20 20:15:04','编号5','名称5','报修物品5','报修问题5','2021-05-20 20:15:04','用户名5','姓名5','手机5','是','',5);
insert  into `baoxiuxinxi`(`id`,`addtime`,`bianhao`,`mingcheng`,`baoxiuwupin`,`baoxiuwenti`,`baoxiuriqi`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (66,'2021-05-20 20:15:04','编号6','名称6','报修物品6','报修问题6','2021-05-20 20:15:04','用户名6','姓名6','手机6','是','',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm9wv94/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm9wv94/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm9wv94/upload/picture3.jpg');

/*Table structure for table `discussjiazhengfuwu` */

DROP TABLE IF EXISTS `discussjiazhengfuwu`;

CREATE TABLE `discussjiazhengfuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='家政服务评论表';

/*Data for the table `discussjiazhengfuwu` */

insert  into `discussjiazhengfuwu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-05-20 20:15:04',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussjiazhengfuwu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (122,'2021-05-20 20:15:04',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussjiazhengfuwu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (123,'2021-05-20 20:15:04',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussjiazhengfuwu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (124,'2021-05-20 20:15:04',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussjiazhengfuwu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (125,'2021-05-20 20:15:04',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussjiazhengfuwu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (126,'2021-05-20 20:15:04',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `fangwuzulin` */

DROP TABLE IF EXISTS `fangwuzulin`;

CREATE TABLE `fangwuzulin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `louceng` varchar(200) DEFAULT NULL COMMENT '楼层',
  `danyuanhao` varchar(200) DEFAULT NULL COMMENT '单元号',
  `fangxing` varchar(200) NOT NULL COMMENT '房型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `huxing` varchar(200) DEFAULT NULL COMMENT '户型',
  `mianji` varchar(200) NOT NULL COMMENT '面积',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `ruzhuzhuangtai` varchar(200) DEFAULT NULL COMMENT '入住状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='房屋租赁';

/*Data for the table `fangwuzulin` */

insert  into `fangwuzulin`(`id`,`addtime`,`fangwumingcheng`,`louceng`,`danyuanhao`,`fangxing`,`tupian`,`huxing`,`mianji`,`jiage`,`xiangxidizhi`,`ruzhuzhuangtai`) values (21,'2021-05-20 20:15:04','房屋名称1','楼层1','单元号1','房型1','http://localhost:8080/ssm9wv94/upload/fangwuzulin_tupian1.jpg','电梯房','面积1',1,'详细地址1','未入住');
insert  into `fangwuzulin`(`id`,`addtime`,`fangwumingcheng`,`louceng`,`danyuanhao`,`fangxing`,`tupian`,`huxing`,`mianji`,`jiage`,`xiangxidizhi`,`ruzhuzhuangtai`) values (22,'2021-05-20 20:15:04','房屋名称2','楼层2','单元号2','房型2','http://localhost:8080/ssm9wv94/upload/fangwuzulin_tupian2.jpg','电梯房','面积2',2,'详细地址2','未入住');
insert  into `fangwuzulin`(`id`,`addtime`,`fangwumingcheng`,`louceng`,`danyuanhao`,`fangxing`,`tupian`,`huxing`,`mianji`,`jiage`,`xiangxidizhi`,`ruzhuzhuangtai`) values (23,'2021-05-20 20:15:04','房屋名称3','楼层3','单元号3','房型3','http://localhost:8080/ssm9wv94/upload/fangwuzulin_tupian3.jpg','电梯房','面积3',3,'详细地址3','未入住');
insert  into `fangwuzulin`(`id`,`addtime`,`fangwumingcheng`,`louceng`,`danyuanhao`,`fangxing`,`tupian`,`huxing`,`mianji`,`jiage`,`xiangxidizhi`,`ruzhuzhuangtai`) values (24,'2021-05-20 20:15:04','房屋名称4','楼层4','单元号4','房型4','http://localhost:8080/ssm9wv94/upload/fangwuzulin_tupian4.jpg','电梯房','面积4',4,'详细地址4','未入住');
insert  into `fangwuzulin`(`id`,`addtime`,`fangwumingcheng`,`louceng`,`danyuanhao`,`fangxing`,`tupian`,`huxing`,`mianji`,`jiage`,`xiangxidizhi`,`ruzhuzhuangtai`) values (25,'2021-05-20 20:15:04','房屋名称5','楼层5','单元号5','房型5','http://localhost:8080/ssm9wv94/upload/fangwuzulin_tupian5.jpg','电梯房','面积5',5,'详细地址5','未入住');
insert  into `fangwuzulin`(`id`,`addtime`,`fangwumingcheng`,`louceng`,`danyuanhao`,`fangxing`,`tupian`,`huxing`,`mianji`,`jiage`,`xiangxidizhi`,`ruzhuzhuangtai`) values (26,'2021-05-20 20:15:04','房屋名称6','楼层6','单元号6','房型6','http://localhost:8080/ssm9wv94/upload/fangwuzulin_tupian6.jpg','电梯房','面积6',6,'详细地址6','未入住');

/*Table structure for table `jiazhengfuwu` */

DROP TABLE IF EXISTS `jiazhengfuwu`;

CREATE TABLE `jiazhengfuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwuxiangmu` varchar(200) NOT NULL COMMENT '服务项目',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fuwushijian` varchar(200) DEFAULT NULL COMMENT '服务时间',
  `xiaoshijiage` int(11) NOT NULL COMMENT '小时价格',
  `zixundianhua` varchar(200) DEFAULT NULL COMMENT '咨询电话',
  `fuwuneirong` longtext COMMENT '服务内容',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='家政服务';

/*Data for the table `jiazhengfuwu` */

insert  into `jiazhengfuwu`(`id`,`addtime`,`fuwuxiangmu`,`tupian`,`fuwushijian`,`xiaoshijiage`,`zixundianhua`,`fuwuneirong`,`thumbsupnum`,`crazilynum`) values (41,'2021-05-20 20:15:04','服务项目1','http://localhost:8080/ssm9wv94/upload/jiazhengfuwu_tupian1.jpg','服务时间1',1,'13823888881','服务内容1',1,1);
insert  into `jiazhengfuwu`(`id`,`addtime`,`fuwuxiangmu`,`tupian`,`fuwushijian`,`xiaoshijiage`,`zixundianhua`,`fuwuneirong`,`thumbsupnum`,`crazilynum`) values (42,'2021-05-20 20:15:04','服务项目2','http://localhost:8080/ssm9wv94/upload/jiazhengfuwu_tupian2.jpg','服务时间2',2,'13823888882','服务内容2',2,2);
insert  into `jiazhengfuwu`(`id`,`addtime`,`fuwuxiangmu`,`tupian`,`fuwushijian`,`xiaoshijiage`,`zixundianhua`,`fuwuneirong`,`thumbsupnum`,`crazilynum`) values (43,'2021-05-20 20:15:04','服务项目3','http://localhost:8080/ssm9wv94/upload/jiazhengfuwu_tupian3.jpg','服务时间3',3,'13823888883','服务内容3',3,3);
insert  into `jiazhengfuwu`(`id`,`addtime`,`fuwuxiangmu`,`tupian`,`fuwushijian`,`xiaoshijiage`,`zixundianhua`,`fuwuneirong`,`thumbsupnum`,`crazilynum`) values (44,'2021-05-20 20:15:04','服务项目4','http://localhost:8080/ssm9wv94/upload/jiazhengfuwu_tupian4.jpg','服务时间4',4,'13823888884','服务内容4',4,4);
insert  into `jiazhengfuwu`(`id`,`addtime`,`fuwuxiangmu`,`tupian`,`fuwushijian`,`xiaoshijiage`,`zixundianhua`,`fuwuneirong`,`thumbsupnum`,`crazilynum`) values (45,'2021-05-20 20:15:04','服务项目5','http://localhost:8080/ssm9wv94/upload/jiazhengfuwu_tupian5.jpg','服务时间5',5,'13823888885','服务内容5',5,5);
insert  into `jiazhengfuwu`(`id`,`addtime`,`fuwuxiangmu`,`tupian`,`fuwushijian`,`xiaoshijiage`,`zixundianhua`,`fuwuneirong`,`thumbsupnum`,`crazilynum`) values (46,'2021-05-20 20:15:04','服务项目6','http://localhost:8080/ssm9wv94/upload/jiazhengfuwu_tupian6.jpg','服务时间6',6,'13823888886','服务内容6',6,6);

/*Table structure for table `jiazhengyuyue` */

DROP TABLE IF EXISTS `jiazhengyuyue`;

CREATE TABLE `jiazhengyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `fuwuxiangmu` varchar(200) DEFAULT NULL COMMENT '服务项目',
  `xiaoshijiage` int(11) NOT NULL COMMENT '小时价格',
  `yuyueshizhang` int(11) NOT NULL COMMENT '预约时长',
  `zongjiage` int(11) NOT NULL COMMENT '总价格',
  `yuyueneirong` longtext COMMENT '预约内容',
  `yuyueshijian` date DEFAULT NULL COMMENT '预约时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='家政预约';

/*Data for the table `jiazhengyuyue` */

insert  into `jiazhengyuyue`(`id`,`addtime`,`dingdanbianhao`,`fuwuxiangmu`,`xiaoshijiage`,`yuyueshizhang`,`zongjiage`,`yuyueneirong`,`yuyueshijian`,`yonghuming`,`xingming`,`shouji`,`dizhi`,`sfsh`,`shhf`,`ispay`,`userid`) values (51,'2021-05-20 20:15:04','订单编号1','服务项目1',1,1,1,'预约内容1','2021-05-20','用户名1','姓名1','手机1','地址1','是','','未支付',1);
insert  into `jiazhengyuyue`(`id`,`addtime`,`dingdanbianhao`,`fuwuxiangmu`,`xiaoshijiage`,`yuyueshizhang`,`zongjiage`,`yuyueneirong`,`yuyueshijian`,`yonghuming`,`xingming`,`shouji`,`dizhi`,`sfsh`,`shhf`,`ispay`,`userid`) values (52,'2021-05-20 20:15:04','订单编号2','服务项目2',2,2,2,'预约内容2','2021-05-20','用户名2','姓名2','手机2','地址2','是','','未支付',2);
insert  into `jiazhengyuyue`(`id`,`addtime`,`dingdanbianhao`,`fuwuxiangmu`,`xiaoshijiage`,`yuyueshizhang`,`zongjiage`,`yuyueneirong`,`yuyueshijian`,`yonghuming`,`xingming`,`shouji`,`dizhi`,`sfsh`,`shhf`,`ispay`,`userid`) values (53,'2021-05-20 20:15:04','订单编号3','服务项目3',3,3,3,'预约内容3','2021-05-20','用户名3','姓名3','手机3','地址3','是','','未支付',3);
insert  into `jiazhengyuyue`(`id`,`addtime`,`dingdanbianhao`,`fuwuxiangmu`,`xiaoshijiage`,`yuyueshizhang`,`zongjiage`,`yuyueneirong`,`yuyueshijian`,`yonghuming`,`xingming`,`shouji`,`dizhi`,`sfsh`,`shhf`,`ispay`,`userid`) values (54,'2021-05-20 20:15:04','订单编号4','服务项目4',4,4,4,'预约内容4','2021-05-20','用户名4','姓名4','手机4','地址4','是','','未支付',4);
insert  into `jiazhengyuyue`(`id`,`addtime`,`dingdanbianhao`,`fuwuxiangmu`,`xiaoshijiage`,`yuyueshizhang`,`zongjiage`,`yuyueneirong`,`yuyueshijian`,`yonghuming`,`xingming`,`shouji`,`dizhi`,`sfsh`,`shhf`,`ispay`,`userid`) values (55,'2021-05-20 20:15:04','订单编号5','服务项目5',5,5,5,'预约内容5','2021-05-20','用户名5','姓名5','手机5','地址5','是','','未支付',5);
insert  into `jiazhengyuyue`(`id`,`addtime`,`dingdanbianhao`,`fuwuxiangmu`,`xiaoshijiage`,`yuyueshizhang`,`zongjiage`,`yuyueneirong`,`yuyueshijian`,`yonghuming`,`xingming`,`shouji`,`dizhi`,`sfsh`,`shhf`,`ispay`,`userid`) values (56,'2021-05-20 20:15:04','订单编号6','服务项目6',6,6,6,'预约内容6','2021-05-20','用户名6','姓名6','手机6','地址6','是','','未支付',6);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (111,'2021-05-20 20:15:04',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (112,'2021-05-20 20:15:04',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (113,'2021-05-20 20:15:04',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (114,'2021-05-20 20:15:04',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (115,'2021-05-20 20:15:04',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (116,'2021-05-20 20:15:04',6,'用户名6','留言内容6','回复内容6');

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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-05-20 20:15:04','标题1','简介1','http://localhost:8080/ssm9wv94/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (102,'2021-05-20 20:15:04','标题2','简介2','http://localhost:8080/ssm9wv94/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (103,'2021-05-20 20:15:04','标题3','简介3','http://localhost:8080/ssm9wv94/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (104,'2021-05-20 20:15:04','标题4','简介4','http://localhost:8080/ssm9wv94/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (105,'2021-05-20 20:15:04','标题5','简介5','http://localhost:8080/ssm9wv94/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (106,'2021-05-20 20:15:04','标题6','简介6','http://localhost:8080/ssm9wv94/upload/news_picture6.jpg','内容6');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','ipdugl2zeq4r7a1dy8jyuxrcvv9ncdrt','2021-05-20 20:25:36','2021-05-20 21:25:36');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,11,'1','yonghu','用户','cgk7pos2xw6u1ygaq6zi727k2oyaxwpc','2021-05-20 20:27:32','2021-05-20 21:27:32');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-20 20:15:04');

/*Table structure for table `wuyejiaofei` */

DROP TABLE IF EXISTS `wuyejiaofei`;

CREATE TABLE `wuyejiaofei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `wuyefei` float NOT NULL COMMENT '物业费',
  `shuidianfei` float NOT NULL COMMENT '水电费',
  `kuandaifei` float NOT NULL COMMENT '宽带费',
  `cheweifei` float NOT NULL COMMENT '车位费',
  `ranqifei` float NOT NULL COMMENT '燃气费',
  `zongfeiyong` float NOT NULL COMMENT '总费用',
  `jiaofeishijian` varchar(200) DEFAULT NULL COMMENT '缴费时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='物业缴费';

/*Data for the table `wuyejiaofei` */

insert  into `wuyejiaofei`(`id`,`addtime`,`dingdanbianhao`,`mingcheng`,`yonghuming`,`xingming`,`wuyefei`,`shuidianfei`,`kuandaifei`,`cheweifei`,`ranqifei`,`zongfeiyong`,`jiaofeishijian`,`ispay`,`userid`) values (71,'2021-05-20 20:15:04','订单编号1','名称1','用户名1','姓名1',1,1,1,1,1,1,'缴费时间1','未支付',1);
insert  into `wuyejiaofei`(`id`,`addtime`,`dingdanbianhao`,`mingcheng`,`yonghuming`,`xingming`,`wuyefei`,`shuidianfei`,`kuandaifei`,`cheweifei`,`ranqifei`,`zongfeiyong`,`jiaofeishijian`,`ispay`,`userid`) values (72,'2021-05-20 20:15:04','订单编号2','名称2','用户名2','姓名2',2,2,2,2,2,2,'缴费时间2','未支付',2);
insert  into `wuyejiaofei`(`id`,`addtime`,`dingdanbianhao`,`mingcheng`,`yonghuming`,`xingming`,`wuyefei`,`shuidianfei`,`kuandaifei`,`cheweifei`,`ranqifei`,`zongfeiyong`,`jiaofeishijian`,`ispay`,`userid`) values (73,'2021-05-20 20:15:04','订单编号3','名称3','用户名3','姓名3',3,3,3,3,3,3,'缴费时间3','未支付',3);
insert  into `wuyejiaofei`(`id`,`addtime`,`dingdanbianhao`,`mingcheng`,`yonghuming`,`xingming`,`wuyefei`,`shuidianfei`,`kuandaifei`,`cheweifei`,`ranqifei`,`zongfeiyong`,`jiaofeishijian`,`ispay`,`userid`) values (74,'2021-05-20 20:15:04','订单编号4','名称4','用户名4','姓名4',4,4,4,4,4,4,'缴费时间4','未支付',4);
insert  into `wuyejiaofei`(`id`,`addtime`,`dingdanbianhao`,`mingcheng`,`yonghuming`,`xingming`,`wuyefei`,`shuidianfei`,`kuandaifei`,`cheweifei`,`ranqifei`,`zongfeiyong`,`jiaofeishijian`,`ispay`,`userid`) values (75,'2021-05-20 20:15:04','订单编号5','名称5','用户名5','姓名5',5,5,5,5,5,5,'缴费时间5','未支付',5);
insert  into `wuyejiaofei`(`id`,`addtime`,`dingdanbianhao`,`mingcheng`,`yonghuming`,`xingming`,`wuyefei`,`shuidianfei`,`kuandaifei`,`cheweifei`,`ranqifei`,`zongfeiyong`,`jiaofeishijian`,`ispay`,`userid`) values (76,'2021-05-20 20:15:04','订单编号6','名称6','用户名6','姓名6',6,6,6,6,6,6,'缴费时间6','未支付',6);

/*Table structure for table `xiaoquditu` */

DROP TABLE IF EXISTS `xiaoquditu`;

CREATE TABLE `xiaoquditu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoqumingcheng` varchar(200) NOT NULL COMMENT '小区名称',
  `jianzhumingcheng` varchar(200) NOT NULL COMMENT '建筑名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `jianshu` longtext COMMENT '简述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='小区地图';

/*Data for the table `xiaoquditu` */

insert  into `xiaoquditu`(`id`,`addtime`,`xiaoqumingcheng`,`jianzhumingcheng`,`tupian`,`weizhi`,`jianshu`) values (81,'2021-05-20 20:15:04','小区名称1','建筑名称1','http://localhost:8080/ssm9wv94/upload/xiaoquditu_tupian1.jpg','位置1','简述1');
insert  into `xiaoquditu`(`id`,`addtime`,`xiaoqumingcheng`,`jianzhumingcheng`,`tupian`,`weizhi`,`jianshu`) values (82,'2021-05-20 20:15:04','小区名称2','建筑名称2','http://localhost:8080/ssm9wv94/upload/xiaoquditu_tupian2.jpg','位置2','简述2');
insert  into `xiaoquditu`(`id`,`addtime`,`xiaoqumingcheng`,`jianzhumingcheng`,`tupian`,`weizhi`,`jianshu`) values (83,'2021-05-20 20:15:04','小区名称3','建筑名称3','http://localhost:8080/ssm9wv94/upload/xiaoquditu_tupian3.jpg','位置3','简述3');
insert  into `xiaoquditu`(`id`,`addtime`,`xiaoqumingcheng`,`jianzhumingcheng`,`tupian`,`weizhi`,`jianshu`) values (84,'2021-05-20 20:15:04','小区名称4','建筑名称4','http://localhost:8080/ssm9wv94/upload/xiaoquditu_tupian4.jpg','位置4','简述4');
insert  into `xiaoquditu`(`id`,`addtime`,`xiaoqumingcheng`,`jianzhumingcheng`,`tupian`,`weizhi`,`jianshu`) values (85,'2021-05-20 20:15:04','小区名称5','建筑名称5','http://localhost:8080/ssm9wv94/upload/xiaoquditu_tupian5.jpg','位置5','简述5');
insert  into `xiaoquditu`(`id`,`addtime`,`xiaoqumingcheng`,`jianzhumingcheng`,`tupian`,`weizhi`,`jianshu`) values (86,'2021-05-20 20:15:04','小区名称6','建筑名称6','http://localhost:8080/ssm9wv94/upload/xiaoquditu_tupian6.jpg','位置6','简述6');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (11,'2021-05-20 20:15:04','1','1','姓名1','男','http://localhost:8080/ssm9wv94/upload/yonghu_touxiang1.jpg','773890001@qq.com','13823888881');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (12,'2021-05-20 20:15:04','用户2','123456','姓名2','男','http://localhost:8080/ssm9wv94/upload/yonghu_touxiang2.jpg','773890002@qq.com','13823888882');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (13,'2021-05-20 20:15:04','用户3','123456','姓名3','男','http://localhost:8080/ssm9wv94/upload/yonghu_touxiang3.jpg','773890003@qq.com','13823888883');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (14,'2021-05-20 20:15:04','用户4','123456','姓名4','男','http://localhost:8080/ssm9wv94/upload/yonghu_touxiang4.jpg','773890004@qq.com','13823888884');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (15,'2021-05-20 20:15:04','用户5','123456','姓名5','男','http://localhost:8080/ssm9wv94/upload/yonghu_touxiang5.jpg','773890005@qq.com','13823888885');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (16,'2021-05-20 20:15:04','用户6','123456','姓名6','男','http://localhost:8080/ssm9wv94/upload/yonghu_touxiang6.jpg','773890006@qq.com','13823888886');

/*Table structure for table `zhuhuxinxi` */

DROP TABLE IF EXISTS `zhuhuxinxi`;

CREATE TABLE `zhuhuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `louceng` varchar(200) DEFAULT NULL COMMENT '楼层',
  `danyuanhao` varchar(200) DEFAULT NULL COMMENT '单元号',
  `shifouruzhu` varchar(200) DEFAULT NULL COMMENT '是否入住',
  `ruzhushijian` date DEFAULT NULL COMMENT '入住时间',
  `huzhuxingming` varchar(200) NOT NULL COMMENT '户主姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `zhiye` varchar(200) DEFAULT NULL COMMENT '职业',
  `gongzuodanwei` varchar(200) DEFAULT NULL COMMENT '工作单位',
  `jiatingrenshu` varchar(200) NOT NULL COMMENT '家庭人数',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='住户信息';

/*Data for the table `zhuhuxinxi` */

insert  into `zhuhuxinxi`(`id`,`addtime`,`fangwumingcheng`,`louceng`,`danyuanhao`,`shifouruzhu`,`ruzhushijian`,`huzhuxingming`,`xingbie`,`nianling`,`zhiye`,`gongzuodanwei`,`jiatingrenshu`,`beizhu`) values (31,'2021-05-20 20:15:04','房屋名称1','楼层1','单元号1','已入住','2021-05-20','户主姓名1','男','年龄1','职业1','工作单位1','家庭人数1','备注1');
insert  into `zhuhuxinxi`(`id`,`addtime`,`fangwumingcheng`,`louceng`,`danyuanhao`,`shifouruzhu`,`ruzhushijian`,`huzhuxingming`,`xingbie`,`nianling`,`zhiye`,`gongzuodanwei`,`jiatingrenshu`,`beizhu`) values (32,'2021-05-20 20:15:04','房屋名称2','楼层2','单元号2','已入住','2021-05-20','户主姓名2','男','年龄2','职业2','工作单位2','家庭人数2','备注2');
insert  into `zhuhuxinxi`(`id`,`addtime`,`fangwumingcheng`,`louceng`,`danyuanhao`,`shifouruzhu`,`ruzhushijian`,`huzhuxingming`,`xingbie`,`nianling`,`zhiye`,`gongzuodanwei`,`jiatingrenshu`,`beizhu`) values (33,'2021-05-20 20:15:04','房屋名称3','楼层3','单元号3','已入住','2021-05-20','户主姓名3','男','年龄3','职业3','工作单位3','家庭人数3','备注3');
insert  into `zhuhuxinxi`(`id`,`addtime`,`fangwumingcheng`,`louceng`,`danyuanhao`,`shifouruzhu`,`ruzhushijian`,`huzhuxingming`,`xingbie`,`nianling`,`zhiye`,`gongzuodanwei`,`jiatingrenshu`,`beizhu`) values (34,'2021-05-20 20:15:04','房屋名称4','楼层4','单元号4','已入住','2021-05-20','户主姓名4','男','年龄4','职业4','工作单位4','家庭人数4','备注4');
insert  into `zhuhuxinxi`(`id`,`addtime`,`fangwumingcheng`,`louceng`,`danyuanhao`,`shifouruzhu`,`ruzhushijian`,`huzhuxingming`,`xingbie`,`nianling`,`zhiye`,`gongzuodanwei`,`jiatingrenshu`,`beizhu`) values (35,'2021-05-20 20:15:04','房屋名称5','楼层5','单元号5','已入住','2021-05-20','户主姓名5','男','年龄5','职业5','工作单位5','家庭人数5','备注5');
insert  into `zhuhuxinxi`(`id`,`addtime`,`fangwumingcheng`,`louceng`,`danyuanhao`,`shifouruzhu`,`ruzhushijian`,`huzhuxingming`,`xingbie`,`nianling`,`zhiye`,`gongzuodanwei`,`jiatingrenshu`,`beizhu`) values (36,'2021-05-20 20:15:04','房屋名称6','楼层6','单元号6','已入住','2021-05-20','户主姓名6','男','年龄6','职业6','工作单位6','家庭人数6','备注6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
