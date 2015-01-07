

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title>
    <style type="text/css" >
     td
     {
        white-space:nowrap;
        }
     
    </style>
 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="storeOtherKuCunTongJiList.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
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


     <div style="margin-top:5px;"> 
       <table border="0" style="width:1000px;border-bottom:1px solid #b8b8b8;"">
        <tr><td class="titlebg"><span>配件报表</span>(库存统计分析)
            </td>
            <td align="right">
            </td></tr>
      </table> 
    
     <!--查询条件 start-->
     <table border="0">
       <tr> 
       <td>供应商:</td><td><input name="txtSuppName" type="text" maxlength="30" id="txtSuppName" /> </td>
       <td>商品编码:</td><td>
       <input name="txtShopId" type="text" maxlength="30" id="txtShopId" />
       </td>
       <td>商品名称:</td><td>
       <input name="txtShopName" type="text" maxlength="30" id="txtShopName" />
       </td>

       </tr>
       <tr>
       <td>机构名称:</td>
       <td colspan="2" style="width:280px;">
          <input name="txtHidGroupId" type="text" value="6018" id="txtHidGroupId" style="display:none;" />
          <input name="txtGroupName" type="text" value="深业雷克" id="txtGroupName" onclick="groupselect();" style="width:100%;" />
       </td>
        <td colspan="2">
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
       
       <a id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
        </td>

       </tr>
    </table>
     <!--查询条件 end-->


     <!--数据显示start-->
     <table id="tb" border="1" style="border:1px solid gray;border-collapse:collapse;width:960px;"  >
       <!--按单start-->
        
         <tr>
         <td>NO.</td>
         <td>仓库名称</td>
         <td>供应商名称</td>
         <td>商品编码</td>
         <td>商品名称</td>
         <td>库位</td>
         <td>库存数量</td>
         <td>成本单价</td>
         <td>成本合计</td>
         <td>销售单价</td>
         <td>入库时间</td>
         <td>税率</td>
         <td>机构名</td>
         <td>最后一次入库时间</td>
         <td>最后出库时间</td>
         </tr>
         
         <tr>
         <td>1</td>
         <td>雷克萨斯配件仓</td>
         <td>丰田汽车仓储贸易（常熟）有限公司</td>
         <td>ZQXD</td>
         <td>蒸汽消毒</td>
         <td>A03-02-55</td>
         <td>182.00</td>
         <td>58.000</td>
         <td>10556.00000</td>
         <td>280.00</td>
         <td>2014-8-18 14:49:39</td>
         <td>1.17</td>
         <td>深业雷克</td> 
         <td>2014-8-18 14:49:42</td>
         <td>2014-12-31 17:30:29</td>
         </tr>
         
         <tr>
         <td>2</td>
         <td>雷克萨斯配件仓</td>
         <td>深圳市德明士贸易有限公司</td>
         <td>YLQJ</td>
         <td>油路清洁套件</td>
         <td>A03-02-47</td>
         <td>16.00</td>
         <td>245.000</td>
         <td>3920.00000</td>
         <td>1050.00</td>
         <td>2014-12-15 17:32:06</td>
         <td>1.17</td>
         <td>深业雷克</td> 
         <td>2014-12-15 17:32:11</td>
         <td>2015-1-5 15:03:46</td>
         </tr>
         
         <tr>
         <td>3</td>
         <td>***油漆辅料</td>
         <td>深圳雷克萨斯油漆辅料-润昇</td>
         <td>XPGQ</td>
         <td>小抛光球</td>
         <td>油漆辅料仓库</td>
         <td>7.00</td>
         <td>44.000</td>
         <td>308.00000</td>
         <td>44.00</td>
         <td>2014-12-16 16:47:00</td>
         <td>1.17</td>
         <td>深业雷克</td> 
         <td>2014-12-16 16:47:01</td>
         <td></td>
         </tr>
         
         <tr>
         <td>4</td>
         <td>***油漆辅料</td>
         <td>深圳雷克萨斯油漆辅料-润昇</td>
         <td>XJL1062</td>
         <td>奇绩香蕉蜡</td>
         <td>油漆辅料仓库</td>
         <td>5.00</td>
         <td>110.000</td>
         <td>550.00000</td>
         <td>110.00</td>
         <td>2014-10-22 14:42:53</td>
         <td>1.17</td>
         <td>深业雷克</td> 
         <td>2014-10-22 14:42:59</td>
         <td></td>
         </tr>
         
         <tr>
         <td>5</td>
         <td>雷克萨斯配件仓</td>
         <td>深圳市路兴贸易有限公司（华新轮胎行）</td>
         <td>TYK012254517</td>
         <td>横滨225/45R17 91W E51</td>
         <td>李栋欠</td>
         <td>2.00</td>
         <td>1220.000</td>
         <td>2440.00000</td>
         <td>1680.00</td>
         <td>2015-1-3 10:25:15</td>
         <td>1.17</td>
         <td>深业雷克</td> 
         <td>2015-1-3 10:25:18</td>
         <td></td>
         </tr>
         
         <tr>
         <td>6</td>
         <td>雷克萨斯配件仓</td>
         <td>深圳市路兴贸易有限公司（华新轮胎行）</td>
         <td>TYK012155517</td>
         <td>横滨轮胎215/55R17国产</td>
         <td>A02-04-21</td>
         <td>1.00</td>
         <td>750.000</td>
         <td>750.00000</td>
         <td>1280.00</td>
         <td>2014-12-8 11:13:09</td>
         <td>1.17</td>
         <td>深业雷克</td> 
         <td>2014-12-8 11:13:15</td>
         <td>2014-12-28 15:45:46</td>
         </tr>
         
         <tr>
         <td>7</td>
         <td>雷克萨斯配件仓</td>
         <td>深圳市路兴贸易有限公司（华新轮胎行）</td>
         <td>TDL012155517</td>
         <td>邓禄普轮胎 215/55R17 国产</td>
         <td>A02-06-21</td>
         <td>2.00</td>
         <td>880.000</td>
         <td>1760.00000</td>
         <td>1280.00</td>
         <td>2014-11-3 16:48:04</td>
         <td>1.17</td>
         <td>深业雷克</td> 
         <td>2014-11-3 16:48:07</td>
         <td>2014-12-29 12:55:29</td>
         </tr>
         
         <tr>
         <td>8</td>
         <td>雷克萨斯配件仓</td>
         <td>开平凯峰达维贸易有限公司（华新轮胎行）</td>
         <td>TBS022155517</td>
         <td>普利司通轮胎215/55R17 国产</td>
         <td>A02-02-11</td>
         <td>1.00</td>
         <td>950.000</td>
         <td>950.00000</td>
         <td>1280.00</td>
         <td>2014-6-22 16:56:56</td>
         <td>1.17</td>
         <td>深业雷克</td> 
         <td>2014-9-24 15:05:47</td>
         <td>2014-9-14 16:41:46</td>
         </tr>
         
         <tr>
         <td>9</td>
         <td>雷克萨斯配件仓</td>
         <td>深圳市路兴贸易有限公司（华新轮胎行）</td>
         <td>TBS022155517</td>
         <td>普利司通轮胎215/55R17 国产</td>
         <td>A02-02-11</td>
         <td>1.00</td>
         <td>950.000</td>
         <td>950.00000</td>
         <td>1280.00</td>
         <td>2014-9-24 15:05:41</td>
         <td>1.17</td>
         <td>深业雷克</td> 
         <td>2014-9-24 15:05:47</td>
         <td>2014-9-14 16:41:46</td>
         </tr>
         
         <tr>
         <td>10</td>
         <td>***油漆辅料</td>
         <td>深圳雷克萨斯油漆辅料-润昇</td>
         <td>SY2000</td>
         <td>双鹰2000水砂</td>
         <td>油漆辅料仓库</td>
         <td>100.00</td>
         <td>4.600</td>
         <td>460.00000</td>
         <td>4.60</td>
         <td>2014-9-24 16:00:17</td>
         <td>1.17</td>
         <td>深业雷克</td> 
         <td>2014-10-22 14:43:29</td>
         <td></td>
         </tr>
         
         <tr>
         <td>11</td>
         <td>***油漆辅料</td>
         <td>深圳雷克萨斯油漆辅料-润昇</td>
         <td>SY2000</td>
         <td>双鹰2000水砂</td>
         <td>油漆辅料仓库</td>
         <td>200.00</td>
         <td>4.600</td>
         <td>920.00000</td>
         <td>4.60</td>
         <td>2014-10-22 14:43:24</td>
         <td>1.17</td>
         <td>深业雷克</td> 
         <td>2014-10-22 14:43:29</td>
         <td></td>
         </tr>
         
         <tr>
         <td>12</td>
         <td>***油漆辅料</td>
         <td>深圳雷克萨斯油漆辅料-润昇</td>
         <td>SY2000</td>
         <td>双鹰2000水砂</td>
         <td>油漆辅料仓库</td>
         <td>300.00</td>
         <td>4.600</td>
         <td>1380.00000</td>
         <td>4.60</td>
         <td>2014-10-22 14:42:53</td>
         <td>1.17</td>
         <td>深业雷克</td> 
         <td>2014-10-22 14:43:29</td>
         <td></td>
         </tr>
         
         <tr>
         <td>13</td>
         <td>***油漆辅料</td>
         <td>深圳雷克萨斯油漆辅料-润昇</td>
         <td>SY1500</td>
         <td>双鹰1500水砂</td>
         <td>油漆辅料仓库</td>
         <td>400.00</td>
         <td>4.600</td>
         <td>1840.00000</td>
         <td>4.60</td>
         <td>2014-9-24 16:00:17</td>
         <td>1.17</td>
         <td>深业雷克</td> 
         <td>2014-10-22 14:42:59</td>
         <td></td>
         </tr>
         
         <tr>
         <td>14</td>
         <td>***油漆辅料</td>
         <td>深圳雷克萨斯油漆辅料-润昇</td>
         <td>SY1500</td>
         <td>双鹰1500水砂</td>
         <td>油漆辅料仓库</td>
         <td>300.00</td>
         <td>4.600</td>
         <td>1380.00000</td>
         <td>4.60</td>
         <td>2014-10-22 14:42:53</td>
         <td>1.17</td>
         <td>深业雷克</td> 
         <td>2014-10-22 14:42:59</td>
         <td></td>
         </tr>
         
         <tr>
         <td>15</td>
         <td>***油漆辅料</td>
         <td>深圳雷克萨斯油漆辅料-润昇</td>
         <td>STGWJZ</td>
         <td>ST高温胶纸</td>
         <td>油漆辅料仓库</td>
         <td>4.00</td>
         <td>400.000</td>
         <td>1600.00000</td>
         <td>400.00</td>
         <td>2014-11-26 14:35:13</td>
         <td>1.17</td>
         <td>深业雷克</td> 
         <td>2014-11-26 14:35:18</td>
         <td></td>
         </tr>
                  
         <!--合计start-->

         <!--合计end-->         
         
      </table>

     <!--数据显示end-->


    <div>
    <!--分页代码start-->
    共107页 当前1页 跳到<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="border:none;border-bottom:1px solid black;width:30px;" />
    <a onclick="return pageGo();" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">转到</a>
    <!--分页代码end-->
    </div>

     <input name="txtMaxPage" type="text" value="107" id="txtMaxPage" style="display:none;" />


    </div>
    
