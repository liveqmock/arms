<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<script language="javascript" type="text/javascript">

    //加载订单列表数据
    var jsonstr = '{"total":0,"rows":[{"id":"请重新输入查询条件"}]}';
    jsonStrData = $.parseJSON(jsonstr);

    $(function () {
        $("#lnkSearch,#lnkExcel").click(function () {
            $('#dg').datagrid("loading");

        });
        $(document).keydown(function () {
            //
            if (event.keyCode == 13) {
                __doPostBack('lnkSearch', '');
                $('#dg').datagrid("loading");
            }
        });

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
                //alert("当前页:" + pageNum);
                $("#hidPage").val(pageNum);
                $("#hidPageSize").val(pageSize);

                //alert("页面尺寸:" + pageSize);

                __doPostBack('lnkPage', '');
                $('#dg').datagrid("loading");
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
<body>
    <form name="form1" method="post" action="QianZaiKeHuList.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTMyMTEyNDE2MWRkcBiqg3hcdjWYdG9QjHUE/Ls94aw=" />
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
        <div class="allRegion">
            <div class="title">
                <table border="0" style="width: 100%;">
                    <tr>
                        <td class="titlebg">
                            <span class="titleSpan">潜在客户明细查询</span>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="region">
                
                <div id="searchid">
                    <table style="margin: 10px 0 0 40px;">
                        <tr>
                            <td>
                                客户名称
                            </td>
                            <td>
                                <input name="txtCustName" type="text" maxlength="10" id="txtCustName" style="width:100px;" />
                            </td>
                            <td>
                                客户手机
                            </td>
                            <td>
                                <input name="txtMobile" type="text" maxlength="11" id="txtMobile" style="width:100px;" />
                            </td>
                            <td>
                                客户等级
                            </td>
                            <td>
                                <input name="txtDengJi" type="text" maxlength="5" id="txtDengJi" style="width:100px;" />
                            </td>
                            <td>
                                计划联系
                            </td>
                            <td>
                                <input name="txtPlanlinkDate" type="text" maxlength="15" id="txtPlanlinkDate" class="easyui-datebox" style="width:100px;" />
                            </td>
                            <td>
                                销售顾问
                            </td>
                            <td>
                                <input name="txtSalor" type="text" maxlength="15" id="txtSalor" style="width:100px;" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="7">
                                <table id="QKSortRBL" cellpadding="5" border="0">
	<tr>
		<td><input id="QKSortRBL_0" type="radio" name="QKSortRBL" value="A卡" checked="checked" /><label for="QKSortRBL_0">A卡</label></td><td><input id="QKSortRBL_1" type="radio" name="QKSortRBL" value="当月A卡" /><label for="QKSortRBL_1">当月A卡</label></td><td><input id="QKSortRBL_2" type="radio" name="QKSortRBL" value="当月客户" /><label for="QKSortRBL_2">当月客户</label></td><td><input id="QKSortRBL_3" type="radio" name="QKSortRBL" value="当月成交" /><label for="QKSortRBL_3">当月成交</label></td><td><input id="QKSortRBL_4" type="radio" name="QKSortRBL" value="成交客户" /><label for="QKSortRBL_4">成交客户</label></td><td><input id="QKSortRBL_5" type="radio" name="QKSortRBL" value="流失客户" /><label for="QKSortRBL_5">流失客户</label></td><td><input id="QKSortRBL_6" type="radio" name="QKSortRBL" value="当月流失" /><label for="QKSortRBL_6">当月流失</label></td><td><input id="QKSortRBL_7" type="radio" name="QKSortRBL" value="到期维系" /><label for="QKSortRBL_7">到期维系</label></td><td><input id="QKSortRBL_8" type="radio" name="QKSortRBL" value="超期维系" /><label for="QKSortRBL_8">超期维系</label></td><td><input id="QKSortRBL_9" type="radio" name="QKSortRBL" value="" /><label for="QKSortRBL_9">全部</label></td>
	</tr>
</table>
                            </td>
                            <td>
                                <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
                                <a id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">导出</a>
                                
                            </td>
                             <td>
                            </td>
                            <td>
                                <input type="hidden" name="hidAllResult" id="hidAllResult" value="1" />
                                <input type="hidden" name="hidPage" id="hidPage" value="1" />
                                <input type="hidden" name="hidPageSize" id="hidPageSize" value="15" />
                                <a id="lnkPage" href="javascript:__doPostBack('lnkPage','')"></a>
                            </td>
                           
                        </tr>
                    </table>
                </div>
                
                <table id="dg" class="easyui-datagrid" toolbar="#searchid" data-options="
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
                frozenColumns:[[
                 {field:'首洽时间',title:'首洽时间',width:140},
                {field:'客户名称',title:'客户名称',width:100},
                {field:'移动电话',title:'移动电话',width:80}
              
                ]],
                columns:[[
                {field:'原有车型',title:'原有车型',width:100},
                {field:'原车牌号',title:'原车牌号',width:100},
                {field:'意向车型',title:'意向车型',width:100},
                {field:'是否试驾',title:'是否试驾',width:100},
                {field:'所属地区',title:'所属地区',width:100},
                {field:'销售员',title:'销售员',width:100},
                {field:'客户等级',title:'客户等级',width:100},
                {field:'购置类别',title:'购置类别',width:100},
                {field:'客户性质',title:'客户性质',width:100},
                {field:'客户来源',title:'客户来源',width:100},
                {field:'需求描述',title:'需求描述',width:100},
                {field:'客户渠道',title:'客户渠道',width:100}
              
                
               ]],
				pagination:true,
                idfield:'OrderGuid',
                 pagination:true,
                remoteSort:false,
                pageList:[10,15,20,30,40,50,100],
                pageNumber:1,
				pageSize:15">
                </table>
            </div>
        </div>
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="DC34FEE7" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWFwKjqYLWBgLxmfnCDQKxhYrZCQL5xLS4CAK1vIL8BALm+6ZxAqfK2/UJAsqE28ULApW2t5QFAt/jjJsPAsjI5NsDAqfKmOcCAsqa3PoEAq7F8ZANApmk95ANAvil/YIGAvil/YIGAqmLicEFArzt6fYEAo6t7M0HArC1xXMCg56hlgUCo+3twQaotRZQ2hVByAiJHfO87pe1G7R1hQ==" />
</div></form>
</body>
</html>