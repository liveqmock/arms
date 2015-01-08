
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>
	商品采购入库单管理
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="storeOtherInsertBillManage.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNTA3MzA3MTcyZGSHBVUFdEZcCJqYekpnfB4Gr0oKRw==" />
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
        <span class="titleSpan">(采购入库单管理)</span> 
         </td><td align="right">
              <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"  onclick="addBill(0,'采购入库单新增');">新增入库单</a>
              <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"  onclick="addBackBill(0,'采购退库单新增');">新增退库单</a>
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
                <th  data-options="field:'caiGouGuid',checkbox:true"></th>
				<th  data-options="field:'groupId',width:50,hidden:true" sortable="true">机构Id</th>
                <th  data-options="field:'billNo',width:110" sortable="true">单号</th>
                <th  data-options="field:'ioFlag',width:70" sortable="true">出入标志</th>                
                <th  data-options="field:'busiDate',width:80" sortable="true">订购日期</th>
                <th  data-options="field:'suppName',width:170" sortable="true">供应商</th>
                <th  data-options="field:'busiMan',width:120" sortable="true">业务员</th>
                <th  data-options="field:'faPiaoHao',width:120" sortable="true">发票号</th>
                <th  data-options="field:'shuLiangAll',width:80,align:'right'" sortable="true">数量</th>
                <th  data-options="field:'jinEAll',width:100,align:'right'" sortable="true">金额</th>

                <th  data-options="field:'status',width:80,formatter:flowStatus" >状态</th>
                <th  data-options="field:'exaTime',width:80" >审核时间</th>
                <th  data-options="field:'exaUserName',width:90" >审核人</th>      
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
     <td>入库时间:</td><td><input name="txtDateStart" type="text" id="txtDateStart" class="inputCss easyui-datebox" style="width:100px;" /> </td>
     <td>至</td><td><input name="txtDateEnd" type="text" id="txtDateEnd" class="inputCss easyui-datebox" style="width:100px;" /></td>
     <td>单号:</td>
     <td><input name="txtBillNo" type="text" maxlength="20" id="txtBillNo" style="width:120px;" /></td>
     <td>供应商:</td>
     <td><input name="txtSuppName" type="text" maxlength="20" id="txtSuppName" style="width:120px;" /></td>     
      <td>
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
     </td>
     </tr>
     <tr>
     <td>单据状态:</td>
     <td>
     <select name="ddlStatus" id="ddlStatus" style="width:100px;">
	<option selected="selected" value="">全部</option>
	<option value="0">待提交审核</option>
	<option value="1">审核中</option>
	<option value="2">审核完毕</option>
	<option value="3">单据退回处理</option>
	<option value="4">流程被删除</option>

