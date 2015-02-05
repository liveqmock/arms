<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>汽修管理系统</title>
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
<link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
</head>

<link href="../style/default/main.css" rel="stylesheet" type="text/css" />

<script src="../js/frame/jquery.ztree.core-3.5.min.js"
	type="text/javascript"></script>
<link href="../style/zTreeStyle/zTreeStyle.css" rel="stylesheet"
	type="text/css" />
<script src="../js/frame/jquery.Cookie.js" type="text/javascript"></script>

<script language="javascript" type="text/javascript">
	$(function() {
		$("#menuTree").hide();
		$("#menuData").click(menuClick);
		$("#main").height($(window).height());
		mainAutoSize();
		$.fn.zTree
				.init(
						$("#treeDemo"),
						setting,
						[ {
							name : "系统菜单",
							open : true,
							font : {
								'font-style' : '微软雅黑'
							},
							children : [
									{
										name : "维修接待",
										font : {
											'font-style' : '微软雅黑'
										},
										children : [
												{
													name : "维修接待",
													font : {
														'font-style' : '微软雅黑'
													},
													url : "",
													target : "_blank",
													click : "mdfMenu('e729a493-1fe5-45f8-910c-060e7d4a4865','维修接待','../saleAfterManage/saleAfterCustomSearch.action');"
												},
												{
													name : "工单管理",
													font : {
														'font-style' : '微软雅黑'
													},
													url : "",
													target : "_blank",
													click : "mdfMenu('e3f0fe70-9e54-4fe5-9fbc-a0004af38ab5','工单管理','../saleAfterManage/saleAfterGongDanManage.action');"
												} ],
										url : "",
										target : "_blank"
									},
									{
										name : "配件管理",
										font : {
											'font-style' : '微软雅黑'
										},
										children : [
												{
													name : "出入库管理",
													font : {
														'font-style' : '微软雅黑'
													},
													url : "",
													target : "_blank",
													click : "mdfMenu('aef416a9-a829-4b9d-acb1-d31d4e2e1ef4','出入库管理','../storeOtherManage/storeOtherInsertBillManage.action');"
												},
												{
													name : "即时库存",
													font : {
														'font-style' : '微软雅黑'
													},
													url : "",
													target : "_blank",
													click : "mdfMenu('6968c5ef-3eff-4242-ac88-b6d645d6efd9','即时库存','../storeOtherManage/jiShiKuCunManage.action');"
												},
												{
													name : "库存日志",
													font : {
														'font-style' : '微软雅黑'
													},
													url : "",
													target : "_blank",
													click : "mdfMenu('6968c5ef-3eff-4242-ac88-b6d645dsds4','库存日志','../storeOtherManage/kuCunOperLog.action');"
												}],
										url : "",
										target : "_blank"
									},
									{
										name : "基础设置",
										font : {
											'font-style' : '微软雅黑'
										},
										children : [
												{
													name : "车辆品牌",
													font : {
														'font-style' : '微软雅黑'
													},
													url : "",
													target : "_blank",
													click : "mdfMenu('11213585-967e-42e6-9e4c-2a2f1dc88sac','车辆品牌管理','../webSetup/carbrand.action');"
												},
												{
													name : "车辆车系",
													font : {
														'font-style' : '微软雅黑'
													},
													url : "",
													target : "_blank",
													click : "mdfMenu('11213585-967e-42e6-9e4c-2a2f1dc88999','车辆车系管理','../webSetup/carMoDel.action');"
												},
												{
													name : "车辆类型",
													font : {
														'font-style' : '微软雅黑'
													},
													url : "",
													target : "_blank",
													click : "mdfMenu('11213585-967e-42e6-9e4c-2a2f1dc88802','车辆类型管理','../webSetup/vehiCleTypeManage.action');"
												},
												{
													name : "帐套",
													font : {
														'font-style' : '微软雅黑'
													},
													url : "",
													target : "_blank",
													click : "mdfMenu('11213585-967e-42e6-9e4c-2a2f1dc88sac','帐套管理','../webSetup/zhangTao.action');"
												},
												{
													name : "配件仓库",
													font : {
														'font-style' : '微软雅黑'
													},
													url : "",
													target : "_blank",
													click : "mdfMenu('4ab70d55-4c40-40bd-9849-b7a72c85f4d9','仓库管理','../webSetup/storeOtherSetManage.action');"
												},
												{
													name : "供应商",
													font : {
														'font-style' : '微软雅黑'
													},
													url : "",
													target : "_blank",
													click : "mdfMenu('aeb72bd6-5aa7-4fba-a097-9b8f0ad2b81f','供应商管理','../webSetup/supplierManage.action');"
												},
												{
													name : "维修项目",
													font : {
														'font-style' : '微软雅黑'
													},
													url : "",
													target : "_blank",
													click : "mdfMenu('7acf3c55-3939-41ba-b525-3a1dfa035ce9','维修项目','../webSetup/saleAfterWeiXiuXiangMuSet.action');"
												},
												{
													name : "套餐",
													font : {
														'font-style' : '微软雅黑'
													},
													url : "",
													target : "_blank",
													click : "mdfMenu('6aebe08f-9fff-4492-885f-a207c1e7ae81','套餐管理','../webSetup/saleAfterTaoCanManage.action');"
												},
												{
													name : "维修组主修人",
													font : {
														'font-style' : '微软雅黑'
													},
													url : "",
													target : "_blank",
													click : "mdfMenu('7acf3c55-3939-41ba-b525-3a1dfa035c88','维修派工管理','../webSetup/weiXiuPaiGongManage.action');"
												}, ],
										url : "",
										target : "_blank"
									},
									{
										name : "系统管理",
										font : {
											'font-style' : '微软雅黑'
										},
										children : [
												{
													name : "机构管理",
													font : {
														'font-style' : '微软雅黑'
													},
													url : "",
													target : "_blank",
													click : "mdfMenu('6aebe08f-9fff-4492-885f-a207c1e78888','机构管理','../saleAfterDiscount/jiGouManage.action');"
												},
												{
													name : "部门管理",
													font : {
														'font-style' : '微软雅黑'
													},
													url : "",
													target : "_blank",
													click : "mdfMenu('6aebe08f-9fff-4492-885f-a207c1e78899','部门管理','../saleAfterDiscount/departMentManage.action');"
												},
												{
													name : "用户管理",
													font : {
														'font-style' : '微软雅黑'
													},
													url : "",
													target : "_blank",
													click : "mdfMenu('6aebe08f-9fff-4492-885f-a20712348899','系统用户管理','../saleAfterDiscount/systemOwnerManage.action');"
												} ],
										url : "",
										target : "_blank"
									} ],
							url : "",
							target : "_blank",
							click : "mdfMenu('00000000-0000-0000-0000-000000000001','系统菜单','');"
						} ]);
		buildLink();

		$("#tabList")
				.tabs(
						'add',
						{
							title : "维修接待",
							content : "<iframe src='../saleAfterManage/saleAfterCustomSearch.action' class=\"tabDefault\"  style='width:100%;height:100%;' frameborder='0' ></iframe>",
							closable : false
						});

	});

	$(window).resize(mainAutoSize);

	function mainAutoSize() {
		$("#menu").css("left", 3);
		$("#menu").css("top", 55);

		//改变 tabDefault
		$(".tabDefault").css("height", $(document.body).height() - 80);

	}

	/*
	菜单导航
	 */
	function menuClick() {
		$("#menuTree").css("left", 20);
		$("#menuTree").css("top", 85);
		$("#menuTreeRight").css("left", 204);
		$("#menuTreeRight").css("top", 4);

		$("#menuTree").show();
		$(document).click(function(event) {
			var id = event.target.id;
			if (id.indexOf("menu") < 0 && id.indexOf("tree") < 0) {
				$("#menuTree").hide();
			}
		});
	}

	//菜单隐藏js

	function hideMenu() {
		try {
			$("#menuTree").hide();
		} catch (e) {
		}
	}

	//树菜单加载 start
	var setting = {};
	//tab自动添加
	function mdfMenu(menuGuid, t, url) {
		if (url == "" || url.length < 4) {
			hideMenu(); //隐藏菜单
			return;
		}
		//判断Tab是否存在
		url1 = url;
		//if(url.indexOf("?")>0)
		//{
		//url = url + "&d=" + new Date();
		//}else
		//{
		//url = url + "?d=" + new Date();
		//}
		$("#tabList")
				.tabs(
						'add',
						{
							title : t,
							content : "<iframe src='"
									+ url
									+ "' name='tabFrame' class=\"tabDefault\"  style='width:100%;height:100%;' frameborder='0' ></iframe>",
							closable : true
						});

		var menuId = $.cookie("menuIda17a7061-9f34-4ede-828b-3b1396ec4eaf");
		if (menuId == undefined) {
			menuId = "";
		}

		if (menuId.indexOf(t) < 0) {
			menuId = t + "," + url1 + ",0" + "|" + menuId;
		}

		$.cookie('menuIda17a7061-9f34-4ede-828b-3b1396ec4eaf', menuId);

		buildLink(); //生成常用菜单
		hideMenu(); //隐藏菜单

	}

	function buildLink() {

		var t = "";
		var menuId = $.cookie("menuIda17a7061-9f34-4ede-828b-3b1396ec4eaf");
		if (menuId == undefined) {
			menuId = "";
		}
		var info = "<tr><td style='width:15px;height:20px;'></td><td id='menuTb'>常用链接</td></tr><tr><td colspan='2' style='height:2px;background-color:gray;'></tr>";
		var t1 = menuId.split("|");
		var t2 = "";
		for (var i = 0; i < t1.length; i++) {
			t2 = t1[i].split(",");
			if (t2.length > 2) {
				if (i < 10) {
					t = t + "|" + t2[0] + "," + t2[1] + ",0";
				}
				info += "<tr  onmouseover=\"this.style.backgroundColor='#e0ecff'\" onmouseout=\"this.style.backgroundColor='#FFFFFF'\"><td style='width:15px;height:25px;'></td><td id='menuTb"
						+ i
						+ "'  onclick=mdfMenu('t','"
						+ t2[0]
						+ "','"
						+ t2[1] + "') >" + t2[0] + "</td></tr>";
			}
		}

		$("#menuTb").html(info);

		//调整cookie 只保留前十条
		$.cookie('menuIda17a7061-9f34-4ede-828b-3b1396ec4eaf', t);

	}
