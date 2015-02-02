<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<title>客户新增</title>
<link rel="stylesheet" type="text/css"
	href="../style/themes/default/easyui.css?v=20130306" />
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/underscore-min.js" type="text/javascript"></script>
<script src="../js/birthDate.js?a=123" type="text/javascript"></script>
<script src="../js/common.js?a=2014081611" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="../js/customcommon.js" type="text/javascript"></script>
<script src="../js/geo.js" type="text/javascript"></script>

</head>

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
	height: 30px;
	border: 1px solid #9a9a9a;
}

.requireSpan {
	color: Blue;
}
</style>


<body>
	<div style="width: 900px;">
		<div id="tabs" class="tabs" style="width: 900px;">
			<ul>
				<li id="a"><a href="#tabs-1" onclick="show(1)">车主信息</a></li>
				<li id="b"><a href="#tabs-2" onclick="show(2)">联系人信息</a></li>
				<li id="c"><a href="#tabs-3" onclick="show(3)">车辆信息</a></li>
			</ul>
		</div>

		<form name="form1" method="post" id="form1">
			<input name="txtCustId" type="hidden" value="" id="txtCustId" />
			<!--车主信息 start-->
			<div id="aDiv" style="margin: 2 0 0 5; display: block;">
				<br /> <span
					style="font-weight: bold; font-size: 12px; color: Red;"></span>
				<table border="0" cellpadding="0" cellspacing="0" width="900px"
					style="border-collapse: collapse; border: 1px solid #9a9a9a">
					<tr>
						<td onclick="lianXiRenToCheZhu()">客户类型：</td>
						<td style="width: 125px;"><select name="ddlCustSort"
							id="ddlCustSort"
							style="border: none; width: 100%; background-color: Transparent;">
								<option selected="selected" value="普通客户">普通客户</option>
								<option value="普通客户">普通客户</option>
								<option value="内部员工">内部员工</option>
								<option value="定点单位">定点单位</option>
								<option value="延保客户">延保客户</option>

						</select></td>
						<td><span class="requireSpan">*</span>车主名：</td>
						<td><input name="txtCheZhuName" type="text" maxlength="100"
							id="txtCheZhuName" /></td>
						<td><select name="ddlCheZhuTelSort" id="ddlCheZhuTelSort"
							style="border: none; width: 100%;">
								<option value="车主电话">车主电话</option>
								<option selected="selected" value="车主手机">车主手机</option>

						</select></td>
						<td><span class="requireSpan">*</span><input
							name="txtCheZhuTel" type="text" maxlength="12" id="txtCheZhuTel" /></td>
						<td>内线:</td>
						<td><input name="txtCheZhuTelNeiXian" type="text"
							maxlength="5" id="txtCheZhuTelNeiXian" /></td>
					</tr>
					<tr>
						<td><span class="requireSpan"></span>住宅电话：</td>
						<td><input name="txtCheZhuZhuZhaiTel" type="text"
							maxlength="12" id="txtCheZhuZhuZhaiTel" /></td>
						<td><span class="requireSpan"></span>传真：</td>
						<td><input name="txtCheZhuChuanZhen" type="text"
							maxlength="12" id="txtCheZhuChuanZhen" /></td>
						<td><span class="requireSpan">*</span>车主手机：</td>
						<td><input name="txtCheZhuMob" type="text" maxlength="12"
							id="txtCheZhuMob" /></td>
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td>称谓：</td>
						<td><select name="ddlCheZhuChengWei" id="ddlCheZhuChengWei"
							style="border: none; width: 100%;">
								<option selected="selected" value=""></option>
								<option value="MR">先生</option>
								<option value="MRS">女士</option>
								<option value="MS">小姐</option>

						</select></td>
						<td>性别： <select name="ddlSex" id="ddlSex"
							style="border: none; width: 40px;">
								<option value=""></option>
								<option value="男">男</option>
								<option value="女">女</option>

						</select>
						</td>
						<td>婚姻状况： <select name="ddlCheZhuHunYinZhuangKuang"
							id="ddlCheZhuHunYinZhuangKuang"
							style="border: none; width: 50px;">
								<option selected="selected" value=""></option>
								<option value="已婚">已婚</option>
								<option value="未婚">未婚</option>
								<option value="离异">离异</option>
								<option value="丧偶">丧偶</option>

						</select>
						</td>
						<td>生日:</td>
						<td><input name="txtCheZhuShengRi" type="text"
							id="txtCheZhuShengRi" class="inputCss easyui-datebox" /></td>
					</tr>
					<tr>
						<td>证件类型：</td>
						<td><select name="ddlCheZhuCardSort" id="ddlCheZhuCardSort"
							style="border: none; width: 100%;">
								<option value="港澳身份证">港澳身份证</option>
								<option value="护照">护照</option>
								<option selected="selected" value="身份证">身份证</option>
								<option value="身份证">身份证</option>
								<option value="组织机构代码">组织机构代码</option>

						</select></td>
						<td><span class="requireSpan">*</span>证件号码：</td>
						<td colspan="3"><input name="txtCheZhuCardNo" type="text"
							maxlength="20" id="txtCheZhuCardNo" onblur="checkCardNo();"
							style="width: 400px;" /></td>

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
							id="txtCheZhuAdd" style="width: 700px;" /></td>
					</tr>

					<!--20130827新加入客户识别信息-->
					<tr>
						<td>关系类型：</td>
						<td><select name="ddlCheZhuGuanXiSort"
							id="ddlCheZhuGuanXiSort" style="border: none; width: 125px;">
								<option value="紧密">紧密</option>
								<option value="良好">良好</option>
								<option value="普通">普通</option>
								<option value="紧张">紧张</option>
								<option selected="selected" value=""></option>

						</select></td>
						<td>家庭类型：</td>
						<td><select name="ddlCheZhuJiaTingSort"
							id="ddlCheZhuJiaTingSort" style="border: none; width: 125px;">
								<option value="未婚">未婚</option>
								<option value="已婚有小孩">已婚有小孩</option>
								<option value="已婚无小孩">已婚无小孩</option>
								<option value="其他">其他</option>
								<option selected="selected" value=""></option>

						</select></td>
						<td>职业类型：</td>
						<td><select name="ddlCheZhuZhiYeSort" id="ddlCheZhuZhiYeSort"
							style="border: none; width: 125px;">
								<option value="医生">医生</option>
								<option value="老师">老师</option>
								<option value="公务员">公务员</option>
								<option value="个体">个体</option>
								<option value="其他">其他</option>
								<option selected="selected" value=""></option>
						</select></td>
						
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td>客户来源：</td>
						<td><input name="txtCheZhuLaiYuan" type="text" maxlength="10"
							id="txtCheZhuLaiYuan" /></td>
						<td>年龄区间：</td>
						<td><select name="ddlCheZhuNianLing" id="ddlCheZhuNianLing"
							style="border: none; width: 125px;">
								<option selected="selected" value="不清楚">不清楚</option>
								<option value="20岁以下">20岁以下</option>
								<option value="21~25岁">21~25岁</option>
								<option value="26~30岁">26~30岁</option>
								<option value="31~35岁">31~35岁</option>
								<option value="36~40岁">36~40岁</option>
								<option value="41~45岁">41~45岁</option>
								<option value="46~50岁">46~50岁</option>
								<option value="51~55岁">51~55岁</option>
								<option value="56~60岁">56~60岁</option>
								<option value="60岁以上">60岁以上</option>

						</select></td>
						<td>收入区间：</td>
						<td><select name="ddlCheZhuShouRu" id="ddlCheZhuShouRu"
							style="border: none; width: 125px;">
								<option selected="selected" value="不清楚">不清楚</option>
								<option value="3000以下">3000以下</option>
								<option value="3000~5999元">3000~5999元</option>
								<option value="6000~9999元">6000~9999元</option>
								<option value="10000~14999元">10000~14999元</option>
								<option value="15000~19999元">15000~19999元</option>
								<option value="20000~30000元">20000~30000元</option>
								<option value="30000元以上">30000元以上</option>

						</select></td>
						<td>爱好：</td>
						<td><input name="txtCheZhuAiHao" type="text" maxlength="20"
							id="txtCheZhuAiHao" /></td>
					</tr>

					<tr>
						<td>学历：</td>
						<td><select name="ddlCheZhuXueLi" id="ddlCheZhuXueLi"
							style="border: none; width: 125px;">
								<option selected="selected" value="不清楚">不清楚</option>
								<option value="小学">小学</option>
								<option value="初中">初中</option>
								<option value="高中/中专/技校">高中/中专/技校</option>
								<option value="大专">大专</option>
								<option value="本科">本科</option>
								<option value="硕士">硕士</option>
								<option value="博士">博士</option>

						</select></td>
						<td>E-Mail：</td>
						<td><input name="txtCheZhuEMail" type="text" maxlength="50"
							id="txtCheZhuEMail" /></td>
						<td>购车次数：</td>
						<td><input name="txtCheZheGouCheQty" type="text"
							maxlength="3" id="txtCheZheGouCheQty" class="easyui-numberbox"
							data-options="min:0,max:30,precision:0" /></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>工作单位：</td>
						<td colspan="7"><input name="txtCheZhuGongZuoDanWei"
							type="text" maxlength="60" id="txtCheZhuGongZuoDanWei"
							style="width: 98%;" /></td>
					</tr>


				</table>
			</div>
			<!--车主信息 end-->

			<!--联系人信息 start-->
			<div id="bDiv" style="margin: 2 0 0 5; display: none;">
				<br />
				<table border="0" cellpadding="0" cellspacing="0" width="900px"
					style="border-collapse: collapse; border: 1px solid #9a9a9a">
					<tr>
						<td onclick="cheZhuToLianXiRen()"><span class="requireSpan">*</span>联系人姓名：</td>
						<td><input name="txtLianXiRenName" type="text" maxlength="20"
							id="txtLianXiRenName" /></td>
						<td>性别：</td>
						<td><select name="ddlLianXiRenSex" id="ddlLianXiRenSex"
							style="border: none; width: 125px">
								<option selected="selected" value="男">男</option>
								<option value="男">男</option>
								<option value="女">女</option>

						</select></td>
						<td><span class="requireSpan">*</span>联系人电话：</td>
						<td><input name="txtLianXiRenTel" type="text" maxlength="14"
							id="txtLianXiRenTel" /></td>
						<td><span class="requireSpan">*</span>联系人手机：</td>
						<td><input name="txtLianXiRenMob" type="text" maxlength="14"
							id="txtLianXiRenMob" /></td>
					</tr>

					<tr>
						<td>称谓：</td>
						<td><select name="ddlLianXiRenChengWei"
							id="ddlLianXiRenChengWei" style="border: none; width: 100%;">
								<option selected="selected" value="MR">先生</option>
								<option value="MRS">女士</option>
								<option value="MS">小姐</option>

						</select></td>
						<td>职位：</td>
						<td><select name="ddlLianXiRenZhiWei" id="ddlLianXiRenZhiWei"
							style="border: none; width: 100%;">
								<option value="医生">医生</option>
								<option value="老师">老师</option>
								<option value="公务员">公务员</option>
								<option value="个体">个体</option>
								<option value="其他">其他</option>
								<option selected="selected" value=""></option>

						</select></td>
						<td>联系人生日：</td>
						<td><input name="txtLianXiRenBirthday" type="text"
							id="txtLianXiRenBirthday" class="inputCss easyui-datebox" /></td>

						<td></td>
						<td></td>
					</tr>

					<tr>

						<td>证件类型：</td>
						<td><select name="ddlLianXiCardSort" id="ddlLianXiCardSort"
							style="border: none; width: 100%;">
								<option selected="selected" value="身份证">身份证</option>
								<option value="港澳身份证">港澳身份证</option>
								<option value="护照">护照</option>
								<option value="身份证">身份证</option>
								<option value="组织机构代码">组织机构代码</option>

						</select></td>
						<td><span class="requireSpan">*</span>证件号码：</td>
						<td colspan="3"><input name="txtLianXiRenCardNo" type="text"
							maxlength="20" id="txtLianXiRenCardNo"
							onblur="cardNoToDate('txtLianXiRenCardNo','txtLianXiRenBirthday')"
							style="width: 200px;" /></td>

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
						<td><span class="requireSpan">*</span>车主地址：</td>
						<td colspan="7"><input name="txtLianXiRenAdd" type="text"
							maxlength="200" id="txtLianXiRenAdd" style="width: 700px;" /></td>
					</tr>
					<tr>
						<td><span class="requireSpan"></span>驾照类型：</td>
						<td><select name="ddlLianXiRenJiaZhaoSort"
							id="ddlLianXiRenJiaZhaoSort" style="border: none; width: 125px">
								<option value="A">A(1年)</option>
								<option value="B">B(1年)</option>
								<option selected="selected" value="C">C(6年)</option>

						</select></td>
						<td><span class="requireSpan"></span>驾照日期：</td>
						<td><input name="txtLianXiRenJiaZhaoDate" type="text"
							id="txtLianXiRenJiaZhaoDate" class="inputCss easyui-datebox" />
						</td>
						<td><span class="requireSpan"></span>初领驾照日期：</td>
						<td><input name="txtLianXiRenFirstJiaZhaoDate" type="text"
							id="txtLianXiRenFirstJiaZhaoDate" class="inputCss easyui-datebox" />
						</td>
						<td><span class="requireSpan"></span>驾照所属地区：</td>
						<td><input name="txtLianXiRenJiaZhaoArea" type="text"
							id="txtLianXiRenJiaZhaoArea" /></td>
					</tr>

					<tr>

						<td>联系人特征：</td>
						<td><input name="txtLianXiRenTeZheng" type="text"
							id="txtLianXiRenTeZheng" /></td>
						<td>E-Mail：</td>
						<td><input name="txtLianXiRenEMail" type="text"
							id="txtLianXiRenEMail" /></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>工作单位：</td>
						<td colspan="7"><input name="txtLianXiRenGongZuoDanWei"
							type="text" maxlength="60" id="txtLianXiRenGongZuoDanWei"
							style="width: 98%;" /></td>
					</tr>
					<tr>
						<td>接待提醒：</td>
						<td colspan="7"><input name="txtCheLiangJieDaiTiXing"
							type="text" maxlength="100" id="txtCheLiangJieDaiTiXing"
							style="width: 98%; font-size: 12px; font-weight: bold; color: Blue;" />
						</td>
					</tr>


				</table>
			</div>
			<!--联系人信息 end-->
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
						<td style="width: 65px;">变速箱号:</td>
						<td style="width: 100px;"><s:property
								value='txtCheLiangBianSuXiangHao' /></td>
					</tr>
					<tr>
						<td>制造厂商：</td>
						<td><s:property value='ddlCheLiangZhiZaoShang' /></td>
						<td>车系：</td>
						<td><s:property value='ddlCheLiangCheXi' /></td>
						<td>车型代码：</td>
						<td><s:property value='txtCheLiangCheXingDaiMa' /></td>
						<td>车身颜色：</td>
						<td><s:property value='ddlCheShenColor' /></td>
					</tr>
					<tr>
						<td>购车日期：</td>
						<td><s:property value='txtGouCheDate' /></td>
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
			<a onclick="return saveCheck();" id="lnkSave"
				class="easyui-linkbutton"
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
			if ($("#ddlSex").val() != "") {
				$("#ddlLianXiRenSex").val($("#ddlSex").val());
			}
			if ($("#txtCheZhuTel").val() != "") {
				$("#txtLianXiRenTel").val($("#txtCheZhuTel").val());
			}
			if ($("#txtCheZhuMob").val() != "") {
				$("#txtLianXiRenMob").val($("#txtCheZhuMob").val());
			}
			if ($("#ddlCheZhuCardSort").val() != "") {
				$("#ddlLianXiCardSort").val($("#ddlCheZhuCardSort").val());
			}
			if ($("#txtCheZhuCardNo").val() != "") {
				$("#txtLianXiRenCardNo").val($("#txtCheZhuCardNo").val());
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
			if ($("#ddlLianXiRenSex").val() != "") {
				$("#ddlSex").val($("#ddlLianXiRenSex").val());
			}
			if ($("#txtLianXiRenTel").val() != "") {
				$("#txtCheZhuTel").val($("#txtLianXiRenTel").val());
			}
			if ($("#txtLianXiRenMob").val() != "") {
				$("#txtCheZhuMob").val($("#txtLianXiRenMob").val());
			}
			if ($("#ddlLianXiCardSort").val() != "") {
				$("#ddlCheZhuCardSort").val($("#ddlLianXiCardSort").val());
			}
			if ($("#txtLianXiRenCardNo").val() != "") {
				$("#txtCheZhuCardNo").val($("#txtLianXiRenCardNo").val());
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

		function saveCheck() {
			var err = "";

			//验证必须填项
			if ($.trim($("#txtCheZhuName").val()) == "") {
				err += "车主信息->车主姓名不能为空！\n";
			}
			if ($.trim($("#txtCheZhuTel").val()) == "") {
				err += "车主信息->车主联系电话不能为空！\n";
			}
			if ($.trim($("#txtCheZhuMob").val()) == "") {
				err += "车主信息->车主手机不能为空！\n";
			}
			if ($.trim($("#ddlCheZhuCardSort").val()) == "") {
				err += "车主信息->证件类型不能为空！\n";
			}
			if ($.trim($("#txtCheZhuCardNo").val()) == "") {
				err += "车主信息->证件号码不能为空！\n";
			}
			if ($.trim($("#ddlCheZhuP").val()) == "") {
				err += "车主信息->所属区域省份不能为空！\n";
			}
			if ($.trim($("#ddlCheZhuC").val()) == "") {
				err += "车主信息->所属区域市不能为空！\n";
			}
			if ($.trim($("#ddlCheZhuA").val()) == "") {
				err += "车主信息->所属区域地区不能为空！\n";
			}
			if ($.trim($("#txtCheZhuAdd").val()) == "") {
				err += "车主信息->联系地址不能为空！\n";
			}
			if ($.trim($("#txtLianXiRenName").val()) == "") {
				err += "联系人信息->联系人姓名不能为空！\n";
			}
			if ($.trim($("#ddlLianXiRenSex").val()) == "") {
				err += "联系人信息->联系人性别不能为空！\n";
			}
			if ($.trim($("#txtLianXiRenTel").val()) == "") {
				err += "联系人信息->联系人电话不能为空！\n";
			}
			if ($.trim($("#txtLianXiRenMob").val()) == "") {
				err += "联系人信息->联系人手机不能为空！\n";
			}
			if ($.trim($("#ddlLianXiCardSort").val()) == "") {
				err += "联系人信息->联系人证件类型不能为空！\n";
			}
			if ($.trim($("#txtLianXiRenCardNo").val()) == "") {
				err += "联系人信息->联系人证件号码不能为空！\n";
			}
			//if ($.trim($("#txtLianXiRenBirthday").val()) == "") { err += "联系人信息->联系人生日不能为空！\n"; }
			if ($.trim($("#ddlLianXiRenP").val()) == "") {
				err += "联系人信息->联系人所在省份不能为空！\n";
			}
			if ($.trim($("#ddlLianXiRenC").val()) == "") {
				err += "联系人信息->联系人所在市不能为空！\n";
			}
			if ($.trim($("#ddlLianXiRenA").val()) == "") {
				err += "联系人信息->联系人所在区不能为空！\n";
			}
			if ($.trim($("#txtLianXiRenAdd").val()) == "") {
				err += "联系人信息->联系人地址不能为空！\n";
			}
			//if ($.trim($("#ddlLianXiRenJiaZhaoSort").val()) == "") { err += "联系人信息->联系人证件类型不能为空！\n"; }
			//if ($.trim($("#txtLianXiRenJiaZhaoDate").val()) == "") { err += "联系人信息->联系人证件号码不能为空！\n"; }        

			//数据录入格式是否正确验证
			if (err == "") {
				if ($("#ddlCheZhuTelSort").val() == "车主手机") {
					if (!checkMobile($("#txtCheZhuTel").val())) {
						err += "车主手机填写错误！";
						changeColor("txtCheZhuTel", "red");
					} else {
						changeColor("txtCheZhuTel", "white");
					}
				} else {
					if (!checkTel($("#txtCheZhuTel").val())) {
						err += "车主电话填写错误！";
						changeColor("txtCheZhuTel", "red");
					} else {
						changeColor("txtCheZhuTel", "white");
					}
				}

				if (!checkTel($("#txtCheZhuZhuZhaiTel").val())) {
					err += "车主住宅电话填写错误！";
					changeColor("txtCheZhuZhuZhaiTel", "red");
				} else {
					changeColor("txtCheZhuZhuZhaiTel", "white");
				}
				if (!checkTel($("#txtCheZhuChuanZhen").val())) {
					err += "车主传真填写错误！";
					changeColor("txtCheZhuChuanZhen", "red");
				} else {
					changeColor("txtCheZhuChuanZhen", "white");
				}
				if (!checkMobile($("#txtCheZhuMob").val())) {
					err += "车主手机填写错误！";
					changeColor("txtCheZhuMob", "red");
				} else {
					changeColor("txtCheZhuMob", "white");
				}

				if (!checkMobile($("#txtLianXiRenMob").val())) {
					err += "联系人手机填写错误！";
					changeColor("txtLianXiRenMob", "red");
				} else {
					changeColor("txtLianXiRenMob", "white");
				}

			}

			if (err != "") {
				alert(err);
				return false;
			}else{
				return true;				
			}
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