<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	维修单撤销管理
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>


<body>
    <form name="form1" method="post" action="saleAfter_WeiXiuFeiYongCancelManage.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTk3MjI1NjczN2Rkxk5Bfah3sh1+z1040clT00h8aeY=" />
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
        <tr><td class="titlebg"><span>售后管理</span>
        <span class="titleSpan">(维修单撤销)</span> 
         </td><td align="right">           
              <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'" onclick="addInfo('0');">新增</a>
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
                <th  data-options="field:'thisGuid',checkbox:true"></th>
                <th  data-options="field:'billNo',width:120" sortable="true">工单号</th>
                <th  data-options="field:'xieYiId',width:120">协议单号</th>
                <th  data-options="field:'busiBillStatus',width:80">当前状态</th>
                <th  data-options="field:'WeiXiuSort',width:80">维修类型</th>                
                <th  data-options="field:'fuWuUserId',width:70">服务顾问</th>
                <th  data-options="field:'chePaiHao',width:80">车牌号</th>
                <th  data-options="field:'che',width:120" sortable="true">车</th>
                <th  data-options="field:'lianXiRenName',width:80">联系人</th>
                <th  data-options="field:'lianXiRenMob',width:80">联系人电话</th>
                <th  data-options="field:'ruChangDate',width:120">入厂时间</th>
                <th  data-options="field:'yuChuChangDate',width:120">预出厂时间</th>
                 <th  data-options="field:'status',width:80,formatter:flowStatus" >状态</th>
                <th  data-options="field:'exaTime',width:120" >审核时间</th>
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
      <td>工单号:</td><td><input name="txtBillNo" type="text" maxlength="30" id="txtBillNo" /> </td>
      <td>车牌号:</td><td><input name="txtChePaiHao" type="text" maxlength="10" id="txtChePaiHao" /> </td>
      <td>车架号:</td><td><input name="txtCheJiaHao" type="text" maxlength="10" id="txtCheJiaHao" /> </td>
      <td>工单状态:</td><td><input name="txtBillStatus" type="text" maxlength="10" id="txtBillStatus" /> </td>
     </tr>
     <tr>
      <td>车主名:</td><td><input name="txtCheZhuName" type="text" maxlength="10" id="txtCheZhuName" /> </td>
      <td>车主手机:</td><td><input name="txtCheZhuTel" type="text" maxlength="10" id="txtCheZhuTel" /> </td>
      <td>联系人手机:</td><td><input name="txtLianXiRenMob" type="text" maxlength="10" id="txtLianXiRenMob" /> </td>
      <td>
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
     </td>
     
     </tr>
    </table>
    </div>
   <!--查询条件 end-->
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="36CB0A8B" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWDQKa0eWFCgLAn+vmDAKfluDwDwKa7byuAgKm4eRsAtr08I0OAqTGvQYC/vLkvQ4C37KlpA8Cqsfv4gcCrpzo+QYC3r2I5wUCqYuJwQWRqyhVDop7HWyPjhL3b5Jxf1stdQ==" />
</div></form>


    <script language="javascript" type="text/javascript">
        //所有的按钮事件




        function addInfo() { 
           //新增撤销单据
            parent.winopen('../saleAfterManage/saleAfter_WeiXiuFeiYongCancel.aspx?d=' + new Date(), '维修撤销单', 990, 600, true, true, false);
        }

        function billShow(index) {
            var thisGuid = $('#dg').datagrid('getRows')[index]['thisGuid'];
            if (thisGuid != "") {
                parent.winopen('../saleAfterManage/saleAfter_WeiXiuFeiYongCancel.aspx?saleAfterGuid=' + thisGuid + '&d=' + new Date(), '维修撤销单', 990, 600, true, true, false);
            }
        }

    </script>

    <script language="javascript" type="text/javascript" >

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