<div>

    <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="0F872F3C" />
    <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCwLUxeHRDAK1o/TEBQKovNiBBAK4nLjYBQLOqIIaAsqJhmwCqYuJwQUCvO3p9gQC773OSgKFvcGXDALul770BMCYrTmTc4La6/lwd3JHkT8phVn/" />
</div></form>


           <script language="javascript" type="text/javascript">


               function groupselect() {
                   var href = "../../index/groupSelect.aspx";
                   var SizeZ = 'dialogWidth:600px;dialogHeight:450px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;';
                   var returnValue = window.showModalDialog(href, '', SizeZ);
                   if (returnValue != undefined && returnValue != "") {
                       var s = returnValue.split("|");
                       $("#txtHidGroupId").val(s[0]);
                       $("#txtGroupName").val(s[1]);
                   }

               }



               function pageGo() {
                   var t = document.getElementById("txtThisPage");
                   var myReg = /^\d+$/;
                   var pageN = t.value;
                   if (!myReg.test(pageN)) {
                       alert("输入数字无效!请重新输入!");
                       t.value = "";
                       t.focus();
                       return false;
                   }

                   if (parseFloat(t.value) < 1) { t.value = "1"; }

                   if (parseFloat(t.value) > parseFloat(document.getElementById("txtMaxPage").value)) {
                       t.value = document.getElementById("txtMaxPage").value;
                   }

                   __doPostBack('lnkSearch', '');
                   return false;

               }
 

    </script>



</body>
</html>
