<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="saleAfterDiscountUserDetail.aspx?userGuid=994a45e9-8e75-438b-8218-0e9274c2e529&amp;d=Mon+Jan+05+2015+16%3a07%3a33+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTEwODE3MDI5Ng9kFgICAw9kFgYCAQ8PFgIeBFRleHQFJDk5NGE0NWU5LThlNzUtNDM4Yi04MjE4LTBlOTI3NGMyZTUyOWRkAhEPDxYCHwAFBuS/ruaUuWRkAhMPDxYCHgdWaXNpYmxlZ2RkZA0kxNykhV9o2fgEqv9c1K8dmvfK" />
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


     <div  style="position:absolute;top:3px;left:5px">        
       <div>
        <table border="0" style="width:445px;border-bottom:1px solid #b8b8b8;"">
        <tr><td class="titlebg"><span>系统管理</span>(个人折扣设置)
         </td><td align="right">
           </td></tr>
         </table> 
      </div> 
       
       <table border="0" style="margin-left:100px;">
        <tr style="display:none;">
        <td align="right" height="30px">用户编号:</td>
        <td><input name="txtUserGuid" type="text" value="994a45e9-8e75-438b-8218-0e9274c2e529" id="txtUserGuid" disabled="disabled" style="width:250px;" /> </td>
        </tr>
        
        <tr>
        <td>工时折扣:</td>
        <td><input name="txtGongShiZheKou" type="text" value="0.80" id="txtGongShiZheKou" class="easyui-numberbox" data-options="min:0,max:1,precision:2,required:true" /> </td>
        </tr>
        
        <tr>
        <td>美容折扣:</td>
        <td><input name="txtMeiRongZheKou" type="text" value="1.00" id="txtMeiRongZheKou" class="easyui-numberbox" data-options="min:0,max:1,precision:2,required:true" /> </td>
        </tr>
        <tr>
        <td>机电折扣:</td>
        <td><input name="txtJiDianZheKou" type="text" value="1.00" id="txtJiDianZheKou" class="easyui-numberbox" data-options="min:0,max:1,precision:2,required:true" /> </td>
        </tr>
        <tr>
        <td>保养折扣:</td>
        <td><input name="txtBaoYangZheKou" type="text" value="1.00" id="txtBaoYangZheKou" class="easyui-numberbox" data-options="min:0,max:1,precision:2,required:true" /> </td>
        </tr>
        <tr>
        <td>钣金折扣:</td>
        <td><input name="txtBanJinZheKou" type="text" value="1.00" id="txtBanJinZheKou" class="easyui-numberbox" data-options="min:0,max:1,precision:2,required:true" /> </td>
        </tr>
        
        <tr>
        <td>喷漆折扣:</td>
        <td><input name="txtPenQiZheKou" type="text" value="1.00" id="txtPenQiZheKou" class="easyui-numberbox" data-options="min:0,max:1,precision:2,required:true" /> </td>
        </tr>
        <tr>
        <td>材料折扣:</td>
        <td><input name="txtCaiLiaoZheKou" type="text" value="1.00" id="txtCaiLiaoZheKou" class="easyui-numberbox" data-options="min:0,max:1,precision:2,required:true" /> </td>
        </tr>

        <tr>
        <td colspan="2">
         <a onclick="return saveCheck();" id="lnkSave" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSave','')">修改</a>
         <a id="lnkDel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkDel','')">删除</a>
         <a onclick="return parWinClose();" id="lnkClose" class="easyui-linkbutton" href="javascript:__doPostBack('lnkClose','')">关闭</a>
        </td>
        </tr>

        </table>

     
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="15D53B6E" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWDAKvmYDhDQKe7JDfCwLdqLXmCAKRn9SgDgKNq5jBDALdyLeNCALkhdapBwKpvaXhAgLZgpvVDAKj7e2BCALA2eOABwKi0aMNpRkmKM3viRw7w+ZyB/y5xE1Y0v0=" />
</div></form>
    
    <script language="javascript" type="text/javascript">

        function saveCheck() { 
            flag = $("#form1").form("validate");
            if (!flag) { 
                return false;
            } 
            return true;

         }

    
    </script>

</body>
</html>