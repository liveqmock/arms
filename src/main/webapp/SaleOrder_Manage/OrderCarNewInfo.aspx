
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	客户信息完善
</title>
    <style type="text/css">
        html, body
        {
            overflow: hidden;
            font-family: 微软雅黑;
        }
        input
        {
            width: 100px;
        }
        .main-table .top-dt-a
        {
            background-image: url('../image/SaleOrder/left_a.png');
            background-repeat: no-repeat;
            background-position: right bottom;
            height: 6px;
        }
        .main-table .top-dt-b
        {
            background-image: url('../image/SaleOrder/top_a.png');
            background-repeat: repeat-x;
            background-position: left bottom;
            height: 6px;
        }
        .main-table .top-dt-c
        {
            background-image: url('../image/SaleOrder/right_a.png');
            background-repeat: no-repeat;
            background-position: left bottom;
            height: 6px;
            width: 6px;
        }
        .main-table .left-dt-a
        {
            background-image: url('../image/SaleOrder/left_c.png');
            background-repeat: repeat-y;
            background-position: right top;
            width: 3px;
        }
        .main-table .right-dt-a
        {
            background-image: url('../image/SaleOrder/rigth_c.png');
            background-repeat: repeat-y;
            background-position: left bottom;
            width: 6px;
        }
        .main-table .bottom-dt-a
        {
            background-image: url('../image/SaleOrder/bottom_a.png');
            background-repeat: no-repeat;
            background-position: right top;
            width: 3px;
            height: 7px;
        }
        .main-table .bottom-dt-b
        {
            background-image: url('../image/SaleOrder/bottom_b.png');
            background-repeat: repeat-x;
            background-position: center top;
            height: 7px;
        }
        .main-table .bottom-dt-c
        {
            background-image: url('../image/SaleOrder/bottom_c.png');
            background-repeat: no-repeat;
            background-position: left top;
            width: 6px;
            height: 7px;
        }
        .main-table .background-picture
        {
            background-image: url('../image/SaleOrder/middle.png');
            background-repeat: repeat-x;
            background-position: center top; /*background-attachment: fixed;*/
        }
        #express
        {
            border: 1px solid #ccc;
            border-collapse: collapse;
            table-layout: auto;
            font-size="10px";
        }
        #express td
        {   font-size="10px";
            color: Blue;
            white-space: nowrap;
            border-bottom: 1px solid #ccc;
        }
    </style>
    <script language="javascript" type="text/javascript">
        function ChangeStatu(objddlStatus) {
            valueSelected = objddlStatus.value;
            if (document.getElementById("hidOrderCarId").value.length > 30 && valueSelected == '1') {
                alert("请先删除配车单再终止该定单！");
                objddlStatus.value = "0";
                return false;
            }

            if (valueSelected == '1' || valueSelected == '4') {


                document.getElementById("tdTitStatusShuoMing").style.display = "block";
                document.getElementById("tdTxtStatusShuoMing").style.display = "block";
            }
            else {
                document.getElementById("tdTitStatusShuoMing").style.display = "none";
                document.getElementById("tdTxtStatusShuoMing").style.display = "none";
            }
        }

        function ShowInertalNotes() {
            //            tdInternalNotes
            //            alert(document.getElementById("hidInteralNotes").value);
            if (document.getElementById("divInteralNotes").innerHTML == "显示内部说明") {
                document.getElementById("tdTitInternalNotes").style.display = "block";
                document.getElementById("tdInternalNotes").style.display = "block";
                document.getElementById("divInteralNotes").innerHTML = "隐藏内部说明"
                //                document.getElementById("hidShow").value = "1";
            }
            else {
                document.getElementById("tdTitInternalNotes").style.display = "none";
                document.getElementById("tdInternalNotes").style.display = "none";
                document.getElementById("divInteralNotes").innerHTML = "显示内部说明";
                //                document.getElementById("hidShow").value = "0";
            }
        }

        var heightForIE = 0;
        if (navigator.userAgent.indexOf("MSIE 6.0") > 0)
            heightForIE = 50;

        function ChangeZhiHuanJiuChe() {
            try {
                var hrefLoc = document.location.href;
                var arrID = hrefLoc.split('=');

                var OrderID = arrID[1];
                var href = "SaleOrder_ZhiHuanJiuChe.aspx";
                if (OrderID != "")
                    href += "?OrderID=" + OrderID;
                var SizeZ = "dialogWidth:580px;dialogHeight:" + (280 + heightForIE) + "px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;";
                var valReturn = window.showModalDialog(href, "旧车置换", SizeZ);
                return false;
            }
            catch (e) {
                window.showModalDialog('/WebForms/SaleOrder/SaleOrder_ZhiHuanJiuChe.aspx', '', 'alwaysRaised:yes;resizable:yes;scroll:yes;status:no;dialogWidth=600px;dialogHeight=350px;center=yes;help=no')
            }
        }

        function ShowIntro() {
            var hrefLoc = document.location.href;
            var arrID = hrefLoc.split('=');

            var OrderID = arrID[1];
            var href = "SaleOrder_Introducer.aspx";
            if (OrderID != "")
                href += "?OrderID=" + OrderID;
            var valReturn = window.showModalDialog(href, "推荐用户信息", "dialogWidth:360px;dialogHeight:" + (350 + heightForIE) + "px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;");
        }

        function CheckForms() {
            var aa = document.getElementById("ddlKaiPiaoLeiXing").text;
            var bb = document.getElementById("ddlGouZhiLeiBie").text;
            var cc = $("#txtYuJiaoCheDate").datebox('getValue'); //document.getElementById("txtYuJiaoCheDate").value;
            var dd = document.getElementById("txtYuKuanHeJi").value;
            var ee = document.getElementById("txtAnJieJinE").value;
            var ff = document.getElementById("ddlStatusPuanDuan").value;
            if (aa == "") {
                alert('开票类型不能为空!');
                return false;
            }
            if (bb == "") {
                alert('购车性质不能为空!');
                return false;
            }
            if (cc == "") {
                alert('预交车日不能为空!');
                return false;
            }
            if (dd == "") {
                alert('余款合计不能为空!');
                return false;
            }
            if (ee == "") {
                alert('按揭金额不能为空!');
                return false;
            }

           // if (document.getElementById("ddlXianFuFangFa").value == "") {
             //   alert('付款方式不能为空!');
               // return false;
            //}
            if($("#ddlXianFuFangFa option:selected").text()==""){

              alert('付款方式不能为空!');
              return false;
              }
            if ((ff == "1" || ff == "4") && document.getElementById("txtStatusShuoMing").value == "") {
                if (ff == "1")
                    alert('定单状态为终止时,定单状态说明不能为空!');
                if (ff == "4")
                    alert('定单状态为拟退时,定单状态说明不能为空!');
                return false;
            }
        }

        function JiuCheReplace() {
            var ddlText = $("#ddlGouZhiLeiBie option:selected").text();
            if (ddlText == "换购" || ddlText == "置换车辆")
                document.getElementById("tdZhiHuan").style["display"] = "block";
            else
                document.getElementById("tdZhiHuan").style["display"] = "none";

        }


        //查看审核日志信息
        function showExaInfo() {
            return historyShow('', 'e2d0d606-9016-4ecc-913f-3b5b168e61f5'); ;


        }
        
    </script>
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=2dfbab1f71764dc182eb87e4e0aad2fc" type="text/javascript"></script><link href="../style/common.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="OrderCarNewInfo.aspx?OrderID=e2d0d606-9016-4ecc-913f-3b5b168e61f5&amp;&amp;syauto=Fri+Jan+09+2015+16%3a46%3a21+GMT+0800" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTIwODc2Njc5MzUPZBYCAgMPZBYQAgsPEA8WBh4ORGF0YVZhbHVlRmllbGQFAWQeDURhdGFUZXh0RmllbGQFAXYeC18hRGF0YUJvdW5kZ2QQFQMM6L2m6L6G5Y+R56WoD+acuuWKqOi9puWPkeelqBXmnLrliqjovabnu5/kuIDlj5HnpagVAyRmZWE5MzgzYy0yMzA4LTQ2N2EtYjMxMi1hZGUyODg0YTZiYTckODc4NTdhMWMtOWFjYy00ODMwLWE4NDAtNWJiOGY0ZWU1ZWRkABQrAwNnZ2dkZAINDw8WAh4EVGV4dAUKMjAxNS0wMS0wOWRkAhEPEA8WBh8ABQFkHwEFAXYfAmcWAh4Ib25jaGFuZ2UFD0ppdUNoZVJlcGxhY2UoKRAVBAbmlrDotK0M572u5o2i6L2m6L6GBuWinui0rQAVBCRiMzMwMjQ5OS1hMTc4LTQyNzEtYTc0ZS1iNjAzOGJhMDEwM2QkMWE5YmZjNzgtMDkyMi00ZDE0LTgyMTYtYjJmYTA0ODBmNGQ2JGY0ZDI0ZTUxLTI2ZGUtNDI2Zi04ZTZhLTE5MDQzYTRjZWFhMAAUKwMEZ2dnZ2RkAhMPEA8WBh8ABQFkHwEFAXYfAmdkEBUHAAbovazotKYG5YW25a6DBueOsOmHkQbliLfljaEG5pSv56WoABUHACRlYTNjNWRhOS1mNGIzLTRkZDgtOWQ0My0yZGJiN2FiNzM4NDUkZjUxNGJjNGEtMjAwNi00YWQ4LThjNTEtODBhNTczM2Q0YmE2JDc3Yzg5MTdkLTJjMDAtNDU2Mi1iZjI3LTg2YzJkMTNjMjE5ZCRjM2ViM2Q5Ny1lYmE0LTQwYzQtYmQ0Mi00ZDczMzE5YTJlNDQkZjQyNTdjOTAtNmVkYy00NjMwLWEzZGEtODFjYjEyNWJjMzg0ABQrAwdnZ2dnZ2dnZGQCGQ8QDxYCHgdFbmFibGVkaBYCHwQFGHJldHVybiBDaGFuZ2VTdGF0dSh0aGlzKWQWAWZkAi0PFgIfAwW1Bzx0YWJsZSBpZD0nZXhwcmVzcyc+IDx0cj48dGQgc3R5bGU9J3RleHQtYWxpZ246cmlnaHQ7Jz7liKnmtqY9PC90ZD48dGQ+5oC76aKdPC90ZD48dGQ+Le+8iDwvdGQ+PHRkPuWMheeJjOagh+WHhuS7tzwvdGQ+PHRkPis8L3RkPjx0ZD7nsr7lk4E8L3RkPjx0ZD4qPC90ZD48dGQ+5oqY5omjPC90ZD48dGQ+KzwvdGQ+PHRkPuWVhuS4mumZqTwvdGQ+PHRkPio8L3RkPjx0ZD4NCuaKmOaJozwvdGQ+PHRkPis8L3RkPjx0ZD7lu7bkv508L3RkPjx0ZD4rPC90ZD48dGQ+5oyJ5o+tPC90ZD48dGQ+KzwvdGQ+PHRkPueJueWIq+inhOagvDwvdGQ+PHRkPis8L3RkPjx0ZD4g6L2m6Ii556iOPC90ZD48dGQ+KzwvdGQ+PHRkPumTgeeJjDwvdGQ+PHRkPis8L3RkPjx0ZD7lvLrpmak8L3RkPjx0ZD4tPC90ZD48dGQ+5by66Zmp5pS255uKPC90ZD48dGQ+LTwvdGQ+PHRkPuWFtuS7ljwvdGQ+PHRkPi08L3RkPjx0ZD7lhbbku5Y8L3RkPjx0ZD48L3RkPjx0ZD4pKzwvdGQ+PHRkPuS8mOaDoOW5heW6pjwvdGQ+PHRkPjwvdHI+DQo8dHI+PHRkPi0xMzcwMDAuMDA9PC90ZD48dGQ+MTc1MC4wMDwvdGQ+PHRkPi3vvIg8L3RkPjx0ZD4xNDAwMDAuMDA8L3RkPjx0ZD4rPC90ZD48dGQ+MC4wMDwvdGQ+PHRkPio8L3RkPjx0ZD4wLjAwPC90ZD48dGQ+KzwvdGQ+PHRkPjAuMDA8L3RkPjx0ZD4qPC90ZD48dGQ+DQowLjAwPC90ZD48dGQ+KzwvdGQ+PHRkPjAuMDA8L3RkPjx0ZD4rPC90ZD48dGQ+MC4wMDwvdGQ+PHRkPis8L3RkPjx0ZD4wLjAwPC90ZD48dGQ+KzwvdGQ+PHRkPiAzMDAuMDA8L3RkPjx0ZD4rPC90ZD48dGQ+NTAwLjAwPC90ZD48dGQ+KzwvdGQ+PHRkPjk1MC4wMDwvdGQ+PHRkPi08L3RkPjx0ZD4wLjAwPC90ZD48dGQ+LTwvdGQ+PHRkPjAuMDA8L3RkPjx0ZD4tPC90ZD48dGQ+MC4wMDwvdGQ+PHRkPjwvdGQ+PHRkPikrPC90ZD48dGQ+MzAwMC4wMDwvdGQ+PHRkPjwvdHI+PC90YWJsZT5kAi8PFgIfAwW1Bzx0YWJsZSBpZD0nZXhwcmVzcyc+IDx0cj48dGQgc3R5bGU9J3RleHQtYWxpZ246cmlnaHQ7Jz7liKnmtqY9PC90ZD48dGQ+5oC76aKdPC90ZD48dGQ+Le+8iDwvdGQ+PHRkPuWMheeJjOagh+WHhuS7tzwvdGQ+PHRkPis8L3RkPjx0ZD7nsr7lk4E8L3RkPjx0ZD4qPC90ZD48dGQ+5oqY5omjPC90ZD48dGQ+KzwvdGQ+PHRkPuWVhuS4mumZqTwvdGQ+PHRkPio8L3RkPjx0ZD4NCuaKmOaJozwvdGQ+PHRkPis8L3RkPjx0ZD7lu7bkv508L3RkPjx0ZD4rPC90ZD48dGQ+5oyJ5o+tPC90ZD48dGQ+KzwvdGQ+PHRkPueJueWIq+inhOagvDwvdGQ+PHRkPis8L3RkPjx0ZD4g6L2m6Ii556iOPC90ZD48dGQ+KzwvdGQ+PHRkPumTgeeJjDwvdGQ+PHRkPis8L3RkPjx0ZD7lvLrpmak8L3RkPjx0ZD4tPC90ZD48dGQ+5by66Zmp5pS255uKPC90ZD48dGQ+LTwvdGQ+PHRkPuWFtuS7ljwvdGQ+PHRkPi08L3RkPjx0ZD7lhbbku5Y8L3RkPjx0ZD48L3RkPjx0ZD4pKzwvdGQ+PHRkPuS8mOaDoOW5heW6pjwvdGQ+PHRkPjwvdHI+DQo8dHI+PHRkPi0xMzYwMDAuMDA9PC90ZD48dGQ+MTc1MC4wMDwvdGQ+PHRkPi3vvIg8L3RkPjx0ZD4xNDAwMDAuMDA8L3RkPjx0ZD4rPC90ZD48dGQ+MC4wMDwvdGQ+PHRkPio8L3RkPjx0ZD4wLjAwPC90ZD48dGQ+KzwvdGQ+PHRkPjAuMDA8L3RkPjx0ZD4qPC90ZD48dGQ+DQowLjAwPC90ZD48dGQ+KzwvdGQ+PHRkPjAuMDA8L3RkPjx0ZD4rPC90ZD48dGQ+MC4wMDwvdGQ+PHRkPis8L3RkPjx0ZD4wLjAwPC90ZD48dGQ+KzwvdGQ+PHRkPiAzMDAuMDA8L3RkPjx0ZD4rPC90ZD48dGQ+NTAwLjAwPC90ZD48dGQ+KzwvdGQ+PHRkPjk1MC4wMDwvdGQ+PHRkPi08L3RkPjx0ZD4wLjAwPC90ZD48dGQ+LTwvdGQ+PHRkPjAuMDA8L3RkPjx0ZD4tPC90ZD48dGQ+MC4wMDwvdGQ+PHRkPjwvdGQ+PHRkPikrPC90ZD48dGQ+NDAwMC4wMDwvdGQ+PHRkPjwvdHI+PC90YWJsZT5kAjEPFgIfAwW2Bzx0YWJsZSBpZD0nZXhwcmVzcyc+IDx0cj48dGQgc3R5bGU9J3RleHQtYWxpZ246cmlnaHQ7Jz7liKnmtqY9PC90ZD48dGQ+5oC76aKdPC90ZD48dGQ+Le+8iDwvdGQ+PHRkPuWMheeJjOagh+WHhuS7tzwvdGQ+PHRkPis8L3RkPjx0ZD7nsr7lk4E8L3RkPjx0ZD4qPC90ZD48dGQ+5oqY5omjPC90ZD48dGQ+KzwvdGQ+PHRkPuWVhuS4mumZqTwvdGQ+PHRkPio8L3RkPjx0ZD4NCuaKmOaJozwvdGQ+PHRkPis8L3RkPjx0ZD7lu7bkv508L3RkPjx0ZD4rPC90ZD48dGQ+5oyJ5o+tPC90ZD48dGQ+KzwvdGQ+PHRkPueJueWIq+inhOagvDwvdGQ+PHRkPis8L3RkPjx0ZD4g6L2m6Ii556iOPC90ZD48dGQ+KzwvdGQ+PHRkPumTgeeJjDwvdGQ+PHRkPis8L3RkPjx0ZD7lvLrpmak8L3RkPjx0ZD4tPC90ZD48dGQ+5by66Zmp5pS255uKPC90ZD48dGQ+LTwvdGQ+PHRkPuWFtuS7ljwvdGQ+PHRkPi08L3RkPjx0ZD7lhbbku5Y8L3RkPjx0ZD48L3RkPjx0ZD4pKzwvdGQ+PHRkPuS8mOaDoOW5heW6pjwvdGQ+PHRkPjwvdHI+DQo8dHI+PHRkPi0xMjM5OTkuMDA9PC90ZD48dGQ+MTc1MC4wMDwvdGQ+PHRkPi3vvIg8L3RkPjx0ZD4xNDAwMDAuMDA8L3RkPjx0ZD4rPC90ZD48dGQ+MC4wMDwvdGQ+PHRkPio8L3RkPjx0ZD4wLjAwPC90ZD48dGQ+KzwvdGQ+PHRkPjAuMDA8L3RkPjx0ZD4qPC90ZD48dGQ+DQowLjAwPC90ZD48dGQ+KzwvdGQ+PHRkPjAuMDA8L3RkPjx0ZD4rPC90ZD48dGQ+MC4wMDwvdGQ+PHRkPis8L3RkPjx0ZD4wLjAwPC90ZD48dGQ+KzwvdGQ+PHRkPiAzMDAuMDA8L3RkPjx0ZD4rPC90ZD48dGQ+NTAwLjAwPC90ZD48dGQ+KzwvdGQ+PHRkPjk1MC4wMDwvdGQ+PHRkPi08L3RkPjx0ZD4wLjAwPC90ZD48dGQ+LTwvdGQ+PHRkPjAuMDA8L3RkPjx0ZD4tPC90ZD48dGQ+MC4wMDwvdGQ+PHRkPjwvdGQ+PHRkPikrPC90ZD48dGQ+MTYwMDEuMDA8L3RkPjx0ZD48L3RyPjwvdGFibGU+ZBgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WAwUPaW1nYnRuSW50cm9kdWNlBQxpbWdidG5FeGFMb2cFCmltZ2J0blNhdmXJ8En4zUn6ftK1wGgJyDsfAfZwnQ==" />
</div>

    <div class="title">
        <table style="width: 100%;">
            <tr>
                <td class="titlebg">
                    <span class="titleSpan">购车预算</span>
                </td>
                <td>
                </td>
            </tr>
        </table>
    </div>
    <table class="main-table" style="width: 685px;" cellpadding="0" cellspacing="0" align="center">

        <tr>
            <td style="height: 5px">
            </td>
            <td>
                <input name="hidOrderStatus" type="hidden" id="hidOrderStatus" value="0    " />
                <input name="hidOrderCarId" type="hidden" id="hidOrderCarId" />
                <input name="hidInteralNotes" type="hidden" id="hidInteralNotes" />
                <input name="hidGouCheXingZhi" type="hidden" id="hidGouCheXingZhi" />
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <table width="660px" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="width: 150px;">
                            &nbsp;
                        </td>
                        <td align="center">
                            <div id="PageTitle" style="font-weight: bold; color: #009933; width: 260px;">
                            </div>
                        </td>
                        <td width="150px" align="center">
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="height: 3px">
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="top-dt-a">
            </td>
            <td class="top-dt-b">
            </td>
            <td class="top-dt-c">
            </td>
        </tr>
        <tr>
            <td class="left-dt-a">
            </td>
            <td>
                <div>
                    <table width="660px" cellpadding="5" cellspacing="0" style="background-color: #FFFFFF">
                        <tr>
                            <td nowrap="nowrap" rowspan="3" align="center" width="110px">
                                <img alt="" src="../image/SaleOrder/goucheyushuan.png" style="width: 50px; height: 50px" />
                                <div style="font-weight: bold; width: 100px">
                                    购车预算</div>
                            </td>
                            <td nowrap="nowrap">
                                开票类型:
                            </td>
                            <td nowrap="nowrap">
                                <select name="ddlKaiPiaoLeiXing" id="ddlKaiPiaoLeiXing" style="width:108px;">
	<option value="fea9383c-2308-467a-b312-ade2884a6ba7">车辆发票</option>
	<option value="87857a1c-9acc-4830-a840-5bb8f4ee5edd">机动车发票</option>
	<option selected="selected" value="">机动车统一发票</option>

