<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title>
    <style type="text/css">
        a
        {
            display: none;
        }
        .cssTdLeft
        {
             text-align:right;
           
            }
        
        #txtRemark
        {
        }
        #txtCustRequest
        {
        }
        #mainTL td
        {
            
        }
        .mustInCss
        {
        }
        .mustInCss1
        {
            border: 1px solid red;
        }
    </style>
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<script language="javascript" type="text/javascript">


    $(function () {
         $("#lnkbtnSCSJZhiHuang").click(function () {
            window.open("ZhiHuanPrint.aspx?CustGuid=" + $("#HiddCustGuid").val());

        });
        $('#lnkSureLost').hide();
        $('#txtCustName').change(function () {
            $("#btnSave").linkbutton('enable');
            $("#exitstspan")[0].innerHTML = "";
            $("#SCSJCustGuid").val("");
            $("#txtCustTel").val("");
            $("#txtCustMobile").val("");
            $("#txtCustAddress").val("");
         
        });


        //.
        $("#ddlLoseReason").combobox({
            onSelect: function (item) {
                $('#txtLoseReason').val(item.text);
            }
        });
        $("#txtSalor").focusin(function () {
            var res = window.showModalDialog('../Index/userSelect.aspx');
            if (res) {
                res = res.replace(/,/g, '');
                var salorinfo = res.split('|');
                $("#txtSalor").val(salorinfo[0]);
                $("#hiddSalorGuid").val(salorinfo[1]);

            }
            $("#txtSalor").blur();

        });
        //将试乘试驾转化为潜在客户
        $("#lnkShiChengShiJia").click(function () {
            var scsj = window.showModalDialog("SCSJSelectList.aspx", "", "dialogWidth:640px;");
            if (scsj != null) {
                var custinfo = scsj.split('|');
                $("#SCSJCustGuid").val(custinfo[0]);
                $("#txtCustName").val(custinfo[1]);
                $("#txtCustTel").val(custinfo[4]);
                $("#txtCustMobile").val(custinfo[3]);
                $("#txtCustAddress").val(custinfo[7]);
                $('#ddlCustSex').combobox('setText', custinfo[2]);
                $('#ddlCustJob').combobox('setText', custinfo[5]);
                $('#ddlSourceFrom').combobox('setText', custinfo[6]);
                $("#btnSave").linkbutton('enable');
            }

        });
    });
    function CustLost() {

        $('.trLoseReason').removeAttr("style");
        $('#lnklost').hide();
        $('#lnkSureLost').removeAttr("style");
        return false;
    }

    function ChengJiaoConfirm() {
        $.messager.confirm('温馨提示', '您确定该客户成交吗?', function (r) {
            if (r) {
                __doPostBack('lnkChengJiao', '');
                return true;
            }
            else {
                return false;
            }
        });
        return false;
    }


    function saveCheck() {
        var flag = true;
        $.get("CheckCustIsQZKH.ashx", { CustGuid: $("#SCSJCustGuid").val() }, function (data) {
            if (data == '1') {
                $("#exitstspan").append("已存在此客户");
                $("#btnSave").linkbutton('disable');
                return false;
            }

        });
        flag = $("#form1").form("validate");
        $(".mustInCss").each(function (index, dom) {
            var v = dom.type == "text" ? dom.value : dom[dom.selectedIndex].text; ;

            if (v == "" || v == null) {
                $(dom).attr("class", "mustInCss1");
                flag = false;
            }
        });

        if (!flag) {
            // $.messager.alert("温馨提示", "请完成必填项", "info");
            alert("请完成必填项");
            return false;
        } else {



            var oldSalorGuid = $("#HiddOldSalorGuid").val();
            var newSalorGuid = $("#hiddSalorGuid").val();
            if (oldSalorGuid != null) {
                if (oldSalorGuid.toLowerCase() != newSalorGuid.toLowerCase()) {
                    var flag = false;
                    $.messager.confirm('温馨提示', '您确定将潜在客户(<span style="color:blue;">' + $("#txtCustName").val() + '</span>)由<span style="color:red;">' + $('#HiddOldSalorName').val() + '</span>转给<span style="color:red;"> ' + $("#txtSalor").val() + '</span>?', function (r) {
                        if (r) {
                            __doPostBack('btnSave', '');
                        }

                    });
                    return false;
                }
                else {
                    return true;
                }
            }
            else {
                return true;
            }
        }
        return false;
    }
  
