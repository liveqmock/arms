
 
<html>
<head><title>
	订货分析报表
</title>
    <style type="text/css" >
     td{ white-space:nowrap;}
    </style>
 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../JS/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="storeOtherOrderFenXi.aspx" id="form1">
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


     <div style="margin-left:5px;">
        <table border="0" style="width:960px;border-bottom:1px solid #b8b8b8;"">
        <tr><td class="titlebg"><span>配件报表</span>(订货分析报表)</td>
            <td align="right"></td>
        </tr>
      </table> 
 
      <!--查询条件start-->
      <table border="0">
       <tr>
       <td>出库日期:</td>
       <td><input name="txtChuKuDate1" type="text" value="2015-1-6" id="txtChuKuDate1" class="easyui-datebox" /> </td>
       <td><input name="txtChuKuDate2" type="text" value="2015-1-6" id="txtChuKuDate2" class="easyui-datebox" /> </td>
       <td>商品编码:</td>
       <td><input name="txtShopId" type="text" maxlength="12" id="txtShopId" /></td>
       <td>商品名称:</td>
       <td><input name="txtShopName" type="text" maxlength="30" id="txtShopName" /> </td>
       </tr>

       <tr>
       <td>入库日期:</td>
       <td><input name="txtRuKuDate1" type="text" id="txtRuKuDate1" class="easyui-datebox" /> </td>

       <td><input name="txtRuKuDate2" type="text" id="txtRuKuDate2" class="easyui-datebox" /> </td>

       <td>商品区分:</td>
       <td><input name="txtShangPinQuFen" type="text" maxlength="12" id="txtShangPinQuFen" /></td>
       <td>是否原厂:</td>
       <td>
       <select name="ddlYuanChangJian" id="ddlYuanChangJian">
	<option selected="selected" value="">全部</option>
	<option value="1">原厂件</option>
	<option value="0">非原厂件</option>