</select>
                            </td>
                            <td nowrap="nowrap">
                                定金日期:
                            </td>
                            <td nowrap="nowrap">
                                <input name="txtOrderDate" type="text" value="2015-01-09" readonly="readonly" id="txtOrderDate" />
                            </td>
                            <td nowrap="nowrap">
                                余款合计:
                            </td>
                            <td nowrap="nowrap">
                                <input name="txtYuKuanHeJi" type="text" value="0.00" id="txtYuKuanHeJi" style="text-align: right;" />
                            </td>
                        </tr>
                        <tr>
                            <td nowrap="nowrap">
                                购车性质:
                            </td>
                            <td nowrap="nowrap">
                                <select name="ddlGouZhiLeiBie" id="ddlGouZhiLeiBie" onchange="JiuCheReplace()" style="width:108px;">
	<option value="b3302499-a178-4271-a74e-b6038ba0103d">新购</option>
	<option value="1a9bfc78-0922-4d14-8216-b2fa0480f4d6">置换车辆</option>
	<option value="f4d24e51-26de-426f-8e6a-19043a4ceaa0">增购</option>
	<option selected="selected" value=""></option>

</select>
                            </td>
                            <td nowrap="nowrap">
                                首付方式:
                            </td>
                            <td nowrap="nowrap">
                                <select name="ddlXianFuFangFa" id="ddlXianFuFangFa" style="width:108px;">
	<option value=""></option>
	<option value="ea3c5da9-f4b3-4dd8-9d43-2dbb7ab73845">转账</option>
	<option value="f514bc4a-2006-4ad8-8c51-80a5733d4ba6">其它</option>
	<option value="77c8917d-2c00-4562-bf27-86c2d13c219d">现金</option>
	<option value="c3eb3d97-eba4-40c4-bd42-4d73319a2e44">刷卡</option>
	<option value="f4257c90-6edc-4630-a3da-81cb125bc384">支票</option>
	<option value=""></option>

