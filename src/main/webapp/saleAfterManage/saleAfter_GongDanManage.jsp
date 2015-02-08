<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>售后管理</title>
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
<script src="../js/common.js" type="text/javascript"></script>
<link href="../style/common.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
</head>
<body>
	<form name="form1" method="post" action="saleAfterGongDanManage.action"
		id="form1">

		<div class="allRegion">
			<div class="title">
				<table border="0" style="width: 100%;">
					<tr>
						<td class="titlebg"><span>售后管理</span> <span class="titleSpan">(接待中)</span>
						</td>
						<td align="right"><a href="#" class="easyui-linkbutton"
							data-options="plain:true,iconCls:'icon-search'"
							onclick="searchClick('1');">查询</a></td>
					</tr>
				</table>
			</div>

			<div class="region">
				<div class="region">
					<table id="dg" class="easyui-datagrid"
						data-options="rownumbers:true,singleSelect:true,autoRowHeight:false,pagination:true,pageList:[10,15,20,30,40,50,100],pageNumber:1,pageSize:15,onDblClickRow:showGongDan">
						<thead>
							<tr>
								<th width="20" data-options="field:'txtGongDanId',checkbox:true"></th>
								<th width="100" data-options="field:'txtBillNo'" sortable="true">工单号</th>
								<th width="100" data-options="field:'txtXieYiBillNo1'">协议单号</th>
								<th width="100" data-options="field:'txtGongDanStatus'">当前状态</th>
								<th width="100" data-options="field:'ddlWeiXiuSort'">维修类型</th>
								<th width="100" data-options="field:'txtFuWuUserId'">服务顾问</th>
								<th width="100" data-options="field:'txtChePaiHao'">车牌号</th>
								<th width="100" data-options="field:'txtCheXiName'">车系名称</th>
								<th width="100" data-options="field:'txtCheZhuName'">车主名称</th>
								<th width="100" data-options="field:'txtCheZhuTel'">车主电话</th>
								<th width="100" data-options="field:'txtRuChangDate'">入厂时间</th>
								<th width="100" data-options="field:'txtYuChuChangDate'">预出厂时间</th>
								<th width="100" data-options="field:'txtJieSuanDate'">结算时间</th>
								<th width="100" data-options="field:'txtChuChangDate'">出厂时间</th>
							</tr>
						</thead>
					</table>
				</div>
			</div>

			<!--查询条件 start-->
			<div id="search" style="display: none; overflow: scroll;">
				<table border='0' id="searchTb">
					<tr>
						<td nowrap>入厂时间:</td>
						<td><input name="txtRuChangDate1" type="text"
							id="txtRuChangDate1" class="easyui-datebox" /></td>
						<td nowrap><input name="txtRuChangDate2" type="text"
							id="txtRuChangDate2" class="easyui-datebox" /></td>
						<td nowrap>工单号:</td>
						<td><input name="txtBillNo" type="text" maxlength="30"
							id="txtBillNo" /></td>
						<td nowrap>协议单号:</td>
						<td><input name="txtXieYiBillNo" type="text" maxlength="60"
							id="txtXieYiBillNo" /></td>
						<td nowrap>车架号:</td>
						<td><input name="txtVin" type="text" maxlength="30"
							id="txtVin" /></td>
						<td nowrap>工单状态:</td>
						<td><select name="txtGongDanStatus" id="txtGongDanStatus">
								<option selected="selected" value=""></option>
								<option value="已出库">已出库</option>
								<option value="财务收款中">财务收款中</option>
								<option value="已竣工">已竣工</option>
								<option value="等待派工">等待派工</option>
								<option value="维修中">维修中</option>
								<option value="接待中">接待中</option>

						</select></td>
						<td nowrap>维修类别:</td>
						<td><select name="ddlWeiXiuSort" id="ddlWeiXiuSort">
								<option value="一般维修">一般维修</option>
								<option value="年审">年审</option>
								<option value="首保">首保</option>
								<option value="定保">定保</option>
								<option value="大客户">大客户</option>
								<option value="厂家保修">厂家保修</option>
								<option value="保险">保险</option>
								<option value="新车检查">新车检查</option>
								<option value="免检">免检</option>
								<option value="返修">返修</option>
								<option selected="selected" value=""></option>

						</select></td>
					</tr>
					<tr>
						<td nowrap>出厂时间:</td>
						<td><input name="txtChuChangDate1" type="text"
							id="txtChuChangDate1" class="easyui-datebox" /></td>
						<td><input name="txtChuChangDate2" type="text"
							id="txtChuChangDate2" class="easyui-datebox" /></td>
						<td nowrap>车牌号:</td>
						<td><input name="txtChePaiHao" type="text" maxlength="10"
							id="txtChePaiHao" /></td>
						<td nowrap>车主名:</td>
						<td><input name="txtCheZhuName" type="text" maxlength="60"
							id="txtCheZhuName" /></td>
						<td nowrap>车主电话:</td>
						<td><input name="txtCheZhuTel" type="text" maxlength="18"
							id="txtCheZhuTel" /></td>
						<td nowrap><a id="lnkSearch" class="easyui-linkbutton"
							href="javascript:gongDanSearch()">查询</a></td>

					</tr>
				</table>
			</div>
			<!--查询条件 end-->
	</form>


	<script language="javascript" type="text/javascript">
		$(function() {
			var jsonStr = '<s:property value="easyUiJSonData" escape="false"/>';
			setupDatagrid(jsonStr);
		});

		function setupDatagrid(jsonStr) {
			jsonStrData = $.parseJSON(jsonStr);
			$('#dg').datagrid('loadData', jsonStrData);
		}

		function gongDanSearch() {
			$("#form1").form('submit', {
				url : "saleAfterGongDanSearch.action",
				success : function(jsonStr) {
					setupDatagrid(jsonStr);
				}
			});
		}

		function showGongDan(index) {
			var thisGuid = $('#dg').datagrid('getRows')[index]['txtGongDanId'];
			if (thisGuid != "" && thisGuid != undefined) {
				var url = 'saleAfterIndex.action?saleAfterWeiXiuGuid='
						+ thisGuid + '&d=' + new Date();
				var features = 'height=600,width=990,top=100,left=50,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=no';
				z = window.open(url, '_blank', features);
				z.focus();
			}
		}
	</script>

</body>
</html>