</script>
<body>
    <form name="form1" method="post" action="QianZaiKeHuDetial.aspx?CustGuid=&amp;type=Add&amp;+time=Fri+Jan+09+2015+09%3a44%3a07+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTcyNDA5ODU3NQ9kFgICAw9kFhwCDw8PFgIeB1Zpc2libGVoZGQCEw8PFgIfAGhkZAIlDxAPFgYeDkRhdGFWYWx1ZUZpZWxkBQFkHg1EYXRhVGV4dEZpZWxkBQF2HgtfIURhdGFCb3VuZGdkEBUFBVAx57qnBVAy57qnBVAz57qnBVA057qnABUFJDIzZGZlZTkwLTc5YzktNDJiOS1hNTgzLThjNTU1NmZkZWI1YiRmODExNTdiMy0zZjA4LTRhYWMtOTNkNi05YTBjYzAzYjE4OWUkZWI4YTdiMjctMDNmZi00Y2QwLWI4NzYtOWM1M2NkZDVlMDI4JDUyODQyYTQ3LTM0ZDYtNDY3Ni04MzM0LWI5ZmFkYmQ2OTljNgAUKwMFZ2dnZ2dkZAInDxAPFgYfAQUBZB8CBQF2HwNnZBAVBgnlhazliqHlkZgJ566h55CG6ICFBuWFtuS7lgbogIHluIgG5Liq5L2TABUGJGM5NzU1OWI5LWEyYTQtNDZiZi1hNjIyLTViYjBmNDIwZGUyMSQ0MTJiODk5Mi0wZGM4LTRhOGUtYmRmYi02YzRhMzBmZTM1NWIkMGI5M2YwYTktYTM5Mi00N2ZlLWFlOTYtOTk1NGQ0MmFiMTU2JGVkMmJlMjQyLTYzOGEtNDNmMS04YzkzLTc0Y2IxNTk5YmQzMSRjOWFhNmYyOC01YmJiLTRhOTUtYWZjZS0xN2Q5ZjQyMjE5NTYAFCsDBmdnZ2dnZ2RkAikPEA8WBh8BBQFkHwIFAXYfA2dkEBUNBuaxn+ilvwnolYnlsq3ljr8G5YW25LuWCeS4sOmhuuWOvwnlubPov5zljr8J5qKF5rGf5Yy6CeaiheWOv+WMugnlpKfln5Tljr8J5LqU5Y2O5Y6/CeWFtOWugeW4ggbnpo/lu7oG5r2u5rGVABUNJDNhNDNiZWQ1LWYwOTAtNDM4OS05YmZlLWE2Yjc4MGY5NjY0YiRlYTJjYWU5YS1iNjVhLTRmOTUtYTY3MS00NTNkNWJmYzgzNzIkOTIzZmIwNjItZmE3Yi00NjhkLWFjZTItYzJmMTAwZDc4OTQ0JGVjNjkxYWIyLWY5ZDMtNGU1NC05NWM3LWQzODQ4N2VkOWZmNCQ1OWJhN2EwYS0zYWE0LTRmNTUtYTVjYy04MzQyMTk1OTQxYzEkYjMzMmRlNmYtZDFjZS00ZWY1LTkxMTMtOTMwNmU4MjNmNDE5JDY4MTc5OWVkLTI3Y2YtNDU5Zi05OTVkLWY2NzdlMTRjZGFhYSQxYjhiNmFmZi0yMDllLTQ0NTAtOThiNy0xNzM0NjE3NTY1MjIkYjIxYmNiOTYtM2NmNC00NTBkLTg2MGQtN2QwMDY0NTRiMGZlJDVjNmFjNjgwLTA1NjgtNDQwYy1iMTM1LTdkOTNkZmZlMTA2NiQzOWRmMGY5My00ZGNlLTQzMDUtYWY3Mi1iNjJmZTE1ZmI3ZmQkMDEwNjliNjUtNjQ4Ni00NTZhLWJhNTQtM2RlZWJkMzA4OWViABQrAw1nZ2dnZ2dnZ2dnZ2dnZGQCKw8QDxYGHwEFAWQfAgUBdh8DZ2QQFQwJ5Y2h572X5ouJBuiKseWGoAnmma7mi4nlpJoG6ZSQ5b+XCeaZrumUkOaWrwI4NgblqIHpqbAJ5aSn6Zy4546LBueah+WGoARSQVY0CumcuOmBkzI3MDAAFQwkYjg4MmRiYzEtZDcyOS00YjhkLWJjNjUtOWJlYTAyZWYxYjMxJDgzMjMzODVhLTVhMDEtNDI2Yy1iMDJhLWFjOWI2Y2ZhODI0NSQ1OGM5ODJjMi00ZmRkLTQzYTItYmU5Yi00MjcwNDQ2NmQzZWMkYTJmMGZhNGQtZWVlYi00YjNkLTkxZjItYWE3MjU0ZTA2MTA0JDA0YTExMjQwLWQyNTItNDNlYi04ZmEyLWFiZjkzMTc0MDRjMSQ3OTJkZTE2NC01NGVkLTRjMjctOWFhYi1iZGI1Y2VjNGZkMmQkZmEwZjEwYzQtY2YyYy00MjNhLWFlODEtOTZlMzVkYTM0NjhiJDA4MzY5ODQzLWFiYWEtNDMzZS1hODRmLTgyNTAxOWE2ZGI0MSRjNGVlNjhmZi04Y2FmLTRlNDgtYjEzZC1hMDllMWFkMzhkNTUkNzg5ZmU3ZGUtZTdjZS00MjRkLTk5YmQtNGE3NzI4MjRjYjZkJDY5NmRkZWM5LWYxOTItNDg2NS1hMGRlLTM2ODgwNWM1ZDlmMgAUKwMMZ2dnZ2dnZ2dnZ2dnZGQCLQ8QDxYGHwEFAWQfAgUBdh8DZ2QQFQ0G57Sr6ImyBuajleiJsgbnmb3oibIG6ZO26ImyBum7keiJsgbnuqLoibIG6JOd6ImyBue7v+iJsgznj43nj6Dnmb3oibIG5qmZ6ImyBueBsOiJsgnpk4LpnZLpk5wAFQ0kMTEwMGVjYzgtYjc1OC00NDBhLTgzM2YtMzYwNWZhMTc1ZWQ0JDQzMDQxZjFiLTk1OGMtNDk2Ny1iZTU5LWRmN2UxOWY2NjFmNSRkZjk5Y2MyZC0zYjdhLTQ0ZDItYmM1NC1kOTdjNzYyYmU4YWEkMTc0ZDRhYmItMWQwOS00MTNmLWE4ZGItYjhjMWE0NTFiMzJhJDkzOWFlMDRkLTZhYzgtNGE3Yi1iMmIzLTA5NGQyNmFhNTcyNyRkN2M1YjY3NS1iNzlhLTQ3ZmQtYTRkNS0zOGI5NzU1N2Q3ZTgkMGExZjg2YmQtNTI4Yi00NDJmLThiMWYtZmZiYTViY2QwNjIwJDBhNDlhY2VmLTVkMjEtNDE2OS04MjY4LWVmYmE0NjUxMzM2ZSRiMDA3OTc4Zi1hOWVjLTQ2YmMtODVmNC0wMDM3NzQxYmM2MjkkN2EzOTkwMmItMDUyMC00YzFjLThmNzMtOGMwNjk5MmM1Njc3JDVmM2VkYzMxLWIwZWEtNDhlZC04ZTM3LTk4NGY2ZjJkNzZmMSQ5ZWIyYmIyOC1lMmMzLTRjZmUtYWY1Ny02ZWQ0Y2Y2YjNiMjIAFCsDDWdnZ2dnZ2dnZ2dnZ2dkZAI9Dw8WAh4EVGV4dAUIMjAxNS0xLTlkZAJBDxAPFgYfAQUBZB8CBQF2HwNnZBAVBgzkvIHkuJrotK3ovaYM6L2m6L6G5om55Y+RDOS4quS6uui0rei9pgzmlL/lupzph4fotK0G5YW25LuWABUGJDE5YjgxZGEyLTcyMDAtNDk5ZS1hYzZiLWJlZGI3NmU1ZDYyMyRiOGY4NDI4OC1hNmE3LTQ5MDktODNhMC04YjNkY2M4MDcxNzckMWQyYjlhODAtZDQ2MS00NTRjLWI4MjctNjgzMzU2ZDBhYWY5JGQ3OTIyM2I4LTUwMTktNDU0OS1iNDIzLTA3NDU5ODMxNzJiMyRkZjliZjRmNC03OTI2LTRiNTQtOWRlZC0yZjg4MzM1ZWMwMWMAFCsDBmdnZ2dnZ2RkAkMPEA8WBh8BBQFkHwIFAXYfA2dkEBUEBuaWsOi0rQznva7mjaLovabovoYG5aKe6LStABUEJGIzMzAyNDk5LWExNzgtNDI3MS1hNzRlLWI2MDM4YmEwMTAzZCQxYTliZmM3OC0wOTIyLTRkMTQtODIxNi1iMmZhMDQ4MGY0ZDYkZjRkMjRlNTEtMjZkZS00MjZmLThlNmEtMTkwNDNhNGNlYWEwABQrAwRnZ2dnZGQCRw8QDxYGHwEFAWQfAgUBdh8DZ2QQFQYG5bGV5Y6FBuaJueWPkQnlpKflrqLmiLcG572R54K5A0RDQwAVBiQ0NzQ4NTdkMC1kNDg1LTRhZjQtOTA1OC0yZTEwOWU4OTRlYmIkZWJkOGJiMzctODdhMC00ZDU3LWEzODEtZWExZDA1ZDhmM2RhJDJhZDY4YWVmLThmNjMtNDg5Ny04N2JkLWVmMzAyZTI1NzAxNSQ4ZmQzZDM5NC02ZGU0LTQ5MTEtYWEyMi05NjhmM2Y4ZWZlNDYkM2U3MTg3ZDktMzRiZS00Y2E1LTk2NjMtZmRiZTZhNThmZjM3ABQrAwZnZ2dnZ2dkZAJJDxAPFgYfAQUBZB8CBQF2HwNnZBAVAwnlhazlj7jnlKgG5a6255SoABUDJDgxNjMyNzdlLWYxNjYtNDI4ZC1iNmQ2LTg1YzA2OTExMjRiNCRjZmZhYTY0Yi01ZWZlLTQ4NGQtYTNkNi0xMjcyNjBhNzY1YzEAFCsDA2dnZ2RkAlEPEA8WBh8BBQFkHwIFAXYfA2dkEBUIDOaIt+WkluW5v+WRigzlpb3lj4vku4vnu40G5YW25LuWBueUteinhgbnlLXlj7AG572R57ucBuaKpee6uAAVCCRjM2ZlMzI5Yi0xMjdlLTRlMzktYWQ3OS0yNDQ0ZGExMzU1ODMkZDJhOTQ1NzUtMzNmYS00MTc5LTlkMzUtMDk1MjhhOTdjNDM5JDc5MGMwMTc0LTExYjAtNDA3Zi1iNzc5LTRkZDljMjVjZDBhMCQ5YTc4ZWQyNy0zNThkLTRmZTQtODRkYS1jNTA5MThiZGQ0ZjYkNjM1ZDVkNDMtNzBkYy00NmI1LWJlZjYtODFjMTdkMTM5ODcwJDcyZjM5NjA0LWQ3YjUtNDczZC04NzI0LTFjZGM4ZDQ1M2QxZCQ5ZGZkYTZkZC0wMTU4LTRjYzEtYjRlMi00OWJkZDE2ZWJjOTMAFCsDCGdnZ2dnZ2dnZGQCWw8QDxYGHwEFAWQfAgUBdh8DZ2QQFQMS5peg5rOV57un57ut6IGU57O7D+enu+awkee+juWbveS6hgAVAyQ2NTg1NmYxZS0xMTVjLTRiOTEtOTc1YS1kOGY2ZTkzMGFkYzAkYjk2NzA0ODQtYzQyMC00MGM4LWFjMGQtYzcwNWIzOWU1NThiABQrAwNnZ2dkZGR+nxQXnRtyt4VDDBAHTBTPjUWzHw==" />
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


    <input type="hidden" name="HiddOldSalorGuid" id="HiddOldSalorGuid" value="a17a7061-9f34-4ede-828b-3b1396ec4eaf" />
    <input type="hidden" name="hiddSalorGuid" id="hiddSalorGuid" value="a17a7061-9f34-4ede-828b-3b1396ec4eaf" />
    <input type="hidden" name="HiddCustGuid" id="HiddCustGuid" />
    <input type="hidden" name="HiddOldSalorName" id="HiddOldSalorName" value="张小平" />
    <input type="hidden" name="SCSJCustGuid" id="SCSJCustGuid" />
    <div>
        <table style="width: 765px; border-bottom: 1px solid #b8b8b8;">
            <tr>
                <td class="titlebg">
                    <span class="titleSpan">(售前管理)潜在客户</span>
                </td>
                 <td id="tdSalorName" style="display: none;">
                </td>
                <td style=" text-align:right;">
                    <a id="LinkButton1" href="javascript:__doPostBack('LinkButton1','')"></a>
                
                    <a id="lnkShiChengShiJia" class="easyui-linkbutton" href="javascript:__doPostBack('lnkShiChengShiJia','')">试乘试驾</a>
                
                    <a id="lnkbtnSCSJZhiHuang" class="easyui-linkbutton" href="##">置换信息表</a>
               
                    
                    <a id="lnkSureLost" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSureLost','')">确定流失</a>
               
                    
                
                    <a onclick="return saveCheck();" id="btnSave" class="easyui-linkbutton" href="javascript:__doPostBack('btnSave','')">保存</a>
              
                    <a id="btnCancel" class="easyui-linkbutton" href="javascript:parent.winClose()">取消</a>
                </td>
            </tr>
        </table>
        <table id="mainTL" align="center"   style="margin: 10px 0 0 20px;  ">
            <tbody>
                <tr>
                    <td style=" text-align:right">
                         <span style="color: blue;">*</span>客户名称：
                    </td>
                    <td class="cssTdRight">
                        <input name="txtCustName" type="text" maxlength="8" id="txtCustName" class="easyui-validatebox mustInCss " missingMessage="客户姓名必须填写" required="true" style="width:140px;" />
                        <span id="exitstspan" style="color: Red"></span>
                        
                    </td>

                    <td colspan="2">
                        <span id="rdlistFirstComeType"><input id="rdlistFirstComeType_0" type="radio" name="rdlistFirstComeType" value="来电" /><label for="rdlistFirstComeType_0">来电</label><input id="rdlistFirstComeType_1" type="radio" name="rdlistFirstComeType" value="来店" checked="checked" /><label for="rdlistFirstComeType_1">来店</label><input id="rdlistFirstComeType_2" type="radio" name="rdlistFirstComeType" value="车展" /><label for="rdlistFirstComeType_2">车展</label><input id="rdlistFirstComeType_3" type="radio" name="rdlistFirstComeType" value="购车客户" /><label for="rdlistFirstComeType_3">购车客户</label></span>
                    </td>
                </tr>
                <tr>
                    <td class="cssTdLeft">
                        固定电话：
                    </td>
                    <td class="cssTdRight">
                        <input name="txtCustTel" type="text" maxlength="12" id="txtCustTel" style="width:140px;" />
                    </td>
                    <td class="cssTdLeft" style="width:80px;">
                        <span style="color: blue;">*</span>移动电话：
                    </td>
                    <td class="cssTdRight">
                        <input name="txtCustMobile" type="text" maxlength="12" id="txtCustMobile" class="mustInCss" required="true" style="width:140px;" />
                    </td>
                </tr>
                <tr>
                    <td class="cssTdLeft">
                        地&nbsp;&nbsp;&nbsp; 址：
                    </td>
                    <td colspan="3">
                        <input name="txtCustAddress" type="text" maxlength="60" id="txtCustAddress" style="width:426px;" />
                    </td>
                </tr>
                <tr>
                    <td class="cssTdLeft">
                        <span style="color: blue;">*</span>性&nbsp;&nbsp;&nbsp; 别：
                    </td>
                    <td class="cssTdRight ">
                        <select name="ddlCustSex" id="ddlCustSex" class=" mustInCss" style="width:144px;">
	<option selected="selected" value="男">男</option>
	<option value="女">女</option>

