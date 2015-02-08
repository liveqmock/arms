<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<title>维修管理</title>
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/underscore-min.js" type="text/javascript"></script>
<link href="../style/common.css" rel="stylesheet" type="text/css" />
<style type="text/css">
td,div {
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
	color: #555555;
}
</style>

</head>
<base target="_self" />
<body style="margin-top: 0px; margin-left: 2px;">
	<div>
		<table border="0"
			style="width: 100%; border-bottom: 2px dotted #dddddd;">
			<tr>
				<td class="titlebg"><span>售后管理</span> <span class="titleSpan1">(工单制作)</span>
				</td>
				<td align="right"
					style="padding-right: 20px; color: Blue; font-weight: bold;">
					维修单号:<s:property value='gongDan.txtBillNo' />&nbsp;车牌号:<s:property
						value='gongDan.txtChePaiHao' />&nbsp;<s:property
						value='gongDan.txtGongDanStatus' />
				</td>
			</tr>
		</table>

	</div>

	<div id="tabs" class="tabs">

		<ul>
			<li id="tab0"><a href="javascript:void(0)" onClick="show(0)">维修接待</a></li>
			<li id="tab1"><a href="javascript:void(0)" onClick="show(1)">工单制作</a></li>
			<li id="tab2"><a href="javascript:void(0)" onClick="show(2)">维修派工</a></li>
			<li id="tab3"><a href="javascript:void(0)" onClick="show(3)">完工确认</a></li>
			<li id="tab4"><a href="javascript:void(0)" onClick="show(4)">费用结算</a></li>
			<li id="tab5"><a href="javascript:void(0)" onClick="show(5)">维修历史</a></li>

		</ul>

	</div>

	<div id="content"
		style="border-left: 1px solid gray; border-right: 1px solid gray; border-bottom: 1px solid gray; margin: 0px; height: 520px;">


	</div>
</body>

<script language="javascript" type="text/javascript">
	var cheLiangId = "<s:property value='cheLiangId' />";
	var saleAfterWeiXiuGuid = "<s:property value='saleAfterWeiXiuGuid' />";
	var tabInfo = [ [ 'saleAfterWeiXiuJieDai.action', '维修接待' ],
			[ 'saleAfterGongDanZhiZuo.action', '工单制作' ],
			[ 'saleAfterWeiXiuPaiGong.action', '维修派工' ],
			[ 'saleAfterWeiXiuWanJian.action', '完工确认' ],
			[ 'saleAfterWeiXiuJieSuan.action', '费用结算' ],
			[ 'saleAfterWeiXiuLiShi.action', '维修历史' ] ];
	var preTabIndex = "";

	$(function() {
		var initTabIndex = _.indexOf(_.map(tabInfo, function(tab){ return tab[1];}), "<s:property value='gongDan.txtGongDanStatus' />");
		show(initTabIndex);
	});
	
	function show(tabIndex) {
		var tab = tabInfo[tabIndex];
		var action = tab[0];
		var status = tab[1];
		
		if (status != "维修接待" && saleAfterWeiXiuGuid == "") {
			alert("请先保存维修接待信息！");
			return false;
		}
		
		var url = action + "?saleAfterWeiXiuGuid="	+ saleAfterWeiXiuGuid + "&d=" + new Date();
		if(status == "维修接待" && saleAfterWeiXiuGuid == ""){
			url = action + "?cheLiangId=" + cheLiangId + "&d=" + new Date();
		}
		
		$("#tab" + preTabIndex).removeClass();
		$("#tab" + tabIndex).addClass("tabs_active");
		preTabIndex = tabIndex;
		
		$(".titleSpan1").html("(" + status + ")");
		$("#content").html(
				"<iframe style='width:100%;height:100%;' src='"	+ url + "' frameborder='0' />");
	}

/*
	var tmp = "a";
	function showzzz(targetTabId) {
		curentTabId = targetTabId;

		if ($("#" + tmp + "Frame").length > 0) {
			$("#" + tmp + "Frame").hide();
		}
		var url = "";
		if (targetTabId == 1) {
			$("#" + tmp).removeClass();
			$("#a").addClass("tabs_active");
			tmp = "a";
			url = "saleAfterWeiXiuJieDai.action?saleAfterWeiXiuGuid="
					+ saleAfterWeiXiuGuid + "&cheLiangId=" + cheLiangId + "&d="
					+ new Date();
			$(".titleSpan1").html("(维修接待)");
		}
		if (targetTabId == 2) {
			$("#" + tmp).removeClass();
			$("#b").addClass("tabs_active");
			tmp = "b";
			url = "saleAfterGongDanZhiZuo.action?saleAfterWeiXiuGuid="
					+ saleAfterWeiXiuGuid + "&d=" + new Date();
			$(".titleSpan1").html("(工单制作)");
		}
		if (targetTabId == 3) {
			$("#" + tmp).removeClass();
			$("#c").addClass("tabs_active");
			tmp = "c";
			url = "saleAfterWeiXiuPaiGong.action?saleAfterWeiXiuGuid="
					+ saleAfterWeiXiuGuid + "&d" + new Date();
			$(".titleSpan1").html("(维修派工)");
		}
		if (targetTabId == 4) {
			$("#" + tmp).removeClass();
			$("#d").addClass("tabs_active");
			tmp = "d";
			url = "saleAfterWeiXiuWanJian.action?saleAfterWeiXiuGuid="
					+ saleAfterWeiXiuGuid + "&d" + new Date();
			$(".titleSpan1").html("(完工确认)");
		}
		if (targetTabId == 5) {
			$("#" + tmp).removeClass();
			$("#e").addClass("tabs_active");
			tmp = "e";
			url = "saleAfterWeiXiuJieSuan.action?saleAfterWeiXiuGuid="
					+ saleAfterWeiXiuGuid + "&d" + new Date();
			$(".titleSpan1").html("(费用明细)");
		}
		if (targetTabId == 6) {
			$("#" + tmp).removeClass();
			$("#f").addClass("tabs_active");
			tmp = "f";
			url = "saleAfterWeiXiuLiShi.action?saleAfterWeiXiuGuid="
					+ saleAfterWeiXiuGuid + "&d" + new Date();
			$(".titleSpan1").html("(维修历史)");
		}

		if ($("#" + tmp + "Frame").length > 0) {
			$("#" + tmp + "Frame").remove();
		}
		$("#content").append(
				"<iframe id='" + tmp
						+ "Frame' style='width:100%;height:100%;' src='" + url
						+ "' frameborder='0' />");

	}*/
</script>


</html>