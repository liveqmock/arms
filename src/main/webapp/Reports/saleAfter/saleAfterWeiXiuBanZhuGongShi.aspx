


<html>
<head id="Head1"><title>
	维修工单列表查询
</title>

    <style type="text/css">
     
     td
     {
     	white-space:nowrap;
     	font-size:12px;
     	padding-left:3px;
     	}
     
    </style>

 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../JS/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="saleAfterWeiXiuBanZhuGongShi.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE1NDczMzM0MThkZLFKJpeT71Gxem77hfGql5SZ3/LK" />
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
    <div>
     <table border="0" style="width:98%;border-bottom:1px solid #b8b8b8;">
        <tr><td class="titlebg"><span>售后</span>(维修工单列表查询)
         </td><td align="right">
           </td></tr>
         </table> 
    </div> 

    <div>
    <!--查询按钮 start-->
      <table border="0" cellpadding="0" cellspacing="0" style="margin-top:3px;" >
       <tr>
       <td>产值时间:</td><td><input name="txtChanZhiDate1" type="text" value="2015-1-6" maxlength="10" id="txtChanZhiDate1" class="easyui-datebox" /> </td>
       <td><input name="txtChanZhiDate2" type="text" value="2015-1-6" maxlength="10" id="txtChanZhiDate2" class="easyui-datebox" /> </td>
       <td>帐套:</td><td><input name="txtZhangTao" type="text" maxlength="10" id="txtZhangTao" /> </td>
       <td>维修班组:</td><td><input name="txtBanZu" type="text" maxlength="10" id="txtBanZu" /> </td>
    <td>维修单号:</td><td><input name="txtBillNo" type="text" maxlength="10" id="txtBillNo" /> </td>
       </tr>
       
       <tr>
       <td>出厂日期:</td><td><input name="txtChuChangDate1" type="text" maxlength="10" id="txtChuChangDate1" class="easyui-datebox" /> </td>
       <td><input name="txtChuChangDate2" type="text" maxlength="10" id="txtChuChangDate2" class="easyui-datebox" /> </td>
       <td>完检人:</td><td><input name="txtWanJian" type="text" maxlength="10" id="txtWanJian" /> </td>
       <td>开票人:</td><td><input name="txtKaiPiao" type="text" maxlength="10" id="txtKaiPiao" /> </td>
           <td>
        <a onclick="return searchCheck();" id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
         
        <a onclick="return searchCheck();" id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
       </td>
       </tr>

       <tr>

       </tr>

      </table>

    <!--查询按钮 end-->
    </div>


    <div>
     <!--数据列表(可分页) start-->
         <table id="tb" border="1" style="border:1px solid gray;border-collapse:collapse;width:960px;"  >
            
         </table>
     <!--数据列表 end-->
    </div>
      <div>
    <!--分页代码start-->
    共0页 当前1页 跳到<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="border:none;border-bottom:1px solid black;width:30px;" />
    <a onclick="return pageGo();" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">转到</a>
    <!--分页代码end-->
    </div>

    
    <input name="txtMaxPage" type="text" id="txtMaxPage" style="display:none;" />



     
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="1EA8FDBD" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWDwKK2tI/Avbqxd8CApHU4/QMAr3ttMMKAqf9oLMPAtr08I0OArPxpOcGArPx4HgCxqKiwgIC9Jeq9wQCqYuJwQUCvO3p9gQC773OSgKFvcGXDALul770BK7eVf9i+xJ9EZO+gp3Jwi0YBiZc" />
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

            __doPostBack('lnkSearch', '');
            return false;

        }


        var btnFlag = "0";
        function searchCheck() {
            if (btnFlag == "0") { btnFlag = "1"; return true; } else { alert('禁止多次进行提交操作!'); }
            return false;
        }


    </script>

</body>
</html>