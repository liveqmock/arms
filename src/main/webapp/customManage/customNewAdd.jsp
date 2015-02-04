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
<script src="../js/geo.js" type="text/javascript"></script>

</head>

<style type="text/css">
.tabs {
	font-family: Verdana, Arial, sans-serif;
	font-size: 12px;
	line-height: 14px;
	position: relative;
	padding: 1px;
	zoom: 1;
}

.tabs ul {
	background-color: #fff;
	color: #222222;
	font-weight: bold;
	display: block;
	border-bottom: 1px solid #AAAAAA;
	height: 28px;
	padding: 0;
	margin: 0;
	padding-left: 200px;
}

.tabs ul li {
	-moz-border-radius-topleft: 4px;
	-moz-border-radius-topright: 4px;
	border-bottom: 0 none !important;
	float: left;
	list-style: none;
	margin: 0 0.2em 1px 0;
	padding: 0;
	position: relative;
	top: 1px;
	white-space: nowrap;
	color: #555555;
	font-weight: blod;
}

.tabs ul li.tabs_active {
	margin-bottom: 0;
	padding-bottom: 1px;
	background-color: #fff;
	border: 1px solid #aaa;
	color: #333;
}

.tabs ul li.tabs_hover {
	margin-bottom: 0;
	padding-bottom: 1px;
	background-color: #fff;
	border: 1px solid #999;
}

.tabs ul li a {
	float: left;
	padding: 0.5em 1em;
	text-decoration: none;
	cursor: pointer;
	color: #777;
}

.tabs ul li.tabs_active a {
	color: #333;
}

.tabs ul li.tabs_active a {
	color: #555555;
}

td {
	height: 25px;
	white-space: nowrap;
}
</style>


