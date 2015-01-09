<html>
<head><title>
	意向客户登记
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<link href="../style/common.css?v=20130321" rel="stylesheet" type="text/css" />
<script src="../js/common.js" type="text/javascript"></script>
<style type="text/css">
    a
    {
        display: none;
    }
</style>
<body>
    <form name="form1" method="post" action="IntentionCustomer_Add.aspx?Id=0&amp;d=Fri+Jan+09+2015+08%3a40%3a38+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MTk5NDM1OTgPZBYCAgMPZBYMAhMPEA8WBh4NRGF0YVRleHRGaWVsZAUTQ2FyTW9kbGVfQ2hhbmdTaGFuZx4ORGF0YVZhbHVlRmllbGQFE0Nhck1vZGxlX0NoYW5nU2hhbmceC18hRGF0YUJvdW5kZ2QQFQYAEuS4sOeUsO+8iOi/m+WPo++8iQzov5vlj6PkuLDnlLAM5pel5pys5Liw55SwDOWbm+W3neS4sOeUsAzkuIDmsb3kuLDnlLAVBgAS5Liw55Sw77yI6L+b5Y+j77yJDOi/m+WPo+S4sOeUsAzml6XmnKzkuLDnlLAM5Zub5bed5Liw55SwDOS4gOaxveS4sOeUsBQrAwZnZ2dnZ2cWAWZkAhUPEGRkFgBkAhcPEGRkFgBkAh0PEA8WBh8BBQF2HwAFAXYfAmdkEBUNBue0q+iJsgbmo5XoibIG55m96ImyBumTtuiJsgbpu5HoibIG57qi6ImyBuiTneiJsgbnu7/oibIM54+N54+g55m96ImyBuapmeiJsgbngbDoibIJ6ZOC6Z2S6ZOcABUNBue0q+iJsgbmo5XoibIG55m96ImyBumTtuiJsgbpu5HoibIG57qi6ImyBuiTneiJsgbnu7/oibIM54+N54+g55m96ImyBuapmeiJsgbngbDoibIJ6ZOC6Z2S6ZOcABQrAw1nZ2dnZ2dnZ2dnZ2dnZGQCJw8PFgIeBFRleHQFCeW8oOWwj+W5s2RkAi8PDxYCHgdWaXNpYmxlZ2RkGAEFHl9fQ29udHJvbHNSZXF1aXJlUG9zdEJhY2tLZXlfXxYHBQ1wYXlDaGVja0JveCQwBQ1wYXlDaGVja0JveCQxBQ1wYXlDaGVja0JveCQyBQ1wYXlDaGVja0JveCQzBQ1wYXlDaGVja0JveCQzBRJjaGtTaG91S3VhbkNvbmZpcm0FEWNoa1R1aUt1YW5Db25maXJtY8zUK5B6XVDu2OBn6koR119EsAc=" />
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


    <div style="position: absolute; top: 30px; left: 20px">
        <table border="0" cellpadding="3" cellspacing="0">
            <tr>
                <td align="right">
                    <span class="requireSpan">*&nbsp;</span>意向人名:
                </td>
                <td colspan="1">
                    <input name="txtCustName" type="text" maxlength="10" id="txtCustName" class="easyui-validatebox" data-options="required:true" style="width:100%;" />
                </td>
                <td align="right">
                    <span class="requireSpan">*&nbsp;</span>证件号码:
                </td>
                <td colspan="3">
                    <input name="certificate" type="text" maxlength="20" id="certificate" class="easyui-validatebox" data-options="required:true" style="width:98%;" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    <span class="requireSpan">&nbsp;</span>地址:
                </td>
                <td colspan="3">
                    <input name="txtAdress" type="text" maxlength="50" id="txtAdress" class="easyui-validatebox" style="width:100%;" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    <span class="requireSpan">&nbsp;</span>邮编:
                </td>
                <td>
                    <input name="postCode" type="text" maxlength="10" id="postCode" class="easyui-validatebox" />
                </td>
                <td align="right">
                    <span class="requireSpan">&nbsp;</span>传真:
                </td>
                <td>
                    <input name="fax" type="text" maxlength="15" id="fax" class="easyui-validatebox" />
                </td>
                <td align="right">
                    <span class="requireSpan">*&nbsp;</span>移动电话:
                </td>
                <td>
                    <input name="mobileNum" type="text" maxlength="15" id="mobileNum" class="easyui-numberbox" data-options="required:true" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    <span class="requireSpan">&nbsp;</span>联系人:
                </td>
                <td>
                    <input name="Contacts" type="text" maxlength="10" id="Contacts" class="easyui-validatebox" />
                </td>
                <td align="right">
                    <span class="requireSpan">&nbsp;</span>固定电话:
                </td>
                <td>
                    <input name="telNum" type="text" maxlength="15" id="telNum" class="easyui-numberbox" />
                </td>
                <td align="right">
                    <span class="requireSpan">*&nbsp;</span>诚意金额:
                </td>
                <td>
                    <input name="amount" type="text" value="0.00" maxlength="10" id="amount" class="easyui-numberbox" data-options="precision:2,required:true" />
                </td>
            </tr>
            <tr>
                 <td align="right">
                    <span class="requireSpan">*&nbsp;</span>车辆厂商:
                </td>
                <td>
                    <select name="carVendor" onchange="javascript:setTimeout('__doPostBack(\'carVendor\',\'\')', 0)" id="carVendor" style="width:140px;">
	<option selected="selected" value=""></option>
	<option value="丰田（进口）">丰田（进口）</option>
	<option value="进口丰田">进口丰田</option>
	<option value="日本丰田">日本丰田</option>
	<option value="四川丰田">四川丰田</option>
	<option value="一汽丰田">一汽丰田</option>

