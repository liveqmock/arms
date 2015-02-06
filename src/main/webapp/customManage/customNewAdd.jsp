<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1">
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<title>客户新增</title>
<link rel="stylesheet" type="text/css"
	href="../style/themes/default/easyui.css" />
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/underscore-min.js" type="text/javascript"></script>
<link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" />
<script src="../js/birthDate.js" type="text/javascript"></script>
<script src="../js/common.js" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="../js/customcommon.js" type="text/javascript"></script>
<link href="../style/common.css" rel="stylesheet" type="text/css" />
<style type="text/css">
td {
	font-size: 12px;
	height: 25px;
	white-space: nowrap;
}
</style>
</head>

<body>
	<div style="width: 900px; margin: auto;">		
		<form name="form1" method="post" id="form1">
			<input name="txtCustId" value="" type="hidden" id="txtCustId" />
			<!--车主信息 start-->
				<table cellpadding="0" cellspacing="0">
					<tr>
						<td colspan="6">客户信息</td>
					</tr>
					<tr>
						<td width="80" align="right">客户类型：</td>
						<td><select name="ddlCustSort"
							data-options="required:true"
							id="ddlCustSort" class="easyui-combobox">
								<option selected="selected" value="普通客户">普通客户</option>
								<option value="内部员工">内部员工</option>
								<option value="定点单位">定点单位</option>
								<option value="延保客户">延保客户</option>
						</select></td>
						<td width="80" align="right">车主名：</td>
						<td><input name="txtCheZhuName"
							data-options="required:true"
							class="easyui-textbox" type="text" id="txtCheZhuName" /></td>

						<td width="80" align="right">车主电话：</td>
						<td><input class="easyui-textbox" name="txtCheZhuTel"
							type="text"
							data-options="required:true"
							id="txtCheZhuTel" /></td>
					</tr>

					<tr>
						<td align="right">联系人姓名：</td>
						<td><input name="txtLianXiRenName" type="text"
							class="easyui-textbox"
							data-options="required:true"
							id="txtLianXiRenName" /></td>
						<td align="right">联系人电话：</td>
						<td><input name="txtLianXiRenTel" type="text"
							class="easyui-textbox"
							data-options="required:true"
							id="txtLianXiRenTel" /></td>
						<td align="right">驾照日期：</td>
						<td><input name="txtCheZhuJiaZhaoDate" type="text"
							id="txtCheZhuJiaZhaoDate" class="easyui-datebox"
							data-options="required:true" /></td>
					</tr>
					<tr>
						<td align="right"><span class="requireSpan"></span>联系地址：</td>
						<td colspan="5"><input name="txtLianXiRenAdd" type="text"
							class="easyui-textbox" data-options="validType:'maxLength[200]'"
							id="txtLianXiRenAdd" /></td>
					</tr>
					 <tr>
						<td colspan="6">&nbsp;</td>
					</tr>
					 <tr>
						<td colspan="6">会员信息</td>
					</tr>
					<tr>
						<td align="right">会员积分:</td>
						<td><input class="easyui-numberbox" name="txtHuiYuanJiFen"
							data-options="required:true" type="text"
							id="txtHuiYuanJiFen" /></td>
						<td align="right">工时折扣:</td>
						<td><input class="easyui-numberbox" name="txtGongShiZheKou"
							type="text" id="txtGongShiZheKou"
							data-options="precision:2,max:1" /></td>
						<td align="right">材料折扣:</td>
						<td><input class="easyui-numberbox" name="txtCaiLiaoZheKou"
							type="text" id="txtCaiLiaoZheKou" max="1" precision="2"
							style="text-align: right;" /></td>						
					</tr> 
					 <tr>
						<td colspan="6">&nbsp;</td>
					</tr>
					 <tr>
						<td colspan="6">车辆信息</td>
					</tr>
					<tr>
						<td align="right">品牌:</td>
						<td>&nbsp;</td>
						<td align="right">车系:</td>
						<td>&nbsp;</td>
						<td align="right">车型代码:</td>
						<td>&nbsp;</td>						
					</tr> 
					<tr>
						<td align="right">车牌号:</td>
						<td>&nbsp;</td>
						<td align="right">车架号:</td>
						<td>&nbsp;</td>
						<td align="right">发动机号:</td>
						<td>&nbsp;</td>						
					</tr> 

				</table>
				<!--联系人信息 end-->
		</form>
        
		<br /> 车辆信息
		<!--按钮区域 end-->
		 <form name="form2" id="form2" method="post"><input
				name="txtVehicleId" type="hidden" id="txtVehicleId" />
				<table border="0" cellpadding="0" cellspacing="0"
					style="border-collapse: collapse;">
					<tr>
						<td width="80" align="right">品牌：</td>
						<td><input name="ddlCheLiangZhiZaoShang"
							id="ddlCheLiangZhiZaoShang" class="easyui-combobox"
							data-options="editable:false,valueField:'code',required:true,
							textField:'name',method:'post',
							url:'<s:property value='basePath' />/data/carBrandOption.action'" /></td>
						<td width="80" align="right">车系：</td>
						<td><input name="ddlCheLiangCheXi" id="ddlCheLiangCheXi"
							class="easyui-combobox"
							data-options="required:true,editable:false,method:'post',valueField:'code',textField:'name'" /></td>
						<td width="80" align="right">车型代码：</td>
						<td ><input name="txtCheLiangCheXingDaiMa" type="text"
							class="easyui-textbox" id="txtCheLiangCheXingDaiMa" /></td>

					</tr>
					<tr>
						<td align="right">车辆种类：</td>
						<td><select name="ddlCheLiangSort" id="ddlCheLiangSort"
							class="easyui-combobox">
								<s:iterator value="VehiCleTypeList">
									<option value="<s:property value='vehiCleTypeName' />"><s:property
											value='vehiCleTypeName' /></option>
								</s:iterator>
						</select></td>
					</tr>
					<tr>
						<td align="right">车牌号：</td>
						<td><input name="txtCheLiangChePaiHao" type="text"
							class="easyui-textbox" id="txtCheLiangChePaiHao"
							data-options="required:true,validType:'maxLength[8]'" /></td>
						<td align="right">车架号：</td>
						<td><input name="txtCheLiangCheJiaHao" type="text"
							class="easyui-textbox"
							data-options="required:true"
							id="txtCheLiangCheJiaHao"  /></td>
						<td align="right">发动机号：</td>
						<td><input name="txtCheLiangFaDongJiHao" type="text"
							class="easyui-textbox"
							data-options="required:true"
							id="txtCheLiangFaDongJiHao" /></td>
					</tr>
				</table>
		</form> 
		
		<div style="height: 5px;"></div>

		<!--按钮区域 start-->
		<div align="center" id="btnBottomDiv" style="margin-top: 10px;">
			<a id="lnkSave2" class="easyui-linkbutton"
				href="javascript:__doPostBack('lnkSave','')">保存</a> 
			<a id="lnkSave2" class="easyui-linkbutton"
				href="javascript:__doPostBack('lnkSave','')">新增车辆</a> <a id="A1"
				class="easyui-linkbutton" href="javascript:winClose()" >取消</a>
		</div>
	</div>
	<script language="javascript" type="text/javascript">
		$(document).ready(function() {
	        $("#ddlCheLiangZhiZaoShang").combobox({
	        	onChange : function() {
						$.post("<s:property value='basePath' />/data/carModelOption.action",
						      {
							   code : $('#ddlCheLiangZhiZaoShang').combobox('getValue')
								},function(modelLst) {
									$('#ddlCheLiangCheXi').combobox("loadData",modelLst);
												});
											}
										});
			var formJson = eval('('+ '<s:property value="jsonData" escape="false"/>'+ ')');
		    var formJson2=eval('('+ '<s:property value="jsonData2" escape="false"/>'+ ')'); 
								initFormData(formJson);
								 initFormData(formJson2); 
								/* setUpPCA(formJson); */
								show(<s:property value="showSort" />);
								
									$("#txtCustId2").val($("#txtCustId").val());
								
							});

		function __doPostBack(eventTarget, eventArgument) {
			if (eventTarget == 'lnkSaveCheZhu') {
				$("#form1").form('submit', {
					url : "insertLianXiRenXinXi.action",
					success : function(result) {
						var result = eval('(' + result + ')');
						if (result.statusCode == "success") {
							$("#txtCustId").val(result.info);
							$("#txtCustId2").val(result.info);
							alert('保存车主信息成功！');
							$("#lnkSave").css("display","none");
							$("#lnkCancel").css("display","none");
						} 
						else if(result.statusCode=="update"){
							alert('修改车主信息成功！');
						}
						else if (result.statusCode == "failed") {
							alert('保存车主信息失败！');
						}
					}
				});
			}
			if (eventTarget == 'lnkSave') {
				if ($("#txtCustId2").val().trim() == "") {
					alert("请先保存车主信息");
					return;
				} else {
					$("#form2").form('submit', {
						url : "saveCustomNewVehicle.action",
						success : function(result) {
							var result = eval('(' + result + ')');
							if (result.statusCode == "success") {
								$("#txtVehicleId").val(result.info);
								alert('保存车辆信息成功！');
								$("#lnkSave2").css("display","none");
								$("#A1").css("display","none");
							}else if(result.statusCode=="update"){
								alert('修改车辆信息成功！');
							}
							else if (result.statusCode == "failed") {
								alert('保存车辆信息失败！');
							}
						}
					});

				}
			}
		}

		function winClose() {
			window.opener = null;
			window.close();
		}
	</script>
</body>
</html>