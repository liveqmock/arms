
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	仓库新增
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="storeOtherSetAdd.aspx?a=0&amp;d=Thu+Jan+08+2015+11%3a30%3a52+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMjU5MDkyNTQ0D2QWAgIDD2QWBGYPDxYCHgRUZXh0BSQ5Y2Q4ODc4NS04NzA1LTRhMGUtYTIyMC0xZmYyNThiZDBmOGNkZAIHDw8WAh4HVmlzaWJsZWhkZGSouKg2Ly7mSog/XuXCV4X7rlwAVg==" />
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


    <div  style="position:absolute;top:3px;left:50px"> 
        <table border="0" style="width:100%;border-bottom:1px solid gray;padding-right:5px;">
            <tr><td class="titlebg"><span>基础设置</span>
            <span class="titleSpan">(仓库新增与修改)</span> 
            </td><td align="right">
            </td></tr>
         </table> 
        
         <table border="0" > 
         <tr>
             <td align="right"><span class="requireSpan">*</span>当前机构:</td>
             <td>九江深业丰田汽车销售服务有限公司</td>
         </tr>    
         <tr style="display:none;">
            <td align="right"><span class="requireSpan">*</span>仓库编号:</td>
            <td>
            <input name="txtStoreThisId" type="text" value="9cd88785-8705-4a0e-a220-1ff258bd0f8c" maxlength="36" readonly="readonly" id="txtStoreThisId" style="width:250px;" />
            </td>
         </tr>

         <tr>
            <td align="right"><span class="requireSpan">*&nbsp;</span>仓库编号:</td>
            <td>
            <input name="txtStoreId" type="text" maxlength="7" id="txtStoreId" style="width:150px;" />
            </td>
         </tr>          
         
         <tr>
            <td align="right"><span class="requireSpan">*&nbsp;</span>仓库名称:</td>
            <td>
            <input name="txtStoreName" type="text" maxlength="10" id="txtStoreName" style="width:250px;" />
            </td>
         </tr>          
         <tr>
            <td align="right"><span class="requireSpan">*&nbsp;</span>仓库类别:</td>
            <td> 
             <select name="ddlStoreSort" id="ddlStoreSort">
	<option value="1">销售仓库</option>
	<option value="2">售后仓库</option>

</select>
            </td>
         </tr>  
         <tr>
            <td align="right"><span class="requireSpan">*&nbsp;</span>启用标志:</td>
            <td>
            <select name="ddlStopFlag" id="ddlStopFlag">
	<option value="0">启用</option>
	<option value="1">停用</option>

</select>
            </td>
         </tr>
        <tr>
            <td align="right">备注:</td>
            <td>
            <textarea name="txtRemarks" rows="2" cols="20" id="txtRemarks" style="height:60px;width:250px;"></textarea>
            </td>
         </tr>
         <tr>
            <td colspan="4" align="center">
             <a onclick="return saveCheck(1);" id="btnAdd" accesskey="S" class="easyui-linkbutton" href="javascript:__doPostBack('btnAdd','')">保存</a>
             
             <a onclick="return parWinClose();" id="btnCancel" class="easyui-linkbutton" href="javascript:__doPostBack('btnCancel','')">取消</a>                        
            </td>
         </tr>




         </table>
         
         
         </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="90C4E7AF" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCwKUgOacDAKd3droBgKp8vz+DgL5n9mWBALnzuXTCALmzuXTCAL+upvjCALhupvjCAKZvM/mBAKMk4HYDwKQ9M/rBXPF2HTWFzE7h/hxBIsBwdltUzuc" />
</div></form>


    <script language="javascript" type="text/javascript" >

        var btnFlag = "0";
        function saveCheck(sort) {
            var err = "";
            if (btnFlag == "0") { btnFlag = "1"; } else { return false; }
            if ($("#txtStoreId").val() == "") { err += "执行异常!\n"; }
            if ($("#txtStoreName").val() == "") { err += "仓库名称不能为空!\n"; }
            if ($("#txtRemarks").val().length > 50) { err += "备注长度过长!\n"; }


            if (err == "") {
                if (sort == "1") {
                    //保存
                    __doPostBack('btnAdd', '');
                } else {
                    //修改
                    __doPostBack('btnMdf', '');
                }

            } else {
                btnFlag = "0";
                alert(err);
                return false;
            }

            return false;
        }


        //删除前验证
        function delCheck() {
            $.messager.confirm('仓库删除', '您确定删除此条信息?', function (r) {
                if (r) {
                    __doPostBack('btnDel', '');
                }
            });
            return false;
        }
    </script>

</body>
</html>