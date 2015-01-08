
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<style>
    table
    {
        border-collapse: collapse;
    }
</style>
<script type="text/javascript">
    function openFeedBackMsg() {

        var href = "FeedBackMessage.aspx?d=" + new Date();
        var SizeZ = 'height=800,width=820,left=100,top=100,toolbar=no,resizable=yes,status=no,menubar=no,scrollbars=yes';


        try {
            if (!openStatus2.closed) {
                alert("信息反馈窗口 已在外部打开");
                openStatus2.focus();
                return false;
            }
            else {
                openStatus2 = window.open(href, '信息反馈', SizeZ);
            }
        }
        catch (Error) {
            openStatus2 = window.open(href, '信息反馈', SizeZ);
        }


    }
    function openWin(obj) {
        
        var SizeZ = 'height=900,width=900,left=100,top=100,toolbar=no,resizable=yes,status=no,menubar=no,scrollbars=yes';
        if ("预约" == obj) {
            var href = "../../saleAfterManage/saleAfter_yuYueMain.aspx?cusId=15055ad5-3292-4d6d-ba2e-ecc3c4694611&&saleAfterGuid=fd3fc187-5b4f-459e-9036-55f9eda0e0b7&&d=" + new Date();
            window.open(href, '预约', SizeZ);
        }
        if ("投诉" == obj) {
            var href = "../ComplaintManage/ComplaintAdd.aspx?cusId=15055ad5-3292-4d6d-ba2e-ecc3c4694611&&saleAfterGuid=fd3fc187-5b4f-459e-9036-55f9eda0e0b7&&d=" + new Date();
            window.open(href, '投诉', SizeZ);
        }
        

    }
</script>
<body>
    <form name="form1" method="post" action="ZhaoLanTianXie.aspx?Type=%u5b9a%u671f%u62db%u63fd&amp;vehicleId=15055ad5-3292-4d6d-ba2e-ecc3c4694611&amp;cusGuid=15055ad5-3292-4d6d-ba2e-ecc3c4694611&amp;&amp;saleAfterGuid=fd3fc187-5b4f-459e-9036-55f9eda0e0b7" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJOTY4Mjg5NDQ5D2QWAgIBD2QWCgIHDxBkZBYBZmQCCw8QDxYGHg5EYXRhVmFsdWVGaWVsZAUHTWVzc2FnZR4NRGF0YVRleHRGaWVsZAUHTWVzc2FnZR4LXyFEYXRhQm91bmRnZBAVAQ0tLeivt+mAieaLqS0tFQEAFCsDAWcWAWZkAhIPEGRkFgFmZAIWDxBkZBYBZmQCGA9kFgQCAw9kFgICAQ8QZGQWAWZkAgUPZBYCAgEPEGRkFgFmZGSd6H2jTEMprzimpCN77tAHkPlU2A==" />
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
        <table border="1" cellpadding="0" cellspacing="0" width="100%" style="font-size: 13px;
            margin-top: 5px;">
            <tbody>
                <tr>
                    <td nowrap style="width: 12%">
                        重要提示
                    </td>
                    <td colspan="5">
                        <textarea name="txtTiShi" rows="2" cols="20" id="txtTiShi" style="width: 89%; height: 35px;">建议更换空气格 清洗节气门 皮带 火花塞 氢氧除碳</textarea>
                        <input type="submit" name="btnTiShiSave" value="保 存" id="btnTiShiSave" style="background-color: #F9F8F5;
                            width: 7%;" />
                    </td>
                </tr>
                <tr>
                    <td nowrap style="width: 12%">
                        外拨号码
                    </td>
                    <td style="width: 21%">
                        <input name="txtLianXiNum" type="text" id="txtLianXiNum" style="width: 90%" />
                    </td>
                    <td style="width: 12%">
                        外拨结果
                    </td>
                    <td style="width: 21%">
                        <select name="ddlLastJieGuo" onchange="javascript:setTimeout('__doPostBack(\'ddlLastJieGuo\',\'\')', 0)" id="ddlLastJieGuo" style="width: 92%">
	<option selected="selected" value=""></option>
	<option value="成功">成功</option>
	<option value="拒接">拒接</option>
	<option value="关机">关机</option>
	<option value="欠费">欠费</option>
	<option value="错号">错号</option>
	<option value="空号">空号</option>
	<option value="无人接">无人接</option>
	<option value="对方忙">对方忙</option>
	<option value="秘书台">秘书台</option>
	<option value="暂停使用">暂停使用</option>
	<option value="不在服务区">不在服务区</option>
	<option value="其它">其它</option>