</select> </td>
     <td>商品编码:</td>
     <td><input name="txtShopId" type="text" maxlength="30" id="txtShopId" /> </td>
     <td>商品名称:</td>
     <td><input name="txtShopName" type="text" maxlength="80" id="txtShopName" /> </td>
     
     </tr>
    </table>
    </div>
   <!--查询条件 end-->
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="4170520B" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWEgLP/b3ZDQLAn+vmDAKfluDwDwKa7byuAgKm4eRsAurg+t8NArSW1KAPAtr08I0OArWj9MQFAqmLicEFAvKf2fYKAuLw85gGAv3w85gGAvzw85gGAv/w85gGAv7w85gGAqi82IEEAricuNgFY0TPqC1K+5M/lBMd+PLtj57a/hg=" />
</div></form>


    <script language="javascript" type="text/javascript">
        //新增采购入库单
        function addBill(id, title) {
            //if (id != undefined) {
               // parent.winopen('../storeOtherManage/storeOtherInsertBill.aspx?j=0' + "&d=" + new Date(), '采购入库单', 990, 600, true, true, false);
            //}

            z = window.open('storeOtherInsertBill.aspx?j=0' + "&d=" + new Date(), '采购入库单', 'height=600,width=990,top=35,left=60,toolbar=no,menubar=no,scrollbars=yes, resizable=yes,location=no, status=no');
            z.focus();


        }

        //新增采购退库单
        function addBackBill(id, title) {
            //if (id != undefined) {
              // parent.winopen('../storeOtherManage/storeOtherInsertBackBill.aspx?j=0' + "&d=" + new Date(), '采购退库单', 990, 600, true, true, false);
           // }

            z = window.open('storeOtherInsertBackBill.aspx?j=0' + "&d=" + new Date(), '采购退库单', 'height=600,width=990,top=35,left=60,toolbar=no,menubar=no,scrollbars=yes, resizable=no,location=no, status=no');
           z.focus();
       }


    </script>

    <script language="javascript" type="text/javascript" >
     

        function billShow(index) {
            var a = $('#dg').datagrid('getRows')[index]['thisBillGuid'];
            var b = $('#dg').datagrid('getRows')[index]['billNo'];
            var c = $('#dg').datagrid('getRows')[index]['ioFlag'];
            var url = "";
            if (c == "入库单") {
                url = "../storeOtherManage/storeOtherInsertBill.aspx?billGuid=" + a + "&d=" + new Date();
                b = '[' + b + ']采购入库单修改';
            } else {
                url = "../storeOtherManage/storeOtherInsertBackBill.aspx?operSort=mdf&billGuid=" + a + "&d=" + new Date();
                b = '[' + b + ']采购退库单修改';
            }


            if (a != "") {
                parent.winopen(url,b,990, 600, true, true, false);
            }
        }




        var jsonStr = '{"total":6119,"rows":[{"faPiaoHao":"","busiDate":"2015/01/08","ioFlag":"采购退库单","exaTime":"2015/01/08","exaUserName":"吴可","groupId":"6012","thisBillGuid":"2f03989e-3401-45a8-9dc7-58a8d2bde1a4","billNo":"CGTH20150108002","suppName":"天津一汽","busiMan":"吴可","shuLiangAll":"2.00","jinEAll":"416.900","status":"2"},{"faPiaoHao":"","busiDate":"2015/01/08","ioFlag":"采购退库单","exaTime":"2015/01/08","exaUserName":"吴可","groupId":"6012","thisBillGuid":"6b4abc45-94df-4e62-b82b-93c8f3ebcc09","billNo":"CGTH20150108001","suppName":"一汽丰田","busiMan":"吴可","shuLiangAll":"1.00","jinEAll":"315.814","status":"2"},{"faPiaoHao":"SW43476","busiDate":"2015/01/08","ioFlag":"入库单","exaTime":"2015/01/08","exaUserName":"吴可","groupId":"6012","thisBillGuid":"6ee9a462-5b98-43a0-8570-12a961de169e","billNo":"PJRK20150108003","suppName":"一汽丰田","busiMan":"吴可","shuLiangAll":"10.00","jinEAll":"4115.000","status":"2"},{"faPiaoHao":"EW62408","busiDate":"2015/01/08","ioFlag":"入库单","exaTime":"2015/01/08","exaUserName":"吴可","groupId":"6012","thisBillGuid":"fd254dba-321a-4263-9a9c-9f015ae6e00a","billNo":"PJRK20150108002","suppName":"一汽丰田","busiMan":"吴可","shuLiangAll":"12.00","jinEAll":"2439.900","status":"2"},{"faPiaoHao":"SW43476","busiDate":"2015/01/08","ioFlag":"入库单","exaTime":"2015/01/08","exaUserName":"吴可","groupId":"6012","thisBillGuid":"1c16689b-7019-40c3-82d9-93b240d189a0","billNo":"PJRK20150108001","suppName":"一汽丰田","busiMan":"吴可","shuLiangAll":"42.00","jinEAll":"5695.514","status":"2"},{"faPiaoHao":"","busiDate":"2015/01/07","ioFlag":"入库单","exaTime":"2015/01/07","exaUserName":"吴可","groupId":"6012","thisBillGuid":"9566677f-2afa-4af5-ae9e-58239a6aa16d","billNo":"PJRK20150107008","suppName":"天津一汽","busiMan":"吴可","shuLiangAll":"1.00","jinEAll":"8.900","status":"2"},{"faPiaoHao":"","busiDate":"2015/01/07","ioFlag":"入库单","exaTime":"2015/01/07","exaUserName":"吴可","groupId":"6012","thisBillGuid":"2fa9f33a-926f-496f-be48-4853ea7d2903","billNo":"PJRK20150107007","suppName":"润昇精品外调","busiMan":"吴可","shuLiangAll":"2.00","jinEAll":"225.000","status":"2"},{"faPiaoHao":"","busiDate":"2015/01/07","ioFlag":"入库单","exaTime":"2015/01/07","exaUserName":"吴可","groupId":"6012","thisBillGuid":"24ba2fe0-41f6-4fba-991a-b108a4b5951c","billNo":"PJRK20150107006","suppName":"天津一汽","busiMan":"吴可","shuLiangAll":"1.00","jinEAll":"408.000","status":"2"},{"faPiaoHao":"","busiDate":"2015/01/07","ioFlag":"入库单","exaTime":"2015/01/07","exaUserName":"吴可","groupId":"6012","thisBillGuid":"d42838c8-7c4e-44e2-9f95-18765b4d3793","billNo":"PJRK20150107005","suppName":"润昇精品外调","busiMan":"吴可","shuLiangAll":"1.00","jinEAll":"472.000","status":"2"},{"faPiaoHao":"","busiDate":"2015/01/07","ioFlag":"入库单","exaTime":"2015/01/07","exaUserName":"吴可","groupId":"6012","thisBillGuid":"8e771f5e-fceb-4421-a43b-dc036e1a4ac3","billNo":"PJRK20150107004","suppName":"润昇用品（油料）","busiMan":"吴可","shuLiangAll":"612.00","jinEAll":"23028.000","status":"2"},{"faPiaoHao":"EW62256","busiDate":"2015/01/07","ioFlag":"入库单","exaTime":"2015/01/07","exaUserName":"吴可","groupId":"6012","thisBillGuid":"69cf4ec9-3a37-4a9f-9fd2-0b595a03c0b1","billNo":"PJRK20150107003","suppName":"一汽丰田","busiMan":"吴可","shuLiangAll":"11.00","jinEAll":"5230.600","status":"2"},{"faPiaoHao":"SW43388","busiDate":"2015/01/07","ioFlag":"入库单","exaTime":"2015/01/07","exaUserName":"吴可","groupId":"6012","thisBillGuid":"573e8231-6684-4ac6-9d7b-af002abf72b5","billNo":"PJRK20150107002","suppName":"一汽丰田","busiMan":"吴可","shuLiangAll":"1.00","jinEAll":"352.000","status":"2"},{"faPiaoHao":"SW43383","busiDate":"2015/01/07","ioFlag":"入库单","exaTime":"2015/01/07","exaUserName":"吴可","groupId":"6012","thisBillGuid":"591880df-6e19-4b9e-b176-e9bc27529328","billNo":"PJRK20150107001","suppName":"一汽丰田","busiMan":"吴可","shuLiangAll":"82.00","jinEAll":"7513.900","status":"2"},{"faPiaoHao":"","busiDate":"2015/01/06","ioFlag":"入库单","exaTime":"2015/01/06","exaUserName":"毛凯","groupId":"6012","thisBillGuid":"c9451c46-67c3-43f8-88ce-fe78e0e7dc31","billNo":"PJRK20150106006","suppName":"润昇精品外调","busiMan":"吴可","shuLiangAll":"1.00","jinEAll":"1247.000","status":"2"},{"faPiaoHao":"","busiDate":"2015/01/06","ioFlag":"入库单","exaTime":"2015/01/06","exaUserName":"毛凯","groupId":"6012","thisBillGuid":"118c57c4-d878-428c-a011-5fd47a4214e8","billNo":"PJRK20150106005","suppName":"九江市市区","busiMan":"毛凯","shuLiangAll":"1.00","jinEAll":"320.000","status":"2"}]}';
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