</script>


<script language="javascript" type="text/javascript">
	/*弹出网页对话框*/
	function winopen(url, WinName, w, h, Modal, Shadow, Closed) {
		document.getElementById('winDiv').innerHTML = "<iframe src='"
				+ url
				+ "' srcoll='yes'  style='height:100%;width:100%' frameBorder='0' ></iframe>";
		$("#winDiv").window({
			title : WinName,
			width : w,
			height : h,
			maximizable : false,
			minimizable : false,
			modal : Modal,
			shadow : Shadow,
			closed : Closed
		});
	}

	function winClose() {
		$('#winDiv').window('close');
	}
</script>


<body class="easyui-layout">
	<!--顶部导航 start-->
	<div data-options="region:'north',border:false"
		style="height: 55px; padding-left: 15px; padding-right: 15px;">
		<table border='0'>
			<tr>
				<td><img src="../image/DCLogo.png" alt='logo' /></td>
				<td><img src="../image/ShineClubLogo.png"
					style='margin-left: 10px;' alt='logo' /></td>
				<td style='width: 75%; vertical-align: bottom; color: Blue;'>[<s:property value='user.jigouName' />] <a href='#'
					onclick="winopen('userPersonalChange.action','个人设置',900,500,true,true,false);"><s:property value='user.displayName' /></a>
					&nbsp;&nbsp;<span id="time"></span></td>
				<td style='width: 62%; vertical-align: bottom; color: Blue;'><a
					href='#'
					onclick="winopen('groupSelfSet.jsp','机构扩展设置',900,500,true,true,false);"></a>
				   <a href='#'
					onclick="winopen('userPersonalChange.action','个人设置',900,500,true,true,false);"></a> &nbsp;&nbsp;<span id="time"></span></td>
				<td nowrap='nowrap' style='width: 300px;'><img id="imgCallSrc" src='../image/voice.png' alt='消息' title="消息"
					onclick="showmsg(0);" /> <span id="callSpan"
					style="color: Red; font-weight: bold; font-size: 8px; position: relative; left: -10px; top: 0px; z-index: 10;"></span><img src="../image/exit.png" alt='退出' title="退出" onclick="exit()" />
				</td>
			</tr>
		</table>
	</div>
	<!--顶部导航 end-->

	<!--菜单栏目 start-->
	<div id="menu">
		<div id="menuData" onmouseover="javascript:this.style.color='black';"
			onmouseout="javascript:this.style.color='gray';">导航菜单</div>
	</div>

	<!--菜单树 start-->
	<div id="menuTree">
		<ul id="treeDemo" class="ztree"></ul>
		<div id="menuTreeRight">
			<table border='0' cellpadding='0' cellspacing='0' id='menuTb'
				width='98%'>
			</table>
		</div>
		<div id="menuTreeBottom" style="margin-left: 3px;">
			<!--菜单查询 start-->
			<!-- 查询:-->
			<input type="text" id="menuSearch" style="border: none;"
				width="100px" />
			<!--菜单查询 end-->
		</div>
	</div>
	<!--菜单树 end-->

	<div data-options="region:'center'">
		<div class="easyui-tabs" id="tabList" fit="true" border="false">
			<div id="tabMenu" title="菜单导航" style="width: 100px;"></div>
		</div>
	</div>
	<!--菜单栏目 end-->

	<!--底部 start-->

	<!--底部 end-->

	<!--放置 弹出窗 start-->
	<div id="winDiv"></div>
	<!--放置 弹出窗 end-->

	<!--放置锁屏代码 start-->

	<!--放置锁屏代码 end-->


