<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>维修接待导航</title>
<style type="text/css">
td {
	white-space: nowrap;
}

#tb1  td {
	height: 28px;
}

#tbWeiXiuList td {
	white-space: nowrap;
}
</style>
<link rel="stylesheet" type="text/css"
	href="../style/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="../style/themes/icon.css" />
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="../js/common.js" type="text/javascript"></script>
<script src="../js/customcommon.js" type="text/javascript"></script>
<link href="../style/common.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
</head>

<script language="javascript" type="text/javascript">

    var tmp = '#FFFFFF';
    $(function () {
        $('tr').mouseover(function () {
            tmp = this.style.backgroundColor;
            this.style.backgroundColor = '#eaf2ff';
        });

        $('tr').mouseout(function () {
            this.style.backgroundColor = tmp;
        });
    });
 
</script>



<body>
	<form name="form1" method="post" id="form1">
		<div style="margin-top: 20px; margin-left: 20px;">
			<table id="tb1" border="0" cellpadding="0" cellspacing="0"
				width="700px">
				<tr>
					<td style="width: 100px;">车主名：</td>
					<td style="width: 200px;"><input name="txtCustName"
						type="text" value="<s:property value='customer.txtCheZhuName' />"
						readonly id="txtCustName" style="width: 90%;" /></td>
					<td style="width: 100px;">车主电话：</td>
					<td style="width: 200px;"><input name="txtCheZhuTel"
						type="text" value="<s:property value='customer.txtCheZhuTel' />"
						readonly id="txtCheZhuTel" style="width: 90%;" /></td>
				</tr>
				<tr>
					<td>联系人：</td>
					<td><input name="txtLianXiRenName" type="text"
						value="<s:property value='customer.txtCheZhuName' />" readonly
						id="txtLianXiRenName" style="width: 90%;" /></td>
					<td>联系人电话：</td>
					<td style="width: 160px;"><input name="txtLianXiRenMob"
						type="text"
						value="<s:property value='customer.txtLianXiRenTel' />" readonly
						id="txtLianXiRenMob" style="width: 90%;" /></td>



				</tr>
				<tr>
					<td>车牌号：</td>
					<td><input name="txtChePaiHao" type="text"
						value="<s:property value='customer.txtCheLiangChePaiHao' />"
						readonly id="txtChePaiHao" style="width: 90%;" /></td>
					<td>车架号码：</td>
					<td><input name="txtCheJiaHaoMa" type="text"
						value="<s:property value='customer.txtCheLiangCheJiaHao' />"
						readonly id="txtCheJiaHaoMa" style="width: 90%;" /></td>
				</tr>

				<tr>
					<td>车系：</td>
					<td><input name="txtCheXi" type="text"
						value="<s:property value='customer.ddlCheLiangCheXi' />" readonly
						id="txtCheXi" style="width: 90%;" /></td>
					<td>驾照日期：</td>
					<td><input name="txtCheZhuJiaZhaoDate" type="text"
						value="<s:property value='customer.txtCheZhuJiaZhaoDate' />"
						readonly id="txtCheZhuJiaZhaoDate" style="width: 90%;" /></td>
				</tr>
				<tr>
					<td>联系人地址:</td>
					<td colspan="3"><input name="txtLianXiRenAdd" type="text"
						value="<s:property value='customer.txtLianXiRenAdd' />" readonly
						id="txtLianXiRenAdd" style="width: 96%;" /></td>
				</tr>

				<tr>
					<td colspan="4" height="6px"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<div
							style="border: 1px dashed gray; width: 200px; height: 180px; text-align: center;">
							<table border="0"
								style="vertical-align: top; color: Blue; font-weight: bold;">
								<tr>
									<td>会员积分：[<s:property value='customer.txtHuiYuanJiFen' />
										]
									</td>
								</tr>
								<tr>
									<td>会员等级：[<s:property value='customer.txtHuiYuanDengJi' />
										]
									</td>
								</tr>
								<tr>
									<td>工时折扣：[<s:property value='customer.txtGongShiZheKou' />]
									</td>
								</tr>
								<tr>
									<td>物料折扣：[<s:property value='customer.txtCaiLiaoZheKou' />]
									</td>
								</tr>
							</table>
						</div>
					</td>

					<td colspan="2" align="center">
						<div
							style="border: 1px dashed gray; width: 200px; height: 180px; text-align: center;">
							<br /> <a onClick="newWeiXiuJieDai();return false;"
								class="easyui-linkbutton" href="javascript:void(0)">维修接待</a>
						</div>

					</td>


				</tr>

				<tr>
					<td colspan="4" height="6px"></td>
				</tr>
			</table>

			维修信息列表(前5条)
			<!--维修列表 start-->
			<table border="1" id="tbWeiXiuList" cellpadding="0" cellspacing="0"
				width="700px"
				style="border-collapse: collapse; border: 1px solid gray;">

				<tr>
					<td>工单号</td>
					<td>车牌号</td>
					<td>服务顾问</td>
					<td>联系人</td>
					<td>联系人手机</td>
                    <td>入厂时间</td>
                    <td>交车时间</td>
                    <td>单据状态</td>
				</tr>
				<s:iterator value="gongDanLst">
					<tr onclick=saleAfterLiShiShow('<s:property value="txtGongDanId" />','<s:property value="txtGongDanStatus" />')>
						<td><s:property value="txtBillNo" /></td>
						<td><s:property value="txtChePaiHao" /></td>
						<td><s:property value="txtFuWuGuWen" /></td>
						<td><s:property value="txtLianXiRenName" /></td>
                        <td><s:property value="txtLianXiRenTel" /></td>
                        <td><s:property value="txtRuChangDate" /></td>
                        <td><s:property value="txtChuChangDate" /></td>
                        <td><s:property value="txtGongDanStatus" /></td>
					</tr>
				</s:iterator>



			</table>
			<!--维修列表 end-->

		</div>
	</form>

	<script language="javascript" type="text/javascript">
        function newWeiXiuJieDai() {
            var z = window.open('saleAfterIndex.action?cheLiangId=<s:property value="customer.txtCheLiangId" />&d=' + new Date(), '_blank', 'height=800, width=1200, top=100, left=100, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no');
            z.focus();

            window.opener = null;
            window.close();
        }    

        function saleAfterLiShiShow(saleAfterGuid,txtGongDanStatus) {
            if (txtGongDanStatus == '交车') {                
				saleAfterLiShiDetail(saleAfterGuid);
            } else {
				saleAfterGongDanDetail(saleAfterGuid);
            }

        }    
		
		function saleAfterLiShiDetail(saleAfterGuid) {
            showJieSuanDan(saleAfterGuid);
			
            window.opener = null;
            window.close();
        }    
		
		function saleAfterGongDanDetail(saleAfterGuid) {
            var z = window.open('saleAfterIndex.action?saleAfterWeiXiuGuid=' + saleAfterGuid + '&d=' + new Date(), '_blank', 'height=800, width=1200, top=100, left=100, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no');
            z.focus();
			
            window.opener = null;
            window.close();
        }

    </script>


</body>
</html>