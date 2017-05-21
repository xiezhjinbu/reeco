/*
Navicat MySQL Data Transfer

Source Server         : pis
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : wyn

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-05-21 16:44:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for company_info
-- ----------------------------
DROP TABLE IF EXISTS `company_info`;
CREATE TABLE `company_info` (
  `COMPANY_NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `INFORMATION` text COLLATE utf8_bin,
  `CONTAC_CO` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `TEL_CO` int(11) DEFAULT NULL,
  `PHONE` int(18) DEFAULT NULL,
  `ADDR_CO` text COLLATE utf8_bin,
  `FB` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `TW` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `E_MAIL` varchar(30) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='公司介绍';

-- ----------------------------
-- Records of company_info
-- ----------------------------
INSERT INTO `company_info` VALUES ('宁波海关', 0xE5AE81E6B3A2E6B5B7E585B3, '王艳娜', '1234567890', '860574123', 0xE9A9ACE59BADE8B7AF3839E58FB7, '11111', '1111', '111@111');

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `ITEM_NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ITEM_CODE` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `MATERIAL` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CLASS_NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CLASS_TYPE` int(11) DEFAULT NULL,
  `G_MODEL` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `PRICE` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商品介绍表';

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('9efc54b8-3c8d-11e7-9988-08edb9d95ef0', '玻璃杯', 'aaa', 'pp', '玻璃杯', '1', 'aaa', '23');
INSERT INTO `items` VALUES ('9efdcd10-3c8d-11e7-9988-08edb9d95ef0', '保温杯', 'bbb', 'pp', '保温杯', '2', 'bbb', '24');
INSERT INTO `items` VALUES ('9eff9f1b-3c8d-11e7-9988-08edb9d95ef0', '玻璃杯', 'ccc', 'pp', '玻璃杯', '1', 'ccc', '21');
INSERT INTO `items` VALUES ('9f02ab4f-3c8d-11e7-9988-08edb9d95ef0', '保温杯', 'ddd', 'pp', '保温杯', '2', 'ddd', '21.9');
INSERT INTO `items` VALUES ('9f04ebaf-3c8d-11e7-9988-08edb9d95ef0', '太空杯', 'eee', 'pp', '太空杯', '3', 'eee', '223');
INSERT INTO `items` VALUES ('9f0972a2-3c8d-11e7-9988-08edb9d95ef0', '太空杯', 'hhh', 'pp', '太空杯', '3', 'hhh', '28');
INSERT INTO `items` VALUES ('9f0bddd2-3c8d-11e7-9988-08edb9d95ef0', '玻璃杯', 'iii', 'pp', '玻璃杯', '1', 'iii', '30');

-- ----------------------------
-- Table structure for item_type
-- ----------------------------
DROP TABLE IF EXISTS `item_type`;
CREATE TABLE `item_type` (
  `CLASS_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CLASS_TYPE` int(100) NOT NULL,
  `CLASS_NOTE` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of item_type
-- ----------------------------
INSERT INTO `item_type` VALUES ('玻璃杯', '1', 'ADFSAF');
INSERT INTO `item_type` VALUES ('保温杯', '2', 'SDFDF');
INSERT INTO `item_type` VALUES ('太空杯', '3', 'sdfafasdfasdfa');

-- ----------------------------
-- Table structure for picdata
-- ----------------------------
DROP TABLE IF EXISTS `picdata`;
CREATE TABLE `picdata` (
  `ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `PIC_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `PIC_PATH` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `PRODUCT_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='图片库';

-- ----------------------------
-- Records of picdata
-- ----------------------------
INSERT INTO `picdata` VALUES ('73bf4adb-3ded-11e7-9ba7-08edb9d95ef0', '1.jpg', 'images\\product', '9efc54b8-3c8d-11e7-9988-08edb9d95ef0');
INSERT INTO `picdata` VALUES ('73c156e4-3ded-11e7-9ba7-08edb9d95ef0', '2.jpg', 'images\\product', '9efc54b8-3c8d-11e7-9988-08edb9d95ef0');
INSERT INTO `picdata` VALUES ('73c2cddf-3ded-11e7-9ba7-08edb9d95ef0', '3.jpg', 'images\\product', '9efc54b8-3c8d-11e7-9988-08edb9d95ef0');
