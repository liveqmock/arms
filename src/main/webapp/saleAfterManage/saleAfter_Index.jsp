<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><title>
	维修管理
</title>
     <script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
     <link href="../style/common.css?v=20130317" rel="stylesheet" type="text/css" />
     <style type="text/css"> 
 td,div
 {
   font-size:12px;
   
 }
    	
.tabs {
font-family:Verdana,Arial,sans-serif;
font-size:12px;
line-height:14px;
position: relative;
padding: 1px; zoom: 1; 
}
 
.tabs ul {
background-color: #fff;
color:#222222;
font-weight:bold;
display:block;
border-bottom:1px solid #AAAAAA;
height:28px; 
padding:0; margin:0; 
padding-left:200px;}
 
.tabs ul li 
{-moz-border-radius-topleft:4px;
-moz-border-radius-topright:4px;border-bottom:0 none !important;float:left;list-style:none;margin:0 0.2em 1px 0;padding:0;position:relative;top:1px;white-space:nowrap;color:#555555;font-weight:blod;}
.tabs ul li.tabs_active {margin-bottom:0;padding-bottom:1px;background-color:#fff;  border:1px solid #aaa;color:#333;}
.tabs ul li.tabs_hover{margin-bottom:0;padding-bottom:1px;background-color:#fff;border:1px solid #999;}
.tabs ul li a {float:left;padding:0.5em 1em;text-decoration:none;cursor:pointer;color:#777;}
.tabs ul li.tabs_active a {color:#333;}
.tabs ul li.tabs_active a {color:#555555;}
 
</style>

</head>
<base target="_self" />
<body style="margin-top:0px;margin-left:2px;"> 
<div>
 <table border="0" style="width:100%;border-bottom:2px dotted #dddddd;">
        <tr><td class="titlebg"><span>售后管理</span>
        <span class="titleSpan1">(工单制作)</span> 
         </td><td align="right" style="padding-right:20px;color:Blue;font-weight:bold;">
           维修单号:<s:property value='gongDan.txtBillNo' />&nbsp;车牌号:<s:property value='gongDan.txtChePaiHao' />&nbsp;<a href='#' onclick='showRefresh();' ><s:property value='gongDan.txtGongDanStatus' /></a>
           </td></tr>
         </table> 

</div>

<div id="tabs" class="tabs">

<ul>	 
<li id="a"><a href="#tabs-1" onClick="show(1)">维修接待</a></li>		
<li id="b"><a href="#tabs-2" onClick="show(2)">工单制作</a></li> 
<li id="c"><a href="#tabs-3" onClick="show(3)">维修派工</a></li> 
<li id="d"><a href="#tabs-3" onClick="show(4)">完工确认</a></li> 
<li id="e"><a href="#tabs-3" onClick="show(5)">费用结算</a></li>
<li id="f"><a href="#tabs-3" onClick="show(6)">维修历史</a></li>
 	
 
</ul>

</div>

<div id="content" style="border-left:1px solid gray;border-right:1px solid gray;border-bottom:1px solid gray;margin:0px;height:500px;">
  

</div> 
</body>

 <script language="javascript" type="text/javascript" >
	(function ($) {
		$.getUrlParam = function (name, defaultValue) {
			var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
			var r = window.location.search.substr(1).match(reg);
			if (r != null && r[2].trim().length>0){
				return unescape(r[2]);
			}else{
				return defaultValue;
			}
		}
	})(jQuery);

     var saleAfterWeiXiuGuid = "d4e10073-1054-4c86-b552-f44623513d0b";
     var tmp = "a";
     var tabId = 1;
     function show(sort) {
         var url = "";
         if (sort != 1 && saleAfterWeiXiuGuid == "") {
             alert("请先保存维修接待单！");
             return false;
         }
         tabId=sort;
          
         if ($("#" + tmp + "Frame").length > 0) { $("#" + tmp + "Frame").hide(); }
         if (sort == 1) { $("#" + tmp).removeClass(); $("#a").addClass("tabs_active"); tmp = "a"; url = "saleAfterWeiXiuJieDai.action?saleAfterWeiXiuGuid=d4e10073-1054-4c86-b552-f44623513d0b&cusId=&vehicleId=&carId=&yuYueId="; $(".titleSpan1").html("(维修接待)"); }
         if (sort == 2) { $("#" + tmp).removeClass(); $("#b").addClass("tabs_active"); tmp = "b"; url = "saleAfter_gongDanZhiZuo.aspx?saleAfterWeiXiuGuid=" + saleAfterWeiXiuGuid + "&d=" + new Date(); $(".titleSpan1").html("(工单制作)"); }
         if (sort == 3) { $("#" + tmp).removeClass(); $("#c").addClass("tabs_active"); tmp = "c"; url = "saleAfter_weiXiuPaiGong.aspx?saleAfterWeiXiuGuid=d4e10073-1054-4c86-b552-f44623513d0b&d" + new Date(); $(".titleSpan1").html("(维修派工)"); }
         if (sort == 4) { $("#" + tmp).removeClass(); $("#d").addClass("tabs_active"); tmp = "d"; url = "saleAfter_weiXiuWanJian.aspx?saleAfterWeiXiuGuid=d4e10073-1054-4c86-b552-f44623513d0b&d" + new Date(); $(".titleSpan1").html("(完工确认)"); }
         if (sort == 5) { $("#" + tmp).removeClass(); $("#e").addClass("tabs_active"); tmp = "e"; url = "saleAfter_WeiXiuFeiYongList.aspx?saleAfterWeiXiuGuid=d4e10073-1054-4c86-b552-f44623513d0b&d" + new Date(); $(".titleSpan1").html("(费用明细)"); }
         if (sort == 6) { $("#" + tmp).removeClass(); $("#f").addClass("tabs_active"); tmp = "f"; url = "saleAfter_weiXiuLiShiList.aspx?saleAfterWeiXiuGuid=d4e10073-1054-4c86-b552-f44623513d0b&d" + new Date(); $(".titleSpan1").html("(维修历史)"); }

         if ($("#" + tmp + "Frame").length > 0) { $("#" + tmp + "Frame").show(); }
         else {
             $("#content").append("<iframe id='" + tmp + "Frame' style='width:100%;height:100%;' src='" + url + "' frameborder='0' />");
         }


     }


     $(function () {
		 tabId = $.getUrlParam('tabId','1');
         show(tabId);

         if ("d4e10073-1054-4c86-b552-f44623513d0b" == "") {
             $("#c").css("display", "none");
             $("#d").css("display", "none");
             $("#e").css("display", "none");
             $("#f").css("display", "none");

         }

     });


     function showRefresh() {
         location.href = '../saleAfterManage/saleAfterIndex.action?saleAfterWeiXiuGuid=d4e10073-1054-4c86-b552-f44623513d0b&tabId=' + tabId + '&d=' + new Date();

     }


     $(function () {
         $(document).bind('contextmenu', function (e) {
             e.preventDefault();
         });
     });


 </script>


</html>