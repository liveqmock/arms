<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	个人信息修改
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="userPersonalChange.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE3NTMxNDc1NzlkZJiv0p9fWfmKa/2VIYnra/pubXb2" />
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


       <div class="allRegion">
        <div class="title"> 
        <table border="0" style="width:100%;">
        <tr><td  class="titlebg"><span >个人设置</span>
         <span class="titleSpan">(密码管理)</span> 
         </td><td align="right">          
          </td></tr>
         </table> 
         </div>
         <div style="padding-left:10px;">
           <table border="0">
            <tr>
            <td colspan="2">密码修改</td>
            </tr>
            <tr>
            <td>您的旧密码:</td>
            <td><input name="txtOldPwd" type="password" maxlength="20" id="txtOldPwd" /> </td>
            </tr>
             <tr>
            <td>输入新密码:</td>
            <td><input name="txtNewPwd1" type="password" maxlength="20" id="txtNewPwd1" /> </td>
            </tr>
             <tr>
            <td>新密码确认:</td>
            <td><input name="txtNewPwd2" type="password" maxlength="20" id="txtNewPwd2" /> </td>
            </tr>
            <tr>
            <td colspan="2">
            <a onclick="return saveCheck();" id="lnkSave" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSave','')">密码修改</a>
            </td>
            </tr>
           </table>
         </div>

    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="5B71688A" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBQLG+5+VCQLUlvrbCAL7mJ6BBAL7mJqBBAKj7e2BCGd01QdoWNzo3ZlQP6QXFnIM2itH" />
</div></form>

    <script language="javascript" type="text/javascript" >
        function saveCheck() {
         
            var ischar = false;
            var isNumber = false;
            var isLength = false;
            var messageinfo = "";
            var str = $.trim($('#txtNewPwd2').val());
            var oldPwd = $.trim($('#txtOldPwd').val());
            var newPwd = $.trim($('#txtNewPwd1').val());

            if (str == "" || oldPwd == "" || newPwd == "") { alert("密码都必须填写!"); return false; }
            if (str != newPwd) { alert("新旧密码不一致!"); return false; }



            try {
                if (str.match(/[A-Za-z]{1}/g).length >= 2)
                    ischar = true;
                else
                    messageinfo += "字符至少需要2位.\n";
            } catch (e) {
                messageinfo += "字符至少需要2位.\n";
            }

            try {
                if (str.match(/[0-9]{1}/g).length >= 2)
                    isNumber = true;
                else
                    messageinfo += "数字最少2位.\n";
            } catch (e) {
                messageinfo += "数字最少2位.\n";
            }

            if (str.length >= 6)
                isLength = true;
            else if (str.length < 8)
                messageinfo += "密码长度最小6位.\n";

            if (ischar == false || isNumber == false || isLength == false) {
                window.alert(messageinfo);
                tmp = "";
                return false;
            }

            else {
                return true;
            }


        }


    </script>

</body>
</html>