</select>
                            </td>
                            <td nowrap="nowrap">
                                按揭金额:
                            </td>
                            <td nowrap="nowrap">
                                <input name="txtAnJieJinE" type="text" value="0.00" id="txtAnJieJinE" style="text-align: right;" />
                            </td>
                        </tr>
                        <tr>
                            <td nowrap="nowrap">
                                预交车日:
                            </td>
                            <td nowrap="nowrap">
                                <input name="txtYuJiaoCheDate" type="text" id="txtYuJiaoCheDate" class="easyui-datebox" />
                            </td>
                            <td nowrap="nowrap">
                                定单状态:
                            </td>
                            <td nowrap="nowrap">
                                <select name="ddlStatusPuanDuan" id="ddlStatusPuanDuan" disabled="disabled" onchange="return ChangeStatu(this)" style="width:108px;">
	<option selected="selected" value="0">有效</option>
	<option value="1">终止</option>

</select>
                            </td>
                            <td id="tdZhiHuan" nowrap="nowrap" style="text-align: center; vertical-align: top;
                                cursor: hand; display: none;" onclick="ChangeZhiHuanJiuChe()">
                                <img src="../image/SaleOrder/Replacement.bmp" id="imgbtnJiuChe" height="23px" width="23px"
                                    alt="旧车置换" />旧车置换
                            </td>

                            <td nowrap="nowrap" style="text-align: center; vertical-align: top; cursor: hand;"
                                onclick="ShowIntro()">
                                <input type="image" name="imgbtnIntroduce" id="imgbtnIntroduce" alt="好友介绍" src="../image/SaleOrder/Introducer.bmp" style="height:23px;width:23px;border-width:0px;" />好友介绍
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
            <td class="right-dt-a">
            </td>
        </tr>
        <tr>
            <td class="bottom-dt-a">
            </td>
            <td class="bottom-dt-b">
            </td>
            <td class="bottom-dt-c">
            </td>
        </tr>
        <tr>
            <td class="top-dt-a">
            </td>
            <td class="top-dt-b">
            </td>
            <td class="top-dt-c">
            </td>
        </tr>
        <tr>
            <td class="left-dt-a">
            </td>
            <td>
                <table width="660px" cellpadding="5" cellspacing="0">
                    <tr>
                        <td nowrap="nowrap" rowspan="2" align="center" width="110px">
                            <img alt="" src="../image/SaleOrder/beizhu.png" style="width: 50px; height: 50px" />
                            <div style="font-weight: bold; width: 100px">
                                备注/说明<br />
                                <div id="divInteralNotes" onclick="ShowInertalNotes()">
                                    显示内部说明</div>
                                <input id="hidShow" type="hidden" value="0" />
                            </div>
                        </td>
                        <td nowrap="nowrap" width="180px" id="tdTitRemark">
                            <b>定å¤æ³¨:</b>
                        </td>
                        <td id="tdTitStatusShuoMing" nowrap="nowrap" width="180px" style="display: none;">
                            <b>å®åç¶æè¯´æ:</b>
                        </td>

                        <td id="tdTitInternalNotes" nowrap="nowrap" width="180px" style="display: none;">
                            <b>å®ååé¨è¯´æ:</b>
                        </td>

                    </tr>
                    <tr>
                        <td nowrap="nowrap" id="tdTxtRemark">
                            <div>
                                <textarea name="txtOrderRemark" rows="4" cols="20" id="txtOrderRemark" style="width:97%;"></textarea></div>
                        </td>
                        <td id="tdTxtStatusShuoMing" nowrap="nowrap" style="display: none">
                            <div>
                                <textarea name="txtStatusShuoMing" rows="4" cols="20" id="txtStatusShuoMing" style="width:97%;"></textarea></div>
                        </td>

                        <td id="tdInternalNotes" nowrap="nowrap" style="display: none">
                            <div>
                                <textarea name="txtInternalNotes" rows="4" cols="20" id="txtInternalNotes" style="width:97%;"></textarea></div>
                        </td>

                    </tr>
                </table>
            </td>
            <td class="right-dt-a">
            </td>
        </tr>
        <tr>
            <td class="bottom-dt-a">
            </td>
            <td class="bottom-dt-b">
            </td>
            <td class="bottom-dt-c">
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <table align="right" cellpadding="0" cellspacing="0" style="height: 40px">
                    <tr>
                        <td>
                            <input type="image" name="imgbtnExaLog" id="imgbtnExaLog" src="../image/SaleOrder/bottom_examine.png" onclick="return showExaInfo();" style="height:27px;width:72px;border-width:0px;" />
                            <input type="image" name="imgbtnSave" id="imgbtnSave" src="../image/SaleOrder/button-submit.png" onclick="return CheckForms();" style="height:27px;width:72px;border-width:0px;" />
                            <input type="image" onclick="parent.winclose();" src="../image/SaleOrder/button-close.png"
                                style="width: 72px; height: 27px" />
                        </td>
                        <td style="width: 10px">
                        </td>
                        <td>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
            </td>
        </tr>
    </table>
    <div>
        <div class="showDiv" id="sc" style="width: 80px; background: #ccc; margin-left: 5px;
            cursor: pointer; float: left;">
            SCè¯å®¡å¬å¼</div>
        <div class="showDiv" id="sm" style="width: 80px; background: #ccc; margin-left: 5px;
            cursor: pointer; float: left;">
            SMè¯å®¡å¬å¼</div>
        <div class="showDiv" id="gm" style="width: 80px; background: #ccc; margin-left: 5px;
            cursor: pointer; float: left;">
            GMè¯å®¡å¬å¼</div>
    </div>
    <div style="width: 98%; overflow: scroll;">
        <div id="SalorDivLiRun" style="color: Red; display: none;">
            <table id='express'> <tr><td style='text-align:right;'>å©æ¶¦=</td><td>æ»é¢</td><td>-ï¼</td><td>åçæ åä»·</td><td>+</td><td>ç²¾å</td><td>*</td><td>ææ£</td><td>+</td><td>åä¸é©</td><td>*</td><td>