</select>
                </td>
                <td align="right">
                    <span class="requireSpan">*&nbsp;</span>意向车系:
                </td>
                <td>
                    <select name="chexi" onchange="javascript:setTimeout('__doPostBack(\'chexi\',\'\')', 0)" id="chexi" style="width:140px;">

</select>
                </td>
                <td align="right">
                    <span class="requireSpan">*&nbsp;</span>意向车型:
                </td>
                <td>
                    <select name="carModle" onchange="javascript:setTimeout('__doPostBack(\'carModle\',\'\')', 0)" id="carModle" style="width:140px;">

</select>
                </td>
           
            </tr>
            <tr>
                <td align="right">
                    <span class="requireSpan">*&nbsp;</span>车型代码:
                </td>
                <td>
                    <select name="carCode" id="carCode" style="width:140px;">

</select>
                </td>
                <td align="right">
                    <span class="requireSpan">*&nbsp;</span>车辆SFX:
                </td>
                <td>
                    <input name="carSFX" type="text" maxlength="4" id="carSFX" class="easyui-validatebox" data-options="required:true" />
                </td>
                <td align="right">
                    <span class="requireSpan">*&nbsp;</span>车身颜色:
                </td>
                <td>
                    <select name="carColor" id="carColor" class="easyui-combobox" style="width:140px;">
	<option value="紫色">紫色</option>
	<option value="棕色">棕色</option>
	<option value="白色">白色</option>
	<option value="银色">银色</option>
	<option value="黑色">黑色</option>
	<option value="红色">红色</option>
	<option value="蓝色">蓝色</option>
	<option value="绿色">绿色</option>
	<option value="珍珠白色">珍珠白色</option>
	<option value="橙色">橙色</option>
	<option value="灰色">灰色</option>
	<option value="铂青铜">铂青铜</option>
	<option selected="selected" value=""></option>

</select>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <span class="requireSpan">&nbsp;</span>需求备注:
                </td>
                <td colspan="3">
                    <input name="demandRemark" type="text" maxlength="100" id="demandRemark" class="easyui-validatebox" style="width:100%;" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    付款方式:
                </td>
                <td colspan="5">
                    <table id="payCheckBox" border="0" style="width:520px;">
	<tr>
		<td><input id="payCheckBox_0" type="checkbox" name="payCheckBox$0" /><label for="payCheckBox_0">现金</label></td><td><input id="payCheckBox_1" type="checkbox" name="payCheckBox$1" /><label for="payCheckBox_1">刷卡</label></td><td><input id="payCheckBox_2" type="checkbox" name="payCheckBox$2" /><label for="payCheckBox_2">支票</label></td><td><input id="payCheckBox_3" type="checkbox" name="payCheckBox$3" /><label for="payCheckBox_3">转账</label></td>
	</tr>
