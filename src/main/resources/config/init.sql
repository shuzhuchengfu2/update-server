/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : ele

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 23/02/2018 18:15:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bbs_user
-- ----------------------------
DROP TABLE IF EXISTS `bbs_user`;
CREATE TABLE `bbs_user` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) DEFAULT '' COMMENT '昵称',
  `score` int(11) DEFAULT '0' COMMENT '积分',
  `token` varchar(255) DEFAULT '' COMMENT '用户唯一标识，用于客户端和网页存入cookie',
  `avatar` varchar(255) DEFAULT '/static/upload/avatar/default_avatar.png' COMMENT '头像',
  `mission` datetime DEFAULT NULL COMMENT '签到日期',
  `in_time` datetime DEFAULT NULL COMMENT '录入时间',
  `email` varchar(255) DEFAULT '' COMMENT '邮箱',
  `password` varchar(255) DEFAULT '' COMMENT '密码',
  `url` varchar(255) DEFAULT NULL COMMENT '个人主页',
  `signature` varchar(1000) DEFAULT NULL COMMENT '个性签名',
  `qq_open_id` varchar(255) DEFAULT NULL COMMENT 'qq登录唯一标识',
  `qq_avatar` varchar(255) DEFAULT NULL COMMENT 'qq头像',
  `qq_nickname` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'qq昵称',
  `sina_open_id` varchar(255) DEFAULT NULL COMMENT '新浪微博登录唯一标识',
  `sina_avatar` varchar(255) DEFAULT NULL COMMENT '新浪微博头像',
  `sina_nickname` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '新浪微博昵称',
  `type` varchar(2) DEFAULT '1' COMMENT '1普通用户 2官方用户',
  `user_id` bigint(10) DEFAULT NULL COMMENT '网站用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ele_menu
-- ----------------------------
DROP TABLE IF EXISTS `ele_menu`;
CREATE TABLE `ele_menu` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `shop_id` varchar(255) NOT NULL,
  `menu_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `json` longtext,
  `description` varchar(255) DEFAULT NULL,
  `grey_icon_url` varchar(255) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `is_activity` varchar(255) DEFAULT NULL,
  `is_selected` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`shop_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1237498130 DEFAULT CHARSET=utf8mb4 COMMENT='菜单列表';

