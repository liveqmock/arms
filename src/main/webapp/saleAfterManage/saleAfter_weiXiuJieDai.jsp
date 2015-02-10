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
<style type="text/css">
  td
  {
  	font-size:12px;
  	height:25px;
  	white-space:nowrap;
  	}
</style>
</head>

<body
	<s:if test="flag=='GrayBGColor'">style="background-color:#DDD;"</s:if>>
	<div style="margin-top: 5px; margin-left: 5px; margin-right: 5px;">
		<table border="0" style="width: 900px">
			<!--按钮区域 sart-->
			<tr>
				<td align="right"><s:if test="gongDanStatus=='维修接待' && actionName=='gongDanWeiXiuJieDai'">
						<a onClick="saveGongDan();return false;" class="easyui-linkbutton"
							href="javascript:void(0)">保存接待信息</a>
						<s:if test="gongDan.txtBillNo!='等待生成'">
							<a
								onClick="updateGongDanStatus('<s:property value='saleAfterWeiXiuGuid' />','选取物料');return false;"
								class="easyui-linkbutton" href="javascript:void(0)">选取物料</a>
						</s:if>
					</s:if> <s:if
						test="gongDanStatus=='选取物料' && actionName=='gongDanWuLiaoXuanQu'">
						<a
							onClick="updateGongDanStatus('<s:property value='saleAfterWeiXiuGuid' />','维修派工');return false;"
							class="easyui-linkbutton" href="javascript:void(0)">维修派工</a>
					</s:if> <s:if
						test="gongDanStatus=='维修派工' && actionName=='gongDanWeiXiuPaiGong'">
						<a
							onClick="updateGongDanStatus('<s:property value='saleAfterWeiXiuGuid' />','领取物料');return false;"
							class="easyui-linkbutton" href="javascript:void(0)">领取物料</a>
					</s:if> <s:elseif
						test="gongDanStatus=='领取物料' && actionName=='gongDanLingQuWuLiao'">
						<a
							onClick="updateGongDanStatus('<s:property value='saleAfterWeiXiuGuid' />','维修完检');return false;"
							class="easyui-linkbutton" href="javascript:void(0)">维修完检</a>
					</s:elseif> <s:elseif
						test="gongDanStatus=='维修完检' && actionName=='gongDanWeiXiuWanJian'">
						<a
							onClick="updateGongDanStatus('<s:property value='saleAfterWeiXiuGuid' />','费用结算');return false;"
							class="easyui-linkbutton" href="javascript:void(0)">费用结算</a>
						<a
							onClick="updateGongDanStatus('<s:property value='saleAfterWeiXiuGuid' />','维修派工');return false;"
							class="easyui-linkbutton" href="javascript:void(0)">返修</a>
					</s:elseif> <s:elseif
						test="gongDanStatus=='费用结算' && actionName=='gongDanWeiXiuJieSuan'">
						<a
							onClick="updateGongDanStatus('<s:property value='saleAfterWeiXiuGuid' />','出库');return false;"
							class="easyui-linkbutton" href="javascript:void(0)">出库</a>
					</s:elseif></td>
			</tr>
			<!--按钮区域 end-->
		</table>
		<s:if test="actionName=='gongDanWeiXiuJieDai'">
			<form name="form1" method="post" id="form1">
				<input name="txtGongDanId" type="hidden" id="txtGongDanId" /> <input
					name="txtCheLiangId" type="hidden" id="txtCheLiangId" />
				<div style="margin-left: 5px; margin-top: 5px;">
					<table border="0" cellpadding="0" cellspacing="0">

						<tr>
							<td>车辆信息</td>
							<td colspan="7"></td>
						</tr>
						<tr>
							<td width="100" align="right">车牌号：</td>
							<td><div id="txtChePaiHao"></div></td>
							<td width="100" align="right">车辆型号：</td>
							<td><div id="txtCheXingDaiMa"></div></td>
							<td width="100" align="right">车架号：</td>
							<td><div id="txtVin"></div></td>
							<td align="right">发动机号：</td>
							<td><div id="txtFaDongJiHao"></div></td>
						</tr>
						<tr>
							<td align="right">注册登记日：</td>
							<td><div id="txtCheLiangDengJiRiQi"></div></td>
							<td align="right">年审到期日：</td>
							<td><div id="txtCheLiangNianShenDaoQiRi"></div></td>
							<td align="right">保险到期日：</td>
							<td><div id="txtCheLiangBaoXianDaoQiRi"></div></td>
							<td align="right">承保公司：</td>
							<td><div id="ddlChengBaoGongSi"></div></td>
						</tr>
						<tr>
							<td>车主信息</td>
							<td colspan="7"></td>
						</tr>
						<tr>
							<td align="right">车主名：</td>
							<td><div id="txtCheZhuName"></div></td>
							<td align="right">车主电话：</td>
							<td><div id="txtCheZhuTel"></div></td>
							<td align="right">联系人：</td>
							<td><div id="txtLianXiRenName"></div></td>
							<td align="right">联系人电话：</td>
							<td><div id="txtLianXiRenTel"></div></td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td align="right">客户类别：</td>
							<td><div id="txtCustSort"></div></td>
							<td align="right">联系地址：</td>
							<td colspan="5"><div id="txtLianXiRenAdd"></div></td>
						</tr>
						<tr>
							<td>会员信息</td>
							<td colspan="7"></td>
						</tr>
						<tr>
							<td align="right">会员等级：</td>
							<td><div id="txtHuiYuanDengJi"></div></td>
							<td align="right">维修项目折扣：</td>
							<td><div id="txtGongShiZheKou"></div></td>
							<td align="right">材料折扣：</td>
							<td><div id="txtCaiLiaoZheKou"></div></td>
							<td align="right">&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td colspan="7"></td>
						</tr>
						<tr>
							<td>维修信息</td>
							<td colspan="7"></td>
						</tr>
						<tr>
							<td align="right"><span class="requireSpan">*</span>维修单号：</td>
							<td><input name="txtBillNo" class="easyui-textbox"
								type="text" data-options="editable:false" id="txtBillNo" /></td>
							<td align="right"><span class="requireSpan">*</span>行驶里程：</td>
							<td><input name="txtLiCheng" type="text" id="txtLiCheng"
								class="easyui-numberbox"
								data-options="required:true,min:0,validType:'maxLength[10]'" /></td>
							<td align="right">&nbsp;</td>
							<td>&nbsp;</td>
							<td align="right">&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td align="right"><span class="requireSpan">*</span>入厂时间：</td>
							<td><input name="txtRuChangDate" type="text"
								id="txtRuChangDate" class="easyui-datebox"
								data-options="required:true" style="width: 145px;" /></td>
							<td align="right"><span class="requireSpan">*</span>预出厂时间：</td>
							<td><input name="txtYuChuChangDate" type="text"
								id="txtYuChuChangDate" class="easyui-datetimebox"
								data-options="required:true" style="width: 145px;" /></td>
							<td align="right"><span class="requireSpan">*</span>下次保养里程：</td>
							<td><input type="text" id="txtNewLiCheng"
								name="txtNewLiCheng" class="easyui-numberbox"
								data-options="required:true,min:0,validType:'maxLength[10]'" /></td>
							<td align="right"><span class="requireSpan">*</span>下次保养日期：</td>
							<td><input type="text" id="txtNewRuChangDate"
								name="txtNewRuChangDate" class="easyui-datebox"
								data-options="required:true" /></td>
						</tr>
						<tr>
							<td align="right">维修项目抵用券：</td>
							<td><input name="txtGongShiDiYongQuan" type="text" id="txtGongShiDiYongQuan"
								class="easyui-numberbox"
								data-options="required:true,min:0,validType:'maxLength[10]'" /></td>
							<td align="right">材料抵用券：</td>
							<td><input name="txtCaiLiaoDiYongQuan" type="text" id="txtCaiLiaoDiYongQuan"
								class="easyui-numberbox"
								data-options="required:true,min:0,validType:'maxLength[10]'" /></td>
							<td align="right">协议单号：</td>
							<td><input class="easyui-textbox"
								data-options="validType:'maxLength[20]'" name="txtXieYiBillNo"
								type="text" id="txtXieYiBillNo" /></td>
							<td align="right">服务顾问：</td>
							<td><div id="txtFuWuGuWen"></div></td>
						</tr>
					</table>
					<table border="0" cellpadding="0" cellspacing="0" width="900px">
						<tr>
							<td>交修原因：</td>
							<td>故障原因：</td>
							<td>维修措施：</td>
					  </tr>

						<tr>
							<td align="center"><textarea name="txtJiaoXiuReason"
									rows="2" cols="20" id="txtJiaoXiuReason"
									style="height: 70px; width: 90%;"></textarea></td>
							<td align="center"><textarea name="txtGuZhangReason"
									rows="2" cols="20" id="txtGuZhangReason"
									style="height: 70px; width: 90%;"></textarea></td>
							<td align="center"><textarea name="txtWeiXiuCuoShi" rows="2"
									cols="20" id="txtWeiXiuCuoShi"
									style="height: 70px; width: 90%;"></textarea></td>
						</tr>

						<tr>
							<td colspan="3" style="height: 2px;"></td>
						</tr>

				  </table>
			  </div>
			</form>
		</s:if>
        <s:if test="gongDan.txtBillNo!='等待生成'">
			<table id="datagridXiangMu" class="easyui-datagrid"
				data-options="url:'queryGongDanWeiXiuXiangMu.action?saleAfterWeiXiuGuid=<s:property value='saleAfterWeiXiuGuid' />',toolbar:'#tb',singleSelect:true,rownumbers:true,showFooter:true">
				<thead>
					<tr>
						<th field="txtGongDuanName" width="80"
							<s:if test="actionName=='gongDanWeiXiuJieDai'">
