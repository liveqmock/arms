

<html>
<head><title>
	配件销售报表
</title>
    <style type="text/css">
       td
       {
       	white-space:nowrap;
       	}
    </style>



 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="storeOtherSaleOut.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJOTY4MDg2NDk0D2QWAgIDD2QWBAIRDxYEHgtfIUl0ZW1Db3VudGYeB1Zpc2libGVnZAISDxYCHwFoZGRBpFa1jj7qTO6C9AXUkE8bjTdJkg==" />
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
        <tr><td class="titlebg"><span>配件报表</span>(销售出退库报表)
            </td>
            <td align="right">
            </td></tr>
      </table> 

      <!--查询条件 start-->
       <table border="0">
       <tr>
       <td>出库时间:</td><td><input name="txtChuKuDate1" type="text" value="2015-1-6" id="txtChuKuDate1" class="easyui-datebox" /></td>
       <td><input name="txtChuKuDate2" type="text" value="2015-1-6" id="txtChuKuDate2" class="easyui-datebox" /></td>
       <td>结算单号:</td><td><input name="txtJieSuanBill" type="text" maxlength="20" id="txtJieSuanBill" /> </td>
       <td>出库单号:</td><td><input name="txtChuKuBillNo" type="text" maxlength="20" id="txtChuKuBillNo" /> </td>
       <td>客户名称:</td><td><input name="txtCustName" type="text" maxlength="60" id="txtCustName" /></td>
       </tr>
       <tr>
       <td>结算时间:</td><td><input name="txtJieSuanDate1" type="text" id="txtJieSuanDate1" class="easyui-datebox" /></td>
       <td><input name="txtJieSuanDate2" type="text" id="txtJieSuanDate2" class="easyui-datebox" /></td>
       <td>商品编码:</td><td><input name="txtShopId" type="text" maxlength="60" id="txtShopId" /> </td>

       <td>商品名称:</td><td><input name="txtShopName" type="text" maxlength="60" id="txtShopName" /> </td>      
       <td>单据备注:</td><td><input name="txtBillBeiZhu" type="text" maxlength="60" id="txtBillBeiZhu" /></td>
        </tr>
       <tr>
       <td>机构名称:</td>
       <td colspan="2" style="width:280px;">
          <input name="txtHidGroupId" type="text" value="6018" id="txtHidGroupId" style="display:none;" />
          <input name="txtGroupName" type="text" value="深业雷克" id="txtGroupName" onclick="groupselect();" style="width:100%;" />
       </td>
       <td colspan="2" >
       <table id="radIoFlag" border="0">
	<tr>
		<td><input id="radIoFlag_0" type="radio" name="radIoFlag" value="" checked="checked" /><label for="radIoFlag_0">全部</label></td><td><input id="radIoFlag_1" type="radio" name="radIoFlag" value="1" /><label for="radIoFlag_1">出库</label></td><td><input id="radIoFlag_2" type="radio" name="radIoFlag" value="-1" /><label for="radIoFlag_2">退库</label></td>
	</tr>
</table> 
       </td>
       <td>
       <table id="radShowSort" border="0">
	<tr>
		<td><input id="radShowSort_0" type="radio" name="radShowSort" value="按单" checked="checked" /><label for="radShowSort_0">按单</label></td><td><input id="radShowSort_1" type="radio" name="radShowSort" value="按明细" /><label for="radShowSort_1">按明细</label></td>
	</tr>
</table> 
       </td>
        <td>
         <select name="ddlSaleStatus" id="ddlSaleStatus" style="width:70px;">
	<option selected="selected" value="">全部</option>
	<option value="1">已结算</option>
	<option value="0">未结算</option>

</select>
       </td>
       <td colspan="2">
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
       <a id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
       </td>
       </tr>
       </table>
      <!--查询条件 end-->


      <!--数据显示 start-->
        <table id="tb" border="1" style="border:1px solid gray;border-collapse:collapse;width:960px;"  >
          
          <tr>
           <td>NO.</td>
           <td>销售单号</td> 
           <td>客户名</td>
           <td>审核时间</td>
           <td>审核人</td>
           <td>结算单号</td>
           <td>结算时间</td>
           <td>数量</td>
           <td>金额</td>
           <td>成本</td>
           <td>写入时间</td>
          </tr>
          
           <tr>
           <td></td>
           <td></td> 
           <td></td>
           <td></td>
           <td></td>
           <td></td>
           <td></td>
           <td></td>
           <td></td>
           <td></td>
           <td></td>
          </tr>
          
          
        
         
          
          


        </table>
      <!--数据显示 end-->
       
         <!--分页代码start-->
     <div>
    共0页 当前1页 跳到<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="border:none;border-bottom:1px solid black;width:30px;" />
    <a onclick="return pageGo();" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">转到</a>
    <!--分页代码end-->
    </div>

    
    <input name="txtMaxPage" type="text" value="0" id="txtMaxPage" style="display:none;" />


    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="9E87FBB9" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWHAKi8f2ZCgKixbDWAgKhxbDWAgLa+4r7AQLb6NQvAvGZ+cINAoijnu0JArfnxK0LAqi82IEEAricuNgFAqK3v60PAs6oghoCyomGbAKfmOraCgKQ98C0BgKc94y3BgKfmOraCgKgkNrMCAL03IexCwKHoY20BwLp5da1DwLmivzbAwL5ivzbAwKpi4nBBQK87en2BALvvc5KAoW9wZcMAu6XvvQER5b9FZt93NXPb2QaK+QXKJ2gBvU=" />
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