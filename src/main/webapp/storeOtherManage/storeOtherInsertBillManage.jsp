<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>商品采购入库单管理</title>
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
			<td class="titlebg"><span>配件管理</span> <span class="titleSpan">(采购入库单管理)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel">
			<tr>
				<td>入库时间:</td>
				<td><input name="txtRuKuDate" type="text" id="txtRuKuDate"
					class="inputCss easyui-datebox" style="width: 100px;" /></td>
				<td>至</td>
				<td><input name="txtRuKuDateEnd" type="text"
					id="txtRuKuDateEnd" class="inputCss easyui-datebox"
					style="width: 100px;" /></td>
				<td>单号:</td>
				<td><input name="txtBillNo" type="text" maxlength="20"
					id="txtBillNo" style="width: 120px;" /></td>
				<td>供应商:</td>
				<td><input name="txtSuppName" type="text" maxlength="20"
					id="txtSuppName" style="width: 120px;" /></td>
			</tr>
			<tr>
				<td>单据状态:</td>
				<td><select name="ddlStatus" id="ddlStatus"
					style="width: 100px;">
						<option selected="selected" value="">全部</option>
						<option value="待提交审核">待提交审核</option>
						<option value="审核中">审核中</option>
						<option value="审核完毕">审核完毕</option>
						<option value="单据退回处理">单据退回处理</option>
						<option value="流程被删除">流程被删除</option>
				</select></td>
				<td colspan="3" style="text-align: center;"><a id="lnkSearch"
					class="easyui-linkbutton" href="javascript:doSearch()">查询项目</a></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryRuKuDan.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
		<thead>
			<tr>
				<th data-options="field:'txtBillNo',width:150">入库单号</th>
				<th data-options="field:'txtRuKuDate',width:150">入库日期</th>
				<th data-options="field:'txtSuppName',width:150">供应商名称</th>
				<th data-options="field:'txtJingShouRen',width:80">经手人</th>
				<th data-options="field:'ddlCangKu',width:150">所属仓库</th>
				<th data-options="field:'txtFaPiaoHao',width:150">发票号</th>
				<th data-options="field:'ddlRuKuSort',width:80">入库类型</th>
				<th data-options="field:'ddlFaPiaoType',width:80">发票类型</th>
				<th data-options="field:'txtRemarks',width:80">单据备注</th>
				<th data-options="field:'ddlStatus',width:80">审核状态</th>
			</tr>
		</thead>
	</table>
	<script type="text/javascript">
		var url;
		function doSearch() {
			$("#fmSearch").form('submit', {
				url : "queryRuKuDan.action",
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