</select>
                    </td>
                    <td class="cssTdLeft">
                        客户等级：
                    </td>
                    <td class="cssTdRight">
                        <select name="ddlCustDengJi" id="ddlCustDengJi" style="width:144px;">
	<option value="23dfee90-79c9-42b9-a583-8c5556fdeb5b">P1级</option>
	<option value="f81157b3-3f08-4aac-93d6-9a0cc03b189e">P2级</option>
	<option value="eb8a7b27-03ff-4cd0-b876-9c53cdd5e028">P3级</option>
	<option value="52842a47-34d6-4676-8334-b9fadbd699c6">P4级</option>
	<option selected="selected" value=""></option>

</select>
                    </td>
                </tr>
                <tr>
                    <td class="cssTdLeft">
                       <span style="color: blue;">*</span> 职&nbsp;&nbsp;&nbsp; 业：
                    </td>
                    <td class="cssTdRight ">
                        <select name="ddlCustJob" id="ddlCustJob" class="mustInCss" data-options="required:true" missingMessage="请选择职业" style="width:144px;">
	<option value="c97559b9-a2a4-46bf-a622-5bb0f420de21">公务员</option>
	<option value="412b8992-0dc8-4a8e-bdfb-6c4a30fe355b">管理者</option>
	<option value="0b93f0a9-a392-47fe-ae96-9954d42ab156">其他</option>
	<option value="ed2be242-638a-43f1-8c93-74cb1599bd31">老师</option>
	<option value="c9aa6f28-5bbb-4a95-afce-17d9f4221956">个体</option>
	<option selected="selected" value=""></option>

