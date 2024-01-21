/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot43q56
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot43q56` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot43q56`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot43q56/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot43q56/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot43q56/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `fanxiaoqingkuang` */

DROP TABLE IF EXISTS `fanxiaoqingkuang`;

CREATE TABLE `fanxiaoqingkuang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fanxiaozhuangtai` varchar(200) DEFAULT NULL COMMENT '返校状态',
  `beizhu` longtext COMMENT '备注',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='返校情况';

/*Data for the table `fanxiaoqingkuang` */

insert  into `fanxiaoqingkuang`(`id`,`addtime`,`fanxiaozhuangtai`,`beizhu`,`gonghao`,`jiaoshixingming`,`xingbie`) values (91,'2021-04-04 11:13:17','已返校','备注1','工号1','教师姓名1','性别1'),(92,'2021-04-04 11:13:17','已返校','备注2','工号2','教师姓名2','性别2'),(93,'2021-04-04 11:13:17','已返校','备注3','工号3','教师姓名3','性别3'),(94,'2021-04-04 11:13:17','已返校','备注4','工号4','教师姓名4','性别4'),(95,'2021-04-04 11:13:17','已返校','备注5','工号5','教师姓名5','性别5'),(96,'2021-04-04 11:13:17','已返校','备注6','工号6','教师姓名6','性别6');

/*Table structure for table `fanxiaoxinxi` */

DROP TABLE IF EXISTS `fanxiaoxinxi`;

CREATE TABLE `fanxiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fanxiaozhuangtai` varchar(200) DEFAULT NULL COMMENT '返校状态',
  `beizhu` longtext COMMENT '备注',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='返校信息';

/*Data for the table `fanxiaoxinxi` */

insert  into `fanxiaoxinxi`(`id`,`addtime`,`fanxiaozhuangtai`,`beizhu`,`xuehao`,`xingming`,`xueyuan`,`zhuanye`,`sushehao`) values (71,'2021-04-04 11:13:17','已返校','备注1','学号1','姓名1','学院1','专业1','宿舍号1'),(72,'2021-04-04 11:13:17','已返校','备注2','学号2','姓名2','学院2','专业2','宿舍号2'),(73,'2021-04-04 11:13:17','已返校','备注3','学号3','姓名3','学院3','专业3','宿舍号3'),(74,'2021-04-04 11:13:17','已返校','备注4','学号4','姓名4','学院4','专业4','宿舍号4'),(75,'2021-04-04 11:13:17','已返校','备注5','学号5','姓名5','学院5','专业5','宿舍号5'),(76,'2021-04-04 11:13:17','已返校','备注6','学号6','姓名6','学院6','专业6','宿舍号6');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`shenfenzheng`,`xingbie`,`zhaopian`,`zhicheng`,`lianxidianhua`,`jiaoshiyouxiang`) values (21,'2021-04-04 11:13:17','教师1','123456','教师姓名1','440300199101010001','男','http://localhost:8080/springboot43q56/upload/jiaoshi_zhaopian1.jpg','高级讲师','13823888881','773890001@qq.com'),(22,'2021-04-04 11:13:17','教师2','123456','教师姓名2','440300199202020002','男','http://localhost:8080/springboot43q56/upload/jiaoshi_zhaopian2.jpg','高级讲师','13823888882','773890002@qq.com'),(23,'2021-04-04 11:13:17','教师3','123456','教师姓名3','440300199303030003','男','http://localhost:8080/springboot43q56/upload/jiaoshi_zhaopian3.jpg','高级讲师','13823888883','773890003@qq.com'),(24,'2021-04-04 11:13:17','教师4','123456','教师姓名4','440300199404040004','男','http://localhost:8080/springboot43q56/upload/jiaoshi_zhaopian4.jpg','高级讲师','13823888884','773890004@qq.com'),(25,'2021-04-04 11:13:17','教师5','123456','教师姓名5','440300199505050005','男','http://localhost:8080/springboot43q56/upload/jiaoshi_zhaopian5.jpg','高级讲师','13823888885','773890005@qq.com'),(26,'2021-04-04 11:13:17','教师6','123456','教师姓名6','440300199606060006','男','http://localhost:8080/springboot43q56/upload/jiaoshi_zhaopian6.jpg','高级讲师','13823888886','773890006@qq.com');

