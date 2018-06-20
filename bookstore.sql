/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : bookstore

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2018-06-05 19:48:38
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `n_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('5', 'gonggao2', '222222', '2018-05-21 19:45:38');
INSERT INTO `notice` VALUES ('6', 'gonggao3', '3333333', '2018-05-21 19:45:54');
INSERT INTO `notice` VALUES ('7', 'gonggao4', '444444', '2018-05-21 19:46:06');
INSERT INTO `notice` VALUES ('8', 'gonggao55', '5555555\r\n', '2018-05-21 19:46:28');
INSERT INTO `notice` VALUES ('9', 'gonggao6', '6666666', '2018-05-21 19:46:40');
INSERT INTO `notice` VALUES ('10', 'gonggao7', '777777', '2018-05-21 19:46:50');
INSERT INTO `notice` VALUES ('11', 'gonggao8', '888888', '2018-05-21 19:47:08');
INSERT INTO `notice` VALUES ('12', 'gonggao9', '9999999', '2018-05-21 19:47:18');
INSERT INTO `notice` VALUES ('13', 'gonggao10', '1010101010', '2018-05-21 19:47:31');
INSERT INTO `notice` VALUES ('14', 'gonggao111', '11111111', '2018-05-21 19:47:43');

-- ----------------------------
-- Table structure for `orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `order_id` varchar(100) NOT NULL DEFAULT '',
  `product_id` varchar(100) NOT NULL DEFAULT '',
  `buynum` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('15f0c0bd-5e13-48c3-bdcc-0e5c4c68e336', '2', '1');
INSERT INTO `orderitem` VALUES ('1b2a940d-08c3-45c0-bdc6-635ab3857189', '2', '1');
INSERT INTO `orderitem` VALUES ('1c6368c4-fcdd-4fbc-ba00-49f93e52ec18', '2', '2');
INSERT INTO `orderitem` VALUES ('32622d69-1a6a-40e9-9d04-c9a710622d65', '2', '1');
INSERT INTO `orderitem` VALUES ('3bd317c7-0d6a-4139-a916-00a546864fa6', '1', '1');
INSERT INTO `orderitem` VALUES ('3ec21bf2-8817-4c2c-9acd-1c605206cd7e', '1', '1');
INSERT INTO `orderitem` VALUES ('3ec21bf2-8817-4c2c-9acd-1c605206cd7e', '2', '1');
INSERT INTO `orderitem` VALUES ('4244854b-1ee5-46e5-b9e3-7a5ab2313d81', '2', '1');
INSERT INTO `orderitem` VALUES ('45abfac8-1d29-4a7c-8ad6-b0c44c6eecd9', '2', '1');
INSERT INTO `orderitem` VALUES ('5c8a24b8-5a5f-4065-94db-e297f86d3bb6', '6', '1');
INSERT INTO `orderitem` VALUES ('662d2949-7d26-4ac8-bed9-bd740ef05653', '1', '1');
INSERT INTO `orderitem` VALUES ('662d2949-7d26-4ac8-bed9-bd740ef05653', '2', '1');
INSERT INTO `orderitem` VALUES ('6632d9ac-26e7-4f8e-a783-b2991a9c5824', '2', '1');
INSERT INTO `orderitem` VALUES ('66a70e53-4328-4801-943d-18cf8262d8c3', '2', '2');
INSERT INTO `orderitem` VALUES ('66e41658-31e1-43ea-b6b6-49b4e5ec10d3', '5', '1');
INSERT INTO `orderitem` VALUES ('6e375e30-c333-4d4f-a44b-96285d73b65b', '1', '1');
INSERT INTO `orderitem` VALUES ('6e375e30-c333-4d4f-a44b-96285d73b65b', '2', '1');
INSERT INTO `orderitem` VALUES ('705829e6-9ed7-4516-9249-6d7a8c2253e4', '1', '2');
INSERT INTO `orderitem` VALUES ('88d91237-f8f4-4975-8fb4-3fc55715f4d6', '1', '1');
INSERT INTO `orderitem` VALUES ('8e784e52-f0bd-43d7-bd26-565540395159', '2', '1');
INSERT INTO `orderitem` VALUES ('8fc052b4-39fd-44fb-84eb-87f5ee924f47', '2', '1');
INSERT INTO `orderitem` VALUES ('a420067a-ab21-4f3f-9c2a-846ec66e64fe', '1', '1');
INSERT INTO `orderitem` VALUES ('d1d81bff-fcff-48f4-bbaf-d2d7ac5b0eea', '1', '1');
INSERT INTO `orderitem` VALUES ('d1d81bff-fcff-48f4-bbaf-d2d7ac5b0eea', '2', '1');
INSERT INTO `orderitem` VALUES ('dc3866d1-3776-4d3c-8e14-2052df55f1e2', '1', '1');
INSERT INTO `orderitem` VALUES ('dc3866d1-3776-4d3c-8e14-2052df55f1e2', '2', '1');
INSERT INTO `orderitem` VALUES ('de45e7fb-1710-45fc-b2dc-35d48b9539c8', '3', '1');
INSERT INTO `orderitem` VALUES ('e8597d2c-05c2-4651-a46b-93ff0bd9a495', '2', '1');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(100) NOT NULL,
  `money` double DEFAULT NULL,
  `receiverAddress` varchar(255) DEFAULT NULL,
  `receiverName` varchar(20) DEFAULT NULL,
  `receiverPhone` varchar(20) DEFAULT NULL,
  `paystate` int(11) DEFAULT '0',
  `ordertime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('5c8a24b8-5a5f-4065-94db-e297f86d3bb6', '23.8', '123456', 'nn', '123456', '1', '2018-05-24 13:40:20', '8');
INSERT INTO `orders` VALUES ('6632d9ac-26e7-4f8e-a783-b2991a9c5824', '34', 'llool', 'uuuid', '11', '1', '2018-06-05 18:16:32', '22');
INSERT INTO `orders` VALUES ('66e41658-31e1-43ea-b6b6-49b4e5ec10d3', '19.5', '225', 'nn', '11', '1', '2018-05-24 13:40:14', '22');
INSERT INTO `orders` VALUES ('705829e6-9ed7-4516-9249-6d7a8c2253e4', '64', '11223', 'nn', '11', '1', '2018-05-24 13:40:13', '22');
INSERT INTO `orders` VALUES ('de45e7fb-1710-45fc-b2dc-35d48b9539c8', '27.5', '123', 'nn', '11', '0', '2018-05-24 13:40:09', '22');
INSERT INTO `orders` VALUES ('e8597d2c-05c2-4651-a46b-93ff0bd9a495', '34', '安阳', '于亚芳', '123456', '0', '2018-04-14 21:29:31', '7');

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(40) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category` varchar(40) DEFAULT NULL,
  `pnum` int(11) DEFAULT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'java web', '32', '计算机', '30', '/productImg/10/5/36ee63bc-c251-49ce-9b9a-b5e1e2e75ec0.jpg', '111111111111111111111111111111111111111111111111');