ææ£</td><td>+</td><td>å»¶ä¿</td><td>+</td><td>ææ­</td><td>+</td><td>ç¹å«è§æ ¼</td><td>+</td><td> è½¦è¹ç¨</td><td>+</td><td>éç</td><td>+</td><td>å¼ºé©</td><td>-</td><td>å¼ºé©æ¶ç</td><td>-</td><td>å¶ä»</td><td>-</td><td>å¶ä»</td><td></td><td>)+</td><td>ä¼æ å¹åº¦</td><td></tr>
<tr><td>-137000.00=</td><td>1750.00</td><td>-ï¼</td><td>140000.00</td><td>+</td><td>0.00</td><td>*</td><td>0.00</td><td>+</td><td>0.00</td><td>*</td><td>
0.00</td><td>+</td><td>0.00</td><td>+</td><td>0.00</td><td>+</td><td>0.00</td><td>+</td><td> 300.00</td><td>+</td><td>500.00</td><td>+</td><td>950.00</td><td>-</td><td>0.00</td><td>-</td><td>0.00</td><td>-</td><td>0.00</td><td></td><td>)+</td><td>3000.00</td><td></tr></table>
        </div>
        <div id="SalorMaDivLiRun" style="color: Red; display: none;">
            <table id='express'> <tr><td style='text-align:right;'>å©æ¶¦=</td><td>æ»é¢</td><td>-ï¼</td><td>åçæ åä»·</td><td>+</td><td>ç²¾å</td><td>*</td><td>ææ£</td><td>+</td><td>åä¸é©</td><td>*</td><td>
