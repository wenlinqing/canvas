/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : database

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-04-03 10:04:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for systems
-- ----------------------------
DROP TABLE IF EXISTS `systems`;
CREATE TABLE `systems` (
  `id` int(11) NOT NULL,
  `deliveryFee` decimal(5,2) DEFAULT NULL,
  `withdrawalMoney` tinyint(5) DEFAULT NULL,
  `red_activity` tinyint(1) DEFAULT NULL,
  `red_startTime` datetime DEFAULT NULL,
  `red_endTime` datetime DEFAULT NULL,
  `signIn_activity` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of systems
-- ----------------------------
INSERT INTO `systems` VALUES ('1', '5.00', '5', '1', '2020-04-01 16:38:32', '2020-04-06 23:59:59', '1');
