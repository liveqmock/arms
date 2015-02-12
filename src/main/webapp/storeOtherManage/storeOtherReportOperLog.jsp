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
	<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel">
			<tr>
				<td>操作日期:</td>
				<td><input name="operDate" type="text" id="operDate"
					class="inputCss easyui-datebox" style="width: 100px;" /></td>
				<td>结束日期:</td>
				<td><input name="operDateEnd" type="text" id="operDateEnd"
					class="inputCss easyui-datebox" style="width: 100px;" /></td>
				<td>商品编码:</td>
				<td><input name="shopId" type="text" maxlength="15"
					id="shopId" style="width: 100px;" /></td>
				<td>商品名称:</td>
				<td><input name="shopName" type="text" maxlength="15"
					id="shopName" style="width: 100px;" /></td>
				</tr>
				<tr>
				<td>仓库选择:</td>
				<td><select id="cangKu" name="cangKu"
					style="width: 138px;">
						<s:iterator value="storeLst">
							<option value="<s:property value='txtStoreName' />"><s:property
									value='txtStoreName' /></option>
						</s:iterator>
				</select></td>
				<td>操作类型:</td>
				<td><input name="billName" type="text" id="billName"
					style="width: 100px;" /></td>
				<td style="text-align: center;"><a id="lnkSearch"
					class="easyui-linkbutton" href="javascript:doSearch()">查询项目</a></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryShopOperLog.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
		<thead>
			<tr>
				<th data-options="field:'shopId',width:150">商品编号</th>
				<th data-options="field:'shopName',width:150">商品名称</th>
				<th data-options="field:'cangKu',width:80">所属仓库</th>
				<th data-options="field:'qty',width:80">商品库存数量</th>
				<th data-options="field:'salePrice',width:80">售价</th>
				<th data-options="field:'salePriceAll',width:80">销售总额</th>
				<th data-options="field:'chengBenJia',width:80">成本单价</th>
				<th data-options="field:'chengBenJiaAll',width:80">成本总额</th>
				<th data-options="field:'operDate',width:100">操作日期</th>
				<th data-options="field:'billNo',width:100">业务单号</th>
				<th data-options="field:'billName',width:100">业务类别</th>
			</tr>
		</thead>
	</table>
	<script type="text/javascript">
		var url;
		function doSearch() {
			$("#fmSearch").form('submit', {
				url : "queryShopOperLog.action",
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