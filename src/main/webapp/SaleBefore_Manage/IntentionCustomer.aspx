<html>
<head id="Head1"><title>
	意向客户
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<style type="text/css">
    a
    {
        display: none;
    }
</style>
<body>
    <form name="form1" method="post" action="IntentionCustomer.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTU4OTc3NzY1OA9kFgICAQ9kFgQCAQ8QZGQWAWZkAgcPEA8WBh4NRGF0YVRleHRGaWVsZAUPSW50ZW50aW9uX1NhbG9yHg5EYXRhVmFsdWVGaWVsZAUPSW50ZW50aW9uX1NhbG9yHgtfIURhdGFCb3VuZGdkEBUBABUBABQrAwFnFgFmZGTwUV9FcL80ZTchRhyFOoVFLTDTqQ==" />
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


    <div class="allRegion">
        <div class="title">
            <table border="0" style="width: 100%;">
                <tr>
                    <td class="titlebg">
                         <span class="titleSpan" >意向客户</span>
                    </td>
                    <td align="right">
                        <span id="rdlistYXStatus"><input id="rdlistYXStatus_0" type="radio" name="rdlistYXStatus" value="0" checked="checked" /><label for="rdlistYXStatus_0">未成交</label><input id="rdlistYXStatus_1" type="radio" name="rdlistYXStatus" value="-1" onclick="javascript:setTimeout('__doPostBack(\'rdlistYXStatus$1\',\'\')', 0)" /><label for="rdlistYXStatus_1">终止</label><input id="rdlistYXStatus_2" type="radio" name="rdlistYXStatus" value="1" onclick="javascript:setTimeout('__doPostBack(\'rdlistYXStatus$2\',\'\')', 0)" /><label for="rdlistYXStatus_2">完成</label><input id="rdlistYXStatus_3" type="radio" name="rdlistYXStatus" value="" onclick="javascript:setTimeout('__doPostBack(\'rdlistYXStatus$3\',\'\')', 0)" /><label for="rdlistYXStatus_3">所有</label></span>
                        
                           <span class="requireSpan">&nbsp;&nbsp;</span>查询年份:
                        <input name="txtYear" type="text" id="txtYear" style="width:60px;" />
                         <span class="requireSpan">&nbsp;&nbsp;</span>月份:
                              <select name="txtMonth" id="txtMonth" class="easyui-combobox" style="width:60px;">
	<option value="01">01</option>
	<option value="02">02</option>
	<option value="03">03</option>
	<option value="04">04</option>
	<option value="05">05</option>
	<option value="06">06</option>
	<option value="07">07</option>
	<option value="08">08</option>
	<option value="09">09</option>
	<option value="10">10</option>
	<option value="11">11</option>
	<option value="12">12</option>

</select>
                        <span class="requireSpan">&nbsp;&nbsp;</span>销售员:<select name="ddlSalor" onchange="javascript:setTimeout('__doPostBack(\'ddlSalor\',\'\')', 0)" id="ddlSalor" class="easyui-combobox" style="width:140px;">
	<option selected="selected" value=""></option>

</select>
                        <a href="#" class="easyui-linkbutton" data-options="plain:true"">财务确认</a>
                        <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"
                            onclick="add(0,'意向客户新增');">新增</a> 
                        <a id="refresh" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" href="javascript:__doPostBack('refresh','')">刷新</a>
                        <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" onclick="searchClick('1');">
                            查询</a>
                    </td>
                </tr>
            </table>
        </div>
        <div class="region">
            <table id="dg" class="easyui-datagrid" data-options="
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
				pagination:true,
                columns:[[
                 {field:'ck',checkbox:true},
                 {field:'Intention_CustGuid',title:'意向人guid',hidden:true,width:40},
                 {field:'Intention_CustName',title:'意向人',width:40},
                 {field:'Intention_Tel',title:'固定电话',width:80},
                 {field:'TIntention_Date',title:'登记日期',width:80},
                 {field:'Intention_CarSerial',title:'车名',width:80},
                 {field:'Intention_CarModel',title:'意向车型',width:80},
                 {field:'Intention_Color',title:'颜色',width:40},
                 {field:'Intention_Request',title:'需求描述',width:100},
                 {field:'Intention_Salor',title:'销售顾问',width:80},
                 {field:'Intention_Remark',title:'备注',width:100},
                 {field:'Intention_Status',title:'状态',width:40},
                 {field:'Intention_LinkMan',title:'联系人',width:60},
                 {field:'Intention_Address',title:'地址',width:100},
                 {field:'Intention_PayMeth',title:'付款方式',width:80},
                 {field:'Intention_PlanAmt',title:'诚意金额',width:80},
                 {field:'Intention_FinFlag',title:'财务确认',width:80},
                 {field:'Intention_RtnFlag',title:'已退',width:40}
                ]],
                remoteSort:false,
                pageList:[10,15,20,30,40,50,100],
                pageNumber:1,
				pageSize:15">
            </table>
        </div>
    </div>
    <div  id="search" style="display:none;">
    <table border='0' >
    <tr>

      <td>意向人姓名:</td>
     <td> <input name="txtCustName" type="text" maxlength="10" id="txtCustName" /> </td>
       
     </tr>
   
     <tr>
     <td>
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
     </td>
     </tr>
    </table>
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="71A50937" />
</div></form>
    <script language="javascript" type="text/javascript">

        //所有的按钮事件
        function add(id, title) {
            if (id != undefined) {

                parent.winopen('../SaleBefore_Manage/IntentionCustomer_Add.aspx?Id=' + id + "&d=" + new Date(), title, 750, 550, true, true, false);


            }
        }
        $('#dg').datagrid({
            onClickRow: function (index, data) {
                add(data.Intention_CustGuid, "修改");
            }
        });


        //DataGrid数据加载
        var jsonStr = '{"total":0,"rows":[{"id":"请重新输入查询条件"}]}';
        jsonStrData = $.parseJSON(jsonStr);
        $(function () {
            $('#dg').datagrid({ loadFilter: pagerFilter }).datagrid('loadData', jsonStrData);
        });

        function pagerFilter(data) {
            if (typeof data.length == 'number' && typeof data.splice == 'function') {	// is array
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
                    dg.datagrid('loadData', data);
                }
            });
            if (!data.originalRows) {
                data.originalRows = (data.rows);
            }
            var start = (opts.pageNumber - 1) * parseInt(opts.pageSize);
            var end = start + parseInt(opts.pageSize);
            data.rows = (data.originalRows.slice(start, end));
            return data;
        }
    </script>
</body>
</html>