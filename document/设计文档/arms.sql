/*
Navicat MySQL Data Transfer

Source Server         : 120.24.213.132
Source Server Version : 50537
Source Host           : 120.24.213.132:3306
Source Database       : arms

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2015-01-09 14:55:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `caigoubill`
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
-- Table structure for `caigoubillmingxi`
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
-- Table structure for `chezhuxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `chezhuxinxi`;
CREATE TABLE `chezhuxinxi` (
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
  PRIMARY KEY (`txtCustId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of chezhuxinxi
-- ----------------------------

-- ----------------------------
-- Table structure for `chezhu_lianxiren`
-- ----------------------------
DROP TABLE IF EXISTS `chezhu_lianxiren`;
CREATE TABLE `chezhu_lianxiren` (
  `txtCustId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '客户id',
  `txtLianXiRenId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '车辆id',
  PRIMARY KEY (`txtCustId`,`txtLianXiRenId`),
  KEY `txtLianXiRenId` (`txtLianXiRenId`),
  CONSTRAINT `chezhu_lianxiren_ibfk_2` FOREIGN KEY (`txtLianXiRenId`) REFERENCES `lianxirenxinxi` (`txtLianXiRenId`),
  CONSTRAINT `chezhu_lianxiren_ibfk_1` FOREIGN KEY (`txtCustId`) REFERENCES `chezhuxinxi` (`txtCustId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of chezhu_lianxiren
-- ----------------------------

-- ----------------------------
-- Table structure for `gongdan`
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
-- Table structure for `gongdanwuliao`
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
-- Table structure for `gongdanxiangmu`
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
-- Table structure for `groups`
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

-- ----------------------------
-- Table structure for `group_privilege`
-- ----------------------------
DROP TABLE IF EXISTS `group_privilege`;
CREATE TABLE `group_privilege` (
  `groupId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '分组ID',
  `privilegeId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '权限ID',
  PRIMARY KEY (`groupId`,`privilegeId`),
  KEY `privilegeId` (`privilegeId`),
  CONSTRAINT `group_privilege_ibfk_2` FOREIGN KEY (`privilegeId`) REFERENCES `privileges` (`privilegeId`),
  CONSTRAINT `group_privilege_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `groups` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of group_privilege
-- ----------------------------

-- ----------------------------
-- Table structure for `lianxirenxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `lianxirenxinxi`;
CREATE TABLE `lianxirenxinxi` (
  `txtLianXiRenId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '联系人id',
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
  PRIMARY KEY (`txtLianXiRenId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of lianxirenxinxi
-- ----------------------------

-- ----------------------------
-- Table structure for `privileges`
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

-- ----------------------------
-- Table structure for `rukudan`
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
-- Table structure for `rukudanmingxi`
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
-- Table structure for `rukutuikudan`
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
-- Table structure for `rukutuikudanmingxi`
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
-- Table structure for `shop`
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
-- Table structure for `shopoperlog`
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
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '用户id',
  `userLoginName` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '用户登录名',
  `userDisplayName` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '显示的用户名称',
  `password` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '用户密码',
  `lastLoginTime` datetime NOT NULL COMMENT '上次登录时间',
  `isLimit` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '是否受权限限制，0为受限制，1为不受限制',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for `user_group`
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `userId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '用户ID',
  `groupId` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '分组ID',
  PRIMARY KEY (`userId`,`groupId`),
  KEY `groupId` (`groupId`),
  CONSTRAINT `user_group_ibfk_2` FOREIGN KEY (`groupId`) REFERENCES `groups` (`groupId`),
  CONSTRAINT `user_group_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_group
-- ----------------------------

-- ----------------------------
-- Table structure for `vehiclexinxi`
-- ----------------------------
DROP TABLE IF EXISTS `vehiclexinxi`;
CREATE TABLE `vehiclexinxi` (
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
  `ddlCheLiangZiDianSale` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '自店销售',
  `txtCheLiangLaiYuan` varchar(60) COLLATE utf8_bin DEFAULT NULL COMMENT '车辆来源',
  `txtCheLiangSaleName` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '销售员',
  `txtCheLiangSaleBillNo` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '销售单号',
  PRIMARY KEY (`txtVehicleId`),
  KEY `txtCustId` (`txtCustId`),
  CONSTRAINT `vehiclexinxi_ibfk_1` FOREIGN KEY (`txtCustId`) REFERENCES `chezhuxinxi` (`txtCustId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of vehiclexinxi
-- ----------------------------

-- ----------------------------
-- Table structure for `weixiuxiangmu`
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
-- Table structure for `weixiuxiangmutmp`
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


