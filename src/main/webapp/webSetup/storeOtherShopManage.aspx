<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	商品管理
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="storeOtherShopManage.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE4MTkzNzk3MDRkZAtVVtCGcLbLPXjD49Lja55X+ZmK" />
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
        <span class="titleSpan">(商品信息管理)</span> 
         </td><td align="right">
              <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"  onclick="addShop(0,'商品信息新增');">新增</a>
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
				singleSelect:false,
				autoRowHeight:false,
				pagination:true,
                remoteSort:false,
                pageList:[10,15,20,30,40,50,100],
                pageNumber:1,
				pageSize:20,onClickRow:billShow"
      >
		<thead>
			<tr>
                <th  data-options="field:'shopThisId',checkbox:true"></th>
				<th  data-options="field:'groupId',width:50,hidden:true" sortable="true">机构Id</th>
                <th  data-options="field:'shopId',width:120" sortable="true">商品编号</th>
                <th  data-options="field:'shopName',width:170">商品名称</th>
                <th  data-options="field:'shopTiaoMa',width:130">商品条码</th>
                <th  data-options="field:'shopChanDi',width:120">商品产地</th>
                <th  data-options="field:'shopYouXiaoQi',width:120" sortable=true>有效期</th>
                <th  data-options="field:'shopShiYongCheXing',width:120">适用车型</th>
                <th  data-options="field:'shopSalePrice',width:120">销售价</th>
                <th  data-options="field:'shopAvgCost',width:120">成本均价</th>
                <th  data-options="field:'shopLoc',width:120">库位</th> 
                <th  data-options="field:'saleStatus',width:120">销售状态</th>

       
            </tr>
		</thead>
	</table>
      </div>

      <input name="txtPageNum" type="text" value="1" id="txtPageNum" style="display:none;" />
      <input name="txtPageSize" type="text" value="20" id="txtPageSize" style="display:none;" />
      <a id="tmp" href="javascript:__doPostBack('tmp','')"></a>

       
   </div>

  <!--查询条件 start-->
  <div  id="search" style="display:none;">
    <table border='0' >
     
    <tr>
     <td>商品编码:</td>
     <td><input name="txtShopId" type="text" maxlength="20" id="txtShopId" style="width:120px;" /></td>
     <td>商品名称:</td>
     <td><input name="txtShopName" type="text" maxlength="20" id="txtShopName" style="width:120px;" /></td>
     <td>适用车型:</td>
     <td>  <input name="txtShiYongCheXing" type="text" maxlength="20" id="txtShiYongCheXing" style="width:120px;" /></td>
     <td><table id="radSaleStatus" border="0">
	<tr>
		<td><input id="radSaleStatus_0" type="radio" name="radSaleStatus" value="" checked="checked" /><label for="radSaleStatus_0">全部</label></td><td><input id="radSaleStatus_1" type="radio" name="radSaleStatus" value="1" /><label for="radSaleStatus_1">销售中</label></td><td><input id="radSaleStatus_2" type="radio" name="radSaleStatus" value="0" /><label for="radSaleStatus_2">停售</label></td>
	</tr>
