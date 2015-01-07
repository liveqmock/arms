

<html>
<head><title>
	配件流动性分析表
</title>

    <style type="text/css" >
     #tb td
     {
     	white-space:nowrap;
     	}
     
    </style>
 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="storeOtherAccessoriesReport.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE3NzgzNDQyODlkZLVGJ//Ek7oozLiOfmjy8roooO/h" />
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
        <tr><td class="titlebg"><span>配件报表</span>(流动性分析报表)
            </td>
            <td align="right">
            </td></tr>
      </table> 

      <!--查询条件start-->
      <table border="0">
       <tr>
       <td>商品编码:</td><td><input name="txtShopId" type="text" maxlength="30" id="txtShopId" /></td>
       <td>商品名称:</td><td><input name="txtShopName" type="text" maxlength="30" id="txtShopName" /></td>
       <td>适用车型:</td><td><input name="txtShiYongCheXing" type="text" maxlength="30" id="txtShiYongCheXing" /></td>
       </tr>
       <tr>
       <td>出库时间:</td><td><input name="txtChuKuDate1" type="text" maxlength="30" id="txtChuKuDate1" class="easyui-datebox" /></td>
       <td>至:</td><td><input name="txtChuKuDate2" type="text" maxlength="30" id="txtChuKuDate2" class="easyui-datebox" /></td>
       <td>是否原厂件:</td><td>
       <select name="ddlShiFouYuanChang" id="ddlShiFouYuanChang">
	<option value="">全部</option>
	<option value="1">原厂件</option>
	<option value="0">非原厂件</option>

</select>
       </td>
       </tr>
       <tr>
       <td>出库频率:</td>
       <td>
       <select name="ddlChuKuPiCiSort" id="ddlChuKuPiCiSort" style="width:60px;">
	<option value="=">等于</option>
	<option value="&lt;=">小于</option>
	<option value="&lt;=">小于等于</option>
	<option value=">">大于</option>
	<option value=">=">大于等于</option>

</select>
       <input name="txtPiCi" type="text" id="txtPiCi" class="easyui-numberbox" min="0" style="width:70px;" />
       </td>
       <td>库存数量:</td>
       <td>
       <select name="ddlKuCunQtySort" id="ddlKuCunQtySort" style="width:60px;">
	<option value="=">等于</option>
	<option value="&lt;=">小于</option>
	<option value="&lt;=">小于等于</option>
	<option value=">">大于</option>
	<option value=">=">大于等于</option>

</select>
       <input name="txtKuCunShu" type="text" id="txtKuCunShu" class="easyui-numberbox" min="0" style="width:70px;" />
       </td> 
       <td>商品区分:</td>
       <td><input name="txtShangPinQuFen" type="text" maxlength="30" id="txtShangPinQuFen" /> </td>


       </tr>

       <tr>
       <td colspan="6" style="text-align:right;">
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
       
       <a id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
       
       </td>
       </tr>



      </table>
      <!--查询条件end-->



      <!--数据显示 start-->
         <table id="tb" border="1" style="border:1px solid gray;border-collapse:collapse;width:960px;"  >
       <!--按单start-->
       
        </table>

      <!--数据显示 end-->
    </div>

     <div>
    <!--分页代码start-->
    共0页 当前1页 跳到<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="border:none;border-bottom:1px solid black;width:30px;" />
    <a onclick="return pageGo();" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">转到</a>
    <!--分页代码end-->
    </div>

    
    <input name="txtMaxPage" type="text" id="txtMaxPage" style="display:none;" />
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="F40EF3B0" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWGwL3tMuUAQKovNiBBAK4nLjYBQL2sqe8AwKixbDWAgKhxbDWAgLdmavnAwLS9oGJDwLN9oGJDwKGzIfJBgKBzNvKBgKBzNvKBgKHzIfJBgKHzNvKBgKA8+mEDgLyibTKCAL1iejJCAL1iejJCALzibTKCALziejJCAL0rKqiCgKZo4/rBgKpi4nBBQK87en2BALvvc5KAoW9wZcMAu6XvvQERsGhvY4fSafVXowr8dtyYQTc7Uc=" />
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