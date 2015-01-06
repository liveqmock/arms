<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>
	维修工时费率新增
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="saleAfter_newGongShiFeiLvAdd.aspx?thisGuid=0&amp;d=Mon+Jan+05+2015+16%3a13%3a02+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNzc2MzQzNDYzD2QWAgIDD2QWBgIBDxAPFgYeDURhdGFUZXh0RmllbGQFDGdvbmdEdWFuTmFtZR4ORGF0YVZhbHVlRmllbGQFDGdvbmdEdWFuTmFtZR4LXyFEYXRhQm91bmRnZBAVBgbmnLrnlLUG5L+d5YW7BumSo+mHkQbnvo7lrrkG5Za35ryGABUGBuacuueUtQbkv53lhbsG6ZKj6YeRBue+juWuuQbllrfmvIYAFCsDBmdnZ2dnZ2RkAgcPDxYCHgdWaXNpYmxlaGRkAgkPDxYCHwNoZGRkhPkWo/+t8bxxhojpW+CYhGBRVM0=" />
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


    <div style="position:absolute;top:3px;left:50px">
        <table border="0" style="width:100%;border-bottom:1px solid gray;padding-right:5px;">
        <tr><td class="titlebg"><span>基础设置</span>
            <span class="titleSpan">(工时费率设置)</span> 
            </td><td align="right">
            </td></tr>
         </table> 

      <table border="0" cellpadding="0" cellspacing="0" width="400px">
       <tr>
       <td  style="height:35px;">工段:</td>
       <td>
       <select name="ddlGongDuan" id="ddlGongDuan">
	<option value="机电">机电</option>
	<option value="保养">保养</option>
	<option value="钣金">钣金</option>
	<option value="美容">美容</option>
	<option value="喷漆">喷漆</option>
	<option value=""></option>

</select>
       </td>
       </tr>
        
       <tr>
       <td  style="height:35px;">工时费率:</td>
       <td><input name="txtGongShiFeiLv" type="text" value="100" maxlength="5" id="txtGongShiFeiLv" class="easyui-numberbox" data-options="min:0,max:99999,precision:0,required:true" style="width:200px;" /> </td>
       </tr>

        <tr>
        <td colspan="2"  style="height:35px;text-align:center;">
           <a onclick="return saveCheck(1);" id="btnSave" class="easyui-linkbutton" href="javascript:__doPostBack('btnSave','')">保存</a>
           
           
           
           <a onclick="return closeWin();" id="btnCancel" class="easyui-linkbutton" href="javascript:__doPostBack('btnCancel','')">取消</a>
         
        </td>
       </tr>


      </table>

      
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="6048EAB7" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCgLXjPmFAgLO78LgCwKrvurCCQKlg/HBBQL63pKXBgLRgoazCQLYxpWlBgLw1vETApy3uJIMApD0z+sFovTqjGMZY+A5a2RJQAVEhPTYqfU=" />
</div></form>

    <script language="javascript" type="text/javascript">
        //修改与新增验证
        var btnFlag = "0";
        function saveCheck(sort) {
            //禁止多次点击操作
            if (btnFlag != "0") { btnFlag = "0"; return false; } else { btnFlag = "1"; }
            var flag = true;
            if ($("#ddlGongDuan").val() == "") { alert("工段不能为空！"); flag = false; return false; }
            if ($("#txtGongShiFeiLv").val() == "") { alert("工时费率不能为空！"); flag = false; return false; }
           

             if (sort == 1) { __doPostBack('btnSave', ''); }
                 else { __doPostBack('btnMdf', ''); }
            
            return false;
        }

        //删除验证
        function delCheck(sort) {
            $.messager.confirm('费率删除', '你确定要删除此费率设置?', function (r) {
                if (r) {
                    __doPostBack('btnDel', '');
                }
            });
            return false;
        }


        function closeWin() {
            parWinClose();
            return false;
        }

    </script>
</body>
</html>