</select>
       </td>
       </tr>

      
       <tr>
       <td colspan="7" style="text-align:right;">
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
       
       <a id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
       
       </td>
       </tr>

      </table>
      <!--查询条件end-->
    

        <!--数据显示 start-->
         <table id="tb" border="1" style="border:1px solid gray;border-collapse:collapse;width:960px;"  >
       <!--按单start-->
       
         <tr>
         <td>NO.</td>
         <td>商品区分</td>
         <td>原厂件</td>
         <td>商品编码</td>
         <td>商品名称</td>
         <td>出库数量</td>
         <td>入库数量</td>
         <td>当前库存</td>
         <td>库位</td>
         <td>成本价</td>
         <td>销售价</td>
         <td>成本总额</td>
         <td>备注</td>
         <td>机构名</td>
         </tr>
         
        <tr>
         <td>1</td>
         <td></td>
         <td>否</td>
         <td>ZZ156</td>
         <td>机油格</td>
         <td>0.00</td>
         <td>1.00</td>
         <td>0.00</td>
         <td>订货</td>
         <td>41.800</td>
         <td>55.00</td>
         <td>0.000</td>
         <td></td>
         <td>深业雷克</td>
         </tr>
          
         
        <tr>
         <td>2</td>
         <td></td>
         <td>否</td>
         <td>ZWJZ</td>
         <td>中网加装（锐志</td>
         <td>0.00</td>
         <td>1.00</td>
         <td>0.00</td>
         <td>锐志</td>
         <td>2500.000</td>
         <td>3325.00</td>
         <td>0.000</td>
         <td></td>
         <td>深业雷克</td>
         </tr>
          
         
        <tr>
         <td>3</td>
         <td></td>
         <td>是</td>
         <td>ZQXD.</td>
         <td>蒸汽消毒.</td>
         <td>0.00</td>
         <td>1.00</td>
         <td>0.00</td>
         <td></td>
         <td>150.000</td>
         <td>280.00</td>
         <td>0.000</td>
         <td>E0601055+E0601106</td>
         <td>深业雷克</td>
         </tr>
          
         
        <tr>
         <td>4</td>
         <td></td>
         <td>是</td>
         <td>ZQXD</td>
         <td>蒸汽消毒</td>
         <td>0.00</td>
         <td>855.00</td>
         <td>182.00</td>
         <td>A03-02-55</td>
         <td>58.000</td>
         <td>280.00</td>
         <td>10556.000</td>
         <td></td>
         <td>深业雷克</td>
         </tr>
          
         
        <tr>
         <td>5</td>
         <td></td>
         <td>否</td>
         <td>ZKRG</td>
         <td>真空软管</td>
         <td>0.00</td>
         <td>1.00</td>
         <td>0.00</td>
         <td>BO</td>
         <td>15.200</td>
         <td>27.00</td>
         <td>0.000</td>
         <td></td>
         <td>深业雷克</td>
         </tr>
          
         
        <tr>
         <td>6</td>
         <td></td>
         <td>是</td>
         <td>Z0000416.</td>
         <td>踏板配件</td>
         <td>0.00</td>
         <td>4.00</td>
         <td>0.00</td>
         <td>精品</td>
         <td>1500.000</td>
         <td>2800.00</td>
         <td>0.000</td>
         <td></td>
         <td>深业雷克</td>
         </tr>
          
         
        <tr>
         <td>7</td>
         <td></td>
         <td>否</td>
         <td>Z0000416</td>
         <td>中网饰条</td>
         <td>0.00</td>
         <td>2.00</td>
         <td>0.00</td>
         <td>精品</td>
         <td>1600.000</td>
         <td>2150.00</td>
         <td>0.000</td>
         <td></td>
         <td>深业雷克</td>
         </tr>
          
         
        <tr>
         <td>8</td>
         <td></td>
         <td>否</td>
         <td>Z0000325</td>
         <td>RX挡泥板</td>
         <td>0.00</td>
         <td>1.00</td>
         <td>0.00</td>
         <td>精品</td>
         <td>434.500</td>
         <td>800.00</td>
         <td>0.000</td>
         <td></td>
         <td>深业雷克</td>
         </tr>
          
         
        <tr>
         <td>9</td>
         <td></td>
         <td>是</td>
         <td>Z0000180</td>
         <td>下护板螺丝</td>
         <td>0.00</td>
         <td>1.00</td>
         <td>0.00</td>
         <td>bo</td>
         <td>11.000</td>
         <td>100.00</td>
         <td>0.000</td>
         <td></td>
         <td>深业雷克</td>
         </tr>
          
         
        <tr>
         <td>10</td>
         <td></td>
         <td>否</td>
         <td>z0000045</td>
         <td>TR-68/69天线</td>
         <td>0.00</td>
         <td>1.00</td>
         <td>0.00</td>
         <td>BO</td>
         <td>27.000</td>
         <td>280.00</td>
         <td>0.000</td>
         <td></td>
         <td>深业雷克</td>
         </tr>
          
         
        <tr>
         <td>11</td>
         <td></td>
         <td>否</td>
         <td>YLQJ</td>
         <td>油路清洁套件</td>
         <td>0.00</td>
         <td>264.00</td>
         <td>16.00</td>
         <td>A03-02-47</td>
         <td>245.000</td>
         <td>1050.00</td>
         <td>3920.000</td>
         <td></td>
         <td>深业雷克</td>
         </tr>
          
         
        <tr>
         <td>12</td>
         <td></td>
         <td>是</td>
         <td>YF1A-54280B62AE</td>
         <td>后叶子板出风口</td>
         <td>0.00</td>
         <td>1.00</td>
         <td>0.00</td>
         <td>福克斯</td>
         <td>55.000</td>
         <td>73.00</td>
         <td>0.000</td>
         <td></td>
         <td>深业雷克</td>
         </tr>
          
         
        <tr>
         <td>13</td>
         <td></td>
         <td>否</td>
         <td>YBXF</td>
         <td>仪表修复(外加工）</td>
         <td>0.00</td>
         <td>1.00</td>
         <td>0.00</td>
         <td>bo</td>
         <td>500.000</td>
         <td>625.00</td>
         <td>0.000</td>
         <td></td>
         <td>深业雷克</td>
         </tr>
          
         
        <tr>
         <td>14</td>
         <td></td>
         <td>是</td>
         <td>Y4QY</td>
         <td>汽油</td>
         <td>0.00</td>
         <td>1.00</td>
         <td>0.00</td>
         <td>b0</td>
         <td>560.000</td>
         <td>570.00</td>
         <td>0.000</td>
         <td></td>
         <td>深业雷克</td>
         </tr>
          
         
        <tr>
         <td>15</td>
         <td></td>
         <td>否</td>
         <td>XYT</td>
         <td>镶牙套</td>
         <td>0.00</td>
         <td>2.00</td>
         <td>0.00</td>
         <td>外加工</td>
         <td>120.000</td>
         <td>150.00</td>
         <td>0.000</td>
         <td></td>
         <td>深业雷克</td>
         </tr>
          
         
        <tr>
         <td>16</td>
         <td></td>
         <td>否</td>
         <td>XPGQ</td>
         <td>小抛光球</td>
         <td>0.00</td>
         <td>7.00</td>
         <td>7.00</td>
         <td>油漆辅料仓库</td>
         <td>44.000</td>
         <td>44.00</td>
         <td>308.000</td>
         <td></td>
         <td>深业雷克</td>
         </tr>
          
         
        <tr>
         <td>17</td>
         <td></td>
         <td>否</td>
         <td>XJL1062</td>
         <td>奇绩香蕉蜡</td>
         <td>0.00</td>
         <td>5.00</td>
         <td>5.00</td>
         <td>油漆辅料仓库</td>
         <td>110.000</td>
         <td>110.00</td>
         <td>550.000</td>
         <td></td>
         <td>深业雷克</td>
         </tr>
          
         
        <tr>
         <td>18</td>
         <td></td>
         <td>是</td>
         <td>XDP</td>
         <td>小灯泡</td>
         <td>0.00</td>
         <td>2.00</td>
         <td>0.00</td>
         <td>b0</td>
         <td>15.000</td>
         <td>20.00</td>
         <td>0.000</td>
         <td></td>
         <td>深业雷克</td>
         </tr>
          
         
        <tr>
         <td>19</td>
         <td></td>
         <td>否</td>
         <td>WX86841</td>
         <td>更换导航机芯</td>
         <td>0.00</td>
         <td>2.00</td>
         <td>0.00</td>
         <td>BO1</td>
         <td>1900.000</td>
         <td>5000.00</td>
         <td>0.000</td>
         <td></td>
         <td>深业雷克</td>
         </tr>
          
         
        <tr>
         <td>20</td>
         <td></td>
         <td>是</td>
         <td>WX0435133401</td>
         <td>自动变速箱修理包套件</td>
         <td>0.00</td>
         <td>1.00</td>
         <td>0.00</td>
         <td></td>
         <td>8600.000</td>
         <td>12000.00</td>
         <td>0.000</td>
         <td></td>
         <td>深业雷克</td>
         </tr>
          
         
        </table>

      <!--数据显示 end-->
    </div>

     <div>
    <!--分页代码start-->
    共262页 当前1页 跳到<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="border:none;border-bottom:1px solid black;width:30px;" />
    <a onclick="return pageGo();" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">转到</a>
    <!--分页代码end-->
    </div>

    
    <input name="txtMaxPage" type="text" value="262" id="txtMaxPage" style="display:none;" />
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="7E35141E" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWEAL34bmeDAKixbDWAgKhxbDWAgKovNiBBAK4nLjYBQL2v8epBgL2v4uYDAKZo4/rBgKPi6axCgKA5IzfBgKf5IzfBgKpi4nBBQK87en2BALvvc5KAoW9wZcMAu6XvvQEPdv2LepXPDOTWIz1ijX1TsNSsnA=" />
</div></form>

    <script language="javascript" type="text/javascript">

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

            return true;

        }
      
    </script>

 </body>
</html>