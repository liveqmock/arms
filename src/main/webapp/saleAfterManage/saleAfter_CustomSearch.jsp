<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>维修接待管理</title>
<link rel="stylesheet" type="text/css"
	href="../style/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="../style/themes/icon.css" />
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="../js/common.js" type="text/javascript"></script>
<script src="../js/customcommon.js" type="text/javascript"></script>
<link href="../style/common.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="../image/SyAuto_<s:property value='shop.companyFlag' />.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
</head>
<body>
	<form name="form1" method="post" id="form1" class="searchform">
		<div class="title">
			<table border="0" style="width: 100%;">
				<tr>
					<td class="titlebg"><span>维修管理</span> <span class="titleSpan">(维修接待)</span>
					</td>
					<td align="right"></td>
				</tr>
			</table>
		</div>

		<div style="margin: 0 10px;">
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td><select name="queryField" id="queryField">
							<option selected="selected" value="txtCheLiangChePaiHao">按车牌号</option>
							<option value="txtCheLiangCheJiaHao">按车架号</option>
					</select></td>
					<td style="padding-left: 5px"><input class="easyui-textbox" name="queryValue"
						type="text" maxlength="20" id="queryValue" />&nbsp;&nbsp;
					</td>
					<td><a onclick="doSearch();return false;"
						class="easyui-linkbutton" href="javascript:void(0)">查询</a> 
                        <s:if test="user.privilegeLst.contains('viewEditCustomerInfo')">
                        <a onclick="showCustomerInfo();return false;" class="easyui-linkbutton" href="javascript:void(0)">查看修改客户信息</a>  
                        </s:if>
						<s:if test="user.privilegeLst.contains('showWeiXiuLiShiList')">
                        <a onclick="showWeiXiuLiShiList();return false;" class="easyui-linkbutton" href="javascript:void(0)">维修历史</a> 
                        </s:if>
                        <s:if test="user.privilegeLst.contains('jieDaiDaoHang')">
                        <a onclick="jieDaiDaoHang();return false;" class="easyui-linkbutton" href="javascript:void(0)">维修接待导航</a> 
                        </s:if>
						<s:if test="user.privilegeLst.contains('gongDanManage')">
                        <a onclick="gongDanManage();return false;" class="easyui-linkbutton" href="javascript:void(0)">工单管理</a> 
                        </s:if>
						<s:if test="user.privilegeLst.contains('customerReservationManage')">
                        <a onclick="reservationManage();return false;" class="easyui-linkbutton" href="javascript:void(0)">预约管理</a>  
                        </s:if>
						<s:if test="user.privilegeLst.contains('addNewCustomerInfo')">
                         <a	onclick="editCustomerInfo('');return false;" class="easyui-linkbutton" href="javascript:void(0)">新增客户信息</a>
                        </s:if>                         
                    </td>

				</tr>
			</table>
			<!--数据列表 start-->
			<div style="height: 3px"></div>
			<table id="mydg" class="easyui-datagrid"
				data-options="pageList:[20,30,50,100],rownumbers:true,singleSelect:true, pagination:true,onDblClickRow:jieDaiDaoHang">
				<thead>
					<tr>
						<th width="100" data-options="field:'txtCheLiangChePaiHao'">车牌号码</th>
						<th width="150" data-options="field:'ddlCheLiangCheXi'">车型</th>
						<th width="150" data-options="field:'txtCheLiangCheXingDaiMa'">车辆型号</th>
						<th width="200" data-options="field:'txtCheLiangCheJiaHao'">车架号</th>
						<th width="100" data-options="field:'ddlCustSort'">客户类别</th>
						<th width="100" data-options="field:'txtCheZhuName'">车主</th>
						<th width="100" data-options="field:'txtLianXiRenName'">联系人</th>
						<th width="150" data-options="field:'txtLianXiRenTel'">联系人电话</th>
						<th width="100" data-options="field:'txtHuiYuanDengJi'">会员级别</th>
					</tr>
				</thead>
			</table>
			<!--数据列表 end-->
		</div>

		<!--维修历史 接待提醒 预约明细 start-->
		<div></div>
		<!--维修历史 接待提醒 预约明细 end-->
		<div></div>
	</form>

	<script language="javascript" type="text/javascript">
		var myTable = $('#mydg');

		$(function() {
			$("#queryValue").focus();
		});

		function doSearch() {
			$("#form1").form('submit', {
				url : "customerSearch.action",
				success : function(jsonStr) {
					myTable.datagrid('loadData', $.parseJSON(jsonStr));
				}
			});
		}

		function showCustomerInfo() {
			var row = myTable.datagrid('getSelected');
			if (row) {
				editCustomerInfo(row.txtCustId);
			} else {
				$.messager.alert('提示', '请先选中目标客户');
			}
		}

		function editCustomerInfo(customerId) {
			var url = '../customManage/customerInfo.action?customerId='
					+ customerId + '&d=' + new Date();
			/*var name = '客户信息';
			var features = 'height=550,width=730,center=yes,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no, status=no';
			var z = window.open(url, name, features);
			z.focus();*/
			var sFeatures = "dialogWidth:970px;dialogHeight:700px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
			window.showModalDialog(url, window, sFeatures);
			//myTable.datagrid('reload');
			doSearch();
		}

		function showWeiXiuLiShiList() {
			var row = myTable.datagrid('getSelected');
			if (row) {				
				var url = 'cheLiangWeiXiuLiShi.action?cheLiangId=' + row.txtCheLiangId
						+ '&d=' + new Date();
				var name = '维修历史';
				var features = 'height=600,width=970,top=80,left=80,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=no';
				var z = window.open(url, name, features);
				z.focus();
			} else {
				$.messager.alert('提示', '请先选中目标客户');
			}
		}

		function jieDaiDaoHang() {
			var row = myTable.datagrid('getSelected');
			if (row && row.txtCheLiangId!="") {
				var url = '../saleAfterManage/saleAfterWeiXiuJieDaiDaoHang.action?cheLiangId='
						+ row.txtCheLiangId + '&d=' + new Date();
				var name = '维修接待';
				var features = 'height=600, width=790, top=80, left=80, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no';
				
				z = window.open(url, name, features);
				z.focus();
			} else {
				$.messager.alert('提示', '请先选中目标车辆');
			}
		}
		
		function gongDanManage(){
			parent.gongDanManage();
		}
		
		function reservationManage(){
			parent.reservationManage();			
		}
	</script>

</body>
</html>