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
          txtVehicleId,
          txtCheLiangChePaiHao,
          ddlCheLiangZhiZaoShang,
          ddlCheLiangCheXi,
          txtCheLiangCheJiaHao,
          txtGouCheDate
     FROM customvehicle t1
          LEFT JOIN chezhulianxiren t2 ON t2.txtCustId = t1.txtCustId;
