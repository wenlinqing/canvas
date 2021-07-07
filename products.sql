/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : database

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-03-29 18:23:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` varchar(50) NOT NULL,
  `productImg` varchar(255) NOT NULL,
  `productName` varchar(20) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `newComerPrice` decimal(5,2) NOT NULL,
  `promotePrice` decimal(5,2) NOT NULL DEFAULT '100.00' COMMENT '打折',
  `unit` varchar(5) NOT NULL COMMENT '单位',
  `amount` tinyint(10) NOT NULL DEFAULT '0' COMMENT '销量',
  `num` tinyint(1) DEFAULT '0',
  `is_soldout` int(1) DEFAULT '0' COMMENT '是否售罄 0否 1是',
  `isEnabled` int(1) DEFAULT '0' COMMENT '是否上下架',
  `isPromote` int(1) DEFAULT '1' COMMENT '是否促销 即打折',
  `isNew` int(1) DEFAULT '1',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', '202003221584875328', 'https://img.alicdn.com/imgextra/i1/733336530/O1CN01M1IXYk1y6mtkWAvdp_!!733336530.jpg_640x640q80_.webp', '农家散养老母鸡', '168.00', '158.00', '160.00', '只', '0', '0', '0', '1', '0', '1', '2020-03-22 19:08:48');
INSERT INTO `products` VALUES ('2', '202003221584877441', 'https://img.alicdn.com/imgextra/i3/407774691/O1CN01Bf0eem1kWWXDchiCL_!!407774691.jpg_640x640q80_.webp', '正宗农家散养绿壳鸡蛋30枚装', '59.88', '39.88', '49.00', '份', '0', '0', '0', '1', '1', '1', '2020-03-22 19:44:01');
INSERT INTO `products` VALUES ('3', '202003221584877694', 'https://img.alicdn.com/imgextra/i3/2207361798224/O1CN01Lo3LQY2AcdpiQXn19_!!2207361798224.jpg_2200x2200Q50s50.jpg', '有机软香糯大米一级10斤', '79.88', '69.88', '75.00', '袋', '0', '0', '0', '1', '1', '1', '2020-03-22 19:48:14');
INSERT INTO `products` VALUES ('4', '202003221584878007', 'https://img.alicdn.com/imgextra/i3/2206840172828/O1CN01xSPcNO1WlGf14g3NK_!!2206840172828.jpg_2200x2200Q50s50.jpg_.webp', '有机黄瓜新鲜1斤装', '6.88', '4.88', '5.88', '斤', '0', '0', '0', '1', '1', '1', '2020-03-22 19:53:27');
INSERT INTO `products` VALUES ('5', '202003221584878200', 'https://img.alicdn.com/imgextra/i4/3532490475/O1CN01MlJf1r1FNai4SaUic_!!2-item_pic.png_2200x2200Q50s50.jpg_.webp', '有机白莲去芯干货500g', '28.88', '22.66', '25.00', '包', '0', '0', '0', '1', '0', '1', '2020-03-22 19:56:40');
