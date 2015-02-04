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
				style="width: 960px; border-bottom: 1px solid #b8b8b8;"">
				<tr>
					<td class="titlebg"><span>配件管理</span>(入库单)</td>
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
				<table border="0" width="960px">
					<tr>
						<td style="text-align: right;">入库单号:</td>
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
							maxlength="100" id="txtRemarks" class="easyui-textbox"
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
				data-options="url:'queryGongDanWeiXiuWuLiao.action?saleAfterWeiXiuGuid=<s:property value='saleAfterWeiXiuGuid' />',toolbar:'#tb',singleSelect:true,rownumbers:true,showFooter:true">
				<thead>
					<tr>
						<th field="txtWuLiaoId" width="100">商品编号</th>
						<th field="txtWuLiaoName" width="200">商品名称</th>
						<th field="txtRegQty" width="60"
							data-options="align:'right',editor:{type:'numberbox',options:{required: true,missingMessage:'所需数量必须填写'}}">所需数量</th>
						<th field="txtTakeQty" width="60"
							data-options="align:'right',editor:{type:'numberbox',options:{required: true,missingMessage:'领用数量必须填写'}}">领用数量</th>
						<th field="txtReturnQty" width="60"
							data-options="align:'right',editor:{type:'numberbox',options:{required: true,missingMessage:'退货数量必须填写'}}">退货数量</th>
						<th field="txtPrice" width="100">单价</th>
						<th field="txtPaid" width="100">实际费用</th>
						<th field="ddlZhangTao" width="100"
							data-options="editor:{type:'combobox',options:{editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/zhangTaoOption.action'}}">帐套</th>
							<th field="action" width="150" align="center"
								formatter="formatAction">操作</th>
					</tr>
				</thead>
			</table><div id="tb" style="height: auto">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					data-options="iconCls:'icon-add',plain:true"
					onClick="addItemList2()">添加物料</a>
			</div>
		</div>

	</div>


	<script language="javascript" type="text/javascript">	
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
