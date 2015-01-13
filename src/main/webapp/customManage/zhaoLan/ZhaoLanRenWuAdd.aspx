<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<base target="_self" />
<meta http-equiv="Expires" content="0" /><meta http-equiv="Cache_Control" content="no-cache" /><meta http-equiv="Pragma" content="no-cache" /><title>
	招揽任务
    
</title>
    <style type="text/css">
        .button
        {
            border-right: #666666 1px solid;
            border-top: #c8c8c8 1px solid;
            font-weight: normal;
            font-size: 9pt;
            border-left: #c8c8c8 1px solid;
            cursor: hand;
            border-bottom: #666666 1px solid;
            font-style: normal;
            background-color: #F6F6cc;
            font-variant: normal;
            height: 23px;
        }
        
                .button1
        {
            height: 25px;
             background-color: #F9F8F5;
            }
        .div
        {
        	vertical-align:top;
            height: 70px;
            width: 620px;
            text-align:center;
        }
        .div2
        {
            text-align: left;
            font-size:10pt;
            width: 95%;
            padding-left:1%;
            padding-top:2px;
            padding-bottom:2px;
        }
    </style>
    <script type="text/javascript">
        function CheckData() {
            if (document.getElementById("txtZhaoLanTaskName").value == "") {
                window.alert("任务名称不能为空！");
                return false;
            }
        }
    </script>
 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=ea3f7645249548b0b38c79aef7591385" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=ea3f7645249548b0b38c79aef7591385" /><script src="../../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../JS/common.js?v=ea3f7645249548b0b38c79aef7591385" type="text/javascript"></script><link href="../../style/common.css?v=ea3f7645249548b0b38c79aef7591385" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body  bgcolor="#F9F8F5" style="margin-top: 23px; text-align:center;">
    <form name="form1" method="post" action="ZhaoLanRenWuAdd.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMjAwNDQ0MTU1MmRkRy3/UmLYEbm7YJBhxiosUt32YNo=" />
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


    <div class="div2">
        <input type="submit" name="btnSaveZhaoLanTask" value="保存" onclick="return CheckData();" id="btnSaveZhaoLanTask" class="button1" />
            <input id="btnCancel" type="button" value="取消" onclick="javascript:window.close();" class="button1" />
        <br /><br />
        
        <fieldset>
        <legend>任务设置</legend>
        <div class="div">
            <div style="text-align:left; padding-left:20px;"><span id="Label1">*任务名称：</span></div>
            <input name="txtZhaoLanTaskName" type="text" id="txtZhaoLanTaskName" style="height:22px;width:600px;" />
         </div>
         <div class="div" style="vertical-align: top">
           <div style="text-align:left; padding-left:20px;">
            <span id="Label2">任务说明：</span>
           </div>
            <textarea name="txtZhaoLanTaskShuoMing" rows="2" cols="20" id="txtZhaoLanTaskShuoMing" style="height:176px;width:600px;"></textarea>
            <br />
         </div>
         <div style="text-align:left; padding-left:20px; display:none">
            <span id="Label3">*扩展查询条件：</span>
            <select name="ddlZhaoLanExtendQuery" onchange="javascript:setTimeout('__doPostBack(\'ddlZhaoLanExtendQuery\',\'\')', 0)" id="ddlZhaoLanExtendQuery" style="height:16px;width:128px;">

</select>
        </div>
        </fieldset>
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="C304612F" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBQKQr73iCwKbwrfzBALtn56gDAL8ooPbCAKWpZ/jA/6DUcbZCxSn1SlpWqD20kIg4ktU" />
</div></form>
</body>
</html>