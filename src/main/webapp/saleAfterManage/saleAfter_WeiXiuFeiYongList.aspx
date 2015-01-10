
<html>
<head><title>
	维修费用
</title>

    <style type="text/css">
     td
     {
     	white-space:nowrap;
     	}
     
     #jieSuanList td
     {
     	height:25px;
     	width:100px;
     }
     
     #jieSuanList input
     {
     	border:none;
     	width:100%;
     	}
    </style>

 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<script language="javascript" type="text/javascript" >

    var tmp = '#FFFFFF';
    $(function () {
        $('tr').mouseover(function () {
            tmp = this.style.backgroundColor;
            this.style.backgroundColor = '#eaf2ff';
        });

        $('tr').mouseout(function () {
            this.style.backgroundColor = tmp;
        });
    });

    function  Reload() {
        parent.showRefresh();    
    }


</script>


<body>
    <form name="form1" method="post" action="saleAfter_WeiXiuFeiYongList.aspx?saleAfterWeiXiuGuid=d4e10073-1054-4c86-b552-f44623513d0b&amp;dMon+Jan+05+2015+15%3a46%3a46+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTY3NDczODEyNA9kFgICAw9kFgwCAQ8WAh4LXyFJdGVtQ291bnQCARYCAgEPZBYCZg8VESRiNzNjOGE0Yy0zZmQ1LTRkNWMtODZkNS1mODZmZjYyYmNmYTABMQbkv53lhbsADjMwLDAwMEtN5L+d5YW7BDQuOTUGNDk1LjAwJGI3M2M4YTRjLTNmZDUtNGQ1Yy04NmQ1LWY4NmZmNjJiY2ZhMAY0OTUuMDAkYjczYzhhNGMtM2ZkNS00ZDVjLTg2ZDUtZjg2ZmY2MmJjZmEwJGI3M2M4YTRjLTNmZDUtNGQ1Yy04NmQ1LWY4NmZmNjJiY2ZhMAY0OTUuMDAM5Y6C5a625L+d5L+uAigpAAAAZAICDxYCHwACCRYSAgEPZBYCZg8VFCRjYzcwZjBkZC00MzRiLTQ4NzUtYmUxNy02ZWEwNGRiMGU5ZGYBMQowODgwODgwMDgwIembt+WFi+iQqOaWr+e6r+eJjOi9pueql+a4hea0l+a2sgQwLjAwBDEuMDAEMC4wMAU0Ni4wMCRjYzcwZjBkZC00MzRiLTQ4NzUtYmUxNy02ZWEwNGRiMGU5ZGYAJGNjNzBmMGRkLTQzNGItNDg3NS1iZTE3LTZlYTA0ZGIwZTlkZiRjYzcwZjBkZC00MzRiLTQ4NzUtYmUxNy02ZWEwNGRiMGU5ZGYkY2M3MGYwZGQtNDM0Yi00ODc1LWJlMTctNmVhMDRkYjBlOWRmAAU0Ni4wMCRjYzcwZjBkZC00MzRiLTQ4NzUtYmUxNy02ZWEwNGRiMGU5ZGYkY2M3MGYwZGQtNDM0Yi00ODc1LWJlMTctNmVhMDRkYjBlOWRmBTQ2LjAwDOWOguWutuS/neS/rgBkAgIPZBYCZg8VFCRmNWRjZWI2NC0yN2M4LTRjMjQtYjhhYy00NjhiYWZhN2E3ZmEBMgowODg4MDgzNDAzFumrmOe6p+acuuayue+8iDVXMzDvvIkEMC4wMAU0NC4wMAQwLjAwBDMuODAkZjVkY2ViNjQtMjdjOC00YzI0LWI4YWMtNDY4YmFmYTdhN2ZhACRmNWRjZWI2NC0yN2M4LTRjMjQtYjhhYy00NjhiYWZhN2E3ZmEkZjVkY2ViNjQtMjdjOC00YzI0LWI4YWMtNDY4YmFmYTdhN2ZhJGY1ZGNlYjY0LTI3YzgtNGMyNC1iOGFjLTQ2OGJhZmE3YTdmYQAGMTY3LjIwJGY1ZGNlYjY0LTI3YzgtNGMyNC1iOGFjLTQ2OGJhZmE3YTdmYSRmNWRjZWI2NC0yN2M4LTRjMjQtYjhhYy00NjhiYWZhN2E3ZmEGMTY3LjIwDOWOguWutuS/neS/rgBkAgMPZBYCZg8VFCQ5OTVjZTdmNy0yYTgxLTQwYjctYTdkNy00NTM1NTk4YzhjN2MBMwo4NzEzOTMwMDQwFeepuuawlOWHgOWMlua7pOa4heWZqAQwLjAwBDEuMDAEMC4wMAYzMDYuMDAkOTk1Y2U3ZjctMmE4MS00MGI3LWE3ZDctNDUzNTU5OGM4YzdjACQ5OTVjZTdmNy0yYTgxLTQwYjctYTdkNy00NTM1NTk4YzhjN2MkOTk1Y2U3ZjctMmE4MS00MGI3LWE3ZDctNDUzNTU5OGM4YzdjJDk5NWNlN2Y3LTJhODEtNDBiNy1hN2Q3LTQ1MzU1OThjOGM3YwAGMzA2LjAwJDk5NWNlN2Y3LTJhODEtNDBiNy1hN2Q3LTQ1MzU1OThjOGM3YyQ5OTVjZTdmNy0yYTgxLTQwYjctYTdkNy00NTM1NTk4YzhjN2MGMzA2LjAwDOWOguWutuS/neS/rgBkAgQPZBYCZg8VFCQ2Nzg5MmIyNy01MDI3LTQ2MDgtODgyNy1mZWY5NmI4NDFmNjQBNAo5MDQzMDEyMDMxHOihrOWeqyjnlKjkuo7msrnlupXlo7PmjpLmlL4EMC4wMAQxLjAwBDAuMDAENi4wMCQ2Nzg5MmIyNy01MDI3LTQ2MDgtODgyNy1mZWY5NmI4NDFmNjQAJDY3ODkyYjI3LTUwMjctNDYwOC04ODI3LWZlZjk2Yjg0MWY2NCQ2Nzg5MmIyNy01MDI3LTQ2MDgtODgyNy1mZWY5NmI4NDFmNjQkNjc4OTJiMjctNTAyNy00NjA4LTg4MjctZmVmOTZiODQxZjY0AAQ2LjAwJDY3ODkyYjI3LTUwMjctNDYwOC04ODI3LWZlZjk2Yjg0MWY2NCQ2Nzg5MmIyNy01MDI3LTQ2MDgtODgyNy1mZWY5NmI4NDFmNjQENi4wMAzljoLlrrbkv53kv64AZAIFD2QWAmYPFRQkNjZiY2NkYjctOTQ2YS00MDY0LWFhMGItYzNjMmUzMDY2ZTkzATUKMDQxNTIzMTA5MBvmnLrmsrnmu6TmuIXlmajmu6Toiq/nu4Tku7YEMC4wMAQxLjAwBDAuMDAFNjEuMDAkNjZiY2NkYjctOTQ2YS00MDY0LWFhMGItYzNjMmUzMDY2ZTkzACQ2NmJjY2RiNy05NDZhLTQwNjQtYWEwYi1jM2MyZTMwNjZlOTMkNjZiY2NkYjctOTQ2YS00MDY0LWFhMGItYzNjMmUzMDY2ZTkzJDY2YmNjZGI3LTk0NmEtNDA2NC1hYTBiLWMzYzJlMzA2NmU5MwAFNjEuMDAkNjZiY2NkYjctOTQ2YS00MDY0LWFhMGItYzNjMmUzMDY2ZTkzJDY2YmNjZGI3LTk0NmEtNDA2NC1hYTBiLWMzYzJlMzA2NmU5MwU2MS4wMAzljoLlrrbkv53kv64AZAIGD2QWAmYPFRQkYjFjNDljZmQtNTZlZi00OTVhLWJiZjItMmQ5M2Q4MzZlMzQ3ATYKODUyMTQxMDEwMBXlkI7liK7msLTlmajmqaHog7bmnaEEMC4wMAQxLjAwBDAuMDAFMzIuMDAkYjFjNDljZmQtNTZlZi00OTVhLWJiZjItMmQ5M2Q4MzZlMzQ3ACRiMWM0OWNmZC01NmVmLTQ5NWEtYmJmMi0yZDkzZDgzNmUzNDckYjFjNDljZmQtNTZlZi00OTVhLWJiZjItMmQ5M2Q4MzZlMzQ3JGIxYzQ5Y2ZkLTU2ZWYtNDk1YS1iYmYyLTJkOTNkODM2ZTM0NwAFMzIuMDAkYjFjNDljZmQtNTZlZi00OTVhLWJiZjItMmQ5M2Q4MzZlMzQ3JGIxYzQ5Y2ZkLTU2ZWYtNDk1YS1iYmYyLTJkOTNkODM2ZTM0NwUzMi4wMAzljoLlrrbkv53kv64AZAIHD2QWAmYPFRQkODc3MWExOGItNWJlNC00MzcxLWI2NTctYzk4MTkxOTljMTNlATcKODUyMTQ2ODAyMBjlt6bkvqfliK7msLTlmajmqaHog7bmnaEEMC4wMAQxLjAwBDAuMDAFNTUuMDAkODc3MWExOGItNWJlNC00MzcxLWI2NTctYzk4MTkxOTljMTNlACQ4NzcxYTE4Yi01YmU0LTQzNzEtYjY1Ny1jOTgxOTE5OWMxM2UkODc3MWExOGItNWJlNC00MzcxLWI2NTctYzk4MTkxOTljMTNlJDg3NzFhMThiLTViZTQtNDM3MS1iNjU3LWM5ODE5MTk5YzEzZQAFNTUuMDAkODc3MWExOGItNWJlNC00MzcxLWI2NTctYzk4MTkxOTljMTNlJDg3NzFhMThiLTViZTQtNDM3MS1iNjU3LWM5ODE5MTk5YzEzZQU1NS4wMAzljoLlrrbkv53kv64AZAIID2QWAmYPFRQkMWIxNDM1MzItMjQ1Mi00ZjNjLTlhYzQtNDE3N2M3YTY4Zjg1ATgKODUyMTQ1MzA4MBjlt6bkvqfliK7msLTlmajmqaHog7bmnaEEMC4wMAQxLjAwBDAuMDAFNzAuMDAkMWIxNDM1MzItMjQ1Mi00ZjNjLTlhYzQtNDE3N2M3YTY4Zjg1ACQxYjE0MzUzMi0yNDUyLTRmM2MtOWFjNC00MTc3YzdhNjhmODUkMWIxNDM1MzItMjQ1Mi00ZjNjLTlhYzQtNDE3N2M3YTY4Zjg1JDFiMTQzNTMyLTI0NTItNGYzYy05YWM0LTQxNzdjN2E2OGY4NQAFNzAuMDAkMWIxNDM1MzItMjQ1Mi00ZjNjLTlhYzQtNDE3N2M3YTY4Zjg1JDFiMTQzNTMyLTI0NTItNGYzYy05YWM0LTQxNzdjN2E2OGY4NQU3MC4wMAzljoLlrrbkv53kv64AZAIJD2QWAmYPFRQkMDc5ZWQ2ZmYtNGQ0Ny00YTNlLWE0YTQtNzc5M2IwNzU1NmU3ATkEQ1NZSBXovabouqvmtqbmu5Hlm5vlkIjkuIAEMC4wMAQxLjAwBDAuMDAFODAuMDAkMDc5ZWQ2ZmYtNGQ0Ny00YTNlLWE0YTQtNzc5M2IwNzU1NmU3ACQwNzllZDZmZi00ZDQ3LTRhM2UtYTRhNC03NzkzYjA3NTU2ZTckMDc5ZWQ2ZmYtNGQ0Ny00YTNlLWE0YTQtNzc5M2IwNzU1NmU3JDA3OWVkNmZmLTRkNDctNGEzZS1hNGE0LTc3OTNiMDc1NTZlNwAFODAuMDAkMDc5ZWQ2ZmYtNGQ0Ny00YTNlLWE0YTQtNzc5M2IwNzU1NmU3JDA3OWVkNmZmLTRkNDctNGEzZS1hNGE0LTc3OTNiMDc1NTZlNwU4MC4wMAzljoLlrrbkv53kv64AZAIDDw8WAh4EVGV4dGVkZAINDw8WAh4HRW5hYmxlZGhkZAIODw8WAh8CaGRkAg8PDxYCHwJoZGRkLAv7k8LvjuEyHVI9a7Jq+0SuOY0=" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


    <div style="display:none;"><input type="button" value="打印" onClick="printThis();" /></div>

    <input name="txtVin" type="text" value="JTJZA11A8D2033028" id="txtVin" style="display:none;" />

    <div style="margin-left:5px;margin-right:5px;"> 
     <!--维修列表 satrt-->
     <table border="1" style="border-collapse:collapse;border:1px solid #d6d3ce;width:100%" >
      
      
      <tr>
      <td style="width:30px;">NO.</td>
      <td style="width:60px;">工段</td>
      <td style="width:120px;">项目编号</td>
      <td style="width:200px;">维修内容</td>
      <td style="width:50px;text-align:right;">工时</td>
      <td style="width:60px;text-align:right;width:70px;">工时费</td>
      <td style="width:60px;text-align:right;">实收</td>
      <td style="width:140px;">帐套</td>
      <td style="width:100px;">维修班组</td>
      <td style="width:130px;">完检人</td>
      </tr>
     
     <tr  ondblclick="feiYongMdf('b73c8a4c-3fd5-4d5c-86d5-f86ff62bcfa0','1')" >
      <td style="text-align:center;">1</td>
      <td>保养</td>
      <td></td><td>30,000KM保养</td>
      <td style="text-align:right;">4.95</td><td style="text-align:right;">495.00</td>
      <td style="text-align:right;">
      <input type="hidden" name="weiXiu" id="b73c8a4c-3fd5-4d5c-86d5-f86ff62bcfa0" />
      <input type="text" value="495.00" id="b73c8a4c-3fd5-4d5c-86d5-f86ff62bcfa0GongShi"
       style="display:none;width:60px;height:23px;"  class="easyui-numberbox" data-options="precision:2" 
       onblur="detailHeJi();" />
      <span id="b73c8a4c-3fd5-4d5c-86d5-f86ff62bcfa0B">495.00</span>
      </td>
      <td>厂家保修()</td>
      <td><!----></td>
      <td></td></tr>
     
      <tr>
      <td></td><td>合计</td>
      <td></td><td></td>
      <td style="text-align:right;">4.95</td><td id="zheQianGongShiAll" style="text-align:right;">495.00</td>
      <td style="color:blue;font-weight:bold;text-align:right;"  id="gongShiAll">495.00</td>
      <td></td><td></td>
      <td></td></tr>
     

     </table>
     <!--维修列表 end-->

     <table border="0" cellpadding="0" cellspacing="0" >
     <tr>
     <td style="height:5px;"></td>
     </tr>
     </table>

     <!--物料列表 satrt-->
     <table border="1" style="border-collapse:collapse;border:1px solid #d6d3ce;width:100%" >
       
        <tr>
           <td  width='30px'>NO.</td>
           <td  width="180px">商品编号</td>
           <td  width="200px">商品名称</td>
           <td  style="text-align:right;width:50px;">需求数</td>
           <td  style="text-align:right;width:60px;">领用数量</td>
           <td  style="text-align:right;width:60px;">退货数量</td>
           <td  style="text-align:right;width:80px;">单价</td>
           <td  style="text-align:right;width:80px;">自费</td>
           <td  style="text-align:right;width:80px;">实际费用</td>
           <td  width="130px">帐套</td>
          </tr>
        
         <tr  ondblclick="feiYongMdf('cc70f0dd-434b-4875-be17-6ea04db0e9df','2')">
           <td  style="text-align:center;">1</td>
           <td>0880880080</td>
           <td>雷克萨斯纯牌车窗清洗液</td>
           <td style="text-align:right;">0.00</td>
           <td style="text-align:right;">1.00</td>
           <td style="text-align:right;">0.00</td>
           <td style="text-align:right;">46.00</td>
           <td style="text-align:right;"> 
           <input type="hidden" name="wuLiao" id="cc70f0dd-434b-4875-be17-6ea04db0e9df" />
           <input type="text" value="" id="cc70f0dd-434b-4875-be17-6ea04db0e9dfZiFei" 
           style="display:none;width:65px;height:23px;"   class="easyui-numberbox" data-options="precision:2" 
           onblur="ziFeiChange('cc70f0dd-434b-4875-be17-6ea04db0e9df');"
            />
            <span id="cc70f0dd-434b-4875-be17-6ea04db0e9dfZiFeiB"></span>
           </td>
           <td style="text-align:right;">
            <input type="text" value="46.00" id="cc70f0dd-434b-4875-be17-6ea04db0e9dfCaiLiao" 
            style="display:none;width:65px;height:23px;" class="easyui-numberbox" data-options="precision:2"
             onblur="detailHeJi();"
             />
            <span id="cc70f0dd-434b-4875-be17-6ea04db0e9dfB">46.00</span>
           </td>
           <td>厂家保修</td>
          </tr>
        
         <tr  ondblclick="feiYongMdf('f5dceb64-27c8-4c24-b8ac-468bafa7a7fa','2')">
           <td  style="text-align:center;">2</td>
           <td>0888083403</td>
           <td>高级机油（5W30）</td>
           <td style="text-align:right;">0.00</td>
           <td style="text-align:right;">44.00</td>
           <td style="text-align:right;">0.00</td>
           <td style="text-align:right;">3.80</td>
           <td style="text-align:right;"> 
           <input type="hidden" name="wuLiao" id="f5dceb64-27c8-4c24-b8ac-468bafa7a7fa" />
           <input type="text" value="" id="f5dceb64-27c8-4c24-b8ac-468bafa7a7faZiFei" 
           style="display:none;width:65px;height:23px;"   class="easyui-numberbox" data-options="precision:2" 
           onblur="ziFeiChange('f5dceb64-27c8-4c24-b8ac-468bafa7a7fa');"
            />
            <span id="f5dceb64-27c8-4c24-b8ac-468bafa7a7faZiFeiB"></span>
           </td>
           <td style="text-align:right;">
            <input type="text" value="167.20" id="f5dceb64-27c8-4c24-b8ac-468bafa7a7faCaiLiao" 
            style="display:none;width:65px;height:23px;" class="easyui-numberbox" data-options="precision:2"
             onblur="detailHeJi();"
             />
            <span id="f5dceb64-27c8-4c24-b8ac-468bafa7a7faB">167.20</span>
           </td>
           <td>厂家保修</td>
          </tr>
        
         <tr  ondblclick="feiYongMdf('995ce7f7-2a81-40b7-a7d7-4535598c8c7c','2')">
           <td  style="text-align:center;">3</td>
           <td>8713930040</td>
           <td>空气净化滤清器</td>
           <td style="text-align:right;">0.00</td>
           <td style="text-align:right;">1.00</td>
           <td style="text-align:right;">0.00</td>
           <td style="text-align:right;">306.00</td>
           <td style="text-align:right;"> 
           <input type="hidden" name="wuLiao" id="995ce7f7-2a81-40b7-a7d7-4535598c8c7c" />
           <input type="text" value="" id="995ce7f7-2a81-40b7-a7d7-4535598c8c7cZiFei" 
           style="display:none;width:65px;height:23px;"   class="easyui-numberbox" data-options="precision:2" 
           onblur="ziFeiChange('995ce7f7-2a81-40b7-a7d7-4535598c8c7c');"
            />
            <span id="995ce7f7-2a81-40b7-a7d7-4535598c8c7cZiFeiB"></span>
           </td>
           <td style="text-align:right;">
            <input type="text" value="306.00" id="995ce7f7-2a81-40b7-a7d7-4535598c8c7cCaiLiao" 
            style="display:none;width:65px;height:23px;" class="easyui-numberbox" data-options="precision:2"
             onblur="detailHeJi();"
             />
            <span id="995ce7f7-2a81-40b7-a7d7-4535598c8c7cB">306.00</span>
           </td>
           <td>厂家保修</td>
          </tr>
        
         <tr  ondblclick="feiYongMdf('67892b27-5027-4608-8827-fef96b841f64','2')">
           <td  style="text-align:center;">4</td>
           <td>9043012031</td>
           <td>衬垫(用于油底壳排放</td>
           <td style="text-align:right;">0.00</td>
           <td style="text-align:right;">1.00</td>
           <td style="text-align:right;">0.00</td>
           <td style="text-align:right;">6.00</td>
           <td style="text-align:right;"> 
           <input type="hidden" name="wuLiao" id="67892b27-5027-4608-8827-fef96b841f64" />
           <input type="text" value="" id="67892b27-5027-4608-8827-fef96b841f64ZiFei" 
           style="display:none;width:65px;height:23px;"   class="easyui-numberbox" data-options="precision:2" 
           onblur="ziFeiChange('67892b27-5027-4608-8827-fef96b841f64');"
            />
            <span id="67892b27-5027-4608-8827-fef96b841f64ZiFeiB"></span>
           </td>
           <td style="text-align:right;">
            <input type="text" value="6.00" id="67892b27-5027-4608-8827-fef96b841f64CaiLiao" 
            style="display:none;width:65px;height:23px;" class="easyui-numberbox" data-options="precision:2"
             onblur="detailHeJi();"
             />
            <span id="67892b27-5027-4608-8827-fef96b841f64B">6.00</span>
           </td>
           <td>厂家保修</td>
          </tr>
        
         <tr  ondblclick="feiYongMdf('66bccdb7-946a-4064-aa0b-c3c2e3066e93','2')">
           <td  style="text-align:center;">5</td>
           <td>0415231090</td>
           <td>机油滤清器滤芯组件</td>
           <td style="text-align:right;">0.00</td>
           <td style="text-align:right;">1.00</td>
           <td style="text-align:right;">0.00</td>
           <td style="text-align:right;">61.00</td>
           <td style="text-align:right;"> 
           <input type="hidden" name="wuLiao" id="66bccdb7-946a-4064-aa0b-c3c2e3066e93" />
           <input type="text" value="" id="66bccdb7-946a-4064-aa0b-c3c2e3066e93ZiFei" 
           style="display:none;width:65px;height:23px;"   class="easyui-numberbox" data-options="precision:2" 
           onblur="ziFeiChange('66bccdb7-946a-4064-aa0b-c3c2e3066e93');"
            />
            <span id="66bccdb7-946a-4064-aa0b-c3c2e3066e93ZiFeiB"></span>
           </td>
           <td style="text-align:right;">
            <input type="text" value="61.00" id="66bccdb7-946a-4064-aa0b-c3c2e3066e93CaiLiao" 
            style="display:none;width:65px;height:23px;" class="easyui-numberbox" data-options="precision:2"
             onblur="detailHeJi();"
             />
            <span id="66bccdb7-946a-4064-aa0b-c3c2e3066e93B">61.00</span>
           </td>
           <td>厂家保修</td>
          </tr>
        
         <tr  ondblclick="feiYongMdf('b1c49cfd-56ef-495a-bbf2-2d93d836e347','2')">
           <td  style="text-align:center;">6</td>
           <td>8521410100</td>
           <td>后刮水器橡胶条</td>
           <td style="text-align:right;">0.00</td>
           <td style="text-align:right;">1.00</td>
           <td style="text-align:right;">0.00</td>
           <td style="text-align:right;">32.00</td>
           <td style="text-align:right;"> 
           <input type="hidden" name="wuLiao" id="b1c49cfd-56ef-495a-bbf2-2d93d836e347" />
           <input type="text" value="" id="b1c49cfd-56ef-495a-bbf2-2d93d836e347ZiFei" 
           style="display:none;width:65px;height:23px;"   class="easyui-numberbox" data-options="precision:2" 
           onblur="ziFeiChange('b1c49cfd-56ef-495a-bbf2-2d93d836e347');"
            />
            <span id="b1c49cfd-56ef-495a-bbf2-2d93d836e347ZiFeiB"></span>
           </td>
           <td style="text-align:right;">
            <input type="text" value="32.00" id="b1c49cfd-56ef-495a-bbf2-2d93d836e347CaiLiao" 
            style="display:none;width:65px;height:23px;" class="easyui-numberbox" data-options="precision:2"
             onblur="detailHeJi();"
             />
            <span id="b1c49cfd-56ef-495a-bbf2-2d93d836e347B">32.00</span>
           </td>
           <td>厂家保修</td>
          </tr>
        
         <tr  ondblclick="feiYongMdf('8771a18b-5be4-4371-b657-c9819199c13e','2')">
           <td  style="text-align:center;">7</td>
           <td>8521468020</td>
           <td>左侧刮水器橡胶条</td>
           <td style="text-align:right;">0.00</td>
           <td style="text-align:right;">1.00</td>
           <td style="text-align:right;">0.00</td>
           <td style="text-align:right;">55.00</td>
           <td style="text-align:right;"> 
           <input type="hidden" name="wuLiao" id="8771a18b-5be4-4371-b657-c9819199c13e" />
           <input type="text" value="" id="8771a18b-5be4-4371-b657-c9819199c13eZiFei" 
           style="display:none;width:65px;height:23px;"   class="easyui-numberbox" data-options="precision:2" 
           onblur="ziFeiChange('8771a18b-5be4-4371-b657-c9819199c13e');"
            />
            <span id="8771a18b-5be4-4371-b657-c9819199c13eZiFeiB"></span>
           </td>
           <td style="text-align:right;">
            <input type="text" value="55.00" id="8771a18b-5be4-4371-b657-c9819199c13eCaiLiao" 
            style="display:none;width:65px;height:23px;" class="easyui-numberbox" data-options="precision:2"
             onblur="detailHeJi();"
             />
            <span id="8771a18b-5be4-4371-b657-c9819199c13eB">55.00</span>
           </td>
           <td>厂家保修</td>
          </tr>
        
         <tr  ondblclick="feiYongMdf('1b143532-2452-4f3c-9ac4-4177c7a68f85','2')">
           <td  style="text-align:center;">8</td>
           <td>8521453080</td>
           <td>左侧刮水器橡胶条</td>
           <td style="text-align:right;">0.00</td>
           <td style="text-align:right;">1.00</td>
           <td style="text-align:right;">0.00</td>
           <td style="text-align:right;">70.00</td>
           <td style="text-align:right;"> 
           <input type="hidden" name="wuLiao" id="1b143532-2452-4f3c-9ac4-4177c7a68f85" />
           <input type="text" value="" id="1b143532-2452-4f3c-9ac4-4177c7a68f85ZiFei" 
           style="display:none;width:65px;height:23px;"   class="easyui-numberbox" data-options="precision:2" 
           onblur="ziFeiChange('1b143532-2452-4f3c-9ac4-4177c7a68f85');"
            />
            <span id="1b143532-2452-4f3c-9ac4-4177c7a68f85ZiFeiB"></span>
           </td>
           <td style="text-align:right;">
            <input type="text" value="70.00" id="1b143532-2452-4f3c-9ac4-4177c7a68f85CaiLiao" 
            style="display:none;width:65px;height:23px;" class="easyui-numberbox" data-options="precision:2"
             onblur="detailHeJi();"
             />
            <span id="1b143532-2452-4f3c-9ac4-4177c7a68f85B">70.00</span>
           </td>
           <td>厂家保修</td>
          </tr>
        
         <tr  ondblclick="feiYongMdf('079ed6ff-4d47-4a3e-a4a4-7793b07556e7','2')">
           <td  style="text-align:center;">9</td>
           <td>CSYH</td>
           <td>车身润滑四合一</td>
           <td style="text-align:right;">0.00</td>
           <td style="text-align:right;">1.00</td>
           <td style="text-align:right;">0.00</td>
           <td style="text-align:right;">80.00</td>
           <td style="text-align:right;"> 
           <input type="hidden" name="wuLiao" id="079ed6ff-4d47-4a3e-a4a4-7793b07556e7" />
           <input type="text" value="" id="079ed6ff-4d47-4a3e-a4a4-7793b07556e7ZiFei" 
           style="display:none;width:65px;height:23px;"   class="easyui-numberbox" data-options="precision:2" 
           onblur="ziFeiChange('079ed6ff-4d47-4a3e-a4a4-7793b07556e7');"
            />
            <span id="079ed6ff-4d47-4a3e-a4a4-7793b07556e7ZiFeiB"></span>
           </td>
           <td style="text-align:right;">
            <input type="text" value="80.00" id="079ed6ff-4d47-4a3e-a4a4-7793b07556e7CaiLiao" 
            style="display:none;width:65px;height:23px;" class="easyui-numberbox" data-options="precision:2"
             onblur="detailHeJi();"
             />
            <span id="079ed6ff-4d47-4a3e-a4a4-7793b07556e7B">80.00</span>
           </td>
           <td>厂家保修</td>
          </tr>
        
          <tr>
           <td></td>
           <td>合计</td>
           <td></td><td></td>
           <td></td>
           <td style="text-align:right;">52.00</td>
           <td id="zheQianCaiLiaoAll" style="text-align:right;">823.20</td>
           <td  style="color:blue;font-weight:bold;text-align:right;" id="ziFeiAll"></td>
           <td  style="color:blue;font-weight:bold;text-align:right;" id="caiLiaoAll">823.20</td>
           <td></td>
          </tr>
        
     </table>
     <!--物料列表 end-->

     <table border="0" cellpadding="0" cellspacing="0" >
     <tr>
     <td style="height:5px;"><!--占位符--></td>
     </tr>
     </table>

     <!--结算信息 start-->
     <table border="0" cellpadding="0" cellspacing="0" style="width:100%" >
     <tr>
     <td>提示信息:</td>
     <td style="width:830px;height:25px"><input name="txtTiShiInfo" type="text" readonly="readonly" id="txtTiShiInfo" style="width:100%" /> </td>
     </tr>
     <tr>
     <td>结算提示:</td>
     <td style="width:830px;height:25px"><input name="txtJieSuanInfo" type="text" maxlength="300" id="txtJieSuanInfo" style="width:100%" /> </td>
     </tr>
     <tr>
     <td>折扣信息:</td>
     <td style="width:830px;height:25px"><input name="txtZheKouInfo" type="text" maxlength="300" id="txtZheKouInfo" style="width:100%" /> </td>
     </tr> 
     </table>
     <table border="0">
     <tr>
     <td style="height:3px;"></td>
     </tr>
     </table>
      <table border="1" id="jieSuanList" style="border-collapse:collapse;border:1px solid #d6d3ce;width:100%" >
      <tr>
       <td>自费</td><td><input name="txtZiFeiJinE" type="text" readonly="readonly" id="txtZiFeiJinE" style="text-align:right;" /></td>
       <td>自费帐套</td><td><select name="ddlZiFeiZhangTao" id="ddlZiFeiZhangTao" style="border:none;width:93px;">
	<option selected="selected" value=""></option>
	<option value="正常维修">正常维修</option>
	<option value="大客户(月结)">大客户(月结)</option>
	<option value="保险自付">保险自付</option>

</select>
        </td>
       <td>工时(折前)</td><td style="color:blue;font-weight:bold;text-align:right;" id="gongShiZheQianHeJi">0</td>
       <td>工时(折后)</td><td style="color:blue;font-weight:bold;text-align:right;" id="gongShiZheHouHeJi">0</td>
      </tr>
      <tr>
       <td>工时券</td><td><input name="txtGongShiQuanJinE" type="text" id="txtGongShiQuanJinE" onBlur="heJiAll()" class="easyui-numberbox" data-options="min:0,precision:2" style="text-align:right;" /></td>
       <td>工时券帐套</td><td><select name="ddlGongShiQuanZhangTao" id="ddlGongShiQuanZhangTao" style="border:none;width:93px;">
	<option selected="selected" value=""></option>
	<option value="正常维修">正常维修</option>
	<option value="大客户(月结)">大客户(月结)</option>
	<option value="保险自付">保险自付</option>

</select>
        </td>
       <td>材料(折前)</td><td style="color:blue;font-weight:bold;text-align:right;" id="caiLiaoZheQianHeJi">0</td>
       <td>材料(折后)</td><td style="color:blue;font-weight:bold;text-align:right;" id="caiLiaoZheHouHeJi">0</td>
      </tr>
      <tr>
       <td>材料券</td><td><input name="txtCaiLiaoQuanJinE" type="text" id="txtCaiLiaoQuanJinE" onBlur="heJiAll()" class="easyui-numberbox" data-options="min:0,precision:2" style="text-align:right;" /></td>
       <td>材料帐套</td><td><select name="ddlCaiLiaoQuanZhangTao" id="ddlCaiLiaoQuanZhangTao" style="border:none;width:93px;">
	<option selected="selected" value=""></option>
	<option value="正常维修">正常维修</option>
	<option value="大客户(月结)">大客户(月结)</option>
	<option value="保险自付">保险自付</option>

</select>
         </td>
       <td>合计(折前)</td><td style="color:blue;font-weight:bold;text-align:right;" id="zheQianHeJi">0</td>
       <td>合计(折后)</td><td style="color:blue;font-weight:bold;text-align:right;" id="zheHouHeJi">0</td>
      </tr>
      <tr>
       <td style="color:Blue;font-weight:bold;text-align:right;"></td>
       <td style="color:Blue;font-weight:bold;text-align:left;"></td>
       <td>实收</td>    <td style="color:blue;font-weight:bold;text-align:right;"  id="shiShouHeJi">0</td>
       <td>工时实收</td><td style="color:blue;font-weight:bold;text-align:right;"  id="gongShiShiShouHeJi">0</td>
       <td>材料实收</td><td  style="color:blue;font-weight:bold;text-align:right" id="caiLiaoShiShouHeJi">0</td>
      </tr>
      <tr>
       <td style="color:Blue;font-weight:bold;text-align:right;">阳光会员</td>
       <td style="color:Blue;font-weight:bold;text-align:left;"><a href="#" onClick="huiYuanInfoShow();" >[RG01M1416921]</a></td>
       <td>使用卡钱包</td><td style="color:blue;font-weight:bold;text-align:right;" >0 </td>
       <td></td><td></td>
       <td></td><td></td>
      </tr>


      </table>

     <!--结算信息 end-->

     <!--按钮区域 start-->
     <table border="0" style="width:100%" >
     <tr>
     <td align="center">
      <a onClick="return getZheKou();" id="lnkZheKou" disabled="disabled" class="easyui-linkbutton">折扣</a>
      <a onClick="return saveCheck();" id="lnkSave" disabled="disabled" class="easyui-linkbutton">保存</a>
      <a onClick="return chuanSongCaiWu();" id="lnkChuanSongCaiWu" disabled="disabled" class="easyui-linkbutton">传送财务</a>
      <a onClick="return printThis(1,'print','');" id="lnkYiBanWeiXiuPrint" class="easyui-linkbutton">一般维修打印</a>
      <a onClick="return printThis(2,'print','');" id="lnkChangJiaWeiXiuPrint" class="easyui-linkbutton">厂家保修打印</a>
      <a onClick="return printThis(3,'print','');" id="lnkBaoXianWeiXiuPrint" class="easyui-linkbutton">保险打印</a>
      <a onClick="return printThis(0,'','sample');" id="lnkWeiXiuPrintTest" class="easyui-linkbutton" href="javascript:__doPostBack('lnkWeiXiuPrintTest','')">预览</a>

     </td>
     </tr>
     <tr>
     <td style="color:Blue;font-weight:bold;">
     
     </td>
     </tr>
     </table>

     <!--按钮区域 end-->
    </div>



    <script language="javascript" type="text/javascript" >
        //帐套写入
        
    </script>

    <script language="javascript" type="text/javascript" >

        //费用修改start

        function feiYongMdf(id, sort) {
            if (sort == "1") {
                $("#" + id + "GongShi").css("display", "block");
                $("#" + id + "B").css("display", "none");
            } else {
                $("#" + id + "CaiLiao").css("display", "block");
                $("#" + id + "B").css("display", "none");
                $("#" + id + "ZiFei").css("display", "block");
                $("#" + id + "ZiFeiB").css("display", "none");
            }

        }


        //实收工时费 修改合计
        function detailHeJi() {
            var gongShiAll = 0;
            var ziFeiAll = 0;
            var caiLiaoAll = 0;
            var obj = $(".easyui-numberbox");
            for (var i = 0; i < obj.length; i++) { 
                if (obj[i].value != "" && obj[i].id.indexOf("GongShi") >0) {gongShiAll = gongShiAll + parseFloat(obj[i].value);}
                if (obj[i].value != "" && obj[i].id.indexOf("ZiFei") > 0) { ziFeiAll = ziFeiAll + parseFloat(obj[i].value); }
                if (obj[i].value != "" && obj[i].id.indexOf("CaiLiao") > 0) { caiLiaoAll = caiLiaoAll + parseFloat(obj[i].value); }
            }

            $("#gongShiAll").html(gongShiAll.toFixed(2));
            $("#ziFeiAll").html(ziFeiAll.toFixed(2));
            $("#caiLiaoAll").html(caiLiaoAll.toFixed(2));

            heJiAll();//合计计算
        }

        //自费费用修改
        function ziFeiChange(id) {
            if ($("#" + id + "ZiFei").val() == "") { $("#" + id + "ZiFei").val(0); }
            var tmp = parseFloat($("#" + id + "B").html()) - parseFloat($("#" + id + "ZiFei").val());
            if (tmp < 0) { tmp = 0; }
            $("#" + id + "CaiLiao").val(tmp.toFixed(2));
            detailHeJi();
        }


        //费用合计 计算
        function heJiAll() {
            var ziFeiAll = 0; //自费合计

            var gongShiQuan = 0;
            var caiLiaoQuan = 0;

            var gongShiZheQianAll = 0; //工时折前实收
            var gongShiZheHouAll = 0;  
            var caiLiaoZheQianAll = 0;
            var caiLiaoZheHouAll = 0;

            
            var shiShouAll = 0;
            var gongShiShiShou = 0;
            var caiLiaoShiShou = 0;


            if ($("#zheQianGongShiAll").html() != "") { gongShiZheQianAll = parseFloat($("#zheQianGongShiAll").html()); }
            if ($("#gongShiAll").html() != "") { gongShiZheHouAll = parseFloat($("#gongShiAll").html()); }

            if ($("#ziFeiAll").html() != "") { ziFeiAll = parseFloat($("#ziFeiAll").html()); }
            if ($("#zheQianCaiLiaoAll").html() != "") { caiLiaoZheQianAll = parseFloat($("#zheQianCaiLiaoAll").html()); }
            if ($("#caiLiaoAll").html() != "") { caiLiaoZheHouAll = parseFloat($("#caiLiaoAll").html()); }

            if ($("#txtGongShiQuanJinE").val() != "") { gongShiQuan = parseFloat($("#txtGongShiQuanJinE").val()); }
            if ($("#txtCaiLiaoQuanJinE").val() != "") { caiLiaoQuan = parseFloat($("#txtCaiLiaoQuanJinE").val()); }

            if (gongShiQuan < 0) { gongShiQuan = 0; } if (caiLiaoQuan < 0) { caiLiaoQuan = 0; }

            gongShiShiShou = gongShiZheHouAll - gongShiQuan;
            caiLiaoShiShou = caiLiaoZheHouAll + ziFeiAll - caiLiaoQuan;

            if (caiLiaoShiShou < 0) {caiLiaoShiShou = 0;}


            $("#txtZiFeiJinE").val(ziFeiAll.toFixed(2));
            $("#gongShiZheQianHeJi").html($("#zheQianGongShiAll").html());
            $("#gongShiZheHouHeJi").html($("#gongShiAll").html());

            $("#caiLiaoZheQianHeJi").html($("#zheQianCaiLiaoAll").html());
            $("#caiLiaoZheHouHeJi").html($("#caiLiaoAll").html());

            $("#zheQianHeJi").html((gongShiZheQianAll + caiLiaoZheQianAll).toFixed(2));
            $("#zheHouHeJi").html((gongShiZheHouAll + caiLiaoZheHouAll).toFixed(2));


            $("#shiShouHeJi").html((gongShiShiShou + caiLiaoShiShou).toFixed(2));
            $("#gongShiShiShouHeJi").html(gongShiShiShou.toFixed(2))
            $("#caiLiaoShiShouHeJi").html(caiLiaoShiShou.toFixed(2));

        }


        //数据保存操作
        var btnFlag ="0";
        function saveCheck() {
            if (btnFlag == "0") { btnFlag = "1"; } else { return false; }
            var err = "";

            if ($("#txtZiFeiJinE").val() != "" && $("#txtZiFeiJinE").val() != "0.00" && $("#ddlZiFeiZhangTao").val() == "") {
                err += "自费帐套必须选择!";
            }

            if ($("#txtGongShiQuanJinE").val() != "" && $("#txtGongShiQuanJinE").val() != "0.00" && $("#ddlGongShiQuanZhangTao").val() == "") {
                err += "工时券帐套必须选择!";
            }

            if ($("#txtCaiLiaoQuanJinE").val() != "" && $("#txtCaiLiaoQuanJinE").val() != "0.00" && $("#ddlCaiLiaoQuanZhangTao").val() == "") {
                err += "材料券帐套必须选择!";
            }

            if (err != "") {
                alert(err);
                btnFlag = "0";
                return false;
            }


            //提交数据至服务器
            //叠加数据格式 类型,id,实际费用,自费金额
            var str = "";
            var obj1 = document.getElementsByName("weiXiu");
            var obj2 = document.getElementsByName("wuLiao");

            for (var i = 0; i < obj1.length; i++) {
                var id = obj1[i].id; 
                if ($("#" + id + "GongShi").css("display") == "block") {
                    if ($("#" + id + "GongShi").val() == "") { $("#" + id + "GongShi").val(0); }
                    str += "weiXiu," + id + "," + $("#" + id + "GongShi").val() + ",0|"; 
                }
            }


            for (var i = 0; i < obj2.length; i++) {
                var id = obj2[i].id;
                if ($("#" + id + "CaiLiao").css("display") == "block") {
                    if ($("#" + id + "CaiLiao").val() == "") { $("#" + id + "CaiLiao").val(0); }
                    if ($("#" + id + "ZiFei").val() == "") { $("#" + id + "ZiFei").val(0); }
                    str += "wuLiao," + id + "," + $("#" + id + "CaiLiao").val() + "," + $("#" + id + "ZiFei").val() + "|";
                }
            }


            //修改明细 工时券 金额及帐套 材料券 金额及帐套 结算提示
            $.post("saleAfter_WeiXiuFeiYongListExec.aspx?d=" + new Date(),
            {
                type: "JieSuanSave",
                str: str,
                saleAfterGuid: "d4e10073-1054-4c86-b552-f44623513d0b",
                gongShiQuanJinE: $("#txtGongShiQuanJinE").val(),
                gongShiQuanZhangTao: $("#ddlGongShiQuanZhangTao").val(),
                caiLiaoQuanJinE: $("#txtCaiLiaoQuanJinE").val(),
                caiLiaoQuanZhangTao: $("#ddlCaiLiaoQuanZhangTao").val(),
                weiXiuTiShi: $("#txtJieSuanInfo").val(),
                ziFeiZhangTao: $("#ddlZiFeiZhangTao").val(),
                zheKouInfo: $("#txtZheKouInfo").val()
            }, function (data) {
                if (data == "ok") {
                    alert("提交成功！");
                    //重置页面
                    location.href = "saleAfter_WeiXiuFeiYongList.aspx?saleAfterWeiXiuGuid=d4e10073-1054-4c86-b552-f44623513d0b&d="+new Date();
                } else {
                    alert(data);
                    btnFlag = "0";
                }
            });


            return false;
        }



        //费用修改end
            
        
        //折扣获取
        function getZheKou() {
            var u = "saleAfter_weiXiuDiscountGetByUserGuid.aspx?saleAfterGuid=d4e10073-1054-4c86-b552-f44623513d0b&d="+new Date();
            var SizeZ = "dialogWidth:750px;dialogHeight:550px;center:yes;help:no;resizable:no;scroll:yes;status:no;";

            var returnValue;
            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                window.open(u, "折扣", "height=550,width=750");
            } else {
                returnValue = window.showModalDialog(u, '', SizeZ);
                Reload();
            }
            if (returnValue == "1") {
                location.href = "saleAfter_WeiXiuFeiYongList.aspx?saleAfterWeiXiuGuid=d4e10073-1054-4c86-b552-f44623513d0b&d=" + new Date();
            }

            return false;
        }


        //传送财务

        function chuanSongCaiWu() {
            //saleAfter_WeiXiuFeiYongJieSuan.aspx

            if (btnFlag == "0") { btnFlag = "1"; } else { return false; }
            __doPostBack('lnkChuanSongCaiWu', '');
            //禁止重复提交
            
            return false;
        }

        //打印
        function printThis(sort,print,str) {
           

            window.open("saleAfter_WeiXiuJieSuanPrint.aspx?strInfo="+str+"&print="+print+"&saleAfterGuid=d4e10073-1054-4c86-b552-f44623513d0b&printType="+sort+"&d=" + new Date());
            return false;
        }


        $(function () {
            heJiAll();
        })
    </script>

    

    <script language="javascript" type="text/javascript" >

        //会员资产查询
        function huiYuanInfoShow() {
            z = window.open('saleAfter_huiYuanJieSuan.aspx?saleAfterGuid=d4e10073-1054-4c86-b552-f44623513d0b&vin='+$("#txtVin").val()+'&memberId=66921&d=' + new Date(), '会员资产查看', 'height=600,width=750,top=100,left=50,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=no');
            z.focus();

        }
    
    </script>


    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="1ABF1FC7" />
</div></form>
</body>
</html>