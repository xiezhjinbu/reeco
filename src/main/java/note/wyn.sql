/*
Navicat MySQL Data Transfer

Source Server         : pis
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : wyn

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2017-05-18 17:26:22
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

-- ----------------------------
-- Table structure for picdata
-- ----------------------------
DROP TABLE IF EXISTS `picdata`;
CREATE TABLE `picdata` (
  `ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `PIC_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `PIC_PATH` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='图片库';

-- ----------------------------
-- Records of picdata
-- ----------------------------
