<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<title>入库单</title>
<link rel="stylesheet" type="text/css"
	href="../style/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="../style/themes/icon.css" />
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/underscore-min.js" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="../js/common.js" type="text/javascript"></script>
<link href="../style/common.css" rel="stylesheet" type="text/css" />
<script src="../js/customcommon.js" type="text/javascript"></script>
<link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
</head>

<body>
	<div style="margin:0 5px;">
		<div>
			<table border="0"
				style="width: 900px; border-bottom: 1px solid #b8b8b8;"">
				<tr>
					<td class="titlebg"><span>配件管理</span></td>
					<td align="right"><s:if test="ruKuDan.txtStatus=='待提交审核' || ruKuDan.txtStatus=='单据退回'">
							<a onClick="saveRuKuDan();return false;"
								class="easyui-linkbutton" href="javascript:void(0)">保存入库单</a>
							<a
								onClick="updateRuKuDanStatus('<s:property value='ruKuDanGuid' />','审核中');return false;"
								class="easyui-linkbutton" href="javascript:void(0)">提交审核</a>
						</s:if> <s:elseif test="ruKuDan.txtStatus=='审核中'">
							<a
								onClick="updateRuKuDanStatus('<s:property value='ruKuDanGuid' />','审核完毕');return false;"
								class="easyui-linkbutton" href="javascript:void(0)">审核完毕</a>
							<a
								onClick="updateRuKuDanStatus('<s:property value='ruKuDanGuid' />','单据退回');return false;"
								class="easyui-linkbutton" href="javascript:void(0)">单据退回</a>
						</s:elseif></td>
				</tr>
			</table>
		</div>
		<div id="divMain">
			<form name="form1" method="post" id="form1">
				<input name="txtGuid" type="hidden" id="txtGuid" />
				<table border="0" width="900px">
					<tr>
						<td style="text-align: right;">单号:</td>
						<td><input name="txtBillNo" type="text" id="txtBillNo"
							class="easyui-textbox"
							data-options="editable:false,required:true" /></td>
						<td style="text-align: right;">入库日期:</td>
						<td><input name="txtRuKuDate" type="text" id="txtRuKuDate"
							class="easyui-datebox" data-options="required:true" /></td>
						<td style="text-align: right;"><span class="requireSpan">*&nbsp;</span>供应商:</td>
						<td><input name="txtSuppName" type="text" id="txtSuppName"
							class="easyui-combobox"
							data-options="editable:false,required:true,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/gongYingShangOption.action'" /></td>
						<td style="text-align: right;">经手人:</td>
						<td><input name="txtJingShouRen" type="text"
							id="txtJingShouRen" class="easyui-textbox"
							data-options="required:true" /></td>
					</tr>
					<tr>
						<td style="text-align: right;"><span class="requireSpan">*&nbsp;</span>出入标志:</td>
						<td><input name="ddlRuKuSort" type="text" id="ddlRuKuSort"
							class="easyui-textbox"
							data-options="editable:false,required:true" /></td>
						<td style="text-align: right;"><span class="requireSpan">*&nbsp;</span>所属仓库:</td>
						<td><input name="ddlCangKu" id="ddlCangKu"
							class="easyui-combobox"
							data-options="editable:false,required:true,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/peiJianChangKuOption.action'" /></td>
						<td style="text-align: right;"><span class="requireSpan">*&nbsp;</span>收票类型:</td>
						<td><input name="ddlFaPiaoType" id="ddlFaPiaoType"
							class="easyui-combobox"
							data-options="editable:false,required:true,valueField: 'label',textField: 'value',data: [{label: '收据',value: '收据'},{label: '增值税发票',value: '增值税发票'}]" /></td>
						<td style="text-align: right;"><span class="requireSpan">*&nbsp;</span>发票号:</td>
						<td><input name="txtFaPiaoHao" type="text" id="txtFaPiaoHao"
							class="easyui-textbox"
							data-options="required:true,validType:'maxLength[40]'" /></td>
					</tr>
					<tr>
						<td style="text-align: right;">备注:</td>
						<td colspan="5"><input name="txtRemarks" type="text"
							id="txtRemarks" class="easyui-textbox"
							data-options="validType:'maxLength[100]'" style="width: 100%;" /></td>
						<td style="text-align: right;">状态:</td>
						<td style="text-align: left;"><input name="txtStatus"
							type="text" id="txtStatus" class="easyui-textbox"
							data-options="editable:false" /></td>
					</tr>
				</table>
			</form>
		</div>

		<div id="divBtnInfo" style="margin-top:10px;">
            <table id="datagridWuLiao" class="easyui-datagrid"
				data-options="url:'queryRuKuDanWuLiao.action?ruKuDanGuid=<s:property value='ruKuDan.txtGuid' />',toolbar:'#tb',singleSelect:true,rownumbers:true,showFooter:true">
				<thead>
					<tr>
						<th field="txtWuLiaoCode" width="100" data-options="editor:{type:'textbox',options:{required:true}}">物料编码</th>
						<th field="txtWuLiaoName" width="200" data-options="editor:{type:'textbox',options:{required:true}}">物料名称</th>
						<th field="txtQty" width="60"
							data-options="align:'right',editor:{type:'numberbox',options:{required:true}}">数量</th>
						<th field="txtPrice" width="100" data-options="align:'right',editor:{type:'numberbox',options:{required:true,precision:2}}">入库价</th>
                        <s:if test="ruKuDan.txtStatus=='待提交审核' || ruKuDan.txtStatus=='单据退回'">
						<th field="action" width="150" align="center"
								formatter="formatAction">操作</th>
                         </s:if>
					</tr>
				</thead>
			</table>
            <s:if test="ruKuDan.txtStatus=='待提交审核' || ruKuDan.txtStatus=='单据退回'">
            <div id="tb" style="height: auto">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					data-options="iconCls:'icon-add',plain:true"
					onClick="appendRow()">添加物料</a>
			</div>
            </s:if>
		</div>

	</div>


	<script language="javascript" type="text/javascript">
		var myTable = $('#datagridWuLiao');
			
		$(function() {
			var formJson = eval('('
					+ '<s:property value="jsonData" escape="false"/>' + ')');
			initFormData(formJson);
		});

		function formatAction(value, row, index) {
			if (row.txtGongDuanName == "合计") {
				return "";
			} else {
				if (row.editing) {
					var s = '<a href="#" onclick="saverow(this);return false;">保存修改</a>&nbsp;&nbsp;&nbsp;&nbsp;';
					var c = '<a href="#" onclick="cancelrow(this);return false;">取消修改</a>';
					return s + c;
				} else {
					var e = '<a href="#" onclick="editrow(this);return false;">编辑本行</a>&nbsp;&nbsp;&nbsp;&nbsp;';
					var d = '<a href="#" onclick="deleterow(this);return false;">删除本行</a>';
					return e + d;
				}
			}
		}

		function getTargetRowIndex(target) {
			return myTable.datagrid('getEventTargetRowIndex', target);
		}
		
		function appendRow(){
			if (myTable.datagrid('hasEditingRow')) {
				$.messager.alert('提示', '请先处理尚未完成的编辑行信息');
			} else {
				myTable.datagrid('appendRow',{'txtRuKuDanGuid':'<s:property value="ruKuDan.txtGuid" />'});
				var editIndex = myTable.datagrid('getRows').length-1;
				myTable.datagrid('selectRow', editIndex).datagrid('beginEdit', editIndex);				
			}
		}

		function editrow(target) {
			if (myTable.datagrid('hasEditingRow')) {
				$.messager.alert('提示', '请先处理尚未完成的编辑行信息');
			} else {
				myTable.datagrid('beginEdit', getTargetRowIndex(target));
			}
		}

		function deleterow(target) {
			if (myTable.datagrid('hasEditingRow')) {
				$.messager.alert('提示', '请先处理尚未完成的编辑行信息');
			} else {
				$.messager.confirm('提示', '确定要删除本行信息吗?', function(r) {
					if (r) {
						var rowIndex = getTargetRowIndex(target);
						var editRow = myTable.datagrid('getRows')[rowIndex];
						$.post('deleteRuKuDanWuLiao.action', {
							"txtWuLiaoGuid" : editRow.txtWuLiaoGuid
						}, function(result) {
							if (result.errorMsg) {
								$.messager.alert('出错啦', result.errorMsg);
								myTable.datagrid('cancelEdit', rowIndex);
							} else {
								myTable.datagrid('reload');
							}
						}, 'json');
					}
				});
			}
		}

		function saverow(target) {
			var rowIndex = getTargetRowIndex(target);
			if (myTable.datagrid('validateRow', rowIndex)) {
				myTable.datagrid('endEdit', rowIndex);
				var editRow = myTable.datagrid('getRows')[rowIndex];
				$.post("saveRuKuDanWuLiao.action", {
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

		
	function refreshPage(ruKuDanGuid){
		location.href = 'rukudanDetail.action?ruKuDanGuid='+ ruKuDanGuid + '&d=' + new Date();
	}

		function printThis() {
			window
					.open("../storeOtherManage/storeOtherInsertPrint.aspx?billGuid=6ee9a462-5b98-43a0-8570-12a961de169e&d="
							+ new Date());
			return false;
		}
	</script>

</body>
</html>
