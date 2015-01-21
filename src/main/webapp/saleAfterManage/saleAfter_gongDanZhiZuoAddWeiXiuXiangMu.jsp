<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>工单制作新增维修项目</title>

<link rel="stylesheet" type="text/css"
	href="../style/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="../style/themes/icon.css" />
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="../js/common.js" type="text/javascript"></script>
<link href="../style/common.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
</head>
<base target="_self" />
<body>
	<form name="form1" method="post" id="form1">
		<div style="margin-top: 5px; margin-left: 5px">
			<table border="0"
				style="width: 700px; border-bottom: 1px solid #b8b8b8;">
				<tr>
					<td class="titlebg"><span>售后管理</span> <span class="titleSpan">(维修项目新增)</span>
					</td>
					<td align="right"></td>
				</tr>
			</table>

			<table border="0">
				<tr>
					<td>项目编号:</td>
					<td><input name="txtWeiXiuXiangMuBianHao" type="text"
						maxlength="30" id="txtXiangMuBianHao" style="width: 150px;" /></td>
					<td>维修工段:</td>
					<td><select name="ddlSuoShuGongDuan" id="ddlWeiXiuGongDuan"
						style="width: 150px">
							<option value="机电">机电</option>
							<option value="保养">保养</option>
							<option value="钣金">钣金</option>
							<option value="美容">美容</option>
							<option value="喷漆">喷漆</option>
							<option selected="selected" value=""></option>

					</select></td>
					<td>维修内容:</td>
					<td><input name="txtWeiXiuNeiRong" type="text"
						id="txtWeiXiuNeiRong" style="width: 160px;" /></td>

					<td><a id="lnkSearch" class="easyui-linkbutton"
						href="javascript:searchWeiXiuXiangMu()">查询</a></td>
				</tr>
			</table>
			<table id="mydg" width="730" class="easyui-datagrid"
				data-options="url:'queryWeiXiuXiangMu.action',rownumbers:true,toolbar:'#tb',pagination:true">
				<thead>
					<tr>
						<th field="ck" checkbox="true" width="20"></th>
						<th field="txtWeiXiuXiangMuBianHao" width="100">维修编号</th>
						<th field="ddlSuoShuGongDuan" width="100">工段</th>
						<th field="txtGongShi" width="100">工时</th>
						<th field="txtWeiXiuNeiRong" width="250">维修内容</th>
					</tr>
				</thead>
			</table>
			<div id="tb" style="height: auto">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					data-options="iconCls:'icon-add',plain:true"
					onClick="addCheckedItems()">添加选中维修项目</a>
			</div>
		</div>
	</form>

	<script language="javascript" type="text/javascript">
		function searchWeiXiuXiangMu() {
			$("#form1").form('submit', {
				url : "queryWeiXiuXiangMu.action",
				success : function(jsonStr) {
					$('#mydg').datagrid('loadData', $.parseJSON(jsonStr));
				}
			});
		}

		function addCheckedItems() {
			var checkedRows = $('#mydg').datagrid('getChecked');
			if (checkedRows.length == 0) {
				$.messager.alert('提示', '请先选中要插入的维修项目');
			} else {
				$.post("addGongDanWeiXiuXiangMu.action?d=" + new Date(), {
					"saleAfterGuid" : '<s:property value="saleAfterGuid" />',
					"easyUiJSonData" : JSON.stringify(checkedRows)
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