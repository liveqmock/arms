

<html >
<head id="Head1"><title>
	客户新增报表统计
</title>
     <style type="text/css">
       td  { white-space:nowrap;}
    </style>


 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../JS/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="custAddReports.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNTQ1NTY3NzQyZGS0j9rIZ4wlDay5YQvyXeBHaejxRQ==" />
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
        <tr><td class="titlebg"><span>客服报表</span>(新增客户统计报表)
            </td>
            <td align="right">
            </td></tr>
      </table> 

      <!--查询条件 start-->
      <table border="0">
       <tr>
        <td>统计日期:</td>
        <td><input name="txtStartYear" type="text" value="2014" id="txtStartYear" class="easyui-numberspinner" max="2099" min="1980" style="width:50px;" /></td>
        <td>年</td>
        <td><input name="txtStartMonth" type="text" value="1" id="txtStartMonth" class="easyui-numberspinner" max="12" min="1" style="width:50px;" /></td>
        <td>月--</td>
        <td><input name="txtEndYear" type="text" value="2015" id="txtEndYear" class="easyui-numberspinner" max="2099" min="1980" style="width:50px;" /></td>
        <td>年</td>
        <td><input name="txtEndMonth" type="text" value="1" id="txtEndMonth" class="easyui-numberspinner" max="12" min="1" style="width:50px;" /></td>
        <td>月</td>
      
        <td>
        <table id="radShowSort" border="0">
	<tr>
		<td><input id="radShowSort_0" type="radio" name="radShowSort" value="0" checked="checked" /><label for="radShowSort_0">汇总</label></td><td><input id="radShowSort_1" type="radio" name="radShowSort" value="1" /><label for="radShowSort_1">明细</label></td>
	</tr>
</table>
        </td>
        <td>
        <a id="lnkCustSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkCustSearch','')">查询</a>
        <a id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">下载</a>
        </td>
        </tr>
        
        </table>
      <!--查询条件 end-->

      <!--列表数据 start-->
       <table  border="1" style="border:1px solid gray;border-collapse:collapse;"  >
       <!--汇总数据 start-->
        
       <!--汇总数据 end-->
       
       
       <!--明细数据 start-->
       


       <!--明细数据 end-->       
       </table>
      <!--列表数据 end-->
             <div>
    <!--分页代码start-->
    共0页 当前1页 跳到<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="border:none;border-bottom:1px solid black;width:30px;" />
    <a onclick="return pageGo();" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">转到</a>
    <!--分页代码end-->
    </div>

    
    <input name="txtMaxPage" type="text" id="txtMaxPage" style="display:none;" />



  
    </div>


    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="42A764E6" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWDQKK+cjTCgKa+8HsDgL29M2pBgKEy97zBAKdgMXzDQKXzqfaCwKIzqfaCwKHoY20BwL18eL1BAK87en2BALvvc5KAoW9wZcMAu6XvvQEtH0LWfTenOvJX+MmcxjvarA//iE=" />
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

                    __doPostBack('lnkCustSearch', '');
                    return false;

                }

    </script>


</body>
</html>