data-options="editor:{type:'combobox',options:{editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/weiXiuGongDuanOption.action'}}"</s:if>>工段</th>
						<s:if test="actionName=='gongDanWeiXiuJieDai' || actionName=='gongDanWeiXiuJieSuan'">
							<th field="txtXiangMuCode" width="100">项目编号</th>
						</s:if>
						<th field="txtXiangMuName" width="150">项目名称</th>
                        <s:if test="actionName!='gongDanWeiXiuWanJian'">
						<th field="txtWeiXiuNeiRong" width="150">项目内容</th>
                        </s:if>
						<th field="txtFeiYong" width="100"
							<s:if test="actionName=='gongDanWeiXiuJieDai'">
						data-options="align:'right',editor:{type:'numberbox',options:{precision:2,required:true}}"</s:if>>费用</th>
						<th field="ddlZhangTao" width="100"
							<s:if test="actionName=='gongDanWeiXiuJieDai'">
						data-options="editor:{type:'combobox',options:{editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/zhangTaoOption.action'}}"</s:if>>帐套</th>
						<s:if
							test="actionName=='gongDanWeiXiuPaiGong' || actionName=='gongDanLingQuWuLiao' || actionName=='gongDanWeiXiuWanJian' || actionName=='gongDanWeiXiuJieSuan'">
							<th field="txtBanZu" width="100"
								data-options="editor:{type:'combobox',options:{editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/weiXiuBanZuOption.action',onChange:updateZhuXiuRen}}">维修班组</th>
							<th field="txtZhuXiuRen" width="80"
								data-options="editor:{type:'textbox'}">主修人</th>
						</s:if>
						<s:if test="actionName=='gongDanWeiXiuJieSuan'">
							<th field="txtWanJianRen" width="80">完检人</th>
						</s:if>
						<s:if
							test="(actionName=='gongDanWeiXiuPaiGong' || actionName=='gongDanWeiXiuWanJian') && (gongDanStatus=='维修完检' || gongDanStatus=='返修')">
							<th field="txtWanJianStatus" width="180"
								formatter="formatWanJianStatus">完检状态</th>
						</s:if>
						<s:if
							test="(gongDanStatus=='维修接待' && actionName=='gongDanWeiXiuJieDai') || ((gongDanStatus=='维修派工' || gongDanStatus=='返修') && actionName=='gongDanWeiXiuPaiGong') || (gongDanStatus=='维修完检' && actionName=='gongDanWeiXiuWanJian')">
							<th field="action" width="150" align="center"
								formatter="formatAction">操作</th>
						</s:if>
					</tr>
				</thead>
			</table>
            <s:if test="gongDanStatus=='维修接待' && actionName=='gongDanWeiXiuJieDai'">
			<div id="tb" style="height: auto">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					data-options="iconCls:'icon-add',plain:true"
					onClick="addItemList()">添加维修项目</a>
			</div>
			</s:if>
		<div style="height: 10px;"></div>
