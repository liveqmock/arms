
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	交车检查表
</title>
    <base target="_self" />
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=2dfbab1f71764dc182eb87e4e0aad2fc" type="text/javascript"></script><link href="../style/common.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<script language="javascript" type="text/javascript">
    $(function () {
        $(".linkbutton").linkbutton();
    });

    function CloseWindow() {


        // window.location= window.location;
        // window.open(window.location.href, "_self");
        window.opener = null;
        // window.open("", "_self");
        window.returnValue = undefined;
        window.close();
    }

    function TxtChange(obj) {
        var txtID = obj.id;
        var ddlID = txtID.replace("txt", "ddl");
        if (document.getElementById(txtID).value != "") {
            document.getElementById(ddlID).value = "完成";
        }
    }

    var myDate = new Date();
    function DDLChange(obj) {
        var ddlID = obj.id;
        var txtID = ddlID.replace("ddl", "txt");
        if (document.getElementById(ddlID).value == "") {
            document.getElementById(txtID).value = "";
        }
        else {
            document.getElementById(txtID).value = myDate.toLocaleDateString("yyyy年MM月dd日");
            //                document.getElementById(txtID).value = "2010-10-10";
        }
    }

    function InitTxtReadonly() {
        var Ctrls = document.getElementById("tbDetails").getElementsByTagName("input");
        for (var i = 0; i < Ctrls.length; i++) {
            if (Ctrls[i].type == "text") {
                Ctrls[i].readOnly = true;
            }
        }
    }

    function ShowPrint() {
        var OrderID = document.getElementById("hidOrderId").value;
        if (document.getElementById("hidJiaoCheID").value == "") {
            alert("请先保存!");
            return false;
        }
        window.open("../SaleOrder_Manage/print/saleOrderJiaoChePrint.aspx?OrderID=" + OrderID, "", "", "");

        return false;
    }
</script>
<style type="text/css">
    table
    {
        border-collapse: collapse;
        width: 100%;
    }
    td
    {
        border: 1px solid #000;
        white-space: nowrap;
    }
    .divDetailForm
    {
        width: 900px;
        margin: 30px;
    }
    .TdUpLeft
    {
        width: 11%;
        text-align: left;
        padding-left: 1%;
    }
    .TdUpRight
    {
        width: 22%;
        text-align: left;
    }
    .TdDown1
    {
        width: 11%;
        text-align: center;
        vertical-align: middle;
        white-space: pre-wrap;
    }
    .TdDown2
    {
        width: 19%;
        text-align: left;
        font-size: 9pt;
    }
    .TdDown3
    {
        width: 13%;
        text-align: center;
        vertical-align: middle;
    }
    .TdDown4
    {
        width: 6%;
        vertical-align: middle;
    }
    .TdDownVertical
    {
        width: 2%;
        border-bottom-color: White;
        border-top-color: White;
        border-top-width: 0px;
        border-bottom-width: 0px;
    }
    .divSmaller
    {
        font-size: 8pt;
        padding-left: 10px;
    }
    .txtCss
    {
        width: 98%;
        border-width: 0px;
    }
    .butToolbar
    {
        margin: 0 30px 0 30px;
        width: 900px;
    }
    .butToolbar div
    {
        width: 200px;
        float: right;
    }
