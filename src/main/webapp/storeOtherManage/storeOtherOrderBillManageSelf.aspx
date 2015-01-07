<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>
	商品采购订单管理
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="storeOtherOrderBillManageSelf.aspx?custGuid=&amp;d=Mon+Jan+05+2015+15%3a06%3a14+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTIwMzMwNDQ5OTdkZB/WnoA1YhKDhS8kC/JxMlME3AlZ" />
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
        <table border="0" style="width:100%;">
        <tr><td class="titlebg"><span>配件管理</span>
        <span class="titleSpan">(订单查询)</span> 
         </td><td align="right"> 
		      <a id="btnRefresh" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" href="javascript:__doPostBack('btnRefresh','')">刷新</a> 
		      <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" onclick="searchClick('1');">查询</a>
          </td></tr>
         </table> 
     </div>
     
     <div class="region"  >
         <div class="region">
     <table id="dg"    class="easyui-datagrid"    style="height:500px;" 
      data-options="
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
				pagination:true,
                remoteSort:false,
                pageList:[10,15,20,30,40,50,100],
                pageNumber:1,
				pageSize:15,onClickRow:billShow"
      >
		<thead>
			<tr>
                <th  data-options="field:'thisBillGuid',checkbox:true"></th>
				<th  data-options="field:'groupId',width:50,hidden:true" sortable="true">机构Id</th>
                <th  data-options="field:'billNo',width:120" sortable="true">业务单号</th>
                <th  data-options="field:'regDate',width:120" sortable="true">订购日期</th>
                <th  data-options="field:'chePaiHao',width:160" sortable="true">车牌号码</th>
                <th  data-options="field:'cheJiaHao',width:160" sortable="true">车架号码</th>
                <th  data-options="field:'custName',width:120" sortable="true">车主名</th>
                <th  data-options="field:'busiStatus',width:80" >到货状态</th>
                <th  data-options="field:'chuanSongDate',width:120" >审核时间</th>
                <th  data-options="field:'exaUserName',width:80" >审核人</th>     
            </tr>
		</thead>
	</table>
      </div>

      <input name="txtPageNum" type="text" value="1" id="txtPageNum" style="display:none;" />
      <input name="txtPageSize" type="text" value="15" id="txtPageSize" style="display:none;" />
      <a id="tmp" href="javascript:__doPostBack('tmp','')"></a>
   </div>

  <!--查询条件 start-->
  <div  id="search" style="display:none;">
    <table border='0' >
     <tr>
     <td>订购时间:</td><td><input name="txtDateStart" type="text" id="txtDateStart" class="inputCss easyui-datebox" style="width:100px;" /> </td>
     <td>至</td><td><input name="txtDateEnd" type="text" id="txtDateEnd" class="inputCss easyui-datebox" style="width:100px;" /></td>
     <td>业务单号:</td>
     <td><input name="txtBillNo" type="text" maxlength="20" id="txtBillNo" style="width:120px;" /></td>
     <td>车主名称:</td>
     <td><input name="txtCheZhuName" type="text" maxlength="20" id="txtCheZhuName" style="width:120px;" /></td>
     <td>车牌号码:</td>
     <td><input name="txtChePaiHaoMa" type="text" maxlength="20" id="txtChePaiHaoMa" style="width:120px;" /></td> 
     <td>车架号码:</td>
     <td><input name="txtCheJiaHaoMa" type="text" maxlength="20" id="txtCheJiaHaoMa" style="width:120px;" /></td> 
         
     <td>
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
     </td>
     </tr>
    </table>
    </div>
   <!--查询条件 end-->
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="C41C5A9A" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWDAK7qManBALAn+vmDAKfluDwDwKa7byuAgKm4eRsAurg+t8NArSW1KAPAtr08I0OAqrH7+IHApTI/XIC/vWkqg8CqYuJwQXeQi4MK4nfVcIC9ktH9OG3klbS5A==" />
</div></form>


    <script language="javascript" type="text/javascript">
        //所有的按钮事件
        function addBill(id, title) {
            if (id != undefined) {
                z = window.open('storeOtherOrderBill.aspx?j=0' + "&d=" + new Date(), '订单新增', 'height=600,width=990,top=35,left=60,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no');
                z.focus();

            }
        }

    </script>

    <script language="javascript" type="text/javascript" >


        function billShow(index) {
            var a = $('#dg').datagrid('getRows')[index]['thisBillGuid'];
            var b = $('#dg').datagrid('getRows')[index]['billNo'];
            if (a != "") {
                z = window.open('storeOtherOrderBill.aspx?thisBillGuid=' + a + '&j=0' + "&d=" + new Date(), '订单修改', 'height=600,width=990,top=35,left=60,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no');
                z.focus();
            }
        }


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
 
</body>
</html>