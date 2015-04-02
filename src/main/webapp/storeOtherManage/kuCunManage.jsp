<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>即时库存</title>
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
<link rel="shortcut icon" href="../image/SyAuto_<s:property value='shop.companyFlag' />.ico" type="image/x-icon" />
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
			<td class="titlebg"><span>物料管理</span> <span class="titleSpan">(库存管理)</span>
			</td>
			<td align="right"><a href="#" class="easyui-linkbutton"
				data-options="plain:true,iconCls:'icon-search'"
				onclick="toggleSearchPanel();">查询</a> <a href="#"
				class="easyui-linkbutton"
				data-options="plain:true,iconCls:'icon-reload'"
				onclick="reloadCurentPage();">刷新</a></td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch" class="searchform">
		<table id="searchPanel" class="searchPanel">
			<tr>
				<td>名称及规格:</td>
				<td><input name="txtWuLiaoName" type="text"
					class="easyui-textbox" maxlength="20" id="txtWuLiaoName"
					style="width: 120px;" /></td>
				<td>物料编码:</td>
				<td><input name="txtWuLiaoCode" type="text"
					class="easyui-textbox" maxlength="20" id="txtWuLiaoCode"
					style="width: 120px;" /></td>
				<td>供应商:</td>
				<td><input name="txtSuppName" id="txtSuppName"
					class="easyui-combobox"
					data-options="editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/gongYingShangOption.action'"
					style="width: 250px;" /></td>
				<td style="text-align: center;"><a id="lnkSearch"
					class="easyui-linkbutton" href="javascript:doSearch()">查询</a></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryKuCun.action?saleAfterWeiXiuGuid=<s:property value='saleAfterWeiXiuGuid' />',
						   rownumbers:true,
                           <s:if test="action=='updateKuCun'">singleSelect:true,</s:if>
						   toolbar:'#tb',
						   pagination:true,
                           <s:if test="action=='addWuLiao'">onClickRow:editTakeQty,</s:if>
						   showFooter:true">
		<thead>
			<tr>
				<th width="200" data-options="field:'txtWuLiaoName'">名称及规格</th>
				<th width="150" data-options="field:'txtWuLiaoCode'">物料编码</th>
				<s:if test="action=='updateKuCun'">
					<th width="250" data-options="field:'txtSuppName'">供应商</th>
				</s:if>
				<th width="100" data-options="field:'txtQty'">库存数量</th>
				<s:if test="action=='updateKuCun'">
					<th width="100" data-options="field:'txtChengBenJia'">成本单价</th>
				</s:if>
				<th width="100" field="txtSalePrice"
					<s:if test="action=='updateKuCun'">data-options="align:'right',editor:{type:'numberbox',options:{required:true,precision:2}}"</s:if>>售价单价</th>
				<th width="150" data-options="field:'txtRemark'">备注</th>
				<s:if test="action=='addWuLiao'">
					<th width="100" field="txtTakeQty" data-options="align:'right',editor:{type:'numberbox',options:{required:true,min:0}}">需求数量</th>
				</s:if>
				<s:if test="action=='updateKuCun'">
					<th field="action" width="200" align="center"
						formatter="formatAction">操作</th>
				</s:if>
			</tr>
		</thead>
	</table>
	<s:if test="action=='addWuLiao'">
		<div id="tb" style="height: auto">
			<a href="javascript:void(0)" class="easyui-linkbutton"
				data-options="iconCls:'icon-add',plain:true"
				onClick="addCheckedItems()">添加选中物料</a>
		</div>
	</s:if>
	<script type="text/javascript">
		var myTable = $('#mydg');

		function doSearch() {
			$("#fmSearch")
					.form(
							'submit',
							{
								url : "queryKuCun.action?saleAfterWeiXiuGuid=<s:property value='saleAfterWeiXiuGuid' />",
								success : function(jsonStr) {
									$('#mydg').datagrid('loadData',
											$.parseJSON(jsonStr));
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

		function addCheckedItems() {
			var checkedRows = myTable.datagrid('getChecked');
			if (checkedRows.length == 0) {
				$.messager.alert('提示', '请先选中要插入的维修项目');
			} else {
				var allRows = myTable.datagrid('getRows');
				var checkedIds = _.pluck(checkedRows, 'txtKuCunGuid');
				_.each(allRows, function(row, rowIndex) {
					if(_.contains(checkedIds, row.txtKuCunGuid)){
						myTable.datagrid('endEdit', rowIndex);
					}
				});

				var isTakeQtyValid = _.all(checkedRows, function(row) {
					return row.txtTakeQty!='' && row.txtTakeQty > 0
							&& row.txtTakeQty <= row.txtQty;
				});				
				if (isTakeQtyValid) {
					$.messager.confirm('提示', '选中物料确认后立刻出库，<span  style="color: blue; font-weight: bold;">请确认物料名称及规格和需求数量是否正确</span>。确定要新增选中物料吗?', function(r) {
						if (r) {
							$.post("<s:property value='basePath' />/saleAfterManage/addGongDanWeiXiuWuLiaoFromKuCun.action?d=" + new Date(), {
								"saleAfterWeiXiuGuid" : "<s:property value='saleAfterWeiXiuGuid' />",
								"easyUiJSonData" : JsonToString(checkedRows)
							}, function(result) {
								if (result.errorMsg) {
									$.messager.alert('出错啦', result.errorMsg);
									_.each(allRows, function(row, rowIndex) {
										if(_.contains(checkedIds, row.txtKuCunGuid)){
											myTable.datagrid('beginEdit', rowIndex);
										}
									});
								} else {
									winThisClose();
								}
							}, "json");
						}else{
							_.each(allRows, function(row, rowIndex) {
								if(_.contains(checkedIds, row.txtKuCunGuid)){
									myTable.datagrid('beginEdit', rowIndex);
								}
							});
						}
					});					
				} else {
					_.each(allRows, function(row, rowIndex) {
						if(_.contains(checkedIds, row.txtKuCunGuid)){
							myTable.datagrid('beginEdit', rowIndex);
						}
					});
					$.messager.alert('提示', '所有选中物料的需求数量必须大于0且小于等于库存数量');
				}
			}
		}

		function editTakeQty(rowIndex, row) {
			if (typeof (row.editing) == "undefined" || row.editing == false) {
				myTable.datagrid('beginEdit', rowIndex);
			} else {
				myTable.datagrid('cancelEdit', rowIndex);
			}
		}

		function endEditAllRows() {
			var rows = myTable.datagrid('getRows');
			_.each(rows, function(row, rowIndex) {
				myTable.datagrid('endEdit', rowIndex);
			});
		}
	</script>
</body>
</html>