<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>操作日志查询</title>
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
<style type="text/css">
td {
	height: 25px;
}
</style>
<style type="text/css">
td {
	height: 25px;
}
</style>
<body>
	<table border="0" style="width: 100%;">
		<tr>
			<td class="titlebg"><span>物料管理</span> <span class="titleSpan">(操作日志查询)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch"><table id="searchPanel" class="searchPanel">
			<tr>
				<td>操作时间:</td>
				<td><input name="txtLogDateBegin" type="text" id="txtLogDateBegin"
					class="easyui-datebox" style="width: 100px;" /></td>
				<td>至</td>
				<td><input name="txtLogDateEnd" type="text"
					id="txtLogDateEnd" class="easyui-datebox"
					style="width: 100px;" /></td>
				<td>所属仓库:</td>
				<td><input name="ddlCangKu" id="ddlCangKu"
							class="easyui-combobox"
							data-options="editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/peiJianChangKuOption.action'" style="width: 100px;"/></td>
				<td>业务类别:</td>
				<td><input name="txtBillSort" id="txtBillSort"
                        class="easyui-combobox"	data-options="editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/chuRuKuSortOption.action'" style="width: 100px;"/></td>
				<td>物料编码:</td>
				<td><input name="txtWuLiaoCode" id="txtWuLiaoCode" type="text" class="easyui-textbox" maxlength="20" style="width: 100px;" /></td>
				<td>名称及规格:</td>
				<td><input name="txtWuLiaoName" type="text" class="easyui-textbox" maxlength="20"
					id="txtWuLiaoName" style="width: 100px;" /></td>
				<td>业务单号:</td>
				<td><input name="txtBillNo" id="txtBillNo" type="text" class="easyui-textbox" maxlength="20" style="width: 100px;" /></td>
				<td colspan="3" style="text-align: center;"><a id="lnkSearch"
					class="easyui-linkbutton" href="javascript:doSearch()">查询项目</a></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryKuCunOperLog.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
		<thead>
			<tr>
				<th width="200" data-options="field:'txtSuppName'">供应商</th>
				<th width="100" data-options="field:'txtWuLiaoCode'">物料编码</th>
				<th width="150" data-options="field:'txtWuLiaoName'">名称及规格</th>
				<th width="100" data-options="field:'txtChengBenJia'">成本价格</th>
				<th width="100" data-options="field:'txtSalePrice'">销售价格</th>
				<th width="100" data-options="field:'txtQty'">数量</th>
				<th width="150" data-options="field:'txtBillNo'">业务单号</th>
				<th width="100" data-options="field:'txtBillSort'">业务类别</th>
				<th width="150" data-options="field:'txtLogDate'">操作时间</th>
			</tr>
		</thead>
	</table>
	<script type="text/javascript">
		var url;
		function doSearch() {
			$("#fmSearch").form('submit', {
				url : "queryKuCunOperLog.action",
				success : function(jsonStr) {
					$('#mydg').datagrid('loadData', $.parseJSON(jsonStr));
				}
			});
		}

		function clearSearchFrm() {
			$("#fmSearch").form('clear');
			doSearch();
		}
	</script>
</body>
</html>