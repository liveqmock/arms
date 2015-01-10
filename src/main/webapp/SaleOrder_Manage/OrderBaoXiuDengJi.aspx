
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>
	保修登记表
</title>
    <base target="_self" />
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=2dfbab1f71764dc182eb87e4e0aad2fc" type="text/javascript"></script><link href="../style/common.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<style type="text/css">
    html, body
    {
        overflow: hidden;
    }
    .Td1
    {
        width: 14%;
        text-align: center;
    }
    .Td2
    {
        width: 44%;
        text-align: left;
    }
    .Td3
    {
        width: 28%;
        text-align: left;
    }
    .TxtCss
    {
        width: 90%;
        background-color: Silver;
    }
    .TxtShort
    {
        width: 70%;
        background-color: Silver;
    }
    .QTxtCss
    {
        border-width: 0px;
        width: 30px;
        border-bottom: #c8c8c8 1px solid;
    }
</style>
<script language="javascript" type="text/javascript">
    $(function () {
        $(".linkbutton").linkbutton();
        $("#lnkbtnSave").click(function () {
            var carnumber = $("#txtCarChePaiHao").val();
            if (carnumber != "" && !checkCarNumber(carnumber)) {
                alert("请输入正确的车牌号码,例如:粤B12345");
                return false;
            }
        });
    });

    $(document).ready(function () {
        document.getElementById("txtCarPaiZaoDate").enable = false;
    });
        
