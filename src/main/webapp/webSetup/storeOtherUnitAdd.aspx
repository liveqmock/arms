
<html>
<head><title>
	计量单位新增与修改
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="storeOtherUnitAdd.aspx?unitId=0&amp;d=Thu+Jan+08+2015+11%3a28%3a32+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE5NjYyOTk2NDUPZBYCAgMPZBYGZg8PFgIeBFRleHQFJDJjMzJiMjU3LTUxODEtNGJkMS1hNzZhLWM4YWRjZjBhZTg0YmRkAgUPDxYCHgdWaXNpYmxlaGRkAgYPDxYCHwFoZGRkdkHe5CvrtVIMKfjPVOA/ICoVu3A=" />
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
            <span class="titleSpan">(单位新增与修改)</span> 
            </td><td align="right">
            </td></tr>
         </table> 
       
         <table border="0" > 
         <tr>
             <td align="right"><span class="requireSpan">*&nbsp;</span>当前机构:</td>
             <td>九江深业丰田汽车销售服务有限公司</td>
         </tr>    
         <tr style="display:none;">
            <td align="right"><span class="requireSpan">*&nbsp;</span>单位编号:</td>
            <td>
            <input name="txtUnitId" type="text" value="2c32b257-5181-4bd1-a76a-c8adcf0ae84b" maxlength="36" readonly="readonly" id="txtUnitId" style="width:250px;" />
            </td>
         </tr>

         <tr>
            <td align="right"><span class="requireSpan">*&nbsp;</span>单位名称:</td>
            <td>
            <input name="txtUnitName" type="text" maxlength="3" id="txtUnitName" style="width:250px;" />
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

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="BAF1DBBE" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCALb3YOyCwKCmtGeAQK6lemnBQL+upvjCALhupvjCAKZvM/mBAKMk4HYDwKQ9M/rBRjcYumeJwGM//vG7MQjwqPDnmuT" />
</div></form>


    <script language="javascript" type="text/javascript" >
        
        var btnFlag = "0";
        function saveCheck(sort) {
            var err = "";
            if (btnFlag == "0") {btnFlag = "1";} else {return false;}
            if ($("#txtUnitId").val() == "") {    err +="执行异常!\n";    }
            if ($("#txtUnitName").val() == "") {    err +="单位名称不能为空!\n";}
            if ($("#txtRemarks").val().length >50 ) {    err +="备注长度过长!\n";}


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
            $.messager.confirm('单位删除', '您确定删除此条信息?', function (r) {
                if (r) {
                    __doPostBack('btnDel', '');
                }
            });
            return false;
            }
    </script>

</body>
</html>