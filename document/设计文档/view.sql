DROP VIEW IF EXISTS `v_kehu_cheliang`;
CREATE VIEW V_KeHu_CheLiang
AS
   SELECT `customerinfo`.`txtCustId` AS `txtCustId`,
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
       
