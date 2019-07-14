/*
 Navicat Premium Data Transfer

 Source Server         : Travel
 Source Server Type    : MySQL
 Source Server Version : 50617
 Source Host           : localhost:3306
 Source Schema         : travel_table

 Target Server Type    : MySQL
 Target Server Version : 50617
 File Encoding         : 65001

 Date: 14/07/2019 17:23:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for recommendlist
-- ----------------------------
DROP TABLE IF EXISTS `recommendlist`;
CREATE TABLE `recommendlist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片介绍',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '正文',
  `state` int(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态',
  `createtime` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of recommendlist
-- ----------------------------
INSERT INTO `recommendlist` VALUES (1, 'http://img1.qunarzz.com/sight/p0/1409/19/adca619faaab0898245dc4ec482b5722.jpg_140x140_80f63803.jpg', '故宫', '东方宫殿建筑代表，世界宫殿建筑典范', 1, '2019-07-14 00:00:00');
INSERT INTO `recommendlist` VALUES (2, 'http://img1.qunarzz.com/sight/p0/1511/d2/d2aec2dfc5aa771290.water.jpg_140x140_abb362a7.jpg', '南山滑雪场', '北京专业级滑雪圣地', 1, '2019-07-14 17:15:13');
INSERT INTO `recommendlist` VALUES (3, 'http://img1.qunarzz.com/sight/p0/1501/f4/f467729126949c3a.water.jpg_140x140_ef235b1c.jpg', '天安门广场', '我爱北京天安门，天安门上太阳升', 1, '2019-07-02 00:00:00');
INSERT INTO `recommendlist` VALUES (4, 'http://img1.qunarzz.com/sight/p0/1501/40/40b2b6c951b28fdd.water.jpg_140x140_1c863e5c.jpg', '水立方', '中国的荣耀，阳光下的晶莹水滴', 1, '2019-07-09 16:14:51');

SET FOREIGN_KEY_CHECKS = 1;
