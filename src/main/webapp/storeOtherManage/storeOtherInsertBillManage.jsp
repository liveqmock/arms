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
        <table border="0" style="width:100%;">
        <tr>
      <td class="titlebg"><span>物料管理</span></td><td align="right">
              <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"  onclick="openRuKuDan('','1');">采购入库单</a>
		      <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" onclick="toggleSearchPanel();">查询</a>
		      <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" onclick="reloadCurentPage();">刷新</a>
          </td></tr>
         </table> 
	<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel">
			<tr>
				<td>出入库时间:</td>
				<td><input name="txtRuKuDateBegin" type="text" id="txtRuKuDateBegin"
					class="easyui-datebox" style="width: 100px;" /></td>
				<td>至</td>
				<td><input name="txtRuKuDateEnd" type="text"
					id="txtRuKuDateEnd" class="easyui-datebox"
					style="width: 100px;" /></td>
				<td>单号:</td>
				<td><input name="txtBillNo" type="text" class="easyui-textbox" maxlength="20"
					id="txtBillNo" style="width: 120px;" /></td>
				<td>供应商:</td>
				<td><input name="txtSuppName" type="text" id="txtSuppName"
							class="easyui-combobox"
							data-options="editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/gongYingShangOption.action'" style="width: 200px;" /></td>
              </tr>
              <tr>
				<td>审核状态:</td>
				<td><input name="txtStatus" id="txtStatus"
							class="easyui-combobox"
							data-options="editable:false,valueField: 'label',textField: 'value',data: [{label: '准备单据',value: '准备单据'},{label: '提交审核',value: '提交审核'},{label: '审核完毕',value: '审核完毕'}]" style="width: 100px;"/></td>
				<td colspan="6" style="text-align: center;"><a id="lnkSearch"
					class="easyui-linkbutton" href="javascript:doSearch()">查询</a>
                    <a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryRuKuDanWuLiao.action',
						   rownumbers:true,
						   <s:if test="action=='updateWuLiao'">singleSelect:true,</s:if>
						   toolbar:'#toolbar',
						   pagination:true,
         				   onDblClickRow:showRuKuDan">
		<thead>
			<tr>
                <s:if test="action=='addWuLiao'">
				<th field="ck" checkbox="true" width="20"></th>
				</s:if>
                <s:if test="action=='updateCaiGou'">
                <th width="80" data-options="field:'ddlRuKuSort'">类型</th>  
				<th width="150" data-options="field:'txtBillNo'">单号</th>
				<th width="80" data-options="field:'txtJingShouRen'">采购人</th>
				<th width="80" data-options="field:'txtRemarks'">备注</th>
				</s:if>
				<th width="150" data-options="field:'txtRuKuDate'">日期</th>
				<th width="150" data-options="field:'txtSuppName'">供应商</th>
				<th width="80" data-options="field:'txtWuLiaoCode'">物料编码</th>
				<th width="200" data-options="field:'txtWuLiaoName'">名称及规格</th>
				<th width="80" data-options="field:'txtQty'">数量</th>
				<th width="80" data-options="field:'txtPrice'">单价</th>
                <s:if test="action=='updateCaiGou'">
				<th width="80" data-options="field:'txtStatus'">审核状态</th>
				<th width="80" data-options="field:'txtShenHeRen'">审核人</th>
				<th width="80" data-options="field:'txtShenHeShiJian'">审核时间</th>
				</s:if>
			</tr>
		</thead>
	</table>
     <s:if test="action=='addWuLiao'">
    <div id="tb" style="height: auto">
        <a href="javascript:void(0)" class="easyui-linkbutton"
            data-options="iconCls:'icon-add',plain:true"
            onClick="addCheckedCaiGouWuLiao()">添加选中物料</a>
    </div>
    </s:if>
	<script type="text/javascript">
		var url;
		function doSearch() {
			$("#fmSearch").form('submit', {
				url : "queryRuKuDanWuLiao.action",
				success : function(jsonStr) {
					$('#mydg').datagrid('loadData', $.parseJSON(jsonStr));
				}
			});
		}

		function clearSearchFrm() {
			$("#fmSearch").form('clear');
			doSearch();
		}
		
		function showRuKuDan(index) {
            var ruKuDanGuid = $('#mydg').datagrid('getRows')[index]['txtRuKuDanGuid'];
			openRuKuDan(ruKuDanGuid, '');
		}
		
		 //新增入库单
        function openRuKuDan(ruKuDanGuid, flag) {			
			var sURL = 'rukudanDetail.action?ruKuDanGuid='+ ruKuDanGuid + '&flag='+ flag + '&d=' + new Date()
			var sFeatures = "dialogWidth:960px;dialogHeight:500px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
			window.showModalDialog(sURL, window, sFeatures);
			$('#mydg').datagrid('reload');
        }

		function addCheckedCaiGouWuLiao() {
			var checkedRows = $('#mydg').datagrid('getChecked');
			if (checkedRows.length == 0) {
				$.messager.alert('提示', '请先选中要插入的物料');
			} else {
				$.post("<s:property value='basePath' />/saleAfterManage/addGongDanWeiXiuWuLiaoFromCaiGou.action?d=" + new Date(), {
					"saleAfterWeiXiuGuid" : "<s:property value='saleAfterWeiXiuGuid' />",
					"easyUiJSonData" : JsonToString(checkedRows)
				}, function(result) {
					if (result.errorMsg) {
						$.messager.alert('出错啦', result.errorMsg);
					} else {
						winThisClose();
					}
				}, "json");
			}
		}
	</script>
</body>
</html>