</body>

<script language="javascript" type="text/javascript">
	//退出系统
	function exit() {
		$.messager.confirm('退出', '您确定退出本系统?', function(r) {
			if (r) {
				location.href = "logout.action";
			}
		});
	}

	//系统帮助
	function help() {

	}

	//菜单查询
	function searchText() {

	}

	function showmsg(sort) {

		if (sort == "0") {
			//弹出消息中心页面
			winopen('../callManage/callCenter.action', '互动信息中心', 800, 600, true,
					true, false);
		} else {
			//自动加载当前消息信息
			//return; //暂停自动刷新
			$
					.get(
							"../callManage/callExec.aspx?d=" + new Date(),
							{},
							function(data) {
								data = "";//[paddy]avoid web error, delete later
								if (data != "") {
									var dataT = data
											.split('7E6065F2860648479F727CFB2E4A424C|');
									if (dataT.length > 1) {
										if (dataT[0] != 0) {
											$("#imgCallSrc").attr("src",
													"../image/voice2.gif");
											$("#callSpan").html(dataT[0]);
										}
										tiShiInfo = dataT[1];

									}
								} else {
									$("#imgCallSrc").attr("src",
											"../image/voice.png");
									$("#callSpan").html("");
								}
							});

		}
	}
	function exa(m) {
		alert(m);
	}

	function setTime() {
		var dt = new Date();
		var arr_week = new Array("周日", "周一", "周二", "周三", "周四", "周五", "周六");
		var strWeek = arr_week[dt.getDay()]; //星期
		var strHour = dt.getHours();
		var strMinutes = dt.getMinutes();
		var strSeconds = dt.getSeconds();
		if (strMinutes < 10)
			strMinutes = "0" + strMinutes;
		if (strSeconds < 10)
			strSeconds = "0" + strSeconds;
		var strYear = dt.getFullYear() + "年";
		var strMonth = (dt.getMonth() + 1) + "月";
		var strDay = dt.getDate() + "日";
		var strTime = strHour + ":" + strMinutes + ":" + strSeconds;
		time.innerHTML = "[" + strYear + strMonth + strDay + "&nbsp;" + strTime
				+ "]";
	}
	//setInterval("setTime()", 1000);

	//动态修改title
	var msgI = 0;
	var msgT = document.title;
	var tiShiInfo = "";//系统提示信息
	function msgShow() {

		if ($("#callSpan").html() != "") {
			document.title = msgI % 2 == 0 ? "【　　　】 - " + msgT : "【新消息】 - "
					+ tiShiInfo + msgT;

		} else {
			document.title = msgT;
		}
		msgI++;
	}
	setInterval(msgShow, 10000);

	//互动信息辅助函数
	function showmsgT() {
		showmsg(1);
	}
	//互动信息获取
	setInterval(showmsgT, 500000);
	showmsgT();
</script>

</html>