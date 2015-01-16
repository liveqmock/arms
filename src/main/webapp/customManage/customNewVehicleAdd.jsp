<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><title>
	车辆新增
</title><link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=20130306" />
    <script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> 
<script src="../js/frame/underscore-min.js" type="text/javascript"></script>
    <script src="../js/birthDate.js?a=123" type="text/javascript"></script> 
     <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
     <script src="../js/customcommon.js" type="text/javascript"></script>
 
</head>


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
-moz-border-radius-topright:4px;border-bottom:0 none !important;float:left;
list-style:none;margin:0 0.2em 1px 0;padding:0;position:relative;top:1px;white-space:nowrap;color:#555555;font-weight:blod;}
.tabs ul li.tabs_active {margin-bottom:0;padding-bottom:1px;background-color:#fff;  border:1px solid #aaa;color:#333;}
.tabs ul li.tabs_hover{margin-bottom:0;padding-bottom:1px;background-color:#fff;border:1px solid #999;}
.tabs ul li a {float:left;padding:0.5em 1em;text-decoration:none;cursor:pointer;color:#777;}
.tabs ul li.tabs_active a {color:#333;}
.tabs ul li.tabs_active a {color:#555555;}
 
 
input
{
	border:none;
	width:125px;
	}
td
{
	height:30px;
	border:1px solid #9a9a9a;
	}
.requireSpan
{
	color:Blue;
	}
</style>

 
<body>
    <form name="form1" method="post" id="form1">
       <input name="txtCustId" type="hidden" id="txtCustId" />
       <input name="txtVehicleId" type="hidden" id="txtVehicleId" />
    <div style="width:900px;">
      <div id="tabs" class="tabs" style="width:900px;">
        <ul>		  
            <li id="c"><a href="#tabs-3" onclick="show(3)">车辆信息</a></li> 
        </ul>
      </div> 
      <!--车辆信息 start-->
      <div id="cDiv" style="margin:2 0 0 5;display:block;" >
        <br />
        <table border="0" cellpadding="0" cellspacing="0" width="900px"  style="border-collapse:collapse;border:1px solid #9a9a9a" >
         <tr>
         <td>
         <span class="requireSpan">*</span>制造商：</td><td style="width:125px;">
         <div id="cheLiangZhiZaoShang">
	   
         <select name="ddlCheLiangZhiZaoShang" id="ddlCheLiangZhiZaoShang" style="border:none;width:100%;">
		<option value="东风本田">东风本田</option>
		<option value="广汽本田">广汽本田</option>
		<option value="广汽丰田">广汽丰田</option>
		<option value="雷克萨斯">雷克萨斯</option>
		<option value="通用">通用</option>
		<option value="一汽丰田">一汽丰田</option>
		<option selected="selected" value="Lexus雷克萨斯">Lexus雷克萨斯</option>

	</select>          
         
</div> 
         </td>
         <td><span class="requireSpan">*</span>车系：</td><td>
         <div id="cheLiangCheXi">
	 
         <select name="ddlCheLiangCheXi" id="ddlCheLiangCheXi" style="border:none;width:100%;">
		<option selected="selected" value="RX270">RX270</option>

	</select> 
        
</div> 
         </td>
         
         <td><span class="requireSpan">*</span>车型代码：</td><td><input name="txtCheLiangCheXingDaiMa" type="text" maxlength="30" id="txtCheLiangCheXingDaiMa" /></td>
         <td><span class="requireSpan">*</span>车身颜色：</td><td>
         <select name="ddlCheShenColor" id="ddlCheShenColor" style="width:135px;border:none;">
	<option value="橙金属色">橙金属色</option>
	<option value="灰金属色">灰金属色</option>
	<option value="灰蓝金属色">灰蓝金属色</option>
	<option value="绿云母色">绿云母色</option>
	<option value="上驼下白">上驼下白</option>
	<option value="深红云母金属色">深红云母金属色</option>
	<option value="深红云母色">深红云母色</option>
	<option value="深灰金属">深灰金属</option>
	<option value="深蓝金属色">深蓝金属色</option>
	<option value="深青灰云母色">深青灰云母色</option>
	<option value="银金属色">银金属色</option>
	<option value="珍珠白色">珍珠白色</option>
	<option value="紫云母金属">紫云母金属</option>
	<option value="卡特莱蓝黑云母金属色">卡特莱蓝黑云母金属色</option>
	<option value="米黄金属色">米黄金属色</option>
	<option value="青铜云母">青铜云母</option>
	<option value="深蓝云母色">深蓝云母色</option>
	<option value="深棕云母金属色">深棕云母金属色</option>
	<option value="珍珠白">珍珠白</option>
	<option value="琥珀金">琥珀金</option>
	<option value="摩卡金">摩卡金</option>
	<option value="琥珀金">琥珀金</option>
	<option value="琥珀金">琥珀金</option>
	<option value="炫晶黑">炫晶黑</option>
	<option value="珍珠白">珍珠白</option>
	<option value="钨金灰">钨金灰</option>
	<option value="紫钻黑">紫钻黑</option>
	<option value="珊瑚红">珊瑚红</option>
	<option value="香槟金">香槟金</option>
	<option value="黑色/晶亮白色">黑色/晶亮白色</option>
	<option value="俊雅红">俊雅红</option>
	<option value="雪铂银">雪铂银</option>
	<option value="马德里金">马德里金</option>
	<option value="摩卡棕">摩卡棕</option>
	<option value="炫晶红">炫晶红</option>
	<option value="水晶银">水晶银</option>
	<option value="炫彩绿">炫彩绿</option>
	<option value="极光蓝">极光蓝</option>
	<option value="烈焰红色">烈焰红色</option>
	<option value="太空银">太空银</option>
	<option value="蓝色">蓝色</option>
	<option value="银色">银色</option>
	<option value="红色">红色</option>
	<option value="白色">白色</option>
	<option value="黑色">黑色</option>
	<option value="棕色">棕色</option>
	<option value="冰钛灰">冰钛灰</option>
	<option value="青铜灰">青铜灰</option>
	<option value="金色">金色</option>
	<option value="绿色">绿色</option>
	<option value="银色">银色</option>
	<option value="红色">红色</option>
	<option value="上白下黄">上白下黄</option>
	<option value="橙色">橙色</option>
	<option value="紫色">紫色</option>
	<option value="珍珠白">珍珠白</option>
	<option value="蓝色">蓝色</option>
	<option value="白色">白色</option>
	<option value="黑色">黑色</option>
	<option value="棕色">棕色</option>
	<option value="冰钛灰">冰钛灰</option>
	<option value="青铜灰">青铜灰</option>
	<option value="金色">金色</option>
	<option value="绿色">绿色</option>
	<option value="银色">银色</option>
	<option value="红色">红色</option>
	<option value="上白下黄">上白下黄</option>
	<option value="橙色">橙色</option>
	<option value="紫色">紫色</option>
	<option value="珍珠白">珍珠白</option>
	<option value="蓝色">蓝色</option>
	<option value="白色">白色</option>
	<option value="黑色">黑色</option>
	<option value="棕色">棕色</option>
	<option value="冰钛灰">冰钛灰</option>
	<option value="青铜灰">青铜灰</option>
	<option value="金色">金色</option>
	<option value="绿色">绿色</option>
	<option value="深灰云母金属色">深灰云母金属色</option>
	<option value="银蓝金属色">银蓝金属色</option>
	<option value="超音速银色">超音速银色</option>
	<option value="宝石珍珠白">宝石珍珠白</option>
	<option value="冰钛灰金属色">冰钛灰金属色</option>
	<option value="铂青铜金属色">铂青铜金属色</option>
	<option value="超级白色">超级白色</option>
	<option value="绿云母金属色">绿云母金属色</option>
	<option value="上白下绿">上白下绿</option>
	<option value="上白下紫">上白下紫</option>
	<option value="俊雅红">俊雅红</option>
	<option value="雪铂银">雪铂银</option>
	<option value="马德里金">马德里金</option>
	<option value="摩卡棕">摩卡棕</option>
	<option value="绚晶红">绚晶红</option>
	<option value="炫动红">炫动红</option>
	<option value="太空银">太空银</option>
	<option value="天际白">天际白</option>
	<option value="宝石红">宝石红</option>
	<option value="橘金属色">橘金属色</option>
	<option value="晶亮珍珠白色">晶亮珍珠白色</option>
	<option value="银金属色">银金属色</option>
	<option value="新月黄">新月黄</option>
	<option value="海洋蓝">海洋蓝</option>
	<option value="BLUE">BLUE</option>
	<option value="上白下黄">上白下黄</option>
	<option value="黑云母色">黑云母色</option>
	<option value="经云母金属色">经云母金属色</option>
	<option value="蓝金属色">蓝金属色</option>
	<option value="星光银">星光银</option>
	<option value="蓝色">蓝色</option>
	<option value="白色">白色</option>
	<option value="蓝色">蓝色</option>
	<option value="白色">白色</option>
	<option value="黑色">黑色</option>
	<option value="棕色">棕色</option>
	<option value="冰钛灰">冰钛灰</option>
	<option value="青铜灰">青铜灰</option>
	<option value="金色">金色</option>
	<option value="绿色">绿色</option>
	<option value="银色">银色</option>
	<option value="红色">红色</option>
	<option value="上白下黄">上白下黄</option>
	<option value="橙色">橙色</option>
	<option value="紫色">紫色</option>
	<option value="珍珠白">珍珠白</option>
	<option value="蓝色">蓝色</option>
	<option value="白色">白色</option>
	<option value="黑色">黑色</option>
	<option value="棕色">棕色</option>
	<option value="冰钛灰">冰钛灰</option>
	<option value="青铜灰">青铜灰</option>
	<option value="金色">金色</option>
	<option value="绿色">绿色</option>
	<option value="新月黄">新月黄</option>
	<option value="蓝色">蓝色</option>
	<option value="白色">白色</option>
	<option value="银色">银色</option>
	<option value="红色">红色</option>
	<option value="灰金属色">灰金属色</option>
	<option value="灰金属色">灰金属色</option>
	<option value="TINTED SILVER">TINTED SILVER</option>
	<option value="黑色">黑色</option>
	<option value="棕色">棕色</option>
	<option value="绿色">绿色</option>
	<option value="银色">银色</option>
	<option value="红色">红色</option>
	<option value="橙色">橙色</option>
	<option value="紫色">紫色</option>
	<option value="珍珠白">珍珠白</option>
	<option value="上白下黄">上白下黄</option>
	<option value="橙色">橙色</option>
	<option value="紫色">紫色</option>
	<option value="珍珠白">珍珠白</option>
	<option value="橙色">橙色</option>
	<option value="紫色">紫色</option>
	<option value="珍珠白">珍珠白</option>
	<option value="银色">银色</option>
	<option value="红色">红色</option>
	<option value="上白下黄">上白下黄</option>
	<option value="橙色">橙色</option>
	<option value="紫色">紫色</option>
	<option value="珍珠白">珍珠白</option>
	<option value="黄色">黄色</option>
	<option value="蓝色">蓝色</option>
	<option value="白色">白色</option>
	<option value="黑色">黑色</option>
	<option value="冰钛灰">冰钛灰</option>
	<option value="青铜灰">青铜灰</option>
	<option value="金色">金色</option>
	<option value="绿色">绿色</option>
	<option value="上白下黄">上白下黄</option>
	<option value="橙色">橙色</option>
	<option value="紫色">紫色</option>
	<option value="珍珠白">珍珠白</option>
	<option value="蓝色">蓝色</option>
	<option value="白色">白色</option>
	<option value="黑色">黑色</option>
	<option value="棕色">棕色</option>
	<option value="冰钛灰">冰钛灰</option>
	<option value="青铜灰">青铜灰</option>
	<option value="金色">金色</option>
	<option value="绿色">绿色</option>
	<option value="银色">银色</option>
	<option value="红色">红色</option>
	<option value="银色">银色</option>
	<option value="红色">红色</option>
	<option value="上白下黄">上白下黄</option>
	<option value="橙色">橙色</option>
	<option value="珍珠白">珍珠白</option>
	<option value="黑色">黑色</option>
	<option value="棕色">棕色</option>
	<option value="冰钛灰">冰钛灰</option>
	<option value="青铜灰">青铜灰</option>
	<option value="金色">金色</option>
	<option value="绿色">绿色</option>
	<option value="墨晶黑">墨晶黑</option>
	<option value="黄色">黄色</option>
	<option value="yellow">yellow</option>
	<option value="梦幻紫">梦幻紫</option>
	<option value="新增项目">新增项目</option>
	<option value="星空蓝">星空蓝</option>
	<option value="梦幻蓝">梦幻蓝</option>
	<option value="蓝焰色">蓝焰色</option>
	<option value="炙橙色">炙橙色</option>
	<option value="新增项目">新增项目</option>
	<option value="新增项目">新增项目</option>
	<option value="新增项目">新增项目</option>
	<option value="新增项目">新增项目</option>
	<option value="琥珀橙">琥珀橙</option>
	<option value="炫金银">炫金银</option>
	<option value="赤霞红">赤霞红</option>
	<option value="银月灰">银月灰</option>
	<option value="梦幻蓝">梦幻蓝</option>
	<option value="炫金银">炫金银</option>
	<option value="黑色/酒红云母色">黑色/酒红云母色</option>
	<option value="黑色/珍珠白色">黑色/珍珠白色</option>
	<option value="星空蓝">星空蓝</option>
	<option value="梦幻紫">梦幻紫</option>
	<option value="超音速石英白">超音速石英白</option>
	<option value="玫瑰黑">玫瑰黑</option>
	<option value="玫瑰黑">玫瑰黑</option>
	<option value="新增项目">新增项目</option>
	<option value="绚光蓝">绚光蓝</option>
	<option value="新增项目">新增项目</option>
	<option value="琥珀橙">琥珀橙</option>
	<option value="流星蓝云母金属色">流星蓝云母金属色</option>
	<option value="炫红色">炫红色</option>
	<option value="灰色">灰色</option>
	<option value="宝石红">宝石红</option>
	<option value="海洋蓝">海洋蓝</option>
	<option value="星光银">星光银</option>
	<option value="黑色/烈焰红色">黑色/烈焰红色</option>
	<option value="黑云母色">黑云母色</option>
	<option value="荷兰橙">荷兰橙</option>
	<option value="翡翠绿">翡翠绿</option>
	<option value="塔夫绸白">塔夫绸白</option>
	<option value="雪花银">雪花银</option>
	<option value="水晶紫">水晶紫</option>
	<option value="拉力红">拉力红</option>
	<option value="彩晶黑">彩晶黑</option>
	<option value="钛金银">钛金银</option>
	<option value="珍珠白">珍珠白</option>
	<option value="炫速红">炫速红</option>
	<option value="赤霞红">赤霞红</option>
	<option value="拉力红">拉力红</option>
	<option value="翡翠绿">翡翠绿</option>
	<option value="塔夫绸白">塔夫绸白</option>
	<option value="雪花银">雪花银</option>
	<option value="宝石蓝">宝石蓝</option>
	<option value="水晶紫">水晶紫</option>
	<option value="蓝天银">蓝天银</option>
	<option value="彩晶黑">彩晶黑</option>
	<option value="钛金银">钛金银</option>
	<option value="珍珠白">珍珠白</option>
	<option value="炫影蓝">炫影蓝</option>
	<option value="炫动紫">炫动紫</option>
	<option value="炫速红">炫速红</option>
	<option value="奥夫特黑">奥夫特黑</option>
	<option value="丝缎银">丝缎银</option>
	<option value="夜鹰黑">夜鹰黑</option>
	<option value="宝石蓝">宝石蓝</option>
	<option value="皇室蓝">皇室蓝</option>
	<option value="探戈红">探戈红</option>
	<option value="暴风银">暴风银</option>
	<option value="拉丁黄">拉丁黄</option>
	<option value="卫星银">卫星银</option>
	<option value="塔夫绸白">塔夫绸白</option>
	<option value="珍珠白">珍珠白</option>
	<option value="沙漠雾">沙漠雾</option>
	<option value="艾美紫">艾美紫</option>
	<option value="瑞丽红">瑞丽红</option>
	<option value="巴黎蓝">巴黎蓝</option>
	<option value="甜橙红">甜橙红</option>
	<option value="神秘蓝">神秘蓝</option>
	<option value="生动蓝">生动蓝</option>
	<option value="金色">金色</option>
	<option value="黑色">黑色</option>
	<option value="白色">白色</option>
	<option value="金属米色">金属米色</option>
	<option value="红色">红色</option>
	<option value="红云母金属色">红云母金属色</option>
	<option value="蓝色">蓝色</option>
	<option value="蓝金属色">蓝金属色</option>
	<option value="红云母金属色">红云母金属色</option>
	<option value="奥夫特黑">奥夫特黑</option>
	<option value="丝缎银">丝缎银</option>
	<option value="夜鹰黑">夜鹰黑</option>
	<option value="探戈红">探戈红</option>
	<option value="暴风银">暴风银</option>
	<option value="拉丁黄">拉丁黄</option>
	<option value="塔夫绸白">塔夫绸白</option>
	<option value="珍珠白">珍珠白</option>
	<option value="艾美紫">艾美紫</option>
	<option value="瑞丽红">瑞丽红</option>
	<option value="巴黎蓝">巴黎蓝</option>
	<option value="甜橙红">甜橙红</option>
	<option value="神秘蓝">神秘蓝</option>
	<option value="淡金云母金属色">淡金云母金属色</option>
	<option value="天青云母色">天青云母色</option>
	<option value="珍珠白色">珍珠白色</option>
	<option value="白金灰金属色">白金灰金属色</option>
	<option value="黑色">黑色</option>
	<option value="晶亮白色">晶亮白色</option>
	<option value="海洋蓝金属色">海洋蓝金属色</option>
	<option value="石榴红云母色">石榴红云母色</option>
	<option value="宝石黑色">宝石黑色</option>
	<option value="星光黑色">星光黑色</option>
	<option value="亮褐金属色">亮褐金属色</option>
	<option value="天青石云母色">天青石云母色</option>
	<option value="水银灰云母色">水银灰云母色</option>
	<option value="白石英云母色">白石英云母色</option>
	<option value="流星蓝云母金属色">流星蓝云母金属色</option>
	<option value="银云母金属色">银云母金属色</option>
	<option value="超音速钛银">超音速钛银</option>
	<option value="深棕云母金属色">深棕云母金属色</option>
	<option value="酒红云母色">酒红云母色</option>
	<option value="闪亮水晶红色">闪亮水晶红色</option>
	<option value="摩卡金">摩卡金</option>
	<option selected="selected" value="星光黑色">星光黑色</option>

</select>
         </tr>

         <tr>
         <td><span class="requireSpan">*</span>车牌号：</td><td><input name="txtCheLiangChePaiHao" type="text" maxlength="8" id="txtCheLiangChePaiHao" /></td>
         <td><span class="requireSpan">*</span>车架号：</td><td><input name="txtCheLiangCheJiaHao" type="text" maxlength="17" id="txtCheLiangCheJiaHao" onblur="checkVIN();" /></td>
         <td><span class="requireSpan">*</span>发动机号：</td><td><input name="txtCheLiangFaDongJiHao" type="text" maxlength="20" id="txtCheLiangFaDongJiHao" /></td>
         <td><span class="requireSpan">*</span>变速箱号：</td><td><input name="txtCheLiangBianSuXiangHao" type="text" maxlength="20" id="txtCheLiangBianSuXiangHao" /></td>
         </tr>
         <tr>
         <td><span class="requireSpan">*</span>投保日期：</td><td><input name="txtBaoXianDate" type="text" id="txtBaoXianDate" class="easyui-datebox" /> </td>
         <td><span class="requireSpan">*</span>制造日期：</td><td><input name="txtZhiZaoDate" type="text" id="txtZhiZaoDate" class="easyui-datebox" /> </td>
         <td><span class="requireSpan">*</span>购车日期：</td><td><input name="txtGouCheDate" type="text" id="txtGouCheDate" class="easyui-datebox" /> </td>
         <td>内装颜色：</td><td>
              <select name="ddlNeiZhuangYanSe" id="ddlNeiZhuangYanSe" style="width:135px;border:none;">
	<option value="黑色+鞍棕色">黑色+鞍棕色</option>
	<option value="象牙色">象牙色</option>
	<option value="黑色">黑色</option>
	<option value="黄水晶棕色">黄水晶棕色</option>
	<option value="暗玫瑰红色">暗玫瑰红色</option>
	<option value="棕色">棕色</option>
	<option value="蓝色">蓝色</option>
	<option value="红黑双色">红黑双色</option>
	<option value="F-SPORT专属蓝黑双色">F-SPORT专属蓝黑双色</option>
	<option value="石榴红色">石榴红色</option>
	<option value="鞍棕色">鞍棕色</option>
	<option value="米色">米色</option>
	<option value="褐色">褐色</option>
	<option value="黑/鞍棕双色">黑/鞍棕双色</option>
	<option value="醇白色">醇白色</option>
	<option selected="selected" value=""></option>
	<option value="黑色+鞍棕色">黑色+鞍棕色</option>
	<option value="浅灰色">浅灰色</option>
	<option value="上黑下白">上黑下白</option>
	<option value="浅灰色">浅灰色</option>
	<option value="上黑下白">上黑下白</option>
	<option value="象牙色">象牙色</option>
	<option value="黑色">黑色</option>
	<option value="黄水晶棕色">黄水晶棕色</option>
	<option value="暗玫瑰红色">暗玫瑰红色</option>
	<option value="棕色">棕色</option>
	<option value="蓝色">蓝色</option>
	<option value="红黑双色">红黑双色</option>
	<option value="F-SPORT专属蓝黑双色">F-SPORT专属蓝黑双色</option>
	<option value="石榴红色">石榴红色</option>
	<option value="鞍棕色">鞍棕色</option>
	<option value="米色">米色</option>
	<option value="褐色">褐色</option>
	<option value="黑/鞍棕双色">黑/鞍棕双色</option>
	<option value="醇白色">醇白色</option>
	<option value=""></option>
	<option value="黑色+鞍棕色">黑色+鞍棕色</option>
	<option value="浅灰色">浅灰色</option>
	<option value="上黑下白">上黑下白</option>
	<option value="黑">黑</option>
	<option value="上黑下白">上黑下白</option>
	<option value="红色">红色</option>
	<option value="象牙色">象牙色</option>
	<option value="黑色">黑色</option>
	<option value="黄水晶棕色">黄水晶棕色</option>
	<option value="暗玫瑰红色">暗玫瑰红色</option>
	<option value="棕色">棕色</option>
	<option value="蓝色">蓝色</option>
	<option value="红黑双色">红黑双色</option>
	<option value="F-SPORT专属蓝黑双色">F-SPORT专属蓝黑双色</option>
	<option value="石榴红色">石榴红色</option>
	<option value="鞍棕色">鞍棕色</option>
	<option value="米色">米色</option>
	<option value="褐色">褐色</option>
	<option value="黑/鞍棕双色">黑/鞍棕双色</option>
	<option value="醇白色">醇白色</option>
	<option value=""></option>
	<option value="黑色+鞍棕色">黑色+鞍棕色</option>
	<option value="浅灰色">浅灰色</option>
	<option value="上黑下白">上黑下白</option>
	<option value="黑">黑</option>
	<option value="上黑下白">上黑下白</option>
	<option value="金沙色">金沙色</option>
	<option value="黑">黑</option>
	<option value="上黑下白">上黑下白</option>
	<option value="黑">黑</option>
	<option value="上黑下白">上黑下白</option>
	<option value="象牙色">象牙色</option>
	<option value="黑色">黑色</option>
	<option value="黄水晶棕色">黄水晶棕色</option>
	<option value="暗玫瑰红色">暗玫瑰红色</option>
	<option value="棕色">棕色</option>
	<option value="蓝色">蓝色</option>
	<option value="红黑双色">红黑双色</option>
	<option value="F-SPORT专属蓝黑双色">F-SPORT专属蓝黑双色</option>
	<option value="石榴红色">石榴红色</option>
	<option value="鞍棕色">鞍棕色</option>
	<option value="米色">米色</option>
	<option value="褐色">褐色</option>
	<option value="黑/鞍棕双色">黑/鞍棕双色</option>
	<option value="醇白色">醇白色</option>
	<option value=""></option>
	<option value="黑色+鞍棕色">黑色+鞍棕色</option>
	<option value="浅灰色">浅灰色</option>
	<option value="上黑下白">上黑下白</option>
	<option value="象牙色">象牙色</option>
	<option value="黑色">黑色</option>
	<option value="黄水晶棕色">黄水晶棕色</option>
	<option value="暗玫瑰红色">暗玫瑰红色</option>
	<option value="棕色">棕色</option>
	<option value="蓝色">蓝色</option>
	<option value="红黑双色">红黑双色</option>
	<option value="F-SPORT专属蓝黑双色">F-SPORT专属蓝黑双色</option>
	<option value="石榴红色">石榴红色</option>
	<option value="鞍棕色">鞍棕色</option>
	<option value="米色">米色</option>
	<option value="褐色">褐色</option>
	<option value="黑/鞍棕双色">黑/鞍棕双色</option>
	<option value="醇白色">醇白色</option>
	<option value=""></option>
	<option value="黑色+鞍棕色">黑色+鞍棕色</option>
	<option value="浅灰色">浅灰色</option>
	<option value="上黑下白">上黑下白</option>
	<option value="象牙色">象牙色</option>
	<option value="黑色">黑色</option>
	<option value="黄水晶棕色">黄水晶棕色</option>
	<option value="暗玫瑰红色">暗玫瑰红色</option>
	<option value="棕色">棕色</option>
	<option value="蓝色">蓝色</option>
	<option value="红黑双色">红黑双色</option>
	<option value="F-SPORT专属蓝黑双色">F-SPORT专属蓝黑双色</option>
	<option value="石榴红色">石榴红色</option>
	<option value="鞍棕色">鞍棕色</option>
	<option value="米色">米色</option>
	<option value="褐色">褐色</option>
	<option value="黑/鞍棕双色">黑/鞍棕双色</option>
	<option value="醇白色">醇白色</option>
	<option value=""></option>
	<option value="黑色+鞍棕色">黑色+鞍棕色</option>
	<option value="浅灰色">浅灰色</option>
	<option value="上黑下白">上黑下白</option>
	<option value="象牙色">象牙色</option>
	<option value="黑色">黑色</option>
	<option value="黄水晶棕色">黄水晶棕色</option>
	<option value="暗玫瑰红色">暗玫瑰红色</option>
	<option value="棕色">棕色</option>
	<option value="蓝色">蓝色</option>
	<option value="红黑双色">红黑双色</option>
	<option value="F-SPORT专属蓝黑双色">F-SPORT专属蓝黑双色</option>
	<option value="石榴红色">石榴红色</option>
	<option value="鞍棕色">鞍棕色</option>
	<option value="米色">米色</option>
	<option value="褐色">褐色</option>
	<option value="黑/鞍棕双色">黑/鞍棕双色</option>
	<option value="醇白色">醇白色</option>
	<option value="黑色">黑色</option>
	<option value="暗玫瑰红色">暗玫瑰红色</option>
	<option value="鞍棕色">鞍棕色</option>
	<option value="褐色">褐色</option>
	<option value="醇白色">醇白色</option>
	<option value="浅灰色">浅灰色</option>
	<option value="白赭色内饰+银色金属感材质">白赭色内饰+银色金属感材质</option>
	<option value="黑色">黑色</option>
	<option value="白赭色内饰+暗棕色材质">白赭色内饰+暗棕色材质</option>
	<option value="白赭色内饰+乌木饰">白赭色内饰+乌木饰</option>
	<option value="白赭色内饰+竹内饰">白赭色内饰+竹内饰</option>
	<option value="黑内饰+专属金属感材质">黑内饰+专属金属感材质</option>
	<option value="月光石色">月光石色</option>
	<option value="马鞍棕">马鞍棕</option>
	<option value="黑灰">黑灰</option>
	<option value="灰色">灰色</option>
	<option value="米色">米色</option>
	<option value="砖红">砖红</option>
	<option value="黑色内饰+乌木饰">黑色内饰+乌木饰</option>
	<option value="黑色内饰+银色金属感材质">黑色内饰+银色金属感材质</option>
	<option value="黑色内饰+暗棕色材质">黑色内饰+暗棕色材质</option>
	<option value="黑色内饰+竹内饰">黑色内饰+竹内饰</option>
	<option value="白色">白色</option>
	<option value="岩灰色">岩灰色</option>
	<option value="玫瑰红">玫瑰红</option>
	<option value=""></option>

</select></td>
         </tr>
         <tr>
         <td>商检单号：</td><td><input name="txtShangJianDanHao" type="text" id="txtShangJianDanHao" /> </td>
         <td>合格证号：</td><td><input name="txtHeGeZhengHao" type="text" id="txtHeGeZhengHao" /> </td>
         <td>进口证号：</td><td><input name="txtJinKouZhengHao" type="text" id="txtJinKouZhengHao" /> </td>
         <td>车辆规格：</td><td><input name="txtCheLiangGuiGe" type="text" id="txtCheLiangGuiGe" /> </td>
         </tr>
         <tr>
         <td>车辆种类：</td>
         <td>
         <select name="ddlCheLiangSort" id="ddlCheLiangSort" style="border:none;width:125px;">

</select></td>
         <td>年审日期：</td><td><input name="txtCheLiangNextExaDate" type="text" id="txtCheLiangNextExaDate" class="inputCss easyui-datebox" />
         </td>
         <td>
         </td><td style="color:red;font-weight:bold;"> </td>
         <td></td><td></td>
         </tr>
         </table>
         </div>
      <!--车辆信息 end-->  
      
      <div style="height:5px;"></div>

      <!--按钮区域 start-->
      <div align="center" id="btnBottomDiv" >
         
            <a onclick="return saveCheck();" id="lnkSave" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSave','')">保存</a>
         <a  id="A1" class="easyui-linkbutton" onclick="cancelAddVehicle()" >取消</a>
      </div>
      <!--按钮区域 end-->
    </div>
    


</form>
     <script language="javascript" type="text/javascript" > 

		$(function() {
			var formJson = eval('(' + '<s:property value="jsonData" escape="false"/>' + ')');
			initFormData(formJson);
			show(3);
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
             if ($("#" + tmp + "Div").length > 0) { $("#" + tmp + "Div").hide(); }
             if (sort == 1) { $("#" + tmp).removeClass(); $("#a").addClass("tabs_active"); tmp = "a"; }
             if (sort == 2) { $("#" + tmp).removeClass(); $("#b").addClass("tabs_active"); tmp = "b"; }
             if (sort == 3) { $("#" + tmp).removeClass(); $("#c").addClass("tabs_active"); tmp = "c"; }
             if (sort == 4) { $("#" + tmp).removeClass(); $("#d").addClass("tabs_active"); tmp = "d"; }

             $("#" + tmp + "Div").show();
         }


         //证件号码是否重复验证
         function checkVIN() {
             $.get("customNewCheck.aspx?d=" + new Date(), {
                 type: "strCheckVINNo",
                 vehicleId: "0ccc60b3-e124-41c0-9aa4-dc48cc259acd",
                 vin: $("#txtCheLiangCheJiaHao").val()
             }, function (data) {
                 if (data != "ok") {
                     $("#txtCheLiangCheJiaHao").css("background-color", "red");
                 } else {
                     $("#txtCheLiangCheJiaHao").css("background-color", "white");
                 }
             });
         }


         var btnFlag = "0";
         function saveCheck() {
             var err = "";

             //验证必须填项
                       
             if ($.trim($("#ddlCheLiangZhiZaoShang").val()) == "") { err += "车辆信息->车辆制造商不能为空！\n"; }
             if ($.trim($("#ddlCheLiangCheXi").val()) == "") { err += "车辆信息->车系不能为空！\n"; }
             if ($.trim($("#txtCheLiangCheXingDaiMa").val()) == "") { err += "车辆信息->车型代码不能为空！\n"; }
             if ($.trim($("#txtCheLiangChePaiHao").val()) == "") { err += "车辆信息->车牌号不能为空！\n"; }
             if ($.trim($("#txtCheLiangCheJiaHao").val()) == "") { err += "车辆信息->车架号不能为空！\n"; }
             if ($.trim($("#txtCheLiangFaDongJiHao").val()) == "") { err += "车辆信息->发动机号不能为空！\n"; }
             if ($.trim($("#txtCheLiangBianSuXiangHao").val()) == "") { err += "车辆信息->变速箱号不能为空！\n"; }

             if (err != "") { 
			 	alert(err); 
				return false;
			 }else{
				 return true;
			 }

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
             location.href = "customNewAdd.action?showSort=3&custId=" + $("#txtCustId").val() + "&d=" + new Date();
             return false;
         }

     </script>
</body>
</html>
