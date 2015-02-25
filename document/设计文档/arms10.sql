/*
Navicat MySQL Data Transfer

Source Server         : 120.24.213.132_3306
Source Server Version : 50537
Source Host           : 120.24.213.132:3306
Source Database       : arms10

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2015-02-25 23:54:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `systeminfo`
-- ----------------------------
DROP TABLE IF EXISTS `systeminfo`;
CREATE TABLE `systeminfo` (
  `systemId` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `shopName` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '店铺名称',
  `expirydate` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '系统使用到期时间',
  `systemkey` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '系统key',
  `db_name` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '数据库名称',
  `db_host` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '数据库服务器ip',
  `db_username` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '数据库登录账户',
  `db_password` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '数据库登录密码',
  PRIMARY KEY (`systemId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of systeminfo
-- ----------------------------
INSERT INTO `systeminfo` VALUES ('1', '八路通深圳西乡店', '2015-05-20', 'arms2', 'arms5', '120.24.213.132', 'root', 'e77a85d63e');
INSERT INTO `systeminfo` VALUES ('2', '八路通深圳西乡店', '2015-05-20', 'arms', 'arms11', '120.24.213.132', 'root', 'e77a85d63e');
