/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t252`;
CREATE DATABASE IF NOT EXISTS `t252` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t252`;

DROP TABLE IF EXISTS `caipin`;
CREATE TABLE IF NOT EXISTS `caipin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `caipin_uuid_number` varchar(200) DEFAULT NULL COMMENT '菜品编号  Search111 ',
  `caipin_name` varchar(200) DEFAULT NULL COMMENT '菜品名称  Search111 ',
  `caipin_photo` varchar(200) DEFAULT NULL COMMENT '菜品照片',
  `caipin_types` int DEFAULT NULL COMMENT '菜品类型 Search111',
  `caipin_price` int DEFAULT NULL COMMENT '购买获得积分 ',
  `caipin_kucun_number` int DEFAULT NULL COMMENT '菜品库存',
  `caipin_old_money` decimal(10,2) DEFAULT NULL COMMENT '菜品原价 ',
  `caipin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价 ',
  `caipin_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `caipin_content` text COMMENT '菜品介绍 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `caipin_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='菜品';

DELETE FROM `caipin`;
INSERT INTO `caipin` (`id`, `caipin_uuid_number`, `caipin_name`, `caipin_photo`, `caipin_types`, `caipin_price`, `caipin_kucun_number`, `caipin_old_money`, `caipin_new_money`, `caipin_clicknum`, `caipin_content`, `shangxia_types`, `caipin_delete`, `create_time`) VALUES
	(1, '165095202548823', '菜品名称1', 'http://localhost:8080/canyinguanli/upload/caipin1.jpg', 2, 455, 101, 864.24, 435.99, 335, '菜品介绍1', 1, 1, '2022-04-26 05:47:05'),
	(2, '165095202548928', '菜品名称2', 'http://localhost:8080/canyinguanli/upload/caipin2.jpg', 1, 232, 95, 684.13, 102.04, 307, '菜品介绍2', 1, 1, '2022-04-26 05:47:05'),
	(3, '165095202548925', '菜品名称3', 'http://localhost:8080/canyinguanli/upload/caipin3.jpg', 2, 237, 103, 539.20, 140.05, 108, '菜品介绍3', 1, 1, '2022-04-26 05:47:05'),
	(4, '165095202548964', '菜品名称4', 'http://localhost:8080/canyinguanli/upload/caipin4.jpg', 1, 342, 104, 555.35, 77.67, 30, '菜品介绍4', 1, 1, '2022-04-26 05:47:05'),
	(5, '165095202548913', '菜品名称5', 'http://localhost:8080/canyinguanli/upload/caipin5.jpg', 2, 202, 105, 532.06, 284.87, 23, '菜品介绍5', 1, 1, '2022-04-26 05:47:05');

DROP TABLE IF EXISTS `caipin_collection`;
CREATE TABLE IF NOT EXISTS `caipin_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_id` int DEFAULT NULL COMMENT '菜品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `caipin_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='菜品收藏';

DELETE FROM `caipin_collection`;
INSERT INTO `caipin_collection` (`id`, `caipin_id`, `yonghu_id`, `caipin_collection_types`, `insert_time`, `create_time`) VALUES
	(2, 2, 1, 1, '2022-04-26 05:47:05', '2022-04-26 05:47:05'),
	(3, 3, 2, 1, '2022-04-26 05:47:05', '2022-04-26 05:47:05'),
	(4, 4, 3, 1, '2022-04-26 05:47:05', '2022-04-26 05:47:05'),
	(5, 5, 2, 1, '2022-04-26 05:47:05', '2022-04-26 05:47:05'),
	(6, 4, 1, 1, '2024-07-10 01:06:15', '2024-07-10 01:06:15');

DROP TABLE IF EXISTS `caipin_commentback`;
CREATE TABLE IF NOT EXISTS `caipin_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_id` int DEFAULT NULL COMMENT '菜品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `caipin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='菜品评价';

