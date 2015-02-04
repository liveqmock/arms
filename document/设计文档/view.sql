DROP VIEW IF EXISTS `v_kehu_cheliang`;
CREATE VIEW V_KeHu_CheLiang
AS
SELECT `customvehicle`.`txtCustId` AS `txtCustId`,
       `chezhulianxiren`.`ddlCustSort` AS `ddlCustSort`,
       `chezhulianxiren`.`txtCheZhuName` AS `txtCheZhuName`,
       `chezhulianxiren`.`txtCheZhuTel` AS `txtCheZhuTel`,
       `chezhulianxiren`.`txtCheZhuMob` AS `txtCheZhuMob`,
       `chezhulianxiren`.`txtCheZhuAdd` AS `txtCheZhuAdd`,
       `chezhulianxiren`.`txtLianXiRenName` AS `txtLianXiRenName`,
       `chezhulianxiren`.`txtLianXiRenTel` AS `txtLianXiRenTel`,
       `chezhulianxiren`.`txtLianXiRenAdd` AS `txtLianXiRenAdd`,
       `customvehicle`.`txtVehicleId` AS `txtVehicleId`,
       `customvehicle`.`txtCheLiangChePaiHao` AS `txtCheLiangChePaiHao`,
       `customvehicle`.`ddlCheLiangZhiZaoShang` AS `ddlCheLiangZhiZaoShang`,
       `customvehicle`.`ddlCheLiangCheXi` AS `ddlCheLiangCheXi`,
       `customvehicle`.`txtCheLiangCheXingDaiMa` AS `txtCheLiangCheXingDaiMa`,
       `customvehicle`.`txtCheLiangCheJiaHao` AS `txtCheLiangCheJiaHao`,
       `customvehicle`.`txtBaoXianDate` AS `txtBaoXianDate`,
       `huiyuan`.`txtHuiYuanDengJi` AS `txtHuiYuanDengJi`,
       `huiyuan`.`txtHuiYuanHao` AS `txtHuiYuanHao`,
       `huiyuan`.`txtGongShiZheKou` AS `txtGongShiZheKou`,
       `huiyuan`.`txtCaiLiaoZheKou` AS `txtCaiLiaoZheKou`
  FROM ((`customvehicle`
         LEFT JOIN `chezhulianxiren`
            ON ((`chezhulianxiren`.`txtCustId` = `customvehicle`.`txtCustId`)))
        LEFT JOIN `huiyuan`
           ON ((`huiyuan`.`txtCustId` = `chezhulianxiren`.`txtCustId`)));
          
          
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
