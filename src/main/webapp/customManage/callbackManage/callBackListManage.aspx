
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

 <head>
    <title>客户管理 售后回访</title>
  <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

 <script language="javascript" type="text/javascript" >
    
     function billShowChange(index) {
         if ($('#dg').datagrid('getRows')[index] == undefined) { return; }
         var saleAfterGuid = $('#dg').datagrid('getRows')[index]['saleAfterGuid'];
         var cusGuid = $('#dg').datagrid('getRows')[index]['cusGuid'];
         var vehicleId = $('#dg').datagrid('getRows')[index]['vehicleId'];
         var strNum = index;

         var href = "shouHouHuiFangFrame.aspx?saleafterGuid=" + saleAfterGuid + "&vehicleId=" + vehicleId + "&cusGuid=" + cusGuid + "&strNum=" + strNum + "&d=" + new Date();
         var SizeZ = 'height=' + (screen.availHeight - 20) + ',width=' + (screen.availWidth - 10) + ',left=0,top=0,toolbar=no,resizable=yes,status=no,menubar=no,scrollbars=yes';
         openStatus2 = window.open(href, '售后回访', SizeZ);
         openStatus2.focus();

         //return [saleAfterGuid,cusGuid,strNum];

     }


   
     function billShow(index) {
         //alert(index);
         if ($('#dg').datagrid('getRows')[index] == undefined) {return;}
         var saleAfterGuid = $('#dg').datagrid('getRows')[index]['saleAfterGuid'];
         var cusGuid = $('#dg').datagrid('getRows')[index]['cusGuid'];
         var vehicleId = $('#dg').datagrid('getRows')[index]['vehicleId'];
         var strNum = index;

         var href = "shouHouHuiFangFrame.aspx?saleafterGuid=" + saleAfterGuid + "&vehicleId="+vehicleId+"&cusGuid=" + cusGuid + "&strNum=" + strNum + "&d=" + new Date();
         var SizeZ = 'height=' + (screen.availHeight - 20) + ',width=' + (screen.availWidth - 10) + ',left=0,top=0,toolbar=no,resizable=yes,status=no,menubar=no,scrollbars=yes';
         try {
             if (!openStatus2.closed) {
                 alert("售后回访窗口 已在外部打开");
                 openStatus2.focus();
                 return false;
             }
             else {
                 openStatus2 = window.open(href, '售后回访', SizeZ);
             }
         }
         catch (Error) {
             openStatus2 = window.open(href, '售后回访', SizeZ);
         }

     }




 </script>

<body>
    <form name="form1" method="post" action="callBackListManage.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0NDQ4NDU1MjJkZEpjfw+ihx7Uvakp3vlSW+0ceLSV" />
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
        <span class="titleSpan">售后回访</span> 
         </td><td align="right" style="white-space:nowrap;">         
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
                pageSize:15,onClickRow:billShow"
      >
        <thead>
            <tr> 
                <th  data-options="field:'saleAfterGuid'" hidden="true">是否在店</th>
                <th  data-options="field:'cusGuid'" hidden="true">是否在店</th>
                <th  data-options="field:'vehicleId'" hidden="true">是否在店2</th>
                <th  data-options="field:'zaiDianFlag',width:40" sortable="true">是否在店</th>
                <th  data-options="field:'cheZhuSort',width:80" sortable="true">客户标识</th>
                <th  data-options="field:'customizeName',width:80" sortable="true">自定义</th>
                <th  data-options="field:'billNo',width:120" sortable="true">维修单号</th>
                <th  data-options="field:'chePaiHao',width:120" sortable="true">车牌号</th>
                <th  data-options="field:'lianXiRenTel',width:120" sortable="true">手机</th>
                <th  data-options="field:'yuYue',width:120" sortable="true">是否预约</th>
                <th  data-options="field:'huiFangStatus',width:120" sortable="true">回访状态</th>
                <th  data-options="field:'huiFangJieGuo',width:120" sortable="true">回访结果</th>
                <th  data-options="field:'lastJieGuo',width:120" sortable="true">最后联系结果</th>
                <th  data-options="field:'Total',width:120" sortable="true">联系次数</th>
                <th  data-options="field:'lianXiRenName',width:120" sortable="true">维修联系人</th>
                <th  data-options="field:'lastYiJian',width:120" sortable="true">用户意见</th>
                <th  data-options="field:'fuWuUserID',width:120" sortable="true">上次接车员</th>
                <th  data-options="field:'lastHuiFangR',width:120" sortable="true">最后联系人</th>
                <th  data-options="field:'lastTime',width:120" sortable="true">最后联系时间</th>
                <th  data-options="field:'cheXi',width:120" sortable="true">车系</th>
                <th  data-options="field:'cheJiaHao',width:120" sortable="true">车架号</th>
                <th  data-options="field:'lianXiRenAdd',width:120" sortable="true">联系地址</th>
                <th  data-options="field:'chuChangDate',width:120" sortable="true">交车日</th>
                <th  data-options="field:'changJiaPinPai',width:120" sortable="true">厂家品牌</th>
                <th  data-options="field:'tiShiInfo',width:120" sortable="true">提示信息</th> 

       
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
     <td>回访状态:</td>
     <td>
     <select name="ddlHuiFangStatus" id="ddlHuiFangStatus" style="width:90px;">
    <option selected="selected" value="">全部</option>
    <option value="未成功">未成功</option>
    <option value="已成功">已成功</option>
    <option value="无需回访">无需回访</option>

