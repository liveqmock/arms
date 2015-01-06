

<html>
<head><title>
	月度库存报告
</title>
    <style type="text/css" >
      .title
      {
      	text-align:center;
      	}
      .item
      {
      	text-align:right;
      	}
    </style>
 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../JS/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="storeOtherKuCunReportByMonth.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTE4MTg5NjMwNQ9kFgICAw9kFgYCCQ8PFgIeB0VuYWJsZWRnZGQCCw8PFgIfAGdkZAINDxYCHgtfIUl0ZW1Db3VudGZkZBAEO0t8V7xl0GjXWs33PNeD17E3" />
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
        <tr><td class="titlebg"><span>配件报表</span>(月度库存报告)
            </td>
            <td align="right">
            </td></tr>
      </table> 
      <table border="0">
       <tr>
       <td>年份:</td>
       <td>
       <input name="txtYear" type="text" value="2015" id="txtYear" class="easyui-numberbox" data-options="min:2000,max:2099,precision:0" style="width:50px;" />
       </td>
       <td>月份:</td>
       <td>
         <input name="txtMonth" type="text" value="1" id="txtMonth" class="easyui-numberbox" data-options="min:1,max:12,precision:0" style="width:50px;" />
       </td>
       <td>机构选择:</td>
       <td>
          <input name="txtHidGroupId" type="text" value="6018," id="txtHidGroupId" style="display:none;" />
          <input name="txtGroupName" type="text" value="深圳深业雷克萨斯汽车销售服务有限公司," id="txtGroupName" onclick="groupselect();" />
       </td>
       <td>
        <a onclick="return searchCheck();" id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
        <a onclick="return searchCheck();" id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">导出</a>
       </td>
       </tr>
      </table>

      <!--数据-->
      <table id="tb" border="1" style="border:1px solid gray;border-collapse:collapse;width:960px;"  >
       
       <tr class="title"> 
       <td>项目</td>
       <td>实际库存</td>
       <td>入库</td>
       <td>出库</td>
       <td>在厂车辆<!--本月出库未结算金额--></td>
       <td>配件外卖</td>
       <td colspan="4">结算说明</td>
       <td></td>
       </tr>
       <tr  class="title">
        <td>商品区分</td>
        <td>金额(成本)</td>
        <td>金额(成本)</td>
        <td>金额(成本)</td>
        <td>金额(成本)</td>
        <td>金额(成本)</td>
        <td>本月已结算成本</td>
        <td>本月出库已结算成本</td>
        <td>本月出库未结算成本</td>
        <td>累计出库未结算成本</td>
        <td></td>
       </tr>
       
       <tr class="item">
        <td>合计</td>
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


    
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="F6E07453" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBwLF16vSAwKz2tiJCAL3h7HQDALOqIIaAsqJhmwCqYuJwQUCvO3p9gSud4LiVwKaWuT5gFhi8AvrHR3DZg==" />
</div></form>

    <script language ="javascript" type="text/javascript" >

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

        var btnFlag = "0";
        function searchCheck() {
            if (btnFlag == "0") {
                btnFlag = "1";
            } else {
                return false;
            }

            var err = "";
            if ($("#txtYear").val() == "") {
                err += "年份不能为空！\n";
            }
            if ($("#txtYear").val() == "") {
                err += "月份不能为空！\n";
            }
            if ($("#txtYear").val() == "") {
                err += "机构不能为空！\n";
            }

            if (err != "") {
                alert(err);
                btnFlag = "0";
            }
                 
            return true;
        }


    </script>

</body>
</html>