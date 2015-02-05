<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>个人信息修改</title>
<link rel="stylesheet" type="text/css"
	href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" />
<link rel="stylesheet" type="text/css"
	href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" />
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="../js/common.js?v=90e943c2686f4150a8a9caace115b2b0"
	type="text/javascript"></script>
<link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0"
	rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
</head>
<body>
	<form name="form1" method="post" id="form1">
		<div>
			<input type="hidden" name="userId"
				value="<s:property value='user.userId'/>" />
		</div>

		<div class="allRegion">
			<div class="title">
				<table border="0" style="width: 100%;">
					<tr>
						<td class="titlebg"><span>个人设置</span> <span class="titleSpan">(密码管理)</span></td>
						<td align="right"></td>
					</tr>
				</table>
			</div>
			<div style="padding-left: 10px;">
				<table border="0">
					<tr>
						<td colspan="2">密码修改</td>
					</tr>
					<tr>
						<td>您的旧密码:</td>
						<td><input name="txtOldPwd" type="password" maxlength="20"
							id="txtOldPwd" /></td>
					</tr>
					<tr>
						<td>输入新密码:</td>
						<td><input name="txtNewPwd1" type="password" maxlength="20"
							id="txtNewPwd1" /></td>
					</tr>
					<tr>
						<td>新密码确认:</td>
						<td><input name="txtNewPwd2" type="password" maxlength="20"
							id="txtNewPwd2" /></td>
					</tr>
					<tr>
						<td colspan="2"><a onclick="return saveCheck();" id="lnkSave"
							class="easyui-linkbutton"
							href="javascript:__doPostBack('lnkSave','')">修改密码</a></td>
					</tr>
				</table>
			</div>

		</div>
	</form>

	<script language="javascript" type="text/javascript">
		function __doPostBack(eventTarget, eventArgument) {
			$("#form1").form('submit', {
				url : "updateUserPersonalInfo.action",
				success : function(result) {
					var result = eval('(' + result + ')');
					if (result.statusCode == "success") {
						alert('密码修改成功！');
						parWinClose();
					} else if (result.statusCode == "oldPwd_error") {
						alert('验证旧密码失败！');
					} else if (result.statusCode == "failed") {
						alert('更新密码失败！');
					}
				}
			});
		}

		function saveCheck() {
			var oldPwd = $.trim($('#txtOldPwd').val());
			var newPwd1 = $.trim($('#txtNewPwd1').val());
			var newPwd2 = $.trim($('#txtNewPwd2').val());

			if (oldPwd == "" || newPwd1 == "" || newPwd2 == "") {
				alert("密码都必须填写!");
				return false;
			}
			if (newPwd1 != newPwd2) {
				alert("两次输入的新密码不一致!");
				return false;
			}

			return true;
		}
	</script>

</body>
</html>