</select>
     </td>
     <td>交车时间:</td>
     <td><input name="txtJiaoCheDate1" type="text" value="2015-1-5" id="txtJiaoCheDate1" class="easyui-datebox" /> </td>
     <td><input name="txtJiaoCheDate2" type="text" value="2015-1-5" id="txtJiaoCheDate2" class="easyui-datebox" /> </td>
     
    <td>客户满意度:</td>
    <td>
     <select name="ddlCustomManYiDu" id="ddlCustomManYiDu" style="width:132px;">
    <option selected="selected" value="">全部</option>
    <option value="0">无</option>
    <option value="1">★</option>
    <option value="2">★★</option>
    <option value="3">★★★</option>
    <option value="4">★★★★</option>
    <option value="5">★★★★★</option>

</select> </td>
      <td>客户类别:</td>
      <td>
      <select name="ddlKeHuSort" id="ddlKeHuSort" style="width:132px;">
    <option selected="selected" value="">全部</option>
    <option value="普通客户">普通客户</option>
    <option value="月结客户">月结客户</option>
    <option value="内部员工">内部员工</option>
    <option value="会员">会员</option>

</select>
      </td>
      <td>是否在店</td>
      <td>
      <select name="ddlShiFouZaiDian" id="ddlShiFouZaiDian" style="width:132px;">
    <option selected="selected" value="">全部</option>
    <option value="0">不在店</option>
    <option value="1">在店</option>

</select>
      </td>
       
     </tr>
     <tr>
     <td>回访结果:</td>
     <td>
        <select name="ddlHuiFangJieGuo" id="ddlHuiFangJieGuo" style="width:90px;">
    <option selected="selected" value="">全部</option>
    <option value="满意">满意</option>
    <option value="不满意">不满意</option>
    <option value="其它">其它</option>

</select> 
     </td>
     <td>最后联系时间:</td>
     <td><input name="txtLastLianXiDate1" type="text" id="txtLastLianXiDate1" class="easyui-datebox" /> </td>
     <td><input name="txtLastLianXiDate2" type="text" id="txtLastLianXiDate2" class="easyui-datebox" /> </td>
     <td>车牌号码:</td>
     <td><input name="txtChePaiHaoMa" type="text" maxlength="10" id="txtChePaiHaoMa" />    </td>
     <td>维修单号:</td>
     <td><input name="txtWeiXiuBillNo" type="text" maxlength="30" id="txtWeiXiuBillNo" />     </td>

     <td>手机号:</td>
     <td><input name="txtShouJiTel" type="text" maxlength="50" id="txtShouJiTel" /> </td>
    </tr>

    <tr>
    <td>排序方式:</td>
    <td>
      <select name="ddlPaiLie" id="ddlPaiLie" style="width:90px;">
    <option selected="selected" value="按车牌号">按车牌号</option>
    <option value="按交车日">按交车日</option>
    <option value="手机">手机</option>
    <option value="车辆品牌">车辆品牌</option>
    <option value="车型">车型</option>
    <option value="最后联系时间">最后联系时间</option>
    <option value="最后联系人">最后联系人</option>
    <option value="维修单号">维修单号</option>
    <option value="客户满意度">客户满意度</option>
    <option value="客户标识">客户标识</option>
    <option value="是否在店">是否在店</option>
    <option value="回访状态">回访状态</option>
    <option value="回访结果">回访结果</option>
    <option value="最后联系结果">最后联系结果</option>
    <option value="联系次数">联系次数</option>
    <option value="维修联系人">维修联系人</option>
    <option value="用户意见">用户意见</option>

</select>
    </td>
    <td colspan="8"></td>
    <td>
    <a onclick="return searchCheck();" id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
    </td>
    </tr>

    </table>
    </div>
   <!--查询条件 end-->
    
