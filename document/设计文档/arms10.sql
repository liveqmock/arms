/*
Navicat MySQL Data Transfer

Source Server         : 120.24.213.132
Source Server Version : 50537
Source Host           : 120.24.213.132:3306
Source Database       : arms10

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2015-03-06 14:48:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `jigou`
-- ----------------------------
DROP TABLE IF EXISTS `jigou`;
CREATE TABLE `jigou` (
  `jigouGuid` varchar(40) NOT NULL COMMENT '机构guid',
  `jigouCode` varchar(10) NOT NULL COMMENT '机构代码',
  `jigouName` varchar(50) NOT NULL COMMENT '机构名称',
  `jigouLogo` varchar(20) DEFAULT NULL COMMENT '机构LOGO',
  `jigouAddr` varchar(100) DEFAULT NULL COMMENT '机构地址',
  `jigouDesc` text COMMENT '机构描述',
  `jigouTel` varchar(20) NOT NULL COMMENT '机构电话',
  `jigouFax` varchar(20) DEFAULT NULL COMMENT '机构传真',
  PRIMARY KEY (`jigouGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jigou
-- ----------------------------
INSERT INTO `jigou` VALUES ('b7b8787b-ee3d-480f-98b7-084481a8010a', '007', '八路通深圳钟屋店', 'shop7.png', '★导航标记：明天西部酒店', '八路通深圳钟屋店成立于2014年,维修师傅曾就职比亚迪、上海大众、丰田、奥迪、宝马捷豹4S店。熟悉德系、日系、韩系等常用车型。 美容师傅有五年以上工作经验，擅长镀晶、打蜡、贴膜等项目。\r\n', '18822807738', '');
INSERT INTO `jigou` VALUES ('b7b8787b-ee3d-480f-98b7-084481a8010d', '011', '八路通深圳西乡店', 'shop1.png', '深圳市宝安五十区海景花园一层(宝安大道与开屏路交界处)', '八路通深圳西乡店成立于2008年，维修师傅曾就职上海大众、奔驰、别克4S店。熟悉德系、日系、韩系等常用车型。 美容师傅有五年以上工作经验，擅长镀晶、打蜡、贴膜等项目。', '13538046066', '');
INSERT INTO `jigou` VALUES ('b7b8787b-ee3d-480f-98b7-084481a8010e', '002', '八路通深圳红岭店', 'shop2.png', '深圳市福田区红岭北路3001号先科大院3栋108号（泥岗西路与红岭北路交界处）', '八路通深圳红岭店成立于2004年，维修师傅曾就职本田、丰田、奥迪、奔驰大兴4S店。熟悉欧洲系及国产车系列常用车型。\r\n', '13392809689', '');
INSERT INTO `jigou` VALUES ('b7b8787b-ee3d-480f-98b7-084481a8010f', '003', '八路通深圳横岗店', 'shop3.png', '深圳市龙岗区龙岗大道转入荷康路200米（导航荷坳地铁站B出口)', '八路通深圳横岗店成立于2014年，维修师傅曾就职一汽大众、马自达、奔驰、宝马、奥迪、路虎、保时捷4S店。熟悉德系、日系、韩系等常用车型。美容师傅有10年以上的工作经验，擅长镀金、打蜡、贴膜等项目。\r\n', '13510171260', '');
INSERT INTO `jigou` VALUES ('b7b8787b-ee3d-480f-98b7-084481a8010g', '004', '八路通深圳罗芳店', 'shop4.png', '深圳市罗湖区罗芳路91号二楼', '八路通深圳罗芳店成立于1998年,维修师傅曾就职奔驰、宝马、奥迪、4S店。熟悉德系、日系、韩系等常用车型。', '13510020009', '');
INSERT INTO `jigou` VALUES ('b7b8787b-ee3d-480f-98b7-084481a8010h', '005', '八路通深圳新洲店', 'shop5.png', '深圳市福田区下梅林梅华路217号嘉梅小区1号商铺', '八路通深圳新洲店成立于2014年,维修师傅曾就职比亚迪、上海大众、丰田、奥迪、宝马捷豹4S店。熟悉德系、日系、韩系等常用车型。 美容师傅有五年以上工作经验，擅长镀晶、打蜡、贴膜等项目。\r\n ', '18038033335', '');
INSERT INTO `jigou` VALUES ('b7b8787b-ee3d-480f-98b7-084481a8010i', '006', '八路通深圳龙岗店', 'shop6.png', '深圳市龙岗区南通道爱南路353号（永茂行汽车服务有限公司隔壁）', '八路通深圳龙岗店成立于2014年,维修师傅曾就职风行、荣威、丰田4S店。熟悉德系、日系、韩系等常用车型。 \r\n', '15012936204', '');

-- ----------------------------
-- Table structure for `serviceitem`
-- ----------------------------
DROP TABLE IF EXISTS `serviceitem`;
CREATE TABLE `serviceitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemCode` varchar(10) NOT NULL,
  `itemName` varchar(50) NOT NULL,
  `itemDesc` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of serviceitem
-- ----------------------------
INSERT INTO `serviceitem` VALUES ('1', '001001', '普洗', '水枪冲洗，去污');
INSERT INTO `serviceitem` VALUES ('2', '001002', '精洗', '专用车辆清洗液，不损伤车漆可保持车辆漆面的光洁度');
INSERT INTO `serviceitem` VALUES ('3', '001', '洗车美容', '');
INSERT INTO `serviceitem` VALUES ('4', '002', '机电维修', '');
INSERT INTO `serviceitem` VALUES ('8', '003', '钣金喷漆', '');
INSERT INTO `serviceitem` VALUES ('9', '007', '理赔', '');
INSERT INTO `serviceitem` VALUES ('10', '008', '新车销售', '');
INSERT INTO `serviceitem` VALUES ('12', '004', '代办年审', '');
INSERT INTO `serviceitem` VALUES ('13', '005', '二手车买卖', '');
INSERT INTO `serviceitem` VALUES ('14', '006', '保险销售', '');

-- ----------------------------
-- Table structure for `shopserviceitem`
-- ----------------------------
DROP TABLE IF EXISTS `shopserviceitem`;
CREATE TABLE `shopserviceitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jigouCode` varchar(10) NOT NULL,
  `serviceItemCode` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopserviceitem
-- ----------------------------
INSERT INTO `shopserviceitem` VALUES ('2', '011', '001');
INSERT INTO `shopserviceitem` VALUES ('3', '011', '002');
INSERT INTO `shopserviceitem` VALUES ('5', '011', '004');
INSERT INTO `shopserviceitem` VALUES ('6', '011', '005');
INSERT INTO `shopserviceitem` VALUES ('11', '011', '006');
INSERT INTO `shopserviceitem` VALUES ('12', '002', '001');
INSERT INTO `shopserviceitem` VALUES ('13', '002', '002');
INSERT INTO `shopserviceitem` VALUES ('14', '002', '003');
INSERT INTO `shopserviceitem` VALUES ('15', '002', '004');
INSERT INTO `shopserviceitem` VALUES ('16', '002', '005');
INSERT INTO `shopserviceitem` VALUES ('17', '002', '006');
INSERT INTO `shopserviceitem` VALUES ('18', '002', '007');
INSERT INTO `shopserviceitem` VALUES ('19', '001', '007');
INSERT INTO `shopserviceitem` VALUES ('25', '004', '003');
INSERT INTO `shopserviceitem` VALUES ('32', '005', '003');
INSERT INTO `shopserviceitem` VALUES ('39', '006', '003');
INSERT INTO `shopserviceitem` VALUES ('43', '006', '004');
INSERT INTO `shopserviceitem` VALUES ('44', '006', '005');
INSERT INTO `shopserviceitem` VALUES ('45', '006', '006');
INSERT INTO `shopserviceitem` VALUES ('46', '003', '002');
INSERT INTO `shopserviceitem` VALUES ('47', '003', '003');
INSERT INTO `shopserviceitem` VALUES ('48', '003', '004');
INSERT INTO `shopserviceitem` VALUES ('49', '003', '005');
INSERT INTO `shopserviceitem` VALUES ('50', '003', '006');
INSERT INTO `shopserviceitem` VALUES ('51', '003', '007');
INSERT INTO `shopserviceitem` VALUES ('52', '003', '001');
INSERT INTO `shopserviceitem` VALUES ('53', '004', '003');
INSERT INTO `shopserviceitem` VALUES ('54', '004', '004');
INSERT INTO `shopserviceitem` VALUES ('55', '004', '005');
INSERT INTO `shopserviceitem` VALUES ('56', '004', '006');
INSERT INTO `shopserviceitem` VALUES ('57', '004', '001');
INSERT INTO `shopserviceitem` VALUES ('58', '004', '002');
INSERT INTO `shopserviceitem` VALUES ('59', '005', '004');
INSERT INTO `shopserviceitem` VALUES ('60', '005', '005');
INSERT INTO `shopserviceitem` VALUES ('61', '005', '006');
INSERT INTO `shopserviceitem` VALUES ('62', '005', '007');
INSERT INTO `shopserviceitem` VALUES ('63', '005', '001');
INSERT INTO `shopserviceitem` VALUES ('64', '006', '005');
INSERT INTO `shopserviceitem` VALUES ('65', '006', '006');
INSERT INTO `shopserviceitem` VALUES ('69', '005', '002');
INSERT INTO `shopserviceitem` VALUES ('70', '006', '001');
INSERT INTO `shopserviceitem` VALUES ('71', '006', '002');
INSERT INTO `shopserviceitem` VALUES ('72', '006', '003');
INSERT INTO `shopserviceitem` VALUES ('73', '006', '004');
INSERT INTO `shopserviceitem` VALUES ('74', '006', '007');
INSERT INTO `shopserviceitem` VALUES ('75', '007', '001');
INSERT INTO `shopserviceitem` VALUES ('76', '007', '002');
INSERT INTO `shopserviceitem` VALUES ('77', '007', '003');
INSERT INTO `shopserviceitem` VALUES ('78', '007', '004');
INSERT INTO `shopserviceitem` VALUES ('79', '007', '005');
INSERT INTO `shopserviceitem` VALUES ('80', '007', '006');
INSERT INTO `shopserviceitem` VALUES ('81', '007', '007');

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
  `shopAdd` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '店铺地址',
  `shopTel` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '店铺电话',
  PRIMARY KEY (`systemId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of systeminfo
-- ----------------------------
INSERT INTO `systeminfo` VALUES ('1', '八路通深圳西乡店', '2015-05-20', 'arms', 'arms11', '120.24.213.132', 'root', 'e77a85d63e', '深圳市宝安五十区海景花园一层(宝安大道与开屏路交界处)', '29971491/18038094463');
INSERT INTO `systeminfo` VALUES ('2', '八路通深圳西乡店', '2015-05-20', 'arms1', 'arms11', '120.24.213.132', 'root', 'e77a85d63e', '', '');
INSERT INTO `systeminfo` VALUES ('3', '八路通深圳西乡店', '2015-05-20', 'arms2', 'arms11', '120.24.213.132', 'root', 'e77a85d63e', null, null);
INSERT INTO `systeminfo` VALUES ('4', '八路通深圳西乡店', '2015-05-20', 'arms3', 'arms11', '120.24.213.132', 'root', 'e77a85d63e', null, null);