ææ£</td><td>+</td><td>å»¶ä¿</td><td>+</td><td>ææ­</td><td>+</td><td>ç¹å«è§æ ¼</td><td>+</td><td> è½¦è¹ç¨</td><td>+</td><td>éç</td><td>+</td><td>å¼ºé©</td><td>-</td><td>å¼ºé©æ¶ç</td><td>-</td><td>å¶ä»</td><td>-</td><td>å¶ä»</td><td></td><td>)+</td><td>ä¼æ å¹åº¦</td><td></tr>
<tr><td>-136000.00=</td><td>1750.00</td><td>-ï¼</td><td>140000.00</td><td>+</td><td>0.00</td><td>*</td><td>0.00</td><td>+</td><td>0.00</td><td>*</td><td>
0.00</td><td>+</td><td>0.00</td><td>+</td><td>0.00</td><td>+</td><td>0.00</td><td>+</td><td> 300.00</td><td>+</td><td>500.00</td><td>+</td><td>950.00</td><td>-</td><td>0.00</td><td>-</td><td>0.00</td><td>-</td><td>0.00</td><td></td><td>)+</td><td>4000.00</td><td></tr></table>
        </div>
        <div id="ZhongJiLiDivLiRun" style="color: Red; display: none;">
            <table id='express'> <tr><td style='text-align:right;'>å©æ¶¦=</td><td>æ»é¢</td><td>-ï¼</td><td>åçæ åä»·</td><td>+</td><td>ç²¾å</td><td>*</td><td>ææ£</td><td>+</td><td>åä¸é©</td><td>*</td><td>