</s:if>
		<s:if test="actionName=='gongDanWuLiaoXuanQu' || actionName=='gongDanLingQuWuLiao' || actionName=='gongDanWeiXiuJieSuan'">
			<table id="datagridWuLiao" class="easyui-datagrid"
				data-options="url:'queryGongDanWeiXiuWuLiao.action?saleAfterWeiXiuGuid=<s:property value='saleAfterWeiXiuGuid' />',toolbar:'#tb2',singleSelect:true,rownumbers:true,showFooter:true">
				<thead>
					<tr>
						<th field="txtWuLiaoCode" width="100">物料编号</th>
						<th field="txtWuLiaoName" width="200">物料名称</th>
						<th field="ddlCangKu" width="100">所属仓库</th>
						<th field="txtTakeQty" width="60"
							data-options="align:'right',editor:{type:'numberbox',options:{required: true,missingMessage:'领用数量必须填写'}}">领用数量</th>
						<th field="txtPrice" width="100">单价</th>
						<th field="txtPaid" width="100">实际费用</th>
						<th field="ddlZhangTao" width="100"
							data-options="editor:{type:'combobox',options:{editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/zhangTaoOption.action'}}">帐套</th>
						<s:if
			test="(gongDanStatus=='选取物料' && actionName=='gongDanWuLiaoXuanQu') || (gongDanStatus=='领取物料' && actionName=='gongDanLingQuWuLiao')">
							<th field="action" width="150" align="center"
								formatter="formatAction2">操作</th>
						</s:if>
					</tr>
				</thead>
			</table>
		</s:if>
		<s:if
			test="gongDanStatus=='选取物料' && actionName=='gongDanWuLiaoXuanQu'">
			<div id="tb2" style="height: auto">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					data-options="iconCls:'icon-add',plain:true"
					onClick="addItemList2()">添加物料</a>
			</div>
		</s:if>
		<s:if test="actionName=='gongDanWeiXiuJieSuan'">
            <div style="width:100%;background-color: white; margin-top:10px; border:solid 1px #95b8e7;">
			<table border="1" id="jieSuanList"
				style="border-collapse: collapse; border: 1px solid #ddd;"
				cellpadding="5">
				<tr>
					<td colspan="6">会员等级：<span
						style="color: Blue; font-weight: bold; padding-right: 10px;"><s:property
								value='gongDan.txtHuiYuanDengJi' /></span>维修项目折扣:<span
						style="color: Blue; font-weight: bold; padding-right: 10px;"><s:property
								value='gongDan.txtGongShiZheKou' /></span>材料折扣:<span
						style="color: Blue; font-weight: bold;"><s:property
								value='gongDan.txtCaiLiaoZheKou' /></span></td>

				</tr>
				<tr>
					<td width="100">项目维修费(折前)</td>
					<td width="100" style="color: blue; font-weight: bold;"><s:property
							value='gongDan.txtGongShiZheQian' /></td>
					<td width="100">配件费用(折前)</td>
					<td width="100" style="color: blue; font-weight: bold;"><s:property
							value='gongDan.txtCaiLiaoZheQian' /></td>
					<td width="100">合计(折前)</td>
					<td width="100" style="color: blue; font-weight: bold;"><s:property
							value='gongDan.txtZheQianHeJi' /></td>
				</tr>
				<tr>
					<td>项目维修费(折后)</td>
					<td style="color: blue; font-weight: bold;"><s:property
							value='gongDan.txtGongShiZheHou' /></td>
					<td>配件费用(折后)</td>
					<td style="color: blue; font-weight: bold;"><s:property
							value='gongDan.txtCaiLiaoZheHou' /></td>
					<td>合计(折后)</td>
					<td style="color: blue; font-weight: bold;"><s:property
							value='gongDan.txtZheHouHeJi' /></td>
				</tr>


			</table>
            </div>
		</s:if>
	</div>


	<script language="javascript" type="text/javascript">
		var saleAfterGuid = '<s:property value="saleAfterWeiXiuGuid" />';
		
		$(function() {
			var formJson = eval('('
					+ '<s:property value="gongDanJsonData" escape="false"/>' + ')');
			initFormData(formJson);
			
			<s:if test="gongDanStatus!='维修接待'">
			_.each(formJson, function(value, key) {
				var el = $("#" + key);
				if(_.size(el) > 0){
					if ((el[0].tagName == "INPUT" || el[0].tagName == "TEXTAREA") && el.attr("type")!="hidden") {
						$(el).parent().html(value);
					}
				}
			});
			</s:if>
		});

		function saveGongDan() {
			$("#form1").form('submit', {
				url : "saveWeiXiuJieDaiInfo.action",
				success : function(result) {
					var result = eval('(' + result + ')');
					if (result.statusCode == "success") {
						$.messager.alert('提示','保存维修接待信息成功！','info',function(){
							var idInfo = eval('(' + result.info + ')');
							refreshGongDan(idInfo.gongDanId);
						});
					} else if (result.statusCode == "failed") {
						$.messager.alert('提示','保存维修接待信息失败！');
					}
				}
			});
		}

		function winClose() {
			$.messager.confirm('提示', "您确定要退出？", function(r) {
				if (r) {
					try {
						parent.parent.parWinClose();
					} catch (e) {
						parent.window.opener = null;
						parent.window.close();
					}
				}
			});
		}

		var tmp = '#FFFFFF';
		$(function() {
			$('tr').mouseover(function() {
				tmp = this.style.backgroundColor;
				this.style.backgroundColor = '#eaf2ff';
			});

			$('tr').mouseout(function() {
				this.style.backgroundColor = tmp;
			});

		});
		
		var myTable = $('#datagridXiangMu');
		function addItemList() {
			var sURL = "../webSetup/weiXiuXiangMuManage.action?action=pickXiangMu&saleAfterGuid="
					+ saleAfterGuid + "&d=" + new Date();
			var sFeatures = "dialogWidth:750px;dialogHeight:670px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
			window.showModalDialog(sURL, window, sFeatures);
			myTable.datagrid('reload');
		}

		function formatAction(value, row, index) {
			if (row.txtGongDuanName == "合计") {
				return "";
			} else {
				<s:if test="actionName=='gongDanWeiXiuJieDai' || actionName=='gongDanWeiXiuPaiGong'">
				if (row.editing) {
					var s = '<a href="#" onclick="saverow(this);return false;">保存修改</a>&nbsp;&nbsp;&nbsp;&nbsp;';
					var c = '<a href="#" onclick="cancelrow(this);return false;">取消修改</a>';
					return s + c;
				} else {
					var e = '<a href="#" onclick="editrow(this);return false;">编辑本行</a>&nbsp;&nbsp;&nbsp;&nbsp;';
					var d = '<a href="#" onclick="deleterow(this);return false;">删除本行</a>';
					if (row.txtWanJianStatus == "完检") {
						e = '';
					}
					<s:if test="actionName=='gongDanWeiXiuPaiGong'">
						d = '';
					</s:if>
					return e + d;
				}
				</s:if>
				<s:elseif test="actionName=='gongDanWeiXiuWanJian'">
					if (row.txtWanJianStatus == "完检") {
						return '';
					}else{
						var s = '<a href="#" onclick="updateWanJianStatus(this,\'完检\');return false;">完检</a>&nbsp;&nbsp;&nbsp;&nbsp;';
						var c = '<a href="#" onclick="updateWanJianStatus(this,\'返修\');return false;">返修</a>';
						return s + c;
					}
				</s:elseif>
			}
		}
		
		function formatWanJianStatus(value, row, index){
			if (row.txtWanJianStatus == "完检"
					|| row.txtWanJianStatus == "返修") {
				return row.txtWanJianStatus + " " + row.txtWanJianRen + " "
						+ row.txtWanJianShiJian;
			} else {
				return "";	
			}
		}
		
		function updateZhuXiuRen(newBanZu, oldBanZu){
			var editRow = myTable.datagrid('getEditingRow');
			//alert("txtBanZu:"+editRow.txtBanZu+" newVal:"+newVal+" oldVal:"+oldVal);
			$.post('queryZhuXiuRen.action', {
				"weiXiuBanZu" : newBanZu
			}, function(result) {
				var editRowIndex = myTable.datagrid('getEditingRowIndex');
				var zhuXiuRenEditor = myTable.datagrid('getEditor',{index:editRowIndex, field:'txtZhuXiuRen'});
				$(zhuXiuRenEditor.target).textbox("setValue", result.info);
			}, 'json');
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
				<s:if test="actionName=='gongDanWeiXiuJieDai'">
				url = "updateGongDanWeiXiuXiangMuWhenJieDai.action";
				</s:if>;
				<s:elseif test="actionName=='gongDanWeiXiuPaiGong'">
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

		//-------------------------Datagrid2------------------------------------
		var myTable2 = $('#datagridWuLiao');

		function addItemList2() {
			var sURL = "<s:property value='basePath' />/storeOtherManage/kuCunManage.action?action=addWuLiao&saleAfterWeiXiuGuid="
					+ saleAfterGuid + "&d=" + new Date();
			var sFeatures = "dialogWidth:900px;dialogHeight:700px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
			window.showModalDialog(sURL, window, sFeatures);
			myTable2.datagrid('reload');
		}

		function formatAction2(value, row, index) {
			if (row.txtWuLiaoCode == "合计") {
				return "";
			} else {
				<s:if test="gongDanStatus=='领取物料' && actionName=='gongDanLingQuWuLiao'">
				return '<a href="#" onclick="confirmChuKu(this);return false;">物料出库确认</a>';
				</s:if>
				<s:else>
				if (row.editing) {
					var s = '<a href="#" onclick="saverow2(this);return false;">保存修改</a>&nbsp;&nbsp;&nbsp;&nbsp;';
					var c = '<a href="#" onclick="cancelrow2(this);return false;">取消修改</a>';
					return s + c;
				} else {
					var e = '<a href="#" onclick="editrow2(this);return false;">编辑本行</a>&nbsp;&nbsp;&nbsp;&nbsp;';
					var d = '<a href="#" onclick="deleterow2(this);return false;">删除本行</a>';
					return e + d;
				}
				</s:else>
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
		
		function confirmChuKu(target) {
			var rowIndex = getTargetRowIndex2(target);
			var editRow = myTable2.datagrid('getRows')[rowIndex];
			var msg = '<span  style="color: blue;">'+editRow.ddlCangKu+'<br/>' +editRow.txtWuLiaoName+ ' 数量:' +editRow.txtTakeQty+'</span>';
			$.messager.confirm('出库信息', msg, function(r) {
				if (r) {
					$.messager.alert('提示', "此功能正在调试。。。");
				}
			});			
		}

		function printThis() {
			window.open("saleAfter_WeiXiuJieDaiPrint.aspx?saleAfterGuid="
					+ saleAfterGuid + "&d=" + new Date());
			return false;
		}

		function winClose() {
			$.messager.confirm('提示', "您确定要退出？", function(r) {
				if (r) {
					try {
						parent.parent.parWinClose();
					} catch (e) {
						parent.window.opener = null;
						parent.window.close();
					}
				}
			});
		}
	</script>

</body>
</html>