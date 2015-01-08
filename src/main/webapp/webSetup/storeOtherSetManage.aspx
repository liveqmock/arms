
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	仓库管理
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="storeOtherSetManage.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNjc5MzI0Nzc3ZGRB99XYHD+iFGbVgeXDXCb4h4M94g==" />
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
        <tr><td class="titlebg"><span>基础设置</span>
        <span class="titleSpan">(仓库管理-新车,售后)</span> 
         </td><td align="right">
              <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"  onclick="addStore(0,'仓库新增');">新增</a>
		      <a id="btnRefresh" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" href="javascript:__doPostBack('btnRefresh','')">刷新</a> 
		      <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" onclick="searchClick('1');">查询</a>
          </td></tr>
         </table> 
     </div>
     
     <div class="region"  >
     <table id="dg"    class="easyui-datagrid"  
      data-options="
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
				pagination:true,
				pageSize:30,onClickRow:billShow"
      >
		<thead>
			<tr>
                <th  data-options="field:'ck',checkbox:true"></th>
				<th  data-options="field:'a',width:80,hidden:true">编号</th> 
				<th  data-options="field:'b',width:160,hidden:true">机构Id</th>
                <th  data-options="field:'c',width:150">仓库Id</th>		
			    <th  data-options="field:'d',width:120">仓库类型</th>
                <th  data-options="field:'e',width:120">仓库名</th> 
                <th  data-options="field:'g',width:120">停用标志</th>   
             </tr>
		</thead>
	</table>
      </div>
       
   </div>

  <!--查询条件 start-->
  <div  id="search" style="display:none;">
    <table border='0' >
     
    <tr>
     <td> 仓库名称:</td>
     <td>  <input name="txtStoreName" type="text" maxlength="10" id="txtStoreName" style="width:120px;" /></td>
      <td>
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
     </td>
     </tr>
    </table>
    </div>
   <!--查询条件 end-->
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="497E2AF0" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBAKdg8PKAgLAn+vmDAL5n9mWBAKpi4nBBdrHS/yllNgZ9pjCUsr5+MwNE4B7" />
</div></form>


    <script language="javascript" type="text/javascript">
        //所有的按钮事件
        function addStore(id, title) {
            if (id != undefined) {
                parent.winopen('../webSetup/storeOtherSetAdd.aspx?a=' + id + "&d=" + new Date(), title, 600, 400, true, true, false);
            }
        }

    </script>

    <script language="javascript" type="text/javascript" >

        function billShow(index) {
            var a = $('#dg').datagrid('getRows')[index]['a'];
            var b = $('#dg').datagrid('getRows')[index]['b'];
            if (a != "") {
                parent.winopen('../webSetup/storeOtherSetAdd.aspx?a=' + a + '&d=' + new Date(), b + '仓库修改', 600, 500, true, true, false);
            }
        }

        var jsonStr = '{"total":1,"rows":[{"a":"2ebf6e3e-5ed1-4301-9f59-87b42f7ac674","b":"6012","c":"6012A","d":"售后仓库","e":"九江丰田配件仓","f":"","g":"使用中"}]}';
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



        function showthis(a) {
            alert(a);
        }
    </script>
 
</body>
</html>