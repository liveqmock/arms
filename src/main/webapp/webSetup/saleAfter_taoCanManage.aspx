<html>
<head id="Head1"><title>
	维修套餐管理
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
   <link href="../style/common.css?v=20130317" rel="stylesheet" type="text/css" /> 
   <script src="../js/common.js?v20120" type="text/javascript"></script> 
<body>
    <form name="form1" method="post" action="saleAfter_taoCanManage.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE5Mzc0MDAyMDVkZGDjcYQlbZhw1sJwMvLM8k++evSO" />
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
        <span class="titleSpan">(套餐设置)</span> 
         </td><td align="right">
              <a onClick="return delCheck();" id="lnkDel" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-remove'" href="javascript:__doPostBack('lnkDel','')">删除</a>
              <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"  onclick="addWeiXiuTaoCan(0,'套餐新增');">新增</a>
		      <a id="btnRefresh" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" href="javascript:__doPostBack('btnRefresh','')">刷新</a> 
		      <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" onClick="searchClick('1');">查询</a>
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
                <th  data-options="field:'thisId',checkbox:true"></th>
				<th  data-options="field:'groupId',width:80,hidden:true">机构编号</th> 
                <th  data-options="field:'a',width:160">套餐编号</th>
                <th  data-options="field:'b',width:160">套餐名称</th>
                <th  data-options="field:'c',width:160">工时总额</th>
                <th  data-options="field:'d',width:160">配件总额</th>  
             </tr>
		</thead>
	</table>
      </div>
       
   </div>

  <!--查询条件 start-->
  <div  id="search" style="display:none;">
    <table border='0' >
    <tr>
     <td>套餐编号:</td>
     <td> <input name="txtTaoCanId" type="text" maxlength="10" id="txtTaoCanId" style="width:120px;" /> </td>   
     <td>套餐名称:</td>
     <td> <input name="txtTaoCanName" type="text" maxlength="10" id="txtTaoCanName" style="width:120px;" /> </td>
   
     <td>
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
     </td>
     </tr>
    </table>
    </div>
   <!--查询条件 end-->
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="60B1F3BB" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBgKi2dLXCwLA2eOABwLAn+vmDAKEqs7ECgLls+y2CgKpi4nBBZixGdVIcTOG0hmIdUfT/qVRBU2S" />
</div></form>


    <script language="javascript" type="text/javascript">
        //所有的按钮事件
        function addWeiXiuTaoCan(id, title) {
            if (id != undefined) {
                parent.winopen('../webSetup/saleAfter_taoCanAdd.aspx?taoCanId=' + id + "&d=" + new Date(), title,900,500, true, true, false);
            }
        }

    </script>

    <script language="javascript" type="text/javascript" >

        function delCheck() {
            var s = "";
            var rows = $('#dg').datagrid('getSelections');
            for (var i = 0; i < rows.length; i++) {
                var row = rows[i];
                s = s + row.thisId + ",";
            }
            if (s == "") {
                alert("未选择任何项!");
            } else {
                $.post("saleAfter_taoCanAddExec.aspx?d=" + new Date(), {
                    type: "taoCanListDel",
                    taoCanId: "49946C68-7A40-4C22-B0FE-2CA4AE59E4D4",
                    taoCanList: s
                }, function (data) {
                    if (data == "") {
                        alert('删除成功！');
                    } else {
                        alert(data);
                    }

                    //Load Start
                    __doPostBack('btnRefresh', '');
                    //Load End

                });

            }

            return false;

        }

        function billShow(index) {
            var a = $('#dg').datagrid('getRows')[index]['thisId'];
            var b = $('#dg').datagrid('getRows')[index]['b'];
            if (a != "") {
                parent.winopen('../webSetup/saleAfter_taoCanAdd.aspx?taoCanId=' + a + '&d=' + new Date(), '[' + b + ']套餐设置', 900, 500, true, true, false);
            }
        }



        var jsonStr = '{"total":1,"rows":[{"thisId":"0200879c-c1fb-4743-9245-c99f5cf554e1","a":"001","groupId":"6018","b":"023","c":"200.00","d":"0.00"}]}';
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