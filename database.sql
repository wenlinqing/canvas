/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 80020
Source Host           : localhost:3306
Source Database       : database

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2021-03-19 10:24:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `addressId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `receiverName` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人',
  `receiverTel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `province` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `city` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `district` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `receiverStreet` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `houseNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lng` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '经度',
  `lat` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '纬度',
  `isDefault` tinyint(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('12', '202003311585653435', '20032921291796460096295', '111', '13245525896', '上海', '静安区', '城区', '', '2', '', '', '1', '2020-03-31 19:17:15');
INSERT INTO `address` VALUES ('13', '202003311585654325', '20032921321937000618950', '罗芳', '15919468155', '广东', '深圳市', '龙岗区', '', '123456', '', '', '1', '2020-03-31 19:32:05');
INSERT INTO `address` VALUES ('14', '202003311585655013', '20032921321937000618950', '温曼馨', '13728781183', '广东', '深圳市', '龙岗区', '', '888888', '', '', '0', '2020-03-31 19:43:33');
INSERT INTO `address` VALUES ('15', '202006041591254653', '20032921542562865224343', '温温', '13088889999', '重庆', '南岸区', '鸡冠石镇', '', '某某村塘背组', '', '', '1', '2020-06-04 15:10:53');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- Records of feedback
-- ----------------------------

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `productId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `amount` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('150', 'No200331158565346622', '202003221584877694', '70.00', '1');
INSERT INTO `order_detail` VALUES ('151', 'No200331158565346622', '202003221584877441', '68.00', '1');
INSERT INTO `order_detail` VALUES ('152', 'No200331158565351961', '202003221584877694', '80.00', '1');
INSERT INTO `order_detail` VALUES ('153', 'No200331158565351961', '202003221584877441', '75.00', '1');
INSERT INTO `order_detail` VALUES ('154', 'No200331158565434548', '202003221584878007', '4.00', '1');
INSERT INTO `order_detail` VALUES ('155', 'No200331158565478364', '202003221584878007', '80.00', '1');
INSERT INTO `order_detail` VALUES ('156', 'No200331158565478364', '202003221584877694', '75.00', '1');
INSERT INTO `order_detail` VALUES ('157', 'No200331158565478364', '202003221584877441', '5.00', '1');
INSERT INTO `order_detail` VALUES ('158', 'No200331158565487466', '202003221584878200', '39.00', '1');
INSERT INTO `order_detail` VALUES ('159', 'No200331158565487466', '202003221584878007', '5.00', '1');
INSERT INTO `order_detail` VALUES ('160', 'No200331158565487466', '202003221584875328', '168.00', '1');
INSERT INTO `order_detail` VALUES ('161', 'No200331158565489108', '202003221584878007', '80.00', '1');
INSERT INTO `order_detail` VALUES ('162', 'No200331158565489108', '202003221584877694', '75.00', '1');
INSERT INTO `order_detail` VALUES ('163', 'No200331158565489108', '202003221584877441', '5.00', '1');
INSERT INTO `order_detail` VALUES ('164', 'No200331158565492647', '202003221584878200', '39.00', '1');
INSERT INTO `order_detail` VALUES ('165', 'No200331158565502100', '202003221584878007', '80.00', '1');
INSERT INTO `order_detail` VALUES ('166', 'No200331158565502100', '202003221584877441', '5.00', '1');
INSERT INTO `order_detail` VALUES ('167', 'No200331158565505013', '202003221584878007', '80.00', '1');
INSERT INTO `order_detail` VALUES ('168', 'No200331158565505013', '202003221584877441', '5.00', '1');
INSERT INTO `order_detail` VALUES ('169', 'No200331158565512508', '202003221584877441', '80.00', '3');
INSERT INTO `order_detail` VALUES ('170', 'No200331158565512508', '202003221584875328', '80.00', '3');
INSERT INTO `order_detail` VALUES ('171', 'No200604159125474058', '202003221584878200', '70.00', '1');
INSERT INTO `order_detail` VALUES ('172', 'No200604159125474058', '202003221584878007', '68.00', '1');
INSERT INTO `order_detail` VALUES ('173', 'No200604159125474058', '202003221584877694', '4.00', '1');
INSERT INTO `order_detail` VALUES ('174', 'No200604159125474058', '202003221584877441', '39.00', '1');
INSERT INTO `order_detail` VALUES ('175', 'No200604159125480059', '202003221584878200', '80.00', '1');
INSERT INTO `order_detail` VALUES ('176', 'No200604159125480059', '202003221584878007', '75.00', '1');
INSERT INTO `order_detail` VALUES ('177', 'No200604159125480059', '202003221584877694', '5.00', '1');
INSERT INTO `order_detail` VALUES ('178', 'No200604159125480059', '202003221584877441', '70.00', '1');
INSERT INTO `order_detail` VALUES ('179', 'No200604159125523512', '202003221584877441', '80.00', '1');
INSERT INTO `order_detail` VALUES ('180', 'No200604159125529513', '202003221584877441', '80.00', '1');
INSERT INTO `order_detail` VALUES ('181', 'No200604159125559505', '202003221584877441', '80.00', '1');
INSERT INTO `order_detail` VALUES ('182', 'No200604159125622318', '202003221584878200', '39.00', '1');
INSERT INTO `order_detail` VALUES ('183', 'No200604159125634321', '202003221584878200', '39.00', '1');
INSERT INTO `order_detail` VALUES ('184', 'No200604159125668796', '202003221584878200', '39.00', '1');
INSERT INTO `order_detail` VALUES ('185', 'No200604159125673555', '202003221584878200', '39.00', '1');

-- ----------------------------
-- Table structure for order_order
-- ----------------------------
DROP TABLE IF EXISTS `order_order`;
CREATE TABLE `order_order` (
  `orderNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `userId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `totalPrice` decimal(10,2) DEFAULT NULL,
  `totalAmount` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hopeSendTime` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '送达时间',
  `remark` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `payWay` int DEFAULT '0' COMMENT '0货到付款 1积分付款',
  `status` int DEFAULT '0' COMMENT '订单状态 0待送货 1送货中 2成功 3用户取消 4骑手取消(用户不要了)',
  `riderId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `riderName` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `riderPhone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `isDelive` int(1) unsigned zerofill DEFAULT '0' COMMENT '是否送达 0否 1是',
  `reveive_time` datetime DEFAULT NULL COMMENT '接单时间',
  `delive_time` datetime DEFAULT NULL,
  `receiverName` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `receiverTel` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `province` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `district` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `receiverStreet` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `houseNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lng` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lat` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`orderNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- Records of order_order
-- ----------------------------
INSERT INTO `order_order` VALUES ('No200331158565346622', '20032921291796460096295', '139.00', '2', '尽快送达', '', '0', '2', '20032920001950521452463', '码云', '15588889999', '1', '2020-03-31 19:37:11', '2020-03-31 19:37:58', '111', '13245525896', '上海', '静安区', '城区', '', '2', '', '', '2020-03-31 19:17:46');
INSERT INTO `order_order` VALUES ('No200331158565351961', '20032921291796460096295', '139.00', '2', '尽快送达', '', '0', '2', '20032920001950521452463', '码云', '15588889999', '1', '2020-03-31 19:37:21', '2020-03-31 19:38:04', '111', '13245525896', '上海', '静安区', '城区', '', '2', '', '', '2020-03-31 19:18:39');
INSERT INTO `order_order` VALUES ('No200331158565434548', '20032921321937000618950', '5.88', '1', '尽快送达', '', '1', '2', '20032920001950521452463', '码云', '15588889999', '1', '2020-03-31 19:37:28', '2020-03-31 19:37:52', '罗芳', '15919468155', '广东', '深圳市', '龙岗区', '', '123456', '', '', '2020-03-31 19:32:25');
INSERT INTO `order_order` VALUES ('No200331158565478364', '20032921291796460096295', '161.00', '3', '尽快送达', '', '0', '2', '20032920001950521452463', '码云', '15588889999', '1', '2020-03-31 19:41:23', '2020-03-31 19:41:34', '111', '13245525896', '上海', '静安区', '城区', '', '2', '', '', '2020-03-31 19:39:43');
INSERT INTO `order_order` VALUES ('No200331158565487466', '20032921321937000618950', '213.00', '3', '尽快送达', '', '1', '3', '20032920001950521452463', '码云', '15588889999', '1', '2020-03-31 19:41:28', '2020-03-31 19:41:32', '罗芳', '15919468155', '广东', '深圳市', '龙岗区', '', '123456', '', '', '2020-03-31 19:41:14');
INSERT INTO `order_order` VALUES ('No200331158565489108', '20032921291796460096295', '161.00', '3', '尽快送达', '', '1', '2', '20032920001950521452463', '码云', '15588889999', '1', '2020-03-31 19:41:41', '2020-03-31 19:42:09', '111', '13245525896', '上海', '静安区', '城区', '', '2', '', '', '2020-03-31 19:41:31');
INSERT INTO `order_order` VALUES ('No200331158565492647', '20032921321937000618950', '40.00', '1', '03-31 22:41', '', '1', '4', '20032920001950521452463', '码云', '15588889999', '1', '2020-03-31 19:42:17', '2020-03-31 19:42:23', '罗芳', '15919468155', '广东', '深圳市', '龙岗区', '', '123456', '', '', '2020-03-31 19:42:06');
INSERT INTO `order_order` VALUES ('No200331158565502100', '20032921321937000618950', '86.00', '2', '尽快送达', '', '0', '2', '20032920001950521452463', '码云', '15588889999', '1', '2020-03-31 19:43:58', '2020-03-31 19:44:04', '温曼馨', '13728781183', '广东', '深圳市', '龙岗区', '', '888888', '', '', '2020-03-31 19:43:41');
INSERT INTO `order_order` VALUES ('No200331158565505013', '20032921321937000618950', '86.00', '2', '尽快送达', '', '1', '4', '20032920001950521452463', '码云', '15588889999', '1', '2020-03-31 19:44:14', '2020-03-31 19:44:27', '温曼馨', '13728781183', '广东', '深圳市', '龙岗区', '', '888888', '', '', '2020-03-31 19:44:10');
INSERT INTO `order_order` VALUES ('No200331158565512508', '20032921321937000618950', '745.00', '6', '尽快送达', '', '1', '4', '20032920001950521452463', '码云', '15588889999', '1', '2020-03-31 19:45:34', '2020-03-31 19:47:05', '温曼馨', '13728781183', '广东', '深圳市', '龙岗区', '', '888888', '', '', '2020-03-31 19:45:25');
INSERT INTO `order_order` VALUES ('No200604159125474058', '20032921542562865224343', '173.00', '4', '尽快送达', '', '0', '3', null, null, null, '1', null, '2020-06-04 15:19:14', '温温', '13088889999', '重庆', '南岸区', '鸡冠石镇', '', '某某村塘背组', '', '', '2020-06-04 15:12:20');
INSERT INTO `order_order` VALUES ('No200604159125480059', '20032921542562865224343', '173.00', '4', '尽快送达', '', '0', '3', null, null, null, '1', null, '2020-06-04 15:19:08', '温温', '13088889999', '重庆', '南岸区', '鸡冠石镇', '', '某某村塘背组', '', '', '2020-06-04 15:13:20');
INSERT INTO `order_order` VALUES ('No200604159125523512', '20032921542562865224343', '81.00', '1', '尽快送达', '', '0', '3', null, null, null, '1', null, '2020-06-04 15:21:08', '温温', '13088889999', '重庆', '南岸区', '鸡冠石镇', '', '某某村塘背组', '', '', '2020-06-04 15:20:35');
INSERT INTO `order_order` VALUES ('No200604159125529513', '20032921542562865224343', '81.00', '1', '尽快送达', '', '0', '3', null, null, null, '1', null, '2020-06-04 15:22:10', '温温', '13088889999', '重庆', '南岸区', '鸡冠石镇', '', '某某村塘背组', '', '', '2020-06-04 15:21:35');
INSERT INTO `order_order` VALUES ('No200604159125559505', '20032921542562865224343', '81.00', '1', '尽快送达', '', '0', '3', null, null, null, '1', null, '2020-06-04 15:43:04', '温温', '13088889999', '重庆', '南岸区', '鸡冠石镇', '', '某某村塘背组', '', '', '2020-06-04 15:26:35');
INSERT INTO `order_order` VALUES ('No200604159125622318', '20032921542562865224343', '40.00', '1', '尽快送达', '', '0', '3', null, null, null, '1', null, '2020-06-04 15:42:59', '温温', '13088889999', '重庆', '南岸区', '鸡冠石镇', '', '某某村塘背组', '', '', '2020-06-04 15:37:03');
INSERT INTO `order_order` VALUES ('No200604159125634321', '20032921542562865224343', '40.00', '1', '尽快送达', '', '0', '3', null, null, null, '1', null, '2020-06-04 15:42:54', '温温', '13088889999', '重庆', '南岸区', '鸡冠石镇', '', '某某村塘背组', '', '', '2020-06-04 15:39:03');
INSERT INTO `order_order` VALUES ('No200604159125668796', '20032921542562865224343', '40.00', '1', '尽快送达', '', '0', '3', null, null, null, '1', null, '2020-06-04 15:44:57', '温温', '13088889999', '重庆', '南岸区', '鸡冠石镇', '', '某某村塘背组', '', '', '2020-06-04 15:44:47');
INSERT INTO `order_order` VALUES ('No200604159125673555', '20032921542562865224343', '40.00', '1', '尽快送达', '', '1', '3', null, null, null, '1', null, '2020-06-04 15:45:50', '温温', '13088889999', '重庆', '南岸区', '鸡冠石镇', '', '某某村塘背组', '', '', '2020-06-04 15:45:35');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `productImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `productName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `newComerPrice` decimal(5,2) NOT NULL,
  `promotePrice` decimal(5,2) NOT NULL DEFAULT '100.00' COMMENT '打折',
  `unit` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '单位',
  `amount` tinyint NOT NULL DEFAULT '0' COMMENT '销量',
  `limitNum` int DEFAULT '0' COMMENT '限购数量',
  `num` tinyint(1) DEFAULT '0',
  `soldAmount` int DEFAULT '100' COMMENT '可售数量',
  `isEnabled` int DEFAULT '0' COMMENT '是否上下架',
  `isPromote` int DEFAULT '1' COMMENT '是否促销 即打折',
  `isNew` int DEFAULT '1',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', '202003221584875328', 'https://img.alicdn.com/imgextra/i1/733336530/O1CN01M1IXYk1y6mtkWAvdp_!!733336530.jpg_640x640q80_.webp', '农家散养老母鸡', '168.00', '150.00', '160.00', '只', '4', '0', '0', '200', '1', '0', '1', '2020-03-22 19:08:48');
INSERT INTO `products` VALUES ('2', '202003221584877441', 'http://img2.imgtn.bdimg.com/it/u=3550851830,2093411806&fm=26&gp=0.jpg', '正宗农家散养绿壳鸡蛋30枚装', '90.00', '70.00', '80.00', '份', '14', '0', '0', '495', '1', '1', '1', '2020-03-22 19:44:01');
INSERT INTO `products` VALUES ('3', '202003221584877694', 'https://img.alicdn.com/imgextra/i3/2207361798224/O1CN01Lo3LQY2AcdpiQXn19_!!2207361798224.jpg_2200x2200Q50s50.jpg', '有机软香糯大米一级10斤', '80.00', '68.00', '75.00', '袋', '6', '0', '0', '218', '1', '1', '1', '2020-03-22 19:48:14');
INSERT INTO `products` VALUES ('4', '202003221584878007', 'https://img.alicdn.com/imgextra/i3/2206840172828/O1CN01xSPcNO1WlGf14g3NK_!!2206840172828.jpg_2200x2200Q50s50.jpg_.webp', '有机黄瓜新鲜1斤装', '6.00', '4.00', '5.00', '斤', '8', '0', '0', '98', '1', '1', '1', '2020-03-22 19:53:27');
INSERT INTO `products` VALUES ('5', '202003221584878200', 'https://img.alicdn.com/imgextra/i4/3532490475/O1CN01MlJf1r1FNai4SaUic_!!2-item_pic.png_2200x2200Q50s50.jpg_.webp', '有机白莲去芯干货500g', '39.00', '30.00', '35.00', '包', '8', '0', '0', '104', '1', '0', '1', '2020-03-22 19:56:40');

-- ----------------------------
-- Table structure for recharges
-- ----------------------------
DROP TABLE IF EXISTS `recharges`;
CREATE TABLE `recharges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rechargeNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `money` int DEFAULT NULL,
  `gift` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- Records of recharges
-- ----------------------------
INSERT INTO `recharges` VALUES ('1', 'No20032915111592556933080', '100', '10');
INSERT INTO `recharges` VALUES ('2', 'No20032915111590660931495', '200', '25');
INSERT INTO `recharges` VALUES ('3', 'No20032915121585854747871', '500', '80');

-- ----------------------------
-- Table structure for red_list
-- ----------------------------
DROP TABLE IF EXISTS `red_list`;
CREATE TABLE `red_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `redNo` varchar(50) DEFAULT NULL,
  `userId` varchar(50) DEFAULT NULL,
  `money` decimal(5,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of red_list
-- ----------------------------
INSERT INTO `red_list` VALUES ('11', 'No200403158587969417', '20032921542562865224343', '5.40', '2020-04-03 10:08:14');
INSERT INTO `red_list` VALUES ('12', 'No200403158587971105', '20032921542562865224343', '2.90', '2020-04-03 10:08:31');
INSERT INTO `red_list` VALUES ('13', 'No200403158587972187', '20032921542562865224343', '6.10', '2020-04-03 10:08:41');
INSERT INTO `red_list` VALUES ('14', 'No200403158587976301', '20032921542562865224343', '5.90', '2020-04-03 10:09:23');
INSERT INTO `red_list` VALUES ('15', 'No200604159125452986', '20032921542562865224343', '1.50', '2020-06-04 15:08:49');
INSERT INTO `red_list` VALUES ('16', 'No200604159125513666', '20032921542562865224343', '0.80', '2020-06-04 15:18:56');
INSERT INTO `red_list` VALUES ('17', 'No200604159125521560', '20032921542562865224343', '7.60', '2020-06-04 15:20:15');
INSERT INTO `red_list` VALUES ('18', 'No200604159125522151', '20032921542562865224343', '5.50', '2020-06-04 15:20:21');
INSERT INTO `red_list` VALUES ('19', 'No200604159125541372', '20032921542562865224343', '2.80', '2020-06-04 15:23:33');
INSERT INTO `red_list` VALUES ('20', 'No200604159125656267', '20032921542562865224343', '8.40', '2020-06-04 15:42:42');
INSERT INTO `red_list` VALUES ('21', 'No200604159125671086', '20032921542562865224343', '2.80', '2020-06-04 15:45:10');
INSERT INTO `red_list` VALUES ('22', 'No200604159125674145', '20032921542562865224343', '4.30', '2020-06-04 15:45:41');
INSERT INTO `red_list` VALUES ('23', 'No200604159125680488', '20032921542562865224343', '0.40', '2020-06-04 15:46:44');

-- ----------------------------
-- Table structure for riders
-- ----------------------------
DROP TABLE IF EXISTS `riders`;
CREATE TABLE `riders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `riderId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `riderName` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trade_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `illegal_operations` tinyint DEFAULT '0' COMMENT '非法操作次数',
  `locked` tinyint(1) DEFAULT '0',
  `total_income` tinyint DEFAULT '0',
  `amount_available` tinyint DEFAULT '0',
  `frozen_amount` tinyint DEFAULT '0',
  `withdrawal_account` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '骑手提现账号',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- Records of riders
-- ----------------------------
INSERT INTO `riders` VALUES ('3', '20032920001950521452463', '码云', '15588889999', '123456', null, '0', '0', '30', '0', '30', '15588889999', '2020-03-29 20:00:02');

-- ----------------------------
-- Table structure for rider_income
-- ----------------------------
DROP TABLE IF EXISTS `rider_income`;
CREATE TABLE `rider_income` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `riderId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `income` decimal(10,0) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- Records of rider_income
-- ----------------------------
INSERT INTO `rider_income` VALUES ('32', 'No200331158565434548', '20032921321937000618950', '20032920001950521452463', '5', '2020-03-31 19:37:52');
INSERT INTO `rider_income` VALUES ('33', 'No200331158565346622', '20032921291796460096295', '20032920001950521452463', '5', '2020-03-31 19:37:58');
INSERT INTO `rider_income` VALUES ('34', 'No200331158565351961', '20032921291796460096295', '20032920001950521452463', '5', '2020-03-31 19:38:04');
INSERT INTO `rider_income` VALUES ('35', 'No200331158565478364', '20032921291796460096295', '20032920001950521452463', '5', '2020-03-31 19:41:34');
INSERT INTO `rider_income` VALUES ('36', 'No200331158565489108', '20032921291796460096295', '20032920001950521452463', '5', '2020-03-31 19:42:09');
INSERT INTO `rider_income` VALUES ('37', 'No200331158565502100', '20032921321937000618950', '20032920001950521452463', '5', '2020-03-31 19:44:04');

-- ----------------------------
-- Table structure for systems
-- ----------------------------
DROP TABLE IF EXISTS `systems`;
CREATE TABLE `systems` (
  `id` int NOT NULL,
  `deliveryFee` decimal(5,2) DEFAULT NULL,
  `withdrawalMoney` tinyint DEFAULT NULL,
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

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount_available` decimal(10,2) DEFAULT '0.00' COMMENT '可用余额',
  `used_amount` decimal(10,2) DEFAULT '0.00' COMMENT '已消费',
  `roleType` varchar(5) DEFAULT NULL,
  `newcomer` int DEFAULT '1' COMMENT '未购买过就是新人',
  `reportsNum` tinyint DEFAULT '0' COMMENT '被举报次数',
  `locked` tinyint(1) unsigned zerofill DEFAULT '0',
  `tradePwd` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '202003201003', 'admin', '13058076001', '123456wlq', '0.00', '0.00', 'admin', '1', '0', '0', '111111', '2020-03-20 10:03:42');
INSERT INTO `users` VALUES ('4', '20032919351910895346999', '张三', '15899998888', '123456', '0.00', '0.00', 'web', '1', '0', '0', '111111', '2020-03-29 19:35:17');
INSERT INTO `users` VALUES ('5', '20032920212302613515070', '芒果', '17770116460', 'nhqj123456', '0.00', '0.00', 'web', '1', '0', '0', '111111', '2020-03-29 20:21:17');
INSERT INTO `users` VALUES ('6', '20032921291796460096295', '黄小姐', '18123938571', '123456', '419.00', '161.00', 'web', '0', '0', '0', '111111', '2020-03-29 21:29:02');
INSERT INTO `users` VALUES ('7', '20032921321937000618950', '罗芳', '15919468155', '100656', '1379.12', '5.88', 'web', '0', '0', '0', '111111', '2020-03-29 21:32:18');
INSERT INTO `users` VALUES ('8', '20032921431885563258541', '许生', '18165724083', 'xuneng', '0.00', '0.00', 'web', '1', '0', '0', '111111', '2020-03-29 21:43:01');
INSERT INTO `users` VALUES ('9', '20032921542562865224343', '李斯', '13088889999', '123456', '54.40', '0.00', 'web', '0', '0', '0', '111111', '2020-03-29 21:54:58');

-- ----------------------------
-- Table structure for user_assets_detail
-- ----------------------------
DROP TABLE IF EXISTS `user_assets_detail`;
CREATE TABLE `user_assets_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `money` decimal(10,2) NOT NULL COMMENT '充值 或 消费 金额',
  `remark` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0' COMMENT '1 充值  2消费',
  `status` tinyint(1) DEFAULT '0' COMMENT '充值：1待审核 2成功  3失败',
  `recharge_way` int DEFAULT NULL COMMENT '充值方式 1支付宝 2微信',
  `recharge_bonus` int DEFAULT '0' COMMENT '充值赠送金额',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- Records of user_assets_detail
-- ----------------------------
INSERT INTO `user_assets_detail` VALUES ('19', 'No200331158565341344', '20032921321937000618950', '500.00', '用户充值', '1', '2', '1', '80', '2020-03-31 19:16:53');
INSERT INTO `user_assets_detail` VALUES ('20', 'No200331158565370271', '20032921321937000618950', '500.00', '用户充值', '1', '2', '1', '80', '2020-03-31 19:21:42');
INSERT INTO `user_assets_detail` VALUES ('21', 'No200331158565370782', '20032921321937000618950', '200.00', '用户充值', '1', '2', '2', '25', '2020-03-31 19:21:47');
INSERT INTO `user_assets_detail` VALUES ('22', 'No200331158565467269', '20032921321937000618950', '5.88', '购物消费', '2', '2', null, '0', '2020-03-31 19:37:52');
INSERT INTO `user_assets_detail` VALUES ('23', 'No200331158565467865', '20032921291796460096295', '139.00', '购物消费', '2', '2', null, '0', '2020-03-31 19:37:58');
INSERT INTO `user_assets_detail` VALUES ('24', 'No200331158565468479', '20032921291796460096295', '139.00', '购物消费', '2', '2', null, '0', '2020-03-31 19:38:04');
INSERT INTO `user_assets_detail` VALUES ('25', 'No200331158565482837', '20032921291796460096295', '500.00', '用户充值', '1', '2', '1', '80', '2020-03-31 19:40:28');
INSERT INTO `user_assets_detail` VALUES ('26', 'No200331158565489487', '20032921291796460096295', '161.00', '购物消费', '2', '2', null, '0', '2020-03-31 19:41:34');
INSERT INTO `user_assets_detail` VALUES ('27', 'No200331158565492903', '20032921291796460096295', '161.00', '购物消费', '2', '2', null, '0', '2020-03-31 19:42:09');
INSERT INTO `user_assets_detail` VALUES ('28', 'No200331158565504491', '20032921321937000618950', '86.00', '购物消费', '2', '2', null, '0', '2020-03-31 19:44:04');
INSERT INTO `user_assets_detail` VALUES ('29', 'No200403158587969419', '20032921542562865224343', '5.40', '红包抽奖', '3', '2', null, '0', '2020-04-03 10:08:14');
INSERT INTO `user_assets_detail` VALUES ('30', 'No200403158587971107', '20032921542562865224343', '2.90', '红包抽奖', '3', '2', null, '0', '2020-04-03 10:08:31');
INSERT INTO `user_assets_detail` VALUES ('31', 'No200403158587972188', '20032921542562865224343', '6.10', '红包抽奖', '3', '2', null, '0', '2020-04-03 10:08:41');
INSERT INTO `user_assets_detail` VALUES ('32', 'No200403158587976302', '20032921542562865224343', '5.90', '红包抽奖', '3', '2', null, '0', '2020-04-03 10:09:23');
INSERT INTO `user_assets_detail` VALUES ('33', 'No200604159125452989', '20032921542562865224343', '1.50', '红包抽奖', '3', '2', null, '0', '2020-06-04 15:08:49');
INSERT INTO `user_assets_detail` VALUES ('34', 'No200604159125513668', '20032921542562865224343', '0.80', '红包抽奖', '3', '2', null, '0', '2020-06-04 15:18:56');
INSERT INTO `user_assets_detail` VALUES ('35', 'No200604159125521562', '20032921542562865224343', '7.60', '红包抽奖', '3', '2', null, '0', '2020-06-04 15:20:15');
INSERT INTO `user_assets_detail` VALUES ('36', 'No200604159125522153', '20032921542562865224343', '5.50', '红包抽奖', '3', '2', null, '0', '2020-06-04 15:20:21');
INSERT INTO `user_assets_detail` VALUES ('37', 'No200604159125541374', '20032921542562865224343', '2.80', '红包抽奖', '3', '2', null, '0', '2020-06-04 15:23:33');
INSERT INTO `user_assets_detail` VALUES ('38', 'No200604159125656269', '20032921542562865224343', '8.40', '红包抽奖', '3', '2', null, '0', '2020-06-04 15:42:42');
INSERT INTO `user_assets_detail` VALUES ('39', 'No200604159125671089', '20032921542562865224343', '2.80', '红包抽奖', '3', '2', null, '0', '2020-06-04 15:45:10');
INSERT INTO `user_assets_detail` VALUES ('40', 'No200604159125674147', '20032921542562865224343', '4.30', '红包抽奖', '3', '2', null, '0', '2020-06-04 15:45:41');
INSERT INTO `user_assets_detail` VALUES ('41', 'No200604159125680489', '20032921542562865224343', '0.40', '红包抽奖', '3', '2', null, '0', '2020-06-04 15:46:44');

-- ----------------------------
-- Table structure for withdrawals_record
-- ----------------------------
DROP TABLE IF EXISTS `withdrawals_record`;
CREATE TABLE `withdrawals_record` (
  `id` int NOT NULL AUTO_INCREMENT,
  `riderId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `money` tinyint DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '1 待审核 2成功 3失败',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- Records of withdrawals_record
-- ----------------------------
INSERT INTO `withdrawals_record` VALUES ('7', '20032920001950521452463', '10', '1', '2020-03-31 21:41:31');
INSERT INTO `withdrawals_record` VALUES ('8', '20032920001950521452463', '10', '1', '2020-03-31 21:41:50');
INSERT INTO `withdrawals_record` VALUES ('9', '20032920001950521452463', '10', '1', '2020-03-31 21:41:56');

-- ----------------------------
-- Table structure for zhu_sales_record
-- ----------------------------
DROP TABLE IF EXISTS `zhu_sales_record`;
CREATE TABLE `zhu_sales_record` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `num` int DEFAULT NULL,
  `giftNum` int DEFAULT '0',
  `postage` decimal(20,0) DEFAULT NULL COMMENT '邮费',
  `remark` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhu_sales_record
-- ----------------------------
INSERT INTO `zhu_sales_record` VALUES ('1', '张三', '15588889999', '江西省赣州市石城县琴江镇坝口村', '700', '12', '1', '0', '12头母，赠送1头公', '2020-07-01 12:33:56');
INSERT INTO `zhu_sales_record` VALUES ('2', '李四', '13011112222', '宁夏回族自治区银川市金凤区福州南街172号正西方向108米', '900', '23', '0', '0', '20母，3公', '2020-07-01 15:01:16');