DELETE FROM `caipin_commentback`;
INSERT INTO `caipin_commentback` (`id`, `caipin_id`, `yonghu_id`, `caipin_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '评价内容1', '2022-04-26 05:47:05', '回复信息1', '2022-04-26 05:47:05', '2022-04-26 05:47:05'),
	(2, 2, 3, '评价内容2', '2022-04-26 05:47:05', '回复信息2', '2022-04-26 05:47:05', '2022-04-26 05:47:05'),
	(3, 3, 1, '评价内容3', '2022-04-26 05:47:05', '回复信息3', '2022-04-26 05:47:05', '2022-04-26 05:47:05'),
	(4, 4, 1, '评价内容4', '2022-04-26 05:47:05', '回复信息4', '2022-04-26 05:47:05', '2022-04-26 05:47:05'),
	(5, 5, 3, '评价内容5', '2022-04-26 05:47:05', '回复信息5', '2022-04-26 05:47:05', '2022-04-26 05:47:05'),
	(6, 2, 1, '评论111', '2022-04-26 06:25:29', '回复12', '2022-04-26 06:25:59', '2022-04-26 06:25:29');

DROP TABLE IF EXISTS `caipin_order`;
CREATE TABLE IF NOT EXISTS `caipin_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `caipin_id` int DEFAULT NULL COMMENT '菜品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '预定数量',
  `caipin_order_time` timestamp NULL DEFAULT NULL COMMENT '预定时间',
  `caipin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `caipin_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `caipin_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='菜品订单';

DELETE FROM `caipin_order`;
INSERT INTO `caipin_order` (`id`, `caipin_order_uuid_number`, `caipin_id`, `yonghu_id`, `buy_number`, `caipin_order_time`, `caipin_order_true_price`, `caipin_order_types`, `caipin_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1650953748207', 2, 1, 7, '2022-04-27 03:10:00', 714.28, 5, 1, '2022-04-26 06:15:48', '2022-04-26 06:15:48');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/canyinguanli/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/canyinguanli/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/canyinguanli/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'caipin_types', '菜品类型', 1, '菜品类型1', NULL, NULL, '2022-04-26 05:42:12'),
	(2, 'caipin_types', '菜品类型', 2, '菜品类型2', NULL, NULL, '2022-04-26 05:42:12'),
	(3, 'caipin_types', '菜品类型', 3, '菜品类型3', NULL, NULL, '2022-04-26 05:42:12'),
	(4, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-04-26 05:42:12'),
	(5, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-04-26 05:42:12'),
	(6, 'caipin_order_types', '订单类型', 1, '已支付', NULL, NULL, '2022-04-26 05:42:12'),
	(7, 'caipin_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-04-26 05:42:12'),
	(8, 'caipin_order_types', '订单类型', 3, '已出餐', NULL, NULL, '2022-04-26 05:42:12'),
	(9, 'caipin_order_types', '订单类型', 4, '已取餐', NULL, NULL, '2022-04-26 05:42:12'),
	(10, 'caipin_order_types', '订单类型', 5, '已评价', NULL, NULL, '2022-04-26 05:42:12'),
	(11, 'caipin_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-04-26 05:42:12'),
	(12, 'caipin_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-04-26 05:42:12'),
	(13, 'gongyingshang_types', '物品类型', 1, '物品类型1', NULL, NULL, '2022-04-26 05:42:12'),
	(14, 'gongyingshang_types', '物品类型', 2, '物品类型2', NULL, NULL, '2022-04-26 05:42:12'),
	(15, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-26 05:42:12'),
	(16, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-26 05:42:12'),
	(17, 'huiyuandengji_types', '会员等级类型', 1, '青铜会员', NULL, '0.98', '2022-04-26 05:42:12'),
	(18, 'huiyuandengji_types', '会员等级类型', 2, '白银会员', NULL, '0.96', '2022-04-26 05:42:12'),
	(19, 'huiyuandengji_types', '会员等级类型', 3, '黄金会员', NULL, '0.94', '2022-04-26 05:42:12'),
	(20, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-04-26 05:42:12'),
	(21, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-04-26 05:42:12'),
	(22, 'news_types', '公告类型', 3, '活动信息', NULL, NULL, '2022-04-26 05:42:12'),
	(23, 'single_seach_types', '单页数据类型', 1, '酒店介绍', NULL, NULL, '2022-04-26 05:42:12'),
	(24, 'single_seach_types', '单页数据类型', 2, '联系我们', NULL, NULL, '2022-04-26 05:42:12'),
	(25, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-04-26 05:42:12'),
	(26, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-04-26 05:42:12');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `yuangong_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 2, NULL, NULL, '发布内容1', NULL, 1, '2022-04-26 05:47:05', '2022-04-26 05:47:05', '2022-04-26 05:47:05'),
	(2, '帖子标题2', 3, NULL, NULL, '发布内容2', NULL, 1, '2022-04-26 05:47:05', '2022-04-26 05:47:05', '2022-04-26 05:47:05'),
	(3, '帖子标题3', 1, NULL, NULL, '发布内容3', NULL, 1, '2022-04-26 05:47:05', '2022-04-26 05:47:05', '2022-04-26 05:47:05'),
	(4, '帖子标题4', 2, NULL, NULL, '发布内容4', NULL, 1, '2022-04-26 05:47:05', '2022-04-26 05:47:05', '2022-04-26 05:47:05'),
	(5, '帖子标题5', 3, NULL, NULL, '发布内容5', NULL, 1, '2022-04-26 05:47:05', '2022-04-26 05:47:05', '2022-04-26 05:47:05'),
	(6, NULL, 1, NULL, NULL, '评论内容12', 5, 2, '2022-04-26 06:18:34', NULL, '2022-04-26 06:18:34'),
	(7, NULL, NULL, NULL, 1, '管理1111', 5, 2, '2022-04-26 06:23:35', NULL, '2022-04-26 06:23:35'),
	(8, NULL, 1, NULL, NULL, '1', 5, 2, '2022-04-26 06:25:39', NULL, '2022-04-26 06:25:39'),
	(9, NULL, NULL, 1, NULL, '123', 5, 2, '2022-04-26 06:26:14', NULL, '2022-04-26 06:26:14');

DROP TABLE IF EXISTS `gongyingshang`;
CREATE TABLE IF NOT EXISTS `gongyingshang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongyingshang_name` varchar(200) DEFAULT NULL COMMENT '供应商名称 Search111 ',
  `gongyingshang_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gongyingshang_email` varchar(200) DEFAULT NULL COMMENT '供应物品',
  `gongyingshang_types` int DEFAULT NULL COMMENT '物品类型 Search111',
  `gongyingshang_money` decimal(10,2) DEFAULT NULL COMMENT '供应价格',
  `gongyingshang_content` text COMMENT '供应物品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='供应商';

DELETE FROM `gongyingshang`;
INSERT INTO `gongyingshang` (`id`, `gongyingshang_name`, `gongyingshang_phone`, `gongyingshang_email`, `gongyingshang_types`, `gongyingshang_money`, `gongyingshang_content`, `create_time`) VALUES
	(1, '供应商名称1', '17703786901', '供应物品1', 1, 200.81, '供应物品简介1', '2022-04-26 05:47:05'),
	(2, '供应商名称2', '17703786902', '供应物品2', 2, 520.06, '供应物品简介2', '2022-04-26 05:47:05'),
	(3, '供应商名称3', '17703786903', '供应物品3', 1, 292.71, '供应物品简介3', '2022-04-26 05:47:05'),
	(4, '供应商名称4', '17703786904', '供应物品4', 1, 635.34, '供应物品简介4', '2022-04-26 05:47:05'),
	(5, '供应商名称5', '17703786905', '供应物品5', 1, 320.50, '供应物品简介5', '2022-04-26 05:47:05');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 2, 'http://localhost:8080/canyinguanli/upload/news1.jpg', '2022-04-26 05:47:05', '公告详情1', '2022-04-26 05:47:05'),
	(2, '公告标题2', 3, 'http://localhost:8080/canyinguanli/upload/news2.jpg', '2022-04-26 05:47:05', '公告详情2', '2022-04-26 05:47:05'),
	(3, '公告标题3', 3, 'http://localhost:8080/canyinguanli/upload/news3.jpg', '2022-04-26 05:47:05', '公告详情3', '2022-04-26 05:47:05'),
	(4, '公告标题4', 3, 'http://localhost:8080/canyinguanli/upload/news4.jpg', '2022-04-26 05:47:05', '公告详情4', '2022-04-26 05:47:05'),
	(5, '公告标题5', 3, 'http://localhost:8080/canyinguanli/upload/news5.jpg', '2022-04-26 05:47:05', '公告详情5', '2022-04-26 05:47:05');

DROP TABLE IF EXISTS `single_seach`;
CREATE TABLE IF NOT EXISTS `single_seach` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int DEFAULT NULL COMMENT '数据类型',
  `single_seach_content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='单页数据';

DELETE FROM `single_seach`;
INSERT INTO `single_seach` (`id`, `single_seach_name`, `single_seach_types`, `single_seach_content`, `create_time`) VALUES
	(1, '酒店介绍', 1, '<p><span style="background-color: rgb(252, 253, 254); color: rgb(96, 98, 102);">酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍酒店介绍</span></p>', '2022-04-26 06:05:56'),
	(2, '联系我们', 2, '<p>联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们12我们联系1我们联系3112323123123123123</p>', '2022-04-26 06:06:08');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'wwd2kr9u1cyhg69f18pnqipvheoq99wn', '2022-04-26 06:01:57', '2024-07-10 02:04:35'),
	(2, 1, 'a1', 'yonghu', '用户', '3f36znwnnpkfkxgushgod66fqhi84812', '2022-04-26 06:06:27', '2024-07-10 02:06:05'),
	(3, 1, 'a1', 'yuangong', '员工', '46jhkn0aa67qdfdz2ihoagi5ehknrczt', '2022-04-26 06:25:47', '2024-07-10 02:05:36');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10,2) DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int DEFAULT NULL COMMENT '会员等级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `yonghu_sum_jifen`, `yonghu_new_jifen`, `huiyuandengji_types`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/canyinguanli/upload/yonghu1.jpg', 2, '1@qq.com', 8382.54, 2590.16, 1779.67, 1, '2022-04-26 05:47:05'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/canyinguanli/upload/yonghu2.jpg', 1, '2@qq.com', 737.01, 957.24, 248.37, 1, '2022-04-26 05:47:05'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/canyinguanli/upload/yonghu3.jpg', 2, '3@qq.com', 722.17, 862.37, 275.15, 1, '2022-04-26 05:47:05');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `username`, `password`, `yuangong_name`, `yuangong_phone`, `yuangong_id_number`, `yuangong_photo`, `sex_types`, `yuangong_email`, `create_time`) VALUES
	(1, '员工1', '123456', '员工姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/canyinguanli/upload/yuangong1.jpg', 2, '1@qq.com', '2022-04-26 05:47:05'),
	(2, '员工2', '123456', '员工姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/canyinguanli/upload/yuangong2.jpg', 2, '2@qq.com', '2022-04-26 05:47:05'),
	(3, '员工3', '123456', '员工姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/canyinguanli/upload/yuangong3.jpg', 2, '3@qq.com', '2022-04-26 05:47:05');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
