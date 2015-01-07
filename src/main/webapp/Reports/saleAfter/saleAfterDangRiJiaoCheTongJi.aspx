


<html>
<head><title>
	当日交车统计
</title>
    <style type="text/css">
     
     td
     {
     	white-space:nowrap;
     	font-size:12px;
     	padding-left:3px;
     	}
     
    </style>

 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="saleAfterDangRiJiaoCheTongJi.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTQ0NjUzNDIyMmRkxApzHxRA2LgCIDOAF2uBKghFXp4=" />
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
        <tr><td class="titlebg"><span>售后</span>(当日交车统计)
         </td><td align="right">
           </td></tr>
         </table> 
    </div> 
     <div>
    <!--查询按钮 start-->
      <table border="0" cellpadding="0" cellspacing="0" style="margin-top:3px;" >
       <tr>
       <td>业务时间:</td><td>
       <input name="txtDate1" type="text" value="2015-1-6" id="txtDate1" class="easyui-datebox" />
       </td>
       <td>
       <input name="txtDate2" type="text" value="2015-1-6" id="txtDate2" class="easyui-datebox" />
       </td>
       <td></td>
       </tr>
       <tr>
       <td>机构名称:</td>
      <td>
      <input name="txtGroupId" type="text" value="6018" id="txtGroupId" style="display:none;" />
      <input name="txtGroupName" type="text" value="深业雷克" id="txtGroupName" onclick="groupselect();" />
      </td>
      <td>
      <table id="radList" border="0">
	<tr>
		<td><input id="radList_0" type="radio" name="radList" value="0" checked="checked" /><label for="radList_0">汇总</label></td><td><input id="radList_1" type="radio" name="radList" value="1" /><label for="radList_1">明细</label></td>
	</tr>
</table>
      </td>
      <td>
       <input type="submit" name="btnSearch" value="查询" id="btnSearch" />
       <span id="lnkExcel"></span> 
       <input type="submit" name="btnExcel" value="Excel" id="btnExcel" />
      </td>
      </tr>
    </table>
    </div>

     
     <!--主数据显示 start-->
         <div>
     <!--数据列表(可分页) start-->
         <table id="tb" border="1" style="border:1px solid gray;border-collapse:collapse;"  >
            
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

     <!--主数据显示 end-->


    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CE04B493" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWDQLO5fWiCgLEhPyQAgLEhMD/BwLMh9NEAsqJhmwCk4/uxwMCjI/uxwMCg+DEqQ8CpZ/z7goChbe0hwkC773OSgKFvcGXDALul770BH+nKmZOsVYPpFhvjUZz7jDHqI3s" />
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

            __doPostBack('btnSearch', '');
            return false;

        }


        function groupselect() {
            var href = "../../index/groupSelect.aspx";
            var SizeZ = 'dialogWidth:600px;dialogHeight:450px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;';
            var returnValue = window.showModalDialog(href, '', SizeZ);
            if (returnValue != undefined && returnValue != "") {
                var s = returnValue.split("|");
                $("#txtGroupId").val(s[0]);
                $("#txtGroupName").val(s[1]);
            }

        }


    </script>


</body>
</html>