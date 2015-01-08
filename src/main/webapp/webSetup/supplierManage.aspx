
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>
	供应商管理
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="supplierManage.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTA5NzAxMjk4M2Rk9MTEl8Hb3tR+2E7tzINTjbi3c64=" />
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
        <span class="titleSpan">(供应商信息管理)</span> 
         </td><td align="right">
              <a onclick="return delCheck();" id="lnkDel" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-remove'" href="javascript:__doPostBack('lnkDel','')">删除</a>
              <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"  onclick="addSupplier(0,'供应商新增');">新增</a>
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
				pageSize:15,onClickRow:billShow"
      >
		<thead>
			<tr>
                <th  data-options="field:'suppThisId',checkbox:true"></th>
				<th  data-options="field:'groupId',width:50,hidden:true" sortable="true">机构Id</th>
                <th  data-options="field:'suppId',width:120" sortable="true">供应商编号</th>
                <th  data-options="field:'suppName',width:170">供应商名称</th>
                <th  data-options="field:'suppYFQC',width:130">期初金额</th>
                <th  data-options="field:'caiGouJinE',width:120">采购金额</th>
                <th  data-options="field:'suppTel1',width:120" >电话1</th>
                <th  data-options="field:'suppWangZhi',width:120">网址</th>
                <th  data-options="field:'suppEmail',width:120">EMail</th>
                <th  data-options="field:'suppCaiGouZheKou',width:120">采购折扣</th>
                <th  data-options="field:'suppDiQu',width:120" sortable=true>地区</th>
       
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
     <td>供应商编码:</td>
     <td><input name="txtSuppId" type="text" maxlength="20" id="txtSuppId" style="width:120px;" /></td>
     <td>供应商名称:</td>
     <td><input name="txtSuppName" type="text" maxlength="20" id="txtSuppName" style="width:120px;" /></td> 
      <td>
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
     </td>
     </tr>
    </table>
    </div>
   <!--查询条件 end-->
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="1C1DE393" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCQLZounPCQLA2eOABwLAn+vmDAKfluDwDwKa7byuAgKm4eRsAqvDjO4DArWj9MQFAqmLicEFatKvmd5s27xetOZ7FV3b/wzqYt8=" />
</div></form>


    <script language="javascript" type="text/javascript">
        //所有的按钮事件
        function addSupplier(id, title) {
            if (id != undefined) {
                parent.winopen('../webSetup/SupplierAdd.aspx?suppThisId=' + id + "&d=" + new Date(), title, 800, 600, true, true, false);
            }
        }

    </script>

    <script language="javascript" type="text/javascript" >

        function delCheck() {
            var s = "";
            var rows = $('#dg').datagrid('getSelections');
            for (var i = 0; i < rows.length; i++) {
                var row = rows[i];
                s = s + row.suppThisId + ",";
            }
            if (s == "") {
                alert("未选择任何项!");
            } else {
                $.post("suppIdExec.aspx?d=" + new Date(), {
                    type: "suppListDel",
                    suppList: s
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
            var a = $('#dg').datagrid('getRows')[index]['suppThisId'];
            var b = $('#dg').datagrid('getRows')[index]['suppName'];
            if (a != "") {
                parent.winopen('../webSetup/SupplierAdd.aspx?suppThisId=' + a + '&d=' + new Date(), b + '供应商修改', 800, 600, true, true, false);
            }
        }



        var jsonStr = '{"total":72,"rows":[{"suppThisId":"6c12c50a-3ec4-4dfe-9849-0a1726f5639f","groupId":"6012","suppId":"1024","suppName":"广州本田","suppYFQC":"0.00","caiGouJinE":"0.000","suppYouBian":"","suppTongXiDiZhi":"","suppTel1":"","suppTel2":"","suppTel3":"","suppWangZhi":"","suppEmail":"","suppChuanZhen":"","suppXinYuDu":"","suppShuiHao":"","suppShouKuanQiXian":"0","suppBankName":"","suppKaiHuBankName":"","suppFuKuanQiXian":"0","suppBankZhangHao":"","suppJianDangDate":"","suppCaiGouZheKou":"0.00","suppDiQu":"","suppRemarks":"","lianXiRen":"","lianXiRenXingBie":"","lianXiRenShengRi":"","lianXiRenZhiWu":"","lianXiRenChengHu":"","lianXiRenYouJian":"","lianXiRenTel":"","lianXiRenMob":"","lianXiRenYouBian":"","lianXiRenAdd":"","lianXiRenRemarks":"","writedate":""},{"suppThisId":"6321e054-a2c5-46ff-9f4a-71bdbe1127d5","groupId":"6012","suppId":"1022","suppName":"天津一汽","suppYFQC":"0.00","caiGouJinE":"0.000","suppYouBian":"","suppTongXiDiZhi":"","suppTel1":"","suppTel2":"","suppTel3":"","suppWangZhi":"","suppEmail":"","suppChuanZhen":"","suppXinYuDu":"","suppShuiHao":"","suppShouKuanQiXian":"0","suppBankName":"","suppKaiHuBankName":"","suppFuKuanQiXian":"0","suppBankZhangHao":"","suppJianDangDate":"","suppCaiGouZheKou":"0.00","suppDiQu":"","suppRemarks":"","lianXiRen":"","lianXiRenXingBie":"","lianXiRenShengRi":"","lianXiRenZhiWu":"","lianXiRenChengHu":"","lianXiRenYouJian":"","lianXiRenTel":"","lianXiRenMob":"","lianXiRenYouBian":"","lianXiRenAdd":"","lianXiRenRemarks":"","writedate":""},{"suppThisId":"4f681985-7c48-4be7-86c4-052fc0456a15","groupId":"6012","suppId":"1021","suppName":"广州本田","suppYFQC":"0.00","caiGouJinE":"0.000","suppYouBian":"","suppTongXiDiZhi":"","suppTel1":"","suppTel2":"","suppTel3":"","suppWangZhi":"","suppEmail":"","suppChuanZhen":"","suppXinYuDu":"","suppShuiHao":"","suppShouKuanQiXian":"0","suppBankName":"","suppKaiHuBankName":"","suppFuKuanQiXian":"0","suppBankZhangHao":"","suppJianDangDate":"","suppCaiGouZheKou":"0.00","suppDiQu":"","suppRemarks":"","lianXiRen":"","lianXiRenXingBie":"","lianXiRenShengRi":"","lianXiRenZhiWu":"","lianXiRenChengHu":"","lianXiRenYouJian":"","lianXiRenTel":"","lianXiRenMob":"","lianXiRenYouBian":"","lianXiRenAdd":"","lianXiRenRemarks":"","writedate":""},{"suppThisId":"88d92699-4cc5-4224-84dc-fe99a5282995","groupId":"6012","suppId":"1020","suppName":"正友汽车音响维修中心","suppYFQC":"0.00","caiGouJinE":"0.000","suppYouBian":"","suppTongXiDiZhi":"","suppTel1":"","suppTel2":"","suppTel3":"","suppWangZhi":"","suppEmail":"","suppChuanZhen":"","suppXinYuDu":"","suppShuiHao":"","suppShouKuanQiXian":"0","suppBankName":"","suppKaiHuBankName":"","suppFuKuanQiXian":"0","suppBankZhangHao":"","suppJianDangDate":"","suppCaiGouZheKou":"0.00","suppDiQu":"","suppRemarks":"","lianXiRen":"","lianXiRenXingBie":"","lianXiRenShengRi":"","lianXiRenZhiWu":"","lianXiRenChengHu":"","lianXiRenYouJian":"","lianXiRenTel":"","lianXiRenMob":"","lianXiRenYouBian":"","lianXiRenAdd":"","lianXiRenRemarks":"","writedate":""},{"suppThisId":"1d97b44a-848a-4fec-a4f7-df94a01f2c4c","groupId":"6012","suppId":"1018","suppName":"北京北方远望机电技术服务中心","suppYFQC":"0.00","caiGouJinE":"0.000","suppYouBian":"","suppTongXiDiZhi":"","suppTel1":"","suppTel2":"","suppTel3":"","suppWangZhi":"","suppEmail":"","suppChuanZhen":"","suppXinYuDu":"","suppShuiHao":"","suppShouKuanQiXian":"0","suppBankName":"","suppKaiHuBankName":"","suppFuKuanQiXian":"0","suppBankZhangHao":"","suppJianDangDate":"","suppCaiGouZheKou":"0.00","suppDiQu":"","suppRemarks":"","lianXiRen":"","lianXiRenXingBie":"","lianXiRenShengRi":"","lianXiRenZhiWu":"","lianXiRenChengHu":"","lianXiRenYouJian":"","lianXiRenTel":"","lianXiRenMob":"","lianXiRenYouBian":"","lianXiRenAdd":"","lianXiRenRemarks":"","writedate":""},{"suppThisId":"69bb4371-a7dd-40eb-acbc-5b48d476520e","groupId":"6012","suppId":"1013","suppName":"测试","suppYFQC":"0.00","caiGouJinE":"0.000","suppYouBian":"","suppTongXiDiZhi":"","suppTel1":"","suppTel2":"","suppTel3":"","suppWangZhi":"","suppEmail":"","suppChuanZhen":"","suppXinYuDu":"","suppShuiHao":"","suppShouKuanQiXian":"0","suppBankName":"","suppKaiHuBankName":"","suppFuKuanQiXian":"0","suppBankZhangHao":"","suppJianDangDate":"","suppCaiGouZheKou":"0.00","suppDiQu":"","suppRemarks":"","lianXiRen":"","lianXiRenXingBie":"","lianXiRenShengRi":"","lianXiRenZhiWu":"","lianXiRenChengHu":"","lianXiRenYouJian":"","lianXiRenTel":"","lianXiRenMob":"","lianXiRenYouBian":"","lianXiRenAdd":"","lianXiRenRemarks":"","writedate":""},{"suppThisId":"0b758bca-fd82-45d7-978a-13048e139836","groupId":"6012","suppId":"10051004","suppName":"东风本田笋岗办事处","suppYFQC":"0.00","caiGouJinE":"0.000","suppYouBian":"","suppTongXiDiZhi":"","suppTel1":"","suppTel2":"","suppTel3":"","suppWangZhi":"","suppEmail":"","suppChuanZhen":"","suppXinYuDu":"","suppShuiHao":"","suppShouKuanQiXian":"0","suppBankName":"","suppKaiHuBankName":"","suppFuKuanQiXian":"0","suppBankZhangHao":"","suppJianDangDate":"","suppCaiGouZheKou":"0.00","suppDiQu":"","suppRemarks":"","lianXiRen":"","lianXiRenXingBie":"","lianXiRenShengRi":"","lianXiRenZhiWu":"","lianXiRenChengHu":"","lianXiRenYouJian":"","lianXiRenTel":"","lianXiRenMob":"","lianXiRenYouBian":"","lianXiRenAdd":"","lianXiRenRemarks":"","writedate":""},{"suppThisId":"d10c074d-23d8-4e11-92ed-64ec50b2f233","groupId":"6012","suppId":"1005","suppName":"东风本田","suppYFQC":"0.00","caiGouJinE":"0.000","suppYouBian":"","suppTongXiDiZhi":"","suppTel1":"","suppTel2":"","suppTel3":"","suppWangZhi":"","suppEmail":"","suppChuanZhen":"","suppXinYuDu":"","suppShuiHao":"","suppShouKuanQiXian":"0","suppBankName":"","suppKaiHuBankName":"","suppFuKuanQiXian":"0","suppBankZhangHao":"","suppJianDangDate":"","suppCaiGouZheKou":"0.00","suppDiQu":"","suppRemarks":"","lianXiRen":"","lianXiRenXingBie":"","lianXiRenShengRi":"","lianXiRenZhiWu":"","lianXiRenChengHu":"","lianXiRenYouJian":"","lianXiRenTel":"","lianXiRenMob":"","lianXiRenYouBian":"","lianXiRenAdd":"","lianXiRenRemarks":"","writedate":""},{"suppThisId":"0bd57ffd-5a0d-426d-88a7-75d6161dc231","groupId":"6012","suppId":"1003","suppName":"华新轮胎行","suppYFQC":"0.00","caiGouJinE":"0.000","suppYouBian":"","suppTongXiDiZhi":"","suppTel1":"","suppTel2":"","suppTel3":"","suppWangZhi":"","suppEmail":"","suppChuanZhen":"","suppXinYuDu":"","suppShuiHao":"","suppShouKuanQiXian":"0","suppBankName":"","suppKaiHuBankName":"","suppFuKuanQiXian":"0","suppBankZhangHao":"","suppJianDangDate":"","suppCaiGouZheKou":"0.00","suppDiQu":"","suppRemarks":"","lianXiRen":"","lianXiRenXingBie":"","lianXiRenShengRi":"","lianXiRenZhiWu":"","lianXiRenChengHu":"","lianXiRenYouJian":"","lianXiRenTel":"","lianXiRenMob":"","lianXiRenYouBian":"","lianXiRenAdd":"","lianXiRenRemarks":"","writedate":""},{"suppThisId":"a7e555b6-69ad-4e59-a23d-6f52165fe959","groupId":"6012","suppId":"1001","suppName":"福州泰丰","suppYFQC":"0.00","caiGouJinE":"0.000","suppYouBian":"","suppTongXiDiZhi":"","suppTel1":"","suppTel2":"","suppTel3":"","suppWangZhi":"","suppEmail":"","suppChuanZhen":"","suppXinYuDu":"","suppShuiHao":"","suppShouKuanQiXian":"0","suppBankName":"","suppKaiHuBankName":"","suppFuKuanQiXian":"0","suppBankZhangHao":"","suppJianDangDate":"","suppCaiGouZheKou":"0.00","suppDiQu":"","suppRemarks":"","lianXiRen":"","lianXiRenXingBie":"","lianXiRenShengRi":"","lianXiRenZhiWu":"","lianXiRenChengHu":"","lianXiRenYouJian":"","lianXiRenTel":"","lianXiRenMob":"","lianXiRenYouBian":"","lianXiRenAdd":"","lianXiRenRemarks":"","writedate":""},{"suppThisId":"a14297e2-ffd5-4ecd-892b-a957e811bbf2","groupId":"6012","suppId":"1000","suppName":"广州丰田","suppYFQC":"0.00","caiGouJinE":"0.000","suppYouBian":"","suppTongXiDiZhi":"","suppTel1":"","suppTel2":"","suppTel3":"","suppWangZhi":"","suppEmail":"","suppChuanZhen":"","suppXinYuDu":"","suppShuiHao":"","suppShouKuanQiXian":"0","suppBankName":"","suppKaiHuBankName":"","suppFuKuanQiXian":"0","suppBankZhangHao":"","suppJianDangDate":"","suppCaiGouZheKou":"0.00","suppDiQu":"","suppRemarks":"","lianXiRen":"","lianXiRenXingBie":"","lianXiRenShengRi":"","lianXiRenZhiWu":"","lianXiRenChengHu":"","lianXiRenYouJian":"","lianXiRenTel":"","lianXiRenMob":"","lianXiRenYouBian":"","lianXiRenAdd":"","lianXiRenRemarks":"","writedate":""},{"suppThisId":"9526965e-035b-492d-8f3e-759d89d78095","groupId":"6012","suppId":"00004","suppName":"","suppYFQC":"0.00","caiGouJinE":"0.000","suppYouBian":"","suppTongXiDiZhi":"","suppTel1":"","suppTel2":"","suppTel3":"","suppWangZhi":"","suppEmail":"","suppChuanZhen":"","suppXinYuDu":"","suppShuiHao":"","suppShouKuanQiXian":"0","suppBankName":"","suppKaiHuBankName":"","suppFuKuanQiXian":"0","suppBankZhangHao":"","suppJianDangDate":"","suppCaiGouZheKou":"0.00","suppDiQu":"","suppRemarks":"","lianXiRen":"","lianXiRenXingBie":"","lianXiRenShengRi":"","lianXiRenZhiWu":"","lianXiRenChengHu":"","lianXiRenYouJian":"","lianXiRenTel":"","lianXiRenMob":"","lianXiRenYouBian":"","lianXiRenAdd":"","lianXiRenRemarks":"","writedate":""},{"suppThisId":"21a6e562-d372-459d-8a7f-22d023a48e1d","groupId":"6012","suppId":"00003","suppName":"","suppYFQC":"0.00","caiGouJinE":"0.000","suppYouBian":"","suppTongXiDiZhi":"","suppTel1":"","suppTel2":"","suppTel3":"","suppWangZhi":"","suppEmail":"","suppChuanZhen":"","suppXinYuDu":"","suppShuiHao":"","suppShouKuanQiXian":"0","suppBankName":"","suppKaiHuBankName":"","suppFuKuanQiXian":"0","suppBankZhangHao":"","suppJianDangDate":"","suppCaiGouZheKou":"0.00","suppDiQu":"","suppRemarks":"","lianXiRen":"","lianXiRenXingBie":"","lianXiRenShengRi":"","lianXiRenZhiWu":"","lianXiRenChengHu":"","lianXiRenYouJian":"","lianXiRenTel":"","lianXiRenMob":"","lianXiRenYouBian":"","lianXiRenAdd":"","lianXiRenRemarks":"","writedate":""},{"suppThisId":"82d2a007-1c3f-4a6d-bc59-b0f1c5fe109a","groupId":"6012","suppId":"00002","suppName":"","suppYFQC":"0.00","caiGouJinE":"0.000","suppYouBian":"","suppTongXiDiZhi":"","suppTel1":"","suppTel2":"","suppTel3":"","suppWangZhi":"","suppEmail":"","suppChuanZhen":"","suppXinYuDu":"","suppShuiHao":"","suppShouKuanQiXian":"0","suppBankName":"","suppKaiHuBankName":"","suppFuKuanQiXian":"0","suppBankZhangHao":"","suppJianDangDate":"","suppCaiGouZheKou":"0.00","suppDiQu":"","suppRemarks":"","lianXiRen":"","lianXiRenXingBie":"","lianXiRenShengRi":"","lianXiRenZhiWu":"","lianXiRenChengHu":"","lianXiRenYouJian":"","lianXiRenTel":"","lianXiRenMob":"","lianXiRenYouBian":"","lianXiRenAdd":"","lianXiRenRemarks":"","writedate":""},{"suppThisId":"0ec06229-1f2e-417e-859c-020e47020f39","groupId":"6012","suppId":"00001","suppName":"","suppYFQC":"0.00","caiGouJinE":"0.000","suppYouBian":"","suppTongXiDiZhi":"","suppTel1":"","suppTel2":"","suppTel3":"","suppWangZhi":"","suppEmail":"","suppChuanZhen":"","suppXinYuDu":"","suppShuiHao":"","suppShouKuanQiXian":"0","suppBankName":"","suppKaiHuBankName":"","suppFuKuanQiXian":"0","suppBankZhangHao":"","suppJianDangDate":"","suppCaiGouZheKou":"0.00","suppDiQu":"","suppRemarks":"","lianXiRen":"","lianXiRenXingBie":"","lianXiRenShengRi":"","lianXiRenZhiWu":"","lianXiRenChengHu":"","lianXiRenYouJian":"","lianXiRenTel":"","lianXiRenMob":"","lianXiRenYouBian":"","lianXiRenAdd":"","lianXiRenRemarks":"","writedate":""}]}';
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