</select>
                    </td>
                    <td class="cssTdLeft">
                        <span style="color: blue;">*</span>所属地区：
                    </td>
                    <td class="cssTdRight ">
                        <select name="ddlCustArea" id="ddlCustArea" class=" mustInCss" data-options="required:true" missingMessage="请选择职业" style="width:144px;">
	<option value="3a43bed5-f090-4389-9bfe-a6b780f9664b">江西</option>
	<option value="ea2cae9a-b65a-4f95-a671-453d5bfc8372">蕉岭县</option>
	<option value="923fb062-fa7b-468d-ace2-c2f100d78944">其他</option>
	<option value="ec691ab2-f9d3-4e54-95c7-d38487ed9ff4">丰顺县</option>
	<option value="59ba7a0a-3aa4-4f55-a5cc-8342195941c1">平远县</option>
	<option value="b332de6f-d1ce-4ef5-9113-9306e823f419">梅江区</option>
	<option value="681799ed-27cf-459f-995d-f677e14cdaaa">梅县区</option>
	<option value="1b8b6aff-209e-4450-98b7-173461756522">大埔县</option>
	<option value="b21bcb96-3cf4-450d-860d-7d006454b0fe">五华县</option>
	<option value="5c6ac680-0568-440c-b135-7d93dffe1066">兴宁市</option>
	<option value="39df0f93-4dce-4305-af72-b62fe15fb7fd">福建</option>
	<option value="01069b65-6486-456a-ba54-3deebd3089eb">潮汕</option>
	<option selected="selected" value=""></option>

