<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<title><s:property value='gongDan.txtChePaiHao' />-<s:property value='gongDan.txtGongDanStatus' /></title>
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
}
.tabs ul li.tabs_now a {
    color: #000!important;
}
.tabs ul li.tabs_passed {
	background-color: #7ab900;	
}

.tabs ul li.tabs_now {
	background-color: #ff2525;
	font-size:20px;
	font-weight:bold;
}

.tabs ul li.tabs_future {
	background-color: #feee83;	
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
	color: #000;
}
</style>

</head>
<base target="_self" />
<body style="margin-top: 0px; margin-left: 2px;">
	<div>
		<table border="0"
			style="width: 100%; border-bottom: 2px dotted #dddddd;">
			<tr>
				<td class="titlebg"><span>维修接待</span> (<span class="titleSpan1"></span>)</td>
				<td align="right"
					style="padding-right: 20px; color: Blue; font-weight: bold;">
					维修单号:<s:property value='gongDan.txtBillNo' />&nbsp;车牌号:<s:property
						value='gongDan.txtChePaiHao' />&nbsp;<s:property
						value='gongDanStatus' />
				</td>
			</tr>
		</table>

	</div>

	<div id="tabs" class="tabs">
		<ul>
			<li id="tab0"><a href="javascript:void(0)" onClick="show(0)">维修接待</a></li>
			<li id="tab1"><a href="javascript:void(0)" onClick="show(1)">维修派工</a></li>
			<li id="tab2"><a href="javascript:void(0)" onClick="show(2)">领取物料</a></li>
			<li id="tab3"><a href="javascript:void(0)" onClick="show(3)">维修完检</a></li>
			<li id="tab4"><a href="javascript:void(0)" onClick="show(4)">费用结算</a></li>
			<li id="tab5"><a href="javascript:void(0)" onClick="show(5)">维修历史</a></li>
		</ul>

	</div>

	<div id="content"
		style="border-left: 1px solid gray; border-right: 1px solid gray; border-bottom: 1px solid gray; margin: 0px; height: 100%;">


	</div>
</body>

<script language="javascript" type="text/javascript">
	var cheLiangId = "<s:property value='cheLiangId' />";
	var saleAfterWeiXiuGuid = "<s:property value='saleAfterWeiXiuGuid' />";
	var tabInfo = [ [ 'gongDanWeiXiuJieDai.action', '维修接待' ],
			[ 'gongDanWeiXiuPaiGong.action', '维修派工' ],
			[ 'gongDanLingQuWuLiao.action', '领取物料' ],
			[ 'gongDanWeiXiuWanJian.action', '维修完检' ],
			[ 'gongDanWeiXiuJieSuan.action', '费用结算' ],
			[ 'cheLiangWeiXiuLiShi.action', '维修历史' ] ];
	var preTabIndex = "";

	$(function() {
		var initTabIndex = _.indexOf(_.map(tabInfo, function(tab){ return tab[1];}), "<s:property value='gongDanStatus' />");
		show(initTabIndex);
		
		initTabBgColor(initTabIndex);
	});
	
	function initTabBgColor(curTabIndex){
		var statusChain = "<s:property value='gongDan.txtGongDanStatusChain' />";
		var tabSize = _.size(tabInfo);
		for(var i = 0; i < tabSize-1; i++){
			if(i < curTabIndex){
				var tabTitle = $("#tab" + i).text();
				if(statusChain.indexOf(tabTitle) == -1){
					$("#tab" + i).hide();
				}else{
					$("#tab" + i).addClass("tabs_passed");
				}
			}else if(i == curTabIndex){
				$("#tab" + i).addClass("tabs_now");
			}else{
				$("#tab" + i).addClass("tabs_future");
			}			
		}
	}
	
	function show(tabIndex) {
		if(tabIndex < 0 || tabIndex >= _.size(tabInfo)){
			tabIndex = _.size(tabInfo) - 1;
		}
		
		var tab = tabInfo[tabIndex];
		var action = tab[0];
		var tabName = tab[1];
		
		if (tabName != "维修接待" && saleAfterWeiXiuGuid == "") {
			alert("请先保存维修接待信息！");
			return false;
		}
		
		var garyBgFlag = "";
		if(tabName != "<s:property value='gongDanStatus' />"){
			garyBgFlag = "GrayBGColor";
		}
		var url = action + "?saleAfterWeiXiuGuid="	+ saleAfterWeiXiuGuid + "&flag=" + garyBgFlag + "&d=" + new Date();
		if(tabName == "维修接待" && saleAfterWeiXiuGuid == ""){
			url = action + "?cheLiangId=<s:property	value='gongDan.txtCheLiangId' />&flag=" + garyBgFlag + "&d=" + new Date();
		}else if(tabName == "维修历史"){
			url = action + "?cheLiangId=<s:property	value='gongDan.txtCheLiangId' />&saleAfterWeiXiuGuid="	+ saleAfterWeiXiuGuid + "&flag=" + garyBgFlag + "&d=" + new Date();
		}
		
		$("#tab" + preTabIndex).removeClass("tabs_active");
		$("#tab" + tabIndex).addClass("tabs_active");
		preTabIndex = tabIndex;
		
		$(".titleSpan1").html(tabName);
		$("#content").html(
				"<iframe style='width:100%;height:100%;' src='"	+ url + "' frameborder='0' />");
	}

</script>


</html>