</select>
                    </td>
                    <td nowrap style="width: 12%">
                        <input type="submit" name="btnXinXiSave" value="反馈信息" onclick="return openFeedBackMsg();" id="btnXinXiSave" style="height: 25px; background-color: #F9F8F5;" />
                    </td>
                    <td style="width: 21%">
                        <select name="ddlLastXinXi" onchange="javascript:setTimeout('__doPostBack(\'ddlLastXinXi\',\'\')', 0)" id="ddlLastXinXi" style="width: 92%">
	<option selected="selected" value="">--请选择--</option>

</select>
                        
                    </td>
                </tr>
                <tr>
                    <td nowrap style="width: 12%">
                        &nbsp;招揽备注<br />
                        (投诉内容)
                    </td>
                    <td colspan="5">
                        <textarea name="txtZhaoLanRemark" rows="2" cols="20" id="txtZhaoLanRemark" style="width: 98%"></textarea>
                    </td>
                </tr>
                <tr>
                    <td nowrap style="width: 12%">
                        招揽状态
                    </td>
                    <td style="width: 21%">
                        <select name="ddlZhaoLanStatus" id="ddlZhaoLanStatus" style="width: 92%">
	<option selected="selected" value=""></option>
	<option value="未完成">未完成</option>
	<option value="已完成">已完成</option>
	<option value="关闭">关闭</option>

</select>
                    </td>
                    <td nowrap style="width: 12%">
                        是否预约
                    </td>
                    <td style="width: 21%">
                        <select name="ddlZhaoLanYuYue" id="ddlZhaoLanYuYue" onchange="openWin(this.value)" style="height:16px;">
	<option value=""></option>
	<option value="预约">预约</option>
	<option value="不预约">不预约</option>

</select>
                    </td>
                    <td nowrap style="width: 12%">
                        是否投诉
                    </td>
                    <td style="width: 21%">
                        <select name="ddlTouSu" onchange="openWin(this.value);setTimeout('__doPostBack(\'ddlTouSu\',\'\')', 0)" id="ddlTouSu" style="width: 92%">
	<option selected="selected" value=""></option>
	<option value="投诉">投诉</option>
	<option value="不投诉">不投诉</option>

</select>
                    </td>
                </tr>
                
                
                <tr>
                    <td align="right" colspan="6">
                        <input type="submit" name="btnSave" value="保 存" id="btnSave" style="height: 25px; background-color: #F9F8F5;" />&nbsp;&nbsp;
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="8C76DB07" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWIgKQgK6FAQLlibDBBAKSpN3EBgLnnKjiCALxh77KCwLxh77KCwLBtNGwBAKftam7BQK8yr2cBQLxxrnMDgLGwvK5BAKnpPG5BALgrd/bCgLlv72CCwKj1N2FAgKso8o7Ap+a9JIIArvKofgLAoLkyr0NAtOZ5WIC05nlYgLk/ovpAwLHyeH1DAKH3NCeCQLPiNCeCQKKhNa2DwLFp7SnBALZ+aS+CgLKm5bgBQLwmKVLAvCYpUsC26ri/wUC4La0rAsCnLe4kgzq3E0pT+E+7ULQx7lmbj+Dug8MAg==" />
</div></form>
</body>
</html>