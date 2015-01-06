

<html>
<head id="Head1"><title>
	大客户月报
</title> <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../JS/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="saleAfterDaKeHuReport.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJODI3NzI0NDgyD2QWAgIDD2QWBgILDw8WAh4HRW5hYmxlZGdkZAINDw8WAh8AZ2RkAg8PFgIeC18hSXRlbUNvdW50ZmRkdXqPGmzUmRBKwjCM6cNUosA0+k4=" />
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
    <div >
     <table border="0" style="width:98%;border-bottom:1px solid #b8b8b8;">
        <tr><td class="titlebg"><span>售后报表</span>(大客户维修月报)
         </td><td align="right">
           </td></tr>
         </table> 
    </div> 
    <div>
    <!--按钮区域 start-->
    <table border="0" cellpadding="0" cellspacing="0" style="margin-top:3px;width:700px;" >
       <tr>
       <td>
       <select name="ddlDateSort" id="ddlDateSort" style="width:100px;">
	<option selected="selected" value="结算日期">结算日期</option>
	<option value="出厂日期">出厂日期</option>
	<option value="产值日期">产值日期</option>

</select>
       </td>
         <td><input name="txtDateStart" type="text" value="2015-1-6" id="txtDateStart" class="inputCss easyui-datebox" style="width:100px;height:20px;" /></td>
         <td>~</td>
         <td><input name="txtDateEnd" type="text" value="2015-1-6" id="txtDateEnd" class="inputCss easyui-datebox" style="width:100px;height:20px;" /></td>
          <td>
            <input name="txtHidGroupId" type="text" value="6018," id="txtHidGroupId" style="display:none;" />
            <input name="txtGroupName" type="text" value="深业雷克," id="txtGroupName" onClick="groupselect()" style="width:150px;height:20px;" />
         </td>
         <td>
            <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
            <a id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
         </td>
       </tr>
    </table>
    <!--按钮区域 end-->
    </div>

      
      <div>
        <!--数据区域 satrt-->
        <table  border="1" id="tb" style="border:1px solid gray;border-collapse:collapse;width:98%;margin-top:3px;"  >
           
            <tr>
             <td style="width:30px;">NO.</td>
             <td>维修单号</td>
             <td>车牌号</td>
             <td>维修工时</td>
             <td>维修材料</td>
             <td>维修金额</td>
             <td>配件成本</td> 
             <td>SA</td>
             <td>已收款</td>
             <td>备注</td>
             <td>机构名称</td>
            </tr>
           
            <tr>
             <td>合计</td>
             <td></td>
             <td></td>
             <td  style="text-align:right;"></td>
             <td  style="text-align:right;"></td>
             <td  style="text-align:right;"></td>
             <td  style="text-align:right;"></td>
           
             <td></td>
             <td  style="text-align:right;"></td>
             <td></td>
             <td></td>
            </tr>
            
         </table>
        <!--数据区域 end-->
      </div>

    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CEC2060F" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCgLyhZKcCgKW/tCRCwKPoOTRCQLinozVCQLq4PrfDQK0ltSgDwLOqIIaAsqJhmwCqYuJwQUCvO3p9gSN4QJ6HpVvTs2pAB8GG3UfHZjBTA==" />
</div></form>


        <script  language="javascript" type="text/javascript">

            function groupselect() {
                var href = "../../Index/groupSelect.aspx";
                var SizeZ = 'dialogWidth:600px;dialogHeight:450px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;';
                var returnValue = window.showModalDialog(href, '', SizeZ);
                if (returnValue != undefined && returnValue != "") {
                    var s = returnValue.split("|");
                    $("#txtHidGroupId").val(s[0]);
                    $("#txtGroupName").val(s[1]);
                }

            }

    </script>


</body>
</html>