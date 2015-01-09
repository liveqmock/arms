<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<link href="../style/common.css?v=20130317" rel="stylesheet" type="text/css" />
<script src="../js/common.js?v=2013022501" type="text/javascript"></script>
<script type="text/javascript">

    $(function () {
        $('#dg').datagrid({
            onDblClickRow: function (row, rowdata) {
                parent.winopen('../SaleBefore_Manage/GenZongPiShiDetail.aspx?CustGuid=' + rowdata.CustGuid + '&&syauto=' + new Date() + '', '客户[<span style="color:red;">' + rowdata.cust_Name + '</span>]跟踪记录明细', 800, 500, true, true, false);
            }
        });
        $("#sortFiled").click(function () {

            parent.winopen('../Index/PageFiledSelect.aspx?PageName=Cust_ManageCarMain&&syauto=' + new Date() + '', '列设置', 845, 510, true, true, false);
        });
    });
   
  
</script>
<style type="text/css">
    a
    {
        display: none;
    }
    .style1
    {
        height: 63px;
    }
    .style2
    {
        height: 261px;
    }
</style>
<body>
    <form name="form1" method="post" action="Cust_ManageCarMain.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTExNzQxNjU4MTcPZBYCAgMPZBYIAgkPFgIeC18hSXRlbUNvdW50AgEWAmYPZBYCZg8VAgJQMwExZAIRDxYCHgRUZXh0BQEwZAITDxAPFgYeDkRhdGFWYWx1ZUZpZWxkBQh1c2VyR3VpZB4NRGF0YVRleHRGaWVsZAUIdXNlck5hbWUeC18hRGF0YUJvdW5kZ2QQFRsILeWFqOmDqC0J6YK55a6c6IqzBua1i+ivlQbog6HlkJsG5p2O5bu6Cee9l+Wwj+WonwboqbnmrKIJ6ZKf5LuV5Z+OCeW8oOeUnOeUnAnlkajlroflrr4J6ZmI6b6Z5b+XCeiDoeaipuS6kQbmn6/np5EG546L5pmfCeeGiui2heWNlwnkvZnnnb/mtIEG6auY56OKAzEyMwbliJjliZEJ5YiY5pif6L6wCeWPsuS4veiQjQnlvpDlu7roi7EG6IKW5LyfCeS9meS5kOW5swboooHng4EJ5L2Z5oCd5oCdCemCueWbveaXuhUbACQ1YzlkMzkxZi1jNmVlLTQxMzMtODMyOS0zNDZiYjkxNDk3MTQkMGJmODEwNmItMWU1MC00NmYwLWI3OTItZGVjYjJmYTkwNTFjJDk3OGQwNjhjLTcwYmItNGM1Ny05MmE3LTA4MmI0NjIzZDZiYiQ3YTBjNjE3MS0zNmE0LTRhMjYtOWY2Ni0yOTM0MTdiMTdiNTIkYWU4YmRmNzAtZTk4NS00Nzk0LWIyNTEtNmUwZWJiODUyMzdjJDk0ZWU1OGZjLWM0YzMtNGQyNy1iN2U2LTAxMWQxNjBhZTQwMyQzMTc0Y2U5YS02MDAxLTQ3YTMtOTFhZC01ZWFlODA4ODA0ODIkZmEyNzUzYmQtOTg2Yy00Zjg1LWI1ZjctODkzM2Y3MmMzYTNhJGZkMzY0ZjdiLTRhYWYtNGQ1Ni05ZTQwLWVlMGVmNTY5NTc0MiRmYjVlOTA5MC1lNmEyLTRhODktOGVhNC0zN2U5MWE1NmMwYjAkNTEwYmY3Y2ItZTU3OS00YTRiLThlOGMtMjE2ODk3OGNiMmI4JDA1MDEwMjA2LWVkNzMtNDcyMy04ZDVjLWNlNzM0Yzg5OTNmNiQyMDc1ZDg5ZC1hNGNlLTRlNjktYjE5NC0xMGQ1YzJkOTU0ZGEkMjNhN2I3NzQtM2ZmNi00ZmFkLWEzNmQtN2NkMWE0NzUzZTk4JGEzY2Y3YzNjLWYyMmItNDY3Yy05NmE2LWVhMjEyYTFmYmIwMyQ5M2Y3MDgxYS0zOTQ0LTQzNWEtOWYzYy0xNTY3OGUyYjQwMGYkNjBhNGE0OTktMWI2OC00YmE4LWEwYTctNWU2NWFjYjE0ZmMzJGE2Zjc4ZDIwLWQzY2ItNDcxNC1hOTgzLTAzODFmOTY5N2ZhYSQyMzAxMDU5NS03ZjYzLTQ0Y2ItOGZkOC0xZDkyNmY2MDA1YzgkNTQ4OGI3NTAtMTExYy00YWYxLThhMTQtZmY4M2FiN2Q2ODllJDAxY2VkYjJhLTI1ZjQtNGFjYS04YTI1LWMwNTZlYjc5YmJmNyQ2MzY5ODllMS0yMGQ0LTRjZTUtODZlNi1hNTBiNDZiYmE3NTIkZjQxYTQ2M2YtNjM1My00MGIxLTg2NDktNGJiOWYyZjMzZDMyJDJjNGU5NTI2LWZjNmMtNGI5Yy04YzAyLTc5YTY5ZjNjMjY0YyQ1Mjc5MTdlZC02N2ZlLTQwODMtYjA0Ni0yNjkxNDAyZmI1YjYkMGZjMzE4YWMtMTY0Yi00YzJkLTk3YmEtOGY3YTk4NjIyNWNhFCsDG2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2RkAhUPEGRkFgFmZGQIn1GWBMSnyRntm6qant5zAaTQwQ==" />
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


    <input type="hidden" name="hiddPageNum" id="hiddPageNum" />
    <input type="hidden" name="hiddPageSize" id="hiddPageSize" />
    <div class="allRegion">
        <div class="title">
            <table border="0" style="width: 100%;">
                <tr>
                    <td class="titlebg">
                        <span class="titleSpan">客户活动日</span>
                    </td>
                    <td>
                    </td>
                    <td align="right">
                        <a href="#" id="sortFiled" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-excel'">
                            列设置</a>
                        <a id="btnRefresh" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" href="javascript:__doPostBack('btnRefresh','')">刷新</a>
                        <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'">
                            查询</a>
                    </td>
                </tr>
            </table>
        </div>
        <div class="region">
           
            <table id="dgUI"  sortName='' sortOrder='' class='easyui-datagrid'data-options="rownumbers:true,singleSelect:true,autoRowHeight:false, remoteSort:false,pagination:true, pageList:[10,15,20,30,40,50,100], remoteSort:false,pageNumber:1,pageSize:15,columns:[[ {field:'plan_Date',title:'计划日期',width:100, hidden:false,sortable:false },{field:'link_Detail',title:'联系内容',width:200, hidden:false,sortable:false },{field:'linkTiShi',title:'作业提示',width:150, hidden:false,sortable:false },{field:'Cust_Tel',title:'联系电话',width:100, hidden:false,sortable:false },{field:'cust_DengJi',title:'客户等级',width:100, hidden:false,sortable:false },{field:'CustGuid',title:'CustGuid',width:0, hidden:true,sortable:false },{field:'SalorName',title:'销售员',width:100, hidden:false,sortable:false },{field:'SalorGuid',title:'SalorGuid',width:0, hidden:true,sortable:false },{field:'CarColor',title:'车辆颜色',width:100, hidden:false,sortable:false },{field:'link_Date',title:'完成日期',width:100, hidden:false,sortable:false },{field:'IDGuid',title:'',width:0, hidden:true,sortable:false },{field:'ChePaiHao',title:'车牌号',width:100, hidden:false,sortable:false },{field:'TiCheDate',title:'提车日期',width:100, hidden:false,sortable:false },{field:'Cust_Address',title:'地址',width:200, hidden:false,sortable:false },{field:'Cust_Sort',title:'客户类别',width:100, hidden:false,sortable:false },{field:'Vin',title:'车架号',width:120, hidden:false,sortable:false },{field:'lianXiFangShi',title:'拜访方式',width:100, hidden:false,sortable:false }]],frozenColumns:[[{field:'cust_Name',title:'客户名称',width:100,hidden:false,sortable:false}]]"></table><script type="text/javascript">    var jsonstr='{"total":52,"rows":[{"SalorName":"李建"},{"SalorName":"江莉丽"},{"SalorName":"钟仕城"},{"SalorName":"江莉丽"},{"SalorName":"钟仕城"},{"SalorName":"走－阮文国"},{"SalorName":"钟仕城"},{"SalorName":"走－阮文国"},{"SalorName":"陈伟伟"},{"SalorName":"李建"},{"SalorName":"走－阮文国"},{"SalorName":"走－阮文国"},{"SalorName":"走－阮文国"},{"SalorName":"钟仕城"},{"SalorName":"走－阮文国"}]}'; var jsonStrData=$.parseJSON(jsonstr);
                          $(function(){
                          $('#dgUI').datagrid('loadData',jsonStrData);
                           var pg = $('#dgUI').datagrid('getPager');
                            if(pg){
                                $(pg).pagination({    onSelectPage:function(pageNumber,pageSize){ __doPostBack('dgUI',pageNumber+','+pageSize); }  });}
                          } );</script>
            <table width="100%">
                <tr>
                    <td>
                        <table class="tableborder" style="margin-top: 10px;">
                            <tr>
                                <td align="center" width="100px">
                                    本月潜客数
                                </td>
                                <td align="center" width="100">
                                    本日签单数
                                </td>
                                <td align="center" width="100">
                                    本月签单数
                                </td>
                                <td align="center" width="100">
                                    本日回访客户数
                                </td>
                                <td align="center" width="100">
                                    本日联系潜客数
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table width="100%">
                                        
                                                <tr>
                                                    <td align="center">
                                                        P3
                                                    </td>
                                                    <td align="center">
                                                        1
                                                    </td>
                                                </tr>
                                            
                                    </table>
                                </td>
                                <td align="center">
                                    
                                </td>
                                <td align="center">
                                    
                                </td>
                                <td align="center">
                                    
                                </td>
                                <td align="center">
                                    0
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <div>
                            <p>
                                销 售 员&nbsp;
                                <select name="ddlSalors" id="ddlSalors" style="width:80px;">
	<option value="">-全部-</option>
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
                                &nbsp;
                                <span id="rdblSort"><input id="rdblSort_0" type="radio" name="rdblSort" value="售前" checked="checked" /><label for="rdblSort_0">售前</label><input id="rdblSort_1" type="radio" name="rdblSort" value="已售" onclick="javascript:setTimeout('__doPostBack(\'rdblSort$1\',\'\')', 0)" /><label for="rdblSort_1">已售</label></span>
                                <a id="lnkReload" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" href="javascript:__doPostBack('lnkReload','')"></a>
                            </p>
                            <p>
                                当前时间
                                <input name="txtStartTime" type="text" id="txtStartTime" class="easyui-datebox" />至<input name="txtEndTime" type="text" id="txtEndTime" class="easyui-datebox" />
                            </p>
                            <p>
                            </p>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <a id="tmp" href="javascript:__doPostBack('tmp','')"></a>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="FB9056B9" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWJgK917z+CgLqq76jCALGpuKNBgLAn+vmDAK8g7K+BgL+jIWvDALpg/L0DwLm0+p5AvSkp8EEAtePkMkFAoqiveoBAqfbhegCAovQgbEPArX45QMC0+Tj5AICxNOj1g4C4tntigcChLnoig8CnuPb5AMCpLrHwwECkq3X1QkC2bj2KwKNo8qaDgLR593/DAK23KD2CgKe05WuDwL547TWBwKMneebDALqpdmfBQKHs4ykAwK97dP9AgLnl+v9CQKrhu+4BgLl0tz9CQL2xvLuCAKToJ2RDwKp87aZCAKm4eRsR07PnfxkpfmHdbTZOTP+nF2ZEz8=" />
</div></form>
</body>
</html>