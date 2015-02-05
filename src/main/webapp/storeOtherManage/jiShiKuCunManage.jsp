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
			<td class="titlebg"><span>配件管理</span> <span class="titleSpan">(即时库存管理)</span>
			</td><td align="right">
		      <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" onclick="toggleSearchPanel();">查询</a>
		      <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" onclick="reloadCurentPage();">刷新</a>
          </td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel">
			<tr>
				<td>物料编码:</td>
				<td><input name="txtWuLiaoCode" type="text" class="easyui-textbox" maxlength="20"
					id="txtWuLiaoCode" style="width: 120px;" /></td>
				<td>物料名称:</td>
				<td><input name="txtWuLiaoName" type="text" class="easyui-textbox" maxlength="20"
					id="txtWuLiaoName" style="width: 120px;" /></td>			
					<td>所属仓库:</td>
					<td><input name="ddlCangKu" id="ddlCangKu"
							class="easyui-combobox"
							data-options="editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/peiJianChangKuOption.action'" /></td>
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
				<th width="150" data-options="field:'txtWuLiaoCode'">物料编号</th>
				<th width="150" data-options="field:'txtWuLiaoName'">物料名称</th>
				<th width="100" data-options="field:'ddlCangKu'">所属仓库</th>
				<th width="100" data-options="field:'txtQty'">物料库存数量</th>
				<th width="100" data-options="field:'txtChengBenJia'">成本单价</th>
				<th width="100" data-options="field:'txtSalePrice',align:'right',editor:{type:'numberbox',options:{required:true,precision:2}}">售价单价</th>
                <th field="action" width="150" align="center"
								formatter="formatAction">操作</th>
			</tr>
		</thead>
	</table>
	<script type="text/javascript">
		var myTable = $('#mydg');
		
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

		function formatAction(value, row, index) {
			if (row.editing) {
				var s = '<a href="#" onclick="saverow(this);return false;">保存修改</a>&nbsp;&nbsp;&nbsp;&nbsp;';
				var c = '<a href="#" onclick="cancelrow(this);return false;">取消修改</a>';
				return s + c;
			} else {
				var e = '<a href="#" onclick="editrow(this);return false;">修改销售价</a>';
				return e;
			}
		}

		function getTargetRowIndex(target) {
			return myTable.datagrid('getEventTargetRowIndex', target);
		}

		function editrow(target) {
			if (myTable.datagrid('hasEditingRow')) {
				$.messager.alert('提示', '请先处理尚未完成的编辑行信息');
			} else {
				myTable.datagrid('beginEdit', getTargetRowIndex(target));
			}
		}

		function saverow(target) {
			var rowIndex = getTargetRowIndex(target);
			if (myTable.datagrid('validateRow', rowIndex)) {
				myTable.datagrid('endEdit', rowIndex);
				var editRow = myTable.datagrid('getRows')[rowIndex];
				$.post("updateJiShiKuCun.action", {
					"rowJsonData" : JsonToString(editRow)
				}, function(result) {
					if (result.errorMsg) {
						$.messager.alert('出错啦', result.errorMsg);
						myTable.datagrid('cancelEdit', rowIndex);
					} else {
						myTable.datagrid('reload');
					}
				}, 'json');
			} else {
				$.messager.alert('提示', '请先按照提示填写行信息');
			}
		}

		function cancelrow(target) {
			myTable.datagrid('cancelEdit', getTargetRowIndex(target));
		}

	</script>
</body>
</html>