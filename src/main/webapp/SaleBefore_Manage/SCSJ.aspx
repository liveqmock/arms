

<html>
<head><title>
	试乘试驾
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=2dfbab1f71764dc182eb87e4e0aad2fc" type="text/javascript"></script><link href="../style/common.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<link href="../style/common.css?v=20130317" rel="stylesheet" type="text/css" />
<script src="../js/common.js?v=2013022501" type="text/javascript"></script>
<style type="text/css">
    a
    {
        display: none;
    }
</style>
<body>
    <form name="form1" method="post" action="SCSJ.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTEwMTQ0MTE4NjJkZNwdKbHPN3IIb2zpY/OZnPLcclW0" />
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
                        <span class="titleSpan" >试乘试驾</span>
                    </td>
                    <td align="right">
                        <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"
                            onclick="add(0,'试乘试驾新增');">新增</a>
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
                remoteSort:false,
                pageList:[10,15,20,30,40,50,100],
                pageNumber:1,
				pageSize:15">
                <thead>
                    <tr>
                        <th data-options="field:'ck',checkbox:true">
                        </th>
                        <th data-options="field:'SCSJ_Cust_Guid',width:80, hidden:true">
                            客户guid
                        </th>
                        <th data-options="field:'TSCSJ_DateIns',width:80">
                            制单时间
                        </th>
                        <th data-options="field:'SCSJ_Cust_Name',width:80">
                            客户姓名
                        </th>
                        <th data-options="field:'SCSJ_Cust_Sex',width:40">
                            性别
                        </th>
                        <th data-options="field:'SCSJ_Cust_Mobile',width:80">
                            手机
                        </th>
                        <th data-options="field:'SCSJ_Cust_Tel',width:80">
                            联系电话
                        </th>
                        <th data-options="field:'SCSJ_Cust_Job',width:60">
                            职业
                        </th>
                        <th data-options="field:'SCSJ_Cust_JiaShiZhengHao',width:100">
                            驾驶证号码
                        </th>
                        <th data-options="field:'TSCSJ_Time',width:80">
                            试驾日期
                        </th>
                        <th data-options="field:'SCSJ_Place',width:80">
                            试驾地点
                        </th>
                        <th data-options="field:'SCSJ_CarModel',width:80">
                            试驾车型
                        </th>
                        <th data-options="field:'SCSJ_CarBianHao',width:80">
                            车辆编号
                        </th>
                        <th data-options="field:'SCSJ_PeiJiaRen',width:80">
                            陪驾人员
                        </th>
                        <th data-options="field:'SCSJ_Salor',width:80">
                            销售顾问
                        </th>
                        <th data-options="field:'SCSJ_LuXian',width:80">
                            试驾路线
                        </th>
                        <th data-options="field:'SCSJ_Status',width:40">
                            状态
                        </th>
                        <th data-options="field:'SCSJ_Remark',width:200">
                            备注
                        </th>
                    </tr>
                </thead>
            </table>
        </div>
    </div>
      <div  id="search" style="display:none;">
    <table border='0' >
    <tr>

      <td>客户姓名:</td>
     <td> <input name="txtCustName" type="text" maxlength="20" id="txtCustName" /> </td>
          <td>销售顾问:</td>
     <td> <input name="txtSalor" type="text" maxlength="20" id="txtSalor" /> </td>
     </tr>
    <tr>
     <td>试驾日期:</td>
     <td>  <input name="driverDate" type="text" maxlength="20" id="driverDate" class="easyui-datebox" data-options="validType:'md[\'10/11/2012\']'" /></td>
     </tr>
     <tr>
     <td>
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
     </td>
     </tr>
    </table>
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="35A194E0" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBgLjkOu1DwLp4sGQAwLxmfnCDQLm+6ZxAr6qvp8FAqmLicEFAxYWEci5tToKKRz0BCSjJoKry4I=" />
</div></form>
    <script language="javascript" type="text/javascript">

        //所有的按钮事件
        function add(id, title) {
            if (id != undefined) {

                parent.winopen('../SaleBefore_Manage/SCSJ_Add.aspx?Id=' + id + "&d=" + new Date(), title, 750, 550, true, true, false);


            }
        }

        $('#dg').datagrid({
            onClickRow: function (index, data) {
                add(data.SCSJ_Cust_Guid, "试乘试驾[" + data.SCSJ_Cust_Name + "]信息明细");
            }
        });
        //DataGrid数据加载
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