
<html>
<head><title>
	维修项目下载
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
    <form name="form1" method="post" action="saleAfterWeiXiuXiangMuSea.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTYxMzU5Njc5MGRkc+G7pdf/5Gu+pPVTxY17lj5E9Kw=" />
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
        <tr><td class="titlebg"><span>售后</span>(维修项目列表查询)
         </td><td align="right">
           </td></tr>
         </table> 
    </div> 

    <div>
    <!--查询条件 start-->
       <table border="0" cellpadding="0" cellspacing="0" style="margin-top:3px;" >
       <tr>
       <td>结算日期:</td><td><input name="txtJieSuanDate1" type="text" maxlength="10" id="txtJieSuanDate1" class="easyui-datebox" /> </td>
       <td><input name="txtJieSuanDate2" type="text" maxlength="10" id="txtJieSuanDate2" class="easyui-datebox" /> </td>
       <td>车牌号码:</td><td><input name="txtChePaiHaoMa" type="text" maxlength="20" id="txtChePaiHaoMa" /></td>
       <td>维修单号:</td><td><input name="txtWeiXiuBillNo" type="text" maxlength="20" id="txtWeiXiuBillNo" /></td>

       </tr>
       <tr>
       <td>出厂日期:</td><td><input name="txtChuChangDate1" type="text" value="2015-1-6" maxlength="10" id="txtChuChangDate1" class="easyui-datebox" /> </td>
       <td><input name="txtChuChangDate2" type="text" value="2015-1-6" maxlength="10" id="txtChuChangDate2" class="easyui-datebox" /> </td>
       <td>项目编号:</td><td><input name="txtXiangMuBianHao" type="text" maxlength="20" id="txtXiangMuBianHao" /></td>
       <td>项目名称:</td><td><input name="txtXiangMuName" type="text" maxlength="20" id="txtXiangMuName" /></td>

       </tr>
       
       <tr>
       <td>产值日期:</td><td><input name="txtChanZhiDate1" type="text" maxlength="10" id="txtChanZhiDate1" class="easyui-datebox" /> </td>
       <td><input name="txtChanZhiDate2" type="text" maxlength="10" id="txtChanZhiDate2" class="easyui-datebox" /> </td>
       
       <td colspan="2">
        <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
         
        <a id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
       </td>
       </tr>
       
       </table>
    <!--查询条件 end-->
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

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="07F1D516" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWEALPpMCaAgKIo57tCQK358StCwKUyP1yAoWTiqEHArPxpOcGArPx4HgCvb+EqgQCvN341QsC9urF3wICkdTj9AwCqYuJwQUCvO3p9gQC773OSgKFvcGXDALul770BPSgcFXz9anN4C3yJqjw2hUON0NZ" />
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

    </script>

</body>
</html>