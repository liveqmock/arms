<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	提车单
</title><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <base target="_self" />
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<script language="javascript" type="text/javascript">
    $(function () {
        $(".linkbutton").linkbutton();
    });

  

</script>
<style type="text/css">
    table
    {
        border-collapse: collapse;
        table-layout: fixed;
    }
    html, body
    {
        overflow: auto;
    }
    .td_Left
    {
        text-align: left;
        width: 18%;
        padding-left: 2%;
    }
    .td_right
    {
        width: 26%;
        text-align: left;
    }
    .td_Col2A
    {
        width: 36%;
        text-align: left;
        padding-left: 2%;
    }
    .td_Col2B
    {
        width: 44%;
        text-align: left;
    }
    .cssTxt
    {
        width: 96%;
        padding-left: 2%;
        background-color: Silver;
    }
    .cssTxtTime
    {
        text-align: center;
        width: 96%;
    }
    .txtBorderBottom
    {
        border-top: none 0px white;
        border-left: none 0px;
        border-right: none 0px;
        border-bottom: solid 1px black;
    }
</style>
<body>
    <form name="form1" method="post" action="OrderTiCheDan.aspx?d=Fri+Jan+09+2015+10%3a38%3a22+GMT+0800&amp;&amp;OrderID=7d1a68a2-7e41-4cf1-b71b-a75476bff443" id="form1" style="padding: 0px; margin: 0px">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMjk0ODA4MjgyD2QWAgIDD2QWGgIBDw8WAh4EVGV4dAUGSzZWNS9FZGQCBw8PFgIfAAURTEZNQVA4NkMxRTAwNTUyNTRkZAIJDw8WAh8ABQbnmb3oibJkZAILDw8WAh8ABQdGNTY2NDk2ZGQCDQ8PFgIfAAUGMS42IEdMZGQCDw8PFgIfAAUJ56em5pyI57qiZGQCEQ8PFgIfAAUJ56em5pyI57qiZGQCEw8PFgIfAAULMTg4OTc5MjI2ODZkZAIVDw8WAh8ABRIzNzI1MjIxOTgyMTIyOTUyMjRkZAIXDw8WAh8ABQQ0RDM5ZGQCGw8PFgIfAGVkZAIfDw8WAh8ABREyMDE1LTEtNiAxNjo0MjowMGRkAi8PDxYCHwAFMOS5neaxn+a3seS4muS4sOeUsOaxvei9pumUgOWUruacjeWKoeaciemZkOWFrOWPuGRkZOTbuUgAXINkizVw4pVI7LscbqD8" />
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
        <div region="center" border="false" style="padding: 10px; overflow: hidden;">
            <div id="center-main" style="border: 1px solid #e0ecff; overflow-x: auto; overflow-y: auto;
                text-align: center;">
                <table border="1" cellpadding="1px" cellspacing="0">
                    <tr>
                        <td class="td_Left">
                            车辆编号:
                        </td>
                        <td class="td_Col2B" colspan="2">
                            <input name="txtCarCheLianBianHao" type="text" value="K6V5/E" readonly="readonly" id="txtCarCheLianBianHao" class="cssTxt check-submit" style="background-color:Silver;" />
                            
                        </td>
                        <td class="td_Left">
                            合同编号:
                        </td>
                        <td class="td_right">
                            <input name="txtOrderHeTongBianHao" type="text" value="XSD201501025" id="txtOrderHeTongBianHao" class="cssTxt check-submit" validType="char" title="合同编号" required="true" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Left">
                            车架号码:
                        </td>
                        <td class="td_Col2B" colspan="2">
                            <input name="txtCarCheJiaHao" type="text" value="LFMAP86C1E0055254" readonly="readonly" id="txtCarCheJiaHao" class="cssTxt" />
                        </td>
                        <td class="td_Left">
                            颜色(外/内):
                        </td>
                        <td class="td_right">
                            <input name="txtCarColor" type="text" value="白色" readonly="readonly" id="txtCarColor" class="cssTxt" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Left">
                            发动机号:
                        </td>
                        <td class="td_Col2B" colspan="2">
                            <input name="txtCarFaDongJiHao" type="text" value="F566496" readonly="readonly" id="txtCarFaDongJiHao" class="cssTxt" />
                        </td>
                        <td class="td_Left">
                            车 型:
                        </td>
                        <td class="td_right">
                            <input name="txtCarCheXing" type="text" value="1.6 GL" readonly="readonly" id="txtCarCheXing" class="cssTxt" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Left">
                            车主名称:
                        </td>
                        <td class="td_Col2B" colspan="2">
                            <input name="txtCustName" type="text" value="秦月红" readonly="readonly" id="txtCustName" class="cssTxt" />
                        </td>
                        <td class="td_Left">
                            提车人:
                        </td>
                        <td class="td_right">
                            <input name="txtJBRenName" type="text" value="秦月红" readonly="readonly" id="txtJBRenName" class="cssTxt" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Left">
                            联系电话:
                        </td>
                        <td class="td_Col2B" colspan="2">
                            <input name="txtJBRenMobile" type="text" value="18897922686" readonly="readonly" id="txtJBRenMobile" class="cssTxt" />
                        </td>
                        <td class="td_Left">
                            证件号码:
                        </td>
                        <td class="td_right">
                            <input name="txtJBRenZhengJianHao" type="text" value="372522198212295224" readonly="readonly" id="txtJBRenZhengJianHao" class="cssTxt" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Left">
                            钥匙编号:
                        </td>
                        <td class="td_Col2B" colspan="2">
                         <input name="txtYaoShiNo" type="text" value="4D39" readonly="readonly" id="txtYaoShiNo" class="cssTxt" />
                  
                        </td>
                        
                        <td class="td_Left" rowspan="5">
                            销售经理:
                        </td>
                        <td class="td_right" rowspan="5">
                            <textarea name="txtXiaoShouJingLi" rows="7" cols="20" id="txtXiaoShouJingLi"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Left">
                            车牌号:
                        </td>
                        <td class="td_Col2B" colspan="2">
                            <input name="txtCarChePaiHao" type="text" readonly="readonly" id="txtCarChePaiHao" class="cssTxt" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Left">
                            提车日期:<input name="hidCheZhuShengRi" type="hidden" id="hidCheZhuShengRi" />
                        </td>
                        <td class="td_Col2B" colspan="2">
                            <input name="txtTiCheDate" type="text" value="2015-1-6 16:42:00" readonly="readonly" id="txtTiCheDate" class="cssTxt" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="td_Col2A">
                            随车手续证件:
                        </td>
                        <td class="td_right" style="text-align: center;">
                            提取日期:
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="td_Col2A">
                            发 票:
                        </td>
                        <td class="td_right">
                            <input name="txtFaPiaoDate" type="text" value="2015-01-06" id="txtFaPiaoDate" class="Wdate cssTxtTime" onfocus="WdatePicker()" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="td_Col2A">
                            合格证\货物证明书\商检：
                        </td>
                        <td class="td_right">
                            <input name="txtHeGeZhengDate" type="text" value="2015-01-06" id="txtHeGeZhengDate" class="Wdate cssTxtTime" onfocus="WdatePicker()" />
                        </td>
                        <td class="td_Left" colspan="2" style="text-align: center;">
                            备 注:
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="td_Col2A">
                            保修卡：
                        </td>
                        <td class="td_right">
                            <input name="txtBaoXiuKaDate" type="text" value="2015-01-06" id="txtBaoXiuKaDate" class="Wdate cssTxtTime" onfocus="WdatePicker()" />
                        </td>
                        <td colspan="2" rowspan="3">
                            <textarea name="txtRemark" rows="2" cols="20" id="txtRemark" style="height:80px;width:98%;"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="td_Col2A">
                            说明书：
                        </td>
                        <td class="td_right">
                            <input name="txtShuoMingShuDate" type="text" value="2015-01-06" id="txtShuoMingShuDate" class="Wdate cssTxtTime" onfocus="WdatePicker()" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="td_Col2A">
                            工具\随车钥匙：<input name="txtYaoShiTaoShu" type="text" value="2" id="txtYaoShiTaoShu" class="txtBorderBottom" style="width:20px;" />套
                        </td>
                        <td class="td_right">
                            <input name="txtYaoShiDate" type="text" value="2015-01-06" id="txtYaoShiDate" class="Wdate cssTxtTime" onfocus="WdatePicker()" />
                        </td>
                    </tr>
                </table>
                <table width="100%" style="height: 150px;">
                    <tr>
                        <td colspan="2" style="font-size: 15pt; font-weight: bold; text-align: left;">
                            该车经验完好无损:
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="font-weight: bold; text-align: left;">
                            注：未上牌车辆盗抢不生效，另根据交通法规不可上路行驶，请车主妥善保管，自行承担责任！
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Col2A">
                            提车人身份证复印件粘贴处
                        </td>
                        <td>
                            车主<span lang="zh-cn">身份</span>证复印件粘贴处（单位购车附机构代码证复印件）
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div style="height: 95px;">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td style="font-size: 15pt;">
                            <span id="lblCompanyName">九江深业丰田汽车销售服务有限公司</span>
                        </td>
                    </tr>
                    <tr style="font-size: 15pt;">
                        <td>
                            顾客签名：<input name="txtCustNameSign" type="text" id="txtCustNameSign" class="txtBorderBottom" />
                        </td>
                        <td>
                            经办人签名：<input name="txtCarZuoRenName" type="text" id="txtCarZuoRenName" class="txtBorderBottom" />
                        </td>
                    </tr>
                </table>
                <input name="hidTiChe_ID" type="hidden" id="hidTiChe_ID" value="604e9110-feb3-4258-9748-9c1052139ccd" />
                <input name="hidOrderId" type="hidden" id="hidOrderId" value="7d1a68a2-7e41-4cf1-b71b-a75476bff443" />
                <input name="hidCustID" type="hidden" id="hidCustID" />
            </div>
        </div>
        <div region="south" border="false" style="overflow: hidden; height: 40px;">
            <div class="Toolbar">
                <table width="100%" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <table height="40px" align="right" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td style="width: 95%; text-align: right;">
                                        <a id="lnkbtnSave" class="easyui-linkbutton" iconCls="icon-save" href="javascript:__doPostBack('lnkbtnSave','')">保存</a>
                                        
                                        <a onclick="return ShowPrint();" id="lnkbtnPrint" class="easyui-linkbutton" iconCls="icon-print" href="javascript:__doPostBack('lnkbtnPrint','')">打印</a>
                                        <a onclick="return ShowJingPinPrint();" id="LinkButton1" class="easyui-linkbutton" href="javascript:__doPostBack('LinkButton1','')">交车精品单</a>
                                        <a onclick="CloseWindow();" id="lnkbtnCancel" class="easyui-linkbutton" iconCls="icon-back" href="javascript:__doPostBack('lnkbtnCancel','')">离开</a>
                                    </td>
                                    <td style="width: 10px">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="46444864" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWIAK22pqCCgL2p6PZDgLNr8mcDwL3wM2MBQLsj9ehDAKa0NvRCQLV/PpiAvGZ+cINAsq/y78MAvy7kOMOAq3l8agLAqKGqvYHAsjeluUFAs/UseMHAqbS4JQDArGHotYGArOf3o8JAtvj4p8HAsqSiPYGApm8i+UEAqS+//MKAo7wmKwIAp6Eo98OAs3qtnQClr2SmwIC7ajloQcC+arV1wYCmtPcxwYCqc7xqAIC4vLiqAYCzPT7pg8Cg7jd6QQhZvjSt6x/sIw0QKAd0s61ShqMYQ==" />
