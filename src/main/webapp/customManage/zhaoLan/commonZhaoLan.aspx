

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>客户管理 售后回访</title>
 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<script language="javascript" type="text/javascript">

    //售后回访主页面
    //售后回访主页面
    var rowIndex = 0;
    function billShow(index, Row) {
        rowIndex = index;

        var zhaoLanType = document.getElementById("ddlZhaoLanSort").value;                                                                                    
        var href = "commonZhaoLanFrame.aspx?vehicleId="+Row.vehicleId+"&cusGuid=" + Row.cusId + "&&saleAfterGuid=" + Row.saleAfterGuid + "&TaskId=&num&Type="+zhaoLanType+"&&d=" + new Date();
        var SizeZ = 'height=' + (screen.availHeight - 20) + ',width=' + (screen.availWidth - 10) + 'toolbar=no,resizable=yes,status=no,menubar=no,scrollbars=yes';


        try {
            if (!openStatus2.closed) {
                alert("普通招揽窗口 已在外部打开");
                openStatus2.focus();
                return false;
            }
            else {
                openStatus2 = window.open(href, '普通招揽', SizeZ);
            }
        }
        catch (Error) {
            openStatus2 = window.open(href, '普通招揽', SizeZ);
        }

    }

    function upPage() {
        if (rowIndex > 0) {
            rowIndex = rowIndex - 1;
            var guid = new Array();
            guid.push($('#dg').datagrid('getRows')[rowIndex]['cusId']);
            guid.push($('#dg').datagrid('getRows')[rowIndex]['saleAfterGuid']);
            guid.push($('#dg').datagrid('getRows')[rowIndex]['vehicleId']);
            return guid;
        }
        else {
            alert("已经是第一条");
            return "";
        }

    }
    function downPage() {
        if (rowIndex < 14) {
            rowIndex = rowIndex + 1;
            var guid = new Array();
            guid.push($('#dg').datagrid('getRows')[rowIndex]['cusId']);
            guid.push($('#dg').datagrid('getRows')[rowIndex]['saleAfterGuid']);
            guid.push($('#dg').datagrid('getRows')[rowIndex]['vehicleId']);

            return guid;
        }
        else {

            alert("已经是当前页的最后一条");
            return "";
        }
    }

    $(function () {
        var zhaolansort = $("#ddlZhaoLanSort").val();
        if (zhaolansort == '流失招揽') {
            $("#hidZLJianGeTime").val($("#ddlZLLiuShiTime").val());
            $("#tdZhaoLanShiJian").show();
            $("#ddlZLLiuShiTime").show();
            $("#ddlZLBuHuoYueTime").hide();
        }
        else if (zhaolansort == '不活跃招揽') {
            $("#tdZhaoLanShiJian").show();
            $("#ddlZLBuHuoYueTime").show();
            $("#hidZLJianGeTime").val($("#ddlZLBuHuoYueTime").val());
            $("#ddlZLLiuShiTime").hide();
        } else if (zhaolansort == "定期招揽" || zhaolansort == "首保招揽" || zhaolansort == "周期招揽") {
            $("#ddlZLLiuShiTime").hide();
            $("#tdZhaoLanShiJian").hide();
            $("#ddlZLBuHuoYueTime").hide();
            $("#lblZLJianGeTime").text(0);
        }
        $("#ddlZLLiuShiTime,#ddlZLBuHuoYueTime").change(function () {
            $("#hidZLJianGeTime").val($(this).val());

        });

        $("#ddlZhaoLanSort").change(function () {
            var value = $(this).val();
            if (value == '流失招揽') {
                $("#hidZLJianGeTime").val($("#ddlZLLiuShiTime").val());
                $("#tdZhaoLanShiJian").show();
                $("#ddlZLLiuShiTime").show();
                $("#ddlZLBuHuoYueTime").hide();
            }
            else if (value == '不活跃招揽') {
                $("#tdZhaoLanShiJian").show();
                $("#ddlZLBuHuoYueTime").show();
                $("#hidZLJianGeTime").val($("#ddlZLBuHuoYueTime").val());
                $("#ddlZLLiuShiTime").hide();
            }
            else if (value == "定期招揽" || value == "首保招揽") {
                $("#ddlZLLiuShiTime").hide();
                $("#tdZhaoLanShiJian").hide();
                $("#ddlZLBuHuoYueTime").hide();
                $("#lblZLJianGeTime").text(0);
            }

        });



    });