<body>
	<div style="width: 900px; margin: auto;">
		<div id="tabs" class="tabs" style="width: 900px;">
			<ul>
				<li id="a"><a href="#tabs-1" onclick="show(1)">车主信息</a></li>
				<!-- <li id="b"><a href="#tabs-2" onclick="show(2)">联系人信息</a></li> -->
				<li id="c"><a href="#tabs-3" onclick="show(3)">车辆信息</a></li>
			</ul>
		</div>
		<form name="form1" method="post" id="form1">
			<input name="txtCustId" type="hidden" value="" id="txtCustId" />
			<!--车主信息 start-->
			<div id="aDiv"
				style="margin-left: 5px; margin: 2 0 0 5; display: block;">

				<table cellpadding="0" cellspacing="0" width="900px">
					<tr>
						<td>车主信息</td>
						<td colspan="7"></td>
					</tr>
					<tr>
						<td onclick="lianXiRenToCheZhu()">客户类型：</td>
						<td style="width: 125px;"><select name="ddlCustSort"
							id="ddlCustSort" class="easyui-combobox" style="width: 100%;">
								<option selected="selected" value="普通客户">普通客户</option>
								<option value="普通客户">普通客户</option>
								<option value="内部员工">内部员工</option>
								<option value="定点单位">定点单位</option>
								<option value="延保客户">延保客户</option>

						</select></td>
						<td><span class="requireSpan">&nbsp;*</span>车主名：</td>
						<td><input name="txtCheZhuName"
							data-options="required:true,missingMessage:'车主名为必填项'"
							class="easyui-textbox" type="text"
							data-options="validType:'maxLength[100]'" id="txtCheZhuName" /></td>
						<td><span class="requireSpan">*</span>车主手机：</td>
						<td><input type="text"
							data-options="required:true,missingMessage:'车主手机为必填项',validType:'mobile'"
							class="easyui-textbox" name="txtCheZhuMob" id="txtCheZhuMob" />
						</td>
						<td><span class="requireSpan">*</span>电话：<input
							class="easyui-textbox" name="txtCheZhuTel" type="text"
							data-options="validType:'maxLength[12]'" id="txtCheZhuTel" /></td>
					</tr>
					<tr>
						<td><span class="requireSpan"></span>驾照日期：</td>
						<td><input name="txtCheZhuJiaZhaoDate" type="text"
							id="txtCheZhuJiaZhaoDate" class="inputCss easyui-datebox"
							data-options="required:true,missingMessage:'车驾照为必填项'" /></td>
						<td>&nbsp;生日：</td>
						<td><input name="txtCheZhuShengRi" type="text"
							id="txtCheZhuShengRi" class="inputCss easyui-datebox" /></td>
					</tr>
					<tr>
						<td>所属区域：</td>
						<td colspan="7">
							<div id="cheZhu">
								<select name="ddlCheZhuP" id="ddlCheZhuP"
									style="border: none; width: 100px"></select> <select
									name="ddlCheZhuC" id="ddlCheZhuC"
									style="border: none; width: 100px"></select> <select
									name="ddlCheZhuA" id="ddlCheZhuA"
									style="border: none; width: 100px"></select>
							</div>
						</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td><span class="requireSpan">*</span>车主地址：</td>
						<td colspan="7"><input name="txtCheZhuAdd" type="text"
							class="easyui-textbox"
							data-options="required:true,missingMessage:'车主地址为必填项',validType:'maxLength[200]'"
							id="txtCheZhuAdd" style="width: 700px;" /></td>
					</tr>
					<!--车主信息 end-->

					<!--联系人信息 start-->
					<tr>
						<td>联系人信息</td>
						<td colspan="7"></td>
					</tr>
					<tr>
						<td onclick="cheZhuToLianXiRen()"><span class="requireSpan">*</span>联系人姓名：</td>
						<td><input name="txtLianXiRenName" type="text"
							class="easyui-textbox"
							data-options="required:true,missingMessage:'联系人姓名为必填项',validType:'maxLength[20]'"
							id="txtLianXiRenName" /></td>
						<td><span class="requireSpan">*</span>联系人电话：</td>
						<td><input name="txtLianXiRenTel" type="text"
							class="easyui-textbox" id="txtLianXiRenTel" /></td>
						<td><span class="requireSpan">*</span>联系人手机：</td>
						<td><input name="txtLianXiRenMob" type="text"
							class="easyui-textbox"
							data-options="required:true,missingMessage:'联系人手机为必填项',validType:'mobile' "
							id="txtLianXiRenMob" /></td>
					</tr>

					<tr>
						<td>所属区域：</td>
						<td colspan="7">
							<div id="lianXiRen">

								<select name="ddlLianXiRenP" id="ddlLianXiRenP"
									style="border: none; width: 100px"></select> <select
									name="ddlLianXiRenC" id="ddlLianXiRenC"
									style="border: none; width: 100px"></select> <select
									name="ddlLianXiRenA" id="ddlLianXiRenA"
									style="border: none; width: 100px"></select>

							</div>
						</td>
					</tr>
					<tr>
						<td><span class="requireSpan">*</span>联系人地址：</td>
						<td colspan="7"><input name="txtLianXiRenAdd" type="text"
							class="easyui-textbox" data-options="validType:'maxLength[200]'"
							id="txtLianXiRenAdd" style="width: 700px;" /></td>
					</tr>
				</table>
				<!--联系人信息 end-->
			</div>
		</form>


		<!--车辆信息 start-->
		<div id="cDiv" style="margin: 2 0 0 5; display: none;">
			<br /> <span style="font-weight: bold; font-size: 12px; color: Red;">一辆车只能属于一个客户</span>
			<a onclick="return changeVehicleId();" id="lnkRebindVehicle"
				class="easyui-linkbutton"
				href="javascript:__doPostBack('lnkRebindVehicle','')">绑定车辆</a> <a
				onclick="return addVehicleId();" id="lnkAddVehicle"
				class="easyui-linkbutton"
				href="javascript:__doPostBack('lnkAddVehicle','')">新增车辆</a>


			<table border="0" cellpadding="0" cellspacing="0" width="700px"
				style="border-collapse: collapse; border: 1px solid #9a9a9a;">
				<s:iterator value="customVehicleLst" status="status">
					<tr>
						<td style="font-weight: bold; color: Blue; width: 90px;">[<s:property
								value='#status.count' />]车牌号码：
						</td>
						<td style="width: 80px;"><s:property
								value='txtCheLiangChePaiHao' /></td>
						<td style="width: 65px;">车架号码：</td>
						<td style="width: 125px;"><s:property
								value='txtCheLiangCheJiaHao' /></td>
						<td style="width: 65px;">发动机号:</td>
						<td style="width: 100px;"><s:property
								value='txtCheLiangFaDongJiHao' /></td>
					</tr>
					<tr>
						<td>制造厂商：</td>
						<td><s:property value='ddlCheLiangZhiZaoShang' /></td>
						<td>车系：</td>
						<td><s:property value='ddlCheLiangCheXi' /></td>
						<td>车型代码：</td>
						<td><s:property value='txtCheLiangCheXingDaiMa' /></td>
					</tr>
					<tr>
						<td>年审日期：</td>
						<td><s:property value='txtCheLiangNextExaDate' /></td>
						<td>&nbsp;</td>
						<td></td>
						<td></td>
						<td><a
							onclick="mdfCheLiangInfo('<s:property value='txtVehicleId'/>')"
							class="easyui-linkbutton">修改车辆</a></td>
					</tr>
				</s:iterator>
			</table>

		</div>
		<!--车辆信息 end-->

		<div style="height: 5px;"></div>

		<!--按钮区域 start-->
		<div align="center" id="btnBottomDiv">
			<a id="lnkSave" class="easyui-linkbutton"
				href="javascript:__doPostBack('lnkSave','')">保存</a> <a
				id="lnkCancel" class="easyui-linkbutton"
				href="javascript:winClose()">取消</a>
		</div>
		<!--按钮区域 end-->
	</div>
	<script language="javascript" type="text/javascript">

		$(function() {
			var formJson = eval('(' + '<s:property value="jsonData" escape="false"/>' + ')');
			initFormData(formJson);
			setUpPCA(formJson);
			show(<s:property value="showSort" />);
		});

		function setUpPCA(formJson) {
			//初始化省市区三级联动下拉框
			new PCA().geoSetup(["ddlCheZhuP", "ddlCheZhuC", "ddlCheZhuA"], [formJson.ddlCheZhuP, formJson.ddlCheZhuC, formJson.ddlCheZhuA]);
			new PCA().geoSetup(["ddlLianXiRenP", "ddlLianXiRenC", "ddlLianXiRenA"], [formJson.ddlLianXiRenP, formJson.ddlLianXiRenC, formJson.ddlLianXiRenA]);
		}

		function __doPostBack(eventTarget, eventArgument) {
			if(eventTarget=='lnkSave'){
				$("#form1").form('submit', {
					url : "insertLianXiRenXinXi.action",
					success : function(result) {
						var result = eval('(' + result + ')');
						if (result.statusCode == "success") {
							$("#txtCustId").val(result.info);
							alert('保存车主和联系人信息成功！');
						} else if (result.statusCode == "failed") {
							alert('保存车主和联系人信息成功！');
						}
					}
				});				
			}
		}

		//各类验证 satrt
		function changeColor(id, sort) {
			if (sort == "red") {
				$("#" + id).css("background-color", "red");
			} else {
				$("#" + id).css("background-color", "white");
			}
		}

		//证件号码是否重复验证
		var oldCusId = "";
		function checkCardNo() {
			$.get("customNewCheck.aspx?d=" + new Date(), {
				type : "checkCardNo",
				cusid : "80e1c393-1e7e-4aed-a87f-298427632abf",
				cheZhuCardNo : $("#txtCheZhuCardNo").val(),
				cheZhuCardNoSort : $("#ddlCheZhuCardSort").val()
			}, function(data) {
				if (data != "ok") {
					oldCusId = data.split("|")[1];
					changeColor("txtCheZhuCardNo", "red");
				} else {
					oldCusId = "";
					changeColor("txtCheZhuCardNo", "white");
				}
			});

			cardNoToDate('txtCheZhuCardNo', 'txtCheZhuShengRi');
		}

		//各类验证 end

		function showCustInfo() {
			if (oldCusId.length == 36) {
				z = window
						.open(
								'../customManage/customNewAdd.action?custId='
										+ oldCusId + '&d=' + new Date(),
								'新增客户信息2',
								'height=600,width=970,top=80,left=80,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no, status=no')
				z.focus();

			}
		}

		//车辆资料修改
		function mdfCheLiangInfo(vehicleId) {
			location.href = "customNewVehicleAdd.action?vehicleId=" + vehicleId
					+ "&d=" + new Date();
			return false;
		}

		//车辆资料新增
		function addVehicleId() {
			var custId = $("#txtCustId").val();
			if(custId==""){
				alert("请先保存车主和联系人信息");
			}else{				
				location.href = "customNewVehicleAdd.action?custId=" + custId + "&d="
					+ new Date();
			}
			return false;
		}

		//车辆车主转换
		function changeVehicleId() {
			var custId = $("#txtCustId").val();
			if(custId==""){
				alert("请先保存车主和联系人信息");
			}else{				
				location.href = "customVehicleChange.action?custId=" + custId + "&d="
					+ new Date();
			}
			return false;
		}

		//客户资料同联系人资料的相互写入
		var tmp = "a";
		function show(sort) {
			if ($("#" + tmp + "Div").length > 0) {
				$("#" + tmp + "Div").hide();
			}
			if (sort == 1) {
				$("#" + tmp).removeClass();
				$("#a").addClass("tabs_active");
				tmp = "a";
				$("#btnBottomDiv").css("display", "block");
			}
			if (sort == 2) {
				$("#" + tmp).removeClass();
				$("#b").addClass("tabs_active");
				tmp = "b";
				$("#btnBottomDiv").css("display", "block");
			}
			if (sort == 3) {
				$("#" + tmp).removeClass();
				$("#c").addClass("tabs_active");
				tmp = "c";
				$("#btnBottomDiv").css("display", "none");
			}

			$("#" + tmp + "Div").show();
		}

		//车主资料传送至 --- 联系人资料
		function cheZhuToLianXiRen() {
			if ($("#txtCheZhuName").val() != "") {
				$("#txtLianXiRenName").val($("#txtCheZhuName").val());
			}
			if ($("#txtCheZhuTel").val() != "") {
				$("#txtLianXiRenTel").val($("#txtCheZhuTel").val());
			}
			if ($("#txtCheZhuMob").val() != "") {
				$("#txtLianXiRenMob").val($("#txtCheZhuMob").val());
			}
			if ($("#ddlCheZhuP").val() != "") {
				$("#ddlLianXiRenP").val($("#ddlCheZhuP").val());
			}

			//下拉框 复制

			selectCopy("ddlCheZhuC", "ddlLianXiRenC");
			selectCopy("ddlCheZhuA", "ddlLianXiRenA");

			if ($("#ddlCheZhuC").val() != "") {
				$("#ddlLianXiRenC").val($("#ddlCheZhuC").val());
			}

			if ($("#ddlCheZhuA").val() != "") {
				$("#ddlLianXiRenA").val($("#ddlCheZhuA").val());
			}

			if ($("#txtCheZhuAdd").val() != "") {
				$("#txtLianXiRenAdd").val($("#txtCheZhuAdd").val());
			}

		}

		//联系人资料传送至 ---车主资料
		function lianXiRenToCheZhu() {
			selectCopy("ddlLianXiRenC", "ddlCheZhuC");
			selectCopy("ddlLianXiRenA", "ddlCheZhuA");

			if ($("#txtLianXiRenName").val() != "") {
				$("#txtCheZhuName").val($("#txtLianXiRenName").val());
			}
			
			if ($("#txtLianXiRenTel").val() != "") {
				$("#txtCheZhuTel").val($("#txtLianXiRenTel").val());
			}
			if ($("#txtLianXiRenMob").val() != "") {
				$("#txtCheZhuMob").val($("#txtLianXiRenMob").val());
			}
			if ($("#ddlLianXiRenP").val() != "") {
				$("#ddlCheZhuP").val($("#ddlLianXiRenP").val());
			}
			if ($("#ddlLianXiRenC").val() != "") {
				$("#ddlCheZhuC").val($("#ddlLianXiRenC").val());
			}
			if ($("#ddlLianXiRenA").val() != "") {
				$("#ddlCheZhuA").val($("#ddlLianXiRenA").val());
			}
			if ($("#txtLianXiRenAdd").val() != "") {
				$("#txtCheZhuAdd").val($("#txtLianXiRenAdd").val());
			}
		}

		//select 复制 ---源Id 目标值Id
		function selectCopy(sourceId, objId) {

			$("#" + objId + " option").remove();
			$("#" + sourceId + " option").each(
					function() {
						$("#" + objId).append(
								"<option value='" + $(this).val() + "'>"
										+ $(this).text() + "</option>");
					});

		}


		function winClose() {
			window.opener = null;
			window.close();
		}

		function cardNoToDate(id1, id2) {
			var v1 = $("#" + id1).val();
			var v2 = getBirth(v1);
			try {
				$("#" + id2).datebox('setValue', v2)
			} catch (e) {
				$("#" + id2).val(v2);
			}
		}
	</script>
</body>
</html>