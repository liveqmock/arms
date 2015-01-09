
<html>
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<script>

    var tmp = '#FFFFFF';
    $(function () {
        $('#tb tr').mouseover(function () {
            tmp = this.style.backgroundColor;
            this.style.backgroundColor = '#eaf2ff';
        });

        $('#tb tr').mouseout(function () {
            this.style.backgroundColor = tmp;
        });
    });


    function showDetail(thisId) {
        location.href = 'commonManage.aspx?thisId=' + thisId + "&d=" + new Date();
    }

</script>
<body>
    <form name="form1" method="post" action="commonManage.aspx?d=Fri+Jan+09+2015+11%3a49%3a55+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE3ODc2ODM4NjQPZBYCAgMPZBYIAgcPDxYCHgdWaXNpYmxlaGRkAgkPDxYCHwBnZGQCCw8PFgIfAGhkZAINDxYCHgtfIUl0ZW1Db3VudGZkZNVpunkNoooo7Pxd2RAhqFttCyF6" />
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


    <div>
     <table border="0" style="width:400px;border-bottom:1px solid #b8b8b8;"">
        <tr><td class="titlebg"><span>基础设置</span>(常用联系人设置)
         </td><td align="right">
           </td></tr>
         </table>


      <table border="0" >
       <tr>
       <td>快捷键1:</td>
       <td><input name="txtKuaiJieJian1" type="text" id="txtKuaiJieJian1" /> </td>
       <td>快捷键1:</td>
       <td><input name="txtKuaiJieJian2" type="text" id="txtKuaiJieJian2" /> </td>
        </tr>
        <tr>
        <td>Value</td>
        <td colspan="3">
        <input name="txtValue" type="text" maxlength="10" id="txtValue" />
        </td>
        </tr>
        <tr>
        <td colspan="4" align="center">
          
          <a id="lnkSave" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSave','')">保存</a>
          
        </td> 
        </tr>
      </table>

      <!--数据list start-->
      <table id="tb"  border="1" style="border:1px solid gray;border-collapse:collapse;width:380px;" >
        
         <tr><td>快捷键1</td><td>快捷键2</td><td></td></tr>
         

       </table> 
      <!--数据list end-->
       
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="A80B64EC" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBQK7zoW0BAKpsujGBALY9o6HBgKU8abfBgKj7e2BCFMYM/08g14ZfB/L00ppp2xCMnlx" />
</div></form>
</body>
</html>