</div></form>
    <script language="javascript" type="text/javascript">
        function ShowPrint() {
            var OrderID = document.getElementById("hidOrderId").value;
            if (document.getElementById("hidTiChe_ID").value == "") {
                alert("请先保存!");
                return false;
            }
            window.open("../SaleOrder_Manage/print/saleOrderTiCheDanPrint.aspx?OrderID=" + OrderID, "", "", "");

            return false;
        }

        function ShowJingPinPrint() {
            var OrderID = document.getElementById("hidOrderId").value;
            if (document.getElementById("hidTiChe_ID").value == "") {
                alert("请先保存!");
                return false;
            }
            window.open("../SaleOrder_Manage/print/saleOrderJingPinJiaoChePrint.aspx?orderId=" + OrderID, "", "", "");

            return false;
        }

        function GetJPChengBen() {
            var OrderID = document.getElementById("hidOrderId").value;
            if (document.getElementById("hidTiChe_ID").value == "") {
                alert("请先保存!");
                return false;
            }
        }

        //        获取定单信息
        function ShowOrder_Query() {
            if (document.getElementById("hidOrderId").value != "") {
                return true;
            }
            return false;
        }

        function CloseWindow() {
            window.opener = null;
            window.open("", "_self");
            window.close();
        }

        //        隐藏或显示图片
        function ImageDisplay() {
            if (document.getElementById("trImgs").style["display"] == "none")
                document.getElementById("trImgs").style["display"] = "block";
            else
                document.getElementById("trImgs").style["display"] = "none";
        }

    </script>
</body>
</html>