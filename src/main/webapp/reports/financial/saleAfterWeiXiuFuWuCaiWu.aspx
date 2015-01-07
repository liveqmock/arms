
<html>
<head><title>
	售后服务维修表
</title>

   <style type="text/css" >
    td
    {
    	white-space:nowrap;
    	height:25px;
    	}
    	
   #tbList td
   {
   	height:15px;
   	font-size:8px; 
   	
   	}
    </style>
 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="saleAfterWeiXiuFuWuCaiWu.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNDI4NjY3MzMzZBgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WAQURY2hrQ2h1YW5Tb25nQ2FpV3UXzy8FVFoXsxgByEYjXSZLGnq/eA==" />
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
        <tr><td class="titlebg"><span>财务报表</span>(服务财务报表)
         </td><td align="right">
           </td></tr>
         </table> 
    </div>

     <div>
    <!--按钮区域start-->
      <table border="0" cellpadding="0" cellspacing="0" style="margin-top:3px;" >
       <tr>
         <td>传送财务收款日期：</td>
         <td><input name="txtJieSuanDate1" type="text" maxlength="20" id="txtJieSuanDate1" class="easyui-datebox" /> </td>
         <td>至：</td>
         <td><input name="txtJieSuanDate2" type="text" maxlength="20" id="txtJieSuanDate2" class="easyui-datebox" /> </td>
         <td>入厂日期：</td>
         <td><input name="txtRuChangDate1" type="text" maxlength="20" id="txtRuChangDate1" class="easyui-datebox" /> </td>
         <td>至：</td>
         <td><input name="txtRuChangDate2" type="text" maxlength="20" id="txtRuChangDate2" class="easyui-datebox" /> </td>
         <td>传财务：</td>
         <td><input id="chkChuanSongCaiWu" type="checkbox" name="chkChuanSongCaiWu" /> </td>         
       </tr>
       <tr>
         <td>出厂日期：</td>
         <td><input name="txtChuChangDate1" type="text" value="2015-1-6" maxlength="20" id="txtChuChangDate1" class="easyui-datebox" /> </td>
         <td>至：</td>
         <td><input name="txtChuChangDate2" type="text" value="2015-1-6" maxlength="20" id="txtChuChangDate2" class="easyui-datebox" /> </td>
         <td>维修单号：</td>
         <td><input name="txtWeiXiuBillNo" type="text" maxlength="20" id="txtWeiXiuBillNo" /> </td>

         <td>帐套：</td>
         <td><input name="txtZhangTao" type="text" maxlength="20" id="txtZhangTao" /> </td>
         <td>服务顾问：</td>
         <td><input name="txtFuWuUser" type="text" maxlength="20" id="txtFuWuUser" /> </td>         
       </tr>
       <tr>
      <td>机构选择:</td>
       <td colspan="3">
            <input name="txtHidGroupId" type="text" value="6018" id="txtHidGroupId" style="display:none;" />
            <input name="txtGroupName" type="text" value="深业雷克," id="txtGroupName" onClick="groupselect()" style="width:200px;height:20px;" />
         </td>
          <td colspan="4"></td>
       <td colspan="2"> 
       
       <a onclick="return searchCheck();" id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
       
       <a id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
       </td> 
       </tr>
       


      </table>
     </div>

     <div >
     <!--数据列表 start-->
     <table border="1" id="tbList" style="border:1px solid gray;border-collapse:collapse;width:98%;"   cellpadding="0" cellspacing="0"  >
       <tr>
       <td rowspan=2>NO.</td>
       <td rowspan=2>工单号</td>
       <td rowspan=2>入厂时间</td>
       <td rowspan=2>结算时间</td>
       <td rowspan=2>出厂时间</td>
       <td rowspan=2>车牌号码</td>
       <td rowspan=2>服务顾问</td>
       <td rowspan=2>标志</td>
       <td rowspan=2>帐套</td>

       <td rowspan=2>维修类型</td>
       <td rowspan=2>厂家品牌</td>
       <td rowspan=2>车系</td>
       <td rowspan=2>档案号</td>
       <td rowspan=2>保险公司</td>


       <td colspan=2>工时</td>
       <td colspan=2>材料</td>
       <td colspan=2>折扣</td>
       
       <td colspan=6>小计</td>

       <td colspan=12></td>       
       
       </tr>
       <tr>
       <td>折前</td><td>折后</td>
       <td>折前</td><td>折后</td>
       <td>工时</td><td>材料</td>

       <td>工时券</td>
       <td>材料券</td>
       <td>自费金额</td>
       <td>折后合计</td>
       <td>折扣合计</td>
       <td>材料成本</td>

        <td>现金</td>
       <td>转账</td>
       <td>支票</td>
       <td>刷卡</td>
       <td>其它</td>
       <td>收款小计</td>
       <td>发票号码</td>
       <td>开票金额</td>
       <td>开票人</td>
    
       <td>机构名称</td>
       <td>里程数</td>
       <td>会员资产</td>
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

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="989466E9" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWEgKA+8qkBAKIo57tCQK358StCwKdzMyFDwKC467wBAKg5pi1BwKz8aTnBgKz8eB4AoWTiqEHAr3ttMMKApGN92ICzqiCGgLKiYZsAqmLicEFArzt6fYEAu+9zkoChb3BlwwC7pe+9ASoOThUY+bVX2kgyuejMj6g0s9pZA==" />
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
                if (btnFlag == "0") { btnFlag = "1"; return true; } else {alert('禁止多次进行提交操作!');}
                return false;
            }

    </script>



</body>
</html>