<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css"
	href="../style/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="../style/themes/icon.css" />
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="../js/common.js" type="text/javascript"></script>
<script src="../js/frame/underscore-min.js" type="text/javascript"></script>
<script src="../js/customcommon.js" type="text/javascript"></script>
<link href="../style/common.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<meta HTTP-EQUIV="Expires" CONTENT="0"> 
</head>

<body>
	<div style="margin-top: 5px; margin-left: 5px; margin-right: 5px;">
		<table border="0" style="width: 900px">
			<!--按钮区域 sart-->
			<tr>
				<td align="right"><a onClick="return printThis();"
					id="lnkPrint" class="easyui-linkbutton"
					href="javascript:__doPostBack('lnkPrint','')">打印</a> <a
					onClick="return winClose();" id="lnkCancel"
					class="easyui-linkbutton"
					href="javascript:__doPostBack('lnkCancel','')">关闭</a></td>
			</tr>
			<!--按钮区域 end-->
		</table>

		<table id="datagridXiangMu" class="easyui-datagrid"
			data-options="url:'queryGongDanWeiXiuXiangMu.action?saleAfterWeiXiuGuid=<s:property value='saleAfterWeiXiuGuid' />',toolbar:'#tb',singleSelect:true,rownumbers:true,showFooter:true">
			<thead>
				<tr>
					<th field="txtGongDuanName" width="80"
						<s:if test="action=='GongDanZhiZuo'">
						data-options="editor:{type:'combobox',options:{editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/weiXiuGongDuanOption.action'}}"</s:if>>工段</th>
					<s:if test="action=='GongDanZhiZuo' || action=='WeiXiuJieSuan'">
						<th field="txtXiangMuId" width="150">项目编号</th>
					</s:if>
					<th field="txtWeiXiuNeiRong" width="200">维修内容</th>
					<th field="txtGongShi" width="40"
						<s:if test="action=='GongDanZhiZuo'">
						data-options="align:'right',editor:{type:'numberbox',options:{precision:2,required: true,missingMessage:'工时必须填写'}}"</s:if>>工时</th>
					<th field="txtGongShiFei" width="80"
						<s:if test="action=='GongDanZhiZuo'">
						data-options="align:'right',editor:{type:'numberbox',options:{precision:2,required:true,missingMessage:'工时费必须填写'}}"</s:if>>工时费</th>
					<th field="ddlZhangTao" width="100"
						<s:if test="action=='GongDanZhiZuo'">
						data-options="editor:{type:'combobox',options:{editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/zhangTaoOption.action'}}"</s:if>>帐套</th>
					<s:if test="action=='WeiXiuPaiGong' || action=='WeiXiuWanJian' || action=='WeiXiuJieSuan'">
						<th field="txtBanZu" width="100"
							data-options="editor:{type:'combobox',options:{editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/weiXiuBanZuOption.action'}}">维修班组</th>
						<th field="txtZhuXiuRen" width="80"
							data-options="editor:{type:'combobox',options:{editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/weiXiuZhuXiuRenOption.action'}}">主修人</th>
					</s:if>
                    <s:if test="action=='WeiXiuJieSuan'">
                    <th field="txtWanJianRen" width="100">完检人</th>
                    </s:if>
                    <s:if test="action!='WeiXiuJieSuan'">
					<th field="action" width="200" align="center"
						formatter="formatAction">操作</th>
					</s:if>
				</tr>
			</thead>
		</table>
		<s:if test="action=='GongDanZhiZuo'">
			<div id="tb" style="height: auto">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					data-options="iconCls:'icon-add',plain:true"
					onClick="addItemList()">添加维修项目</a>
			</div>
		</s:if>

		<div style="height: 10px;"></div>

		<s:if test="action=='GongDanZhiZuo' || action=='WeiXiuJieSuan'">
			<table id="datagridWuLiao" class="easyui-datagrid"
				data-options="url:'queryGongDanWeiXiuWuLiao.action?saleAfterWeiXiuGuid=<s:property value='saleAfterWeiXiuGuid' />',toolbar:'#tb2',singleSelect:true,rownumbers:true,showFooter:true">
				<thead>
					<tr>
						<th field="txtWuLiaoId" width="100">商品编号</th>
						<th field="txtWuLiaoName" width="200">商品名称</th>
						<th field="txtRegQty" width="60"
							data-options="align:'right',editor:{type:'numberbox',options:{precision:2,required: true,missingMessage:'所需数量必须填写'}}">所需数量</th>
						<th field="txtTakeQty" width="60"
							data-options="align:'right',editor:{type:'numberbox',options:{precision:2,required: true,missingMessage:'领用数量必须填写'}}">领用数量</th>
						<th field="txtReturnQty" width="60"
							data-options="align:'right',editor:{type:'numberbox',options:{precision:2,required: true,missingMessage:'退货数量必须填写'}}">退货数量</th>
						<th field="txtPrice" width="150">单价</th>
						<th field="ddlZhangTao" width="100"
							data-options="editor:{type:'combobox',options:{editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/zhangTaoOption.action'}}">帐套</th>
						<s:if test="action=='GongDanZhiZuo'">
							<th field="action" width="150" align="center"
								formatter="formatAction2">操作</th>
						</s:if>
					</tr>
				</thead>
			</table>
		</s:if>
		<s:if test="action=='GongDanZhiZuo'">
			<div id="tb2" style="height: auto">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					data-options="iconCls:'icon-add',plain:true"
					onClick="addItemList2()">添加物料</a>
			</div>
		</s:if>
	</div>


	<script language="javascript" type="text/javascript">
		var saleAfterGuid = '<s:property value="saleAfterWeiXiuGuid" />';
		var myTable = $('#datagridXiangMu');

		function addItemList() {
			var sURL = "../saleAfterManage/saleAfterGongDanZhiZuoAddWeiXiuXiangMu.action?saleAfterGuid="
					+ saleAfterGuid + "&d=" + new Date();
			var sFeatures = "dialogWidth:750px;dialogHeight:670px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
			window.showModalDialog(sURL, window, sFeatures);
			myTable.datagrid('reload');
		}

		function formatAction(value, row, index) {
			if (row.txtGongDuanName == "合计") {
				return "";
			} else {
				<s:if test="action=='GongDanZhiZuo' || action=='WeiXiuPaiGong'">
				if (row.editing) {
					var s = '<a href="#" onclick="saverow(this);return false;">保存修改</a>&nbsp;&nbsp;&nbsp;&nbsp;';
					var c = '<a href="#" onclick="cancelrow(this);return false;">取消修改</a>';
					return s + c;
				} else {
					var e = '<a href="#" onclick="editrow(this);return false;">编辑本行</a>&nbsp;&nbsp;&nbsp;&nbsp;';
					var d = '<a href="#" onclick="deleterow(this);return false;">删除本行</a>';
					return e + d;
				}
				</s:if>
				<s:elseif test="action=='WeiXiuWanJian'">
				if (row.txtWanJianStatus == "完检" || row.txtWanJianStatus == "返修") {
					return row.txtWanJianStatus + " " + row.txtWanJianRen + " " + row.txtWanJianShiJian;
				}else{
					var s = '<a href="#" onclick="updateWanJianStatus(this,\'完检\');return false;">完检</a>&nbsp;&nbsp;&nbsp;&nbsp;';
					var c = '<a href="#" onclick="updateWanJianStatus(this,\'返修\');return false;">返修</a>';
					return s + c;
				}
				</s:elseif>
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

		function deleterow(target) {
			if (myTable.datagrid('hasEditingRow')) {
				$.messager.alert('提示', '请先处理尚未完成的编辑行信息');
			} else {
				$.messager.confirm('提示', '确定要删除本行信息吗?', function(r) {
					if (r) {
						var rowIndex = getTargetRowIndex(target);
						var editRow = myTable.datagrid('getRows')[rowIndex];
						$.post('deleteGongDanWeiXiuXiangMu.action', {
							"txtWeiXiuXiangMuId" : editRow.txtWeiXiuXiangMuId
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
				var url = "";
				<s:if test="action=='GongDanZhiZuo'">
				url = "updateGongDanWeiXiuXiangMuWhenZhiZuo.action";
				</s:if>;
				<s:elseif test="action=='WeiXiuPaiGong'">
				url = "updateGongDanWeiXiuXiangMuWhenPaiGong.action";
				</s:elseif>
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

		function updateWanJianStatus(target, status) {			
			$.messager.confirm('提示', '确定要'+status+'吗?', function(r) {
				if (r) {
					var editRow = myTable.datagrid('getEventTargetRow', target);
					editRow.txtWanJianStatus = status;
					$.post("updateGongDanWeiXiuXiangMuWhenWanJian.action", {
							"easyUiJSonData" : JsonToString(editRow)
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

		//-------------------------Datagrid2------------------------------------
		var myTable2 = $('#datagridWuLiao');

		function addItemList2() {
			var sURL = "../saleAfterManage/saleAfterGongDanZhiZuoAddWeiXiuWuLiao.action?saleAfterGuid="
					+ saleAfterGuid + "&d=" + new Date();
			var sFeatures = "dialogWidth:750px;dialogHeight:550px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
			window.showModalDialog(sURL, window, sFeatures);
			myTable2.datagrid('reload');
		}

		function formatAction2(value, row, index) {
			if (row.txtWuLiaoId == "合计") {
				return "";
			} else {
				if (row.editing) {
					var s = '<a href="#" onclick="saverow2(this);return false;">保存修改</a>&nbsp;&nbsp;&nbsp;&nbsp;';
					var c = '<a href="#" onclick="cancelrow2(this);return false;">取消修改</a>';
					return s + c;
				} else {
					var e = '<a href="#" onclick="editrow2(this);return false;">编辑本行</a>&nbsp;&nbsp;&nbsp;&nbsp;';
					var d = '<a href="#" onclick="deleterow2(this);return false;">删除本行</a>';
					return e + d;
				}
			}
		}

		function getTargetRowIndex2(target) {
			return myTable2.datagrid('getEventTargetRowIndex', target);
		}

		function editrow2(target) {
			if (myTable2.datagrid('hasEditingRow')) {
				$.messager.alert('提示', '请先处理尚未完成的编辑行信息');
			} else {
				myTable2.datagrid('beginEdit', getTargetRowIndex2(target));
			}
		}

		function deleterow2(target) {
			if (myTable2.datagrid('hasEditingRow')) {
				$.messager.alert('提示', '请先处理尚未完成的编辑行信息');
			} else {
				$.messager.confirm('提示', '确定要删除本行信息吗?', function(r) {
					if (r) {
						var rowIndex = getTargetRowIndex2(target);
						var editRow = myTable2.datagrid('getRows')[rowIndex];
						$.post('deleteGongDanWeiXiuWuLiao.action', {
							"txtWeiXiuWuLiaoId" : editRow.txtWuLiaoGuid
						}, function(result) {
							if (result.errorMsg) {
								$.messager.alert('出错啦', result.errorMsg);
								myTable2.datagrid('cancelEdit', rowIndex);
							} else {
								myTable2.datagrid('reload');
							}
						}, 'json');
					}
				});
			}
		}

		function saverow2(target) {
			var rowIndex = getTargetRowIndex2(target);
			if (myTable2.datagrid('validateRow', rowIndex)) {
				myTable2.datagrid('endEdit', rowIndex);
				var editRow = myTable2.datagrid('getRows')[rowIndex];
				$.post('updateGongDanWeiXiuWuLiao.action', {
					"easyUiJSonData" : JsonToString(editRow)
				}, function(result) {
					if (result.errorMsg) {
						$.messager.alert('出错啦', result.errorMsg);
						myTable2.datagrid('cancelEdit', rowIndex);
					} else {
						myTable2.datagrid('reload');
					}
				}, 'json');
			} else {
				$.messager.alert('提示', '请先按照提示填写行信息');
			}
		}

		function cancelrow2(target) {
			myTable2.datagrid('cancelEdit', getTargetRowIndex2(target));
		}

		function printThis() {
			window.open("saleAfter_WeiXiuJieDaiPrint.aspx?saleAfterGuid="
					+ saleAfterGuid + "&d=" + new Date());
			return false;
		}

		function winClose() {
			if (!confirm("您确定要退出？")) {
				return false;
			}
			try {
				parent.parent.parWinClose();
			} catch (e) {
				parent.window.opener = null;
				parent.window.close();
			}
			return false;
		}
	</script>

</body>
</html>