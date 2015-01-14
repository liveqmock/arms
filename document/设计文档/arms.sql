/*
Navicat MySQL Data Transfer

Source Server         : 120.24.213.132
Source Server Version : 50537
Source Host           : 120.24.213.132:3306
Source Database       : arms

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2015-01-14 21:43:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for caigoubill
-- ----------------------------
DROP TABLE IF EXISTS `caigoubill`;
CREATE TABLE `caigoubill` (
  `txtBillGuid` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '采购单guid',
  `txtBillNo` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '采购单号',
  `txtOrderDate` date DEFAULT NULL COMMENT '订购日期',
  `txtSuppId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '供应商编号',
  `txtSuppName` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '供应商名称',
  `txtJingShouRen` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '经手人',
  `ddlCangKu` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '所属仓库',
  `txtOrderJinE` float(10,2) NOT NULL COMMENT '预约订金',
  `ddlChkType` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '结算方式',
  `ddlFaPiaoType` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '发票类型',
  `txtRemarks` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '单据备注',
  `ddlStatus` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`txtBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of caigoubill
-- ----------------------------

-- ----------------------------
-- Table structure for caigoubillmingxi
-- ----------------------------
DROP TABLE IF EXISTS `caigoubillmingxi`;
CREATE TABLE `caigoubillmingxi` (
  `txtBillNo` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '采购单号',
  `txtMingxiId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '采购明细id',
  `shopId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '商品编码',
  `shopName` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '商品名称',
  `shopGuiGe` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '规格',
  `unit` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '单位',
  `kuCun` int(11) NOT NULL COMMENT '库存',
  `qty` int(11) NOT NULL COMMENT '数量',
  `price` float(10,2) NOT NULL COMMENT '价格',
  `priceAll` float(10,2) NOT NULL COMMENT '金额',
  `remarks` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '备注',
  PRIMARY KEY (`txtBillNo`),
  CONSTRAINT `caigoubillmingxi_ibfk_1` FOREIGN KEY (`txtBillNo`) REFERENCES `caigoubill` (`txtBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of caigoubillmingxi
-- ----------------------------

-- ----------------------------
-- Table structure for chezhulianxiren
-- ----------------------------
DROP TABLE IF EXISTS `chezhulianxiren`;
CREATE TABLE `chezhulianxiren` (
  `txtCustId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '客户id',
  `ddlCustSort` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '客户类型',
  `txtCheZhuName` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车主名',
  `ddlCheZhuTelSort` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '车主电话或手机',
  `txtCheZhuTel` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '电话或手机号码',
  `txtCheZhuTelNeiXian` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '内线',
  `txtCheZhuZhuZhaiTel` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '住宅电话',
  `txtCheZhuChuanZhen` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '传真',
  `txtCheZhuMob` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '车主手机',
  `ddlCheZhuQiYeSort` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '企业类别',
  `ddlCheZhuChengWei` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '称谓',
  `ddlSex` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `ddlCheZhuHunYinZhuangKuang` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '婚姻状况',
  `txtCheZhuZiNvQty` int(11) DEFAULT '0' COMMENT '子女数目',
  `ddlCheZhuCardSort` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '证件类型',
  `txtCheZhuCardNo` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '证件号码',
  `txtCheZhuShengRi` date DEFAULT NULL COMMENT '生日',
  `ddlCheZhuP` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '所属区域-省(直辖市)',
  `ddlCheZhuC` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '所属区域-市(地区)',
  `ddlCheZhuA` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '所属区域-区(县)',
  `txtCheZhuAdd` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车主地址',
  `ddlCheZhuSuoShuHangYe` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '所属行业',
  `ddlCheZhuGuanXiSort` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '关系类型',
  `ddlCheZhuJiaTingSort` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '家庭类型',
  `ddlCheZhuZhiYeSort` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '职业类型',
  `txtCheZhuLaiYuan` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '客户来源',
  `ddlCheZhuNianLing` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '年龄区间',
  `ddlCheZhuShouRu` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '收入区间',
  `txtCheZhuAiHao` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '爱好',
  `ddlCheZhuXueLi` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '学历',
  `txtCheZhuEMail` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'E-Mail',
  `txtCheZheGouCheQty` int(11) DEFAULT '1' COMMENT '购车次数',
  `txtCheZhuGongZuoDanWei` varchar(60) COLLATE utf8_bin DEFAULT NULL COMMENT '工作单位',
  `txtLianXiRenName` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '联系人姓名',
  `ddlLianXiRenSex` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `txtLianXiRenTel` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人电话',
  `txtLianXiRenMob` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人手机',
  `ddlLianXiRenChengWei` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '称谓',
  `ddlLianXiRenShenFen` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '身份',
  `ddlLianXiRenZhiWei` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '职位',
  `ddlLianXiCardSort` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '证件类型',
  `txtLianXiRenCardNo` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '证件号码',
  `txtLianXiRenBirthday` date DEFAULT NULL COMMENT '联系人生日',
  `ddlLianXiRenP` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '所属区域-省(直辖市)',
  `ddlLianXiRenC` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '所属区域-市(地区)',
  `ddlLianXiRenA` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '所属区域-区(县)',
  `txtLianXiRenAdd` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车主地址',
  `ddlLianXiRenJiaZhaoSort` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '驾照类型',
  `txtLianXiRenJiaZhaoDate` date DEFAULT NULL COMMENT '驾照日期',
  `txtLianXiRenFirstJiaZhaoDate` date DEFAULT NULL COMMENT '初领驾照日期',
  `txtLianXiRenJiaZhaoArea` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '驾照所属地区',
  `txtLianXiRenTeZheng` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人特征',
  `txtLianXiRenEMail` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'E-Mail',
  `txtLianXiRenGongZuoDanWei` varchar(60) COLLATE utf8_bin DEFAULT NULL COMMENT '工作单位',
  `txtCheLiangJieDaiTiXing` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '接待提醒',
  PRIMARY KEY (`txtCustId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of chezhulianxiren
-- ----------------------------
INSERT INTO `chezhulianxiren` VALUES ('0e57e2db-1585-4703-bac9-3cd967d796bc', '普通客户', '张先生', '车主电话', '13800138003', '', '', '', '13800138003', '', 'MR', '男', '已婚', '0', '港澳身份证', '362501198206193639', '1982-06-19', '江西省', '南昌市', '西湖区', '江西省南昌市西湖区环卫局', '', '良好', '', '', '', '不清楚', '不清楚', '', '不清楚', '', '0', '', '赵花', '女', '13265821118', '13265821118', 'MRS', '', '老师', '身份证', '362501198402183628', '1984-02-18', '江西省', '南昌市', '西湖区', '江西省南昌市西湖区二七南路', 'C', '2015-01-08', '2013-02-20', '', '', '', '', '');
INSERT INTO `chezhulianxiren` VALUES ('2286753d-5056-446f-bca8-3e2646ff27f9', '普通客户', '蔡晓丹', '车主电话', '18038082837', '', '', '', '18038082837', '', 'MRS', '女', '', '0', '身份证', '18038082837', null, '广东省', '深圳市', '宝安区', '广东省深圳市宝安区西乡大道附近2', '', '', '', '', '', '不清楚', '不清楚', '', '不清楚', '', '0', '', '张力', '男', '18033051632', '18033051632', 'MR', '', '', '身份证', '18038082837', null, '广东省', '深圳市', '宝安区', '西乡大道2', 'C', '2014-07-16', '2014-01-10', '', '', '', '', '');
INSERT INTO `chezhulianxiren` VALUES ('281bd0fc-5720-4688-a28d-dc13c4fbd0df', '普通客户', '赵四', '车主电话', '13800138000', '', '', '', '13800138000', '', 'MR', '男', '已婚', '0', '身份证', '430201198206176522', '1982-06-17', '广东省', '深圳市', '宝安区', '广东省深圳市宝安区西乡大道附近', '', '普通', '其他', '医生', '', '不清楚', '不清楚', '钓鱼', '不清楚', '343115156@qq.com', '0', '', '赵二', '男', '13800138001', '13800138001', 'MR', '', '个体', '身份证', '430201198209182698', '1982-09-18', '广东省', '深圳市', '宝安区', '广东省深圳市宝安区西乡大道旁边', 'C', '2011-08-10', '2010-06-10', '', '', '', '', '');
INSERT INTO `chezhulianxiren` VALUES ('31728da4-f9be-4fe4-8a35-82dfaa327d71', '普通客户', 'a', '车主电话', '13728901234', '', '', '', '13728901234', '', '', '', '', '0', '港澳身份证', 'b', null, '省份', '地级市', '市、县级市、县', 'c', '', '', '', '', '', '不清楚', '不清楚', '', '不清楚', '', '0', '', 'a', '男', '13728901234', '13728901234', 'MR', '', '', '身份证', 'b', null, '省份', '地级市', '市、县级市、县', 'b', 'A', null, null, '', '', '', '', '');
INSERT INTO `chezhulianxiren` VALUES ('349a2bb3-bf87-41a9-b0fa-624093e8acf3', '普通客户', '王亮', '车主电话', '18033051636', '', '', '', '18033051636', '', 'MR', '男', '已婚', '0', '港澳身份证', '18033051636', null, '广东省', '深圳市', '宝安区', '广东省深圳市宝安区西乡大道附近3', '', '', '', '', '', '不清楚', '不清楚', '', '不清楚', '', '0', '', '秋云', '女', '13637256415', '13637256415', 'MRS', '', '个体', '身份证', '13637256415', null, '福建省', '南平市', '延平区', '俊逸豪庭小区', 'C', '2016-10-06', '2013-01-10', '', '', '', '', '');
INSERT INTO `chezhulianxiren` VALUES ('c5125fa5-f3fc-4931-998b-5c4d37c2dd1f', '普通客户', '唐洋', '车主电话', '13265821118', '', '', '', '13265821118', '', 'MR', '', '已婚', '0', '身份证', '23333333333', null, '广东省', '深圳市', '宝安区', '广东省深圳南山区海印长城1期4栋5C', '', '普通', '', '', '', '不清楚', '不清楚', '', '不清楚', '', '0', '', '唐洋', '男', '13265821118', '13265821118', 'MR', '', '', '身份证', '13265821118', null, '广东省', '深圳市', '宝安区', '广东省深圳南山区海印长城1期4栋5C', 'C', '2017-08-10', '2011-08-10', '', '', '', '', '');
INSERT INTO `chezhulianxiren` VALUES ('c9bbada0-e6e9-4c6a-b77c-a7aa1ea34b85', '普通客户', '吴瑕', '车主电话', '15626990528', '', '', '', '15626990528', '', '', '', '', '0', '港澳身份证', '15626990528', null, '省份', '地级市', '市、县级市、县', '前海路199号恒立心海湾4栋B座2601', '', '', '', '', '', '不清楚', '不清楚', '', '不清楚', '', '0', '', '吴悠', '女', '138001380002', '13800138002', 'MR', '', '', '身份证', '138001380002', null, '省份', '地级市', '市、县级市、县', '前海路199号恒立心海湾4栋B座2601', 'C', '2015-02-20', '2013-06-19', '', '', '', '', '');
INSERT INTO `chezhulianxiren` VALUES ('e435cedf-7056-4a69-b5ab-88d3a3fbc11e', '普通客户', '陈生', '车主电话', '13902319524', '', '', '', '13902319524', '', 'MR', '男', '已婚', '0', '港澳身份证', '13902319524', null, '广东省', '深圳市', '宝安区', '广东省深圳市宝安区西乡大道附近1', '', '', '', '', '', '不清楚', '不清楚', '', '不清楚', '', '0', '', '陈生', '男', '13902319524', '13902319524', 'MR', '', '', '身份证', '13902319524', null, '广东省', '深圳市', '宝安区', '广东省深圳市宝安区西乡大道旁边1', 'C', '2015-01-06', '2013-07-25', '', '', '', '', '');

-- ----------------------------
-- Table structure for customvehicle
-- ----------------------------
DROP TABLE IF EXISTS `customvehicle`;
CREATE TABLE `customvehicle` (
  `txtCustId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '客户id',
  `txtVehicleId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '车辆id',
  `ddlCheLiangZhiZaoShang` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '制造商',
  `ddlCheLiangCheXi` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '车系',
  `txtCheLiangCheXingDaiMa` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '车型代码',
  `ddlCheShenColor` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '车身颜色',
  `txtCheLiangChePaiHao` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '车牌号',
  `txtCheLiangCheJiaHao` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '车架号',
  `txtCheLiangFaDongJiHao` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '发动机号',
  `txtCheLiangBianSuXiangHao` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '变速箱号',
  `txtBaoXianDate` date DEFAULT NULL COMMENT '投保日期',
  `txtZhiZaoDate` date DEFAULT NULL COMMENT '制造日期',
  `txtGouCheDate` date DEFAULT NULL COMMENT '购车日期',
  `ddlNeiZhuangYanSe` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '内装颜色',
  `txtShangJianDanHao` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '商检单号',
  `txtHeGeZhengHao` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '合格证号',
  `txtJinKouZhengHao` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '进口证号',
  `txtCheLiangGuiGe` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '车辆规格',
  `ddlCheLiangSort` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '车辆种类',
  `txtCheLiangNextExaDate` date DEFAULT NULL COMMENT '年审日期',
  PRIMARY KEY (`txtVehicleId`),
  KEY `txtCustId` (`txtCustId`),
  CONSTRAINT `customvehicle_ibfk_1` FOREIGN KEY (`txtCustId`) REFERENCES `chezhulianxiren` (`txtCustId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of customvehicle
-- ----------------------------
INSERT INTO `customvehicle` VALUES ('349a2bb3-bf87-41a9-b0fa-624093e8acf3', '1f6be1d2-f7fd-4210-8abb-bd2ec5f25b31', '东风本田', 'RX270', '23333', '橙金属色', '粤BU27E6', 'JTHKR5BH1E2214883', '32222', '23333', '2015-01-01', '2014-01-09', '2015-01-01', '黑色', '', '', '', '', null, null);
INSERT INTO `customvehicle` VALUES ('0e57e2db-1585-4703-bac9-3cd967d796bc', '4adc61c0-7acc-4bc8-b6e6-563c8c3cf8d5', '雷克萨斯', 'RX270', '23333', '橙金属色', '粤B6N5U0', 'JTJZA11A3E2470436', '23333', '32222', '2015-01-06', '2014-12-10', '2015-01-02', '黑色', '', '', '', '', null, null);
INSERT INTO `customvehicle` VALUES ('c5125fa5-f3fc-4931-998b-5c4d37c2dd1f', '51651c91-c533-4312-8e96-e946ac78ea80', '雷克萨斯', 'RX270', '32222', '橙金属色', '粤B9E6V1', 'JTHKR5BH1E2214889', '23333', '322222', '2015-01-07', '2014-12-10', '2015-01-05', '浅灰色', '', '', '', '', null, '2021-01-06');
INSERT INTO `customvehicle` VALUES ('2286753d-5056-446f-bca8-3e2646ff27f9', '7e3bbf78-3f01-4616-9dce-3dca11767306', '东风本田', 'RX270', '32222', '橙金属色', '粤B6N5U2', 'JTJZA11A3E2470435', '23333', '23333', '2015-01-06', '2014-01-02', '2015-01-02', '白赭色内饰+乌木饰', '', '', '', '', null, '2021-01-01');
INSERT INTO `customvehicle` VALUES ('2286753d-5056-446f-bca8-3e2646ff27f9', 'a8817398-e3e4-44de-9c9b-05443c3dd85c', 'Lexus雷克萨斯', 'RX270', '23333', '银金属色', '粤B78C29', 'JTHKR5BH1E2214881', '23333', '32222', '2015-01-01', '2013-12-12', '2014-06-04', '黑色', '', '', '', '', null, null);
INSERT INTO `customvehicle` VALUES ('31728da4-f9be-4fe4-8a35-82dfaa327d71', 'e7d822fb-15e1-4986-9a02-ac6d9e5aa07f', '东风本田', 'RX270', 'a', '橙金属色', 'a', 'a', 'a', 'a', null, null, null, '', '', '', '', '', null, null);
INSERT INTO `customvehicle` VALUES ('349a2bb3-bf87-41a9-b0fa-624093e8acf3', 'ed67978f-c5ba-4e52-bc1c-8c40d98e2093', '东风本田', 'RX270', '23333', '橙金属色', '粤BU276', 'JTHKR5BH1E2214880', '23333', '32222', '2015-01-08', '2014-12-18', '2015-01-01', '黑色', '', '', '', '', null, null);
INSERT INTO `customvehicle` VALUES ('281bd0fc-5720-4688-a28d-dc13c4fbd0df', 'f7099286-489a-41a2-b167-60ae2769e7e6', '东风本田', 'RX270', '32222', '橙金属色', '粤B9E6V9', 'JTHKR5BH1E2214889', '23333', '32222', '2014-08-12', '2013-12-20', '2014-08-10', '浅灰色', '', '', '', '', null, null);
INSERT INTO `customvehicle` VALUES ('c9bbada0-e6e9-4c6a-b77c-a7aa1ea34b85', 'fcb22684-40df-48d0-9b32-c87dc3bc11e5', '东风本田', 'RX270', '32222', '橙金属色', '粤B2G1E9', 'JTJZA11A9D2029618', '23333', '32222', '2015-01-06', '2014-06-19', '2015-01-04', '黑色', '', '', '', '', null, null);
INSERT INTO `customvehicle` VALUES ('2286753d-5056-446f-bca8-3e2646ff27f9', 'fde5f4b5-a561-4708-8341-3ee32e715027', '广汽丰田', 'RX270', '23433', '灰蓝金属色', '粤BT2758', 'JTJZA11A3E2470431', '32222', '23333', '2015-01-01', '2013-01-10', '2014-05-14', '黑色', '', '', '', '', null, '2020-05-13');

-- ----------------------------
-- Table structure for gongdan
-- ----------------------------
DROP TABLE IF EXISTS `gongdan`;
CREATE TABLE `gongdan` (
  `txtBillNo` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '维修单号',
  `txtXieYiBillNo` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '协议单号',
  `txtRuChangDate` date DEFAULT NULL COMMENT '入厂时间',
  `txtYuChuChangDate` date DEFAULT NULL COMMENT '预出厂时间',
  `txtFuWuUserId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '服务顾问',
  `ddlWeiXiuSort` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '维修类别',
  `chkShouBao` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '首保',
  `chkMianJian` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '免检',
  `chkXinCheJianCha` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '新车检查',
  `chkFanXiu` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '返修',
  `chkBaoXian` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '保险',
  `chkShiFouMaiDan` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '是否买单',
  `txtBaoXianDangAnHao` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '档案号',
  `radBaoXianIsBenDian` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '本店保单',
  `txtBaoXianDate` date DEFAULT NULL COMMENT '出险日期',
  `ddlBaoXianLiPeiComp` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '理赔公司',
  `txtTiShiInfo` varchar(300) COLLATE utf8_bin NOT NULL COMMENT '维修提示',
  `txtJiaoXiuReason` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '交修原因',
  `txtGuZhangReason` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '故障原因',
  `txtWeiXiuCuoShi` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '维修措施',
  `txtCustId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '客户id',
  `txtVehicleId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '车辆id',
  `txtYuYueId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '预约id',
  `txtSongCheJian` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '送车间',
  `txtChePaiHao` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '车牌号',
  `txtLiCheng` int(11) NOT NULL COMMENT '里程',
  `txtYouLiang` float(10,2) NOT NULL COMMENT '油量',
  `txtGouCheDate` date DEFAULT NULL COMMENT '购车日期',
  `txtVin` varchar(20) COLLATE utf8_bin NOT NULL COMMENT 'VIN',
  `txtFaDongJiHao` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '发动机号',
  `txtChangJiaPinPai` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '厂家品牌',
  `txtCheXiName` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '车系名称',
  `txtChenShenYanSe` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '车身颜色',
  `txtAT` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'AT/MT',
  `txtCheXingDaiMa` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '车型代码',
  `txtCustSort` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '客户类别',
  `txtCheZhuName` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车主名',
  `txtCheZhuTel` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '车主电话',
  `txtCheZhuMob` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '车主手机',
  `txtHuiYuanDengJi` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '会员等级',
  `txtLianXiRenName` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '联系人姓名',
  `txtLianXiRenTel` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人电话',
  `txtLianXiRenMob` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人手机',
  `txtHuiYuanHao` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '会员卡号',
  `txtLianXiRenAdd` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '联系地址',
  PRIMARY KEY (`txtBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of gongdan
-- ----------------------------

-- ----------------------------
-- Table structure for gongdanwuliao
-- ----------------------------
DROP TABLE IF EXISTS `gongdanwuliao`;
CREATE TABLE `gongdanwuliao` (
  `txtBillNo` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '维修单号',
  `txtWuLiaoId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '商品编号',
  `txtWuLiaoName` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '商品名称',
  `txtRegQty` float(10,2) NOT NULL COMMENT '所需数量',
  `txtTakeQty` float(10,2) NOT NULL COMMENT '领用数量',
  `txtReturnQty` float(10,2) NOT NULL COMMENT '退货数量',
  `txtPrice` float(10,2) NOT NULL COMMENT '单价',
  `ddlZhangTao` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '帐套',
  `ddlSubZhangTao` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '子帐套',
  PRIMARY KEY (`txtWuLiaoId`),
  KEY `txtBillNo` (`txtBillNo`),
  CONSTRAINT `gongdanwuliao_ibfk_1` FOREIGN KEY (`txtBillNo`) REFERENCES `gongdan` (`txtBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of gongdanwuliao
-- ----------------------------

-- ----------------------------
-- Table structure for gongdanxiangmu
-- ----------------------------
DROP TABLE IF EXISTS `gongdanxiangmu`;
CREATE TABLE `gongdanxiangmu` (
  `txtBillNo` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '维修单号',
  `txtXiangMuId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '项目编号',
  `txtGongDuanName` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '工段',
  `txtWeiXiuNeiRong` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '维修内容',
  `txtGongShi` float(10,2) NOT NULL COMMENT '工时费',
  `txtGongShiFei` float(10,2) NOT NULL COMMENT '工时费',
  `ddlZhangTao` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '帐套',
  `ddlSubZhangTao` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '子帐套',
  `txtBanZu` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '维修班组',
  `txtZhuXiuRen` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '主修人',
  `txtWanJian` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '完检',
  `txtWanJianF` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '返修',
  PRIMARY KEY (`txtXiangMuId`),
  KEY `txtBillNo` (`txtBillNo`),
  CONSTRAINT `gongdanxiangmu_ibfk_1` FOREIGN KEY (`txtBillNo`) REFERENCES `gongdan` (`txtBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of gongdanxiangmu
-- ----------------------------

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `groupId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '分组ID',
  `groupName` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '组名称',
  `groupDesc` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '组描述',
  PRIMARY KEY (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES ('1', 'reception', '接待员');
INSERT INTO `groups` VALUES ('2', 'saleAftereManager', '售后经理');
INSERT INTO `groups` VALUES ('3', 'partsManager', '物料经理');

-- ----------------------------
-- Table structure for group_privilege
-- ----------------------------
DROP TABLE IF EXISTS `group_privilege`;
CREATE TABLE `group_privilege` (
  `groupId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '分组ID',
  `privilegeId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '权限ID',
  PRIMARY KEY (`groupId`,`privilegeId`),
  KEY `privilegeId` (`privilegeId`),
  CONSTRAINT `group_privilege_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `groups` (`groupId`),
  CONSTRAINT `group_privilege_ibfk_2` FOREIGN KEY (`privilegeId`) REFERENCES `privileges` (`privilegeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of group_privilege
-- ----------------------------
INSERT INTO `group_privilege` VALUES ('1', '1');
INSERT INTO `group_privilege` VALUES ('2', '1');
INSERT INTO `group_privilege` VALUES ('1', '2');
INSERT INTO `group_privilege` VALUES ('2', '2');
INSERT INTO `group_privilege` VALUES ('1', '3');
INSERT INTO `group_privilege` VALUES ('2', '3');
INSERT INTO `group_privilege` VALUES ('1', '4');
INSERT INTO `group_privilege` VALUES ('2', '4');
INSERT INTO `group_privilege` VALUES ('3', '5');
INSERT INTO `group_privilege` VALUES ('3', '6');
INSERT INTO `group_privilege` VALUES ('3', '7');

-- ----------------------------
-- Table structure for privileges
-- ----------------------------
DROP TABLE IF EXISTS `privileges`;
CREATE TABLE `privileges` (
  `privilegeId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '权限ID',
  `privilegeName` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '权限名称',
  `privilegeDesc` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '权限描述',
  PRIMARY KEY (`privilegeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of privileges
-- ----------------------------
INSERT INTO `privileges` VALUES ('1', 'gongdan_new', '');
INSERT INTO `privileges` VALUES ('2', 'gongdan_xiangmu_add', '');
INSERT INTO `privileges` VALUES ('3', 'gongdan_xiangmu_delete', '');
INSERT INTO `privileges` VALUES ('4', 'gongdan_xiangmu_update', '');
INSERT INTO `privileges` VALUES ('5', 'gongdan_wuliao_add', '');
INSERT INTO `privileges` VALUES ('6', 'gongdan_wuliao_delete', '');
INSERT INTO `privileges` VALUES ('7', 'gongdan_wuliao_update', '');

-- ----------------------------
-- Table structure for rukudan
-- ----------------------------
DROP TABLE IF EXISTS `rukudan`;
CREATE TABLE `rukudan` (
  `txtGuid` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '入库单guid',
  `txtBillNo` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '入库单号',
  `txtRuKuDate` date DEFAULT NULL COMMENT '入库日期',
  `txtSuppId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '供应商id',
  `txtSuppName` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '供应商名称',
  `txtJingShouRen` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '经手人',
  `ddlRuKuSort` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '入库类型',
  `ddlCangKu` int(11) NOT NULL COMMENT '所属仓库',
  `ddlFaPiaoType` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '收票类型',
  `txtFaPiaoHao` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '发票号',
  `txtRemarks` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '单据备注',
  `ddlStatus` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`txtGuid`),
  KEY `txtBillNo` (`txtBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of rukudan
-- ----------------------------

-- ----------------------------
-- Table structure for rukudanmingxi
-- ----------------------------
DROP TABLE IF EXISTS `rukudanmingxi`;
CREATE TABLE `rukudanmingxi` (
  `txtGuid` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '入库单明细guid',
  `txtBillNo` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '入库单号',
  `shopId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '商品编码',
  `shopName` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '商品名称',
  `shopGuiGe` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '规格',
  `unit` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '单位',
  `shopLoc` int(11) NOT NULL COMMENT '库位',
  `kuCun` int(11) NOT NULL COMMENT '库存',
  `qty` int(11) NOT NULL DEFAULT '1' COMMENT '数量',
  `price` float(10,2) NOT NULL COMMENT '入库价',
  `NoTaxPriceAll` float(10,2) NOT NULL COMMENT '不含税金额',
  `TaxAll` float(10,2) NOT NULL COMMENT '税金',
  `priceAll` float(10,2) NOT NULL COMMENT '金额',
  `remarks` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '备注',
  `salePrice` float(10,2) NOT NULL COMMENT '销售价',
  PRIMARY KEY (`txtGuid`),
  KEY `txtBillNo` (`txtBillNo`),
  CONSTRAINT `rukudanmingxi_ibfk_1` FOREIGN KEY (`txtBillNo`) REFERENCES `rukudan` (`txtBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of rukudanmingxi
-- ----------------------------

-- ----------------------------
-- Table structure for rukutuikudan
-- ----------------------------
DROP TABLE IF EXISTS `rukutuikudan`;
CREATE TABLE `rukutuikudan` (
  `txtGuid` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '退库单guid',
  `txtBillNo` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '退库单号',
  `txtTuiKuDate` date DEFAULT NULL COMMENT '退库日期',
  `txtSuppId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '供应商id',
  `txtSuppName` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '供应商名称',
  `txtJingShouRen` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '经手人',
  `ddlTuiKuSort` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '退库类型',
  `ddlCangKu` int(11) NOT NULL COMMENT '所属仓库',
  `ddlFaPiaoType` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '发票类型',
  `txtFaPiaoHao` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '发票号',
  `txtRemarks` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '单据备注',
  `ddlStatus` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`txtGuid`),
  KEY `txtBillNo` (`txtBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of rukutuikudan
-- ----------------------------

-- ----------------------------
-- Table structure for rukutuikudanmingxi
-- ----------------------------
DROP TABLE IF EXISTS `rukutuikudanmingxi`;
CREATE TABLE `rukutuikudanmingxi` (
  `txtGuid` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '退库单guid',
  `txtBillNo` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '明细单号',
  `txtShopId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '商品编码',
  `txtShopName` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '商品名称',
  `txtUnit` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '单位',
  `txtQty` int(11) NOT NULL DEFAULT '1' COMMENT '数量',
  `txtInPrice` float(10,2) NOT NULL COMMENT '退库价',
  `txtRemarks` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '备注',
  PRIMARY KEY (`txtGuid`),
  KEY `txtBillNo` (`txtBillNo`),
  CONSTRAINT `rukutuikudanmingxi_ibfk_1` FOREIGN KEY (`txtGuid`) REFERENCES `rukutuikudan` (`txtGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of rukutuikudanmingxi
-- ----------------------------

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `txtShopGuid` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '商品编号',
  `txtShopName` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '商品名称',
  `txtTiaoMa` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '商品条码',
  `txtGuiGe` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '规格型号',
  `txtChanDi` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '产地',
  `txtYouXiaoQi` int(11) NOT NULL COMMENT '有效期(天)',
  `ddlShiYongCheXing` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '适用车型',
  `ddlSort` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '类别',
  `dropIsYuanChang` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '是否原厂件',
  `txtChangJiaCode` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '厂家编号',
  `txtChangJiaBrand` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '厂家品牌',
  `ddlUnit` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '计量单位',
  `txtPJiaGe` float(10,2) NOT NULL COMMENT '批发价格',
  `txtSalePrice` float(10,2) NOT NULL COMMENT '销售价格',
  `txtChengBenJia` float(10,2) NOT NULL COMMENT '成本价格',
  `txtPyMa` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '拼音编码',
  `txtStockPos` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '存货位置',
  `ddlShangPinQuFen` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '商品区分',
  `dropIsJingPin` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '精品标志',
  `txtKuCunShangXian` int(11) NOT NULL COMMENT '库存上限',
  `txtKuCunXiaXian` int(11) NOT NULL COMMENT '库存下限',
  `ddlSaleStatus` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '销售状态',
  `txtRemarks` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '备注信息',
  PRIMARY KEY (`txtShopGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of shop
-- ----------------------------

-- ----------------------------
-- Table structure for shopoperlog
-- ----------------------------
DROP TABLE IF EXISTS `shopoperlog`;
CREATE TABLE `shopoperlog` (
  `operLogGuid` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '日志Guid',
  `cangKu` int(11) NOT NULL COMMENT '仓库名',
  `shopId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '商品编码',
  `shopName` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '商品名称',
  `operDate` date DEFAULT NULL COMMENT '操作时间',
  `qty` int(11) NOT NULL COMMENT '数量',
  `chengBenJia` float(10,2) NOT NULL COMMENT '成本价',
  `chengBenJiaAll` float(10,2) NOT NULL COMMENT '成本总额',
  `salePrice` float(10,2) NOT NULL COMMENT '销售价',
  `salePriceAll` float(10,2) NOT NULL COMMENT '销售总额',
  `billNo` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '业务单号',
  `billName` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '业务类别',
  PRIMARY KEY (`operLogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of shopoperlog
-- ----------------------------

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `StoreId` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'ID',
  `txtStoreId` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '仓库ID',
  `txtStoreName` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '仓库名称',
  `ddlStoreSort` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '仓库类别',
  `ddlStopFlag` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '启用标志',
  `txtRemarks` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`StoreId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES ('', 'FASSS', 'SSS', '1', '0', '');
INSERT INTO `store` VALUES ('FE736D6C-D1A8-433D-916F-68BAEAEE640A', 'DDD', 'DDD', '销售仓库', '启用', '');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '用户id',
  `loginName` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '用户登录名',
  `displayName` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '显示的用户名称',
  `password` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '用户密码',
  `lastLoginTime` datetime NOT NULL COMMENT '上次登录时间',
  `isLimit` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '是否受权限限制，0为受限制，1为不受限制',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'yangxy', '小院', 'abc1234', '2015-01-08 15:17:12', '1');
INSERT INTO `users` VALUES ('2', 'leh', '小乐', 'leh', '2015-01-08 15:17:12', '1');
INSERT INTO `users` VALUES ('3', 'dengsj', '小邓', 'dengsj', '2015-01-30 15:17:12', '1');

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `userId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '用户ID',
  `groupId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '分组ID',
  PRIMARY KEY (`userId`,`groupId`),
  KEY `groupId` (`groupId`),
  CONSTRAINT `user_group_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
  CONSTRAINT `user_group_ibfk_2` FOREIGN KEY (`groupId`) REFERENCES `groups` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES ('2', '1');
INSERT INTO `user_group` VALUES ('1', '2');
INSERT INTO `user_group` VALUES ('1', '3');
INSERT INTO `user_group` VALUES ('3', '3');

-- ----------------------------
-- Table structure for weixiuxiangmu
-- ----------------------------
DROP TABLE IF EXISTS `weixiuxiangmu`;
CREATE TABLE `weixiuxiangmu` (
  `txtWeiXiuXiangMuBianHao` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '维修编号',
  `ddlSuoShuGongDuan` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '所属工段',
  `txtShiYongCheXing` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '适用车系',
  `txtGongShi` float(10,2) NOT NULL COMMENT '工时',
  `txtWeiXiuNeiRong` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '维修内容',
  PRIMARY KEY (`txtWeiXiuXiangMuBianHao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of weixiuxiangmu
-- ----------------------------

-- ----------------------------
-- Table structure for weixiuxiangmutmp
-- ----------------------------
DROP TABLE IF EXISTS `weixiuxiangmutmp`;
CREATE TABLE `weixiuxiangmutmp` (
  `txtWeiXiuXiangMuBianHao` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '维修编号',
  `txtWeiXiuBillNo` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '维修单号',
  `ddlSuoShuGongDuan` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '所属工段',
  `ddlSuoShuZhangTao` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '适用帐套',
  `txtGongShi` float(10,2) NOT NULL COMMENT '工时',
  `txtWeiXiuNeiRong` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '维修内容',
  PRIMARY KEY (`txtWeiXiuXiangMuBianHao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of weixiuxiangmutmp
-- ----------------------------

-- ----------------------------
-- View structure for v_kehu_cheliang
-- ----------------------------
DROP VIEW IF EXISTS `v_kehu_cheliang`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_kehu_cheliang` AS select `t1`.`txtCustId` AS `txtCustId`,`t2`.`ddlCustSort` AS `ddlCustSort`,`t2`.`txtCheZhuName` AS `txtCheZhuName`,`t2`.`ddlCheZhuTelSort` AS `ddlCheZhuTelSort`,`t2`.`txtCheZhuTel` AS `txtCheZhuTel`,`t2`.`ddlCheZhuCardSort` AS `ddlCheZhuCardSort`,`t2`.`txtCheZhuCardNo` AS `txtCheZhuCardNo`,`t2`.`txtCheZhuMob` AS `txtCheZhuMob`,`t2`.`txtCheZhuAdd` AS `txtCheZhuAdd`,`t2`.`txtLianXiRenName` AS `txtLianXiRenName`,`t2`.`txtLianXiRenTel` AS `txtLianXiRenTel`,`t1`.`txtVehicleId` AS `txtVehicleId`,`t1`.`txtCheLiangChePaiHao` AS `txtCheLiangChePaiHao`,`t1`.`ddlCheLiangZhiZaoShang` AS `ddlCheLiangZhiZaoShang`,`t1`.`ddlCheLiangCheXi` AS `ddlCheLiangCheXi`,`t1`.`txtCheLiangCheJiaHao` AS `txtCheLiangCheJiaHao`,`t1`.`txtGouCheDate` AS `txtGouCheDate` from (`customvehicle` `t1` left join `chezhulianxiren` `t2` on((`t2`.`txtCustId` = `t1`.`txtCustId`))) ;
