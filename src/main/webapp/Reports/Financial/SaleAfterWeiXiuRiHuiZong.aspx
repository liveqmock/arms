
<html>
<head><title>
	维修日汇总报表
</title> <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
    <style type="text/css" >
        
     #tb td,#tbInfo td
     {
     	font-size:9px;
     	white-space:nowrap;
     	}
     
      .tRight td
     {
     	font-size:9px;
     	text-align:right;
     	}
    </style>
<body>
    <form name="form1" method="post" action="SaleAfterWeiXiuRiHuiZong.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNTQ4MTA4OTQ4D2QWAgIDD2QWBgICDxAPFgYeDURhdGFUZXh0RmllbGQFAWEeDkRhdGFWYWx1ZUZpZWxkBQFhHgtfIURhdGFCb3VuZGdkEBUMDOato+W4uOe7tOS/rgzljoLlrrbkv53kv64R5aSn5a6i5oi3KOaciOe7kykG5L+d6ZmpDOS/nemZqeiHquS7mAblhoXnu5Md5aSn5a6i5oi3KOaciOe7kynphY3ku7blpJbljZYg5aSn5a6i5oi3KOaciOe7kynpnZ7phY3ku7blpJbljZYP57u05L+u5pel5rGH5oC7DOaYjue7huaxh+aAuwrmnKrlvIAq57uTDOW3suW8gOacque7kxUMDOato+W4uOe7tOS/rgzljoLlrrbkv53kv64R5aSn5a6i5oi3KOaciOe7kykG5L+d6ZmpDOS/nemZqeiHquS7mAblhoXnu5Md5aSn5a6i5oi3KOaciOe7kynphY3ku7blpJbljZYg5aSn5a6i5oi3KOaciOe7kynpnZ7phY3ku7blpJbljZYP57u05L+u5pel5rGH5oC7DOaYjue7huaxh+aAuwzmnKrlvIDmnKrnu5MM5bey5byA5pyq57uTFCsDDGdnZ2dnZ2dnZ2dnZ2RkAgUPDxYCHgdFbmFibGVkZ2RkAgYPDxYCHwNnZGRkyoJAFzd+280L9kBA3Viok+MqauA=" />
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
        <tr><td class="titlebg"><span>财务报表</span>(维修日汇总)
         </td><td align="right">
           </td></tr>
         </table> 
    </div> 
    <div>
    <!--按钮区域start-->
      <table border="0" cellpadding="0" cellspacing="0" style="margin-top:3px;width:700px;" >
       <tr>
         <td>产值日期:</td>
         <td><input name="txtDateStart" type="text" value="2015-1-6" id="txtDateStart" class="inputCss easyui-datebox" style="width:100px;height:20px;" /></td>
         <td>~</td>
         <td><input name="txtDateEnd" type="text" value="2015-1-6" id="txtDateEnd" class="inputCss easyui-datebox" style="width:100px;height:20px;" /></td>
         <td>
           <select name="ddlSort" id="ddlSort" style="width:130px;height:24px;">
	<option value="正常维修">正常维修</option>
	<option value="厂家保修">厂家保修</option>
	<option value="大客户(月结)">大客户(月结)</option>
	<option value="保险">保险</option>
	<option value="保险自付">保险自付</option>
	<option value="内结">内结</option>
	<option value="大客户(月结)配件外卖">大客户(月结)配件外卖</option>
	<option value="大客户(月结)非配件外卖">大客户(月结)非配件外卖</option>
	<option selected="selected" value="维修日汇总">维修日汇总</option>
	<option value="明细汇总">明细汇总</option>
	<option value="未开未结">未开*结</option>
	<option value="已开未结">已开未结</option>

</select>
         </td>
         <td>
            <input name="txtHidGroupId" type="text" value="6018" id="txtHidGroupId" style="display:none;" />
            <input name="txtGroupName" type="text" value="深业雷克," id="txtGroupName" onClick="groupselect()" style="width:150px;height:20px;" />
         </td>
         <td>
            <a onclick="return searchCheck();" id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
            
            <a onclick="return searchCheck();" id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
         </td>
       </tr>
      </table>

    <!--按钮区域end-->
    </div>

    <div id="detail">
    <!--数据 start-->
     <table  border="1" id="tb" style="border:1px solid gray;border-collapse:collapse;width:98%;margin-top:3px;"  >
         
     </table>
    <!--数据 end-->
    </div>

    <div id="all">
    <!--数据 start-->
     <table  border="1" id="tbInfo" style="border:1px solid gray;border-collapse:collapse;width:98%;margin-top:3px;"  >
          <tr>
             <td>NO.</td> 
             <td>产值时间</td>
             <td>帐套</td>           
             <td>标准工时</td>
             <td>标准材料</td>
             <td>材料成本</td>
             <td>核价工时</td>
             <td>核价材料</td>
             <td>折扣工时</td>
             <td>折扣材料</td>
             <td>工时券</td>
             <td>材料券</td>
             <td>进项转出</td>
             <td>现金</td>
             <td>刷卡</td>
             <td>银行转帐</td>
             <td>支票</td>
             <td>其它</td>
             <td>会员资产</td>
             <td>工时产值</td>
             <td>材料产值</td> 
             <td>机构名</td>      
            </tr>
         
     </table>
    <!--数据 end-->
    </div>






    </div>



    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="83BD9266" />
</div></form>

    <script  language="javascript" type="text/javascript">

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


        var btnFlag = "0";
        function searchCheck() {
            if (btnFlag == "0") { btnFlag = "1"; return true; } else { alert('禁止多次进行提交操作!'); }
            return false;
        }

    </script>
</body>
</html>