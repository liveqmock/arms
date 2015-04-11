<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>工单维修物料清单</title>
<link rel="stylesheet" type="text/css"
	href="../style/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="../style/themes/icon.css" />
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="../js/frame/underscore-min.js" type="text/javascript"></script>
<script src="../js/common.js" type="text/javascript"></script>
<script src="../js/customcommon.js" type="text/javascript"></script>
<link href="../style/common.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon"
	href="../image/SyAuto_<s:property value='shop.companyFlag' />.ico"
	type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<style type="text/css">
td {
	height: 25px;
}
</style>
</head>
<body>
	<table border="0" style="width: 100%;">
		<tr>
			<td class="titlebg"><span>报表管理</span> <span class="titleSpan">(工时报表)</span>
			</td>
		</tr>
	</table>
	<div id="searchPanel" style="display: block;">
		<form name="fmSearch" method="post" id="fmSearch" class="searchform">
			<table border='0' id="searchTb">
				<tr>
					<td nowrap>时间:</td>
					<td><input name="dateBegin" type="text" id="dateBegin"
						class="easyui-datebox" style="width: 120px;" /></td>
					<td><input name="dateEnd" type="text" id="dateEnd"
						class="easyui-datebox" style="width: 120px;" /></td>

					<td>&nbsp;</td>
					<td nowrap><a id="lnkSearch" class="easyui-linkbutton"
						href="javascript:doSearch()">查询</a>&nbsp;&nbsp;&nbsp;<a
						class="easyui-linkbutton" href="javascript:doSearchForToday()">今日报表</a>&nbsp;&nbsp;&nbsp;<a
						class="easyui-linkbutton" href="javascript:doSearchForCurMonth()">本月报表</a>&nbsp;&nbsp;&nbsp;<a
						id="lnkSearch" class="easyui-linkbutton"
						href="javascript:exportExcel()">导出到Excel表格</a></td>
				</tr>
			</table>
		</form>
	</div>
    <div style="text-align:center;"><img id="reportPic" name="reportPic" src="../image/blank.jpg" width=800 height=500 border=0 />  </div>
	<script type="text/javascript">
		$(function(){
			doSearchForToday();
		});
	
		function doSearch() {
			$("#fmSearch").form('submit', {
				url : "queryGongShiReport.action?graphWidth=800&graphHeight=500&date="+new Date(),
				success : function(result) {
					var result = eval('(' + result + ')');
					if(result.graphURL == ""){
						$("#reportPic").attr("src", "../image/blank.jpg");
						$.messager.alert('提示', result.errorMsg);
					}else{
						$("#reportPic").attr("src", result.graphURL);
					}
				}
			});
		}

		function exportExcel() {
			$("#fmSearch").form('submit', {
				url : "exportGongShiReport.action",
				success : function(resp) {
					if (resp != "") {
						$.messager.alert('提示', resp);
					}
				}
			});
		}
	</script>
</body>
</html>