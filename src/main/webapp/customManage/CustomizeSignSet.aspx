

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

 <head>
    <title>客户自定义标识列设置</title>
  <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

 <script language="javascript" type="text/javascript" >

      


 </script>

<body>
    <form name="form1" method="post" action="CustomizeSignSet.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTcxMTE0OTIzMGRk8XAg9mMMqzaeaFB8PL/OdcnGNsY=" />
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
        <tr><td class="titlebg"><span>客户管理</span>
        <span class="titleSpan">自定义标识列设置</span> 
         </td><td align="right">        
		      <a id="btnRefresh" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" href="javascript:__doPostBack('btnRefresh','')">刷新</a> 
		      <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" onclick="searchClick('1');">查询</a>
              <a id="lnkExcel" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-excel'" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
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
				pageSize:15"
      >
		<thead>
			<tr>  
                <th  data-options="field:'cusId'" hidden="true"></th>
                <th  data-options="field:'vehicleId'" hidden="true"></th>
                <th  data-options="field:'cheZhuName',width:100" sortable="true">车主名</th>                
                <th  data-options="field:'CustomizeName',width:120" sortable="true">标识列</th>
                <th  data-options="field:'lianXiRenName',width:80" sortable="true">联系人名称</th>
                <th  data-options="field:'cheXi',width:80" sortable="true">车系</th>
                <th  data-options="field:'cheShenYanSe',width:120" sortable="true">车身颜色</th>
                <th  data-options="field:'cheXingDaiMa',width:120" sortable="true">车型代码</th>
                <th  data-options="field:'changPai',width:120" sortable="true">厂牌</th>
                <th  data-options="field:'CheJiaHao',width:120" sortable="true">车架号</th>
                <th  data-options="field:'ChePaiHao',width:120" sortable="true">车牌号码</th>
                <th  data-options="field:'lianXiRenMob',width:120" sortable="true">联系人手机</th>
                <th  data-options="field:'gouCheDate',width:120" sortable="true">购车日期</th>
                <th  data-options="field:'lastLaiChangDate',width:120" sortable="true">最后来厂时间</th>
               
       
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
    <table border="0" cellpadding="0" cellspacing="0" id="searchTb"  >
     <tr>
      <td>购车时间:</td><td><input name="txtGouCheDateStart" type="text" id="txtGouCheDateStart" class="easyui-datebox" /></td>
      <td><input name="txtGouCheDateEnd" type="text" id="txtGouCheDateEnd" class="easyui-datebox" /></td>
      <td>厂牌:</td><td><input name="txtChangPai" type="text" maxlength="10" id="txtChangPai" /> </td>
      <td>车系:</td><td><input name="txtCheXi" type="text" maxlength="10" id="txtCheXi" /> </td>
     </tr>

     <tr>
      <td>最后来厂时间:</td><td><input name="txtLastLaiChangDateStart" type="text" id="txtLastLaiChangDateStart" class="easyui-datebox" /></td>
      <td><input name="txtLastLaiChangDateEnd" type="text" id="txtLastLaiChangDateEnd" class="easyui-datebox" /></td>
       <td>标识:</td><td><input name="txtBiaoShi" type="text" maxlength="30" id="txtBiaoShi" /> </td>

      <td>车架号:</td><td><input name="txtCheJiaHao" type="text" maxlength="20" id="txtCheJiaHao" /> </td>
    
     </tr>

     <tr>
     <td>排序:</td>
     <td><select name="ddlPaiXi" id="ddlPaiXi" style="width:125px;">

