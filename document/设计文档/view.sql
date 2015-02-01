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
