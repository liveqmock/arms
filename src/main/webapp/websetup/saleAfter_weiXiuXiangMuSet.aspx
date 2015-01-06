 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>
	维修项目管理
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="saleAfter_weiXiuXiangMuSet.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTAzODczOTE3MmRkOOIZyB9ValxZKhpEO8xFyIY2tZQ=" />
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
        <span class="titleSpan">(维修项目管理)</span> 
         </td><td align="right">
              <a onclick="return delCheck();" id="lnkDel" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-remove'" href="javascript:__doPostBack('lnkDel','')">删除</a>
              <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"  onclick="addWeiXiuXiangMu(0,'维修项目新增');">新增</a>
		      <a id="btnRefresh" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" href="javascript:__doPostBack('btnRefresh','')">刷新</a> 
		      <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" onclick="searchClick('1');">查询</a>
              <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'" onclick="gongShiFeiLvSet('1');">费率</a>
              <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'" onclick="biaoZhunGongShiSet('1');">标准工时设置</a>
          </td></tr>
         </table> 
     </div>
     
     <div class="region"  >
       <div class="region">
     <table id="dg"    class="easyui-datagrid"    style="height:500px;" 
      data-options="
				rownumbers:true,
				singleSelect:false,
				autoRowHeight:false,
				pagination:true,
                remoteSort:false,
                pageList:[10,15,20,30,40,50,100],
                pageNumber:1,
				pageSize:15,onClickRow:billShow"
      >
		<thead>
			<tr>
                <th  data-options="field:'weiXiuXiangMuThisId',checkbox:true"></th>
				<th  data-options="field:'groupId',width:50,hidden:true" sortable="true">机构Id</th>
                <th  data-options="field:'weiXiuXiangMuId',width:120" sortable="true">维修项目编号</th>                
                <th  data-options="field:'gongShi',width:80">工时</th>
                <th  data-options="field:'gongDuanName',width:80">工段名称</th>
                <th  data-options="field:'shiYongCheXing',width:120" >适用车型</th>
                <th  data-options="field:'weiXiuXiangMuContent',width:370">维修内容</th>       
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
     <td>维修编码:</td>
     <td><input name="txtWeiXiuBianHao" type="text" maxlength="20" id="txtWeiXiuBianHao" style="width:120px;" /></td>
     <td>维修名称:</td>
     <td><input name="txtWeiXiuMingCheng" type="text" maxlength="20" id="txtWeiXiuMingCheng" style="width:120px;" /></td>
     <td>适用车型:</td>
     <td>  <input name="txtShiYongCheXing" type="text" maxlength="20" id="txtShiYongCheXing" style="width:120px;" /></td>
      <td>
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
     </td>
     </tr>
    </table>
    </div>
   <!--查询条件 end-->
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="8AC6CD65" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCgKogaHhDQLA2eOABwLAn+vmDAKfluDwDwKa7byuAgKm4eRsAr3lhdIJAuf91IABAvayp7wDAqmLicEFa7PjLBdfFycxI/g1UcRcLeK1TbM=" />
</div></form>


    <script language="javascript" type="text/javascript">
        //所有的按钮事件
        function addWeiXiuXiangMu(id, title) {
            if (id != undefined) {
                parent.winopen('../websetup/saleAfter_weiXiuXiangMuAdd.aspx?weiXiuXiangMuId=' + id + "&d=" + new Date(), title, 800, 400, true, true, false);
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
                $.post("saleAfter_weiXiuXiangMuExec.aspx?d=" + new Date(), {
                    type: "weiXiuXiangMuSetDel",
                    weiXiuXiangMuList: s
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
            var a = $('#dg').datagrid('getRows')[index]['weiXiuXiangMuThisId'];
            var b = $('#dg').datagrid('getRows')[index]['weiXiuXiangMuId'];
            if (a != "") {
                parent.winopen('../websetup/saleAfter_weiXiuXiangMuAdd.aspx?weiXiuXiangMuId=' + a + '&d=' + new Date(), b + '维修项目修改',800, 400, true, true, false);
            }
        }


        var jsonStr = '{"total":1,"rows":[{"groupId":"6018","weiXiuXiangMuThisId":"10623cfa-cebe-4140-b10b-873cb13f704c","weiXiuXiangMuId":"01","weiXiuXiangMuContent":"1","gongShi":"1.00","gongDuanName":"机电","shiYongCheXing":"t","delFlag":"0","writeDate":"2013-12-1 16:44:36","shiYongCheXi":""}]}';
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




        function gongShiFeiLvSet() {
            location.href = "saleAfter_newGongShiFeiLv.aspx?d="+new Date();
            //工时费率设置
        }

        function biaoZhunGongShiSet() {
            location.href = "saleAfter_newWeiXiuXiangMuSet.aspx?d=" + new Date();
        }
    </script>
 
</body>
</html>