</style>
<body>
    <form name="form1" method="post" action="OrderJiaoCheDetail.aspx?OrderID=bb48b67f-fabd-44b6-92ea-5e424a1c79b4" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNTc5MTMxNTc5D2QWAgIDD2QWEgIHDw8WAh4EVGV4dAUJ5pu557qi546yZGQCCQ8PFgIfAAUMWFNEMjAxNTAxMDUxZGQCCw8PFgIfAAURMjAxNS0xLTEwIDA6MDA6MDBkZAINDw8WAh8ABQsxNTE3OTIwODYyOGRkAg8PDxYCHwAFEUxGTUozNEFGOEUzMDQ3MzY1ZGQCEQ8PFgIfAAUHSDQyOTg4M2RkAhMPDxYCHwBlZGQCFw8PFgIfAAUG5YiY5YmRZGQCGQ9kFgICAQ9kFgwCAQ9kFggCAg9kFgICAQ8PZBYCHghvbmNoYW5nZQUPVHh0Q2hhbmdlKHRoaXMpZAIDD2QWAgIBDxAPZBYCHwEFD0RETENoYW5nZSh0aGlzKWRkZAIGD2QWAgIBDw9kFgIfAQUPVHh0Q2hhbmdlKHRoaXMpZAIHD2QWAgIBDxAPZBYCHwEFD0RETENoYW5nZSh0aGlzKWRkZAICD2QWCAICD2QWAgIBDw9kFgIfAQUPVHh0Q2hhbmdlKHRoaXMpZAIDD2QWAgIBDxAPZBYCHwEFD0RETENoYW5nZSh0aGlzKWRkZAIGD2QWAgIBDw9kFgIfAQUPVHh0Q2hhbmdlKHRoaXMpZAIHD2QWAgIBDxAPZBYCHwEFD0RETENoYW5nZSh0aGlzKWRkZAIDD2QWCAICD2QWAgIBDw9kFgIfAQUPVHh0Q2hhbmdlKHRoaXMpZAIDD2QWAgIBDxAPZBYCHwEFD0RETENoYW5nZSh0aGlzKWRkZAIGD2QWAgIBDw9kFgIfAQUPVHh0Q2hhbmdlKHRoaXMpZAIHD2QWAgIBDxAPZBYCHwEFD0RETENoYW5nZSh0aGlzKWRkZAIED2QWCAICD2QWAgIBDw9kFgIfAQUPVHh0Q2hhbmdlKHRoaXMpZAIDD2QWAgIBDxAPZBYCHwEFD0RETENoYW5nZSh0aGlzKWRkZAIGD2QWAgIBDw9kFgIfAQUPVHh0Q2hhbmdlKHRoaXMpZAIHD2QWAgIBDxAPZBYCHwEFD0RETENoYW5nZSh0aGlzKWRkZAIFD2QWCAICD2QWAgIBDw9kFgIfAQUPVHh0Q2hhbmdlKHRoaXMpZAIDD2QWAgIBDxAPZBYCHwEFD0RETENoYW5nZSh0aGlzKWRkZAIGD2QWAgIBDw9kFgIfAQUPVHh0Q2hhbmdlKHRoaXMpZAIHD2QWAgIBDxAPZBYCHwEFD0RETENoYW5nZSh0aGlzKWRkZAIGD2QWCAICD2QWAgIBDw9kFgIfAQUPVHh0Q2hhbmdlKHRoaXMpZAIDD2QWAgIBDxAPZBYCHwEFD0RETENoYW5nZSh0aGlzKWRkZAIGD2QWAgIBDw9kFgIfAQUPVHh0Q2hhbmdlKHRoaXMpZAIHD2QWAgIBDxAPZBYCHwEFD0RETENoYW5nZSh0aGlzKWRkZGTJZ8F6qBo6InGfYeo1vFwyoH2TVQ==" />
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


    <div class="divDetailForm">
        <div class="title">
            <table style="width: 100%; border-style: none;">
                <tr>
                    <td class="titlebg" style="border-style: none;">
                        <span class="titleSpan">交车登记</span>
                    </td>
                    <td style="text-align: right; border-style: none;">
                        <a id="lnkbtnSave" class="linkbutton" href="javascript:__doPostBack('lnkbtnSave','')">保 存</a>
                        <a onclick="return ShowPrint();" id="lnkbtnPrint" class="linkbutton" href="javascript:__doPostBack('lnkbtnPrint','')">打 印</a>
                        <a onclick="CloseWindow();" id="lnkbtnCancel" class="linkbutton" href="javascript:__doPostBack('lnkbtnCancel','')">取 消</a>
                    </td>
                </tr>
            </table>
        </div>
        <table class="tbDetailForm">
            <tr>
                <td class="TdUpLeft">
                    用户：
                </td>
                <td class="TdUpRight">
                    <input name="txtCustName" type="text" value="曹红玲" readonly="readonly" id="txtCustName" class="txtCss" />
                </td>
                <td class="TdUpLeft">
                    定单号：
                </td>
                <td class="TdUpRight">
                    <input name="txtOrderNum" type="text" value="XSD201501051" readonly="readonly" id="txtOrderNum" class="txtCss" />
                </td>
                <td class="TdUpLeft">
                    交车日期：
                </td>
                <td class="TdUpRight">
                    <input name="txtJiaoCheDate" type="text" value="2015-1-10 0:00:00" readonly="readonly" id="txtJiaoCheDate" class="txtCss" />
                </td>
            </tr>
            <tr>
                <td class="TdUpLeft">
                    电话：
                </td>
                <td class="TdUpRight">
                    <input name="txtJBrenMobile" type="text" value="15179208628" readonly="readonly" id="txtJBrenMobile" class="txtCss" />
                </td>
                <td class="TdUpLeft">
                    车架号：
                </td>
                <td class="TdUpRight">
                    <input name="txtCheJiaoHao" type="text" value="LFMJ34AF8E3047365" readonly="readonly" id="txtCheJiaoHao" class="txtCss" />
                </td>
                <td class="TdUpLeft">
                    发动机号：
                </td>
                <td class="TdUpRight">
                    <input name="txtCheFaDongJiHao" type="text" value="H429883" readonly="readonly" id="txtCheFaDongJiHao" class="txtCss" />
                </td>
            </tr>
            <tr>
                <td class="TdUpLeft">
                    付款方式：
                </td>
                <td class="TdUpRight">
                    <input name="txtFuKuanFangShi" type="text" readonly="readonly" id="txtFuKuanFangShi" class="txtCss" />
                </td>
                <td class="TdUpLeft">
                    补款数：
                </td>
                <td class="TdUpRight">
                    <input name="txtBuKuanShu" type="text" value="0.00" id="txtBuKuanShu" class="txtCss" />
                </td>
                <td class="TdUpLeft">
                    销售人员：
                </td>
                <td class="TdUpRight">
                    <input name="txtSalorName" type="text" value="刘剑" readonly="readonly" id="txtSalorName" class="txtCss" />
                </td>
            </tr>
        </table>
        <br />
        <div id="pnlDetails">
	
            <table id="tbDetails" class="tbDetailForm" bordercolor="#000000" border="1" style="border-collapse: collapse;" cellpadding="1" cellspacing="0">
		<tr style="font-size: 12pt; font-weight: bold; height: 25px; background-image: url('../../App_Themes/Default/images/EvenImage.png');">
			<td class="TdDown1">
                        项目
                    </td>
			<td class="TdDown2" style="text-align: center;">
                        内容
                    </td>
			<td class="TdDown3">
                        时间
                    </td>
			<td class="TdDown4">
                        完成
                    </td>
			<td class="TdDownVertical" rowspan="7" style="border-top-color: #FFFFFF; border-bottom-color: #FFFFFF;
                        background-color: White;">
                    </td>
			<td class="TdDown1">
                        项目
                    </td>
			<td class="TdDown2" style="text-align: center;">
                        内容
                    </td>
			<td class="TdDown3">
                        时间
                    </td>
			<td class="TdDown4">
                        完成
                    </td>
		</tr>
		<tr>
			<td class="TdDown1">
                        精品安装核对
                    </td>
			<td class="TdDown2">
                        附件详见（精品单）
                    </td>
			<td class="TdDown3">
                        <input name="txtJingPinHeDuiDate" type="text" value="2015-1-10 0:00:00" id="txtJingPinHeDuiDate" class="easyui-datebox" onchange="TxtChange(this)" style="width:100px;" />
                        
                    </td>
			<td class="TdDown4">
                        <select name="ddlJingPinHeDuiDate" id="ddlJingPinHeDuiDate" onchange="DDLChange(this)">
				<option value=""></option>
				<option selected="selected" value="完成">完成</option>
				<option value="未完成">未完成</option>

			</select>
                    </td>
			<td class="TdDown1">
                        全面解释并示范正确的使用方式
                    </td>
			<td class="TdDown2">
                        ○请参阅用户手册<br />
                        ○特别说明使用前的注意事项<br />
                        ○示范操作<br />
                        ○日常维护保养内容
                    </td>
			<td class="TdDown3">
                        <input name="txtShiYongShiFangDate" type="text" value="2015-1-10 0:00:00" id="txtShiYongShiFangDate" class="easyui-datebox" onchange="TxtChange(this)" style="width:100px;" />
                    </td>
			<td class="TdDown4">
                        <select name="ddlShiYongShiFangDate" id="ddlShiYongShiFangDate" onchange="DDLChange(this)">
				<option value=""></option>
				<option selected="selected" value="完成">完成</option>
				<option value="未完成">未完成</option>

			</select>
                    </td>
		</tr>
		<tr class="alternatingRowStyle">
			<td class="TdDown1">
                        文件手续交付及与车辆核对
                    </td>
			<td class="TdDown2">
                        ○保修手册<br />
                        ○驾驶员手册<br />
                        ○上牌手续<br />
                        ○保险手续及发票<br />
                        <div class="divSmaller">
                            商业险正本、保险卡、发票<br />
                            交强险正本、标志、发票<br />
                            保险条款</div>
                    </td>
			<td class="TdDown3">
                        <input name="txtShouXuJiaoFuDate" type="text" value="2015-1-10 0:00:00" id="txtShouXuJiaoFuDate" class="easyui-datebox" onchange="TxtChange(this)" style="width:100px;" />
                    </td>
			<td class="TdDown4">
                        <select name="ddlShouXuJiaoFuDate" id="ddlShouXuJiaoFuDate" onchange="DDLChange(this)">
				<option value=""></option>
				<option selected="selected" value="完成">完成</option>
				<option value="未完成">未完成</option>

			</select>
                    </td>
			<td class="TdDown1">
                        解释保修政策及保养方法
                    </td>
			<td class="TdDown2">
                        ○保修期限及定期保养<br />
                        ○保修目录<br />
                        ○特殊保修<br />
                        ○保修除外项目<br />
                        ○用户需注意的条款<br />
                        ○交付首保提示卡
                    </td>
			<td class="TdDown3">
                        <input name="txtBaoXiuJieShiDate" type="text" value="2015-1-10 0:00:00" id="txtBaoXiuJieShiDate" class="easyui-datebox" onchange="TxtChange(this)" style="width:100px;" />
                    </td>
			<td class="TdDown4">
                        <select name="ddlBaoXiuJieShiDate" id="ddlBaoXiuJieShiDate" onchange="DDLChange(this)">
				<option value=""></option>
				<option selected="selected" value="完成">完成</option>
				<option value="未完成">未完成</option>

			</select>
                    </td>
		</tr>
		<tr>
			<td class="TdDown1">
                        牌证手续交付车主
                    </td>
			<td class="TdDown2">
                        ○临牌/牌照<br />
                        ○附加税收据<br />
                        ○附加税完税证明<br />
                        ○养路费及车船税购缴提示卡
                    </td>
			<td class="TdDown3">
                        <input name="txtPaiZhengJiaoFuDate" type="text" value="2015-1-10 0:00:00" id="txtPaiZhengJiaoFuDate" class="easyui-datebox" onchange="TxtChange(this)" style="width:100px;" />
                    </td>
			<td class="TdDown4">
                        <select name="ddlPaiZhengJiaoFuDate" id="ddlPaiZhengJiaoFuDate" onchange="DDLChange(this)">
				<option value=""></option>
				<option selected="selected" value="完成">完成</option>
				<option value="未完成">未完成</option>

			</select>
                    </td>
			<td class="TdDown1">
                        介绍维修体系
                    </td>
			<td class="TdDown2">
                        ○维修体系<br />
                        ○介绍本店服务特色<br />
                        ○介绍救援服务<br />
                        ○紧急维修的处理
                    </td>
			<td class="TdDown3">
                        <input name="txtJieShaoWeiXiuDate" type="text" value="2015-1-10 0:00:00" id="txtJieShaoWeiXiuDate" class="easyui-datebox" onchange="TxtChange(this)" style="width:100px;" />
                    </td>
			<td class="TdDown4">
                        <select name="ddlJieShaoWeiXiuDate" id="ddlJieShaoWeiXiuDate" onchange="DDLChange(this)">
				<option value=""></option>
				<option selected="selected" value="完成">完成</option>
				<option value="未完成">未完成</option>

			</select>
                    </td>
		</tr>
		<tr class="alternatingRowStyle">
			<td class="TdDown1">
                        对已完成车辆进行检查
                    </td>
			<td class="TdDown2">
                        ○运行状态<br />
                        ○车辆状态<br />
                        ○清洁<br />
                        <div class="divSmaller">
                            外观清洁、内饰清洁<br />
                            轮胎及底盘清洁
                        </div>
                    </td>
			<td class="TdDown3">
                        <input name="txtCheLiangWanJianDate" type="text" value="2015-1-10 0:00:00" id="txtCheLiangWanJianDate" class="easyui-datebox" onchange="TxtChange(this)" style="width:100px;" />

                    </td>
			<td class="TdDown4">
                        <select name="ddlCheLiangWanJianDate" id="ddlCheLiangWanJianDate" onchange="DDLChange(this)">
				<option value=""></option>
				<option selected="selected" value="完成">完成</option>
				<option value="未完成">未完成</option>

			</select>
                    </td>
			<td class="TdDown1">
                        会员服务
                    </td>
			<td class="TdDown2">
                        ○申办会员卡<br />
                        ○介绍深业阳光车友会<br />
                        ○开通车主网站<br />
                        ○介绍车主网站
                    </td>
			<td class="TdDown3">
                        <input name="txtHuiYuanFuWuDate" type="text" value="2015-1-10 0:00:00" id="txtHuiYuanFuWuDate" class="easyui-datebox" onchange="TxtChange(this)" style="width:100px;" />
                    </td>
			<td class="TdDown4">
                        <select name="ddlHuiYuanFuWuDate" id="ddlHuiYuanFuWuDate" onchange="DDLChange(this)">
				<option value=""></option>
				<option selected="selected" value="完成">完成</option>
				<option value="未完成">未完成</option>

			</select>
                    </td>
		</tr>
		<tr>
			<td class="TdDown1">
                        余款结算
                    </td>
			<td class="TdDown2">
                        安排余款结算
                    </td>
			<td class="TdDown3">
                        <input name="txtYuKuanJieSuanDate" type="text" value="2015-1-10 0:00:00" id="txtYuKuanJieSuanDate" class="easyui-datebox" onchange="TxtChange(this)" style="width:100px;" />
                    </td>
			<td class="TdDown4">
                        <select name="ddlYuKuanJieSuanDate" id="ddlYuKuanJieSuanDate" onchange="DDLChange(this)">
				<option value=""></option>
				<option selected="selected" value="完成">完成</option>
				<option value="未完成">未完成</option>

			</select>
                    </td>
			<td class="TdDown1">
                        交车仪式
                    </td>
			<td class="TdDown2">
                        ○进行交车仪式
                        <br />
                        ○打印交车照片<br />
                        &nbsp;○介绍维修服务顾问
                    </td>
			<td class="TdDown3">
                        <input name="txtJiaoCheYiShiDate" type="text" value="2015-1-10 0:00:00" id="txtJiaoCheYiShiDate" class="easyui-datebox" onchange="TxtChange(this)" style="width:100px;" />
                    </td>
			<td class="TdDown4">
                        <select name="ddlJiaoCheYiShiDate" id="ddlJiaoCheYiShiDate" onchange="DDLChange(this)">
				<option value=""></option>
				<option selected="selected" value="完成">完成</option>
				<option value="未完成">未完成</option>

			</select>
                    </td>
		</tr>
		<tr class="alternatingRowStyle">
			<td class="TdDown1">
                        带领看验车辆设备及用品
                    </td>
			<td class="TdDown2">
                        ○文件、手续<br />
                        ○核对车辆（底盘号、发动机号、用品）外观<br />
                        ○内部功能 行李箱 备胎及随车物品
                    </td>
			<td class="TdDown3">
                        <input name="txtKanYangCheLianDate" type="text" value="2015-1-10 0:00:00" id="txtKanYangCheLianDate" class="easyui-datebox" onchange="TxtChange(this)" style="width:100px;" />
                    </td>
			<td class="TdDown4">
                        <select name="ddlKanYangCheLianDate" id="ddlKanYangCheLianDate" onchange="DDLChange(this)">
				<option value=""></option>
				<option selected="selected" value="完成">完成</option>
				<option value="未完成">未完成</option>

			</select>
                    </td>
			<td class="TdDown1">
                        介绍保险服务
                    </td>
			<td class="TdDown2">
                        ○保险的有效范围
                        <br />
                        ○保险免责条款
                        <br />
                        ○保险的理赔程序
                    </td>
			<td class="TdDown3">
                        <input name="txtBaoXianJieShao" type="text" value="2015-1-10 0:00:00" id="txtBaoXianJieShao" class="easyui-datebox" onchange="TxtChange(this)" style="width:100px;" />
                    </td>
			<td class="TdDown4">
                        <select name="ddlBaoXianJieShao" id="ddlBaoXianJieShao" onchange="DDLChange(this)">
				<option value=""></option>
				<option selected="selected" value="完成">完成</option>
				<option value="未完成">未完成</option>

			</select>
                    </td>
		</tr>
	</table>
	
        
