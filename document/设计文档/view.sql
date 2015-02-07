DROP VIEW IF EXISTS `v_kehu_cheliang`;
CREATE VIEW V_KeHu_CheLiang
AS
   SELECT `customerinfo`.`txtCustId` AS `txtCustId`,
          `customerinfo`.`ddlCustSort` AS `ddlCustSort`,
          `customerinfo`.`txtCheZhuName` AS `txtCheZhuName`,
          `customerinfo`.`txtCheZhuTel` AS `txtCheZhuTel`,
          `customerinfo`.`txtLianXiRenName` AS `txtLianXiRenName`,
          `customerinfo`.`txtLianXiRenTel` AS `txtLianXiRenTel`,
          `customerinfo`.`txtLianXiRenAdd` AS `txtLianXiRenAdd`,
          `customerinfo`.`txtHuiYuanJiFen` AS `txtHuiYuanJiFen`,
          `customerinfo`.`txtGongShiZheKou` AS `txtGongShiZheKou`,
          `customerinfo`.`txtCaiLiaoZheKou` AS `txtCaiLiaoZheKou`,
          `customerinfo`.`txtHuiYuanDengJi` AS `txtHuiYuanDengJi`,
          `customerinfo`.`txtCheZhuJiaZhaoDate` AS `txtCheZhuJiaZhaoDate`,
          `chelianginfo`.`txtCheLiangId` AS `txtCheLiangId`,
          `chelianginfo`.`txtCheLiangChePaiHao` AS `txtCheLiangChePaiHao`,
          `chelianginfo`.`ddlCheLiangZhiZaoShang` AS `ddlCheLiangZhiZaoShang`,
          `chelianginfo`.`ddlCheLiangCheXi` AS `ddlCheLiangCheXi`,
          `chelianginfo`.`txtCheLiangCheXingDaiMa`
             AS `txtCheLiangCheXingDaiMa`,
          `chelianginfo`.`txtCheLiangCheJiaHao` AS `txtCheLiangCheJiaHao`,
          `chelianginfo`.`txtCheLiangFaDongJiHao` AS `txtCheLiangFaDongJiHao`
     FROM (`customerinfo`
           LEFT JOIN `chelianginfo`
              ON ((`customerinfo`.`txtCustId` = `chelianginfo`.`txtCustId`)));
       
          
DROP VIEW IF EXISTS `view_zhekou`;
CREATE VIEW view_zhekou
AS
   SELECT   txtZheKouGuId,
			t2.userId,
			t2.displayName,
			t2.departName,
			t2.jigouName,
			txtGongShiZheKou,
			txtMeiRongZheKou,
			txtJiDianZheKou,
			txtBaoYangZheKou,
			txtBanJinZheKou,
			txtPenQiZheKou,
			txtCaiLiaoZheKou
     FROM zhekou t1
          LEFT JOIN users t2 ON t2.userId = t1.userId;
