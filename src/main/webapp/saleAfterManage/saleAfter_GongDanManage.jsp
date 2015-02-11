<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>维修接待</title>
<style type="text/css">
#searchTb tb {
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
<script src="../js/frame/underscore-min.js" type="text/javascript"></script>
<script src="../js/common.js" type="text/javascript"></script>
<script src="../js/customcommon.js" type="text/javascript"></script>
<link href="../style/common.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
</head>
<body>
	<div class="title">
		<table border="0" style="width: 100%;">
			<tr>
				<td class="titlebg"><span>维修接待</span> <span class="titleSpan">(工单管理)</span>
				</td>
				<td align="right"><a href="#" class="easyui-linkbutton"
					data-options="plain:true,iconCls:'icon-search'"
					onclick="toggleSearchPanel();">查询</a> <a href="#"
					class="easyui-linkbutton"
					data-options="plain:true,iconCls:'icon-reload'"
					onclick="reloadCurentPage();">刷新</a></td>
			</tr>
		</table>
	</div>
	<div id="searchPanel" style="display: none;">
		<form name="form1" method="post"
			action="saleAfterGongDanManage.action" id="form1">
			<table border='0' id="searchTb">
				<tr>
					<td nowrap>入厂时间:</td>
					<td><input name="txtRuChangDate1" type="text"
						id="txtRuChangDate1" class="easyui-datebox" style="width: 100px;" /></td>
					<td nowrap><input name="txtRuChangDate2" type="text"
						id="txtRuChangDate2" class="easyui-datebox" style="width: 100px;" /></td>
					<td nowrap>工单号:</td>
					<td><input name="txtBillNo" type="text" class="easyui-textbox"
						maxlength="30" id="txtBillNo" style="width: 150px;" /></td>
					<td nowrap>客户类别:</td>
					<td><input name="txtCustSort" id="txtCustSort"
						class="easyui-combobox"
						data-options="editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/customerSortOption.action'"
						style="width: 150px;" /></td>
					<td nowrap>车架号:</td>
					<td><input name="txtVin" type="text" class="easyui-textbox"
						maxlength="30" id="txtVin" style="width: 150px;" /></td>
					<td nowrap>&nbsp;</td>
				</tr>
				<tr>
					<td nowrap>出厂时间:</td>
					<td><input name="txtChuChangDate1" type="text"
						id="txtChuChangDate1" class="easyui-datebox" style="width: 100px;" /></td>
					<td><input name="txtChuChangDate2" type="text"
						id="txtChuChangDate2" class="easyui-datebox" style="width: 100px;" /></td>
					<td nowrap>车牌号:</td>
					<td><input name="txtChePaiHao" type="text"
						class="easyui-textbox" maxlength="10" id="txtChePaiHao"
						style="width: 150px;" /></td>
					<td nowrap>车主名:</td>
					<td><input name="txtCheZhuName" type="text"
						class="easyui-textbox" maxlength="60" id="txtCheZhuName"
						style="width: 150px;" /></td>
					<td nowrap>车主电话:</td>
					<td><input name="txtCheZhuTel" type="text"
						class="easyui-textbox" maxlength="18" id="txtCheZhuTel"
						style="width: 150px;" /></td>
					<td nowrap><a id="lnkSearch" class="easyui-linkbutton"
						href="javascript:gongDanSearch()">查询</a></td>

				</tr>
			</table>
		</form>
	</div>
	<div class="region">
		<table id="dg" class="easyui-datagrid"
			data-options="rownumbers:true,singleSelect:true,autoRowHeight:false,pagination:true,pageList:[10,15,20,30,40,50,100],pageNumber:1,pageSize:15,onDblClickRow:showGongDan">
			<thead>
				<tr>
					<th width="20" data-options="field:'txtGongDanId',checkbox:true"></th>
					<th width="150" data-options="field:'txtBillNo'" sortable="true">工单号</th>
					<th width="100" data-options="field:'txtGongDanStatus'">当前状态</th>
					<th width="100" data-options="field:'txtCustSort'">客户类别</th>
					<th width="100" data-options="field:'txtFuWuGuWen'">服务顾问</th>
					<th width="100" data-options="field:'txtChePaiHao'">车牌号</th>
					<th width="100" data-options="field:'txtCheXiName'">车系名称</th>
					<th width="100" data-options="field:'txtCheZhuName'">车主名称</th>
					<th width="100" data-options="field:'txtCheZhuTel'">车主电话</th>
					<th width="100" data-options="field:'txtRuChangDate'">入厂时间</th>
					<th width="150" data-options="field:'txtYuChuChangDate'">预出厂时间</th>
					<th width="100" data-options="field:'txtJieSuanDate'">结算时间</th>
					<th width="100" data-options="field:'txtChuChangDate'">出厂时间</th>
				</tr>
			</thead>
		</table>
	</div>


	<script language="javascript" type="text/javascript">
		$(function() {
			var jsonStr = '<s:property value="easyUiJSonData" escape="false"/>';
			setupDatagrid(jsonStr);
		});

		function setupDatagrid(jsonStr) {
			jsonStrData = $.parseJSON(jsonStr);
			$('#dg').datagrid('loadData', jsonStrData);
		}

		function gongDanSearch() {
			$("#form1").form('submit', {
				url : "saleAfterGongDanSearch.action",
				success : function(jsonStr) {
					setupDatagrid(jsonStr);
				}
			});
		}

		function showGongDan(index) {
			var thisGuid = $('#dg').datagrid('getRows')[index]['txtGongDanId'];
			if (thisGuid != "" && thisGuid != undefined) {
				var url = 'saleAfterIndex.action?saleAfterWeiXiuGuid='
						+ thisGuid + '&d=' + new Date();
				var features = 'height=800,width=1000,top=100,left=50,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=no';
				z = window.open(url, '_blank', features);
				z.focus();
			}
		}
	</script>
</body>
</html>

