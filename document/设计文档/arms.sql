/*
Navicat MySQL Data Transfer

Source Server         : 120.24.213.132
Source Server Version : 50537
Source Host           : 120.24.213.132:3306
Source Database       : arms

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2015-02-15 23:02:13
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of systeminfo
-- ----------------------------
INSERT INTO `systeminfo` VALUES ('1', '八路通深圳西乡店', '2015-05-20', 'arms1', 'arms4', '120.24.213.132', 'root', 'e77a85d63e');
INSERT INTO `systeminfo` VALUES ('2', '八路通深圳横岗店', '2015-05-20', 'arms2', 'arms5', '120.24.213.132', 'root', 'e77a85d63e');

-- ----------------------------
-- View structure for `view_carmodel`
-- ----------------------------
DROP VIEW IF EXISTS `view_carmodel`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `view_carmodel` AS select `t1`.`brandId` AS `brandId`,`t1`.`brandName` AS `brandName`,`t1`.`brandLogo` AS `brandLogo`,`t2`.`modelId` AS `modelId`,`t2`.`modelName` AS `modelName`,`t2`.`id` AS `id` from (`carbrand` `t1` join `carmodel` `t2`) where (`t1`.`brandId` = `t2`.`brandId`) ;

-- ----------------------------
-- View structure for `v_kehu_cheliang`
-- ----------------------------
DROP VIEW IF EXISTS `v_kehu_cheliang`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_kehu_cheliang` AS select `arms`.`customerinfo`.`txtCustId` AS `txtCustId`,`arms`.`customerinfo`.`ddlCustSort` AS `ddlCustSort`,`arms`.`customerinfo`.`txtCheZhuName` AS `txtCheZhuName`,`arms`.`customerinfo`.`txtCheZhuTel` AS `txtCheZhuTel`,`arms`.`customerinfo`.`txtLianXiRenName` AS `txtLianXiRenName`,`arms`.`customerinfo`.`txtLianXiRenTel` AS `txtLianXiRenTel`,`arms`.`customerinfo`.`txtLianXiRenAdd` AS `txtLianXiRenAdd`,`arms`.`customerinfo`.`txtHuiYuanJiFen` AS `txtHuiYuanJiFen`,`arms`.`customerinfo`.`txtGongShiZheKou` AS `txtGongShiZheKou`,`arms`.`customerinfo`.`txtCaiLiaoZheKou` AS `txtCaiLiaoZheKou`,`arms`.`customerinfo`.`txtHuiYuanDengJi` AS `txtHuiYuanDengJi`,`arms`.`customerinfo`.`txtCheZhuJiaZhaoDate` AS `txtCheZhuJiaZhaoDate`,`arms`.`chelianginfo`.`txtCheLiangId` AS `txtCheLiangId`,`arms`.`chelianginfo`.`txtCheLiangChePaiHao` AS `txtCheLiangChePaiHao`,`arms`.`chelianginfo`.`ddlCheLiangZhiZaoShang` AS `ddlCheLiangZhiZaoShang`,`arms`.`chelianginfo`.`ddlCheLiangCheXi` AS `ddlCheLiangCheXi`,`arms`.`chelianginfo`.`txtCheLiangCheXingDaiMa` AS `txtCheLiangCheXingDaiMa`,`arms`.`chelianginfo`.`txtCheLiangCheJiaHao` AS `txtCheLiangCheJiaHao`,`arms`.`chelianginfo`.`txtCheLiangFaDongJiHao` AS `txtCheLiangFaDongJiHao` from (`customerinfo` left join `chelianginfo` on((`arms`.`customerinfo`.`txtCustId` = `arms`.`chelianginfo`.`txtCustId`))) ;
