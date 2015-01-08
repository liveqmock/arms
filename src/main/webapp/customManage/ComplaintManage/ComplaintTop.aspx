


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

</head>
<base target="_self" />
<body style="margin-top:0px;margin-left:2px;">
<div id="tabs" class="tabs">

<ul>	
 
<li id="a"><a href="#tabs-1" onclick="show(1)">投诉处理</a></li>		
<li id="b"><a href="#tabs-2" onclick="show(2)">维修履历</a></li> 
<li id="c"><a href="#tabs-3" onclick="show(3)">投诉历史</a></li> 

</ul>

</div>

<div id="content" style="border-left:1px solid gray;border-right:1px solid gray;border-bottom:1px solid gray;margin:0px;">
  

</div> 
</body>

 <script language="javascript" type="text/javascript" >
     


     var tmp = "a";
     function show(sort) {
         var url = "";

         if ($("#" + tmp + "Frame").length > 0) { $("#" + tmp + "Frame").hide(); }

         if (sort == 1) { $("#" + tmp).removeClass(); $("#a").addClass("tabs_active"); tmp = "a"; url = "ComplaintChuLi.aspx?BillGuid=5804f5ce-5267-4f67-83d1-aea59c9b921e&TouSuBuMen_ID=2F852198-DDAD-4B27-BD9C-744E71E48076&d=" + new Date(); }
         if (sort == 2) { $("#" + tmp).removeClass(); $("#b").addClass("tabs_active"); tmp = "b"; url = " ../customInfo/customWeiXiuLiShi.aspx?cusGuid=3bfaeedd-2bab-4dd8-8a7c-fb17ea121430&d=" + new Date(); }
         if (sort == 3) { $("#" + tmp).removeClass(); $("#c").addClass("tabs_active"); tmp = "c"; url = "ComplaintHistory.aspx?custGuid=3bfaeedd-2bab-4dd8-8a7c-fb17ea121430&d" + new Date(); }


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