INSERT INTO `products` VALUES ('2', '时空穿行', '34', '科技', '39', '/productImg/11/4/d79dc124-de69-4b77-847e-bc461bfdb857.jpg', '222222222222222222222222222222222222222222222222222222');
INSERT INTO `products` VALUES ('3', '大勇和小花的欧洲日记', '27.5', '少儿', '90', '/productImg/12/1/986b5e98-ee73-4717-89fd-b6ac26a8dc2c.jpg', '大勇和小花的欧洲日记大勇和小花的欧洲日记大勇和小花的欧洲日记大勇和小花的欧洲日记大勇和小花的欧洲日记大勇和小花的欧洲日记');
INSERT INTO `products` VALUES ('4', 'Java基础入门', '38', '计算机', '69', '/productImg/12/14/a1ace169-b53a-41c6-bdea-000e5946b2a5.png', 'Java基础入门Java基础入门Java基础入门Java基础入门Java基础入门Java基础入门');
INSERT INTO `products` VALUES ('5', '别做正常的傻瓜', '19.5', '励志', '20', '/productImg/14/1/792116e7-6d83-4be4-b3e5-4dd11b0b4565.jpg', '别做正常的傻瓜别做正常的傻瓜别做正常的傻瓜别做正常的傻瓜');
INSERT INTO `products` VALUES ('6', '中国国家地理', '23.8', '社科', '18', '/productImg/f0d552aa-5407-466b-acd5-23c22b51fc85-2105fbe5-400f-4193-a7db-d7ebac389550.jpg', '中国国家地理中国国');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `introduce` varchar(100) DEFAULT NULL,
  `activeCode` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `role` varchar(10) DEFAULT '普通用户',
  `registTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('17', 'ccc', '123456', '男', '11@qq.com', '123456', '111', 'uio-12asj-78-dfla-dj12-fakl-fjiow-eji-je', '1', '超级用户', '2018-05-21 21:15:13');
INSERT INTO `user` VALUES ('22', 'nn', '123456', '男', '1667851989@qq.com', '11', '22', '8d125472-09b9-4d2f-acb9-3b084abdf375', '1', '普通用户', '2018-05-21 21:45:19');
INSERT INTO `user` VALUES ('24', 'jsx', '000000', '女', '1051910175@qq.com', '111111', '2222222', '8fad737b-cc13-4f7f-989a-84f6fa091121', '1', '普通用户', '2018-06-05 19:24:20');
INSERT INTO `user` VALUES ('25', 'lb', '142536', '男', '1754142834@qq.com', '00000', '0000001123', '6d0b2225-84f6-493e-952c-064428d154cf', '1', '普通用户', '2018-06-05 19:35:29');
