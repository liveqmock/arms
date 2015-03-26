<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html >
<html>
<head>
<title>用户选择</title>
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

<link href="../style/common.css" rel="stylesheet"
	type="text/css" />
<script src="../js/common.js" type="text/javascript"></script>

<body>
	<form name="form1" method="post" id="form1">
		<div style="margin: 10px 0;"></div>
		<div class="easyui-layout" style="width: 500px; height: 390px;">
			<div data-options="region:'north'" style="height: 340px">
			<input style="display:none;" type="text" id="UserId" value="<s:property value="UserId" />" />
				<ul class="easyui-tree" treeHeight='300px'>			
					<li><span><s:if test="shop.companyFlag=='blt'">深圳市八路通汽车服务连锁机构</s:if><s:if test="shop.companyFlag=='cdf'">深圳市车道夫汽车服务连锁机构</s:if></span>
					<ul>    					
					<s:iterator value='shopList' id="shop" >				
							<li><span><s:property value="shopName" /></span>
								<ul>
								<s:iterator value='departMentList' id="departMent" >
									<li><span><s:property value="departName" /></span>
										<ul>	
												<s:iterator value='systemOwnerList' id="systemOwner" >	
														<s:if test="#shop.shopName==#systemOwner.shopName && #departMent.departName ==#systemOwner.departName">	
													<li><span><input type='checkbox'
															name='selected' value="<s:property value="#systemOwner.displayName" />" id='<s:property value="#systemOwner.userId" />' /><s:property value="#systemOwner.displayName" /></span>												
															</li>
														</s:if>	
												</s:iterator>													
												</ul>
											</li>
											</s:iterator>
								</ul></li>
						</s:iterator>
						</ul>					
						</li>
						
				</ul>
			</div>
			<div data-options="region:'south'"
				style="height: 50px; text-align: center;">
				<a class="easyui-linkbutton" href="javascript:backData()">确定</a> <a
					class="easyui-linkbutton" href="javascript:closeWin()">取消</a>
			</div>
		</div>
	</form>

	<script type="text/javascript" language="javascript">
		$(function() {
			window.returnValue = "";
		});

		var obj = $("li");
		var thisId = "";
		for (var i = 0; i < obj.length; i++) {
			if ($(obj[i]).html().indexOf($("#"+$("#UserId").val().trim()).val()) > 0) {
				$(obj[i]).attr("state", "open");
			} else {
				if ($(obj[i]).html().indexOf("<ul>") > 0
						|| $(obj[i]).html().indexOf("<UL>") > 0) {

					$(obj[i]).attr("state", "closed");
				}
			}
		}

		//返回数据 
		function backData() {
			var t1 = "";
			var t2 = "";
			var obj = document.getElementsByName("selected");
			for (var i = 0; i < obj.length; i++) {
				if (obj[i].checked == true) {
						if($("#UserId").val().trim()== obj[i].id)
							{
							alert("您不能给自己发送消息！");
							return;
						}
					t1 += obj[i].value + ",";
					t2 += obj[i].id + ",";
				}
			}
			
			window.returnValue = t1 + "|" + t2;
			window.opener = null;
			window.close();
		}

		//关闭窗体
		function closeWin() {
			window.opener = null;
			window.close();
		}
	</script>

</body>
</html>