</script>
<body>
    <form name="form1" method="post" action="OrderBaoXiuDengJi.aspx?OrderID=bb48b67f-fabd-44b6-92ea-5e424a1c79b4" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTI2MjU2OTYyNQ9kFgICAw9kFi4CBA8PFgIeBFRleHQFCeabuee6oueOsmRkAgYPDxYCHwAFDTIuNUznsr7oi7HniYhkZAIHDw8WAh8ABQPlpbNkZAIIDw8WAh8ABQzkuKrkurrotK3ovaZkZAIJDw8WAh8ABRFMRk1KMzRBRjhFMzA0NzM2NWRkAgoPDxYCHwBlZGQCCw8PFgIfAGVkZAIMDw8WAh8AZWRkAg0PDxYCHwBlZGQCDg8PFgIfAAUq55Ge5piM5biC56CB5aS06ZWH55+z5rK55YyW5bel5YWs5Y+45LmZ5Yy6ZGQCDw8PFgIfAAUHSDQyOTg4M2RkAhAPDxYCHwBlZGQCEQ8PFgIfAAUJ6ZOC6Z2S6ZOcZGQCEg8PFgIfAAULMTUxNzkyMDg2MjhkZAITDw8WAh8AZWRkAhQPDxYCHwAFF+abuee6oueOsijmvZjoi7HpvpnovawpZGQCFg8PFgIfAAUq55Ge5piM5biC56CB5aS06ZWH55+z5rK55YyW5bel5YWs5Y+45LmZ5Yy6ZGQCGQ8PFgIfAGVkZAIbDw8WAh8ABQsxNTE3OTIwODYyOGRkAhwPDxYCHwAFCjIwMTUtMDQtMTBkZAIdDw8WAh8ABRAyMDE1LTEtOSAwOjAwOjAwZGQCHw8PFgIfAAUD5pegZGQCIA8PFgIfAAUFOTDlpKkWAh4Fc3R5bGUFCkNvbG9yOlJlZDtkGAEFHl9fQ29udHJvbHNSZXF1aXJlUG9zdEJhY2tLZXlfXxYCBRJpbWdidG5CYW9YaXVEZW5nSmkFEmNoa0hhc0Jhb1hpdVNob3VDZbYfNYYGd/wcZsMdUUL8R8NiZOY5" />
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


    <div id="main_div">
        <div class="title">
            <table style="width: 100%;">
                <tr>
                    <td class="titlebg">
                        <span class="titleSpan">保 修 登 记 表</span>
                    </td>
                    <td>
                        <a id="lnkbtnSave" class="linkbutton" href="javascript:__doPostBack('lnkbtnSave','')">保存</a>
                        <a onclick="return TestClientForm();" id="LinkButton3" class="linkbutton" href="javascript:__doPostBack('LinkButton3','')">打印</a>
                        <a onclick="return false;" id="LinkButton4" class="linkbutton" href="javascript:__doPostBack('LinkButton4','')">跟踪登记</a>
                        <a onclick="CloseWindow();" id="btnCancel" class="linkbutton" href="javascript:__doPostBack('btnCancel','')">取消</a>
                    </td>
                </tr>
            </table>
        </div>
        <div style="padding: 10px; overflow: hidden;">
            <div id="center-main" style="border: 1px solid #e0ecff; overflow: hidden">
                <table class="tbDetailForm" align="center">
                    <tbody align="center">
                        <tr>
                            <td class="Td1" nowrap="nowrap">
                                客户名称
                            </td>
                            <td class="Td2">
                                <input name="txtCustName" type="text" value="曹红玲" readonly="readonly" id="txtCustName" style="background-color:Silver;width:85%;" />
                                <input type="image" name="imgbtnBaoXiuDengJi" id="imgbtnBaoXiuDengJi" src="../App_Themes/Default/icons/search.png" onclick="return ShowOrder_Query();" style="border-width:0px;height: 16px" />
                            </td>
                            <td class="Td1">
                                车辆型号
                            </td>
                            <td class="Td3">
                                <input name="txtCheLiangXingHao" type="text" value="2.5L精英版" readonly="readonly" id="txtCheLiangXingHao" class="TxtCss" />
                            </td>
                        </tr>
                        <tr>
                            <td class="Td1">
                                车主属性
                            </td>
                            <td class="Td2">
                                <table style="width: 96%;">
                                    <tr>
                                        <td style="width: 40%;">
                                            <input name="txtCustSex" type="text" value="女" readonly="readonly" id="txtCustSex" class="TxtCss" />
                                        </td>
                                        <td style="width: 10%;">
                                        </td>
                                        <td style="width: 50%;">
                                            <input name="txtCustSort" type="text" value="个人购车" readonly="readonly" id="txtCustSort" class="TxtCss" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td class="Td1">
                                车驾编号
                            </td>
                            <td class="Td3">
                                <input name="txtCheJiaHao" type="text" value="LFMJ34AF8E3047365" readonly="readonly" id="txtCheJiaHao" class="TxtCss" />
                            </td>
                        </tr>
                        <tr>
                            <td class="Td1">
                                地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 区
                            </td>
                            <td class="Td2">
                                <table style="width: 96%;">
                                    <tr>
                                        <td>
                                            <input name="txtCustProvince" type="text" readonly="readonly" id="txtCustProvince" class="TxtShort" />省
                                        </td>
                                        <td>
                                            <input name="txtCustCity" type="text" readonly="readonly" id="txtCustCity" class="TxtShort" />市
                                        </td>
                                        <td>
                                            <input name="txtCustDistrict" type="text" readonly="readonly" id="txtCustDistrict" class="TxtShort" />区
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td class="Td1">
                                变速箱号
                            </td>
                            <td class="Td3">
                                <input name="txtBianSuXianHao" type="text" readonly="readonly" id="txtBianSuXianHao" class="TxtCss" />
                            </td>
                        </tr>
                        <tr>
                            <td class="Td1">
                                详细地址
                            </td>
                            <td class="Td2">
                                <input name="txtCustAddress" type="text" value="瑞昌市码头镇石油化工公司乙区" readonly="readonly" id="txtCustAddress" class="TxtCss" />
                            </td>
                            <td class="Td1">
                                发动机号
                            </td>
                            <td class="Td3">
                                <input name="txtFaDongJiHao" type="text" value="H429883" readonly="readonly" id="txtFaDongJiHao" class="TxtCss" />
                            </td>
                        </tr>
                        <tr>
                            <td class="Td1">
                                邮政编码
                            </td>
                            <td class="Td2">
                                <input name="txtCustYouBian" type="text" readonly="readonly" id="txtCustYouBian" class="TxtCss" />
                            </td>
                            <td class="Td1">
                                车身颜色
                            </td>
                            <td class="Td3">
                                <input name="txtCarColor" type="text" value="铂青铜" readonly="readonly" id="txtCarColor" class="TxtCss" />
                            </td>
                        </tr>
                        <tr>
                            <td class="Td1">
                                联系电话
                            </td>
                            <td class="Td2">
                                <input name="txtCustMobile" type="text" value="15179208628" readonly="readonly" id="txtCustMobile" class="TxtCss" />
                            </td>
                            <td class="Td1">
                                内饰颜色
                            </td>
                            <td class="Td3">
                                <input name="txtCarNeiShi" type="text" readonly="readonly" id="txtCarNeiShi" class="TxtCss" />
                            </td>
                        </tr>
                        <tr>
                            <td class="Td1">
                                联系人
                            </td>
                            <td class="Td2">
                                <input name="txtJBRen" type="text" value="曹红玲(潘英龙转)" readonly="readonly" id="txtJBRen" class="TxtCss" />
                            </td>
                            <td class="Td1">
                                钥 匙 号
                            </td>
                            <td class="Td3">
                                <input name="txtCarYaoShiHao" type="text" value="4E12" id="txtCarYaoShiHao" style="width:90%;" />
                            </td>
                        </tr>
                        <tr>
                            <td class="Td1">
                                详细地址
                            </td>
                            <td class="Td2">
                                <input name="txtJBRenAddress" type="text" value="瑞昌市码头镇石油化工公司乙区" readonly="readonly" id="txtJBRenAddress" class="TxtCss" />
                            </td>
                            <td class="Td1">
                                车 牌 号
                            </td>
                            <td class="Td3">
                                <input name="txtCarChePaiHao" type="text" id="txtCarChePaiHao" onblur="GetPaiZhaoDate()" style="width:90%;" />
                                <input name="hidChePaiHao" type="hidden" id="hidChePaiHao" />
                            </td>
                        </tr>
                        <tr>
                            <td class="Td1">
                                邮政编码
                            </td>
                            <td class="Td2">
                                <input name="txtJBRenYouBian" type="text" readonly="readonly" id="txtJBRenYouBian" class="TxtCss" />
                            </td>
                            <td class="Td1">
                                牌照日期
                            </td>
                            <td class="Td3">
                                <input name="txtCarPaiZaoDate" type="text" id="txtCarPaiZaoDate" class="TxtCss" />
                            </td>
                        </tr>
                        <tr>
                            <td class="Td1">
                                联系电话
                            </td>
                            <td class="Td2">
                                <input name="txtJBRenMobile" type="text" value="15179208628" readonly="readonly" id="txtJBRenMobile" class="TxtCss" />
                            </td>
                            <td class="Td1">
                                首保日期
                            </td>
                            <td class="Td3">
                                <input name="txtCarShouBaoDate" type="text" value="2015-04-10" readonly="readonly" id="txtCarShouBaoDate" class="TxtCss" />
                            </td>
                        </tr>
                        <tr>
                            <td class="Td1">
                                销售日期
                            </td>
                            <td class="Td2">
                                <input name="txtCarSaleDate" type="text" value="2015-1-9 0:00:00" readonly="readonly" id="txtCarSaleDate" class="TxtCss" />
                            </td>
                            <td class="Td1">
                                保修手册
                            </td>
                            <td class="Td3">
                                <input name="chkHasBaoXiuShouCe" type="checkbox" id="chkHasBaoXiuShouCe" onclick="ChkChange()" />
                                <span id="lblHasBaoXiuShouCe">无</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="Td1">
                                首保期限
                            </td>
                            <td class="Td2">
                                <span id="lblShouBaoQiXian" style="Color:Red;">90天</span>
                            </td>
                            <td class="Td1">
                            </td>
                            <td class="Td3">
                            </td>
                        </tr>
                    </tbody>
                </table>
                <input name="hidOrderID" type="hidden" id="hidOrderID" value="bb48b67f-fabd-44b6-92ea-5e424a1c79b4" />
                <input name="hidCarID" type="hidden" id="hidCarID" value="f1068c3f-753e-40c0-b808-4ff0ee242413" />
            </div>
        </div>
    </div>
    <script language="javascript" type="text/javascript">
        function TestClientForm() {
            if (navigator.appName == "Microsoft Internet Explorer") {
                alert("这是IE浏览器！");
                if (navigator.userAgent.indexOf("MSIE 6.0") > 0)
                    alert("这是IE6浏览器！");
                if (navigator.userAgent.indexOf("MSIE 7.0") > 0)
                    alert("这是IE7浏览器！");
            }
            else {
                alert("这不是IE浏览器！");
            }

            alert("宽" + document.body.clientWidth + "高：" + document.body.clientHeight);
            //            document.body.clientHeight = document.body.clientHeight+50;
            //            alert("屏幕可用工作区高度：" + window.screen.availHeight + "宽度：" + window.screen.availWidth);
            return false;
        }

        function ShowOrder_Query() {
            var href = "SaleOrder_OrderInfo_Query.aspx?Order_Status=90";
            //此处定单状态需改为“ ”
            var SizeZ = 'dialogWidth:1000px;dialogHight:800px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;';
            var returnValue = window.showModalDialog(href, '', SizeZ);
            if (returnValue != undefined && returnValue.length > 0) {
                document.getElementById("hidOrderID").value = returnValue;
                return true;
            }
            return false;
        }

        function ChkChange() {
            var chkObj = document.getElementById("chkHasBaoXiuShouCe");
            if (chkObj.checked) {
                document.getElementById("lblHasBaoXiuShouCe").innerHTML = "有";
            }
            else {
                document.getElementById("lblHasBaoXiuShouCe").innerHTML = "无";
            }
        }

        function CloseWindow() {
            window.opener = null;
            window.open("", "_self");
            window.returnValue = undefined;
            window.close();
        }

        function GetPaiZhaoDate() {
            var strChePaiHao = document.getElementById("txtCarChePaiHao").value;
            var strYuanPaiHao = document.getElementById("hidChePaiHao").value;
            var mydate = new Date();
            if (strChePaiHao != strYuanPaiHao)
                document.getElementById("txtCarPaiZaoDate").value = mydate.getFullYear() + "-" + (mydate.getMonth() + 1) + "-" + mydate.getDate();
        }  
    </script>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="4ECEBA4F" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWIgLD7vCzCQKpzvGoAgKWosD8CgL7uKJnApD0z+sFAvGZ+cINAuOk/M8BAqLY/eIIAsCe6XACoJ2GlwcC/vLkvQ4C8NaHyAYC/fThrQMCqNaMxgUCgu6c0AUC7vfWyQcC9djFowMCxbD2uQUC7I/XoQwCpurMzgoC0IKQqA8C54TwiwQC1MKC5AMCkcLdkgkCz9Sx4wcCwa3g3goCx465+w0C/6ixvg4C/LuQ4w4Cj/2Z/AMC1uyP0gsC4s/v8wQC+arV2AYC1MqN+g7wbONqWjXYM2uaztbcC2ggbJ1Odw==" />
</div></form>
</body>
</html>