ææ£</td><td>+</td><td>å»¶ä¿</td><td>+</td><td>ææ­</td><td>+</td><td>ç¹å«è§æ ¼</td><td>+</td><td> è½¦è¹ç¨</td><td>+</td><td>éç</td><td>+</td><td>å¼ºé©</td><td>-</td><td>å¼ºé©æ¶ç</td><td>-</td><td>å¶ä»</td><td>-</td><td>å¶ä»</td><td></td><td>)+</td><td>ä¼æ å¹åº¦</td><td></tr>
<tr><td>-123999.00=</td><td>1750.00</td><td>-ï¼</td><td>140000.00</td><td>+</td><td>0.00</td><td>*</td><td>0.00</td><td>+</td><td>0.00</td><td>*</td><td>
0.00</td><td>+</td><td>0.00</td><td>+</td><td>0.00</td><td>+</td><td>0.00</td><td>+</td><td> 300.00</td><td>+</td><td>500.00</td><td>+</td><td>950.00</td><td>-</td><td>0.00</td><td>-</td><td>0.00</td><td>-</td><td>0.00</td><td></td><td>)+</td><td>16001.00</td><td></tr></table></div>
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="EBB960CA" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWHwLIquzJDAKt7q3LAgLvkOacDwKsvtPCAwLprPyVBQLLlJmHDgKbg/GCCALkucbwDwKz7qO8BwL8n6ngCgKV7LmVCALcyNyfDgKd+pD+CgKMos/ZBQLoh/a9AQLJnZXjDAKu+42nBALOsreVCQLKrtzZAwLKuZ78BwLoh/a9AQKf/OyfBwKY2PGeCgKWp6DsBgKJp6DsBgL9lbbJCAK1ocH5CQK59qDwAgLunszCDwKH6f+5CQLkv+DqCw7JGnOXN5UcHBNEBzRxoe6dy+Aj" />
</div></form>
    <script>
        $(function () {
            $(".showDiv").click(function () {
                $(this).css("background", "yellow").show().siblings().css("background", "#ccc");

                if (this.id == "sc") {
                    $("#SalorDivLiRun").show().siblings().hide();
                }
                if (this.id == "sm") {
                    $("#SalorMaDivLiRun").show().siblings().hide();
                }
                if (this.id == "gm") {
                    $("#ZhongJiLiDivLiRun").show().siblings().hide();
                }
            });
        });
    
    </script>
</body>
</html>