</table></td>
      <td>
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
     </td>
     </tr>
    </table>
    </div>
   <!--查询条件 end-->
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="65C0F064" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWDQLYrpfiBwLAn+vmDAKfluDwDwKa7byuAgKm4eRsAqi82IEEAricuNgFAvayp7wDArXPirUFArqgoNsJAqWgoNsJArXPirUFAqmLicEF6R8vdG7pU3COC4osPDhYOoTLVvM=" />
</div></form>


    <script language="javascript" type="text/javascript">
        //所有的按钮事件
        function addShop(id, title) {
            if (id != undefined) {
                parent.winopen('../webSetup/storeOtherShopAdd.aspx?shopGuid=' + id + "&d=" + new Date(), title, 800, 400, true, true, false);
            }
        }

    </script>

    <script language="javascript" type="text/javascript" >

        function billShow(index) {
            var a = $('#dg').datagrid('getRows')[index]['shopThisId'];
            if (a != "") {
                parent.winopen('../webSetup/storeOtherShopAdd.aspx?shopGuid=' + a + '&d=' + new Date(), '商品修改', 800, 400, true, true, false);
            }
        }

        var jsonStr = '{"total":13917,"rows":[{"shopThisId":"8ad11011-442e-4278-9fcc-43f2b4c128b4","groupId":"6012","shopId":"JPA0302017","shopName":"叮铛史奴比安全插扣","shopTiaoMa":"","shopChanDi":"","shopYouXiaoQi":"30","shopShiYongCheXing":"","shopSalePrice":"37.50","shopAvgCost":"25.000","shopLoc":"","currAllQty":"0.00","saleStatus":"销售"},{"shopThisId":"485d3073-eae6-46fb-b32d-a08b9faa9fe1","groupId":"6012","shopId":"4774935040","shopName":"卡子","shopTiaoMa":"","shopChanDi":"","shopYouXiaoQi":"30","shopShiYongCheXing":"","shopSalePrice":"5.00","shopAvgCost":"1.000","shopLoc":"","currAllQty":"2.00","saleStatus":"销售"},{"shopThisId":"da9453bf-761b-45b6-8b85-c91da52153b3","groupId":"6012","shopId":"TBS175651482","shopName":"轮胎","shopTiaoMa":"","shopChanDi":"","shopYouXiaoQi":"30","shopShiYongCheXing":"","shopSalePrice":"440.00","shopAvgCost":"352.000","shopLoc":"","currAllQty":"1.00","saleStatus":"销售"},{"shopThisId":"fcea7717-040e-419f-b48c-c5b6b5fb7163","groupId":"6012","shopId":"JPA0201297","shopName":"球头","shopTiaoMa":"","shopChanDi":"","shopYouXiaoQi":"30","shopShiYongCheXing":"","shopSalePrice":"2268.00","shopAvgCost":"1247.000","shopLoc":"","currAllQty":"0.00","saleStatus":"销售"},{"shopThisId":"f4e425bb-1c8b-4f73-96f6-4216bb5870b8","groupId":"6012","shopId":"6864002170","shopName":"门铰限位器","shopTiaoMa":"","shopChanDi":"","shopYouXiaoQi":"30","shopShiYongCheXing":"","shopSalePrice":"499.00","shopAvgCost":"370.200","shopLoc":"","currAllQty":"0.00","saleStatus":"销售"},{"shopThisId":"602f6dd8-4f01-4643-ba21-443354dc6dbe","groupId":"6012","shopId":"485300D520","shopName":"左后减振器总成","shopTiaoMa":"","shopChanDi":"","shopYouXiaoQi":"30","shopShiYongCheXing":"","shopSalePrice":"143.00","shopAvgCost":"105.900","shopLoc":"","currAllQty":"0.00","saleStatus":"销售"},{"shopThisId":"158ad63c-237d-4e29-bfa3-9f7229f3ae40","groupId":"6012","shopId":"90151C0003","shopName":"十字槽沉头螺钉","shopTiaoMa":"","shopChanDi":"","shopYouXiaoQi":"30","shopShiYongCheXing":"","shopSalePrice":"3.00","shopAvgCost":"2.300","shopLoc":"B/O-06","currAllQty":"2.00","saleStatus":"销售"},{"shopThisId":"b2927b5b-4c09-44a0-9050-ebab49654d44","groupId":"6012","shopId":"5370202110","shopName":"叶子板支架","shopTiaoMa":"","shopChanDi":"","shopYouXiaoQi":"30","shopShiYongCheXing":"","shopSalePrice":"706.00","shopAvgCost":"524.600","shopLoc":"","currAllQty":"1.00","saleStatus":"销售"},{"shopThisId":"098b27db-0560-4f54-85c6-61fd4d160d35","groupId":"6012","shopId":"8796102J90","shopName":"左侧车外后视镜分总成","shopTiaoMa":"","shopChanDi":"","shopYouXiaoQi":"30","shopShiYongCheXing":"","shopSalePrice":"180.00","shopAvgCost":"133.600","shopLoc":"","currAllQty":"0.00","saleStatus":"销售"},{"shopThisId":"89cd7575-adc9-4fdd-9ef8-31ccdc481936","groupId":"6012","shopId":"6811360301","shopName":"钢化车窗玻璃","shopTiaoMa":"","shopChanDi":"","shopYouXiaoQi":"30","shopShiYongCheXing":"","shopSalePrice":"879.00","shopAvgCost":"652.300","shopLoc":"","currAllQty":"0.00","saleStatus":"销售"},{"shopThisId":"0b626bb5-0652-42b5-8263-bc00245ef8d9","groupId":"6012","shopId":"616010R051","shopName":"右侧外板分总成","shopTiaoMa":"","shopChanDi":"","shopYouXiaoQi":"30","shopShiYongCheXing":"","shopSalePrice":"2148.00","shopAvgCost":"1594.600","shopLoc":"","currAllQty":"0.00","saleStatus":"销售"},{"shopThisId":"be7638d1-6e84-49c4-92f7-d9b642c0b723","groupId":"6012","shopId":"PZ32160089","shopName":"前杠扰流板","shopTiaoMa":"","shopChanDi":"","shopYouXiaoQi":"30","shopShiYongCheXing":"","shopSalePrice":"1500.00","shopAvgCost":"880.000","shopLoc":"","currAllQty":"0.00","saleStatus":"销售"},{"shopThisId":"583ce57d-a036-4b2b-9c7c-9615de0c1dc2","groupId":"6012","shopId":"8174002140","shopName":"转向灯","shopTiaoMa":"","shopChanDi":"","shopYouXiaoQi":"30","shopShiYongCheXing":"","shopSalePrice":"88.00","shopAvgCost":"64.600","shopLoc":"","currAllQty":"1.00","saleStatus":"销售"},{"shopThisId":"08b98c12-9a13-458c-ade7-21223dcf1fec","groupId":"6012","shopId":"JPB0207022","shopName":"踏板","shopTiaoMa":"","shopChanDi":"","shopYouXiaoQi":"30","shopShiYongCheXing":"","shopSalePrice":"1780.00","shopAvgCost":"721.000","shopLoc":"","currAllQty":"0.00","saleStatus":"销售"},{"shopThisId":"becb05d0-22da-4726-a6eb-0fc97d77731d","groupId":"6012","shopId":"681020G030","shopName":"钢化车窗玻璃","shopTiaoMa":"","shopChanDi":"","shopYouXiaoQi":"30","shopShiYongCheXing":"","shopSalePrice":"328.00","shopAvgCost":"243.500","shopLoc":"","currAllQty":"0.00","saleStatus":"销售"},{"shopThisId":"87afea00-867c-4819-b45c-fd4d34185a7e","groupId":"6012","shopId":"5610160950","shopName":"挡风玻璃","shopTiaoMa":"","shopChanDi":"","shopYouXiaoQi":"30","shopShiYongCheXing":"","shopSalePrice":"5706.00","shopAvgCost":"4235.800","shopLoc":"LS料位","currAllQty":"0.00","saleStatus":"销售"},{"shopThisId":"82809930-544b-4598-894a-8af8c0295b43","groupId":"6012","shopId":"QGTZ","shopName":"前杠贴纸","shopTiaoMa":"","shopChanDi":"","shopYouXiaoQi":"30","shopShiYongCheXing":"","shopSalePrice":"600.00","shopAvgCost":"400.000","shopLoc":"","currAllQty":"0.00","saleStatus":"销售"},{"shopThisId":"0a10cf06-9b10-4176-aec0-edd515c33b3e","groupId":"6012","shopId":"7431002K90B0","shopName":"右遮阳板总成","shopTiaoMa":"","shopChanDi":"","shopYouXiaoQi":"30","shopShiYongCheXing":"","shopSalePrice":"180.00","shopAvgCost":"133.600","shopLoc":"B/O-06","currAllQty":"1.00","saleStatus":"销售"},{"shopThisId":"bd0235d4-da3c-435d-8933-62b80f8054cf","groupId":"6012","shopId":"JPB0204023","shopName":"08锐志运动化前格栅","shopTiaoMa":"","shopChanDi":"","shopYouXiaoQi":"30","shopShiYongCheXing":"","shopSalePrice":"878.00","shopAvgCost":"585.000","shopLoc":"","currAllQty":"0.00","saleStatus":"销售"},{"shopThisId":"ba45fabe-b51d-41e3-846f-085c1cb65c22","groupId":"6012","shopId":"JPB0209004","shopName":"锐志冷光门槛（13款）","shopTiaoMa":"","shopChanDi":"","shopYouXiaoQi":"30","shopShiYongCheXing":"","shopSalePrice":"351.00","shopAvgCost":"201.000","shopLoc":"","currAllQty":"0.00","saleStatus":"销售"}]}';
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