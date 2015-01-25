/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : arms

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2015-01-25 22:03:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for caigoubill
-- ----------------------------
DROP TABLE IF EXISTS `caigoubill`;
CREATE TABLE `caigoubill` (
  `txtBillGuid` varchar(40) collate utf8_bin NOT NULL COMMENT '采购单guid',
  `txtBillNo` varchar(40) collate utf8_bin NOT NULL COMMENT '采购单号',
  `txtOrderDate` date default NULL COMMENT '订购日期',
  `txtSuppId` varchar(40) collate utf8_bin NOT NULL COMMENT '供应商编号',
  `txtSuppName` varchar(40) collate utf8_bin NOT NULL COMMENT '供应商名称',
  `txtJingShouRen` varchar(20) collate utf8_bin NOT NULL COMMENT '经手人',
  `ddlCangKu` varchar(100) collate utf8_bin NOT NULL COMMENT '所属仓库',
  `txtOrderJinE` float(10,2) NOT NULL COMMENT '预约订金',
  `ddlChkType` varchar(10) collate utf8_bin NOT NULL COMMENT '结算方式',
  `ddlFaPiaoType` varchar(100) collate utf8_bin NOT NULL COMMENT '发票类型',
  `txtRemarks` varchar(100) collate utf8_bin NOT NULL COMMENT '单据备注',
  `ddlStatus` varchar(100) collate utf8_bin NOT NULL COMMENT '审核状态',
  PRIMARY KEY  (`txtBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of caigoubill
-- ----------------------------
INSERT INTO `caigoubill` VALUES ('1', 'CGTH20150108001', '2015-01-21', '217de046-ccc0-4a4f-bbff-99b94f26d04d', '飞洒发', '吴可', '大仓库', '416.00', '入库单', '收据', '测试', '审核完毕');

-- ----------------------------
-- Table structure for caigoubillmingxi
-- ----------------------------
DROP TABLE IF EXISTS `caigoubillmingxi`;
CREATE TABLE `caigoubillmingxi` (
  `txtBillNo` varchar(40) collate utf8_bin NOT NULL COMMENT '采购单号',
  `txtMingxiId` varchar(40) collate utf8_bin NOT NULL COMMENT '采购明细id',
  `shopId` varchar(40) collate utf8_bin NOT NULL COMMENT '商品编码',
  `shopName` varchar(40) collate utf8_bin NOT NULL COMMENT '商品名称',
  `shopGuiGe` varchar(20) collate utf8_bin NOT NULL COMMENT '规格',
  `unit` varchar(100) collate utf8_bin NOT NULL COMMENT '单位',
  `kuCun` int(11) NOT NULL COMMENT '库存',
  `qty` int(11) NOT NULL COMMENT '数量',
  `price` float(10,2) NOT NULL COMMENT '价格',
  `priceAll` float(10,2) NOT NULL COMMENT '金额',
  `remarks` varchar(100) collate utf8_bin NOT NULL COMMENT '备注',
  PRIMARY KEY  (`txtBillNo`),
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
  `txtCustId` varchar(40) collate utf8_bin NOT NULL COMMENT '客户id',
  `ddlCustSort` varchar(10) collate utf8_bin default NULL COMMENT '客户类型',
  `txtCheZhuName` varchar(100) collate utf8_bin default NULL COMMENT '车主名',
  `ddlCheZhuTelSort` varchar(10) collate utf8_bin default NULL COMMENT '车主电话或手机',
  `txtCheZhuTel` varchar(20) collate utf8_bin default NULL COMMENT '电话或手机号码',
  `txtCheZhuTelNeiXian` varchar(10) collate utf8_bin default NULL COMMENT '内线',
  `txtCheZhuZhuZhaiTel` varchar(20) collate utf8_bin default NULL COMMENT '住宅电话',
  `txtCheZhuChuanZhen` varchar(20) collate utf8_bin default NULL COMMENT '传真',
  `txtCheZhuMob` varchar(20) collate utf8_bin default NULL COMMENT '车主手机',
  `ddlCheZhuChengWei` varchar(10) collate utf8_bin default NULL COMMENT '称谓',
  `ddlSex` varchar(10) collate utf8_bin default NULL COMMENT '性别',
  `ddlCheZhuHunYinZhuangKuang` varchar(10) collate utf8_bin default NULL COMMENT '婚姻状况',
  `ddlCheZhuCardSort` varchar(20) collate utf8_bin default NULL COMMENT '证件类型',
  `txtCheZhuCardNo` varchar(20) collate utf8_bin default NULL COMMENT '证件号码',
  `txtCheZhuShengRi` date default NULL COMMENT '生日',
  `ddlCheZhuP` varchar(10) collate utf8_bin default NULL COMMENT '所属区域-省(直辖市)',
  `ddlCheZhuC` varchar(20) collate utf8_bin default NULL COMMENT '所属区域-市(地区)',
  `ddlCheZhuA` varchar(20) collate utf8_bin default NULL COMMENT '所属区域-区(县)',
  `txtCheZhuAdd` varchar(100) collate utf8_bin default NULL COMMENT '车主地址',
  `ddlCheZhuSuoShuHangYe` varchar(20) collate utf8_bin default NULL COMMENT '所属行业',
  `ddlCheZhuGuanXiSort` varchar(10) collate utf8_bin default NULL COMMENT '关系类型',
  `ddlCheZhuJiaTingSort` varchar(10) collate utf8_bin default NULL COMMENT '家庭类型',
  `ddlCheZhuZhiYeSort` varchar(10) collate utf8_bin default NULL COMMENT '职业类型',
  `txtCheZhuLaiYuan` varchar(20) collate utf8_bin default NULL COMMENT '客户来源',
  `ddlCheZhuNianLing` varchar(10) collate utf8_bin default NULL COMMENT '年龄区间',
  `ddlCheZhuShouRu` varchar(20) collate utf8_bin default NULL COMMENT '收入区间',
  `txtCheZhuAiHao` varchar(20) collate utf8_bin default NULL COMMENT '爱好',
  `ddlCheZhuXueLi` varchar(10) collate utf8_bin default NULL COMMENT '学历',
  `txtCheZhuEMail` varchar(50) collate utf8_bin default NULL COMMENT 'E-Mail',
  `txtCheZheGouCheQty` int(11) default '1' COMMENT '购车次数',
  `txtCheZhuGongZuoDanWei` varchar(60) collate utf8_bin default NULL COMMENT '工作单位',
  `txtLianXiRenName` varchar(20) collate utf8_bin NOT NULL COMMENT '联系人姓名',
  `ddlLianXiRenSex` varchar(10) collate utf8_bin default NULL COMMENT '性别',
  `txtLianXiRenTel` varchar(20) collate utf8_bin default NULL COMMENT '联系人电话',
  `txtLianXiRenMob` varchar(20) collate utf8_bin default NULL COMMENT '联系人手机',
  `ddlLianXiRenChengWei` varchar(10) collate utf8_bin default NULL COMMENT '称谓',
  `ddlLianXiRenShenFen` varchar(10) collate utf8_bin default NULL COMMENT '身份',
  `ddlLianXiRenZhiWei` varchar(20) collate utf8_bin default NULL COMMENT '职位',
  `ddlLianXiCardSort` varchar(20) collate utf8_bin default NULL COMMENT '证件类型',
  `txtLianXiRenCardNo` varchar(20) collate utf8_bin default NULL COMMENT '证件号码',
  `txtLianXiRenBirthday` date default NULL COMMENT '联系人生日',
  `ddlLianXiRenP` varchar(10) collate utf8_bin default NULL COMMENT '所属区域-省(直辖市)',
  `ddlLianXiRenC` varchar(20) collate utf8_bin default NULL COMMENT '所属区域-市(地区)',
  `ddlLianXiRenA` varchar(20) collate utf8_bin default NULL COMMENT '所属区域-区(县)',
  `txtLianXiRenAdd` varchar(100) collate utf8_bin default NULL COMMENT '车主地址',
  `ddlLianXiRenJiaZhaoSort` varchar(10) collate utf8_bin default NULL COMMENT '驾照类型',
  `txtLianXiRenJiaZhaoDate` date default NULL COMMENT '驾照日期',
  `txtLianXiRenFirstJiaZhaoDate` date default NULL COMMENT '初领驾照日期',
  `txtLianXiRenJiaZhaoArea` varchar(20) collate utf8_bin default NULL COMMENT '驾照所属地区',
  `txtLianXiRenTeZheng` varchar(10) collate utf8_bin default NULL COMMENT '联系人特征',
  `txtLianXiRenEMail` varchar(50) collate utf8_bin default NULL COMMENT 'E-Mail',
  `txtLianXiRenGongZuoDanWei` varchar(60) collate utf8_bin default NULL COMMENT '工作单位',
  `txtCheLiangJieDaiTiXing` varchar(100) collate utf8_bin default NULL COMMENT '接待提醒',
  PRIMARY KEY  (`txtCustId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of chezhulianxiren
-- ----------------------------
INSERT INTO `chezhulianxiren` VALUES ('0e57e2db-1585-4703-bac9-3cd967d796bc', '普通客户', '张先生', '车主电话', '13800138003', '', '', '', '13800138003', 'MR', '男', '已婚', '港澳身份证', '362501198206193639', '1982-06-19', '江西省', '南昌市', '西湖区', '江西省南昌市西湖区环卫局', '', '良好', '', '', '', '不清楚', '不清楚', '', '不清楚', '', '0', '', '赵花', '女', '13265821118', '13265821118', 'MRS', '', '老师', '身份证', '362501198402183628', '1984-02-18', '江西省', '南昌市', '西湖区', '江西省南昌市西湖区二七南路', 'C', '2015-01-08', '2013-02-20', '', '', '', '', '');
INSERT INTO `chezhulianxiren` VALUES ('2286753d-5056-446f-bca8-3e2646ff27f9', '普通客户', '蔡晓丹', '车主电话', '18038082837', '', '', '', '18038082837', 'MRS', '女', '', '身份证', '18038082837', null, '广东省', '深圳市', '宝安区', '广东省深圳市宝安区西乡大道附近2', '', '', '', '', '', '不清楚', '不清楚', '', '不清楚', '', '0', '', '张力', '男', '18033051632', '18033051632', 'MR', '', '', '身份证', '18038082837', null, '广东省', '深圳市', '宝安区', '西乡大道2', 'C', '2014-07-16', '2014-01-10', '', '', '', '', '');
INSERT INTO `chezhulianxiren` VALUES ('281bd0fc-5720-4688-a28d-dc13c4fbd0df', '普通客户', '赵四', '车主电话', '13800138000', '', '', '', '13800138000', 'MR', '男', '已婚', '身份证', '430201198206176522', '1982-06-17', '广东省', '深圳市', '宝安区', '广东省深圳市宝安区西乡大道附近', '', '普通', '其他', '医生', '', '不清楚', '不清楚', '钓鱼', '不清楚', '343115156@qq.com', '0', '', '赵二', '男', '13800138001', '13800138001', 'MR', '', '个体', '身份证', '430201198209182698', '1982-09-18', '广东省', '深圳市', '宝安区', '广东省深圳市宝安区西乡大道旁边', 'C', '2011-08-10', '2010-06-10', '', '', '', '', '');
INSERT INTO `chezhulianxiren` VALUES ('31728da4-f9be-4fe4-8a35-82dfaa327d71', '普通客户', 'a', '车主电话', '13728901234', '', '', '', '13728901234', '', '', '', '港澳身份证', 'b', null, '省份', '地级市', '市、县级市、县', 'c', '', '', '', '', '', '不清楚', '不清楚', '', '不清楚', '', '0', '', 'a', '男', '13728901234', '13728901234', 'MR', '', '', '身份证', 'b', null, '省份', '地级市', '市、县级市、县', 'b', 'A', null, null, '', '', '', '', '');
INSERT INTO `chezhulianxiren` VALUES ('349a2bb3-bf87-41a9-b0fa-624093e8acf3', '普通客户', '王亮', '车主电话', '18033051636', '', '', '', '18033051636', 'MR', '男', '已婚', '港澳身份证', '18033051636', null, '广东省', '深圳市', '宝安区', '广东省深圳市宝安区西乡大道附近3', '', '', '', '', '', '不清楚', '不清楚', '', '不清楚', '', '0', '', '秋云', '女', '13637256415', '13637256415', 'MRS', '', '个体', '身份证', '13637256415', null, '福建省', '南平市', '延平区', '俊逸豪庭小区', 'C', '2016-10-06', '2013-01-10', '', '', '', '', '');
INSERT INTO `chezhulianxiren` VALUES ('c5125fa5-f3fc-4931-998b-5c4d37c2dd1f', '普通客户', '唐洋', '车主电话', '13265821118', '', '', '', '13265821118', 'MR', '', '已婚', '身份证', '23333333333', null, '广东省', '深圳市', '宝安区', '广东省深圳南山区海印长城1期4栋5C', '', '普通', '', '', '', '不清楚', '不清楚', '', '不清楚', '', '0', '', '唐洋', '男', '13265821118', '13265821118', 'MR', '', '', '身份证', '13265821118', null, '广东省', '深圳市', '宝安区', '广东省深圳南山区海印长城1期4栋5C', 'C', '2017-08-10', '2011-08-10', '', '', '', '', '');
INSERT INTO `chezhulianxiren` VALUES ('c9bbada0-e6e9-4c6a-b77c-a7aa1ea34b85', '普通客户', '吴瑕', '车主电话', '15626990528', '', '', '', '15626990528', '', '', '', '港澳身份证', '15626990528', null, '省份', '地级市', '市、县级市、县', '前海路199号恒立心海湾4栋B座2601', '', '', '', '', '', '不清楚', '不清楚', '', '不清楚', '', '0', '', '吴悠', '女', '138001380002', '13800138002', 'MR', '', '', '身份证', '138001380002', null, '省份', '地级市', '市、县级市、县', '前海路199号恒立心海湾4栋B座2601', 'C', '2015-02-20', '2013-06-19', '', '', '', '', '');
INSERT INTO `chezhulianxiren` VALUES ('d8df28ec-e21b-4eab-82e4-bfc6e2636c71', '普通客户', '飞洒发送', '车主电话', '11111111', '', '', '', '13546879414', '', '', '', '港澳身份证', '111111', null, '重庆市', '重庆市', '九龙坡区', '1', '', '', '', '', '', '不清楚', '不清楚', '', '不清楚', '', '0', '', '大发啊啊', '男', '1111', '13698546354', 'MR', '', '医生', '身份证', '1111111111', null, '上海市', '上海市', '普陀区', '111111', 'A', '2015-01-08', '2014-12-31', '', '发发', '法萨芬撒', '飞洒发发', '');
INSERT INTO `chezhulianxiren` VALUES ('e435cedf-7056-4a69-b5ab-88d3a3fbc11e', '普通客户', '陈生', '车主电话', '13902319524', '', '', '', '13902319524', 'MR', '男', '已婚', '港澳身份证', '13902319524', null, '广东省', '深圳市', '宝安区', '广东省深圳市宝安区西乡大道附近1', '', '', '', '', '', '不清楚', '不清楚', '', '不清楚', '', '0', '', '陈生', '男', '13902319524', '13902319524', 'MR', '', '', '身份证', '13902319524', null, '广东省', '深圳市', '宝安区', '广东省深圳市宝安区西乡大道旁边1', 'C', '2015-01-06', '2013-07-25', '', '', '', '', '');

-- ----------------------------
-- Table structure for customvehicle
-- ----------------------------
DROP TABLE IF EXISTS `customvehicle`;
CREATE TABLE `customvehicle` (
  `txtCustId` varchar(40) collate utf8_bin NOT NULL COMMENT '客户id',
  `txtVehicleId` varchar(40) collate utf8_bin NOT NULL COMMENT '车辆id',
  `ddlCheLiangZhiZaoShang` varchar(20) collate utf8_bin NOT NULL COMMENT '制造商',
  `ddlCheLiangCheXi` varchar(20) collate utf8_bin default NULL COMMENT '车系',
  `txtCheLiangCheXingDaiMa` varchar(30) collate utf8_bin default NULL COMMENT '车型代码',
  `ddlCheShenColor` varchar(20) collate utf8_bin default NULL COMMENT '车身颜色',
  `txtCheLiangChePaiHao` varchar(10) collate utf8_bin default NULL COMMENT '车牌号',
  `txtCheLiangCheJiaHao` varchar(20) collate utf8_bin default NULL COMMENT '车架号',
  `txtCheLiangFaDongJiHao` varchar(20) collate utf8_bin default NULL COMMENT '发动机号',
  `txtCheLiangBianSuXiangHao` varchar(20) collate utf8_bin default NULL COMMENT '变速箱号',
  `txtBaoXianDate` date default NULL COMMENT '投保日期',
  `txtZhiZaoDate` date default NULL COMMENT '制造日期',
  `txtGouCheDate` date default NULL COMMENT '购车日期',
  `ddlNeiZhuangYanSe` varchar(20) collate utf8_bin default NULL COMMENT '内装颜色',
  `txtShangJianDanHao` varchar(20) collate utf8_bin default NULL COMMENT '商检单号',
  `txtHeGeZhengHao` varchar(20) collate utf8_bin default NULL COMMENT '合格证号',
  `txtJinKouZhengHao` varchar(20) collate utf8_bin default NULL COMMENT '进口证号',
  `txtCheLiangGuiGe` varchar(20) collate utf8_bin default NULL COMMENT '车辆规格',
  `ddlCheLiangSort` varchar(20) collate utf8_bin default NULL COMMENT '车辆种类',
  `txtCheLiangNextExaDate` date default NULL COMMENT '年审日期',
  PRIMARY KEY  (`txtVehicleId`),
  KEY `txtCustId` (`txtCustId`),
  CONSTRAINT `customvehicle_ibfk_1` FOREIGN KEY (`txtCustId`) REFERENCES `chezhulianxiren` (`txtCustId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of customvehicle
-- ----------------------------
INSERT INTO `customvehicle` VALUES ('d8df28ec-e21b-4eab-82e4-bfc6e2636c71', '1f6be1d2-f7fd-4210-8abb-bd2ec5f25b31', '东风本田', 'RX270', '23333', '橙金属色', '粤BU27E6', 'JTHKR5BH1E2214883', '32222', '23333', '2015-01-01', '2014-01-09', '2015-01-01', '黑色', '', '', '', '', null, null);
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
  `txtGongDanId` varchar(40) collate utf8_bin NOT NULL COMMENT '工单唯一编号',
  `txtBillNo` varchar(40) collate utf8_bin NOT NULL COMMENT '维修单号',
  `txtXieYiBillNo` varchar(40) collate utf8_bin default NULL COMMENT '协议单号',
  `txtRuChangDate` varchar(20) collate utf8_bin default NULL COMMENT '入厂时间',
  `txtYuChuChangDate` varchar(20) collate utf8_bin default NULL COMMENT '预出厂时间',
  `txtFuWuUserId` varchar(40) collate utf8_bin default NULL COMMENT '服务顾问',
  `ddlWeiXiuSort` varchar(40) collate utf8_bin default NULL COMMENT '维修类别',
  `chkShouBao` varchar(10) collate utf8_bin default NULL COMMENT '首保',
  `chkMianJian` varchar(10) collate utf8_bin default NULL COMMENT '免检',
  `chkXinCheJianCha` varchar(10) collate utf8_bin default NULL COMMENT '新车检查',
  `chkFanXiu` varchar(10) collate utf8_bin default NULL COMMENT '返修',
  `chkBaoXian` varchar(10) collate utf8_bin default NULL COMMENT '保险',
  `chkShiFouMaiDan` varchar(10) collate utf8_bin default NULL COMMENT '是否买单',
  `txtBaoXianDangAnHao` varchar(40) collate utf8_bin default NULL COMMENT '档案号',
  `radBaoXianIsBenDian` varchar(40) collate utf8_bin default NULL COMMENT '本店保单',
  `txtBaoXianDate` varchar(20) collate utf8_bin default NULL COMMENT '出险日期',
  `ddlBaoXianLiPeiComp` varchar(40) collate utf8_bin default NULL COMMENT '理赔公司',
  `txtTiShiInfo` varchar(300) collate utf8_bin default NULL COMMENT '维修提示',
  `txtJiaoXiuReason` varchar(100) collate utf8_bin default NULL COMMENT '交修原因',
  `txtGuZhangReason` varchar(100) collate utf8_bin default NULL COMMENT '故障原因',
  `txtWeiXiuCuoShi` varchar(100) collate utf8_bin default NULL COMMENT '维修措施',
  `txtCustId` varchar(40) collate utf8_bin default NULL COMMENT '客户id',
  `txtVehicleId` varchar(40) collate utf8_bin default NULL COMMENT '车辆id',
  `txtYuYueId` varchar(40) collate utf8_bin default NULL COMMENT '预约id',
  `txtChePaiHao` varchar(40) collate utf8_bin default NULL COMMENT '车牌号',
  `txtLiCheng` int(11) default NULL COMMENT '里程',
  `txtYouLiang` float(10,2) default NULL COMMENT '油量',
  `txtGouCheDate` varchar(20) collate utf8_bin default NULL COMMENT '购车日期',
  `txtVin` varchar(20) collate utf8_bin default NULL COMMENT 'VIN',
  `txtFaDongJiHao` varchar(20) collate utf8_bin default NULL COMMENT '发动机号',
  `txtChangJiaPinPai` varchar(20) collate utf8_bin default NULL COMMENT '厂家品牌',
  `txtCheXiName` varchar(20) collate utf8_bin default NULL COMMENT '车系名称',
  `txtChenShenYanSe` varchar(20) collate utf8_bin default NULL COMMENT '车身颜色',
  `txtAT` varchar(20) collate utf8_bin default NULL COMMENT 'AT/MT',
  `txtCheXingDaiMa` varchar(30) collate utf8_bin default NULL COMMENT '车型代码',
  `txtCustSort` varchar(30) collate utf8_bin default NULL COMMENT '客户类别',
  `txtCheZhuName` varchar(100) collate utf8_bin default NULL COMMENT '车主名',
  `txtCheZhuTel` varchar(20) collate utf8_bin default NULL COMMENT '车主电话',
  `txtCheZhuMob` varchar(20) collate utf8_bin default NULL COMMENT '车主手机',
  `txtHuiYuanDengJi` varchar(20) collate utf8_bin default NULL COMMENT '会员等级',
  `txtLianXiRenName` varchar(20) collate utf8_bin NOT NULL COMMENT '联系人姓名',
  `txtLianXiRenTel` varchar(20) collate utf8_bin default NULL COMMENT '联系人电话',
  `txtLianXiRenMob` varchar(20) collate utf8_bin default NULL COMMENT '联系人手机',
  `txtHuiYuanHao` varchar(20) collate utf8_bin default NULL COMMENT '会员卡号',
  `txtLianXiRenAdd` varchar(100) collate utf8_bin default NULL COMMENT '联系地址',
  `txtGongDanStatus` varchar(20) collate utf8_bin default NULL COMMENT '工单状态',
  `txtJieSuanDate` varchar(20) collate utf8_bin default NULL COMMENT '结算时间',
  `txtChuChangDate` varchar(20) collate utf8_bin default NULL COMMENT '出厂时间',
  PRIMARY KEY  (`txtBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of gongdan
-- ----------------------------
INSERT INTO `gongdan` VALUES ('858b1de1-8fc3-43ad-b155-c4aff785551b', 'JDD20150115001', 'aaa', '2015-01-15', '2015-01-19', '', '年审', null, null, null, null, null, null, '', null, null, '', '', '', '', '', null, '4adc61c0-7acc-4bc8-b6e6-563c8c3cf8d5', null, '粤B6N5U0', '0', '0.00', '', 'JTJZA11A3E2470436', '', '雷克萨斯', 'RX270', '橙金属色', '', '23333', '车主电话', '张先生', '13800138003', '13800138003', '', '赵花', '13265821118', '', '', '江西省南昌市西湖区二七南路', null, null, null);
INSERT INTO `gongdan` VALUES ('0b76c589-92cb-4fe0-b446-4cae1b7ed3e1', 'JDD20150115002', 'aaa', '2015-01-15', '2015-01-19', 'a', '年审', null, null, null, null, null, null, 'a', null, '2015-01-19', '人保财险', 'ddd', 'ff', 'gg', '', '', '4adc61c0-7acc-4bc8-b6e6-563c8c3cf8d5', null, '粤B6N5U0', '0', '0.00', '2015-01-12', 'JTJZA11A3E2470436', 'dd', '雷克萨斯', 'RX270', '橙金属色', 'dd', '23333', '车主电话', '张先生', '13800138003', '13800138003', '', '赵花', '13265821118', 'ff', '', '江西省南昌市西湖区二七南路', '', null, null);
INSERT INTO `gongdan` VALUES ('9bba730b-8f74-400f-bf13-a2b66ed28408', 'JDD20150115003', 'aaa', '2015-01-15', '2015-01-19', 'a', '年审', '', '', '', '', '', '', 'a', '是', '2015-01-19', '人保财险', 'ddd', 'ff', 'gg', '', null, '4adc61c0-7acc-4bc8-b6e6-563c8c3cf8d5', null, '粤B6N5U0', '0', '0.00', '2015-01-12', 'JTJZA11A3E2470436', 'dd', '雷克萨斯', 'RX270', '橙金属色', 'dd', '23333', '车主电话', '张先生', '13800138003', '13800138003', '', '赵花', '13265821118', 'ff', '', '江西省南昌市西湖区二七南路', null, null, null);
INSERT INTO `gongdan` VALUES ('170e75c0-3722-449e-8ded-bfafbb286eb1', 'JDD20150115004', '端到端', '2015-01-15', '2015-01-27', '', '一般维修', '', '', '', '', '', null, '', null, null, '', '', '', '', '', null, '4adc61c0-7acc-4bc8-b6e6-563c8c3cf8d5', null, '粤B6N5U0', '0', '0.00', '', 'JTJZA11A3E2470436', '', '雷克萨斯', 'RX270', '橙金属色', '', '23333', '车主电话', '张先生', '13800138003', '13800138003', '', '赵花', '13265821118', '', '', '江西省南昌市西湖区二七南路', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('9a22f696-a708-4f1d-92ce-310550d2795a', 'JDD20150115005', '端到端', '2015-01-15', '2015-01-27', '', '一般维修', '', '', '', '', '', null, '', null, null, '', '', '', '', '', null, '4adc61c0-7acc-4bc8-b6e6-563c8c3cf8d5', null, '粤B6N5U0', '0', '0.00', '', 'JTJZA11A3E2470436', '', '雷克萨斯', 'RX270', '橙金属色', '', '23333', '车主电话', '张先生', '13800138003', '13800138003', '', '赵花', '13265821118', '', '', '江西省南昌市西湖区二七南路', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('8d67ea1c-8a3f-411a-8e16-225b239178c6', 'JDD20150115006', '端到端', '2015-01-15', '2015-01-27', '', '一般维修', '', '', '', '', '', null, '', null, null, '', '', '', '', '', null, '4adc61c0-7acc-4bc8-b6e6-563c8c3cf8d5', null, '粤B6N5U0', '0', '0.00', '', 'JTJZA11A3E2470436', '', '雷克萨斯', 'RX270', '橙金属色', '', '23333', '车主电话', '张先生', '13800138003', '13800138003', '', '赵花', '13265821118', '', '', '江西省南昌市西湖区二七南路', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('bd77e3b4-fa90-4ddb-bff7-c90ed2e94107', 'JDD20150115007', '端到端', '2015-01-15', '2015-01-27', '', '一般维修', '', '', '', '', '', null, '', null, null, '', '', '', '', '', null, '4adc61c0-7acc-4bc8-b6e6-563c8c3cf8d5', null, '粤B6N5U0', '0', '0.00', '', 'JTJZA11A3E2470436', '', '雷克萨斯', 'RX270', '橙金属色', '', '23333', '车主电话', '张先生', '13800138003', '13800138003', '', '赵花', '13265821118', '', '', '江西省南昌市西湖区二七南路', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('8bf3f0f7-4ff4-41d0-b013-6362660be677', 'JDD20150115008', '端到端', '2015-01-15', '2015-01-27', '', '一般维修', '', '', '', '', '', '', '', null, null, '', '', '', '', '', null, '4adc61c0-7acc-4bc8-b6e6-563c8c3cf8d5', null, '粤B6N5U0', '0', '0.00', '', 'JTJZA11A3E2470436', '', '雷克萨斯', 'RX270', '橙金属色', '', '23333', '车主电话', '张先生', '13800138003', '13800138003', '', '赵花', '13265821118', '', '', '江西省南昌市西湖区二七南路', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('232359bc-33e7-4ade-9672-2b4dd62d2825', 'JDD20150115009', '端到端', '2015-01-15', '2015-01-27', '', '一般维修', '', '', '', '', '', '', '', null, null, '', '', '', '', '', null, '4adc61c0-7acc-4bc8-b6e6-563c8c3cf8d5', null, '粤B6N5U0', '0', '0.00', '', 'JTJZA11A3E2470436', '', '雷克萨斯', 'RX270', '橙金属色', '', '23333', '车主电话', '张先生', '13800138003', '13800138003', '', '赵花', '13265821118', '', '', '江西省南昌市西湖区二七南路', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('b0af8a1e-c27d-4b35-a34a-220bc484a3c8', 'JDD20150115010', '端到端', '2015-01-15', '2015-01-27', '', '一般维修', '', '', '', '', '', '', '', null, null, '', '', '', '', '', null, '4adc61c0-7acc-4bc8-b6e6-563c8c3cf8d5', null, '粤B6N5U0', '0', '0.00', '', 'JTJZA11A3E2470436', '', '雷克萨斯', 'RX270', '橙金属色', '', '23333', '车主电话', '张先生', '13800138003', '13800138003', '', '赵花', '13265821118', '', '', '江西省南昌市西湖区二七南路', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('121f80c1-b885-4f3a-a0b3-aaef276da20e', 'JDD20150115011', '端到端', '2015-01-15', '2015-01-27', '', '一般维修', '', '', '', '', '', '', '', null, null, '', '', '', '', '', null, '4adc61c0-7acc-4bc8-b6e6-563c8c3cf8d5', null, '粤B6N5U0', '0', '0.00', '', 'JTJZA11A3E2470436', '', '雷克萨斯', 'RX270', '橙金属色', '', '23333', '车主电话', '张先生', '13800138003', '13800138003', '', '赵花', '13265821118', '', '', '江西省南昌市西湖区二七南路', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('eff39e17-9611-41bc-894f-dfb2a5dcf47b', 'JDD20150116001', 'aaaaaa', '2015-01-16', '2015-01-13', '', '首保', null, null, null, null, null, null, '', null, null, '', '', '', '', '', null, '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '车主电话', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('49789e2a-238b-4f06-b8e6-50d0a5a4c22d', 'JDD20150116002', 'aaaaaa', '2015-01-16', '2015-01-13', '', '首保', null, null, null, null, null, null, '', null, null, '', '', '', '', '', null, '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '车主电话', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('7a614498-c193-44ec-9096-a2b117b73690', 'JDD20150116003', 'aaaaaa', '2015-01-16', '2015-01-13', '', '首保', null, null, null, null, null, null, '', null, null, '', '', '', '', '', null, '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '车主电话', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('407bfd02-8919-4f75-a8a9-2c83fc2486d2', 'JDD20150116004', 'eee', '2015-01-16', '2015-01-07', '', '厂家保修', null, null, null, null, null, null, '', null, null, '', '', '', '', '', null, '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '车主电话', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('4b816792-1f2a-4388-b0ed-9d24b86ccafb', 'JDD20150116005', 'ss', '2015-01-16', '2015-01-06', '', '年审', '', null, null, null, null, null, '', null, null, '', '', '', '', '', null, '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '车主电话', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('49e4bd62-aed4-4db0-ba48-897fec3eb91e', 'JDD20150116006', 'aaaaaa', '2015-01-16', '2015-01-16', '', '首保', null, null, null, null, null, null, '', null, null, '', '', '', '', '', null, '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '车主电话', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('044be0a8-b5eb-413b-b170-7f72b1c1b728', 'JDD20150116007', 'eee', '2015-01-16', '2015-01-19', '', '定保', 'on', 'on', 'on', 'on', 'on', 'on', '', null, null, '', '', '', '', '', null, '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '车主电话', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('69a145a4-7793-497a-a418-cc72bf50c509', 'JDD20150116008', 'eee', '2015-01-16', '2015-01-19', '', '定保', 'on', 'on', 'on', 'on', 'on', 'on', '', null, null, '', '', '', '', '', null, '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '车主电话', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('1a4d562f-aac2-44c7-a0b5-de7f4205fae2', 'JDD20150116009', 'eee', '2015-01-16', '2015-01-19', '222', '定保', 'on', 'on', 'on', 'on', 'on', 'on', '33', '是', '2015-01-20', '人寿财险', '44', '2', '3', '', null, '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '2015-01-14', 'JTHKR5BH1E2214889', '1', '雷克萨斯', 'RX270', '橙金属色', '2', '32222', '车主电话', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '13265821118', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('f7f196ab-0078-477b-8613-f172392bf696', 'JDD20150116010', 'sss', '2015-01-16', '2015-01-05', 'ee', '年审', 'on', 'on', 'on', 'on', 'on', 'on', 'ss', '是', '2015-01-26', '华安财险', 'sss', 'qqq', 'www', 'eee', 'c5125fa5-f3fc-4931-998b-5c4d37c2dd1f', '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '1', '1.00', '2015-01-14', 'JTHKR5BH1E2214889', '4', '雷克萨斯', 'RX270', '橙金属色', '5', '32222', '车主电话', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '13265821118', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('96b40d9d-a8fd-4c5f-8260-81c55382fece', 'JDD20150116011', 'ddd', '2015-01-16', '2015-01-21', '', '首保', 'on', 'on', 'on', null, null, null, '', null, null, '', '', '', '', '', 'c5125fa5-f3fc-4931-998b-5c4d37c2dd1f', '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '普通客户', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('5133c5f1-ad69-4c30-aa95-2700f9ba09ba', 'JDD20150116012', 'ddd', '2015-01-16', '2015-01-21', '', '首保', 'on', 'on', null, null, null, null, '', null, null, '', '', '', '', '', 'c5125fa5-f3fc-4931-998b-5c4d37c2dd1f', '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '普通客户', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('b829a7ba-5a59-4a93-9de5-bd5240c46847', 'JDD20150116013', 'ddd', '2015-01-16', '2015-01-21', '', '首保', 'on', null, null, null, null, null, '', null, null, '', '', '', '', '', 'c5125fa5-f3fc-4931-998b-5c4d37c2dd1f', '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '普通客户', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('afaa175c-8cab-4255-a59e-e07bcbbd43f4', 'JDD20150116014', 'ddd', '2015-01-16', '2015-01-21', '', '首保', null, null, null, null, null, null, '', null, null, '', '', '', '', '', 'c5125fa5-f3fc-4931-998b-5c4d37c2dd1f', '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '普通客户', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('1710e25e-924c-47e0-aff8-616f93c5468a', 'JDD20150116015', 'ddd', '2015-01-16', '2015-01-21', '', '首保', 'on', null, 'on', null, 'on', null, '', null, null, '', '', '', '', '', 'c5125fa5-f3fc-4931-998b-5c4d37c2dd1f', '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '普通客户', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('10c1a046-239c-48e6-974a-8d0acf5b7b6e', 'JDD20150116016', 'aaaaaa', '2015-01-16', '2015-01-19', '', '年审', null, null, null, null, null, null, '', null, null, '', '', '', '', '', 'c5125fa5-f3fc-4931-998b-5c4d37c2dd1f', '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '普通客户', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('8604f27f-f412-48cb-8786-904dd58b9059', 'JDD20150116017', 'aaaaaa', '2015-01-16', '2015-01-19', '', '年审', null, null, null, null, null, null, '', null, null, '', '', '', '', '', 'c5125fa5-f3fc-4931-998b-5c4d37c2dd1f', '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '普通客户', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('40c91f50-69b2-41d4-9afc-1025a02c3ddb', 'JDD20150116018', 'aaaaaa', '2015-01-16', '2015-01-19', '', '年审', null, null, null, null, null, null, '', null, null, '', '', '', '', '', 'c5125fa5-f3fc-4931-998b-5c4d37c2dd1f', '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '普通客户', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('e65bcfec-e573-4d6c-987d-abf9ab9af629', 'JDD20150116019', 'aaaaaa', '2015-01-16', '2015-01-19', '', '年审', null, null, null, null, null, null, '', null, null, '', '', '', '', '', 'c5125fa5-f3fc-4931-998b-5c4d37c2dd1f', '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '普通客户', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('df1fcab8-c2cd-4988-ace1-c127639168f5', 'JDD20150116020', 'ddd', '2015-01-16', '2015-01-13', '', '大客户', null, null, null, null, null, null, '', null, null, '', '', '', '', '', 'c5125fa5-f3fc-4931-998b-5c4d37c2dd1f', '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '普通客户', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('b55b3281-1b1c-4488-a7ae-fb5bbf34abc3', 'JDD20150116021', 'd', '2015-01-16', '2015-01-06', '', '年审', null, null, null, null, null, null, '', null, null, '', '', '', '', '', 'c5125fa5-f3fc-4931-998b-5c4d37c2dd1f', '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '普通客户', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('e541e118-8591-4cb1-be14-3c30d68a79dc', 'JDD20150116022', 'eee23', '2015-01-16', '2015-01-16', '', '定保', 'on', 'on', 'on', 'on', null, null, '', null, '', '', 'ssss', '1', '2', '3', 'c5125fa5-f3fc-4931-998b-5c4d37c2dd1f', '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '0', '0.00', '2015-01-28', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '普通客户', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);
INSERT INTO `gongdan` VALUES ('1309a15b-4938-4c84-968b-5634e80dbfe7', 'JDD20150120001', '33', '2015-01-20 08:41:59', '2015-01-20 08:42:22', '', '年审', null, null, null, null, null, null, '', null, '', '', '', '', '', '', 'c5125fa5-f3fc-4931-998b-5c4d37c2dd1f', '51651c91-c533-4312-8e96-e946ac78ea80', null, '粤B9E6V1', '22', '1.00', '2015-01-05', 'JTHKR5BH1E2214889', '', '雷克萨斯', 'RX270', '橙金属色', '', '32222', '普通客户', '唐洋', '13265821118', '13265821118', '', '唐洋', '13265821118', '', '', '广东省深圳南山区海印长城1期4栋5C', '接待中', null, null);

-- ----------------------------
-- Table structure for gongdanwuliao
-- ----------------------------
DROP TABLE IF EXISTS `gongdanwuliao`;
CREATE TABLE `gongdanwuliao` (
  `txtWuLiaoGuid` varchar(40) collate utf8_bin NOT NULL COMMENT '维修物料唯一标识',
  `txtWuLiaoId` varchar(40) collate utf8_bin NOT NULL COMMENT '商品编号',
  `txtBillNo` varchar(40) collate utf8_bin NOT NULL COMMENT '维修单号',
  `txtWuLiaoName` varchar(40) collate utf8_bin NOT NULL COMMENT '商品名称',
  `txtRegQty` float(10,2) NOT NULL COMMENT '所需数量',
  `txtTakeQty` float(10,2) NOT NULL COMMENT '领用数量',
  `txtReturnQty` float(10,2) NOT NULL COMMENT '退货数量',
  `txtPrice` float(10,2) NOT NULL COMMENT '单价',
  `ddlZhangTao` varchar(20) collate utf8_bin NOT NULL COMMENT '帐套',
  `ddlSubZhangTao` varchar(20) collate utf8_bin NOT NULL COMMENT '子帐套',
  PRIMARY KEY  (`txtWuLiaoId`,`txtWuLiaoGuid`),
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
  `txtWeiXiuXiangMuId` varchar(40) collate utf8_bin NOT NULL COMMENT '工单维修项目唯一标识',
  `txtBillNo` varchar(40) collate utf8_bin NOT NULL COMMENT '维修单号',
  `txtXiangMuId` varchar(40) collate utf8_bin NOT NULL COMMENT '项目编号',
  `txtGongDuanName` varchar(40) collate utf8_bin NOT NULL COMMENT '工段',
  `txtWeiXiuNeiRong` varchar(100) collate utf8_bin NOT NULL COMMENT '维修内容',
  `txtGongShi` float(10,2) NOT NULL COMMENT '工时费',
  `txtGongShiFei` float(10,2) default NULL COMMENT '工时费',
  `ddlZhangTao` varchar(20) collate utf8_bin default NULL COMMENT '帐套',
  `ddlSubZhangTao` varchar(20) collate utf8_bin default NULL COMMENT '子帐套',
  `txtBanZu` varchar(20) collate utf8_bin default NULL COMMENT '维修班组',
  `txtZhuXiuRen` varchar(20) collate utf8_bin default NULL COMMENT '主修人',
  `txtWanJian` varchar(20) collate utf8_bin default NULL COMMENT '完检',
  `txtWanJianF` varchar(20) collate utf8_bin default NULL COMMENT '返修',
  PRIMARY KEY  (`txtWeiXiuXiangMuId`),
  KEY `txtBillNo` (`txtBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of gongdanxiangmu
-- ----------------------------
INSERT INTO `gongdanxiangmu` VALUES ('1a4935f9-f4fb-43a2-8553-92547f39b8c4', 'bd77e3b4-fa90-4ddb-bff7-c90ed2e94107', '99999', '机电', '9', '9.00', '900.00', '正常维修', null, null, null, null, null);
INSERT INTO `gongdanxiangmu` VALUES ('544f6655-cb02-4cb3-9863-a250632bed34', '9a22f696-a708-4f1d-92ce-310550d2795a', '617998', '钣金', '检修门玻璃升降', '2.50', '250.00', '正常维修', null, null, null, null, null);
INSERT INTO `gongdanxiangmu` VALUES ('59a72dd8-e712-4cb8-b226-3d13c2786412', '9a22f696-a708-4f1d-92ce-310550d2795a', '120999', '机电', '吊装发动机', '8.00', '800.00', '正常维修', null, null, null, null, null);
INSERT INTO `gongdanxiangmu` VALUES ('5f138ad0-1469-4ddc-98c7-2f2e751f647c', '9a22f696-a708-4f1d-92ce-310550d2795a', '111111', '钣金', '检修门玻璃升降', '4.00', '400.00', '正常维修', null, null, null, null, null);
INSERT INTO `gongdanxiangmu` VALUES ('7c687b55-bfab-42fd-ac56-db19f1fe6088', 'bd77e3b4-fa90-4ddb-bff7-c90ed2e94107', '434081', '机电', '换前轮轴承或（及）油封', '3.00', '300.00', '正常维修', null, null, null, null, null);
INSERT INTO `gongdanxiangmu` VALUES ('844e799e-7f9e-426c-8ba0-b776bf84b625', '9a22f696-a708-4f1d-92ce-310550d2795a', '66', '机电', '66', '66.00', '6600.00', '正常维修', null, null, null, null, null);
INSERT INTO `gongdanxiangmu` VALUES ('87aa8e58-b5f2-4123-8915-05709d8687bf', 'bd77e3b4-fa90-4ddb-bff7-c90ed2e94107', '434081', '机电', '换前轮轴承或（及）油封', '3.00', '300.00', '大客户(月结)', null, null, null, null, null);
INSERT INTO `gongdanxiangmu` VALUES ('891b6f79-8c52-4975-a450-90c0968f06cb', '9a22f696-a708-4f1d-92ce-310550d2795a', '434081', '机电', '换前轮轴承或（及）油封', '3.00', '300.00', '正常维修', null, null, null, null, null);
INSERT INTO `gongdanxiangmu` VALUES ('89568eaa-eb03-434d-a37a-9e1140734abf', 'bd77e3b4-fa90-4ddb-bff7-c90ed2e94107', '111111', '钣金', '检修门玻璃升降', '4.00', '400.00', '正常维修', null, null, null, null, null);
INSERT INTO `gongdanxiangmu` VALUES ('8ce3f1e3-e1a9-4aa3-bc52-594a77f80404', 'bd77e3b4-fa90-4ddb-bff7-c90ed2e94107', '617998', '钣金', '检修门玻璃升降', '2.50', '250.00', '正常维修', null, null, null, null, null);
INSERT INTO `gongdanxiangmu` VALUES ('90b54302-4878-4a98-b24a-9196ccaa5bea', 'bd77e3b4-fa90-4ddb-bff7-c90ed2e94107', '66666', '钣金', 'fs', '9.00', '800.00', '大客户(月结)', null, null, null, null, null);
INSERT INTO `gongdanxiangmu` VALUES ('a0b8b6b4-8115-4039-9e4a-3856b772acb9', '9a22f696-a708-4f1d-92ce-310550d2795a', '66', '机电', '66', '66.00', '6600.00', '正常维修', null, null, null, null, null);
INSERT INTO `gongdanxiangmu` VALUES ('a1359d24-fa1b-479f-be80-64b949ebcbe8', 'bd77e3b4-fa90-4ddb-bff7-c90ed2e94107', '120999', '喷漆', '吊装发动机', '8.00', '800.00', '正常维修', null, null, null, null, null);
INSERT INTO `gongdanxiangmu` VALUES ('c17e6a4c-8c02-41f1-b35b-4604c599a516', '9a22f696-a708-4f1d-92ce-310550d2795a', '434081', '机电', '换前轮轴承或（及）油封', '3.00', '300.00', '正常维修', null, null, null, null, null);

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `groupId` varchar(40) collate utf8_bin NOT NULL COMMENT '分组ID',
  `groupName` varchar(40) collate utf8_bin NOT NULL COMMENT '组名称',
  `groupDesc` varchar(100) collate utf8_bin NOT NULL COMMENT '组描述',
  PRIMARY KEY  (`groupId`)
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
  `groupId` varchar(40) collate utf8_bin NOT NULL COMMENT '分组ID',
  `privilegeId` varchar(40) collate utf8_bin NOT NULL COMMENT '权限ID',
  PRIMARY KEY  (`groupId`,`privilegeId`),
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
  `privilegeId` varchar(40) collate utf8_bin NOT NULL COMMENT '权限ID',
  `privilegeName` varchar(40) collate utf8_bin NOT NULL COMMENT '权限名称',
  `privilegeDesc` varchar(100) collate utf8_bin NOT NULL COMMENT '权限描述',
  PRIMARY KEY  (`privilegeId`)
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
  `txtGuid` varchar(40) collate utf8_bin NOT NULL COMMENT '入库单guid',
  `txtBillNo` varchar(40) collate utf8_bin NOT NULL COMMENT '入库单号',
  `txtRuKuDate` date default NULL COMMENT '入库日期',
  `txtSuppId` varchar(40) collate utf8_bin NOT NULL COMMENT '供应商id',
  `txtSuppName` varchar(40) collate utf8_bin NOT NULL COMMENT '供应商名称',
  `txtJingShouRen` varchar(40) collate utf8_bin NOT NULL COMMENT '经手人',
  `ddlRuKuSort` varchar(40) collate utf8_bin NOT NULL COMMENT '入库类型',
  `ddlCangKu` varchar(40) collate utf8_bin NOT NULL COMMENT '所属仓库',
  `ddlFaPiaoType` varchar(40) collate utf8_bin NOT NULL COMMENT '收票类型',
  `txtFaPiaoHao` varchar(40) collate utf8_bin NOT NULL COMMENT '发票号',
  `txtRemarks` varchar(100) collate utf8_bin NOT NULL COMMENT '单据备注',
  `ddlStatus` varchar(40) collate utf8_bin NOT NULL COMMENT '审核状态',
  PRIMARY KEY  (`txtGuid`),
  KEY `txtBillNo` (`txtBillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of rukudan
-- ----------------------------
INSERT INTO `rukudan` VALUES ('1', 'PJRK20150108003', '2015-01-21', '217de046-ccc0-4a4f-bbff-99b94f26d04d', '飞洒发', '吴可', '入库单', '037DBA88-C4B0-480F-B488-29E0C9CF8415', '收据', 'FASFSA11111', '测试', '审核完毕');

-- ----------------------------
-- Table structure for rukudanmingxi
-- ----------------------------
DROP TABLE IF EXISTS `rukudanmingxi`;
CREATE TABLE `rukudanmingxi` (
  `txtGuid` varchar(40) collate utf8_bin NOT NULL COMMENT '入库单明细guid',
  `txtBillNo` varchar(40) collate utf8_bin NOT NULL COMMENT '入库单号',
  `shopId` varchar(40) collate utf8_bin NOT NULL COMMENT '商品编码',
  `shopName` varchar(40) collate utf8_bin NOT NULL COMMENT '商品名称',
  `shopGuiGe` varchar(40) collate utf8_bin NOT NULL COMMENT '规格',
  `unit` varchar(40) collate utf8_bin NOT NULL COMMENT '单位',
  `shopLoc` int(11) NOT NULL COMMENT '库位',
  `kuCun` int(11) NOT NULL COMMENT '库存',
  `qty` int(11) NOT NULL default '1' COMMENT '数量',
  `price` float(10,2) NOT NULL COMMENT '入库价',
  `NoTaxPriceAll` float(10,2) NOT NULL COMMENT '不含税金额',
  `TaxAll` float(10,2) NOT NULL COMMENT '税金',
  `priceAll` float(10,2) NOT NULL COMMENT '金额',
  `remarks` varchar(100) collate utf8_bin NOT NULL COMMENT '备注',
  `salePrice` float(10,2) NOT NULL COMMENT '销售价',
  PRIMARY KEY  (`txtGuid`),
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
  `txtGuid` varchar(40) collate utf8_bin NOT NULL COMMENT '退库单guid',
  `txtBillNo` varchar(40) collate utf8_bin NOT NULL COMMENT '退库单号',
  `txtTuiKuDate` date default NULL COMMENT '退库日期',
  `txtSuppId` varchar(40) collate utf8_bin NOT NULL COMMENT '供应商id',
  `txtSuppName` varchar(40) collate utf8_bin NOT NULL COMMENT '供应商名称',
  `txtJingShouRen` varchar(40) collate utf8_bin NOT NULL COMMENT '经手人',
  `ddlTuiKuSort` varchar(40) collate utf8_bin NOT NULL COMMENT '退库类型',
  `ddlCangKu` int(11) NOT NULL COMMENT '所属仓库',
  `ddlFaPiaoType` varchar(40) collate utf8_bin NOT NULL COMMENT '发票类型',
  `txtFaPiaoHao` varchar(40) collate utf8_bin NOT NULL COMMENT '发票号',
  `txtRemarks` varchar(100) collate utf8_bin NOT NULL COMMENT '单据备注',
  `ddlStatus` varchar(40) collate utf8_bin NOT NULL COMMENT '审核状态',
  PRIMARY KEY  (`txtGuid`),
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
  `txtGuid` varchar(40) collate utf8_bin NOT NULL COMMENT '退库单guid',
  `txtBillNo` varchar(40) collate utf8_bin NOT NULL COMMENT '明细单号',
  `txtShopId` varchar(40) collate utf8_bin NOT NULL COMMENT '商品编码',
  `txtShopName` varchar(40) collate utf8_bin NOT NULL COMMENT '商品名称',
  `txtUnit` varchar(40) collate utf8_bin NOT NULL COMMENT '单位',
  `txtQty` int(11) NOT NULL default '1' COMMENT '数量',
  `txtInPrice` float(10,2) NOT NULL COMMENT '退库价',
  `txtRemarks` varchar(100) collate utf8_bin NOT NULL COMMENT '备注',
  PRIMARY KEY  (`txtGuid`),
  KEY `txtBillNo` (`txtBillNo`),
  CONSTRAINT `rukutuikudanmingxi_ibfk_1` FOREIGN KEY (`txtGuid`) REFERENCES `rukutuikudan` (`txtGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of rukutuikudanmingxi
-- ----------------------------

-- ----------------------------
-- Table structure for shangpinxiaoshoudan
-- ----------------------------
DROP TABLE IF EXISTS `shangpinxiaoshoudan`;
CREATE TABLE `shangpinxiaoshoudan` (
  `xiaoshouID` varchar(40) collate utf8_bin NOT NULL COMMENT '销售单号',
  `xiaoshouDate` date NOT NULL COMMENT '销售日期',
  `suoshuCangKu` varchar(50) collate utf8_bin NOT NULL COMMENT '所属仓库',
  `kehuMing` varchar(50) collate utf8_bin default NULL COMMENT '客户名',
  `huiyuanNum` varchar(50) collate utf8_bin default NULL COMMENT '会员号',
  `xiaoshouType` varchar(50) collate utf8_bin default NULL COMMENT '销售类型',
  `fapiaoType` varchar(50) collate utf8_bin default NULL COMMENT '发票类型',
  `zhekouLv` float default NULL COMMENT '折扣率',
  `shishouJinge` float(50,0) default NULL COMMENT '实售金额',
  `yuhuoFangShi` varchar(50) collate utf8_bin default NULL COMMENT '运货方式',
  `yushuGongSi` varchar(50) collate utf8_bin default NULL COMMENT '运输公司',
  `fuzeRenYuan` varchar(50) collate utf8_bin default NULL COMMENT '负责人员',
  `fuzeRenTel` varchar(20) collate utf8_bin default NULL COMMENT '负责人电话',
  `wanglaiJine` float default NULL COMMENT '往来金额',
  `danjuBeizhu` varchar(100) collate utf8_bin default NULL COMMENT '单据备注',
  `danjuState` varchar(50) collate utf8_bin default NULL COMMENT '单据状态',
  PRIMARY KEY  (`xiaoshouID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of shangpinxiaoshoudan
-- ----------------------------
INSERT INTO `shangpinxiaoshoudan` VALUES ('No.201501220425', '2015-01-22', '1号店仓库', '福田彭峰', 'NO2015012202', '大客户', '增值税', '1.1', '12000', '物流', '德邦', '小明', '13800138000', '58000', '要快点到货，急用。', '已审核');

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `txtShopGuid` varchar(40) collate utf8_bin NOT NULL COMMENT '商品唯一标识',
  `txtShopId` varchar(40) collate utf8_bin NOT NULL COMMENT '商品编号',
  `txtShopName` varchar(40) collate utf8_bin NOT NULL COMMENT '商品名称',
  `txtTiaoMa` varchar(40) collate utf8_bin NOT NULL COMMENT '商品条码',
  `txtGuiGe` varchar(40) collate utf8_bin NOT NULL COMMENT '规格型号',
  `txtChanDi` varchar(40) collate utf8_bin NOT NULL COMMENT '产地',
  `txtYouXiaoQi` int(11) NOT NULL COMMENT '有效期(天)',
  `ddlShiYongCheXing` varchar(40) collate utf8_bin NOT NULL COMMENT '适用车型',
  `ddlSort` varchar(40) collate utf8_bin NOT NULL COMMENT '类别',
  `dropIsYuanChang` varchar(40) collate utf8_bin NOT NULL COMMENT '是否原厂件',
  `txtChangJiaCode` varchar(40) collate utf8_bin NOT NULL COMMENT '厂家编号',
  `txtChangJiaBrand` varchar(40) collate utf8_bin NOT NULL COMMENT '厂家品牌',
  `ddlUnit` varchar(40) collate utf8_bin NOT NULL COMMENT '计量单位',
  `txtPJiaGe` float(10,2) NOT NULL COMMENT '批发价格',
  `txtSalePrice` float(10,2) NOT NULL COMMENT '销售价格',
  `txtChengBenJia` float(10,2) NOT NULL COMMENT '成本价格',
  `txtPyMa` varchar(40) collate utf8_bin NOT NULL COMMENT '拼音编码',
  `txtStockPos` varchar(40) collate utf8_bin NOT NULL COMMENT '存货位置',
  `ddlShangPinQuFen` varchar(40) collate utf8_bin NOT NULL COMMENT '商品区分',
  `dropIsJingPin` varchar(10) collate utf8_bin NOT NULL COMMENT '精品标志',
  `txtKuCunShangXian` int(11) NOT NULL COMMENT '库存上限',
  `txtKuCunXiaXian` int(11) NOT NULL COMMENT '库存下限',
  `txtKuCun` int(11) default '0' COMMENT '库存',
  `ddlSaleStatus` varchar(40) collate utf8_bin NOT NULL COMMENT '销售状态',
  `txtRemarks` varchar(100) collate utf8_bin NOT NULL COMMENT '备注信息',
  PRIMARY KEY  (`txtShopGuid`,`txtShopId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('121010Y020', '1', '汽车发动机油底壳', '', '', '', '30', '', '', '', '', '', '', '0.00', '334.00', '248.40', '', '', '', '', '0', '0', '11', '销售', '');
INSERT INTO `shop` VALUES ('487600R020', '2', '后纵臂总成', '', '', '', '30', '', '', '', '', '', '', '0.00', '533.00', '395.70', '', '', '', '', '0', '0', '2', '销售', '');
INSERT INTO `shop` VALUES ('525620R040', '3', '后保险杠右上固定架', '', '', '', '30', '', '', '', '', '', '', '0.00', '111.00', '82.20', '', '', '', '', '0', '0', '3', '销售', '');
INSERT INTO `shop` VALUES ('5380528031', '4', '右前翼子板防溅板', '', '', '', '30', '', '', '', '', '', '', '0.00', '455.00', '337.80', '', '', '', '', '0', '0', '4', '', '');
INSERT INTO `shop` VALUES ('681200D230', '5', '左前门车窗玻璃总成', '', '', '', '30', '', '', '', '', '', '', '0.00', '180.00', '133.60', '', '', '', '', '0', '0', '66', '销售', '');
INSERT INTO `shop` VALUES ('741300R010', '6', '烟灰缸座总成', '', '', '', '30', '', '', '', '', '', '', '0.00', '226.00', '167.80', '', '', '', '', '0', '0', '7', '销售', '');
INSERT INTO `shop` VALUES ('811700D300', '7', '汽车前大灯底座', '', '', '', '30', '', '', '', '', '', '', '0.00', '704.00', '522.60', '', '', '', '', '0', '0', '5', '销售', '');
INSERT INTO `shop` VALUES ('8521402070', '8', '雨刮胶条', '', '', '', '30', '', '', '', '', '', '', '0.00', '14.00', '10.90', '', '', '', '', '0', '0', '6', '销售', '');
INSERT INTO `shop` VALUES ('852140d220', '9', '雨刮胶条', '', '', '', '30', '', '', '', '', '', '', '0.00', '14.00', '10.90', '', '', '', '', '0', '0', '7', '销售', '');
INSERT INTO `shop` VALUES ('8844025070', '10', '惰轮总成', '', '', '', '30', '', '', '', '', '', '', '0.00', '1273.00', '945.10', '', '', '', '', '0', '0', '8', '销售', '');
INSERT INTO `shop` VALUES ('JPA0208126', '11', '居士林打火机', '', '', '', '30', '', '', '', '', '', '', '0.00', '300.00', '175.00', '', '', '', '', '0', '0', '9', '销售', '');
INSERT INTO `shop` VALUES ('JPB0207020', '12', '09款RAV4前杠', '', '', '', '30', '', '', '', '', '', '', '0.00', '1000.00', '583.00', '', '', '', '', '0', '0', '3', '销售', '');
INSERT INTO `shop` VALUES ('JPE0201034', '13', '前保险杠饰条', '', '', '', '30', '', '', '', '', '', '', '0.00', '290.00', '193.00', '', '', '', '', '0', '0', '56', '销售', '');
INSERT INTO `shop` VALUES ('JPRHD', '14', '日行灯', '', '', '', '30', '', '', '', '', '', '', '0.00', '850.00', '290.00', '', '', '', '', '0', '0', '62', '销售', '');
INSERT INTO `shop` VALUES ('JPZDKWX', '15', '尾箱自动锁', '', '', '', '30', '', '', '', '', '', '', '0.00', '350.00', '78.00', '', '', '', '', '0', '0', '3', '销售', '');

-- ----------------------------
-- Table structure for shopoperlog
-- ----------------------------
DROP TABLE IF EXISTS `shopoperlog`;
CREATE TABLE `shopoperlog` (
  `operLogGuid` varchar(40) collate utf8_bin NOT NULL COMMENT '日志Guid',
  `cangKu` int(11) NOT NULL COMMENT '仓库名',
  `shopId` varchar(40) collate utf8_bin NOT NULL COMMENT '商品编码',
  `shopName` varchar(40) collate utf8_bin NOT NULL COMMENT '商品名称',
  `operDate` date default NULL COMMENT '操作时间',
  `qty` int(11) NOT NULL COMMENT '数量',
  `chengBenJia` float(10,2) NOT NULL COMMENT '成本价',
  `chengBenJiaAll` float(10,2) NOT NULL COMMENT '成本总额',
  `salePrice` float(10,2) NOT NULL COMMENT '销售价',
  `salePriceAll` float(10,2) NOT NULL COMMENT '销售总额',
  `billNo` varchar(40) collate utf8_bin NOT NULL COMMENT '业务单号',
  `billName` varchar(40) collate utf8_bin NOT NULL COMMENT '业务类别',
  PRIMARY KEY  (`operLogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of shopoperlog
-- ----------------------------

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `StoreId` varchar(40) collate utf8_bin NOT NULL default '' COMMENT 'ID',
  `txtStoreBianHao` varchar(40) collate utf8_bin NOT NULL default '' COMMENT '仓库编号',
  `txtStoreName` varchar(40) collate utf8_bin NOT NULL COMMENT '仓库名称',
  `ddlStoreSort` varchar(40) collate utf8_bin NOT NULL COMMENT '仓库类别',
  `ddlStopFlag` varchar(40) collate utf8_bin NOT NULL COMMENT '启用标志',
  `txtRemarks` varchar(40) collate utf8_bin default NULL COMMENT '备注',
  PRIMARY KEY  (`StoreId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES ('037DBA88-C4B0-480F-B488-29E0C9CF8415', 'AFAFA', 'FFAF', '销售仓库', '启用', '');
INSERT INTO `store` VALUES ('03E5A3F8-7F33-48AD-AD18-7429A2D8A1C6', 'FAFFAGG', 'FSASS', '销售仓库', '启用', 'SFAA');
INSERT INTO `store` VALUES ('0950B268-7C4F-43E4-A1F1-3FD28F72E6A9', 'TTAAR', 'ARWATGA', '销售仓库', '启用', 'GATGFA');
INSERT INTO `store` VALUES ('0D4A79BB-A699-45AB-9DE2-922F339AC3DA', 'AFA', 'FAFAS', '销售仓库', '启用', '');
INSERT INTO `store` VALUES ('0F7A1103-53C1-4BFB-9EF6-0DC6E4DC579B', 'FFFS', 'SAFASF', '销售仓库', '启用', 'FASFASFSA');
INSERT INTO `store` VALUES ('19EE9F91-6FAE-4647-BE5E-C10F15501365', 'dd', 'dd', '销售仓库', '启用', '');
INSERT INTO `store` VALUES ('1A388498-6B86-48B1-A8FC-054CC72E25CA', 'FASF', 'SSSSAAAA', '销售仓库', '启用', '');
INSERT INTO `store` VALUES ('23C15ABC-B5B0-4A24-B362-AB537310FE4D', 'FSFSAS', 'FSAFS', '销售仓库', '停用', '');
INSERT INTO `store` VALUES ('23FCC3AF-A852-4F80-AB81-5671B3CB0CED', 'FSAFS', 'FSAFSAF', '销售仓库', '启用', '');
INSERT INTO `store` VALUES ('26EE73C2-D025-4D85-850E-E09894CFA600', 'DAS', 'FAG', '销售仓库', '启用', 'GAFA');
INSERT INTO `store` VALUES ('270F36FE-D6A5-43F8-9EDE-50D9D960A5FB', 'GSGSA', 'GSAGAS', '销售仓库', '启用', 'GSAGSA');
INSERT INTO `store` VALUES ('2A3854FE-DF1F-4C1F-9FB7-341A965AEB72', '111', '1111', '销售仓库', '启用', '');
INSERT INTO `store` VALUES ('3C95EAEF-A46F-4916-85DA-75A4AC13550C', 'GASG', 'GSAGAS', '售后仓库', '停用', '');
INSERT INTO `store` VALUES ('3F7869D1-1460-47C7-90B7-B7F991E0E128', '5151', '5', '销售仓库', '启用', '');
INSERT INTO `store` VALUES ('4BE0E554-DBE3-4AFB-AF61-D448B8D3C7A6', '9865', '85959', '销售仓库', '启用', '');
INSERT INTO `store` VALUES ('7F7FC9AA-EE8B-4FD6-9A80-612A3EBB50DD', '7547', '7547', '销售仓库', '启用', '7547');
INSERT INTO `store` VALUES ('7FA78456-D298-4080-A8E8-7D724C8C9CC8', 'aa', 'ddd', '销售仓库', '启用', '');
INSERT INTO `store` VALUES ('ABB9FD5A-7467-4C33-8D97-37568CB90888', 'BGBGBGB', 'ASFSAGG', '销售仓库', '启用', 'GGG');
INSERT INTO `store` VALUES ('C296B1FE-27A8-426A-B033-2D436DE29F7C', '898', '98', '销售仓库', '启用', '');
INSERT INTO `store` VALUES ('DFC300DD-9D37-4878-9405-38AE8F2FA13D', 'ZZZZZ', 'FASFAZ', '销售仓库', '启用', 'ZZZZ');
INSERT INTO `store` VALUES ('e5e9d6fa-aec6-407c-a4fc-79d7381e08a2', 'FASF', 'FSAFAS', '1', '启用', 'FAS');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `txtSuppId` varchar(40) collate utf8_bin NOT NULL COMMENT '供应商Id',
  `txtSuppBianHao` varchar(40) collate utf8_bin NOT NULL COMMENT '供应商编号',
  `txtSuppName` varchar(40) collate utf8_bin NOT NULL COMMENT '供应商名称',
  `txtSuppTel1` varchar(40) collate utf8_bin NOT NULL COMMENT '供应商电话1',
  `txtSuppTel2` varchar(40) collate utf8_bin default NULL COMMENT '供应商电话2',
  `txtSuppDiZhi` varchar(40) collate utf8_bin NOT NULL COMMENT '供应商通信地址',
  `txtSuppWangZhi` varchar(40) collate utf8_bin default NULL COMMENT '供应商网址',
  `txtSuppDiQu` varchar(40) collate utf8_bin default NULL COMMENT '地区',
  `txtLXingMing` varchar(40) collate utf8_bin NOT NULL COMMENT '联系人姓名',
  `txtLShouJi` varchar(40) collate utf8_bin NOT NULL COMMENT '联系人手机',
  `txtLChengHu` varchar(40) collate utf8_bin NOT NULL COMMENT '联系人称呼',
  `txtSuppChuanZhen` varchar(40) collate utf8_bin default NULL COMMENT '供应商传真',
  `txtSuppEmail` varchar(40) collate utf8_bin default NULL COMMENT '供应商邮箱',
  `txtSuppYouBian` varchar(40) collate utf8_bin default NULL COMMENT '邮政编码',
  PRIMARY KEY  (`txtSuppId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('217de046-ccc0-4a4f-bbff-99b94f26d04d', '飞洒', '飞洒发', '飞洒发飞洒', '', '法萨芬撒', '', '', '飞洒发', '11', '飞洒飞', '', '', '');
INSERT INTO `supplier` VALUES ('f3f09109-d19b-4a29-9e88-485d186bc305', '085555', '测试测试', '1365822', '', '测试测试测试', '飞洒飞洒发', '法萨芬撒', '法师法', '1365899+', '法萨芬撒', '', '', '');

-- ----------------------------
-- Table structure for taocan
-- ----------------------------
DROP TABLE IF EXISTS `taocan`;
CREATE TABLE `taocan` (
  `taoCanId` varchar(40) collate utf8_bin NOT NULL COMMENT 'ID',
  `txtTaoCanBianHao` varchar(40) collate utf8_bin NOT NULL COMMENT '套餐编号',
  `txtTaoCanMingCheng` varchar(50) collate utf8_bin NOT NULL COMMENT '套餐名称',
  `gongshizonge` float NOT NULL COMMENT '工时总额',
  `peijianzonge` float NOT NULL COMMENT '配件总额',
  PRIMARY KEY  (`taoCanId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of taocan
-- ----------------------------
INSERT INTO `taocan` VALUES ('1', '10000', '发动机清洗', '100', '555.66');
INSERT INTO `taocan` VALUES ('13f98a16-5e06-47ad-ad6d-95ae44af009f', 'DENG', 'DDDD', '22', '2222');
INSERT INTO `taocan` VALUES ('2', '10001', '车身美容', '2', '150');
INSERT INTO `taocan` VALUES ('3187730b-afed-4b37-b41d-d437b13617a4', '100010001001', 'ADFAD', '555', '1231');
INSERT INTO `taocan` VALUES ('45966789-cd32-4b21-b868-5a8c6dbe9bd9', '12312312', '11111', '100', '3123');
INSERT INTO `taocan` VALUES ('7e927cae-10d4-4138-b073-b191ce94a3c7', '', '', '0', '0');
INSERT INTO `taocan` VALUES ('9750d01b-fea7-411a-9569-f7b1e4d64df7', '123123121231', '23123', '2312', '1231');

-- ----------------------------
-- Table structure for unit
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `txtUnitId` varchar(40) character set utf8 NOT NULL COMMENT '单位ID',
  `txtUnitName` varchar(40) character set utf8 NOT NULL COMMENT '单位名',
  `ddlStopFlag` varchar(40) character set utf8 NOT NULL COMMENT '状态',
  `txtRemarks` varchar(50) character set utf8 default NULL COMMENT '备注',
  PRIMARY KEY  (`txtUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of unit
-- ----------------------------
INSERT INTO `unit` VALUES ('2', 'fasf', '启用', '');
INSERT INTO `unit` VALUES ('367fee31-7695-4d13-a028-9b47bbd4bc83', '条', '启用', '一大条');
INSERT INTO `unit` VALUES ('6095ba49-ca0e-4faa-a778-ba640fb88524', '堆', '停用', '一大堆');
INSERT INTO `unit` VALUES ('75560F5F-4963-43B7-AD80-F8700DE9CBEC', '块', '启用', '一大块');
INSERT INTO `unit` VALUES ('b5cc022f-4fbd-40ff-883b-59c50a693188', '0', '启用', '');
INSERT INTO `unit` VALUES ('com.chiefmech.arms.entity.User@5a6b4e31', 'fsa', '停用', '');
INSERT INTO `unit` VALUES ('session.user', 'fas ', '停用', 'fsa ');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userId` varchar(40) collate utf8_bin NOT NULL COMMENT '用户id',
  `loginName` varchar(40) collate utf8_bin NOT NULL COMMENT '用户登录名',
  `displayName` varchar(40) collate utf8_bin NOT NULL COMMENT '显示的用户名称',
  `password` varchar(40) collate utf8_bin NOT NULL COMMENT '用户密码',
  `lastLoginTime` datetime NOT NULL COMMENT '上次登录时间',
  `isLimit` varchar(10) collate utf8_bin NOT NULL default '1' COMMENT '是否受权限限制，0为受限制，1为不受限制',
  PRIMARY KEY  (`userId`)
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
  `userId` varchar(40) collate utf8_bin NOT NULL COMMENT '用户ID',
  `groupId` varchar(40) collate utf8_bin NOT NULL COMMENT '分组ID',
  PRIMARY KEY  (`userId`,`groupId`),
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
  `txtWeiXiuXiangMuGuid` varchar(40) collate utf8_bin NOT NULL COMMENT '维修项目guid',
  `txtWeiXiuXiangMuBianHao` varchar(40) collate utf8_bin NOT NULL default '' COMMENT '维修编号',
  `txtGongShi` float(10,2) default NULL COMMENT '工时',
  `ddlSuoShuGongDuan` varchar(40) collate utf8_bin default NULL COMMENT '所属工段',
  `txtWeiXiuNeiRong` varchar(100) collate utf8_bin default NULL COMMENT '维修内容',
  `ddlSuoShuZhangTao` varchar(40) collate utf8_bin default NULL COMMENT '所属帐套',
  PRIMARY KEY  (`txtWeiXiuXiangMuGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of weixiuxiangmu
-- ----------------------------
INSERT INTO `weixiuxiangmu` VALUES ('030f0f80-db77-4a6b-addb-f2d73f5f279e', '66', '66.00', '机电', '66', '特别帐套');
INSERT INTO `weixiuxiangmu` VALUES ('0bcb1ca8-9d99-43f4-81a9-b716149a7cba', '8888', '8.00', '机电', '58', '测试测试');
INSERT INTO `weixiuxiangmu` VALUES ('10', '434081', '3.00', '机电', '换前轮轴承或（及）油封', '特别帐套');
INSERT INTO `weixiuxiangmu` VALUES ('10e15d79-5d9c-4d74-afa0-eda55179a5ee', '66666', '6.00', '钣金', 'fs', '测试测试');
INSERT INTO `weixiuxiangmu` VALUES ('11', '617998', '2.50', '钣金', '检修门玻璃升降', '特别帐套');
INSERT INTO `weixiuxiangmu` VALUES ('3', '111111', '4.00', '钣金', '检修门玻璃升降', '普通帐套');
INSERT INTO `weixiuxiangmu` VALUES ('3d9ddb76-d39b-484a-9cea-04552066aed2', '99999', '9.00', '机电', '9', '很多帐套');
INSERT INTO `weixiuxiangmu` VALUES ('4', '120999', '8.00', '机电', '吊装发动机', '普通帐套');
INSERT INTO `weixiuxiangmu` VALUES ('46aec1ad-c2ae-43d0-856b-6a4c2bf8b9de', '878999', '666.00', '钣金', '555', '普通帐套');
INSERT INTO `weixiuxiangmu` VALUES ('4aeaafb2-c8a6-40ad-bb44-f3d455629cee', '66666', '6.00', '钣金', 'fs', '测试测试');
INSERT INTO `weixiuxiangmu` VALUES ('5', '156321', '3.00', '钣金', '检修门玻璃升降', '特别帐套');
INSERT INTO `weixiuxiangmu` VALUES ('6', '170999', '1.50', '机电', '更换空气流量计', '特别帐套');
INSERT INTO `weixiuxiangmu` VALUES ('7', '271012', '1.50', '机电', '检修（保养）发电机', '特别帐套');
INSERT INTO `weixiuxiangmu` VALUES ('798c8ea3-2a56-41e2-9b19-778c4d7e1a33', '66666', '6.00', '钣金', 'fs', '测试测试');
INSERT INTO `weixiuxiangmu` VALUES ('8', '358998', '1.00', '机电', '换波叉油封', null);
INSERT INTO `weixiuxiangmu` VALUES ('843d5556-63cf-4552-b390-6a079d6cbcb8', '4444', '3.00', '钣金', '大师', null);
INSERT INTO `weixiuxiangmu` VALUES ('9', '421012', '2.00', '机电', '换后轮半轴', null);
INSERT INTO `weixiuxiangmu` VALUES ('9ee9d759-340a-453f-b797-c6df6a9e91bb', '222', '33.00', '钣金', '22', null);
INSERT INTO `weixiuxiangmu` VALUES ('ce3ce066-f81e-46db-a0fc-51393d1ca750', '4444', '3.00', null, '发送', null);

-- ----------------------------
-- Table structure for weixiuxiangmutmp
-- ----------------------------
DROP TABLE IF EXISTS `weixiuxiangmutmp`;
CREATE TABLE `weixiuxiangmutmp` (
  `txtWeiXiuXiangMuBianHao` varchar(40) collate utf8_bin NOT NULL COMMENT '维修编号',
  `txtWeiXiuBillNo` varchar(40) collate utf8_bin NOT NULL COMMENT '维修单号',
  `ddlSuoShuGongDuan` varchar(40) collate utf8_bin NOT NULL COMMENT '所属工段',
  `ddlSuoShuZhangTao` varchar(40) collate utf8_bin NOT NULL COMMENT '适用帐套',
  `txtGongShi` float(10,2) NOT NULL COMMENT '工时',
  `txtWeiXiuNeiRong` varchar(100) collate utf8_bin NOT NULL COMMENT '维修内容',
  PRIMARY KEY  (`txtWeiXiuXiangMuBianHao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of weixiuxiangmutmp
-- ----------------------------

-- ----------------------------
-- Table structure for zhangtao
-- ----------------------------
DROP TABLE IF EXISTS `zhangtao`;
CREATE TABLE `zhangtao` (
  `txtZhangTaoGuid` varchar(40) collate utf8_bin NOT NULL COMMENT '帐套guid',
  `txtZhangTaoMing` varchar(40) collate utf8_bin NOT NULL COMMENT '帐套名',
  PRIMARY KEY  (`txtZhangTaoGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of zhangtao
-- ----------------------------
INSERT INTO `zhangtao` VALUES ('2bb7d6ab-92ee-42cf-9bf3-aef272bb549b', '11111');
INSERT INTO `zhangtao` VALUES ('4796ca5b-dc6c-4162-b026-3d534566173f', '特别帐套');
INSERT INTO `zhangtao` VALUES ('79c43766-b687-4250-bc5b-be515a32671e', '普通帐套');
INSERT INTO `zhangtao` VALUES ('7dabd8f0-bad8-4387-95b9-cd4543fedc08', '测试测试');
INSERT INTO `zhangtao` VALUES ('c0b2d806-712c-465f-b984-602c81542e6f', '很多帐套');
INSERT INTO `zhangtao` VALUES ('e802f3cc-43a4-4a41-9c60-cb90513a43f4', '帐套帐套');

-- ----------------------------
-- View structure for v_kehu_cheliang
-- ----------------------------
DROP VIEW IF EXISTS `v_kehu_cheliang`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER  VIEW `v_kehu_cheliang` AS select `t1`.`txtCustId` AS `txtCustId`,`t2`.`ddlCustSort` AS `ddlCustSort`,`t2`.`txtCheZhuName` AS `txtCheZhuName`,`t2`.`ddlCheZhuTelSort` AS `ddlCheZhuTelSort`,`t2`.`txtCheZhuTel` AS `txtCheZhuTel`,`t2`.`ddlCheZhuCardSort` AS `ddlCheZhuCardSort`,`t2`.`txtCheZhuCardNo` AS `txtCheZhuCardNo`,`t2`.`txtCheZhuMob` AS `txtCheZhuMob`,`t2`.`txtCheZhuAdd` AS `txtCheZhuAdd`,`t2`.`txtLianXiRenName` AS `txtLianXiRenName`,`t2`.`txtLianXiRenTel` AS `txtLianXiRenTel`,`t2`.`txtLianXiRenAdd` AS `txtLianXiRenAdd`,`t1`.`txtVehicleId` AS `txtVehicleId`,`t1`.`txtCheLiangChePaiHao` AS `txtCheLiangChePaiHao`,`t1`.`ddlCheLiangZhiZaoShang` AS `ddlCheLiangZhiZaoShang`,`t1`.`ddlCheLiangCheXi` AS `ddlCheLiangCheXi`,`t1`.`txtCheLiangCheXingDaiMa` AS `txtCheLiangCheXingDaiMa`,`t1`.`txtCheLiangCheJiaHao` AS `txtCheLiangCheJiaHao`,`t1`.`ddlCheShenColor` AS `ddlCheShenColor`,`t2`.`txtLianXiRenJiaZhaoDate` AS `txtLianXiRenJiaZhaoDate`,`t1`.`txtGouCheDate` AS `txtGouCheDate`,`t1`.`txtBaoXianDate` AS `txtBaoXianDate` from (`customvehicle` `t1` left join `chezhulianxiren` `t2` on((`t2`.`txtCustId` = `t1`.`txtCustId`))) ;
