<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<title>车辆新增</title>
<link rel="stylesheet" type="text/css"
	href="../style/themes/default/easyui.css?v=20130306" />
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/underscore-min.js" type="text/javascript"></script>
<script src="../js/birthDate.js?a=123" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="../js/customcommon.js" type="text/javascript"></script>
<style type="text/css">
td, div {
	font-size: 12px;
}

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

input {
	border: none;
	width: 125px;
}

td {
	height: 25px;
	white-space: nowrap;
}

.requireSpan {
	color: Blue;
}
</style>
</head>
<body>
	<form name="form1" method="post" id="form1">
		<input name="txtCustId" type="hidden" id="txtCustId" /> <input
			name="txtVehicleId" type="hidden" id="txtVehicleId" />
		<div style="width: 900px;">
			<div id="tabs" class="tabs" style="width: 900px;">
				<ul>
					<li id="c"><a href="#tabs-3" onclick="show(3)">车辆信息</a></li>
				</ul>
			</div>
			<!--车辆信息 start-->
			<div id="cDiv" style="margin: 2 0 0 5; display: block;">
				<br />
				<table border="0" cellpadding="0" cellspacing="0" width="900px"
					style="border-collapse: collapse; ">
					<tr>
						<td><span class="requireSpan">*</span>制造商：</td>
						<td style="width: 125px;">
							<div id="cheLiangZhiZaoShang">
								<select id="ddlCheLiangZhiZaoShang" 
									name="ddlCheLiangZhiZaoShang"
									style="border: none; width: 100%; ">
									<option value="品牌">选择品牌</option>
								</select>

							</div>
						</td>
						<td><span class="requireSpan">*</span>车系：</td>
						<td style="width: 125px;">
							<div id="cheLiangCheXi" style="border: none; ">
								<select id="ddlCheLiangCheXi" name="ddlCheLiangCheXi"
									style="border: none; width: 100%;">
								</select>
							</div>
						</td>

						<td><span class="requireSpan">*</span>车型代码：</td>
						<td><input name="txtCheLiangCheXingDaiMa" type="text" class="easyui-textbox"
							maxlength="30" id="txtCheLiangCheXingDaiMa" /></td>		
							
							<td>车辆种类：</td>
						<td><select name="ddlCheLiangSort" id="ddlCheLiangSort"
							style="border: none; width: 125px;" >
								<s:iterator value="VehiCleTypeList">
									<option value="<s:property value='vehiCleTypeName' />"><s:property
											value='vehiCleTypeName' /></option>
								</s:iterator>

						</select></td>		
					</tr>

					<tr>
						<td><span class="requireSpan">*</span>车牌号：</td>
						<td><input name="txtCheLiangChePaiHao" type="text" class="easyui-textbox"
							 id="txtCheLiangChePaiHao"  data-options="required:true,missingMessage:'车牌号为必填项',validType:'maxLength[8]'" /></td>
						<td><span class="requireSpan">*</span>车架号：</td>
						<td><input name="txtCheLiangCheJiaHao" type="text" class="easyui-textbox"
							data-options="required:true,missingMessage:'车架号为必填项',validType:'length[17,17]'" id="txtCheLiangCheJiaHao" onblur="checkVIN();" /></td>
						<td><span class="requireSpan">*</span>发动机号：</td>
						<td><input name="txtCheLiangFaDongJiHao" type="text" class="easyui-textbox"
						data-options="required:true,missingMessage:'发动号为必填项',validType:'length[17,17]'"
						 id="txtCheLiangFaDongJiHao" /></td>
							<td>年审日期：</td>
						<td><input name="txtCheLiangNextExaDate" type="text"
							id="txtCheLiangNextExaDate" class="inputCss easyui-datebox" data-options="required:true,missingMessage:'年审日期为必填项'" /></td>
						<td></td>
					</tr>
					<tr>
						<td><span class="requireSpan">*</span>投保日期：</td>
						<td><input name="txtBaoXianDate" type="text"
							id="txtBaoXianDate" class="easyui-datebox" /></td>
					</tr>			
				</table>
			</div>
			<!--车辆信息 end-->

			<div style="height: 5px;"></div>

			<!--按钮区域 start-->
			<div align="center" id="btnBottomDiv">

				<a id="lnkSave"
					class="easyui-linkbutton"
					href="javascript:__doPostBack('lnkSave','')">保存</a> <a id="A1"
					class="easyui-linkbutton" onclick="cancelAddVehicle()">取消</a>
			</div>
			<!--按钮区域 end-->
		</div>



	</form>
	<script language="javascript" type="text/javascript">
		function loadCarModelInfo(brandIdValue) {
			$.getJSON("modelInfo.action", {
				brandId : brandIdValue
			}, function(modelLst) {
				$("#ddlCheLiangCheXi").children().remove();
				$("#ddlCheLiangCheXi").append(
						'<option value="车系">选择车系</option>');
				$.each(modelLst, function(index, el) {
					$("#ddlCheLiangCheXi").append(
							'<option value="'+el.modelId+'">' + el.modelName
									+ '</option>');
				}

				);

			});
		}

		$(function() {
			$("#ddlCheLiangZhiZaoShang").change(function() {
				loadCarModelInfo(this.value);
			});
			var formJson = eval('('
					+ '<s:property value="jsonData" escape="false"/>' + ')');
			initFormData(formJson);
			show(3);
			$.getJSON("brandInfo.action", {}, function(brandLst) {
				$.each(brandLst, function(index, el) {
					$("#ddlCheLiangZhiZaoShang").append(
							'<option value="'+el.brandId+'">' + el.brandName
									+ '</option>');
				});
			});
		});

		function __doPostBack(eventTarget, eventArgument) {
			$("#form1").form('submit', {
				url : "saveCustomNewVehicle.action",
				success : function(result) {
					var result = eval('(' + result + ')');
					if (result.statusCode == "success") {
						alert('保存车辆信息成功！');
						cancelAddVehicle();
					} else if (result.statusCode == "failed") {
						alert('保存车辆信息失败！');
					}
				}
			});
		}

		var tmp = "a";
		function show(sort) {
			if ($("#" + tmp + "Div").length > 0) {
				$("#" + tmp + "Div").hide();
			}
			if (sort == 1) {
				$("#" + tmp).removeClass();
				$("#a").addClass("tabs_active");
				tmp = "a";
			}
			if (sort == 2) {
				$("#" + tmp).removeClass();
				$("#b").addClass("tabs_active");
				tmp = "b";
			}
			if (sort == 3) {
				$("#" + tmp).removeClass();
				$("#c").addClass("tabs_active");
				tmp = "c";
			}
			if (sort == 4) {
				$("#" + tmp).removeClass();
				$("#d").addClass("tabs_active");
				tmp = "d";
			}

			$("#" + tmp + "Div").show();
		}

		//证件号码是否重复验证
		function checkVIN() {
			$.get("customNewCheck.aspx?d=" + new Date(), {
				type : "strCheckVINNo",
				vehicleId : "0ccc60b3-e124-41c0-9aa4-dc48cc259acd",
				vin : $("#txtCheLiangCheJiaHao").val()
			},
					function(data) {
						if (data != "ok") {
							$("#txtCheLiangCheJiaHao").css("background-color",
									"red");
						} else {
							$("#txtCheLiangCheJiaHao").css("background-color",
									"white");
						}
					});
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

		function cancelAddVehicle() {
			location.href = "customNewAdd.action?showSort=3&custId="
					+ $("#txtCustId").val() + "&d=" + new Date();
			return false;
		}
	</script>
</body>
</html>
