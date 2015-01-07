<html>
<head id="Head1"><title>
	售后管理
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="saleAfter_yuYueManage.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUIMjA1MjA3OTVkZEMqolCm1DS9gWTjuG01Sc7ER3l9" />
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
        <span class="titleSpan">(维修预约管理)</span> 
         </td><td align="right">           
		      <a id="btnRefresh" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" href="javascript:__doPostBack('btnRefresh','')">刷新</a> 
		      <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" onclick="searchClick('1');">查询</a>
               <a id="lnkExcel" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-excel'" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
          </td></tr>
         </table> 
     </div>
     
     <div class="region"  >
         <div class="region">
     <table id="dg"    class="easyui-datagrid"    style="height:480px;" 
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
                <th  data-options="field:'billNo',width:120" sortable="true">预约单号</th>
                <th  data-options="field:'weiXiuSort',width:100" >维修类型</th>  
                <th  data-options="field:'s',width:100" >预约状态</th> 
                <th  data-options="field:'c',width:120" sortable="true">服务顾问</th>
                <th  data-options="field:'chePaiHao',width:120" > 车牌号</th>
                <th  data-options="field:'cheXi',width:120" >车系</th>
                <th  data-options="field:'lianXiRenName',width:80">联系人</th>
                <th  data-options="field:'lianXiRenTel',width:100">联系人电话</th> 
                <th  data-options="field:'yuYueRuChangDate',width:120" sortable="true">预入厂时间</th> 
                <th  data-options="field:'writeUserName',width:120">登记人</th>
                <th  data-options="field:'ruChangDate',width:120">实际入厂时间</th>              
       
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
      <td>预约单号:</td><td><input name="txtBillNo" type="text" maxlength="10" id="txtBillNo" /> </td>
      <td>车牌号:</td><td><input name="txtChePaiHao" type="text" maxlength="10" id="txtChePaiHao" /> </td>
      <td>车架号:</td><td><input name="txtCheJiaHao" type="text" maxlength="10" id="txtCheJiaHao" /> </td>
      <td>预约状态:</td><td>
      <select name="ddlYuYueStatus" id="ddlYuYueStatus">
	<option value="">全部</option>
	<option selected="selected" value="1">预约中</option>
	<option value="2">已来店</option>
	<option value="3">已放弃</option>

</select>
       </td>
       <td>
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
      </td>
     
     </tr>
     <tr>
      <td>联系人:</td><td><input name="txtLianXiRenName" type="text" maxlength="10" id="txtLianXiRenName" /> </td>
      <td>联系人手机:</td><td><input name="txtLianXiRenMob" type="text" maxlength="10" id="txtLianXiRenMob" /> </td>
      <td>预到店时间:</td><td>
      <input name="txtDaoDianDateStart" type="text" id="txtDaoDianDateStart" class="easyui-datebox" style="width:90px;" />
      <input name="txtDaoDianDateEnd" type="text" id="txtDaoDianDateEnd" class="easyui-datebox" style="width:90px;" />
      </td>
  
     </tr>
    </table>
    </div>
   <!--查询条件 end-->
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="7918A263" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWEgKo2Oy3BgLAn+vmDAK87en2BAKfluDwDwKa7byuAgKm4eRsAtr08I0OAqTGvQYC/vLkvQ4Cs8TchQECvKv26w0Cvav26w0Cvqv26w0CqYuJwQUCsPn1ww8C3r2I5wUC5ZmWgwYC6v7lDPn1E7TPP/cabVVYNZRtLbaFiiqq" />
</div></form>


    <script language="javascript" type="text/javascript">
        //所有的按钮事件
        function billShow(index) {
            var thisGuid = $('#dg').datagrid('getRows')[index]['thisGuid'];
            if (thisGuid != "") {
                parent.winopen('../saleAfterManage/saleAfter_yuYueMain.aspx?yuYueGuid=' + thisGuid + '&d=' + new Date(), '维修预约', 990, 600, true, true, false);
            }
        }

    </script>

    <script language="javascript" type="text/javascript" >

        var jsonStr = '{"total":1,"rows":[{"s":"预约中","thisGuid":"0fa6bbde-a9ad-4e80-8eb3-14006f387ff2","chePaiHao":"粤BS448C","writeUserName":"潘景锋","billNo":"YYD1300004","weiXiuSort":"保险","c":"潘景锋","yuYueRuChangDate":"2013-10-27 16:55:04","cheZhuName":"管后双","lianXiRenName":"管后双","lianXiRenTel":"13828890058","cheXi":"ES350","yuYueReason":"","ruChangDate":""}]}';
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