</script>
<body>
    <form name="form2" method="post" action="commonZhaoLan.aspx" id="form2">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTc4MDIzMjQ2Ng9kFgICAQ9kFgICDQ8QDxYGHg5EYXRhVmFsdWVGaWVsZAUIdXNlckd1aWQeDURhdGFUZXh0RmllbGQFCHVzZXJOYW1lHgtfIURhdGFCb3VuZGdkEBUbDS0t6K+36YCJ5oupLS0J6YK55a6c6IqzBua1i+ivlQbog6HlkJsG5p2O5bu6Cee9l+Wwj+WonwboqbnmrKIJ6ZKf5LuV5Z+OCeW8oOeUnOeUnAnlkajlroflrr4J6ZmI6b6Z5b+XCeiDoeaipuS6kQbmn6/np5EG546L5pmfCeeGiui2heWNlwnkvZnnnb/mtIEG6auY56OKAzEyMwbliJjliZEJ5YiY5pif6L6wCeWPsuS4veiQjQnlvpDlu7roi7EG6IKW5LyfCeS9meS5kOW5swboooHng4EJ5L2Z5oCd5oCdCemCueWbveaXuhUbACQ1YzlkMzkxZi1jNmVlLTQxMzMtODMyOS0zNDZiYjkxNDk3MTQkMGJmODEwNmItMWU1MC00NmYwLWI3OTItZGVjYjJmYTkwNTFjJDk3OGQwNjhjLTcwYmItNGM1Ny05MmE3LTA4MmI0NjIzZDZiYiQ3YTBjNjE3MS0zNmE0LTRhMjYtOWY2Ni0yOTM0MTdiMTdiNTIkYWU4YmRmNzAtZTk4NS00Nzk0LWIyNTEtNmUwZWJiODUyMzdjJDk0ZWU1OGZjLWM0YzMtNGQyNy1iN2U2LTAxMWQxNjBhZTQwMyQzMTc0Y2U5YS02MDAxLTQ3YTMtOTFhZC01ZWFlODA4ODA0ODIkZmEyNzUzYmQtOTg2Yy00Zjg1LWI1ZjctODkzM2Y3MmMzYTNhJGZkMzY0ZjdiLTRhYWYtNGQ1Ni05ZTQwLWVlMGVmNTY5NTc0MiRmYjVlOTA5MC1lNmEyLTRhODktOGVhNC0zN2U5MWE1NmMwYjAkNTEwYmY3Y2ItZTU3OS00YTRiLThlOGMtMjE2ODk3OGNiMmI4JDA1MDEwMjA2LWVkNzMtNDcyMy04ZDVjLWNlNzM0Yzg5OTNmNiQyMDc1ZDg5ZC1hNGNlLTRlNjktYjE5NC0xMGQ1YzJkOTU0ZGEkMjNhN2I3NzQtM2ZmNi00ZmFkLWEzNmQtN2NkMWE0NzUzZTk4JGEzY2Y3YzNjLWYyMmItNDY3Yy05NmE2LWVhMjEyYTFmYmIwMyQ5M2Y3MDgxYS0zOTQ0LTQzNWEtOWYzYy0xNTY3OGUyYjQwMGYkNjBhNGE0OTktMWI2OC00YmE4LWEwYTctNWU2NWFjYjE0ZmMzJGE2Zjc4ZDIwLWQzY2ItNDcxNC1hOTgzLTAzODFmOTY5N2ZhYSQyMzAxMDU5NS03ZjYzLTQ0Y2ItOGZkOC0xZDkyNmY2MDA1YzgkNTQ4OGI3NTAtMTExYy00YWYxLThhMTQtZmY4M2FiN2Q2ODllJDAxY2VkYjJhLTI1ZjQtNGFjYS04YTI1LWMwNTZlYjc5YmJmNyQ2MzY5ODllMS0yMGQ0LTRjZTUtODZlNi1hNTBiNDZiYmE3NTIkZjQxYTQ2M2YtNjM1My00MGIxLTg2NDktNGJiOWYyZjMzZDMyJDJjNGU5NTI2LWZjNmMtNGI5Yy04YzAyLTc5YTY5ZjNjMjY0YyQ1Mjc5MTdlZC02N2ZlLTQwODMtYjA0Ni0yNjkxNDAyZmI1YjYkMGZjMzE4YWMtMTY0Yi00YzJkLTk3YmEtOGY3YTk4NjIyNWNhFCsDG2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2RkGAEFHl9fQ29udHJvbHNSZXF1aXJlUG9zdEJhY2tLZXlfXxYOBQJOMQUCTjIFAk4zBQJONAUCTjUFAk42BQJONwUCTjgFAk45BQNOMTAFA04xMQUDTjEyBQNOMTMFA04xNGmbn2OHkmcXN0IGcxGncwXBqALp" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form2'];