</select>
                    </td>
                </tr>
                <tr>
                    <td class="cssTdLeft">
                        <span style="color: blue;">*</span>意向车型：
                    </td>
                    <td class="cssTdRight ">
                        <select name="ddlCarModel" id="ddlCarModel" class="mustInCss" style="width:144px;">
	<option value="b882dbc1-d729-4b8d-bc65-9bea02ef1b31">卡罗拉</option>
	<option value="8323385a-5a01-426c-b02a-ac9b6cfa8245">花冠</option>
	<option value="58c982c2-4fdd-43a2-be9b-42704466d3ec">普拉多</option>
	<option value="a2f0fa4d-eeeb-4b3d-91f2-aa7254e06104">锐志</option>
	<option value="04a11240-d252-43eb-8fa2-abf9317404c1">普锐斯</option>
	<option value="792de164-54ed-4c27-9aab-bdb5cec4fd2d">86</option>
	<option value="fa0f10c4-cf2c-423a-ae81-96e35da3468b">威驰</option>
	<option value="08369843-abaa-433e-a84f-825019a6db41">大霸王</option>
	<option value="c4ee68ff-8caf-4e48-b13d-a09e1ad38d55">皇冠</option>
	<option value="789fe7de-e7ce-424d-99bd-4a772824cb6d">RAV4</option>
	<option value="696ddec9-f192-4865-a0de-368805c5d9f2">霸道2700</option>
	<option selected="selected" value=""></option>