</div>
        <input name="hidJiaoCheID" type="hidden" id="hidJiaoCheID" value="19e97b17-8145-4d72-aea8-4f4cbc1fed16" />
        <input name="hidOrderId" type="hidden" id="hidOrderId" value="bb48b67f-fabd-44b6-92ea-5e424a1c79b4" />
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CF2DFD0E" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWPwL0n6PnDQKpzvGoAgLi8uKoBgKDuN3pBALxmfnCDQK6u6uHCwK/kvPJBwL8u5DkBgKJ6sr3DgKUxYjhDQL27ublAgLOl/uUBQLVscCxBwLziMO1CQLm/omcCALCnuLiBgKm67j3DQLp98uZDgKs/O6tAQKInIXTDwLs6d/GBAKonLKUAQLi1vq5AwLGtpHHDQKiw8vSBgKenYnVDwL0nZiBDwLQ/fP/AQK0iKnqCgLjloXyCwLV5PnoCgLxhJKWBAKV8ciDDwKG86yzBwLE7+XCDgLgj448AoT61KkLArv0zpAHAv2W9PUNAtn2n4sDAr2DxZ4IApfyoroEAv2+v4UIAtne1PsGAr2rju4NAo7Gho0CAsLHsLECAuan288MAoLSgdoHAt/Wh6oKAuOqhqECAsfK7d8MAqO/t8oHAu6F9f0IAsHYv6sJAuW41NUHAoHNjsAMArK1ou4JAoCWwMwFAqT2q7ILAsCD8ScC0pyKmQ4C+arV1wbURAPZ1QxiQstgAC60GfXs2CO3aw==" />
</div></form>
</body>
</html>