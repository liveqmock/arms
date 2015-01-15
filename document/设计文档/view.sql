DROP VIEW IF EXISTS `v_kehu_cheliang`;
CREATE VIEW V_KeHu_CheLiang
AS
   SELECT t1.txtCustId,
          ddlCustSort,
          txtCheZhuName,
          ddlCheZhuTelSort,
          txtCheZhuTel,
          ddlCheZhuCardSort,
          txtCheZhuCardNo,
          txtCheZhuMob,
          txtCheZhuAdd,
          txtLianXiRenName,
          txtLianXiRenTel,
          txtLianXiRenMob,
          txtLianXiRenAdd,
          txtVehicleId,
          txtCheLiangChePaiHao,
          ddlCheLiangZhiZaoShang,
          ddlCheLiangCheXi,
          txtCheLiangCheXingDaiMa,
          txtCheLiangCheJiaHao,
          txtCheLiangFaDongJiHao,
          ddlCheShenColor,
          txtLianXiRenJiaZhaoDate,
          txtGouCheDate,
          txtBaoXianDate
     FROM customvehicle t1
          LEFT JOIN chezhulianxiren t2 ON t2.txtCustId = t1.txtCustId;
