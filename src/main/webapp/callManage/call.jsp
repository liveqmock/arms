
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>寻呼发布</title>

<script language="javascript" type="text/javascript">
	function thisClose() {
		try {
			parWinClose();
		} catch (e) {
			window.opener = null;
			window.close();
		}
	}
</script>

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
<body style="width: 780px;margin: 2px">
	<form name="form1" action="insertMaill.action" method="post" id="form1">
		<!--按钮导航区域 start-->
		<div style=" border-bottom: 1px solid #c7c8c9;">
			<table border="0"
				style="width: 780px; height: 30px; margin-top: 1px;">
				<tr>
					<td style="display: block; width: 200px;"></td>
					<td id="Td1"
						style="width: 100px; cursor: pointer; text-align: center; background-color: Gray; color: White;">信息发布</td>
					<td id="tab1"
						style="width: 100px; cursor: pointer; text-align: center;"
						onclick="centerShow()">待阅信息</td>
					<td id="tab2"
						style="width: 100px; cursor: pointer; text-align: center;"
						onClick="sendShow()">已发信息</td>
					<td id="tab3"
						style="width: 100px; cursor: pointer; text-align: center;"
						onClick="receiveShow()">已收信息</td>
					<td id="Td2"
						style="width: 100px; cursor: pointer; text-align: center;"
						onclick="thisClose();">关闭</td>
				</tr>
			</table>
		</div>
		<!--按钮导航区域 end-->

		<div style="text-align: right;">
			<a class="easyui-linkbutton" onClick="return saveCheck();">发送</a> <input
				type="submit" name="btnSend" value="" id="btnSend"
				style="display: none;" />
		</div>
		<div>
			<table border="0" width="100%">
				<tr>
					<td valign="top" width="50px">主送:</td>
					<td><input name="hidToUserId" type="hidden" id="hidToUserId" />
						<input name="hidToUserName" type="text" id="hidToUserName" style="width: 100%"
						onClick="choiceUser(1)" /></td>
				</tr>
				<tr>
					<td valign="top">抄送:</td>
					<td><input name="hidCCUserId" type="hidden" id="hidCCUserId" />
						<input type="text" id="hidCCUserName" name="hidCCUserName" style="width: 100%"
						onclick="choiceUser(2)" /></td>
				</tr>
				<tr>
					<td valign="top">正文:</td>
					<td><textarea name="txtRemarks" id="txtRemarks" cols="10"
							rows="19" style="width: 100%" maxlength="300"></textarea></td>
				</tr>
			</table>
		</div>
		<div style="text-align: right;">
			<a class="easyui-linkbutton" onClick="return saveCheck();">发送</a>
		</div>
	</form>

	<script language="javascript" type="text/javascript">
		function receiveShow() {
			location.href = "receiveCall.action";
		}

		function centerShow() {
			location.href = "callCenter.action";
		}
		function sendShow() {
			location.href = "sendCall.action";
		}

		function choiceUser(sort) {
			var selected = "";
			if (sort == "1") {
				selected = $("#hidToUserId").val();
			}
			if (sort == "2") {
				selected = $("#hidCCUserId").val();
			}
			if (sort == "3") {
				selected = $("#hidMCCUserId").val();
			}

			var t = "";
			var user = window.showModalDialog(
					"../index/userSelect.action?isSelected=1&selected="
							+ selected + "&d=" + new Date(), "cc",
					"dialogWidth=500px;dialogHeight=400px");
			if (user != "") {
				t = user.split("|");
			}

			if (sort == "1") {
				$("#hidToUserId").val(t[1]);
				$("#hidToUserName").val(t[0]);
			}
			if (sort == "2") {
				$("#hidCCUserId").val(t[1]);
				$("#hidCCUserName").val(t[0]);
			}
		}

		var btnFlag = "0";
		function saveCheck() {
			if (btnFlag == "0") {
				btnFlag = "1"
			} else {
				return false;
			}

			if ($("#hidToUserId").val() == "") {
				alert('请重新选择主送人员!');
				btnFlag = "0";
				return false;
			}

			if ($.trim($("#txtRemarks").val()) == "") {
				alert('发送内容必须填写!');
				btnFlag = "0";
				return false;
			}

			if ($("#txtRemarks").val().length > 500) {
				alert('发送内容过长!');
				btnFlag = "0";
				return false;
			}

			$("#btnSend").click();
		}
	</script>


</body>
</html>