</select> </td>
     <td>
     <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
     </td>
     </tr>

     <tr>
     <td>标识信息:</td>
     <td colspan="4">
     <input name="txtBiaoShiInfo" type="text" id="txtBiaoShiInfo" style="width:100%;" />
     </td>
     <td></td>
     <td>
     <a id="lnkSave" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSave','')">保存标识</a>
     </td>
     
     </tr>

    </table>


    </div>
   <!--查询条件 end-->
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="34F4B874" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWEQKnkImjBwLAn+vmDAK87en2BAKfluDwDwKa7byuAgKm4eRsAvmVqJANAo+pwNMFAoubrUQC1s/8zgICm/2AwwYCyZ6rqQ4CxIun5QkC/vLkvQ4CqYuJwQUC7rqDrA4Co+3tgQgi2mCpZppcaSXzJA6JiQTFw9Wb0Q==" />
</div></form>


 

    <script language="javascript" type="text/javascript" >

        var jsonStr = '{"total":6117,"rows":[{"keyId":"1","vehicleId":"b83d4d45-38fc-4811-afef-69376f4b93a0","cusId":"b83d4d45-38fc-4811-afef-69376f4b93a0","cheZhuName":"九江深业丰田","lianXiRenName":"售后部","cheXi":"卡罗拉","cheShenYanSe":"白色","cheXingDaiMa":"597471","changPai":"一汽丰田","CheJiaHao":"LFM2C22T5801C2006","ChePaiHao":"赣G12345","lianXiRenMob":"13500000000","gouCheDate":"2011-11-8 0:00:00","CustomizeName":"","lastLaiChangDate":"2015-1-8 13:49:17"},{"keyId":"2","vehicleId":"11937cdd-25cb-4ab3-b93b-56a569fe85ca","cusId":"11937cdd-25cb-4ab3-b93b-56a569fe85ca","cheZhuName":"徐坤","lianXiRenName":"徐坤","cheXi":"锐志","cheShenYanSe":"黑色","cheXingDaiMa":"GRX132L-AETZKC","changPai":"一汽丰田","CheJiaHao":"LFMBEC4DXC0129731","ChePaiHao":"赣G2D859","lianXiRenMob":"13618622856","gouCheDate":"2012-12-5 0:00:00","CustomizeName":"","lastLaiChangDate":"2015-1-8 13:49:13"},{"keyId":"3","vehicleId":"d6eec66b-b3fd-4083-bc82-27db49fc1d4b","cusId":"d6eec66b-b3fd-4083-bc82-27db49fc1d4b","cheZhuName":"程瑞明","lianXiRenName":"程瑞明","cheXi":"卡罗拉","cheShenYanSe":"白色","cheXingDaiMa":"ZRE151L-GEPNKC","changPai":"一汽丰田","CheJiaHao":"LFMAPE2C6D0519755","ChePaiHao":"皖HR1M88","lianXiRenMob":"13965808008","gouCheDate":"2013-12-13 0:00:00","CustomizeName":"","lastLaiChangDate":"2015-1-8 13:47:18"},{"keyId":"4","vehicleId":"ae24b819-c090-4e23-834a-6df9c47dd42f","cusId":"ae24b819-c090-4e23-834a-6df9c47dd42f","cheZhuName":"蔡婧","lianXiRenName":"蔡婧","cheXi":"新卡罗拉","cheShenYanSe":"白色","cheXingDaiMa":"1.6 GLX-I","changPai":"一汽丰田","CheJiaHao":"LFMAP86C0E0404467","ChePaiHao":"赣G8968","lianXiRenMob":"13330000018","gouCheDate":"2014-7-22 16:11:34","CustomizeName":"","lastLaiChangDate":"2015-1-8 13:34:13"},{"keyId":"5","vehicleId":"db998533-d9bf-4439-ba79-925ff8647911","cusId":"db998533-d9bf-4439-ba79-925ff8647911","cheZhuName":"殷海平","lianXiRenName":"殷海平","cheXi":"卡罗拉","cheShenYanSe":"白色","cheXingDaiMa":"ZRE151L-GEPNKC","changPai":"一汽丰田","CheJiaHao":"LFMAPE2C9B0259767","ChePaiHao":"沪CLH123","lianXiRenMob":"18070216061","gouCheDate":"2011-1-21 0:00:00","CustomizeName":"","lastLaiChangDate":"2015-1-8 13:10:15"},{"keyId":"6","vehicleId":"43cb5f67-baa9-4bae-a207-1327410710d3","cusId":"66c11ac2-aef9-402f-a74d-5f78d314358c","cheZhuName":"杨爱林","lianXiRenName":"陈军","cheXi":"其他","cheShenYanSe":"黑色","cheXingDaiMa":"GGH20L-PFTQK","changPai":"一汽丰田","CheJiaHao":"JTEGS21H8C8069206","ChePaiHao":"粤AJ553U","lianXiRenMob":"13570579991","gouCheDate":"1900-1-1 0:00:00","CustomizeName":"","lastLaiChangDate":"2015-1-8 12:51:39"},{"keyId":"7","vehicleId":"ea1b3226-b1e8-4e35-b6f8-2aa76ca15673","cusId":"ea1b3226-b1e8-4e35-b6f8-2aa76ca15673","cheZhuName":"解剑国","lianXiRenName":"解剑国","cheXi":"锐志","cheShenYanSe":"黑色","cheXingDaiMa":"GRX132L-AETZKC","changPai":"一汽丰田tv7252v","CheJiaHao":"LFMBEC4D1D0162179[SAG]","ChePaiHao":"赣GL8235","lianXiRenMob":"18657680611","gouCheDate":"2013-8-14 0:00:00","CustomizeName":"","lastLaiChangDate":"2015-1-8 12:40:48"},{"keyId":"8","vehicleId":"288f9db7-3849-4be2-b044-c1ea6f4abfe7","cusId":"288f9db7-3849-4be2-b044-c1ea6f4abfe7","cheZhuName":"程卫东","lianXiRenName":"程卫东","cheXi":"RAV4","cheShenYanSe":"白色","cheXingDaiMa":"ACA37L-ANPXKC","changPai":"一汽丰田 TV6460GL","CheJiaHao":"LFMKV30F3C0125124[SAG]","ChePaiHao":"赣G6U588","lianXiRenMob":"15879241832","gouCheDate":"2012-5-7 10:19:47","CustomizeName":"","lastLaiChangDate":"2015-1-8 12:33:34"},{"keyId":"9","vehicleId":"9a80aebc-010e-47fc-ab01-d0cd27a034dc","cusId":"9a80aebc-010e-47fc-ab01-d0cd27a034dc","cheZhuName":"高速交警直属二支队","lianXiRenName":"周杰","cheXi":"霸道","cheShenYanSe":"白色","cheXingDaiMa":"GRJ150L-GKAEKC","changPai":"一汽丰田","CheJiaHao":"LFMGJE726BS015509","ChePaiHao":"赣09201警","lianXiRenMob":"13576117211","gouCheDate":"2011-3-18 0:00:00","CustomizeName":"","lastLaiChangDate":"2015-1-8 12:04:21"},{"keyId":"10","vehicleId":"aab1c2c4-e28d-41a4-bfec-3a20afa4932c","cusId":"aab1c2c4-e28d-41a4-bfec-3a20afa4932c","cheZhuName":"鄢利军","lianXiRenName":"鄢利军","cheXi":"RAV4","cheShenYanSe":"黑色","cheXingDaiMa":"ACA33L-ANPGKC","changPai":"一汽丰田TV6460GLX-I","CheJiaHao":"LFMJW36F6B0132339","ChePaiHao":"鄂J53998","lianXiRenMob":"13872026888","gouCheDate":"2011-11-14 0:00:00","CustomizeName":"","lastLaiChangDate":"2015-1-8 11:52:46"},{"keyId":"11","vehicleId":"5cc16c92-5442-464f-af18-f556093d7bb0","cusId":"1cf0bb31-23a9-4088-a9a1-d0a794064e5a","cheZhuName":"祝文兵","lianXiRenName":"祝文兵","cheXi":"RAV4","cheShenYanSe":"黑色","cheXingDaiMa":"ZSA44L-ANXGKC","changPai":"一汽丰田","CheJiaHao":"LFMJ44AF6E3037866","ChePaiHao":"赣GS1558","lianXiRenMob":"13593695988","gouCheDate":"1900-1-1 0:00:00","CustomizeName":"","lastLaiChangDate":"2015-1-8 10:13:03"},{"keyId":"12","vehicleId":"6291919c-5e57-4080-b524-c58d7658ef64","cusId":"6291919c-5e57-4080-b524-c58d7658ef64","cheZhuName":"虞倩","lianXiRenName":"虞倩","cheXi":"威驰","cheShenYanSe":"白色","cheXingDaiMa":"NSP151L-BEPRKC","changPai":"一汽丰田","CheJiaHao":"LFMA8E2A0E0029535","ChePaiHao":"赣GD9939","lianXiRenMob":"18270299591","gouCheDate":"2014-4-29 0:00:00","CustomizeName":"","lastLaiChangDate":"2015-1-8 10:01:27"},{"keyId":"13","vehicleId":"81e2c4fd-ce9e-4132-92da-44ade06b9342","cusId":"81e2c4fd-ce9e-4132-92da-44ade06b9342","cheZhuName":"曾照武","lianXiRenName":"董炎峰","cheXi":"RAV4","cheShenYanSe":"白色","cheXingDaiMa":"ACA33L-ANPGKC","changPai":"一汽丰田 TV6460GLX","CheJiaHao":"LFMJW36FXC0164230","ChePaiHao":"赣GZ2373","lianXiRenMob":"18146603777","gouCheDate":"2012-10-20 0:00:00","CustomizeName":"","lastLaiChangDate":"2015-1-8 9:56:52"},{"keyId":"14","vehicleId":"d3faa8a5-5eaf-42e7-beed-b5666d7ae6b5","cusId":"d3faa8a5-5eaf-42e7-beed-b5666d7ae6b5","cheZhuName":"王梦妹","lianXiRenName":"黄志明","cheXi":"花冠","cheShenYanSe":"银色","cheXingDaiMa":"ZRE120L-GEPDKC","changPai":"一汽丰田","CheJiaHao":"LFMAP22C7C0398389","ChePaiHao":"赣GW9516","lianXiRenMob":"15907928792","gouCheDate":"2012-5-25 14:03:32","CustomizeName":"","lastLaiChangDate":"2015-1-8 9:45:27"},{"keyId":"15","vehicleId":"7d446c5c-f0e5-4c46-9f63-3eece7445aa9","cusId":"7d446c5c-f0e5-4c46-9f63-3eece7445aa9","cheZhuName":"杜凤娥","lianXiRenName":"何小年","cheXi":"花冠","cheShenYanSe":"白色","cheXingDaiMa":"ZRE120L-GEPDKC","changPai":"一汽丰田","CheJiaHao":"LFMAP22C7E0642738","ChePaiHao":"赣G33006","lianXiRenMob":"15979956260","gouCheDate":"2014-5-29 0:00:00","CustomizeName":"","lastLaiChangDate":"2015-1-8 9:36:10"}]}';
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
