<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>维修历史查看</title>
<style type="text/css">
td {
	white-space: nowrap;
}
</style>
<link rel="stylesheet" type="text/css"
	href="../style/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="../style/themes/icon.css" />
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="../js/common.js"
	type="text/javascript"></script>
<link href="../style/common.css"
	rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
</head>


<script language="javascript" type="text/javascript">

     var tmp = '#FFFFFF';
     $(function () {
         $('#tbWeiXiuList tr').mouseover(function () {
             tmp = this.style.backgroundColor;
             this.style.backgroundColor = '#eaf2ff';
         });

         $('#tbWeiXiuList tr').mouseout(function () {
             this.style.backgroundColor = tmp;
         });
     });
 
</script>


<body>
	<div style="margin-left: 10px; margin-right: 10px; margin-top: 5px;">

		维修信息列表:

		<!--维修列表 start-->
		<table border="1" id="tbWeiXiuList" cellpadding="0" cellspacing="0"
			width="100%"
			style="border-collapse: collapse; border: 1px solid gray;">

			<tr>
				<td>工单号</td>
				<td>车牌号</td>
				<td>服务顾问</td>
				<td>联系人</td>
				<td>联系人手机</td>
				<td>单据状态</td>
				<td>接车日期</td>
			</tr>
			<s:iterator value="gongDanLst">
			<tr onclick=saleAfterLiShiShow('<s:property value="txtGongDanId" />')>
				<td><s:property value="txtBillNo" /></td>
				<td><s:property value="txtChePaiHao" /></td>
				<td><s:property value="txtFuWuGuWen" /></td>
				<td><s:property value="txtLianXiRenName" /></td>
				<td><s:property value="txtLianXiRenMob" /></td>
				<td><s:property value="txtGongDanStatus" /></td>
				<td><s:property value="txtChuChangDate" /></td>
			</tr>
			</s:iterator>


		</table>
		<!--维修列表 end-->

	</div>

	<script language="javascript" type="text/javascript">
        function winClose() {
            parWinClose();
            return false;
        }

        function saleAfterLiShiShow(saleAfterGuid) {
            z = window.open('../saleAfterManage/weiXiuLiShiDetail.action?saleAfterWeiXiuGuid=' + saleAfterGuid + '&d=' + new Date(), '维修历史查看', 'height=900, width=990, top=100, left=100, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no')
            z.focus();
        }
    </script>

</body>
</html>