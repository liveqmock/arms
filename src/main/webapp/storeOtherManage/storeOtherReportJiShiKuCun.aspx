
<html>
<head><title>
	即时库存
</title>

    <style type="text/css" >
     td
     {
     	white-space:nowrap;
     	}
    </style>

 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<script language="javascript" type="text/javascript" >

    var tmp = '#FFFFFF';
    $(function () {
        $('#tb tr').mouseover(function () {
            tmp = this.style.backgroundColor;
            this.style.backgroundColor = '#eaf2ff';
        });

        $('#tb tr').mouseout(function () {
            this.style.backgroundColor = tmp;
        });
    });


    function storeOtherOperLog() {
        location.href = "storeOtherReportOperLog.aspx?d="+new Date();
    }


    function storeOtherChange() {
        location.href = "storeOtherReportKuCunByChuKuDetail.aspx?d=" + new Date();
    }

</script>

<body>
    <form name="form1" method="post" action="storeOtherReportJiShiKuCun.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTI0ODYzMDk5NA9kFgICAw9kFgRmDxAPFgYeDURhdGFUZXh0RmllbGQFAWIeDkRhdGFWYWx1ZUZpZWxkBQFhHgtfIURhdGFCb3VuZGdkEBUCFeS5neaxn+S4sOeUsOmFjeS7tuS7kwAVAgU2MDEyQQAUKwMCZ2dkZAIEDxAPFgYfAQUBdh8ABQF2HwJnZBAVBQnpnZ7kuLDnlLAG5Liw55SwCeWFu+aKpOWTgQbnsr7lk4EAFQUJ6Z2e5Liw55SwBuS4sOeUsAnlhbvmiqTlk4EG57K+5ZOBABQrAwVnZ2dnZ2RkZBnqzMbuNRWrL7RNiyGmT1sqAoBa" />
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


    <div style="margin-top:10px;margin-left:10px;">
      <table border="0" cellpadding="0" cellspacing="0"  width="900px">
       <tr style="height:25px;">
       <td>仓库选择:</td>
       <td><select name="ddlCangKu" id="ddlCangKu" style="width:135px;">
	<option selected="selected" value="6012A">九江丰田配件仓</option>
	<option value=""></option>

</select></td>
       <td>商品编码:</td>
       <td><input name="txtShopId" type="text" value="tjd" maxlength="15" id="txtShopId" /></td>
       <td>商品名称:</td>
       <td><input name="txtShopName" type="text" maxlength="15" id="txtShopName" /></td>
       <td>适用车型:</td>
       <td><input name="txtShiYongCheXing" type="text" maxlength="15" id="txtShiYongCheXing" /></td>
       <td>商品区分:</td>
       <td style="text-align:left;">
       <select name="ddlShangPinQuFen" id="ddlShangPinQuFen" style="width:120px;">
	<option value="非丰田">非丰田</option>
	<option value="丰田">丰田</option>
	<option value="养护品">养护品</option>
	<option value="精品">精品</option>
	<option selected="selected" value=""></option>

</select>
       </td>
       </tr>
       <tr  style="height:25px;"> 
       <td>库存
         <td>
         <select name="ddlKuCunSort" id="ddlKuCunSort" style="width:60px;">
	<option selected="selected" value="=">等于</option>
	<option value="&lt;=">小于</option>
	<option value="&lt;=">小于等于</option>
	<option value=">">大于</option>
	<option value=">=">大于等于</option>

</select>
       <input name="txtKuCun" type="text" id="txtKuCun" class="easyui-numberbox" min="0" style="width:70px;" />
         </td>
         <td>均价:</td>
         <td>
            <select name="ddlJunJiaSort" id="ddlJunJiaSort" style="width:60px;">
	<option selected="selected" value="=">等于</option>
	<option value="&lt;=">小于</option>
	<option value="&lt;=">小于等于</option>
	<option value=">">大于</option>
	<option value=">=">大于等于</option>

</select>
           <input name="txtJunJia" type="text" id="txtJunJia" class="easyui-numberbox" min="0" style="width:70px;" />
         </td>
         <td>库存总额</td>
         <td>
         <select name="ddlKuCunZongE" id="ddlKuCunZongE" style="width:135px;">
	<option selected="selected" value="">全部</option>
	<option value="0">非零</option>

</select>
         </td>
         <td>备注:</td>
         <td>
         <input name="txtBeiZhu" type="text" id="txtBeiZhu" />
         </td>
          

         <td colspan="2">
         <input type="submit" name="btnSearch" value="查询" id="btnSearch" />
         <input type="submit" name="btnExcel" value="Excel" id="btnExcel" />
         <input type="button" value="操作日志"  onclick="storeOtherOperLog();" />
         <input type="button" value="出库汇总"  onclick="storeOtherChange();" />
         </td>
       </tr>


      </table>

      <!--数据展示 start-->
      <table id="tb"  border="1" style="border:1px solid gray;border-collapse:collapse;width:900px;"  >
        
          <tr>
          <td>NO.</td>
          <td>所属仓库</td>
          <td>商品编码</td>
          <td>商品名称</td>
          <td>适用车型</td>
          <td>商品区分</td>
          <td>库位</td>
          <td  style="text-align:right;">数量</td>
          <td style="text-align:right;">销售价</td>
          <td style="text-align:right;">销售总额</td>
          <td style="text-align:right;">成本单价</td>
          <td style="text-align:right;">成本总额</td>
          
          <td>最后一次入库时间</td>
          <td>最后一次出库时间</td>
          <td>备注</td>
          </tr>
         
         <tr>
          <td style="text-align:center;">1</td> 
          <td>九江丰田配件仓</td>
          <td>TJD</td>
          <td>胶扣</td>
          <td></td>
          <td></td>
          <td>A0801-07</td>
          <td style="text-align:right;">93.00</td>          
          <td style="text-align:right;color:Blue;font-weight:bold;">5.00</td>
          <td style="text-align:right;">465.00</td>
          <td style="text-align:right;">2.000</td>
          <td style="text-align:right;">186.00000</td>
          <td>2014-11-24 9:03:23</td>
          <td>2015-1-8 9:11:05</td>
          <td></td>
          </tr>
         
          <tr>
          <td>合计</td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td  style="text-align:right;">93.00</td>
          <td></td>
          <td style="text-align:right;">465.00</td>
          <td></td>
          <td style="text-align:right;">186.000</td>       
          <td></td>
          <td></td>
          </tr>
         
      </table>
      <!--数据展示 end-->
      
      
    <div>
    <!--分页代码start-->
    共1页 当前1页 跳到<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="border:none;border-bottom:1px solid black;width:30px;" />
    <a onclick="return pageGo();" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">转到</a>
    <!--分页代码end-->
    </div>
    <input name="txtMaxPage" type="text" value="1" id="txtMaxPage" style="display:none;" />
      
      </div>

    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="4DBE5A90" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWHwLF0fISApqx+f0HAo7N5IMEAqi82IEEAricuNgFAvayp7wDAvy4/9UDAuD0lMoCAurnt5oMAuKZ2EMC8I//jw8C6e31bALu7alvAu7tqW8C6O31bALo7alvAqjxkq8CAqrG7sUCAq3GssYCAq3GssYCAqvG7sUCAqvGssYCApqnhu8HAouR+MABApv+0q4NAo6Q0d0CAqWf8+4KAoW3tIcJAu+9zkoChb3BlwwC7pe+9AThRPa3ZbRvw9RTfR78UjUmItPWfQ==" />
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