/*Table structure for table `shujucaiji` */

DROP TABLE IF EXISTS `shujucaiji`;

CREATE TABLE `shujucaiji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jinqizhuzhi` varchar(200) DEFAULT NULL COMMENT '近期住址',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `waichudidian` longtext NOT NULL COMMENT '外出地点',
  `tiwen` float NOT NULL COMMENT '体温',
  `shentizhuangkuang` varchar(200) NOT NULL COMMENT '身体状况',
  `buliangqingkuang` longtext COMMENT '不良情况',
  `beizhu` longtext COMMENT '备注',
  `dengjishijian` datetime NOT NULL COMMENT '登记时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='数据采集';

/*Data for the table `shujucaiji` */

insert  into `shujucaiji`(`id`,`addtime`,`jinqizhuzhi`,`jiatingzhuzhi`,`waichudidian`,`tiwen`,`shentizhuangkuang`,`buliangqingkuang`,`beizhu`,`dengjishijian`,`gonghao`,`jiaoshixingming`,`xingbie`) values (81,'2021-04-04 11:13:17','近期住址1','家庭住址1','外出地点1',1,'良好','不良情况1','备注1','2021-04-04 11:13:17','工号1','教师姓名1','性别1'),(82,'2021-04-04 11:13:17','近期住址2','家庭住址2','外出地点2',2,'良好','不良情况2','备注2','2021-04-04 11:13:17','工号2','教师姓名2','性别2'),(83,'2021-04-04 11:13:17','近期住址3','家庭住址3','外出地点3',3,'良好','不良情况3','备注3','2021-04-04 11:13:17','工号3','教师姓名3','性别3'),(84,'2021-04-04 11:13:17','近期住址4','家庭住址4','外出地点4',4,'良好','不良情况4','备注4','2021-04-04 11:13:17','工号4','教师姓名4','性别4'),(85,'2021-04-04 11:13:17','近期住址5','家庭住址5','外出地点5',5,'良好','不良情况5','备注5','2021-04-04 11:13:17','工号5','教师姓名5','性别5'),(86,'2021-04-04 11:13:17','近期住址6','家庭住址6','外出地点6',6,'良好','不良情况6','备注6','2021-04-04 11:13:17','工号6','教师姓名6','性别6');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'学生1','xuesheng','学生','xwjmgfx5k3yq21rfflmz8xn2obt0x3rk','2021-04-04 11:29:32','2021-04-04 12:29:32');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-04 11:13:18');

/*Table structure for table `wenjuandiaocha` */

DROP TABLE IF EXISTS `wenjuandiaocha`;

CREATE TABLE `wenjuandiaocha` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shenfen` varchar(200) DEFAULT NULL COMMENT '身份',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tianbaozhuangtai` varchar(200) DEFAULT NULL COMMENT '填报状态',
  `tianbaoshijian` datetime DEFAULT NULL COMMENT '填报时间',
  `wentiyi` varchar(200) DEFAULT NULL COMMENT '问题一',
  `huidayi` varchar(200) NOT NULL COMMENT '回答一',
  `wentier` varchar(200) DEFAULT NULL COMMENT '问题二',
  `huidaer` varchar(200) NOT NULL COMMENT '回答二',
  `wentisan` varchar(200) DEFAULT NULL COMMENT '问题三',
  `huidasan` varchar(200) NOT NULL COMMENT '回答三',
  `wentisi` varchar(200) DEFAULT NULL COMMENT '问题四',
  `huidasi` varchar(200) NOT NULL COMMENT '回答四',
  `wentiwu` varchar(200) DEFAULT NULL COMMENT '问题五',
  `huidawu` varchar(200) NOT NULL COMMENT '回答五',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='问卷调查';

/*Data for the table `wenjuandiaocha` */

