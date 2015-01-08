

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>
	商品精品出库单管理
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="storeOtherJingPinOutBillManage.aspx?d=Thu+Jan+08+2015+12%3a06%3a28+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTc1NTY2Mzk2OGRkB7H8EBRP66ZfgWqhny+NnLtGOoE=" />
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
        <span class="titleSpan">(精品出库管理)</span> 
         </td><td align="right">
              <a id="btnRefresh" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" href="javascript:__doPostBack('btnRefresh','')">刷新</a> 
		      <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" onclick="searchClick('1');">查询</a>
              <a id="lnkExcel" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-excel'" href="javascript:__doPostBack('lnkExcel','')">Excel</a> 
		      <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" onclick="changeJingPinChuTuiKu('1');">精品出退库</a>
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
                <th  data-options="field:'billNo',width:110" sortable="true">单号</th>
                <th  data-options="field:'ioFlagBill',width:65" sortable="true">出入标志</th>                
                <th  data-options="field:'busiDate2',width:100" sortable="true">出库日期</th>
                <th  data-options="field:'cheZhuName',width:120" sortable="true">客户名</th> 
                <th  data-options="field:'cheJiaHao',width:120" sortable="true">车架号码</th>
                <th  data-options="field:'shuLiangAll',width:80,align:'right'" sortable="true">数量</th>
                <th  data-options="field:'jinEAll',width:100,align:'right'" sortable="true">金额</th>

                <th  data-options="field:'status',width:80,formatter:flowStatus" >状态</th>
                <th  data-options="field:'exaTime2',width:100" >审核时间</th>
                <th  data-options="field:'exaUserName',width:80" >审核人</th>    
                <th  data-options="field:'remarks',width:180" >备注</th>      
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
     <td>出库时间:</td><td><input name="txtDateStart" type="text" id="txtDateStart" class="inputCss easyui-datebox" style="width:100px;" /> </td>
     <td>至</td><td><input name="txtDateEnd" type="text" id="txtDateEnd" class="inputCss easyui-datebox" style="width:100px;" /></td>
     <td>单号:</td>
     <td><input name="txtBillNo" type="text" maxlength="20" id="txtBillNo" style="width:120px;" /></td>
     <td>客户名:</td>
     <td><input name="txtCusName" type="text" maxlength="20" id="txtCusName" style="width:120px;" /></td>     
     <td>
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a> 
     </td>
     </tr>
      <tr>     
     <td>备注</td>
     <td>
     <input name="txtBeiZhu" type="text" maxlength="60" id="txtBeiZhu" />
     </td>
     </tr>
    </table>
    </div>
   <!--查询条件 end-->
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="E296526C" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWDALmsOhAAsCf6+YMArzt6fYEAp+W4PAPAprtvK4CAqbh5GwC6uD63w0CtJbUoA8C2vTwjQ4CqoLToAECqYuJwQUCjpDR3QIRqtzZc1HVoX+6dZ8tuSUoRWvf9Q==" />
</div></form>

 

    <script language="javascript" type="text/javascript" >

        function billShow(index) {
            var a = $('#dg').datagrid('getRows')[index]['thisBillGuid'];
            var b = $('#dg').datagrid('getRows')[index]['billNo'];
            var c = $('#dg').datagrid('getRows')[index]['ioFlagBill'];
            var url = "";
            if (c == "精品出库单") {
                url = "../storeOtherManage/storeOtherJingPinPrint.aspx?thisGuid=" + a + "&d=" + new Date();
                b = '[' + b + ']精品出库单';
            } else {
                url = "../storeOtherManage/storeOtherJingPinPrint.aspx?thisGuid=" + a + "&d=" + new Date();
                b = '[' + b + ']精品退库单';
            }


            if (a != "") {
                z = window.open(url, '精品打印单', 'height=600,width=990,top=35,left=60,toolbar=no,menubar=no,scrollbars=yes, resizable=yes,location=no, status=no');
                z.focus();

            }
        }



        function changeJingPinChuTuiKu() {
            location.href = "storeOtherJingPinManage.aspx?d="+new Date();
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