</select>
                    </td>
                    <td class="cssTdLeft">
                        颜&nbsp;&nbsp;&nbsp;&nbsp; 色：
                    </td>
                    <td class="cssTdRight">
                        <select name="ddlCarColor" id="ddlCarColor" style="width:144px;">
	<option value="1100ecc8-b758-440a-833f-3605fa175ed4">紫色</option>
	<option value="43041f1b-958c-4967-be59-df7e19f661f5">棕色</option>
	<option value="df99cc2d-3b7a-44d2-bc54-d97c762be8aa">白色</option>
	<option value="174d4abb-1d09-413f-a8db-b8c1a451b32a">银色</option>
	<option value="939ae04d-6ac8-4a7b-b2b3-094d26aa5727">黑色</option>
	<option value="d7c5b675-b79a-47fd-a4d5-38b97557d7e8">红色</option>
	<option value="0a1f86bd-528b-442f-8b1f-ffba5bcd0620">蓝色</option>
	<option value="0a49acef-5d21-4169-8268-efba4651336e">绿色</option>
	<option value="b007978f-a9ec-46bc-85f4-0037741bc629">珍珠白色</option>
	<option value="7a39902b-0520-4c1c-8f73-8c06992c5677">橙色</option>
	<option value="5f3edc31-b0ea-48ed-8e37-984f6f2d76f1">灰色</option>
	<option value="9eb2bb28-e2c3-4cfe-af57-6ed4cf6b3b22">铂青铜</option>
	<option selected="selected" value=""></option>