insert  into `wenjuandiaocha`(`id`,`addtime`,`xingming`,`xingbie`,`shenfen`,`biaoti`,`tianbaozhuangtai`,`tianbaoshijian`,`wentiyi`,`huidayi`,`wentier`,`huidaer`,`wentisan`,`huidasan`,`wentisi`,`huidasi`,`wentiwu`,`huidawu`) values (61,'2021-04-04 11:13:17','姓名1','男','教师','标题1','已填报','2021-04-04 11:13:17','问题一1','回答一1','问题二1','回答二1','问题三1','回答三1','问题四1','回答四1','问题五1','回答五1'),(62,'2021-04-04 11:13:17','姓名2','男','教师','标题2','已填报','2021-04-04 11:13:17','问题一2','回答一2','问题二2','回答二2','问题三2','回答三2','问题四2','回答四2','问题五2','回答五2'),(63,'2021-04-04 11:13:17','姓名3','男','教师','标题3','已填报','2021-04-04 11:13:17','问题一3','回答一3','问题二3','回答二3','问题三3','回答三3','问题四3','回答四3','问题五3','回答五3'),(64,'2021-04-04 11:13:17','姓名4','男','教师','标题4','已填报','2021-04-04 11:13:17','问题一4','回答一4','问题二4','回答二4','问题三4','回答三4','问题四4','回答四4','问题五4','回答五4'),(65,'2021-04-04 11:13:17','姓名5','男','教师','标题5','已填报','2021-04-04 11:13:17','问题一5','回答一5','问题二5','回答二5','问题三5','回答三5','问题四5','回答四5','问题五5','回答五5'),(66,'2021-04-04 11:13:17','姓名6','男','教师','标题6','已填报','2021-04-04 11:13:17','问题一6','回答一6','问题二6','回答二6','问题三6','回答三6','问题四6','回答四6','问题五6','回答五6');

/*Table structure for table `wenjuanfenlei` */

DROP TABLE IF EXISTS `wenjuanfenlei`;