<div>

    <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="F4D24A7C" />
    <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWNgLb/rjsCALAn+vmDAK87en2BAKfluDwDwKa7byuAgKm4eRsAtK+rO0EAvfZqesMAr+squsMAta6/QkCyuWf9goCm6H5tQkCj+63VgKfgZ24DAKAgZ24DAKBgZ24DAKCgZ24DAKDgZ24DAKEgZ24DAKUkYDNAQLW9IHiCQK88t2RAwKplMKVBwKi6IucDgLpq4CjCwL5xKrNBwLmxKrNBwKh9vP8CwKezNyaBQLTxae5BwLru+zOCwLn3fDXDQLn3fzXDQKUyP1yAoWTiqEHAvG4x8YGAoTb9PYKArLarsIMAoT2oscEAp7Wr6QBAtu8ncMFArW9sNMHAvmDw/EMAqzYiIcLAraskPoIAsS5raUEApLw+sYKAs+V758BAtyNgckBAs7jk6QGArDAhpIDAoas/9QDArb4xgsCqYuJwQWRpSzQxuBUdOg8CZoAeeCrIIqjCg==" />
</div></form>


 

    <script language="javascript" type="text/javascript" >

        var btnFlag = "0";
        function searchCheck() {
            if (btnFlag == "0") { btnFlag = "1"; return true; } else { alert('禁止多次进行提交操作!'); }
            return false;
        }

        //var jsonStr = '{"total":15,"rows":[{"keyId":"1","saleAfterGuid":"ee9a30d5-6d9e-40f8-8da2-8a6064ff561f","cusGuid":"132b0fdd-a2e1-4a77-a3f3-cb2a99ee8f86","vehicleId":"132b0fdd-a2e1-4a77-a3f3-cb2a99ee8f86","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105015","chePaiHao":"粤B6EB98","lianXiRenTel":"13699755662","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"李光照","lastYiJian":"客户要求短信回访","fuWuUserID":"周蔷","lastHuiFangR":"陈成","lastTime":"2015-1-7 9:59:16","cheXi":"卡罗拉","cheJiaHao":"LFMAPE2C7C3562255","lianXiRenAdd":"广东省深圳市宝安区沙井街道三旧村二巷8号一层","chuChangDate":"2015-1-5 16:38:51","changJiaPinPai":"一汽丰田CA","tiShiInfo":"","ruChangDate":"2015-1-5 14:50:53"},{"keyId":"2","saleAfterGuid":"6d6686cf-7c11-4427-ba02-e33aa4396ecc","cusGuid":"f073f967-da22-4e88-b08c-b5a72a95074a","vehicleId":"f073f967-da22-4e88-b08c-b5a72a95074a","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105014","chePaiHao":"赣GS7397","lianXiRenTel":"13576242224","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"吴光辉","lastYiJian":"客户要求短信回访","fuWuUserID":"李南燮","lastHuiFangR":"陈成","lastTime":"2015-1-7 9:56:16","cheXi":"卡罗拉","cheJiaHao":"LFMAPE2C6C0387188","lianXiRenAdd":"江西省九江市彭泽县棉船镇新淡村九组","chuChangDate":"2015-1-5 13:37:29","changJiaPinPai":"一汽丰田TV","tiShiInfo":"","ruChangDate":"2015-1-5 12:04:28"},{"keyId":"3","saleAfterGuid":"46f7e4df-7e0f-4bab-abd8-6ab29cf6e4aa","cusGuid":"38e10268-5454-45bd-b5c0-4401e7551cf6","vehicleId":"38e10268-5454-45bd-b5c0-4401e7551cf6","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105013","chePaiHao":"赣GP9618","lianXiRenTel":"13767220411","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"刘显泽","lastYiJian":"客户要求短信回访","fuWuUserID":"周蔷","lastHuiFangR":"陈成","lastTime":"2015-1-7 9:56:38","cheXi":"卡罗拉","cheJiaHao":"LFMAPE2C1D0508839","lianXiRenAdd":"江西省九江市都昌县都昌镇芙蓉小区19栋203室","chuChangDate":"2015-1-5 14:17:41","changJiaPinPai":"一汽丰田","tiShiInfo":"","ruChangDate":"2015-1-5 11:40:26"},{"keyId":"4","saleAfterGuid":"23e1c1e5-a0e8-40f2-b72e-205d39b3cb39","cusGuid":"31bf3f35-0e36-4697-9543-2a8368f00365","vehicleId":"31bf3f35-0e36-4697-9543-2a8368f00365","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105011","chePaiHao":"赣G0H966","lianXiRenTel":"15870858582","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"周升广","lastYiJian":"1月7日已做CSI","fuWuUserID":"周蔷","lastHuiFangR":"陈成","lastTime":"2015-1-7 15:24:23","cheXi":"卡罗拉","cheJiaHao":"LFMAPE2C4C0922597","lianXiRenAdd":"九江浔阳区长虹大道","chuChangDate":"2015-1-5 13:31:57","changJiaPinPai":"一汽丰田","tiShiInfo":"","ruChangDate":"2015-1-5 11:09:58"},{"keyId":"5","saleAfterGuid":"62ef518a-ed1d-45fc-b3e4-4974aa401a17","cusGuid":"1a4482e9-d8db-4eb9-bc9e-07a8736b7cc4","vehicleId":"1a4482e9-d8db-4eb9-bc9e-07a8736b7cc4","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105010","chePaiHao":"赣G8G900","lianXiRenTel":"15897932083","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"刘棠熙","lastYiJian":"满意","fuWuUserID":"周蔷","lastHuiFangR":"陈成","lastTime":"2015-1-7 15:27:22","cheXi":"卡罗拉","cheJiaHao":"LFMAPE2C2C0422440","lianXiRenAdd":"湖北省武穴市梅川镇居杠村四组41号","chuChangDate":"2015-1-5 15:14:24","changJiaPinPai":"一汽丰田TV","tiShiInfo":"","ruChangDate":"2015-1-5 11:10:42"},{"keyId":"6","saleAfterGuid":"944bfe27-1f46-4cbf-9f93-0cb0ab6b3834","cusGuid":"2cf121f6-ef10-4055-94fc-c2d9454005ed","vehicleId":"2cf121f6-ef10-4055-94fc-c2d9454005ed","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105008","chePaiHao":"赣G9A812","lianXiRenTel":"18679247650","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"柯瑞宁","lastYiJian":"客户要求短信回访","fuWuUserID":"李南燮","lastHuiFangR":"陈成","lastTime":"2015-1-7 9:55:50","cheXi":"RAV4","cheJiaHao":"LFMKV30F2B0102870","lianXiRenAdd":"江西省九江市瑞昌市南义镇南兴小区","chuChangDate":"2015-1-5 13:38:36","changJiaPinPai":"一汽丰田","tiShiInfo":"","ruChangDate":"2015-1-5 10:23:15"},{"keyId":"7","saleAfterGuid":"2b626704-8b52-4f65-bfa2-ef4c6e2f9e08","cusGuid":"40e4989b-123c-4cba-863a-ec997a57fed1","vehicleId":"70919435-51a4-411b-bf28-e5aa5f59255b","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105007","chePaiHao":"赣G0A093","lianXiRenTel":"13507066680","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"周拥胜","lastYiJian":"满意","fuWuUserID":"周蔷","lastHuiFangR":"陈成","lastTime":"2015-1-7 15:27:55","cheXi":"RAV4","cheJiaHao":"LFMJ34AF8E3064005","lianXiRenAdd":"江西省九江市浔阳区滨江路","chuChangDate":"2015-1-5 14:20:33","changJiaPinPai":"一汽丰田","tiShiInfo":"","ruChangDate":"2015-1-5 10:12:23"},{"keyId":"8","saleAfterGuid":"81794acc-6e7b-4d9b-bc54-aa58859600c0","cusGuid":"30eb51e9-cc8c-47ab-bc7e-0d6e33714a4e","vehicleId":"30eb51e9-cc8c-47ab-bc7e-0d6e33714a4e","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105006","chePaiHao":"赣GK3328","lianXiRenTel":"18679263328","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"刘金平","lastYiJian":"满意","fuWuUserID":"李南燮","lastHuiFangR":"陈成","lastTime":"2015-1-7 15:29:35","cheXi":"RAV4","cheJiaHao":"LFMKV30F1A0036438","lianXiRenAdd":"江西省九江市星子县温泉镇板桥村邹家58号","chuChangDate":"2015-1-5 13:43:42","changJiaPinPai":"一汽丰田TV","tiShiInfo":"","ruChangDate":"2015-1-5 10:09:56"},{"keyId":"9","saleAfterGuid":"cf9fb488-8183-4e59-a094-a76ac5674280","cusGuid":"5fafe8d3-863b-4d49-a799-836375caf1a8","vehicleId":"5fafe8d3-863b-4d49-a799-836375caf1a8","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105005","chePaiHao":"赣G0T833","lianXiRenTel":"18706006333","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"张建国","lastYiJian":"客户要求短信回访","fuWuUserID":"周蔷","lastHuiFangR":"陈成","lastTime":"2015-1-7 9:57:14","cheXi":"RAV4","cheJiaHao":"LFMK440F6D3012115","lianXiRenAdd":"福建省邵武市水北镇龙丰村高家渡15号","chuChangDate":"2015-1-5 13:55:54","changJiaPinPai":"一汽丰田","tiShiInfo":"","ruChangDate":"2015-1-5 9:58:13"},{"keyId":"10","saleAfterGuid":"716cb372-262f-40d5-9ed9-13075442e3b9","cusGuid":"5d38774b-2a36-41b9-adb5-403eab8ae9eb","vehicleId":"5d38774b-2a36-41b9-adb5-403eab8ae9eb","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105004","chePaiHao":"鄂JH9191","lianXiRenTel":"13636125222","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"2","lianXiRenName":"丁可","lastYiJian":"客户要求下午回访","fuWuUserID":"李南燮","lastHuiFangR":"陈成","lastTime":"2015-1-7 15:32:46","cheXi":"锐志","cheJiaHao":"LFMBEC4D5D0156885","lianXiRenAdd":"湖北省黄梅县孔垄镇邓渡村2组","chuChangDate":"2015-1-5 13:33:08","changJiaPinPai":"一汽丰田TV","tiShiInfo":"","ruChangDate":"2015-1-5 9:51:48"},{"keyId":"11","saleAfterGuid":"86c196e3-5670-4f9c-a135-76c87a1e2f3b","cusGuid":"1a1a6a97-ed5f-4003-a54b-c54ddef4e627","vehicleId":"3a03975d-1a7b-41fa-93c2-1a44ad33715b","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105003","chePaiHao":"赣G25629","lianXiRenTel":"18270276109","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"熊松","lastYiJian":"客户要求短信回访","fuWuUserID":"周蔷","lastHuiFangR":"陈成","lastTime":"2015-1-7 9:58:46","cheXi":"锐志","cheJiaHao":"LFMBEC4D4E0241704","lianXiRenAdd":"星子县温泉镇新塘坂村熊家桥24号附26号","chuChangDate":"2015-1-5 15:15:46","changJiaPinPai":"一汽丰田","tiShiInfo":"","ruChangDate":"2015-1-5 9:50:25"},{"keyId":"12","saleAfterGuid":"da0689e0-54b6-4df0-aa59-cb3994f878b1","cusGuid":"c6b862eb-9d28-479f-825f-f1c6e304b5e8","vehicleId":"c6b862eb-9d28-479f-825f-f1c6e304b5e8","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105002","chePaiHao":"浙A979US","lianXiRenTel":"15179232903","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"张紫英","lastYiJian":"满意","fuWuUserID":"李南燮","lastHuiFangR":"陈成","lastTime":"2015-1-7 15:34:37","cheXi":"广汽丰田","cheJiaHao":"LVGDL25R1CG022285","lianXiRenAdd":"瑞昌市范镇北溪村老屋场四组23号","chuChangDate":"2015-1-5 14:08:51","changJiaPinPai":"丰田","tiShiInfo":"","ruChangDate":"2015-1-5 9:39:23"},{"keyId":"13","saleAfterGuid":"aad2ab3a-2e14-4b2b-b1d3-e78801205463","cusGuid":"682e63c3-5c19-43a0-8af7-43edf0b44a4c","vehicleId":"682e63c3-5c19-43a0-8af7-43edf0b44a4c","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105001","chePaiHao":"鄂J5D266","lianXiRenTel":"13197076008","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"王炼雄","lastYiJian":"客户要求短信回访","fuWuUserID":"周蔷","lastHuiFangR":"陈成","lastTime":"2015-1-7 9:58:09","cheXi":"RAV4","cheJiaHao":"LFMJV36FXC0012483","lianXiRenAdd":"湖北省黄冈市黄梅县柳林乡老铺村一组","chuChangDate":"2015-1-5 14:04:51","changJiaPinPai":"一汽丰田","tiShiInfo":"","ruChangDate":"2015-1-5 9:40:13"},{"keyId":"14","saleAfterGuid":"f82331cb-e842-4f56-ab97-cb1738111fd3","cusGuid":"a4dcf85b-198a-447e-b06b-f221dd04cc82","vehicleId":"a4dcf85b-198a-447e-b06b-f221dd04cc82","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150104019","chePaiHao":"京N0D691","lianXiRenTel":"13661395679","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"李代平","lastYiJian":"满意","fuWuUserID":"李南燮","lastHuiFangR":"陈成","lastTime":"2015-1-7 15:35:00","cheXi":"卡罗拉","cheJiaHao":"LFMAPE2C590133772","lianXiRenAdd":"江西省九江市浔阳区滨江路15号","chuChangDate":"2015-1-5 13:39:22","changJiaPinPai":"一汽丰田TV","tiShiInfo":"","ruChangDate":"2015-1-4 14:33:57"},{"keyId":"15","saleAfterGuid":"ecebff04-8e74-4d33-9b67-257f1aa54ac7","cusGuid":"e5772fa1-10b4-493b-b30c-7cbd16e2cab0","vehicleId":"eecec505-8076-4e30-81df-5e91931f7d0b","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150104011","chePaiHao":"赣G28C60","lianXiRenTel":"15979955246","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"高泽保","lastYiJian":"1月7日已做CSI","fuWuUserID":"方璐彬","lastHuiFangR":"陈成","lastTime":"2015-1-7 15:39:31","cheXi":"威驰","cheJiaHao":"LFMA8E2A1E0065170","lianXiRenAdd":"九江市彭泽县黄花镇黄坂村三组","chuChangDate":"2015-1-5 13:42:17","changJiaPinPai":"一汽丰田","tiShiInfo":"1300","ruChangDate":"2015-1-4 11:14:51"}]}';
        jsonStrData = {"total":15,"rows":[{"keyId":"1","saleAfterGuid":"ee9a30d5-6d9e-40f8-8da2-8a6064ff561f","cusGuid":"132b0fdd-a2e1-4a77-a3f3-cb2a99ee8f86","vehicleId":"132b0fdd-a2e1-4a77-a3f3-cb2a99ee8f86","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105015","chePaiHao":"粤B6EB98","lianXiRenTel":"13699755662","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"李光照","lastYiJian":"客户要求短信回访","fuWuUserID":"周蔷","lastHuiFangR":"陈成","lastTime":"2015-1-7 9:59:16","cheXi":"卡罗拉","cheJiaHao":"LFMAPE2C7C3562255","lianXiRenAdd":"广东省深圳市宝安区沙井街道三旧村二巷8号一层","chuChangDate":"2015-1-5 16:38:51","changJiaPinPai":"一汽丰田CA","tiShiInfo":"","ruChangDate":"2015-1-5 14:50:53"},{"keyId":"2","saleAfterGuid":"6d6686cf-7c11-4427-ba02-e33aa4396ecc","cusGuid":"f073f967-da22-4e88-b08c-b5a72a95074a","vehicleId":"f073f967-da22-4e88-b08c-b5a72a95074a","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105014","chePaiHao":"赣GS7397","lianXiRenTel":"13576242224","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"吴光辉","lastYiJian":"客户要求短信回访","fuWuUserID":"李南燮","lastHuiFangR":"陈成","lastTime":"2015-1-7 9:56:16","cheXi":"卡罗拉","cheJiaHao":"LFMAPE2C6C0387188","lianXiRenAdd":"江西省九江市彭泽县棉船镇新淡村九组","chuChangDate":"2015-1-5 13:37:29","changJiaPinPai":"一汽丰田TV","tiShiInfo":"","ruChangDate":"2015-1-5 12:04:28"},{"keyId":"3","saleAfterGuid":"46f7e4df-7e0f-4bab-abd8-6ab29cf6e4aa","cusGuid":"38e10268-5454-45bd-b5c0-4401e7551cf6","vehicleId":"38e10268-5454-45bd-b5c0-4401e7551cf6","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105013","chePaiHao":"赣GP9618","lianXiRenTel":"13767220411","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"刘显泽","lastYiJian":"客户要求短信回访","fuWuUserID":"周蔷","lastHuiFangR":"陈成","lastTime":"2015-1-7 9:56:38","cheXi":"卡罗拉","cheJiaHao":"LFMAPE2C1D0508839","lianXiRenAdd":"江西省九江市都昌县都昌镇芙蓉小区19栋203室","chuChangDate":"2015-1-5 14:17:41","changJiaPinPai":"一汽丰田","tiShiInfo":"","ruChangDate":"2015-1-5 11:40:26"},{"keyId":"4","saleAfterGuid":"23e1c1e5-a0e8-40f2-b72e-205d39b3cb39","cusGuid":"31bf3f35-0e36-4697-9543-2a8368f00365","vehicleId":"31bf3f35-0e36-4697-9543-2a8368f00365","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105011","chePaiHao":"赣G0H966","lianXiRenTel":"15870858582","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"周升广","lastYiJian":"1月7日已做CSI","fuWuUserID":"周蔷","lastHuiFangR":"陈成","lastTime":"2015-1-7 15:24:23","cheXi":"卡罗拉","cheJiaHao":"LFMAPE2C4C0922597","lianXiRenAdd":"九江浔阳区长虹大道","chuChangDate":"2015-1-5 13:31:57","changJiaPinPai":"一汽丰田","tiShiInfo":"","ruChangDate":"2015-1-5 11:09:58"},{"keyId":"5","saleAfterGuid":"62ef518a-ed1d-45fc-b3e4-4974aa401a17","cusGuid":"1a4482e9-d8db-4eb9-bc9e-07a8736b7cc4","vehicleId":"1a4482e9-d8db-4eb9-bc9e-07a8736b7cc4","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105010","chePaiHao":"赣G8G900","lianXiRenTel":"15897932083","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"刘棠熙","lastYiJian":"满意","fuWuUserID":"周蔷","lastHuiFangR":"陈成","lastTime":"2015-1-7 15:27:22","cheXi":"卡罗拉","cheJiaHao":"LFMAPE2C2C0422440","lianXiRenAdd":"湖北省武穴市梅川镇居杠村四组41号","chuChangDate":"2015-1-5 15:14:24","changJiaPinPai":"一汽丰田TV","tiShiInfo":"","ruChangDate":"2015-1-5 11:10:42"},{"keyId":"6","saleAfterGuid":"944bfe27-1f46-4cbf-9f93-0cb0ab6b3834","cusGuid":"2cf121f6-ef10-4055-94fc-c2d9454005ed","vehicleId":"2cf121f6-ef10-4055-94fc-c2d9454005ed","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105008","chePaiHao":"赣G9A812","lianXiRenTel":"18679247650","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"柯瑞宁","lastYiJian":"客户要求短信回访","fuWuUserID":"李南燮","lastHuiFangR":"陈成","lastTime":"2015-1-7 9:55:50","cheXi":"RAV4","cheJiaHao":"LFMKV30F2B0102870","lianXiRenAdd":"江西省九江市瑞昌市南义镇南兴小区","chuChangDate":"2015-1-5 13:38:36","changJiaPinPai":"一汽丰田","tiShiInfo":"","ruChangDate":"2015-1-5 10:23:15"},{"keyId":"7","saleAfterGuid":"2b626704-8b52-4f65-bfa2-ef4c6e2f9e08","cusGuid":"40e4989b-123c-4cba-863a-ec997a57fed1","vehicleId":"70919435-51a4-411b-bf28-e5aa5f59255b","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105007","chePaiHao":"赣G0A093","lianXiRenTel":"13507066680","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"周拥胜","lastYiJian":"满意","fuWuUserID":"周蔷","lastHuiFangR":"陈成","lastTime":"2015-1-7 15:27:55","cheXi":"RAV4","cheJiaHao":"LFMJ34AF8E3064005","lianXiRenAdd":"江西省九江市浔阳区滨江路","chuChangDate":"2015-1-5 14:20:33","changJiaPinPai":"一汽丰田","tiShiInfo":"","ruChangDate":"2015-1-5 10:12:23"},{"keyId":"8","saleAfterGuid":"81794acc-6e7b-4d9b-bc54-aa58859600c0","cusGuid":"30eb51e9-cc8c-47ab-bc7e-0d6e33714a4e","vehicleId":"30eb51e9-cc8c-47ab-bc7e-0d6e33714a4e","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105006","chePaiHao":"赣GK3328","lianXiRenTel":"18679263328","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"刘金平","lastYiJian":"满意","fuWuUserID":"李南燮","lastHuiFangR":"陈成","lastTime":"2015-1-7 15:29:35","cheXi":"RAV4","cheJiaHao":"LFMKV30F1A0036438","lianXiRenAdd":"江西省九江市星子县温泉镇板桥村邹家58号","chuChangDate":"2015-1-5 13:43:42","changJiaPinPai":"一汽丰田TV","tiShiInfo":"","ruChangDate":"2015-1-5 10:09:56"},{"keyId":"9","saleAfterGuid":"cf9fb488-8183-4e59-a094-a76ac5674280","cusGuid":"5fafe8d3-863b-4d49-a799-836375caf1a8","vehicleId":"5fafe8d3-863b-4d49-a799-836375caf1a8","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105005","chePaiHao":"赣G0T833","lianXiRenTel":"18706006333","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"张建国","lastYiJian":"客户要求短信回访","fuWuUserID":"周蔷","lastHuiFangR":"陈成","lastTime":"2015-1-7 9:57:14","cheXi":"RAV4","cheJiaHao":"LFMK440F6D3012115","lianXiRenAdd":"福建省邵武市水北镇龙丰村高家渡15号","chuChangDate":"2015-1-5 13:55:54","changJiaPinPai":"一汽丰田","tiShiInfo":"","ruChangDate":"2015-1-5 9:58:13"},{"keyId":"10","saleAfterGuid":"716cb372-262f-40d5-9ed9-13075442e3b9","cusGuid":"5d38774b-2a36-41b9-adb5-403eab8ae9eb","vehicleId":"5d38774b-2a36-41b9-adb5-403eab8ae9eb","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105004","chePaiHao":"鄂JH9191","lianXiRenTel":"13636125222","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"2","lianXiRenName":"丁可","lastYiJian":"客户要求下午回访","fuWuUserID":"李南燮","lastHuiFangR":"陈成","lastTime":"2015-1-7 15:32:46","cheXi":"锐志","cheJiaHao":"LFMBEC4D5D0156885","lianXiRenAdd":"湖北省黄梅县孔垄镇邓渡村2组","chuChangDate":"2015-1-5 13:33:08","changJiaPinPai":"一汽丰田TV","tiShiInfo":"","ruChangDate":"2015-1-5 9:51:48"},{"keyId":"11","saleAfterGuid":"86c196e3-5670-4f9c-a135-76c87a1e2f3b","cusGuid":"1a1a6a97-ed5f-4003-a54b-c54ddef4e627","vehicleId":"3a03975d-1a7b-41fa-93c2-1a44ad33715b","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105003","chePaiHao":"赣G25629","lianXiRenTel":"18270276109","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"熊松","lastYiJian":"客户要求短信回访","fuWuUserID":"周蔷","lastHuiFangR":"陈成","lastTime":"2015-1-7 9:58:46","cheXi":"锐志","cheJiaHao":"LFMBEC4D4E0241704","lianXiRenAdd":"星子县温泉镇新塘坂村熊家桥24号附26号","chuChangDate":"2015-1-5 15:15:46","changJiaPinPai":"一汽丰田","tiShiInfo":"","ruChangDate":"2015-1-5 9:50:25"},{"keyId":"12","saleAfterGuid":"da0689e0-54b6-4df0-aa59-cb3994f878b1","cusGuid":"c6b862eb-9d28-479f-825f-f1c6e304b5e8","vehicleId":"c6b862eb-9d28-479f-825f-f1c6e304b5e8","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105002","chePaiHao":"浙A979US","lianXiRenTel":"15179232903","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"张紫英","lastYiJian":"满意","fuWuUserID":"李南燮","lastHuiFangR":"陈成","lastTime":"2015-1-7 15:34:37","cheXi":"广汽丰田","cheJiaHao":"LVGDL25R1CG022285","lianXiRenAdd":"瑞昌市范镇北溪村老屋场四组23号","chuChangDate":"2015-1-5 14:08:51","changJiaPinPai":"丰田","tiShiInfo":"","ruChangDate":"2015-1-5 9:39:23"},{"keyId":"13","saleAfterGuid":"aad2ab3a-2e14-4b2b-b1d3-e78801205463","cusGuid":"682e63c3-5c19-43a0-8af7-43edf0b44a4c","vehicleId":"682e63c3-5c19-43a0-8af7-43edf0b44a4c","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150105001","chePaiHao":"鄂J5D266","lianXiRenTel":"13197076008","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"王炼雄","lastYiJian":"客户要求短信回访","fuWuUserID":"周蔷","lastHuiFangR":"陈成","lastTime":"2015-1-7 9:58:09","cheXi":"RAV4","cheJiaHao":"LFMJV36FXC0012483","lianXiRenAdd":"湖北省黄冈市黄梅县柳林乡老铺村一组","chuChangDate":"2015-1-5 14:04:51","changJiaPinPai":"一汽丰田","tiShiInfo":"","ruChangDate":"2015-1-5 9:40:13"},{"keyId":"14","saleAfterGuid":"f82331cb-e842-4f56-ab97-cb1738111fd3","cusGuid":"a4dcf85b-198a-447e-b06b-f221dd04cc82","vehicleId":"a4dcf85b-198a-447e-b06b-f221dd04cc82","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150104019","chePaiHao":"京N0D691","lianXiRenTel":"13661395679","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"李代平","lastYiJian":"满意","fuWuUserID":"李南燮","lastHuiFangR":"陈成","lastTime":"2015-1-7 15:35:00","cheXi":"卡罗拉","cheJiaHao":"LFMAPE2C590133772","lianXiRenAdd":"江西省九江市浔阳区滨江路15号","chuChangDate":"2015-1-5 13:39:22","changJiaPinPai":"一汽丰田TV","tiShiInfo":"","ruChangDate":"2015-1-4 14:33:57"},{"keyId":"15","saleAfterGuid":"ecebff04-8e74-4d33-9b67-257f1aa54ac7","cusGuid":"e5772fa1-10b4-493b-b30c-7cbd16e2cab0","vehicleId":"eecec505-8076-4e30-81df-5e91931f7d0b","zaiDianFlag":"不在店","cheZhuSort":"普通客户","customizeName":"","manY":"★★★★★","billNo":"WXD20150104011","chePaiHao":"赣G28C60","lianXiRenTel":"15979955246","yuYue":"是","huiFangStatus":"已成功","huiFangJieGuo":"满意","lastJieGuo":"成功","Total":"1","lianXiRenName":"高泽保","lastYiJian":"1月7日已做CSI","fuWuUserID":"方璐彬","lastHuiFangR":"陈成","lastTime":"2015-1-7 15:39:31","cheXi":"威驰","cheJiaHao":"LFMA8E2A1E0065170","lianXiRenAdd":"九江市彭泽县黄花镇黄坂村三组","chuChangDate":"2015-1-5 13:42:17","changJiaPinPai":"一汽丰田","tiShiInfo":"1300","ruChangDate":"2015-1-4 11:14:51"}]};//  $.parseJSON(jsonStr);
        $(function () {
            $('#dg').datagrid({ loadFilter: pagerFilter }).datagrid('loadData', jsonStrData);
        });


        function pagerFilter(data) {
            if (typeof data.length == 'number' && typeof data.splice == 'function') {   // is array
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