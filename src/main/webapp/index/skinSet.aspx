<html>
<head><title>
	皮肤设置
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="skinSet.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTY2MzM4MTg4OWRkYM0jH08S61FU4UeCKVxsLlYkQvw=" />
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

    <table border="0" >
    <tr>
    <td align="center"  onmouseover="this.style.backgroundColor='#B0E0E6'" onmouseout="this.style.backgroundColor='#FFFFFF'"  onclick="changeSkin('default')" >
    <img src="../image/ThemeDefault.gif" alt="" title ="" /><br />
      经典蓝
    </td>
    
    <td align="center" onmouseover="this.style.backgroundColor='#B0E0E6'" onmouseout="this.style.backgroundColor='#FFFFFF'"  onclick="changeSkin('gray')">
    <img src="../image/ThemeGray.gif" alt="" title ="" /><br />
      优雅灰
    </td>


    <td align="center" onmouseover="this.style.backgroundColor='#B0E0E6'" onmouseout="this.style.backgroundColor='#FFFFFF'"  onclick="changeSkin('gray')">
    <img src="../image/ThemeBlack.gif" alt="" title ="" /><br />
      黑色时尚
    </td>


    <td align="center" onmouseover="this.style.backgroundColor='#B0E0E6'" onmouseout="this.style.backgroundColor='#FFFFFF'"  onclick="changeSkin('metro')">
    <img src="../image/ThemeDefault.gif" alt="" title ="" /><br />
      Metro风
    </td>
    
    </tr>
    </table>

    <input name="hidStyle" type="hidden" id="hidStyle" />
    <a id="btnSave" href="javascript:__doPostBack('btnSave','')" style="display:none"></a>

    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="42129ED7" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWAwLt7smPBgL6lf6ICAKct7iSDMUXauJlwCrgnnKHx6aJVBSGEEiE" />
</div></form>
    <script language="javascript" type="text/javascript" >
        function changeSkin(skin) {

            $("#hidStyle").val(skin);
        __doPostBack('btnSave','');
        }
    
    </script>

</body>
</html>