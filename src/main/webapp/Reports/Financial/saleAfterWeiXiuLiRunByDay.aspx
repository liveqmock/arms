<html>
<head id="Head1"><title>

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
   	font-size:9px; 
   	
   	}
    </style>

 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../JS/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="saleAfterWeiXiuLiRunByDay.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNDY1MDAyMDI3ZGQ2eFh6sK7E72Bwuvl+iZxxO62MmA==" />
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
     <table border="0" style="width:98%;">
        <tr><td class="titlebg"><span>财务报表</span>(维修利润表)
         </td><td align="right">
           </td></tr>
         </table> 
    </div>


     <div>
    <!--按钮区域start-->
      <table border="0" cellpadding="0" cellspacing="0" style="margin-top:3px;" >
       <tr>
        <td>传送财务收款日期：</td>
         <td><input name="txtJieSuanDate1" type="text" value="2015-1-6" maxlength="20" id="txtJieSuanDate1" class="easyui-datebox" /> </td>
         <td>至：</td>
         <td><input name="txtJieSuanDate2" type="text" value="2015-1-6" maxlength="20" id="txtJieSuanDate2" class="easyui-datebox" /> </td>
         <td>服务顾问:</td>
         <td><input name="txtFuWuUserId" type="text" maxlength="20" id="txtFuWuUserId" /></td>
         <td>车牌号码:</td>
         <td><input name="txtChePaiHaoMa" type="text" maxlength="20" id="txtChePaiHaoMa" /> </td>
         <td></td>
        </tr>
        <tr>
        <td>出厂日期：</td>
         <td><input name="txtChuChangDate1" type="text" maxlength="20" id="txtChuChangDate1" class="easyui-datebox" /> </td>
         <td>至：</td>
         <td><input name="txtChuChangDate2" type="text" maxlength="20" id="txtChuChangDate2" class="easyui-datebox" /> </td>
         <td>车主名称:</td>
         <td><input name="txtCheZhuName" type="text" maxlength="20" id="txtCheZhuName" /></td>
         <td>车系:</td>
         <td><input name="txtCheXi" type="text" maxlength="20" id="txtCheXi" /> </td>
       </tr> 
        <tr>
         <td>机构选择:</td>
       <td colspan="3">
            <input name="txtHidGroupId" type="text" value="6018" id="txtHidGroupId" style="display:none;" />
            <input name="txtGroupName" type="text" value="深业雷克," id="txtGroupName" onClick="groupselect()" style="width:200px;height:20px;" />
         </td>
       <td colspan="2"></td>
       <td colspan="2"> 
       
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
       
       <a id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
       </td> 
       </tr>
        </table>
     </div>

     <div>
     <!--数据展示 start-->
      <table border="1" id="tbList" style="border:1px solid gray;border-collapse:collapse;width:98%;"   cellpadding="0" cellspacing="0"  >

       <tr>
       <td rowspan="2">NO.</td> 
       <td rowspan="2">结算日期</td>
       <td rowspan="2">单数</td>
       
       <td colspan="4">正常维修</td>
       <td colspan="4">大客户(月结)</td>
       <td colspan="4">内结</td>
       <td colspan="4">保险</td>
       <td colspan="4">厂家保修</td>
       <td colspan="4">其它</td>
        
       <td rowspan="2">工时合计</td>
       <td rowspan="2">配件合计</td>
       <td rowspan="2">工时折扣</td>
       <td rowspan="2">配件折扣</td>
       <td rowspan="2">折后工时合计</td>
       <td rowspan="2">折后配件合计</td>
       <td rowspan="2">工时券</td>
       <td rowspan="2">材料券</td>
       <td rowspan="2">自费补差价</td>

       <td rowspan="2">预估产值</td>
       <td rowspan="2">增值税-销项</td>
       <td rowspan="2">一般维修配件成本</td>
       <td rowspan="2">月结维修配件成本</td>
       <td rowspan="2">内结配件成本</td>
       <td rowspan="2">保险维修配件成本</td>
       <td rowspan="2">厂家保修配件成本</td>
       <td rowspan="2">其它配件成本</td>
       <td rowspan="2">配件成本合计</td>
       <td rowspan="2">成本合计</td>
       <td rowspan="2">增值税-进项</td>
       <td rowspan="2">预估利润</td>
       <td rowspan="2">机构名称</td>

       </tr>
       <tr>
       
       <td>工时折前</td><td>工时折后</td><td>配件折前</td><td>配件折后</td>
       <td>工时折前</td><td>工时折后</td><td>配件折前</td><td>配件折后</td>
       <td>工时折前</td><td>工时折后</td><td>配件折前</td><td>配件折后</td>
       <td>工时折前</td><td>工时折后</td><td>配件折前</td><td>配件折后</td>
       <td>工时折前</td><td>工时折后</td><td>配件折前</td><td>配件折后</td>
       <td>工时折前</td><td>工时折后</td><td>配件折前</td><td>配件折后</td>

       </tr>


      
       </table>
     <!--数据展示 end-->
     </div>


    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="4357791B" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWDQKro5jLCwKIo57tCQK358StCwLB84CvCAKUyP1yArPxpOcGArPx4HgCqsfv4gcC1s/8zgICzqiCGgLKiYZsAqmLicEFArzt6fYEyjoQ8UL4HGfJxnPOsZEBoahx/Sc=" />
</div></form>

        <script language="javascript" type="text/javascript" >

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