<html>
<head id="Head1"><title>
	维修工时费率设置
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
   <link href="../style/common.css?v=20130317" rel="stylesheet" type="text/css" /> 
   <script src="../js/common.js?v20120" type="text/javascript"></script> 
<body>
    <form name="form1" method="post" action="saleAfter_newGongShiFeiLv.aspx?d=Mon+Jan+05+2015+16%3a11%3a42+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNjc5MzI0Nzc3ZGQgX/NBqDB9y/W94NPyK1lWx0M0/w==" />
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
        <tr><td class="titlebg"><span>维修设置</span>
        <span class="titleSpan">(工时费率设置)</span> 
         </td><td align="right">
              <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"  onclick="addWeiXiuGongShiFeiLv(0,'费率新增');">新增</a>
		      <a id="btnRefresh" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" href="javascript:__doPostBack('btnRefresh','')">刷新</a> 
		      <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" onclick="searchClick('1');">查询</a>
          </td></tr>
         </table> 
     </div>
     
     <div class="region"  >
     <table id="dg"    class="easyui-datagrid"  
      data-options="
				rownumbers:true,
				singleSelect:false,
				autoRowHeight:false,
				pagination:true,
				pageSize:20,onClickRow:billShow"
      >
		<thead>
			<tr>
                <th  data-options="field:'a',checkbox:true"></th>
				<th  data-options="field:'groupName',width:80">机构名称</th> 
				<th  data-options="field:'b',width:160">工段</th>
                <th  data-options="field:'c',width:160">工时费率</th>  
                <th  data-options="field:'d',width:160">最后更新人</th>  
                <th  data-options="field:'e',width:160">最后更新时间</th>                
             </tr>
		</thead>
	</table>
      </div>
       
   </div>

  <!--查询条件 start-->
  <div  id="search" style="display:none;">
    <table border='0' >
    <tr>
     <td>帐套名称:</td>
     <td> <input name="txtZhangTao" type="text" maxlength="10" id="txtZhangTao" style="width:120px;" /> </td>
   
     <td>
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
     </td>
     </tr>
    </table>
    </div>
   <!--查询条件 end-->
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="286C6597" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBAL7/Z/qCgLAn+vmDAK97bTDCgKpi4nBBaDMS+sNz4p4TZABp/Nv/FzUtYP/" />
</div></form>


    <script language="javascript" type="text/javascript">
        //所有的按钮事件
        function addWeiXiuGongShiFeiLv(id, title) {
            if (id != undefined) {
                parent.winopen('../websetup/saleAfter_newGongShiFeiLvAdd.aspx?thisGuid=' + id + "&d=" + new Date(), title, 600, 400, true, true, false);
            }
        }

    </script>

    <script language="javascript" type="text/javascript" >
 

        function billShow(index) {
            var a = $('#dg').datagrid('getRows')[index]['a'];
            var b = $('#dg').datagrid('getRows')[index]['b'];
            if (a != "") {
                parent.winopen('../websetup/saleAfter_newGongShiFeiLvAdd.aspx?thisGuid=' + a + '&d=' + new Date(), b + '工时费率设置', 600, 400, true, true, false);
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