</select>
                    </td>
                </tr>
                <tr>
                    <td class="cssTdLeft">
                        计划车价：
                    </td>
                    <td class="cssTdRight">
                        <input name="txtCarPrice" type="text" value="0.00" maxlength="14" id="txtCarPrice" class="easyui-numberbox" missingMessage="计划车价必须填写" required="true" />
                    </td>
                    <td class="cssTdLeft">
                        欲购时间：
                    </td>
                    <td class="cssTdRight">
                        <input name="txtPlanBuyDate" type="text" value="2015-1-9" maxlength="30" id="txtPlanBuyDate" class="easyui-datebox" style="width:144px;" />
                    </td>
                </tr>
                <tr>
                    <td class="cssTdLeft">
                        <span style="color: blue;">*</span>需求描述：
                    </td>
                    <td colspan="3" class="cssTdLong ">
                        <input name="txtCustRequest" type="text" maxlength="50" id="txtCustRequest" class="easyui-validatebox mustInCss" missingMessage="请填写需求描述" required="true" style="width:426px;" />
                    </td>
                </tr>
                <tr>
                    <td class="cssTdLeft">
                        原有车型：
                    </td>
                    <td class="cssTdRight">
                        <input name="txtOldCarModel" type="text" maxlength="15" id="txtOldCarModel" style="width:140px;" />
                    </td>
                    <td class="cssTdLeft">
                        原车牌号：
                    </td>
                    <td class="cssTdRight">
                        <input name="txtOldChePaiHao" type="text" maxlength="8" id="txtOldChePaiHao" style="width:140px;" />
                    </td>
                </tr>
                <tr>
                    <td class="cssTdLeft">
                        原车颜色：
                    </td>
                    <td class="cssTdRight">
                        <input name="txtOldCarColor" type="text" maxlength="10" id="txtOldCarColor" style="width:140px;" />
                    </td>
                    <td class="cssTdLeft">
                        原车车龄：
                    </td>
                    <td class="cssTdRight">
                        <input name="txtOldCarAge" type="text" maxlength="2" id="txtOldCarAge" style="width:140px;" />
                    </td>
                </tr>
                <tr>
                    <td class="cssTdLeft">
                        首洽时间：
                    </td>
                    <td class="cssTdRight">
                        <input name="txtFirstComeDate" type="text" value="2015-1-9" maxlength="20" readonly="readonly" id="txtFirstComeDate" style="width:140px;" />
                    </td>
                    <td class="cssTdLeft">
                        维系时间：
                    </td>
                    <td class="cssTdRight">
                        <input name="txtWeiXiDate" type="text" value="2015-1-12" maxlength="20" id="txtWeiXiDate" class="easyui-datebox" style="width:144px;" />
                    </td>
                </tr>
                <tr>
                    <td class=" cssTdLeft">
                        客户性质：
                    </td>
                    <td class="style1">
                        <select name="ddlCustXingZhi" id="ddlCustXingZhi" style="width:144px;">
	<option value="19b81da2-7200-499e-ac6b-bedb76e5d623">企业购车</option>
	<option value="b8f84288-a6a7-4909-83a0-8b3dcc807177">车辆批发</option>
	<option value="1d2b9a80-d461-454c-b827-683356d0aaf9">个人购车</option>
	<option value="d79223b8-5019-4549-b423-0745983172b3">政府采购</option>
	<option value="df9bf4f4-7926-4b54-9ded-2f88335ec01c">其他</option>
	<option selected="selected" value=""></option>

</select>
                    </td>
                    <td class=" cssTdLeft">
                        <span style="color: blue;">*</span>购置类别：
                    </td>
                    <td class="style1 ">
                        <select name="ddlGouZhiLeiBie" id="ddlGouZhiLeiBie" class="mustInCss" style="width:144px;">
	<option value="b3302499-a178-4271-a74e-b6038ba0103d">新购</option>
	<option value="1a9bfc78-0922-4d14-8216-b2fa0480f4d6">置换车辆</option>
	<option value="f4d24e51-26de-426f-8e6a-19043a4ceaa0">增购</option>
	<option selected="selected" value=""></option>

</select>
                    </td>
                </tr>
                <tr style="display: none;">
                    <td class="cssTdLeft">
                        购置方式：
                    </td>
                    <td class="cssTdRight">
                        <select name="ddlGouCheFangShi" id="ddlGouCheFangShi" style="width:144px;">


