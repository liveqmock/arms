
<html>
<head><title>
	定保招揽报表
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
    <form name="form1" method="post" action="CustomDingBaoZhaoLan.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMjQzOTg4NDI1ZGReWMO7MAmIXXauPiFpVILbQuI5+Q==" />
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
        <tr><td class="titlebg"><span>客服</span>(定保招揽报表)
         </td><td align="right">
           </td></tr>
         </table> 
    </div> 
    <div>
    <!--查询条件 start-->
     <table border="0" cellpadding="0" cellspacing="0" style="margin-top:3px;" >
      <tr>
        <td>招揽日期:</td>
        <td><input name="txtZhaoLanDateStart" type="text" value="2015-1-6" id="txtZhaoLanDateStart" class="easyui-datebox" /></td>
        <td><input name="txtZhaoLanDateEnd" type="text" value="2015-1-6" id="txtZhaoLanDateEnd" class="easyui-datebox" /></td>
        <td>商品编码:</td>
        <td><input name="txtShopId" type="text" id="txtShopId" /> </td>
        <td>车架号码:</td>
        <td><input name="txtVin" type="text" id="txtVin" /> </td>
        <td>
        <select name="ddlPageSize" id="ddlPageSize">
	<option value="15">15</option>
	<option value="25">25</option>
	<option value="55">55</option>
	<option value="100">100</option>

</select>
        </td>
      </tr>
      <tr> 
      <td colspan="8" style="text-align:right;">
        <a onclick="return searchCheck();" id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
        <a onclick="return searchCheck();" id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
      </td>
      </tr>

     </table>
    <!--查询条件 end-->
    </div>



   <div>
     <!--数据列表(可分页) start-->
         <table id="tb" border="1" style="border:1px solid gray;border-collapse:collapse;width:960px;font-size:9px;"  >
                 <tr>
              <td>NO.</td><td>车架号码</td><td>车牌号码</td><td>联系人</td>
              <td>车主名</td><td>车主电话</td><td>车主手机</td><td>联系人电话</td><td>联系人手机</td>
              <td>最近入厂日期</td><td>最近入厂里程</td><td>倒数第二次入厂时间</td>
              <td>倒数第二次入厂里程</td><td>倒数第三次入厂时间</td><td>倒数第三次入厂里程</td>
              <td>平均每天里程</td><td>下次入厂时间</td><td>符合条件的保养次数</td>
              <td>平均保养周期</td><td>平均保养里程</td><td>机构名</td>
              </tr>
            
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

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="2BB071D1" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWDgLFpNXZAgL3tffjCALqsOklAqi82IEEAv/62voJApCDmrcMApGDmrcMApSDmrcMArbCweALAqmLicEFArzt6fYEAu+9zkoChb3BlwwC7pe+9ATimK7EdL+bxBhGNHVTPF/Kkk8dvw==" />
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