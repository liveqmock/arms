
<html>
<head id="Head1"><title>

</title>
     <script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
     <link href="../../style/common.css?v=20130317" rel="stylesheet" type="text/css" />
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
padding-left:80px;}
 
.tabs ul li 
{-moz-border-radius-topleft:4px;
-moz-border-radius-topright:4px;border-bottom:0 none !important;float:left;list-style:none;margin:0 0.2em 1px 0;padding:0;position:relative;top:1px;white-space:nowrap;color:#555555;font-weight:blod;}
.tabs ul li.tabs_active {margin-bottom:0;padding-bottom:1px;background-color:#fff;  border:1px solid #aaa;color:#333;}
.tabs ul li.tabs_hover{margin-bottom:0;padding-bottom:1px;background-color:#fff;border:1px solid #999;}
.tabs ul li a {float:left;padding:0.5em 1em;text-decoration:none;cursor:pointer;color:#777;}
.tabs ul li.tabs_active a {color:#333;}
.tabs ul li.tabs_active a {color:#555555;}
 
</style>

 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<base target="_self" />
<body style="margin-top:0px;margin-left:2px;">
<div id="tabs" class="tabs">

<ul>    
 
<li id="a"><a href="#tabs-1" onclick="show(1)">维修历史</a></li>        
<li id="b"><a href="#tabs-2" onclick="show(2)">回访历史</a></li> 
<li id="c"><a href="#tabs-3" onclick="show(3)">联系历史</a></li> 
<li id="d"><a href="#tabs-4" onclick="show(4)">投诉历史</a></li>    
 <li id="e"><a href="#tabs-5" onclick="show(5)">招揽历史</a></li>  
</ul>

</div>

<div id="content" style="border-left:1px solid gray;border-right:1px solid gray;border-bottom:1px solid gray;margin:0px;height:500px;">
  

</div> 
</body>

 <script language="javascript" type="text/javascript" >


     //打开联系历史信息
     function showHuiFangLiShi(huiFangId, lianXiId) {
          
         parent.showLianXiInfo(lianXiId);
     }


     //1维修历史  2 回访历史 3联系历史 4 投诉历史

     var tmp = "a";
     function show(sort) {
         var url = "";

         if ($("#" + tmp + "Frame").length > 0) { $("#" + tmp + "Frame").hide(); }
     
         if (sort == 1) { $("#" + tmp).removeClass(); $("#a").addClass("tabs_active"); tmp = "a"; url = "customWeiXiuLiShi.aspx?vehicleId=15055ad5-3292-4d6d-ba2e-ecc3c4694611&cusGuid=15055ad5-3292-4d6d-ba2e-ecc3c4694611&d=" + new Date(); }
         if (sort == 2) { $("#" + tmp).removeClass(); $("#b").addClass("tabs_active"); tmp = "b"; url = "customHuiFangLiShi.aspx?vehicleId=15055ad5-3292-4d6d-ba2e-ecc3c4694611&saleAfterGuid=fd3fc187-5b4f-459e-9036-55f9eda0e0b7&cusGuid=15055ad5-3292-4d6d-ba2e-ecc3c4694611&d=" + new Date(); }
         if (sort == 3) { $("#" + tmp).removeClass(); $("#c").addClass("tabs_active"); tmp = "c"; url = "customLianXiLiShi.aspx?vehicleId=15055ad5-3292-4d6d-ba2e-ecc3c4694611&cusGuid=15055ad5-3292-4d6d-ba2e-ecc3c4694611&d" + new Date(); }
         if (sort == 4) { $("#" + tmp).removeClass(); $("#d").addClass("tabs_active"); tmp = "d"; url = "../ComplaintManage/ComplaintHistory.aspx?vehicleId=15055ad5-3292-4d6d-ba2e-ecc3c4694611&custGuid=15055ad5-3292-4d6d-ba2e-ecc3c4694611&d" + new Date(); }
         if (sort == 5) { $("#" + tmp).removeClass(); $("#e").addClass("tabs_active"); tmp = "e"; url = "customZhaoLanLiShi.aspx?vehicleId=15055ad5-3292-4d6d-ba2e-ecc3c4694611&cusGuid=15055ad5-3292-4d6d-ba2e-ecc3c4694611&d" + new Date(); }

         if ($("#" + tmp + "Frame").length > 0) { $("#" + tmp + "Frame").show(); }
         else {
             $("#content").append("<iframe id='" + tmp + "Frame' style='width:100%;height:100%;' src='" + url + "' frameborder='0' />");
         }

     }


     $(function () {
         show("1");
     });





     $(function () {
         $(document).bind('contextmenu', function (e) {
             e.preventDefault();
         });
     });


 </script>


</html>