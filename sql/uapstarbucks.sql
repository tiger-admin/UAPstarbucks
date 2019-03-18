/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.18-log : Database - zjtblog
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
create database /*!32312 IF NOT EXISTS*/`zjtblog` /*!40100 DEFAULT CHARACTER SET utf8 */;

use `uapstarbucks`;

/*Table structure for table `t_menu` */

drop table if exists `t_menu`;

create table `t_menu` (
  `id` int(11) not null auto_increment,
  `icon` varchar(100) default null,
  `name` varchar(50) default null,
  `state` int(11) default null,
  `url` varchar(200) default null,
  `p_id` int(11) default null,
  primary key (`id`)
) engine=innodb auto_increment=2000010304 default charset=utf8;

/*Data for the table `t_menu` */

insert  into `t_menu`(`id`,`icon`,`name`,`state`,`url`,`p_id`) values (1,'menu-plugin','系统菜单',1,null,-1),(10,'&#xe68e;','内容管理',1,null,1),(60,'&#xe631;','系统管理',1,null,1),(61,'&#xe705;','新闻资讯',1,'http://www.ifeng.com/',1),(1000,'icon-text','文章管理',2,'https://www.hongxiu.com/',10),(6000,'&#xe631;','菜单管理',2,'admin/menu/tomunemanage',60),(6010,'icon-icon10','角色管理',2,'admin/role/torolemanage',60),(6020,'&#xe612;','用户管理',2,'admin/user/tousermanage',60),(6030,'&#xe631;','sql监控',2,'druid/index.html',60),(6040,'icon-ziliao','修改密码',2,'admin/user/toUpdatePassword',60),(6050,'icon-tuichu','安全退出',2,'user/logout',60),(6100,'icon-text','凤凰网',2,'http://www.ifeng.com/',61),(100000,'icon-vip','告警类型',3,'',1000),(200001,'icon-clock','工作台',2,null,10),(20000100,'icon-vip1','我的场景',3,'',200001),(20000101,'icon-vip2','所有场景',3,'',200001),(20000102,'icon-vip3','场景规则',3,'',200001),(20000103,'&#xe612;','我的告警',2,null,10),(2000010300,'icon-vip1','待处理',3,'',20000103),(2000010301,'icon-vip1','处理中',3,'',20000103),(2000010302,'icon-vip1','已关闭',3,'',20000103),(2000010303,'icon-icon10','所有告警',2,null,10);

/*Table structure for table `t_role` */

drop table if exists `t_role`;

create table `t_role` (
  `id` int(11) not null auto_increment,
  `bz` varchar(1000) default null,
  `name` varchar(50) default null,
  `remarks` varchar(1000) default null,
  primary key (`id`)
) engine=innodb auto_increment=21 default charset=utf8;

/*Data for the table `t_role` */

insert  into `t_role`(`id`,`bz`,`name`,`remarks`) values (1,'系统管理员 最高权限','管理员',null),(2,'主管','主管',null),(4,'采购员','采购员',null),(5,'销售经理','销售经理','22'),(7,'仓库管理员','仓库管理员',null),(9,'总经理','总经理',null),(15,'111111','111111',null),(16,'222','222222',null),(17,'33','333333',null),(18,'444444','444444',null),(19,'555','555555',null),(20,'666666','666666',null);

/*Table structure for table `t_role_menu` */

drop table if exists `t_role_menu`;

create table `t_role_menu` (
  `id` int(11) not null auto_increment,
  `menu_id` int(11) default null,
  `role_id` int(11) default null,
  primary key (`id`)
) engine=innodb auto_increment=300 default charset=utf8;

/*Data for the table `t_role_menu` */

insert  into `t_role_menu`(`id`,`menu_id`,`role_id`) values (36,10,2),(42,1,2),(45,1,4),(48,1,5),(55,1,9),(65,1,7),(66,10,7),(126,60,15),(127,6010,15),(128,6020,15),(129,6030,15),(130,6040,15),(131,6050,15),(248,2000,1),(278,10,1),(279,1000,1),(280,60,1),(281,6000,1),(282,6010,1),(283,6020,1),(284,6030,1),(285,6040,1),(286,6050,1),(287,61,1),(288,6100,1),(290,100000,1),(291,200001,1),(292,20000100,1),(293,20000101,1),(294,20000102,1),(295,20000103,1),(296,2000010300,1),(297,2000010301,1),(298,2000010302,1),(299,2000010303,1);

/*Table structure for table `t_user` */

drop table if exists `t_user`;

create table `t_user` (
  `id` int(11) not null auto_increment,
  `bz` varchar(1000) default null,
  `password` varchar(50) default null,
  `true_name` varchar(50) default null,
  `user_name` varchar(50) default null,
  `remarks` varchar(1000) default null,
  primary key (`id`)
) engine=innodb auto_increment=15 default charset=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`bz`,`password`,`true_name`,`user_name`,`remarks`) values (1,'管理员','123','admin','admin','1'),(2,'主管','123','王大锤','jack','2'),(3,'销售经理','123','玛丽','marry','33'),(5,'1','111111','1','111111',null),(6,'2','222222','2','222222',null),(7,'3','333333','3','333333',null),(8,'','444444','44','444444',null),(9,'5','555555','5','555555',null),(11,'7','777777','7','777777',null),(12,'88','888888','88','888888',null),(13,'9','999999','9','999999',null),(14,'121212','121212','121212','121212',null);

/*Table structure for table `t_user_role` */

drop table if exists `t_user_role`;

create table `t_user_role` (
  `id` int(11) not null auto_increment,
  `role_id` int(11) default null,
  `user_id` int(11) default null,
  primary key (`id`)
) engine=innodb auto_increment=51 default charset=utf8;

/*Data for the table `t_user_role` */

insert  into `t_user_role`(`id`,`role_id`,`user_id`) values (1,1,1),(19,2,2),(20,4,2),(21,5,2),(28,2,3),(29,4,3),(30,5,3),(31,7,3),(49,15,5),(50,1,5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