</table>
                </td>
                <td style=" display:none;">
                <input name="txtCheckBox" type="text" id="txtCheckBox" class="easyui-validatebox" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    备&nbsp; 注:
                </td>
                <td colspan="5" class="tdLong">
                    <textarea name="txtRemark" rows="2" cols="20" id="txtRemark" class="cssTxtLong" style="width:100%;"></textarea>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <span class="requireSpan">*&nbsp;</span>销售顾问:
                </td>
                <td>
                    <input name="salor" type="text" value="张小平" maxlength="10" id="salor" disabled="disabled" class="easyui-validatebox" data-options="required:true" style="height:25px;" />
                </td>
                <td align="right">
                    <span class="requireSpan">*&nbsp;</span>状态:
                </td>
                <td>
                    <select name="status" id="status" class="easyui-combobox" style="width:140px;">

	<option value="0">有效</option>
	<option value="1">完成</option>
	<option value="2">终止</option>

</select>
                </td>
                <td align="right">
                    <span class="requireSpan">*&nbsp;</span>日期:
                </td>
                <td>
                    <input name="date" type="text" id="date" class="easyui-datebox" data-options="required:true" />
                </td>
            </tr>
            <tr>
            <td colspan="6">
              <table id="tbCaiWu" class="tbDetailForm" bordercolor="#000000" border="1" cellpadding="2" cellspacing="0" style="border-collapse:collapse; width:100%; display:none;">
	<tr>
		<td class="tdLeft">收款确认</td>
		<td class="tdRight" style="text-align:center;">
                    <input name="chkShouKuanConfirm" type="checkbox" id="chkShouKuanConfirm" onclick="ShouKuanConfirm()" />
                </td>
		<td class="tdLeft">收款金额</td>
		<td class="tdRight">
                    <input name="txtShouKuanJingE" type="text" value="0" id="txtShouKuanJingE" class="cssTxt" />
                </td>
		<td class="tdLeft">财务人员</td>
		<td class="tdRight">
                    <input name="txtShouKuanRen" type="text" id="txtShouKuanRen" readonly="readonly" class="cssTxt" style="background-color:Silver;" />
                </td>
	</tr>
	<tr>
		<td class="tdLeft">退款确认</td>
		<td class="tdRight" style="text-align:center;">
                    <input name="chkTuiKuanConfirm" type="checkbox" id="chkTuiKuanConfirm" onclick="TuiKuanConfirm()" />
                </td>
		<td class="tdLeft">退款日期</td>
		<td class="tdRight">
                    <input name="txtTuiKuanDate" type="text" id="txtTuiKuanDate" class="cssTxt" />
                </td>
		<td class="tdLeft">财务人员</td>
		<td class="tdRight">
                    <input name="txtTuiKuanRen" type="text" id="txtTuiKuanRen" readonly="readonly" class="cssTxt" style="background-color:Silver;" />
                </td>
	</tr>
</table>

        </td>
        </tr>
            <tr>
                <td colspan="6" align="center">
                    <!--按钮区域 start-->
                    <a onclick="return saveCheck();" id="btnSave" class="easyui-linkbutton" href="javascript:__doPostBack('btnSave','')">保存</a>
                    
                    
                    <!--按钮区域 end-->
                </td>
            </tr>
        </table>
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="314B1712" />
</div></form>
         <script language="javascript" type="text/javascript">
             function saveCheck() {

                 var flag = true;
                 flag = $("#form1").form("validate");
                 if (!flag) {
                     return false;
                 } else {
                     __doPostBack('btnSave', '');
                 }
                 return false;

             }
             function mdfCheck() {
                 var flag = true;
                 flag = $("#form1").form("validate");
                 if (!flag) {
                     return false;
                 } else {
                     __doPostBack('btnMdf', '');
                 }
                 return false;
             } 
         </script>
</body>
</html>