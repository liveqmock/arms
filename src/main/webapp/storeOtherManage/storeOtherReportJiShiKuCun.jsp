<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>维修出退库查询</title>
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
			<td class="titlebg"><span>物料管理</span> <span class="titleSpan">(即时库存管理)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel">
			<tr>
				<td>商品编码:</td>
				<td><input name="txtShopId" type="text" maxlength="20"
					id="txtShopId" style="width: 120px;" /></td>
				<td>商品名称:</td>
				<td><input name="txtShopName" type="text" maxlength="20"
					id="txtShopName" style="width: 120px;" /></td>			
					<td>仓库选择:</td>
					<td><select id="txtCangKu" name="txtCangKu"
						style="width: 138px;">
							<s:iterator value="storeLst">
								<option value="<s:property value='txtStoreName' />"><s:property
										value='txtStoreName' /></option>
							</s:iterator>
					</select></td>
					<td  style="text-align: center;"><a id="lnkSearch"
					class="easyui-linkbutton" href="javascript:doSearch()">查询项目</a></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryJiShiKuCun.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true,
						   showFooter:true">
		<thead>
			<tr>
				<th data-options="field:'txtShopId',width:150">商品编号</th>
				<th data-options="field:'txtShopName',width:150">商品名称</th>
				<th data-options="field:'txtCangKu',width:80">所属仓库</th>
				<th data-options="field:'txtShopNum',width:80">商品库存数量</th>
				<th data-options="field:'txtShouJia',width:80">售价</th>
				<th data-options="field:'txtXiaoShouZongE',width:80">销售总额</th>
				<th data-options="field:'txtChengBenDanJia',width:80">成本单价</th>
				<th data-options="field:'txtChengBenZongE',width:80">成本总额</th>
				<th data-options="field:'txtRuKuDate',width:100">最后一次入库时间</th>
				<th data-options="field:'txtChuKuDate',width:100">最后一次出库时间</th>
				<th data-options="field:'txtRemarks',width:100">备注</th>
			</tr>
		</thead>
	</table>
	<script type="text/javascript">
		var url;
		function doSearch() {
			$("#fmSearch").form('submit', {
				url : "queryJiShiKuCun.action",
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