</select>
                    </td>
                    <td class="cssTdLeft">
                        销售渠道：
                    </td>
                    <td class="cssTdRight">
                        <select name="ddlSaleQuDao" id="ddlSaleQuDao" style="width:144px;">
	<option value="474857d0-d485-4af4-9058-2e109e894ebb">展厅</option>
	<option value="ebd8bb37-87a0-4d57-a381-ea1d05d8f3da">批发</option>
	<option value="2ad68aef-8f63-4897-87bd-ef302e257015">大客户</option>
	<option value="8fd3d394-6de4-4911-aa22-968f3f8efe46">网点</option>
	<option value="3e7187d9-34be-4ca5-9663-fdbe6a58ff37">DCC</option>
	<option selected="selected" value=""></option>

</select>
                    </td>
                </tr>
                <tr>
                    <td class="cssTdLeft">
                        车辆用途：
                    </td>
                    <td class="cssTdRight">
                        <select name="ddlCarYongTu" id="ddlCarYongTu" style="width:144px;">
	<option value="8163277e-f166-428d-b6d6-85c0691124b4">公司用</option>
	<option value="cffaa64b-5efe-484d-a3d6-127260a765c1">家用</option>
	<option selected="selected" value=""></option>

</select>
                    </td>
                    <td class="cssTdLeft">
                        车辆展示：
                    </td>
                    <td class="cssTdRight">
                        <select name="ddlCarZhanShi" id="ddlCarZhanShi" style="width:144px;">
	<option value="是">是</option>
	<option value="否">否</option>

</select>
                    </td>
                </tr>
                <tr>
                    <td class="cssTdLeft">
                        是否试驾：
                    </td>
                    <td class="cssTdRight">
                        <select name="ddlShiJia" id="ddlShiJia" style="width:144px;">
	<option value="是">是</option>
	<option value="否">否</option>

</select>
                    </td>
                    <td class="cssTdLeft">
                        状&nbsp;&nbsp;&nbsp; 态：
                    </td>
                    <td class="cssTdRight">
                        <select name="ddlStatus" id="ddlStatus" style="width:144px;">
	<option selected="selected" value="有效">有效</option>
	<option value="无效">无效</option>

</select>
                    </td>
                </tr>
                <tr>
                    <td class="cssTdLeft">
                       <span style="color: blue;">*</span>客户来源：
                    </td>
                    <td class="cssTdRight ">
                        <select name="ddlSourceFrom" id="ddlSourceFrom" class="mustInCss" data-options="required:true" style="width:144px;">
	<option value="c3fe329b-127e-4e39-ad79-2444da135583">户外广告</option>
	<option value="d2a94575-33fa-4179-9d35-09528a97c439">好友介绍</option>
	<option value="790c0174-11b0-407f-b779-4dd9c25cd0a0">其他</option>
	<option value="9a78ed27-358d-4fe4-84da-c50918bdd4f6">电视</option>
	<option value="635d5d43-70dc-46b5-bef6-81c17d139870">电台</option>
	<option value="72f39604-d7b5-473d-8724-1cdc8d453d1d">网络</option>
	<option value="9dfda6dd-0158-4cc1-b4e2-49bdd16ebc93">报纸</option>
	<option selected="selected" value=""></option>

</select>
                    </td>
                    <td class="cssTdLeft">
                        销 售 员：
                    </td>
                    <td class="cssTdRight">
                        <input name="txtSalor" type="text" value="张小平" maxlength="10" id="txtSalor" style="width:140px;" />
                    </td>
                </tr>
                <tr>
                    <td class="cssTdLeft">
                        备&nbsp;&nbsp;&nbsp; 注：
                    </td>
                    <td class="cssTdRight" colspan="3">
                        <input name="txtRemark" type="text" id="txtRemark" style="width:426px;" />
                    </td>
                </tr>
                <tr class="trLoseReason" >
                    
                    <td class="cssTdLeft">
                        流失原因：
                    </td>
                    <td class="cssTdRight" colspan="3">
                        <input name="txtLoseReason" type="text" maxlength="100" id="txtLoseReason" style="width:459px;" />
                    </td>
                </tr>
                <tr class="trLoseReason" style="visibility: hidden;">
                    <td class="cssTdLeft">
                        选择原因：
                    </td>
                    <td class="cssTdRight" colspan="3">
                        <select name="ddlLoseReason" id="ddlLoseReason" style="width:463px;">
	<option value="65856f1e-115c-4b91-975a-d8f6e930adc0">无法继续联系</option>
	<option value="b9670484-c420-40c8-ac0d-c705b39e558b">移民美国了</option>
	<option selected="selected" value=""></option>

</select>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="margin-top: 5px;" align="center">
            <tr>
               
            </tr>
        </table>
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="4E66C01F" />
</div></form>
</body>
</html>