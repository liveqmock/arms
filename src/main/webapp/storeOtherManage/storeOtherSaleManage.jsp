<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<title>商品销售查询</title>
<link rel="stylesheet" type="text/css"
	href="../style/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="../style/themes/icon.css" />
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="../js/common.js"
	type="text/javascript"></script>
<link href="../style/common.css"
	rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="../image/SyAuto_<s:property value='shop.companyFlag' />.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
</head>
<body>
		<table border="0" style="width: 100%;">
			<tr>
				<td class="titlebg"><span>销售查询</span> <span class="titleSpan">(销售管理)</span>
				</td>
			</tr>
		</table>
		<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel" style="display: block;">
				<tr>
					<td>销售时间:</td>
					<td><input name="xiaoshouDate" type="text" id="xiaoshouDate"
						class="inputCss easyui-datebox" style="width: 100px;" /></td>
					<td>至</td>
					<td><input name="xiaoshouDateEnd" type="text"
						id="xiaoshouDateEnd" class="inputCss easyui-datebox"
						style="width: 100px;" /></td>
					<td>销售单号:</td>
					<td><input name="xiaoshouID" type="text" maxlength="20" id="xiaoshouID" style="width: 120px;" /></td>
					<td>客户名:</td>
					<td><input name="kehuMing" type="text" maxlength="20"
								id="kehuMing" style="width: 120px;" /></td>
					<td colspan="3" style="text-align: left;"><a id="lnkSearch"
						class="easyui-linkbutton" href="javascript:doSearch()">查询</a></td>
					<td><a id="lnkSearch" class="easyui-linkbutton" href="javascript:clearSearchFrm()">清空查询</a></td>
					<tr>
					<td>单据状态:</td>
					<td><select name="danjuState" id="danjuState" style="width: 100px;">
							<option selected="selected" value="">全部</option>
							<option value="准备单据">准备单据</option>
							<option value="审核中">审核中</option>
							<option value="审核完毕">审核完毕</option>
							<option value="单据退回处理">单据退回处理</option>
							<option value="流程被删除">流程被删除</option>
						</select></td>
					</tr>
				</tr>
		</table>
		</form>
		<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryXiaoShouManageSearch.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
				<thead>
					<tr>
						<th data-options="field:'kehuMing',width:120" sortable="true">客户名</th>	
						<th data-options="field:'xiaoshouID',width:80,hidden:true"sortable="true">销售单号</th>
						<th data-options="field:'xiaoshouDate',width:110" sortable="true">销售日期</th>
						<th data-options="field:'xiaoshouType',width:100" sortable="true">销售类型</th>
						<th data-options="field:'huiyuanNum',width:80">会员号</th>
						<th data-options="field:'fapiaoType',width:120" sortable="true">发票类型</th>
						<th data-options="field:'suoshuCangKu',width:150,align:'left'"sortable="true">所属仓库</th>
						<th data-options="field:'yuhuoFangShi',width:100,align:'left'"sortable="true">运货方式</th>
						<th data-options="field:'yushuGongSi',width:80">运输公司</th>
						<th data-options="field:'fuzeRenYuan',width:100">负责人员</th>
						<th data-options="field:'fuzeRenTel',width:80">负责人电话</th>
						<th data-options="field:'wanglaiJine',width:180">往来金额</th>
						<th data-options="field:'danjuBeizhu',width:100">单据备注</th>
						<th data-options="field:'danjuState',width:80">单据状态</th>
						<th data-options="field:'shishouJinge',width:180">实售金额</th>
						<th data-options="field:'zhekouLv',width:100">折扣率</th>
					</tr>
				</thead>
		</table>

	  <script type="text/javascript">
			var url;
			function doSearch() {
				$("#fmSearch").form('submit', {
					url : "queryXiaoShouManageSearch.action",
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