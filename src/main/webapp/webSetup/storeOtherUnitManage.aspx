<!DOCTYPE html>

<html>
<head><title>
	计量单位管理
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="storeOtherUnitManage.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTQ2NTIxNTUxOWRkKhhVWUIw8HMbYoAJJF/c+uWS9jg=" />
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
        <span class="titleSpan">(计量单位管理)</span> 
         </td><td align="right">
              <a onclick="return delCheck();" id="lnkDel" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-remove'" href="javascript:__doPostBack('lnkDel','')">删除</a>
              <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"  onclick="addUnit(0,'单位新增');">新增</a>
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
                page:1,
				pageSize:20,onClickRow:billShow"
      >
		<thead>
			<tr>
                <th  data-options="field:'ck',checkbox:true"></th>
				<th  data-options="field:'aa',width:80,hidden:true">编号</th> 
				<th  data-options="field:'a',width:160,hidden:true">机构Id</th>
                <th  data-options="field:'b',width:150">单位名</th>		
			    <th  data-options="field:'d',width:120">停用状态</th>  
             </tr>
		</thead>
	</table>
      </div>
       
   </div>

  <!--查询条件 start-->
  <div  id="search" style="display:none;">
    <table border='0' >
     
    <tr>
     <td> 计量单位名称:</td>
     <td>  <input name="txtUnitName" type="text" maxlength="10" id="txtUnitName" style="width:120px;" /></td>
      <td>
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
     </td>
     </tr>
    </table>
    </div>
   <!--查询条件 end-->
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="52AC6D31" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBQLKxt6qCALA2eOABwLAn+vmDAK6lemnBQKpi4nBBdj+Yu53IygDSV91w9L5DyzZY6HL" />
</div></form>


    <script language="javascript" type="text/javascript">
        //所有的按钮事件
        function addUnit(id, title) {
            if (id != undefined) {
                parent.winopen('../webSetup/storeOtherUnitAdd.aspx?unitId=' + id + "&d=" + new Date(), title, 600, 400, true, true, false);
            }
        }

    </script>

    <script language="javascript" type="text/javascript" >

        function delCheck() {
            var s = "";
            var rows = $('#dg').datagrid('getSelections');
            for (var i = 0; i < rows.length; i++) {
                var row = rows[i];
                s = s + row.aa + ",";
            }
            if (s == "") {
                alert("未选择任何项!");
            } else {
                $.post("storeOtherUnitExec.aspx?d=" + new Date(), {
                    type: "unitListDel",
                    unitList: s
                }, function (data) {
                    if (data == "") {
                        alert('删除成功！');
                    } else {
                        alert(data);
                    }

                    //Load Start
                    __doPostBack('btnRefresh','');
                    //Load End

                });

            }

            return false;

        }

        function billShow(index) {
            var a= $('#dg').datagrid('getRows')[index]['aa'];
            var b = $('#dg').datagrid('getRows')[index]['b'];
            if (a != "") {
                parent.winopen('../webSetup/storeOtherUnitAdd.aspx?unitId=' + a + '&d=' + new Date(),'['+ b + ']单位修改',600,500, true, true, false);
            }
        }

        var jsonStr = '{"total":2,"rows":[{"aa":"c2e20f2d-c03d-4449-8864-9078fd3bc2b6","a":"6012","b":"条","d":"使用中","e":"0"},{"aa":"b8588567-73d3-4089-a6ee-ac6b755420b4","a":"6012","b":"个","d":"使用中","e":"0"}]}';
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