if (!theForm) {
    theForm = document.form2;
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


    <div class="allRegion">
        <div class="title">
            <table border="0" style="width: 100%;">
                <tr>
                    <td class="titlebg">
                        <span>客户管理</span> <span class="titleSpan">普通招揽</span>
                    </td>
                    <td align="right">
                
                        <a id="lnkExcel" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-excel'" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
                        
                    </td>
                </tr>
            </table>
        </div>
        <div class="region">
            <div class="region">
                <table id="dg" class="easyui-datagrid" toolbar="#search" data-options="
                rownumbers:true,
                singleSelect:true,
                autoRowHeight:false,
                pagination:true,
                columns:[[
                 {field:'ck',checkbox:true},
                 {field:'cheZhuSort',title:'客户标识',width:60},
                 {field:'HuiYuanDengJi',title:'会员等级',width:60},
                 {field:'cheZhuName',title:'车主',width:75},
                 {field:'lianXiRenName',title:'联系人',width:90},
                 {field:'chePaiHao',title:'车牌号',width:75},
                 {field:'IsZaiDian',title:'是否在店',width:60},
                 {field:'ZhaoLanYuYue',title:'是否预约',width:60},
                 {field:'NextTime',title:'下次保养日期',width:150},
                 {field:'workTime',title:'业务时间',width:150},
                 {field:'ZhaoLanStatus',title:'招揽状态',width:80},
                 {field:'YiHuiChang',title:'已回厂',width:60},
                 {field:'Maintained',title:'已回厂保养',width:75},
                 {field:'LastJieGuo',title:'外拨结果',width:60},
                 {field:'LastXinXi',title:'反馈信息',width:120},
                 {field:'ZhaoLanRemark',title:'招揽备注',width:120},
                 {field:'LastZhaoLanTime',title:'最后联系时间',width:120},
                 {field:'lianxicishu',title:'联系次数',width:80},
                 {field:'cheZhuMob',title:'手机号',width:80},
                 {field:'cheZhuTel',title:'联系电话',width:80},
                 {field:'NextLiCheng',title:'下次保养里程',width:80},
                 {field:'lastJieCheYuan',title:'上次接车员',width:80},
                 {field:'lastLaiChangDate',title:'上次来厂日',width:120},
                 {field:'lastLiCheng',title:'上次来厂里程',width:80},
                 {field:'lastDingBaoDate',title:'上次保养日',width:120},
                 {field:'lastDingBaoLiCheng',title:'上次保养里程',width:120},
                 {field:'weiXiuSort',title:'维修类别',width:80},

                 {field:'cheTiCheDate',title:'新车交车时间',width:120},
                 {field:'Salor',title:'销售员',width:80},
                 {field:'ShouBaoQiXian',title:'首保届满期限',width:120},
                 {field:'cheJiaHao',title:'车架号',width:120},
                 {field:'cheXi',title:'车系',width:100},
                 {field:'cheXingDaiMa',title:'车型代码',width:80},
                 {field:'cheZhuAdd',title:'地址',width:120},
                 {field:'LastZhaoLanR',title:'最后联系人',width:80},
                 {field:'lastLiCheng',title:'来厂里程',width:80},

                 {field:'huiYuanSort',title:'会员卡类型',width:80},
                 {field:'laiChangCiShu',title:'累计进厂次数',width:80},
                 {field:'lastLaiChangJInE',title:'最后一次进店消费金额',width:80},
                 {field:'lastJieCheYuan',title:'最后一次接车的服务顾问',width:80}
                ]],
                remoteSort:false,
                pageList:[10,15,20,30,40,50,100],
                onClickRow:billShow,
                pageNumber:1,
                pageSize:15">
                </table>
            </div>
            <input name="txtPageNum" type="text" value="1" id="txtPageNum" style="display: none;" />
            <input name="txtPageSize" type="text" value="15" id="txtPageSize" style="display: none;" />
            <a id="tmp" href="javascript:__doPostBack('tmp','')"></a>
        </div>
        <!--查询条件 start-->
        <div id="search">
            <table id="tabCondition">
                <tbody>
                    <tr>
                        <td nowrap="nowrap">
                            招揽状态
                        </td>
                        <td>
                            <select name="ddlZhaoLanStatus" id="ddlZhaoLanStatus" style="width:100px;">
    <option value=""></option>
    <option selected="selected" value="未完成">未完成</option>
    <option value="已完成">已完成</option>
    <option value="关闭">关闭</option>

</select>
                        </td>
                        <td align="left">
                            客户标识
                        </td>
                        <td align="left">
                            <select name="ddlCustomSort" id="ddlCustomSort" style="width:100px;">
    <option selected="selected" value="">全部</option>
    <option value="普通客户">普通客户</option>
    <option value="月结客户">月结客户</option>
    <option value="内部员工">内部员工</option>
    <option value="会员">会员</option>

</select>
                        </td>
                        <td nowrap="nowrap">
                            业务时间
                        </td>
                        <td>
                            <input name="txtWorkTime_Begin" type="text" value="2015-01-08" id="txtWorkTime_Begin" class="easyui-datebox" style="width:100px;" />
                        </td>
                        <td nowrap="nowrap" style="text-align: center;">
                            至
                        </td>
                        <td>
                            <input name="txtWorkTime_End" type="text" value="2015-01-08" id="txtWorkTime_End" class="easyui-datebox" style="width:100px;" />
                        </td>
                        <td>
                            会员等级
                        </td>
                        <td>
                            <select name="ddlHuiYuanDengJi" id="ddlHuiYuanDengJi" style="width:100px;">
    <option selected="selected" value=""></option>
    <option value="001">普通会员</option>
    <option value="002">银卡会员</option>
    <option value="80000000">金卡会员</option>
    <option value="004">钻卡会员</option>

</select>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap">
                            是否在店
                        </td>
                        <td>
                            <select name="ddlZaiDian" id="ddlZaiDian" style="width:100px;">
    <option selected="selected" value=""></option>
    <option value="1">在店</option>
    <option value="0">不在店</option>

</select>
                        </td>
                        <td align="left">
                            是否回厂
                        </td>
                        <td align="left">
                            <select name="ddlShiFuoHuiChang" id="ddlShiFuoHuiChang" style="width:100px;">
    <option selected="selected" value=""></option>
    <option value="是">是</option>
    <option value="否">否</option>

</select>
                        </td>
                        <td align="left">
                            最后联系
                        </td>
                        <td align="left">
                            <input name="txtLastZhaoLanTimeStart" type="text" id="txtLastZhaoLanTimeStart" class="easyui-datebox" style="width:100px;" />
                        </td>
                        <td style="text-align: center;">
                            至
                        </td>
                        <td style="text-align: left;">
                            <input name="txtLastZhaoLanTimeEnd" type="text" id="txtLastZhaoLanTimeEnd" class="easyui-datebox" style="width:100px;" />
                        </td>
                        <td>
                            销售顾问
                        </td>
                        <td>
                            <select name="ddlSA" id="ddlSA" style="width:100px;">
    <option selected="selected" value="">--请选择--</option>
    <option value="5c9d391f-c6ee-4133-8329-346bb9149714">邹宜芳</option>
    <option value="0bf8106b-1e50-46f0-b792-decb2fa9051c">测试</option>
    <option value="978d068c-70bb-4c57-92a7-082b4623d6bb">胡君</option>
    <option value="7a0c6171-36a4-4a26-9f66-293417b17b52">李建</option>
    <option value="ae8bdf70-e985-4794-b251-6e0ebb85237c">罗小娟</option>
    <option value="94ee58fc-c4c3-4d27-b7e6-011d160ae403">詹欢</option>
    <option value="3174ce9a-6001-47a3-91ad-5eae80880482">钟仕城</option>
    <option value="fa2753bd-986c-4f85-b5f7-8933f72c3a3a">张甜甜</option>
    <option value="fd364f7b-4aaf-4d56-9e40-ee0ef5695742">周宇宾</option>
    <option value="fb5e9090-e6a2-4a89-8ea4-37e91a56c0b0">陈龙志</option>
    <option value="510bf7cb-e579-4a4b-8e8c-2168978cb2b8">胡梦云</option>
    <option value="05010206-ed73-4723-8d5c-ce734c8993f6">柯科</option>
    <option value="2075d89d-a4ce-4e69-b194-10d5c2d954da">王晟</option>
    <option value="23a7b774-3ff6-4fad-a36d-7cd1a4753e98">熊超南</option>
    <option value="a3cf7c3c-f22b-467c-96a6-ea212a1fbb03">余睿洁</option>
    <option value="93f7081a-3944-435a-9f3c-15678e2b400f">高磊</option>
    <option value="60a4a499-1b68-4ba8-a0a7-5e65acb14fc3">123</option>
    <option value="a6f78d20-d3cb-4714-a983-0381f9697faa">刘剑</option>
    <option value="23010595-7f63-44cb-8fd8-1d926f6005c8">刘星辰</option>
    <option value="5488b750-111c-4af1-8a14-ff83ab7d689e">史丽萍</option>
    <option value="01cedb2a-25f4-4aca-8a25-c056eb79bbf7">徐建英</option>
    <option value="636989e1-20d4-4ce5-86e6-a50b46bba752">肖伟</option>
    <option value="f41a463f-6353-40b1-8649-4bb9f2f33d32">余乐平</option>
    <option value="2c4e9526-fc6c-4b9c-8c02-79a69f3c264c">袁烁</option>
    <option value="527917ed-67fe-4083-b046-2691402fb5b6">余思思</option>
    <option value="0fc318ac-164b-4c2d-97ba-8f7a986225ca">邹国旺</option>

</select>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap">
                            车牌号
                        </td>
                        <td>
                            <input name="txtChePaiHao" type="text" id="txtChePaiHao" style="width:98px;" />
                        </td>
                        <td nowrap="nowrap">
                            保养/维修
                        </td>
                        <td>
                            <select name="ddlSort" id="ddlSort" style="width:100px;">
    <option selected="selected" value=""></option>
    <option value="一般维修">一般维修</option>
    <option value="定保">定保</option>
    <option value="免检">免检</option>
    <option value="保险">保险</option>
    <option value="大客户">大客户</option>
    <option value="厂家保修">厂家保修</option>
    <option value="新车检查">新车检查</option>
    <option value="年审">年审</option>

</select>
                        </td>
                        <td align="left">
                            招揽类型
                        </td>
                        <td align="left">
                            <select name="ddlZhaoLanSort" id="ddlZhaoLanSort" onchange="hiddenTr(this.value)" style="width:100px;">
    <option value=""></option>
    <option selected="selected" value="定期招揽">定期招揽</option>
    <option value="周期招揽">周期招揽</option>
    <option value="流失招揽">流失招揽</option>
    <option value="首保招揽">首保招揽</option>
    <option value="不活跃招揽">不活跃招揽</option>

</select>
                        </td>
                        <td nowrap="nowrap">
                            <div style="width: 50px;">
                                <div style="display: none; width: 40px;" id="tdZhaoLanShiJian">
                                    招揽时间</div>
                            </div>
                        </td>
                        <td style="width: 100px;">
                            <select name="ddlZLBuHuoYueTime" id="ddlZLBuHuoYueTime" style="width: 100px; display: none">
    <option selected="selected" value="3">3个月</option>
    <option value="5">5个月</option>
    <option value="6">6个月</option>
    <option value="7">7个月</option>
    <option value="8">8个月</option>

</select>
                            <select name="ddlZLLiuShiTime" id="ddlZLLiuShiTime" style="width: 100px; display: none">
    <option value="9">9个月</option>
    <option value="10">10个月</option>
    <option selected="selected" value="11">11个月</option>
    <option value="12">12个月</option>

</select>
                            <input type="hidden" name="hidZLJianGeTime" id="hidZLJianGeTime" value="0" />
                        </td>
                        <td  style=" text-align:right;">
                            <input type="submit" name="btnQuery" value="查 询" onclick="return SubmitByShade(this); ;" id="btnQuery" class="btnCss" />
                        </td>
                        <td style=" text-align:right;">
                            <input type="submit" name="btnClear" value="清空查询条件" id="btnClear" class="btnCss" />
                        </td>
                    </tr>
                    <tr style="display: none;">
                        <td nowrap="nowrap">
                            标识选择:
                        </td>
                        <td nowrap="nowrap" align="left" colspan="7">
                            <input id="N1" type="checkbox" name="N1" /><label for="N1">N-1</label>
                            <input id="N2" type="checkbox" name="N2" /><label for="N2">N-2</label>
                            <input id="N3" type="checkbox" name="N3" /><label for="N3">N-3</label>
                            <input id="N4" type="checkbox" name="N4" /><label for="N4">N-4</label>
                            <input id="N5" type="checkbox" name="N5" /><label for="N5">N-5</label>
                            <input id="N6" type="checkbox" name="N6" /><label for="N6">N-6</label>
                            <input id="N7" type="checkbox" name="N7" /><label for="N7">N-7</label>
                            <input id="N8" type="checkbox" name="N8" /><label for="N8">N-8</label>
                            <input id="N9" type="checkbox" name="N9" /><label for="N9">N-9</label>
                            <input id="N10" type="checkbox" name="N10" /><label for="N10">N-10</label>
                            <input id="N11" type="checkbox" name="N11" /><label for="N11">N-11</label>
                            <input id="N12" type="checkbox" name="N12" /><label for="N12">N-12</label>
                            <input id="N13" type="checkbox" name="N13" /><label for="N13">N-13~N-24</label>
                            <input id="N14" type="checkbox" name="N14" /><label for="N14">>N-24</label>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--查询条件 end-->
        <script language="javascript" type="text/javascript">

         

               jsonStrData ={"total":31,"rows":[{"No":"1","cusId":"b71af453-9e40-4bd6-a3ac-4bf9c8d99488","vehicleId":"b71af453-9e40-4bd6-a3ac-4bf9c8d99488","saleAfterGuid":"c05abc56-5abd-41b2-978e-3348cb90b506","cheZhuSort":"普通客户","ZiDingYiSort":"","HuiYuanDengJi":"","cheZhuName":"涂仙恩","lianXiRenName":"涂仙恩","chePaiHao":"鄂A0U897","IsZaiDian":"0","ZhaoLanYuYue":"","NextTime":"2015-1-8 8:20:35","workTime":"2015-1-8 8:20:35","ZhaoLanStatus":"未完成","YiHuiChang":"否","Maintained":"否","LastJieGuo":"","LastXinXi":"","ZhaoLanRemark":"","LastZhaoLanTime":"","lianxicishu":"0","cheZhuMob":"","cheZhuTel":"13907256507","NextLiCheng":"64456","lastJieCheYuan":"周蔷","lastLaiChangDate":"2014-10-24 8:20:35","lastLiCheng":"59456","lastDingBaoDate":"","lastDingBaoLiCheng":"","weiXiuSort":"定保","cheJiaHao":"LFMAPE2C7B0916257","cheXi":"卡罗拉","cheXingDaiMa":"ZRE151L-GEPNKC","cheZhuAdd":"湖北省武穴市大法寺镇从山村52号","PostCode":"","LastZhaoLanR":"","cheTiCheDate":"","Salor":"","ShouBaoQiXian":"","riPingJunGongLiShu":"65.78","huiYuanSort":"阳光会员","laiChangCiShu":"3","lastLaiChangJInE":""},{"No":"2","cusId":"e804ff4c-45ca-4999-bb4f-394a0ed8e0b0","vehicleId":"474ce362-e77b-4ea0-9fd8-98f478ef5674","saleAfterGuid":"93c5af4b-3d57-44c3-bd6e-4f84e6b1cb28","cheZhuSort":"普通客户","ZiDingYiSort":"","HuiYuanDengJi":"","cheZhuName":"彭强","lianXiRenName":"彭强","chePaiHao":"湘KK6009","IsZaiDian":"0","ZhaoLanYuYue":"","NextTime":"2015-1-8 8:24:24","workTime":"2015-1-8 8:24:24","ZhaoLanStatus":"未完成","YiHuiChang":"否","Maintained":"否","LastJieGuo":"","LastXinXi":"","ZhaoLanRemark":"","LastZhaoLanTime":"","lianxicishu":"0","cheZhuMob":"13975231373","cheZhuTel":"13975231373","NextLiCheng":"63449","lastJieCheYuan":"甘琛","lastLaiChangDate":"2014-11-23 8:24:24","lastLiCheng":"58449","lastDingBaoDate":"","lastDingBaoLiCheng":"","weiXiuSort":"一般维修","cheJiaHao":"LFMJV36F4B0008184","cheXi":"RAV4","cheXingDaiMa":"ACA32L-ANMXKC","cheZhuAdd":"湖南省湘乡市棋锌镇谷水村第八村民组193号","PostCode":"","LastZhaoLanR":"","cheTiCheDate":"","Salor":"","ShouBaoQiXian":"","riPingJunGongLiShu":"109.74","huiYuanSort":"阳光会员","laiChangCiShu":"3","lastLaiChangJInE":""},{"No":"3","cusId":"a14f716b-dd7f-4421-87b4-06e0d23055fb","vehicleId":"a14f716b-dd7f-4421-87b4-06e0d23055fb","saleAfterGuid":"4da6cfc6-a1f8-42cc-9ad9-325b0095fce1","cheZhuSort":"普通客户","ZiDingYiSort":"","HuiYuanDengJi":"","cheZhuName":"吴红亮","lianXiRenName":"吴红亮","chePaiHao":"鄂JGM598","IsZaiDian":"0","ZhaoLanYuYue":"","NextTime":"2015-1-8 8:34:12","workTime":"2015-1-8 8:34:12","ZhaoLanStatus":"未完成","YiHuiChang":"否","Maintained":"否","LastJieGuo":"","LastXinXi":"","ZhaoLanRemark":"","LastZhaoLanTime":"","lianxicishu":"0","cheZhuMob":"","cheZhuTel":"13871978806","NextLiCheng":"17574","lastJieCheYuan":"杨佳力","lastLaiChangDate":"2014-9-19 8:34:12","lastLiCheng":"12574","lastDingBaoDate":"2014-6-3 8:00:22","lastDingBaoLiCheng":"8278","weiXiuSort":"定保","cheJiaHao":"LFMAPE2C5D0528737","cheXi":"卡罗拉","cheXingDaiMa":"ZRE151L-GEPNKC","cheZhuAdd":"湖北省黄梅县大河镇叶塘村二组","PostCode":"","LastZhaoLanR":"","cheTiCheDate":"","Salor":"","ShouBaoQiXian":"","riPingJunGongLiShu":"45.04","huiYuanSort":"阳光会员","laiChangCiShu":"4","lastLaiChangJInE":""},{"No":"4","cusId":"f8c204bb-7190-44f1-b01d-4651a3fa6274","vehicleId":"f8c204bb-7190-44f1-b01d-4651a3fa6274","saleAfterGuid":"88bdf437-db86-444f-8282-bbc2edd4439d","cheZhuSort":"普通客户","ZiDingYiSort":"","HuiYuanDengJi":"","cheZhuName":"胡莹","lianXiRenName":"汪贤","chePaiHao":"赣G-V1259","IsZaiDian":"0","ZhaoLanYuYue":"","NextTime":"2015-1-8 8:36:11","workTime":"2015-1-8 8:36:11","ZhaoLanStatus":"未完成","YiHuiChang":"否","Maintained":"否","LastJieGuo":"","LastXinXi":"","ZhaoLanRemark":"","LastZhaoLanTime":"","lianxicishu":"0","cheZhuMob":"18779260527","cheZhuTel":"18779260527","NextLiCheng":"10864","lastJieCheYuan":"周蔷","lastLaiChangDate":"2014-9-10 8:36:11","lastLiCheng":"5864","lastDingBaoDate":"","lastDingBaoLiCheng":"","weiXiuSort":"厂家保修","cheJiaHao":"LFMAPE2C7D0930145","cheXi":"卡罗拉","cheXingDaiMa":"ZRE151L-GEPNKC","cheZhuAdd":"江西省九江市湖口县双钟镇江新造船厂路5号二区203栋","PostCode":"","LastZhaoLanR":"","cheTiCheDate":"","Salor":"","ShouBaoQiXian":"","riPingJunGongLiShu":"17.13","huiYuanSort":"阳光会员","laiChangCiShu":"5","lastLaiChangJInE":""},{"No":"5","cusId":"9b5d5fb0-538b-4f3c-ad65-8bc8b29d7e1a","vehicleId":"9b5d5fb0-538b-4f3c-ad65-8bc8b29d7e1a","saleAfterGuid":"58055618-b4b5-4e5c-a309-413cf1a8312c","cheZhuSort":"普通客户","ZiDingYiSort":"","HuiYuanDengJi":"","cheZhuName":"周佐佳","lianXiRenName":"周佐佳","chePaiHao":"赣G06988","IsZaiDian":"0","ZhaoLanYuYue":"","NextTime":"2015-1-8 9:05:15","workTime":"2015-1-8 9:05:15","ZhaoLanStatus":"未完成","YiHuiChang":"否","Maintained":"否","LastJieGuo":"","LastXinXi":"","ZhaoLanRemark":"","LastZhaoLanTime":"","lianxicishu":"0","cheZhuMob":"18270257522","cheZhuTel":"8502222","NextLiCheng":"41015","lastJieCheYuan":"甘琛","lastLaiChangDate":"2014-9-10 9:05:15","lastLiCheng":"36015","lastDingBaoDate":"2013-8-4 10:10:25","lastDingBaoLiCheng":"21870","weiXiuSort":"一般维修","cheJiaHao":"LFMAP22C7C0396738","cheXi":"花冠","cheXingDaiMa":"ZRE120L-GEMDKC","cheZhuAdd":"瑞昌市码头镇黄岭坡流庄供销社","PostCode":"","LastZhaoLanR":"","cheTiCheDate":"","Salor":"","ShouBaoQiXian":"","riPingJunGongLiShu":"38.15","huiYuanSort":"阳光会员","laiChangCiShu":"7","lastLaiChangJInE":""},{"No":"6","cusId":"f4d7b34e-ad7f-4b50-af49-8bef2538943f","vehicleId":"f4d7b34e-ad7f-4b50-af49-8bef2538943f","saleAfterGuid":"f6d82a7e-0fb8-47b3-bd25-a82090eb8b90","cheZhuSort":"普通客户","ZiDingYiSort":"","HuiYuanDengJi":"","cheZhuName":"九江华力商品混凝土有限公司","lianXiRenName":"万新","chePaiHao":"赣GB9728","IsZaiDian":"0","ZhaoLanYuYue":"","NextTime":"2015-1-8 9:27:00","workTime":"2015-1-8 9:27:00","ZhaoLanStatus":"未完成","YiHuiChang":"否","Maintained":"否","LastJieGuo":"","LastXinXi":"","ZhaoLanRemark":"","LastZhaoLanTime":"","lianxicishu":"0","cheZhuMob":"13177722229","cheZhuTel":"13177722229","NextLiCheng":"137030","lastJieCheYuan":"甘琛","lastLaiChangDate":"2014-12-4 9:27:00","lastLiCheng":"132030","lastDingBaoDate":"2014-5-5 9:51:48","lastDingBaoLiCheng":"99793","weiXiuSort":"定保","cheJiaHao":"JTEGD54M4CA032148","cheXi":"其他丰田","cheXingDaiMa":"ACR50L-GFPGK","cheZhuAdd":"江西省九江市庐山区青湖大道888号","PostCode":"","LastZhaoLanR":"","cheTiCheDate":"","Salor":"","ShouBaoQiXian":"","riPingJunGongLiShu":"144.38","huiYuanSort":"阳光会员","laiChangCiShu":"32","lastLaiChangJInE":""},{"No":"7","cusId":"15055ad5-3292-4d6d-ba2e-ecc3c4694611","vehicleId":"15055ad5-3292-4d6d-ba2e-ecc3c4694611","saleAfterGuid":"fd3fc187-5b4f-459e-9036-55f9eda0e0b7","cheZhuSort":"普通客户","ZiDingYiSort":"","HuiYuanDengJi":"","cheZhuName":"九江市水苑水利电力工程设计监理有限公司","lianXiRenName":"潘峰","chePaiHao":"赣G0S628","IsZaiDian":"0","ZhaoLanYuYue":"","NextTime":"2015-1-8 9:28:56","workTime":"2015-1-8 9:28:56","ZhaoLanStatus":"未完成","YiHuiChang":"否","Maintained":"否","LastJieGuo":"","LastXinXi":"","ZhaoLanRemark":"","LastZhaoLanTime":"","lianxicishu":"0","cheZhuMob":"","cheZhuTel":"","NextLiCheng":"116074","lastJieCheYuan":"杨佳力","lastLaiChangDate":"2014-11-4 9:28:56","lastLiCheng":"111074","lastDingBaoDate":"2014-5-23 8:58:11","lastDingBaoLiCheng":"99972","weiXiuSort":"定保","cheJiaHao":"LFMGJE727AS004789","cheXi":"霸道","cheXingDaiMa":"GRJ150L-GKAGKC","cheZhuAdd":"江西省九江市浔阳区浔阳东路240号","PostCode":"","LastZhaoLanR":"","cheTiCheDate":"","Salor":"","ShouBaoQiXian":"","riPingJunGongLiShu":"76.69","huiYuanSort":"阳光会员","laiChangCiShu":"17","lastLaiChangJInE":""},{"No":"8","cusId":"700b87e3-3f86-488e-a71f-2a8e864ddfd8","vehicleId":"700b87e3-3f86-488e-a71f-2a8e864ddfd8","saleAfterGuid":"bb2fbafc-b1f0-4ef9-9b1d-abb24002e295","cheZhuSort":"普通客户","ZiDingYiSort":"","HuiYuanDengJi":"","cheZhuName":"徐海兵","lianXiRenName":"徐海兵","chePaiHao":"赣G1H277","IsZaiDian":"0","ZhaoLanYuYue":"","NextTime":"2015-1-8 9:45:05","workTime":"2015-1-8 9:45:05","ZhaoLanStatus":"未完成","YiHuiChang":"否","Maintained":"否","LastJieGuo":"","LastXinXi":"","ZhaoLanRemark":"","LastZhaoLanTime":"","lianxicishu":"0","cheZhuMob":"13970262997","cheZhuTel":"13970262997","NextLiCheng":"23606","lastJieCheYuan":"周蔷","lastLaiChangDate":"2014-9-10 9:45:05","lastLiCheng":"18606","lastDingBaoDate":"","lastDingBaoLiCheng":"","weiXiuSort":"一般维修","cheJiaHao":"LFMAP22C1C0445822","cheXi":"花冠","cheXingDaiMa":"ZRE120L-GEPDKC","cheZhuAdd":"","PostCode":"","LastZhaoLanR":"","cheTiCheDate":"","Salor":"","ShouBaoQiXian":"","riPingJunGongLiShu":"26.12","huiYuanSort":"阳光会员","laiChangCiShu":"5","lastLaiChangJInE":""},{"No":"9","cusId":"bfb734f2-c162-4bf0-a531-2964291398b6","vehicleId":"bfb734f2-c162-4bf0-a531-2964291398b6","saleAfterGuid":"a36f99a8-f76d-4a04-af87-cac334b37473","cheZhuSort":"普通客户","ZiDingYiSort":"","HuiYuanDengJi":"","cheZhuName":"方正明","lianXiRenName":"方正明(方正盛)","chePaiHao":"赣G9F377","IsZaiDian":"0","ZhaoLanYuYue":"","NextTime":"2015-1-8 9:52:32","workTime":"2015-1-8 9:52:32","ZhaoLanStatus":"未完成","YiHuiChang":"否","Maintained":"否","LastJieGuo":"","LastXinXi":"","ZhaoLanRemark":"","LastZhaoLanTime":"","lianxicishu":"0","cheZhuMob":"13755215251","cheZhuTel":"13755215251","NextLiCheng":"34602","lastJieCheYuan":"甘琛","lastLaiChangDate":"2014-9-26 9:52:32","lastLiCheng":"29602","lastDingBaoDate":"2013-4-30 13:49:51","lastDingBaoLiCheng":"3715","weiXiuSort":"定保","cheJiaHao":"LFMKV30F1D0173092","cheXi":"国产RAV4","cheXingDaiMa":"ACA37L-ANPXKC","cheZhuAdd":"","PostCode":"","LastZhaoLanR":"","cheTiCheDate":"","Salor":"","ShouBaoQiXian":"","riPingJunGongLiShu":"48.20","huiYuanSort":"阳光会员","laiChangCiShu":"5","lastLaiChangJInE":""},{"No":"10","cusId":"7904996e-4118-4b43-a597-41e79d494c17","vehicleId":"7904996e-4118-4b43-a597-41e79d494c17","saleAfterGuid":"4183354b-5e54-41f8-9a23-f4ffe09dc71d","cheZhuSort":"普通客户","ZiDingYiSort":"","HuiYuanDengJi":"","cheZhuName":"刘学敏","lianXiRenName":"刘学敏","chePaiHao":"赣G27233","IsZaiDian":"0","ZhaoLanYuYue":"","NextTime":"2015-1-8 9:56:10","workTime":"2015-1-8 9:56:10","ZhaoLanStatus":"未完成","YiHuiChang":"否","Maintained":"否","LastJieGuo":"","LastXinXi":"","ZhaoLanRemark":"","LastZhaoLanTime":"","lianxicishu":"0","cheZhuMob":"18679258677","cheZhuTel":"18679258677","NextLiCheng":"34192","lastJieCheYuan":"甘琛","lastLaiChangDate":"2014-9-10 9:56:10","lastLiCheng":"29192","lastDingBaoDate":"2014-3-12 9:22:34","lastDingBaoLiCheng":"25060","weiXiuSort":"定保","cheJiaHao":"LFMAP22CXD0516355","cheXi":"花冠","cheXingDaiMa":"ZRE120L-GEPDKC","cheZhuAdd":"江西省九江市莱茵美郡","PostCode":"","LastZhaoLanR":"","cheTiCheDate":"","Salor":"","ShouBaoQiXian":"","riPingJunGongLiShu":"40.04","huiYuanSort":"普通会员","laiChangCiShu":"8","lastLaiChangJInE":""},{"No":"11","cusId":"788d6750-86ae-400d-965d-390661ecb285","vehicleId":"788d6750-86ae-400d-965d-390661ecb285","saleAfterGuid":"9b4c2596-2233-4434-a04f-94dc6dc9c596","cheZhuSort":"普通客户","ZiDingYiSort":"","HuiYuanDengJi":"","cheZhuName":"徐永","lianXiRenName":"徐永","chePaiHao":"赣G3Z331","IsZaiDian":"0","ZhaoLanYuYue":"","NextTime":"2015-1-8 10:29:01","workTime":"2015-1-8 10:29:01","ZhaoLanStatus":"未完成","YiHuiChang":"否","Maintained":"否","LastJieGuo":"","LastXinXi":"","ZhaoLanRemark":"","LastZhaoLanTime":"","lianxicishu":"0","cheZhuMob":"18979259566","cheZhuTel":"18979259566","NextLiCheng":"15186","lastJieCheYuan":"甘琛","lastLaiChangDate":"2014-9-16 10:29:01","lastLiCheng":"10186","lastDingBaoDate":"2014-5-22 10:48:28","lastDingBaoLiCheng":"5061","weiXiuSort":"10K","cheJiaHao":"LFMAPE2C1E0537596","cheXi":"卡罗拉","cheXingDaiMa":"ZRE151L-GEPNKC","cheZhuAdd":"江西省瑞昌市湓城办事处人民南路6号1栋503室","PostCode":"","LastZhaoLanR":"","cheTiCheDate":"","Salor":"","ShouBaoQiXian":"","riPingJunGongLiShu":"43.80","huiYuanSort":"普通会员","laiChangCiShu":"2","lastLaiChangJInE":""},{"No":"12","cusId":"38d9b311-b072-416f-9223-8b16720d9106","vehicleId":"38d9b311-b072-416f-9223-8b16720d9106","saleAfterGuid":"6d0aaf0f-474b-468d-85b5-f064978d6780","cheZhuSort":"普通客户","ZiDingYiSort":"","HuiYuanDengJi":"","cheZhuName":"冷超中","lianXiRenName":"冷超中","chePaiHao":"赣G33311","IsZaiDian":"0","ZhaoLanYuYue":"","NextTime":"2015-1-8 10:43:48","workTime":"2015-1-8 10:43:48","ZhaoLanStatus":"未完成","YiHuiChang":"否","Maintained":"否","LastJieGuo":"","LastXinXi":"","ZhaoLanRemark":"","LastZhaoLanTime":"","lianxicishu":"0","cheZhuMob":"13979271688","cheZhuTel":"13979271688","NextLiCheng":"122180","lastJieCheYuan":"方璐彬","lastLaiChangDate":"2014-11-29 10:43:48","lastLiCheng":"117180","lastDingBaoDate":"2014-4-18 13:14:50","lastDingBaoLiCheng":"89945","weiXiuSort":"保险","cheJiaHao":"LFMBEC4D3C0104606","cheXi":"锐志","cheXingDaiMa":"GRX132L-AETZKC","cheZhuAdd":"江西省九江市瑞昌市赛湖农场黄金工业园北园","PostCode":"","LastZhaoLanR":"","cheTiCheDate":"","Salor":"","ShouBaoQiXian":"","riPingJunGongLiShu":"124.02","huiYuanSort":"阳光会员","laiChangCiShu":"16","lastLaiChangJInE":""},{"No":"13","cusId":"b235bed0-e44b-4c45-a54d-ed2587b378e5","vehicleId":"dc09c36b-a652-4699-a185-3380a14bfa0e","saleAfterGuid":"ee007199-dec3-4955-9751-cc0b16747b64","cheZhuSort":"","ZiDingYiSort":"","HuiYuanDengJi":"","cheZhuName":"黄卫军","lianXiRenName":"黄卫军","chePaiHao":"鄂J3T636","IsZaiDian":"0","ZhaoLanYuYue":"","NextTime":"2015-1-8 11:15:30","workTime":"2015-1-8 11:15:30","ZhaoLanStatus":"未完成","YiHuiChang":"否","Maintained":"否","LastJieGuo":"","LastXinXi":"","ZhaoLanRemark":"","LastZhaoLanTime":"","lianxicishu":"0","cheZhuMob":"13469934199","cheZhuTel":"13469934199","NextLiCheng":"19196","lastJieCheYuan":"甘琛","lastLaiChangDate":"2014-10-9 11:15:30","lastLiCheng":"14196","lastDingBaoDate":"","lastDingBaoLiCheng":"","weiXiuSort":"定保","cheJiaHao":"LFMK440F6D3007450","cheXi":"RAV4","cheXingDaiMa":"ZSA42L-ANXXKC","cheZhuAdd":"蕲春县蕲州镇南门村","PostCode":"","LastZhaoLanR":"","cheTiCheDate":"","Salor":"","ShouBaoQiXian":"","riPingJunGongLiShu":"55.00","huiYuanSort":"","laiChangCiShu":"1","lastLaiChangJInE":""},{"No":"14","cusId":"d1e7f352-ddb0-42fe-b3f6-145f6ef1fa9d","vehicleId":"d1e7f352-ddb0-42fe-b3f6-145f6ef1fa9d","saleAfterGuid":"cec0ac15-b228-412a-b1d2-857801e97ded","cheZhuSort":"普通客户","ZiDingYiSort":"","HuiYuanDengJi":"","cheZhuName":"梅磊","lianXiRenName":"梅磊","chePaiHao":"赣GM3393","IsZaiDian":"0","ZhaoLanYuYue":"","NextTime":"2015-1-8 11:35:53","workTime":"2015-1-8 11:35:53","ZhaoLanStatus":"未完成","YiHuiChang":"否","Maintained":"否","LastJieGuo":"","LastXinXi":"","ZhaoLanRemark":"","LastZhaoLanTime":"","lianxicishu":"0","cheZhuMob":"13177733399","cheZhuTel":"13177733399","NextLiCheng":"49785","lastJieCheYuan":"周蔷","lastLaiChangDate":"2014-9-10 11:35:53","lastLiCheng":"44785","lastDingBaoDate":"2014-4-20 15:01:39","lastDingBaoLiCheng":"39365","weiXiuSort":"定保","cheJiaHao":"LFMAPE2C6B0340354","cheXi":"卡罗拉","cheXingDaiMa":"ZRE151L-GEPNKC","cheZhuAdd":"江西省九江市星子县南康镇环城东路75号","PostCode":"","LastZhaoLanR":"","cheTiCheDate":"","Salor":"","ShouBaoQiXian":"","riPingJunGongLiShu":"40.32","huiYuanSort":"普通会员","laiChangCiShu":"11","lastLaiChangJInE":""},{"No":"15","cusId":"3aa6f8fb-56a4-419b-af23-1ee8cc6c6624","vehicleId":"3aa6f8fb-56a4-419b-af23-1ee8cc6c6624","saleAfterGuid":"9851d769-f51e-4f34-8b95-e0fb0036f7f1","cheZhuSort":"普通客户","ZiDingYiSort":"","HuiYuanDengJi":"","cheZhuName":"於爱良","lianXiRenName":"於爱良","chePaiHao":"鄂J5K817","IsZaiDian":"0","ZhaoLanYuYue":"","NextTime":"2015-1-8 12:06:18","workTime":"2015-1-8 12:06:18","ZhaoLanStatus":"未完成","YiHuiChang":"否","Maintained":"否","LastJieGuo":"","LastXinXi":"","ZhaoLanRemark":"","LastZhaoLanTime":"","lianxicishu":"0","cheZhuMob":"","cheZhuTel":"13469908707","NextLiCheng":"30000","lastJieCheYuan":"李南燮","lastLaiChangDate":"2014-9-10 12:06:18","lastLiCheng":"25000","lastDingBaoDate":"2013-1-8 14:51:31","lastDingBaoLiCheng":"4735","weiXiuSort":"一般维修","cheJiaHao":"LFMKV30F9C0154370","cheXi":"RAV4","cheXingDaiMa":"ACA37L-ANMXKC","cheZhuAdd":"湖北省黄梅县五祖镇多云村十组","PostCode":"","LastZhaoLanR":"","cheTiCheDate":"","Salor":"","ShouBaoQiXian":"","riPingJunGongLiShu":"33.22","huiYuanSort":"阳光会员","laiChangCiShu":"3","lastLaiChangJInE":""}]};

               $(function () {
               if(jsonStrData!=null){
                
                   $('#dg').datagrid({ loadFilter: pagerFilter }).datagrid('loadData', jsonStrData);}
               });


               function pagerFilter(data) {
                   if (typeof data.length == 'number' && typeof data.splice == 'function') {    // is array
                       data = {
                           total: data.length,
                           rows: data
                       }
                   }
                   var dg = $(this);
                   var opts = dg.datagrid('options');
                   var pager = dg.datagrid('getPager');
                   pager.pagination({
                       onSelectPage: function (pageNum, pageSize) {
                           opts.pageNumber = pageNum;
                           opts.pageSize = pageSize;
                           pager.pagination('refresh', {
                               pageNumber: pageNum,
                               pageSize: pageSize
                           });
                           //alert("当前页:" + pageNum);
                           $("#txtPageNum").val(pageNum);
                           $("#txtPageSize").val(pageSize);

                           //alert("页面尺寸:" + pageSize);

                           __doPostBack('tmp', '');
                           dg.datagrid('loadData', jsonStrData);
                       }
                   });
                   if (!data.originalRows) {
                       data.originalRows = (data.rows);
                   }
                   var start = (opts.pageNumber - 1) * parseInt(opts.pageSize);
                   var end = start + parseInt(opts.pageSize);
                   data.rows = (data.originalRows.slice(0, 100));
                   return jsonStrData;
               }



      


        </script>
    
<div>

    <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="EE8FE1F7" />
    <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWYgLhhbn8AQK87en2BAKfluDwDwKa7byuAgKm4eRsAsfJ4fUMAofc0J4JAs+I0J4JAoqE1rYPAor+36AOAsib3o8GAqKdgvwMArf7nfgIAryH1PEBAo7v5qMJAoTW85oGAvX/378CArDo9PAHApX/ltsNAoPW34MOAuOs27AGAr2PgIIPArLgquwDAq3gquwDApLEvOQNApPvl4oBAuiCl4oBAuy/wJwFAuG1hIYGAu/AjZoFAq3PuosPArrAzdAMArWQ1d0DAqfnmOUHAoTMr+0GAtnhgs4CAvSYuswBAtiTvpUMAua72qcDAoCn3MABApeQnPINArGa0q4EAtf6164MAs2g5EAC9/n45wICwe7o8QoCivvJjwMC3uD1vg0CgqTi2w8C5Z+f0gkCzZCqigwCqqCL8gQC397Yvw8CuebmuwYC1PAzAu6u7NkBAqTGvQYC/4PapwQCmYuHuwUCyeOtswUCnM7xiwsCjPud+AcCr9P+gQYCuO+dBgLFrtK5BAKz2P2WBAK/+8PZAQKW94LoDAKEiIPoDALtmvvZDgKi84W2DgKzxrEQAurdldkDAuzdldkDAu3dldkDAu7dldkDAv/dldkDAqGg3MoBArmgnMkBArmgkMkBArmglMkBAuC73voFAu+OvL8FAq2S5aIKAuLv5u0MAuLv4u0MAuLv3u0MAuLv2u0MAuLv1u0MAuLv0u0MAuLvzu0MAuLviu4MAuLvhu4MAvyuiboLApeYp88FArKBxeQPAs3q4vkJAujTgI8Egr5kILRn+2l2pHsKNvzfjYFSoXY=" />
</div></form>
</body>
</html>
<script language="javascript" type="text/javascript">

    var openStatus2 = null;


    function hiddenTr(value)//是否显示
    {
        if (value == "不活跃招揽") {
            document.getElementById("ddlZLBuHuoYueTime").style.display = "";
            document.getElementById("ddlZLLiuShiTime").style.display = "none";
            document.getElementById("tdZhaoLanShiJian").style.display = "";
        }
        else if (value == "流失招揽") {
            document.getElementById("ddlZLLiuShiTime").style.display = "";
            document.getElementById("ddlZLBuHuoYueTime").style.display = "none";
            document.getElementById("tdZhaoLanShiJian").style.display = "";
        }
        else if (value == "定期招揽" || value == "首保招揽") {
            document.getElementById("ddlZLBuHuoYueTime").style.display = "none";
            document.getElementById("ddlZLLiuShiTime").style.display = "none";
            document.getElementById("tdZhaoLanShiJian").style.display = "none";
        }
    }
    function open(){
            $(this).css("background-color", "#eeff88");
            var zhaoLanType = document.getElementById("ddlZhaoLanSort").value;
            var href = "commonZhaoLanFrame.aspx?cusGuid=" + this.id + "&TaskId=&num&Type=zhaoLanType";
            var SizeZ = 'height=800,width=900,left=100,top=100,toolbar=no,resizable=yes,status=no,menubar=no,scrollbars=yes';

            openStatus2 = window.open(href, '', SizeZ);

     }

    });
</script>