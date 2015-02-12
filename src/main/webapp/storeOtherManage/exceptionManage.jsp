<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<title>例外管理查询</title>
<link rel="stylesheet" type="text/css"
	href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" />
<link rel="stylesheet" type="text/css"
	href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" />
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165"
	type="text/javascript"></script>
<link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165"
	rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
</head>
<body>
	<table border="0" style="width: 100%;">
		<tr>
			<td class="titlebg"><span>例外管理查询</span> <span class="titleSpan">(例外管理)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel" style="display: block;">
			<tr>
				<td>出入日期:</td>
				<td><input name="liWaiDate" type="text" id="liWaiDate"
					class="inputCss easyui-datebox" style="width: 100px;" /></td>
				<td>至</td>
				<td><input name="liWaiDateEnd" type="text"
					id="liWaiDateEnd" class="inputCss easyui-datebox"
					style="width: 100px;" /></td>
				<td>单号:</td>
				<td><input name="billNo" type="text" maxlength="20"
					id="billNo" style="width: 120px;" /></td>
				<td>单据类型:</td>
				<td><input name="billType" type="text" maxlength="20"
					id="billType" style="width: 120px;" /></td>
				<td>备注:</td>
				<td><input name="beiZhu" type="text" maxlength="20"
					id="beiZhu" style="width: 120px;" /></td>
				<td colspan="3" style="text-align: left;"><a id="lnkSearch"
					class="easyui-linkbutton" href="javascript:doSearch()">查询</a></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
				<tr>
					<td>状态:</td>
					<td><select name="liWaiStatus" id="liWaiStatus"
						style="width: 100px;">
							<option selected="selected" value="">全部</option>
							<option value="准备单据">准备单据</option>
							<option value="审核中">审核中</option>
							<option value="审核完毕">审核完毕</option>
							<option value="单据退回处理">单据退回处理</option>
							<option value="流程被删除">流程被删除</option>
					</select></td>
				</tr>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'ExceptionManageQuery.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
		<thead>
			<tr>
				<th data-options="field:'billNo',width:150" sortable="true">单号</th>
				<th data-options="field:'billType',width:150" sortable="true">单据类型</th>
				<th data-options="field:'liWaiDate',width:150" sortable="true">日期</th>
				<th data-options="field:'cangKuName',width:150">仓库名</th>
				<th data-options="field:'beiZhu',width:120" sortable="true">备注</th>
				<th data-options="field:'shuLiang',width:120" sortable="true">数量</th>
				<th data-options="field:'jinE',width:120" sortable="true">金额</th>
				<th data-options="field:'liWaiStatus',width:120">审核状态</th>
				<th data-options="field:'shenHeRen',width:150">审核人</th>
			</tr>
		</thead>
	</table>

	<script type="text/javascript">
		var url;
		function doSearch() {
			$("#fmSearch").form('submit', {
				url : "ExceptionManageQuery.action",
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