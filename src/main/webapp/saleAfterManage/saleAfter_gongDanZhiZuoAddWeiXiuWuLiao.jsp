<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>维修物料新增</title>

<link rel="stylesheet" type="text/css"
	href="../style/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="../style/themes/icon.css" />
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="../js/common.js" type="text/javascript"></script>
<link href="../style/common.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
</head>
<base target="_self" />
<body>
	<form name="form1" method="post" id="form1">
		<div style="margin-top: 5px; margin-left: 5px">
			<table border="0"
				style="width: 700px; border-bottom: 1px solid #b8b8b8;">
				<tr>
					<td class="titlebg"><span>售后管理</span> <span class="titleSpan">(维修物料新增)</span>
					</td>
					<td align="right"></td>
				</tr>
			</table>

			<table border="0">
				<tr>
					<td>商品编码:</td>
					<td><input name="txtShopId" type="text" maxlength="10" id="txtShopId" /> </td>
					<td>商品名称:</td>
         			<td><input name="txtShopName" type="text" maxlength="10" id="txtShopName" /> </td>
					<td><a id="lnkSearch" class="easyui-linkbutton"
						href="javascript:searchWeiXiuWuLiao()">查询</a></td>
				</tr>
			</table>
			<table id="mydg" width="730" class="easyui-datagrid"
				data-options="url:'queryWeiXiuWuLiao.action',rownumbers:true,toolbar:'#tb',pagination:true">
				<thead>
					<tr>
						<th field="ck" checkbox="true" width="20"></th>
						<th field="txtShopId" width="100">商品编号</th>
						<th field="txtShopName" width="200">商品名称</th>
						<th field="txtSalePrice" width="100">销售价</th>
						<th field="txtKuCun" width="100">库存数</th>
					</tr>
				</thead>
			</table>
			<div id="tb" style="height: auto">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					data-options="iconCls:'icon-add',plain:true"
					onClick="addCheckedItems()">添加选中物料</a>
			</div>
		</div>
	</form>

	<script language="javascript" type="text/javascript">
		function searchWeiXiuWuLiao() {
			$("#form1").form('submit', {
				url : "queryWeiXiuWuLiao.action",
				success : function(jsonStr) {
					$('#mydg').datagrid('loadData', $.parseJSON(jsonStr));
				}
			});
		}

		function addCheckedItems() {
			var checkedRows = $('#mydg').datagrid('getChecked');
			if (checkedRows.length == 0) {
				$.messager.alert('提示', '请先选中要插入的维修项目');
			} else {
				$.post("addGongDanWeiXiuWuLiao.action?d=" + new Date(), {
					"saleAfterGuid" : '<s:property value="saleAfterGuid" />',
					"easyUiJSonData" : JsonToString(checkedRows)
				}, function(result) {
					if (result.errorMsg) {
						$.messager.alert('出错啦', result.errorMsg);
					} else {
						winThisClose();
					}
				}, "json");
			}
		}
	</script>

</body>
</html>