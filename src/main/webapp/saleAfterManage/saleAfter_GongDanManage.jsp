<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><s:if test="actionName=='saleAfterGongDanManage'">工单管理</s:if><s:elseif test="actionName=='clientReviewManage'">客户管理</s:elseif></title>
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
<link rel="shortcut icon" href="../image/SyAuto_<s:property value='shop.companyFlag' />.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
</head>
<body>
	<div class="title">
		<table border="0" style="width: 100%;">
			<tr>
				<td class="titlebg"><s:if test="actionName=='saleAfterGongDanManage'"><span>维修接待</span> <span class="titleSpan">(工单管理)</span></s:if><s:elseif test="actionName=='clientReviewManage'"><span>客户管理</span> <span class="titleSpan">(客户回访)</span></s:elseif>
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
	<div id="searchPanel" style="display: block;">
		<form name="fmSearch" method="post"
			action="saleAfterGongDanManage.action" id="fmSearch" class="searchform">
			<table border='0' id="searchTb">
				<tr>
					<td nowrap>入厂时间:</td>
					<td><input name="txtRuChangDate1" type="text"
						id="txtRuChangDate1" class="easyui-datebox" style="width: 120px;" /></td>
					<td nowrap><input name="txtRuChangDate2" type="text"
						id="txtRuChangDate2" class="easyui-datebox" style="width: 120px;" /></td>
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
						id="txtChuChangDate1" class="easyui-datebox" style="width: 120px;" /></td>
					<td><input name="txtChuChangDate2" type="text"
						id="txtChuChangDate2" class="easyui-datebox" style="width: 120px;" /></td>
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
						href="javascript:doSearch()">查询</a>&nbsp;&nbsp;&nbsp;<a
					id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>

				</tr>
			</table>
		</form>
	</div>
	<div class="region">
		<table id="mydg" class="easyui-datagrid"
			data-options="url:'<s:if test="actionName=='saleAfterGongDanManage'">saleAfterGongDanSearch.action</s:if><s:elseif test="actionName=='clientReviewManage'">clientReviewSearch.action</s:elseif>',rownumbers:true,singleSelect:true,autoRowHeight:false,pagination:true,onDblClickRow:showGongDan">
			<thead>
				<tr>
                    <s:if test="actionName=='saleAfterGongDanManage'">
					<th width="20" data-options="field:'txtGongDanId',checkbox:true"></th>
                    </s:if>
					<th width="150" data-options="field:'txtBillNo'" sortable="true">工单号</th>
                    <s:if test="actionName=='saleAfterGongDanManage'">
					<th width="100" data-options="field:'txtGongDanStatus'">当前状态</th>
                    </s:if>
					<th width="100" data-options="field:'txtCustSort'">客户类别</th>
					<th width="100" data-options="field:'txtFuWuGuWen'">服务顾问</th>
					<th width="100" data-options="field:'txtChePaiHao'">车牌号</th>
					<th width="150" data-options="field:'txtCheXiName'">车系名称</th>
					<th width="100" data-options="field:'txtCheZhuName'">车主名称</th>
					<th width="120" data-options="field:'txtCheZhuTel'">车主电话</th>
					<th width="180" data-options="field:'txtRuChangDate'">入厂时间</th>
                    <s:if test="actionName=='saleAfterGongDanManage'">
					<th width="180" data-options="field:'txtYuChuChangDate'">预出厂时间</th>
                    </s:if>
					<th width="100" data-options="field:'txtChuChangDate'">出厂时间</th>
                    <s:if test="actionName=='clientReviewManage'">
					<th width="150" data-options="field:'ddlReviewStatus',align:'center',editor:{type:'radiobox',options:{defaultValue:'未回访',values:['已回访','未回访']}}">回访状态</th>
					<th width="200" data-options="field:'txtReviewRemark',editor:{type:'textbox'}">回访备注</th>
                    </s:if>
                    <th width="150" field="action" align="center" formatter="formatAction">操作</th>
				</tr>
			</thead>
		</table>
	</div>


	<script language="javascript" type="text/javascript">		
		function setupDatagrid(jsonStr) {
			jsonStrData = $.parseJSON(jsonStr);
			$('#mydg').datagrid('loadData', jsonStrData);
		}

		function doSearch() {
			var url = "<s:if test="actionName=='saleAfterGongDanManage'">saleAfterGongDanSearch.action</s:if><s:elseif test="actionName=='clientReviewManage'">clientReviewSearch.action</s:elseif>";
			$("#fmSearch").form('submit', {
				url : url,
				success : function(jsonStr) {
					setupDatagrid(jsonStr);
				}
			});
		}
		function clearSearchFrm() {
			$("#fmSearch").form('clear');
			doSearch();
		}

		function showGongDan(index) {
			var thisGuid = $('#mydg').datagrid('getRows')[index]['txtGongDanId'];
			if (thisGuid != "" && thisGuid != undefined) {
				<s:if test="actionName=='saleAfterGongDanManage'">
					var url = 'saleAfterIndex.action?saleAfterWeiXiuGuid=' + thisGuid + '&d=' + new Date();
				</s:if>
				<s:elseif test="actionName=='clientReviewManage'">
					var url = 'weiXiuLiShiDetail.action?saleAfterWeiXiuGuid=' + thisGuid + '&d=' + new Date();
				</s:elseif>
				
				window.open(url);	//tab页
			}
		}
		
		var myTable = $('#mydg');
		function formatAction(value, row, index) {			
			<s:if test="actionName=='saleAfterGongDanManage'">
			return '<a href="javascript:void(0)" onclick="deleteItem(this)">删除工单</a>';
			</s:if>
			<s:elseif test="actionName=='clientReviewManage'">
			if (row.editing) {
				var s = '<a href="#" onclick="saverow(this);return false;">保存修改</a>&nbsp;&nbsp;&nbsp;&nbsp;';
				var c = '<a href="#" onclick="cancelrow(this);return false;">取消修改</a>';
				return s + c;
			} else {
				var e = '<a href="#" onclick="editrow(this);return false;">编辑本行</a>&nbsp;&nbsp;&nbsp;&nbsp;';
				return e;
			}
			</s:elseif>
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
				var url = "updateGongDanReviewStatus.action";
				$.post(url, {
					"easyUiJSonData" : JsonToString(editRow)
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
		
		function deleteItem(clickevent) {
			var row = myTable.datagrid('getEventTargetRow', clickevent);
			if (row) {
				$.messager.confirm('确认', '确定要删除选中工单吗?', function(r) {
					if (r) {
						$.post('deleteGongDan.action', {
							"saleAfterWeiXiuGuid" : row['txtGongDanId']
						}, function(result) {
							if (result.errorMsg) {
								$.messager.alert('出错啦', result.errorMsg);
							} else {
								doSearch();
							}
						}, 'json');
					}
				});
			}
		}
	</script>
</body>
</html>