CREATE TABLE `wenjuanfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='问卷分类';

/*Data for the table `wenjuanfenlei` */

insert  into `wenjuanfenlei`(`id`,`addtime`,`fenlei`) values (41,'2021-04-04 11:13:17','分类1'),(42,'2021-04-04 11:13:17','分类2'),(43,'2021-04-04 11:13:17','分类3'),(44,'2021-04-04 11:13:17','分类4'),(45,'2021-04-04 11:13:17','分类5'),(46,'2021-04-04 11:13:17','分类6');

/*Table structure for table `xinxicaiji` */

DROP TABLE IF EXISTS `xinxicaiji`;

CREATE TABLE `xinxicaiji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jinqizhuzhi` varchar(200) DEFAULT NULL COMMENT '近期住址',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `buliangqingkuang` longtext COMMENT '不良情况',
  `waichudidian` longtext NOT NULL COMMENT '外出地点',
  `tiwen` float NOT NULL COMMENT '体温',
  `shentizhuangkuang` varchar(200) NOT NULL COMMENT '身体状况',
  `beizhu` longtext COMMENT '备注',
  `dengjishijian` datetime NOT NULL COMMENT '登记时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='信息采集';

/*Data for the table `xinxicaiji` */

insert  into `xinxicaiji`(`id`,`addtime`,`jinqizhuzhi`,`jiatingzhuzhi`,`buliangqingkuang`,`waichudidian`,`tiwen`,`shentizhuangkuang`,`beizhu`,`dengjishijian`,`xuehao`,`xingming`,`xingbie`) values (31,'2021-04-04 11:13:17','近期住址1','家庭住址1','不良情况1','外出地点1',1,'良好','备注1','2021-04-04 11:13:17','学号1','姓名1','性别1'),(32,'2021-04-04 11:13:17','近期住址2','家庭住址2','不良情况2','外出地点2',2,'良好','备注2','2021-04-04 11:13:17','学号2','姓名2','性别2'),(33,'2021-04-04 11:13:17','近期住址3','家庭住址3','不良情况3','外出地点3',3,'良好','备注3','2021-04-04 11:13:17','学号3','姓名3','性别3'),(34,'2021-04-04 11:13:17','近期住址4','家庭住址4','不良情况4','外出地点4',4,'良好','备注4','2021-04-04 11:13:17','学号4','姓名4','性别4'),(35,'2021-04-04 11:13:17','近期住址5','家庭住址5','不良情况5','外出地点5',5,'良好','备注5','2021-04-04 11:13:17','学号5','姓名5','性别5'),(36,'2021-04-04 11:13:17','近期住址6','家庭住址6','不良情况6','外出地点6',6,'良好','备注6','2021-04-04 11:13:17','学号6','姓名6','性别6');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`xueyuan`,`zhuanye`,`shouji`,`youxiang`,`shenfenzheng`,`sushehao`,`zhaopian`) values (11,'2021-04-04 11:13:17','学生1','123456','姓名1','男',1,'学院1','专业1','13823888881','773890001@qq.com','440300199101010001','宿舍号1','http://localhost:8080/springboot43q56/upload/xuesheng_zhaopian1.jpg'),(12,'2021-04-04 11:13:17','学生2','123456','姓名2','男',2,'学院2','专业2','13823888882','773890002@qq.com','440300199202020002','宿舍号2','http://localhost:8080/springboot43q56/upload/xuesheng_zhaopian2.jpg'),(13,'2021-04-04 11:13:17','学生3','123456','姓名3','男',3,'学院3','专业3','13823888883','773890003@qq.com','440300199303030003','宿舍号3','http://localhost:8080/springboot43q56/upload/xuesheng_zhaopian3.jpg'),(14,'2021-04-04 11:13:17','学生4','123456','姓名4','男',4,'学院4','专业4','13823888884','773890004@qq.com','440300199404040004','宿舍号4','http://localhost:8080/springboot43q56/upload/xuesheng_zhaopian4.jpg'),(15,'2021-04-04 11:13:17','学生5','123456','姓名5','男',5,'学院5','专业5','13823888885','773890005@qq.com','440300199505050005','宿舍号5','http://localhost:8080/springboot43q56/upload/xuesheng_zhaopian5.jpg'),(16,'2021-04-04 11:13:17','学生6','123456','姓名6','男',6,'学院6','专业6','13823888886','773890006@qq.com','440300199606060006','宿舍号6','http://localhost:8080/springboot43q56/upload/xuesheng_zhaopian6.jpg');

/*Table structure for table `yiqingwenjuan` */

DROP TABLE IF EXISTS `yiqingwenjuan`;

CREATE TABLE `yiqingwenjuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `wenjuanfenlei` varchar(200) DEFAULT NULL COMMENT '问卷分类',
  `wentiyi` varchar(200) NOT NULL COMMENT '问题一',
  `wentier` varchar(200) NOT NULL COMMENT '问题二',
  `wentisan` varchar(200) NOT NULL COMMENT '问题三',
  `wentisi` varchar(200) NOT NULL COMMENT '问题四',
  `wentiwu` varchar(200) NOT NULL COMMENT '问题五',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='疫情问卷';

/*Data for the table `yiqingwenjuan` */

insert  into `yiqingwenjuan`(`id`,`addtime`,`bianhao`,`biaoti`,`wenjuanfenlei`,`wentiyi`,`wentier`,`wentisan`,`wentisi`,`wentiwu`) values (51,'2021-04-04 11:13:17','编号1','标题1','问卷分类1','问题一1','问题二1','问题三1','问题四1','问题五1'),(52,'2021-04-04 11:13:17','编号2','标题2','问卷分类2','问题一2','问题二2','问题三2','问题四2','问题五2'),(53,'2021-04-04 11:13:17','编号3','标题3','问卷分类3','问题一3','问题二3','问题三3','问题四3','问题五3'),(54,'2021-04-04 11:13:17','编号4','标题4','问卷分类4','问题一4','问题二4','问题三4','问题四4','问题五4'),(55,'2021-04-04 11:13:17','编号5','标题5','问卷分类5','问题一5','问题二5','问题三5','问题四5','问题五5'),(56,'2021-04-04 11:13:17','编号6','标题6','问卷分类6','问题一6','问题二6','问题三6','问题四6','问题五6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