-- ----------------------------
-- Table structure for ele_menu_food
-- ----------------------------
DROP TABLE IF EXISTS `ele_menu_food`;
CREATE TABLE `ele_menu_food` (
  `food_id` int(12) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(25) DEFAULT NULL,
  `category_id` int(20) DEFAULT NULL,
  `menu_id` int(12) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `attributes` varchar(255) DEFAULT NULL,
  `attrs` varchar(255) DEFAULT NULL,
  `cold_box` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `display_times` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `is_essential` varchar(255) DEFAULT NULL,
  `is_featured` varchar(255) DEFAULT NULL,
  `limitation` varchar(255) DEFAULT NULL,
  `min_purchase` varchar(255) DEFAULT NULL,
  `month_sales` varchar(255) DEFAULT NULL,
  `pinyin_name` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `rating_count` varchar(255) DEFAULT NULL,
  `restaurant_id` varchar(255) DEFAULT NULL,
  `satisfy_count` varchar(255) DEFAULT NULL,
  `satisfy_rate` varchar(255) DEFAULT NULL,
  `server_utc` varchar(255) DEFAULT NULL,
  `specifications` varchar(255) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  `virtual_food_id` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3441 DEFAULT CHARSET=utf8mb4 COMMENT='食物列表';

-- ----------------------------
-- Table structure for ele_menu_specfood
-- ----------------------------
DROP TABLE IF EXISTS `ele_menu_specfood`;
CREATE TABLE `ele_menu_specfood` (
  `checkout_mode` varchar(255) DEFAULT NULL,
  `food_id` varchar(255) DEFAULT NULL,
  `is_essential` varchar(255) DEFAULT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `original_price` varchar(255) DEFAULT NULL,
  `packing_fee` varchar(255) DEFAULT NULL,
  `partial_reduce_activity_id` varchar(255) DEFAULT NULL,
  `pinyin_name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `promotion_stock` varchar(255) DEFAULT NULL,
  `recent_popularity` varchar(255) DEFAULT NULL,
  `recent_rating` varchar(255) DEFAULT NULL,
  `restaurant_id` varchar(255) DEFAULT NULL,
  `sku_id` varchar(255) DEFAULT NULL,
  `sold_out` varchar(255) DEFAULT NULL,
  `specs` varchar(255) DEFAULT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `virtual_food_id` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `foodId` varchar(255) DEFAULT NULL,
  `specfood_id` int(12) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`specfood_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7585 DEFAULT CHARSET=utf8mb4 COMMENT='规格食物列表';

-- ----------------------------
-- Table structure for ele_shop
-- ----------------------------
DROP TABLE IF EXISTS `ele_shop`;
CREATE TABLE `ele_shop` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(8) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `address` varchar(255) DEFAULT '' COMMENT '地址',
  `authentic_id` int(11) DEFAULT '0',
  `description` varchar(255) DEFAULT '',
  `distance` varchar(255) DEFAULT '',
  `favored` varchar(255) DEFAULT '',
  `float_delivery_fee` varchar(255) DEFAULT '' COMMENT '配送费',
  `float_minimum_order_amount` varchar(255) DEFAULT '' COMMENT '起送价格',
  `is_new` varchar(255) DEFAULT '' COMMENT '是否是新店',
  `is_premium` varchar(255) DEFAULT '',
  `is_stock_empty` varchar(255) DEFAULT '',
  `is_valid` varchar(255) DEFAULT '',
  `latitude` varchar(255) DEFAULT '',
  `list_quality_icon` varchar(255) DEFAULT '',
  `longitude` varchar(255) DEFAULT '',
  `max_applied_quantity_per_order` varchar(255) DEFAULT '',
  `next_business_time` varchar(255) DEFAULT '',
  `only_use_poi` varchar(255) DEFAULT '',
  `order_lead_time` varchar(255) DEFAULT '',
  `phone` varchar(255) DEFAULT '',
  `rating` varchar(255) DEFAULT '',
  `rating_count` varchar(255) DEFAULT '',
  `recent_order_num` varchar(255) DEFAULT '',
  `status` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT '',
  `image_path` varchar(255) DEFAULT '',
  `promotion_info` varchar(255) DEFAULT '',
  `regular_customer_count` varchar(255) DEFAULT '',
  `json` varchar(10000) DEFAULT NULL,
  `findid` int(32) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=159996575 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ele_shop_activitie
-- ----------------------------
DROP TABLE IF EXISTS `ele_shop_activitie`;
CREATE TABLE `ele_shop_activitie` (
  `attribute` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon_color` varchar(255) DEFAULT NULL,
  `icon_name` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `is_exclusive_with_food_activity` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `shop_id` varchar(255) DEFAULT NULL,
  `activitie_id` int(12) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`activitie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=562 DEFAULT CHARSET=utf8mb4 COMMENT='商铺活动';

-- ----------------------------
-- Table structure for find_coordinate_record
-- ----------------------------
DROP TABLE IF EXISTS `find_coordinate_record`;
CREATE TABLE `find_coordinate_record` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `longitude` varchar(50) COLLATE utf8_danish_ci NOT NULL DEFAULT '',
  `latitude` varchar(50) COLLATE utf8_danish_ci NOT NULL DEFAULT '',
  `addcount` int(32) DEFAULT '0',
  `currentcount` int(32) DEFAULT '0',
  `maxlongitude` varchar(50) COLLATE utf8_danish_ci DEFAULT '',
  `maxlatitude` varchar(50) COLLATE utf8_danish_ci DEFAULT '',
  `findid` int(32) NOT NULL,
  `minlongitude` varchar(50) COLLATE utf8_danish_ci DEFAULT NULL,
  `minlatitude` varchar(50) COLLATE utf8_danish_ci DEFAULT NULL,
  `avgdistance` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for qtt_imei_record
-- ----------------------------
DROP TABLE IF EXISTS `qtt_imei_record`;
CREATE TABLE `qtt_imei_record` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `phone` varchar(32) DEFAULT NULL,
  `imei` varchar(32) NOT NULL,
  `usedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qtt_user_day_gold_record
-- ----------------------------
DROP TABLE IF EXISTS `qtt_user_day_gold_record`;
CREATE TABLE `qtt_user_day_gold_record` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `phone` varchar(32) NOT NULL,
  `activateDate` datetime DEFAULT NULL,
  `originalGolds` int(8) DEFAULT '0',
  `newGolds` int(8) DEFAULT '0',
  `getGolds` int(8) DEFAULT '0',
  `usedTime` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for record_log
-- ----------------------------
DROP TABLE IF EXISTS `record_log`;
CREATE TABLE `record_log` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL COMMENT '类型',
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL COMMENT '来源 ios android',
  `exe_result` int(255) DEFAULT NULL COMMENT '执行结果 1成功 2失败',
  `log1` varchar(5000) CHARACTER SET utf8 COLLATE utf8_danish_ci DEFAULT NULL COMMENT '日志内容',
  `log2` varchar(5000) CHARACTER SET utf8 COLLATE utf8_danish_ci DEFAULT NULL COMMENT '日志内容',
  `log3` varchar(5000) CHARACTER SET utf8 COLLATE utf8_danish_ci DEFAULT NULL COMMENT '日志内容',
  `log4` varchar(5000) CHARACTER SET utf8 COLLATE utf8_danish_ci DEFAULT NULL COMMENT '日志内容',
  `create_date` datetime DEFAULT NULL,
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_danish_ci DEFAULT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sshhww_auth_uuid
-- ----------------------------
DROP TABLE IF EXISTS `sshhww_auth_uuid`;
CREATE TABLE `sshhww_auth_uuid` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `valid` varchar(1) NOT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for sshhww_task
-- ----------------------------
DROP TABLE IF EXISTS `sshhww_task`;
CREATE TABLE `sshhww_task` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `valid` varchar(1) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sshhww_task_record
-- ----------------------------
DROP TABLE IF EXISTS `sshhww_task_record`;
CREATE TABLE `sshhww_task_record` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `valid` varchar(1) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT '0' COMMENT '1 成功, 0 运行中 , -1失败',
  `device_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1166 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for wxcm_info
-- ----------------------------
DROP TABLE IF EXISTS `wxcm_info`;
CREATE TABLE `wxcm_info` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `requestUrl` varchar(5000) DEFAULT NULL,
  `responseData` varchar(5000) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wxcm_update
-- ----------------------------
DROP TABLE IF EXISTS `wxcm_update`;
CREATE TABLE `wxcm_update` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `version` int(8) NOT NULL,
  `updatePath` varchar(300) NOT NULL,
  `valid` varchar(1) NOT NULL,
  `type` varchar(255) NOT NULL,
  `md5` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
