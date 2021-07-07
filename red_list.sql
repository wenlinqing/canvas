/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : database

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-04-03 10:05:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for red_list
-- ----------------------------
DROP TABLE IF EXISTS `red_list`;
CREATE TABLE `red_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `redNo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `userId` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `money` decimal(5,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
