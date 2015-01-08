
 
<html>
<head id="Head1"><title>
	商品出库信息汇总
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


</script>

<body>
    <form name="form1" method="post" action="storeOtherReportKuCunByChuKuDetail.aspx?d=Thu+Jan+08+2015+11%3a57%3a54+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMjUyMDU1MjQwD2QWAgIDD2QWBAIIDxAPFgYeDkRhdGFWYWx1ZUZpZWxkBQF2Hg1EYXRhVGV4dEZpZWxkBQF2HgtfIURhdGFCb3VuZGdkEBUFCemdnuS4sOeUsAbkuLDnlLAJ5YW75oqk5ZOBBueyvuWTgQAVBQnpnZ7kuLDnlLAG5Liw55SwCeWFu+aKpOWTgQbnsr7lk4EAFCsDBWdnZ2dnZGQCCg8QDxYGHwEFAWIfAAUBYR8CZ2QQFQIV5Lmd5rGf5Liw55Sw6YWN5Lu25LuTABUCBTYwMTJBABQrAwJnZ2RkGAEFHl9fQ29udHJvbHNSZXF1aXJlUG9zdEJhY2tLZXlfXxYCBQpjaGtKaW5DYW5nBQtjaGtDaHVDaGFuZykzL2NURmYLykW81OxlFwnk2O3Y" />
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
      <table border="0" cellpadding="0" cellspacing="0"  width="900px" style="padding-left:10px;">
       <tr>
       <td>业务时间:</td>
       <td><input name="txtBusiDateStart" type="text" value="2015-1-8" id="txtBusiDateStart" class="easyui-datebox" style="width:120px;" /></td>
       <td><input name="txtBusiDateEnd" type="text" value="2015-1-8" id="txtBusiDateEnd" class="easyui-datebox" style="width:120px;" /></td>
       <td>商品编码:</td>
       <td><input name="txtShopId" type="text" value="tjd" maxlength="30" id="txtShopId" /> </td>
       <td>商品名称:</td>
       <td><input name="txtShopName" type="text" maxlength="60" id="txtShopName" /> </td>
       <td>适用车型:</td>
       <td><input name="txtShiYongCheXing" type="text" maxlength="60" id="txtShiYongCheXing" /> </td>
       </tr>
       <tr>
       <td></td>
       <td colspan="2">
          <input id="chkJinCang" type="checkbox" name="chkJinCang" />不显示进仓为0
          <input id="chkChuChang" type="checkbox" name="chkChuChang" />不显示出仓为0
       </td>
       <td>商品类别:</td>
       <td><input name="txtShangPinSort" type="text" id="txtShangPinSort" /> </td>
       <td>商品区分:</td>
       <td> <select name="ddlShangPinQuFen" id="ddlShangPinQuFen" style="width:120px;">
	<option value="非丰田">非丰田</option>
	<option value="丰田">丰田</option>
	<option value="养护品">养护品</option>
	<option value="精品">精品</option>
	<option selected="selected" value=""></option>

</select></td>
       <td>备注:</td>
       <td><input name="txtBeiZhu" type="text" id="txtBeiZhu" /></td>
       </tr>
       <tr>
       <td>仓库:</td>
       <td ><select name="ddlCangKu" id="ddlCangKu" style="width:135px;">
	<option value="6012A">九江丰田配件仓</option>
	<option selected="selected" value=""></option>

</select></td>
       <td colspan="6"></td>
        <td>
         <input type="submit" name="btnSearch" value="查询" id="btnSearch" />
         <input type="submit" name="btnExcel" value="Excel" id="btnExcel" /> 
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
          <td>产地</td>
          <td>单位</td>
          <td>商品区分</td>
          <td>库位</td>
          <td>库存数</td>
          <td>进仓数</td>
          <td>出仓数</td>
          <td>备注</td>
          </tr>
         
         <tr>
          <td style="text-align:center;">1</td> 
          <td></td>
          <td>TJD</td>
          <td>胶扣</td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td>A0801-07</td>
          <td style="text-align:right;">93.00</td>          
          <td style="text-align:right;color:Blue;font-weight:bold;">0.00</td>
          <td style="text-align:right;">1.00</td>        
          <td></td>
          </tr>
         
            <tr>
          <td> </td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td>93.00</td>
          <td>0.00</td>
          <td>1.000</td>
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

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="6EF66944" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWFgK8jsL+CgK54binAgKo3eLnAwKovNiBBAK4nLjYBQL2sqe8AwKTns7SDALmsP7gAwLIzc4dAvy4/9UDAuD0lMoCAurnt5oMAuKZ2EMC8I//jw8CjpDR3QICmrH5/QcCjs3kgwQCpZ/z7goChbe0hwkC773OSgKFvcGXDALul770BPXaEHTe8TTZYK5Cn69yNHJ5sT7W" />
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
