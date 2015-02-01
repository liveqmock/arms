<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html >
<html>
<head>
<title>用户选择</title>
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

<link href="../style/common.css?v=20130326" rel="stylesheet"
	type="text/css" />
<script src="../js/common.js?v20120" type="text/javascript"></script>

<!--
使用方法:
-->

<body>
	<form name="form1" method="post" id="form1">
		<div style="margin: 10px 0;"></div>
		<div class="easyui-layout" style="width: 500px; height: 390px;">
			<div data-options="region:'north'" style="height: 340px">
				<ul class="easyui-tree" treeHeight='300px'>
					<li><span>部门信息</span>
					<ul>    
					
					<s:iterator value='jigouList' >
					
					
							<li><span><s:property value="jigouName" /></span>
								<ul>
									<li><span>IT部</span>
										<ul>							
													<li><span><input type='checkbox'
															name='selected' id='小邓' />小邓</span></li>
													<li><span><input type='checkbox'
															name='selected' id='小乐' />小乐</span></li>
													<li><span><input type='checkbox'
															name='selected' id='小院' />小院</span></li>
												</ul>
											
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

			<div data-options="region:'east'"
				style="width: 180px; height: 0px; display: none;"></div>
			<div data-options="region:'west'"
				style="width: 100px; height: 0px; display: none;"></div>
			<div data-options="region:'center'" style="display: none;"></div>
		</div>
	</form>

	<script type="text/javascript" language="javascript">
		$(function() {
			window.returnValue = "";
		});

		var obj = $("li");
		var thisId = "";
		for (var i = 0; i < obj.length; i++) {
			if ($(obj[i]).html().indexOf("陈荣华") > 0) {
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
					t1 += obj[i].id + ",";
					t2 += obj[i].value + ",";
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