


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">


 <head>
    <title>售后管理</title>

    <style type="text/css" >
    #searchTb tb
    {
      white-space:nowrap;
      }
     
    </style>

  <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>


<body>
    <form name="form1" method="post" action="saleAfterGongDanManage.action" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTExNjYzNTUzNTgPZBYCZg9kFgQCCg8QDxYGHg5EYXRhVmFsdWVGaWVsZAUBdh4NRGF0YVRleHRGaWVsZAUBdh4LXyFEYXRhQm91bmRnZBAVCwzkuIDoiKznu7Tkv64G5bm05a6hBummluS/nQblrprkv50J5aSn5a6i5oi3DOWOguWutuS/neS/rgbkv53pmakM5paw6L2m5qOA5p+lBuWFjeajgAbov5Tkv64AFQsM5LiA6Iis57u05L+uBuW5tOWuoQbpppbkv50G5a6a5L+dCeWkp+WuouaItwzljoLlrrbkv53kv64G5L+d6ZmpDOaWsOi9puajgOafpQblhY3mo4AG6L+U5L+uABQrAwtnZ2dnZ2dnZ2dnZ2RkAhEPEA8WBh8BBQh1c2VyTmFtZR8ABQh1c2VyTmFtZR8CZ2QQFRYG5ZSQ6Zu3CeWImOadsOeUnwnnuqrkvJ/mmI4J5bqE56eL6ZyeFembt+WFi+iQqOaWr+euoeeQhuWRmAnkvZXnhJXplIsJ5q635pyo5qC5BuS9meS5kAnnq6DmpZrnjrIM546L6YeR5qGC5a2QCeW8oOWFiOi1ngnmvZjmma/plIsJ5Lil5Yaw5YawCeWQtOWwj+eHlQnpmYjnp4vms6IJ546L56eA5aifBuadjuWotAnmnpfms73puY8J6ZmI6I2j5Y2OCeW8oOeRnuadsAnpmYjml63kvJ8G5YWo6YOoFRYG5ZSQ6Zu3CeWImOadsOeUnwnnuqrkvJ/mmI4J5bqE56eL6ZyeFembt+WFi+iQqOaWr+euoeeQhuWRmAnkvZXnhJXplIsJ5q635pyo5qC5BuS9meS5kAnnq6DmpZrnjrIM546L6YeR5qGC5a2QCeW8oOWFiOi1ngnmvZjmma/plIsJ5Lil5Yaw5YawCeWQtOWwj+eHlQnpmYjnp4vms6IJ546L56eA5aifBuadjuWotAnmnpfms73puY8J6ZmI6I2j5Y2OCeW8oOeRnuadsAnpmYjml63kvJ8AFCsDFmdnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dkZBgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WAQULY2hrV2VpQ2h1S3WslHek7r/CfRbOHs8LuEXo5oy74w==" />
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
        <span class="titleSpan">(接待中)</span> 
         </td><td align="right">           
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
                <th  data-options="field:'che',width:120" sortable=true>车</th>
                <th  data-options="field:'lianXiRenName',width:80">联系人</th>
                <th  data-options="field:'lianXiRenMob',width:80">联系人电话</th>
                <th  data-options="field:'ruChangDate',width:120">入厂时间</th>
                <th  data-options="field:'yuChuChangDate',width:120">预出厂时间</th> 
                <th  data-options="field:'jieSuanDate',width:120">结算时间</th>
                <th  data-options="field:'chuChangDate',width:120">出厂时间</th> 
       
            </tr>
    </thead>
  </table>
      </div>

      <input name="txtPageNum" type="text" value="1" id="txtPageNum" style="display:none;" />
      <input name="txtPageSize" type="text" value="15" id="txtPageSize" style="display:none;" />
      <a id="tmp" href="javascript:__doPostBack('tmp','')"></a>

       
   </div>

  <!--查询条件 start-->
  <div  id="search" style="display:none;overflow:scroll;">
    <table border='0' id="searchTb" >
     <tr>
      <td nowrap>入厂时间:</td><td><input name="txtRuChangDate1" type="text" id="txtRuChangDate1" class="easyui-datebox" /> </td>
      <td nowrap><input name="txtRuChangDate2" type="text" id="txtRuChangDate2" class="easyui-datebox" /> </td>
      <td nowrap>工单号:</td><td><input name="txtBillNo" type="text" maxlength="30" id="txtBillNo" /> </td>     
      <td nowrap>协议单号:</td><td><input name="txtXieYiDanHao" type="text" maxlength="60" id="txtXieYiDanHao" /> </td>
      <td nowrap>车架号:</td><td><input name="txtCheJiaHao" type="text" maxlength="30" id="txtCheJiaHao" /> </td>
      <td nowrap>工单状态:</td><td>
       <select name="ddlBusiBillStatus" id="ddlBusiBillStatus">
  <option selected="selected" value=""></option>
  <option value="已出库">已出库</option>
  <option value="财务收款中">财务收款中</option>
  <option value="已竣工">已竣工</option>
  <option value="等待派工">等待派工</option>
  <option value="维修中">维修中</option>
  <option value="接待中">接待中</option>

</select>
      </td>
      <td>
      <select name="ddlWeiXiuSort" id="ddlWeiXiuSort">
  <option value="一般维修">一般维修</option>
  <option value="年审">年审</option>
  <option value="首保">首保</option>
  <option value="定保">定保</option>
  <option value="大客户">大客户</option>
  <option value="厂家保修">厂家保修</option>
  <option value="保险">保险</option>
  <option value="新车检查">新车检查</option>
  <option value="免检">免检</option>
  <option value="返修">返修</option>
  <option selected="selected" value=""></option>

</select>
      </td>
      <td><input id="chkWeiChuKu" type="checkbox" name="chkWeiChuKu" checked="checked" /><label for="chkWeiChuKu">未出库</label></td>
     </tr>
     <tr>
      <td nowrap>出厂时间:</td><td><input name="txtChuChangDate1" type="text" id="txtChuChangDate1" class="easyui-datebox" /> </td>
      <td><input name="txtChuChangDate2" type="text" id="txtChuChangDate2" class="easyui-datebox" /> </td>
       <td nowrap>车牌号:</td><td><input name="txtChePaiHao" type="text" maxlength="10" id="txtChePaiHao" /> </td>
      <td nowrap>车主名:</td><td><input name="txtCheZhuName" type="text" maxlength="60" id="txtCheZhuName" /> </td>
      <td nowrap>手机:</td><td><input name="txtCheZhuTel" type="text" maxlength="18" id="txtCheZhuTel" /> </td>
      <td nowrap>服务顾问:</td><td><select name="ddlSA" id="ddlSA" style="width:130px">
  <option value="唐雷">唐雷</option>
  <option value="刘杰生">刘杰生</option>
  <option value="纪伟明">纪伟明</option>
  <option value="庄秋霞">庄秋霞</option>
  <option value="雷克萨斯管理员">雷克萨斯管理员</option>
  <option value="何焕锋">何焕锋</option>
  <option value="殷木根">殷木根</option>
  <option value="余乐">余乐</option>
  <option value="章楚玲">章楚玲</option>
  <option value="王金桂子">王金桂子</option>
  <option value="张先赞">张先赞</option>
  <option value="潘景锋">潘景锋</option>
  <option value="严冰冰">严冰冰</option>
  <option value="吴小燕">吴小燕</option>
  <option value="陈秋波">陈秋波</option>
  <option value="王秀娟">王秀娟</option>
  <option value="李娴">李娴</option>
  <option value="林泽鹏">林泽鹏</option>
  <option value="陈荣华">陈荣华</option>
  <option value="张瑞杰">张瑞杰</option>
  <option value="陈旭伟">陈旭伟</option>
  <option selected="selected" value="">全部</option>

</select> </td>
      <td nowrap>
       <a onclick="return searchCheck();" id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
     </td>
     
     </tr>
    </table>
    </div>
   <!--查询条件 end-->
    
<div>

  <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="C7067B92" />
  <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWOQK/tcGBCALAn+vmDAKfluDwDwKa7byuAgKm4eRsAp3MzIUPAoLjrvAEAtr08I0OAq7L998IAv7y5L0OApnq6tEBAsC1oYAGAtj8pr0GAsaq1+MGAtLGv9wPAtyHpfUGAu3o3vIHArmerfMOApPN194PAvXKhPsOAun2h/sOAo/G1MkNApj6t84LAqzut7AMAuW7+PEPArzb20MCs+7A/A4C35bw7w8Cu82xvQ8Cs/Gk5wYCs/HgeAKkxr0GAqrH7+IHAq6c6PkGAt+FwsEGArjwps0PAtXf3f0LAs/izUQCrfCE7QsCocWMtgsCie6xoQYCmLnmugQC//ncXQLqkd/RAgKr78+pAwK0hdW+CgL6q9jCAgLi0cD3DALH5thAAqvDxKoLAo3p1qcFAtf5ld0PArPB5pEEArXsxpYHAuityqUOAu/AjZoFAqmLicEFEtP1Ot5EuhIURD5L6zJmyU7VAAg=" />
</div></form>


    <script language="javascript" type="text/javascript">
        //所有的按钮事件
        function billShow(index) {
            var thisGuid = $('#dg').datagrid('getRows')[index]['thisGuid'];
            if (thisGuid != "" && thisGuid !=undefined) {
                //parent.winopen('../saleAfterManage/saleAfterIndex.action?tabId= &saleAfterWeiXiuGuid=' + thisGuid + '&d=' + new Date(), '维修工单', 990, 600, true, true, false);
                z = window.open('../saleAfterManage/saleAfterIndex.action?tabId=' +$.getUrlParam('tabId','')+ '&saleAfterWeiXiuGuid=' + thisGuid + '&d=' + new Date(), '维修工单', 'height=600,width=990,top=100,left=50,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=no');
                z.focus();
            }
          }
		  
    </script>

    <script language="javascript" type="text/javascript" >

        var btnFlag = "0";
        function searchCheck() {
            if (btnFlag == "0") { btnFlag = "1"; return true; } else { alert('禁止多次进行提交操作!'); }
            return false;
        }
     
        var jsonStr = '{"total":77,"rows":[{"keyId":"1","jieSuanDate":"","thisGuid":"d4e10073-1054-4c86-b552-f44623513d0b","billNo":"JDD20150105028","xieYiId":"SL0X15013638","WeiXiuSort":"定保","ruChangDate":"2015-1-5 15:15:50","yuChuChangDate":"2015-1-6 15:15:50","fuWuUserId":"刘杰生","busiBillStatus":"接待中","cheZhuSort":"普通客户","cheZhuName":"蔡国胜","lianXiRenName":"蔡国胜","lianXiRenTel":"13902955893","lianXiRenMob":"13902955893","chePaiHao":"粤1WT45","cheJiaHao":"JTJZA11A8D2033028","faDongJiHao":"1AR 0950832","che":"RX270/AGL10L-AWTGKW","chuChangDate":""},{"keyId":"2","jieSuanDate":"2015-1-5 15:09:19","thisGuid":"b5b68811-b979-4c26-a5d7-f6882f75f750","billNo":"JDD20150105027","xieYiId":"SL0X15013634","WeiXiuSort":"免检","ruChangDate":"2015-1-5 15:01:23","yuChuChangDate":"2015-1-6 15:01:23","fuWuUserId":"陈秋波","busiBillStatus":"财务收款中","cheZhuSort":"普通客户","cheZhuName":"深圳市大康投资集团有限公司","lianXiRenName":"邓先生","lianXiRenTel":"13714599911","lianXiRenMob":"13714599911","chePaiHao":"粤B8N8Q2","cheJiaHao":"JTJHY00W8E4160947","faDongJiHao":"3YR3213064","che":"LX570/X4","chuChangDate":""},{"keyId":"3","jieSuanDate":"","thisGuid":"7085154d-49b2-4608-a053-605e78b1338d","billNo":"JDD20150105026","xieYiId":"SL0X15013637","WeiXiuSort":"定保","ruChangDate":"2015-1-5 14:58:04","yuChuChangDate":"2015-1-6 14:58:04","fuWuUserId":"陈秋波","busiBillStatus":"接待中","cheZhuSort":"普通客户","cheZhuName":"张仰政","lianXiRenName":"张仰政","lianXiRenTel":"13802564752","lianXiRenMob":"13802564752","chePaiHao":"粤B078UJ","cheJiaHao":"JTJZA11A0B2411596","faDongJiHao":"1AR 0553227","che":"RX270/AGL10L-AWTGKW","chuChangDate":""},{"keyId":"4","jieSuanDate":"","thisGuid":"2ade3839-f69c-454d-a023-8fdf3a3df1c9","billNo":"JDD20150105025","xieYiId":"SL0X15013636","WeiXiuSort":"定保","ruChangDate":"2015-1-5 14:28:17","yuChuChangDate":"2015-1-6 14:28:17","fuWuUserId":"陈秋波","busiBillStatus":"接待中","cheZhuSort":"普通客户","cheZhuName":"林勇武","lianXiRenName":"林生","lianXiRenTel":"13808854222","lianXiRenMob":"13808854222","chePaiHao":"粤B800JN","cheJiaHao":"JTHBJ46G672195116","faDongJiHao":"0","che":"ES350/2GR A330914","chuChangDate":""},{"keyId":"5","jieSuanDate":"","thisGuid":"af1fb722-0145-4d55-91ee-2f7cc686ef7b","billNo":"JDD20150105024","xieYiId":"SL0X15013635","WeiXiuSort":"定保","ruChangDate":"2015-1-5 14:27:42","yuChuChangDate":"2015-1-6 14:27:42","fuWuUserId":"陈秋波","busiBillStatus":"接待中","cheZhuSort":"普通客户","cheZhuName":"黄细有","lianXiRenName":"黄细有","lianXiRenTel":"13502835382","lianXiRenMob":"13502835382","chePaiHao":"粤BLL925","cheJiaHao":"JTJZA11A7E2466566","faDongJiHao":"1AR1140750","che":"RX270/典雅版","chuChangDate":""},{"keyId":"6","jieSuanDate":"","thisGuid":"2e20eaec-5654-4602-b2ed-85e0199f1209","billNo":"JDD20150105023","xieYiId":"SL0X15013633","WeiXiuSort":"定保","ruChangDate":"2015-1-5 13:52:06","yuChuChangDate":"2015-1-6 13:52:06","fuWuUserId":"刘杰生","busiBillStatus":"接待中","cheZhuSort":"普通客户","cheZhuName":"高红艳","lianXiRenName":"高红艳","lianXiRenTel":"18603017916","lianXiRenMob":"18603017916","chePaiHao":"粤B5WG02","cheJiaHao":"JTJZA11A2D2033915","faDongJiHao":"1AR0961049","che":"RX270/精英版","chuChangDate":""},{"keyId":"7","jieSuanDate":"2015-1-5 15:07:22","thisGuid":"7b9b3b53-b358-4a2c-9061-ce1f2118dd28","billNo":"JDD20150105022","xieYiId":"SL0X15013632","WeiXiuSort":"厂家保修","ruChangDate":"2015-1-5 13:51:21","yuChuChangDate":"2015-1-6 13:51:21","fuWuUserId":"张先赞","busiBillStatus":"财务收款中","cheZhuSort":"普通客户","cheZhuName":"钟金生","lianXiRenName":"钟金生","lianXiRenTel":"13826551128","lianXiRenMob":"13826551128","chePaiHao":"粤BJ28N9","cheJiaHao":"JTHKR5BH3B2068829","faDongJiHao":"5ZR 5232334","che":"CT200h/ZWA10L-AHXBBW","chuChangDate":""},{"keyId":"8","jieSuanDate":"","thisGuid":"43fade94-f14e-4ed5-aaf4-276b11fb44ef","billNo":"JDD20150105021","xieYiId":"SL0X15013631","WeiXiuSort":"保险","ruChangDate":"2015-1-5 13:36:00","yuChuChangDate":"2015-1-6 13:36:00","fuWuUserId":"潘景锋","busiBillStatus":"接待中","cheZhuSort":"普通客户","cheZhuName":"高红艳","lianXiRenName":"高红艳","lianXiRenTel":"18603017916","lianXiRenMob":"18603017916","chePaiHao":"粤B5WG02","cheJiaHao":"JTJZA11A2D2033915","faDongJiHao":"1AR0961049","che":"RX270/精英版","chuChangDate":""},{"keyId":"9","jieSuanDate":"","thisGuid":"558270ba-0aaf-4ef0-9bda-e88ca659530b","billNo":"JDD20150105020","xieYiId":"SL0X15013629","WeiXiuSort":"定保","ruChangDate":"2015-1-5 13:20:40","yuChuChangDate":"2015-1-6 13:20:40","fuWuUserId":"陈秋波","busiBillStatus":"接待中","cheZhuSort":"普通客户","cheZhuName":"张仰政","lianXiRenName":"张仰政","lianXiRenTel":"13802564752","lianXiRenMob":"13802564752","chePaiHao":"粤B078UJ","cheJiaHao":"JTJZA11A0B2411596","faDongJiHao":"1AR 0553227","che":"RX270/AGL10L-AWTGKW","chuChangDate":""},{"keyId":"10","jieSuanDate":"","thisGuid":"7418afdd-9a39-443b-8e2e-805d8be58cb3","billNo":"JDD20150105018","xieYiId":"SL0X15013628","WeiXiuSort":"保险","ruChangDate":"2015-1-5 12:41:30","yuChuChangDate":"2015-1-6 17:00:00","fuWuUserId":"林泽鹏","busiBillStatus":"接待中","cheZhuSort":"普通客户","cheZhuName":"黄生","lianXiRenName":"黄生","lianXiRenTel":"13602553019","lianXiRenMob":"13602553019","chePaiHao":"粤BV6A97","cheJiaHao":"JTJBK11A5C2453634","faDongJiHao":"2GR J606048","che":"RX350/GGL15L-AWTGKW","chuChangDate":""},{"keyId":"11","jieSuanDate":"2015-1-5 15:12:13","thisGuid":"8a830b31-41e3-4383-bfc0-65c0fc8f325e","billNo":"JDD20150105017","xieYiId":"SL0X15013624","WeiXiuSort":"定保","ruChangDate":"2015-1-5 12:12:04","yuChuChangDate":"2015-1-6 12:12:04","fuWuUserId":"陈秋波","busiBillStatus":"财务收款中","cheZhuSort":"普通客户","cheZhuName":"张健超","lianXiRenName":"张健超","lianXiRenTel":"15915429403","lianXiRenMob":"15915429403","chePaiHao":"粤BY5X03","cheJiaHao":"JTHBE1BL4C5009040","faDongJiHao":"2GR 8756496","che":"GS350/GRL10L-BETQH","chuChangDate":""},{"keyId":"12","jieSuanDate":"","thisGuid":"490768dc-96a8-47ba-8429-cee8017b6a0c","billNo":"JDD20150105016","xieYiId":"SL0X15013627","WeiXiuSort":"保险","ruChangDate":"2015-1-5 11:59:10","yuChuChangDate":"2015-1-6 11:00:00","fuWuUserId":"林泽鹏","busiBillStatus":"接待中","cheZhuSort":"普通客户","cheZhuName":"赵罡","lianXiRenName":"赵罡","lianXiRenTel":"13924614725","lianXiRenMob":"13924614725","chePaiHao":"粤B6N3P3","cheJiaHao":"JTHBJ1GG4E2067970","faDongJiHao":"2ARE926758","che":"ES250/精英版","chuChangDate":""},{"keyId":"13","jieSuanDate":"2015-1-5 15:19:59","thisGuid":"95a6515f-62b5-45ab-8641-7f177d87d952","billNo":"JDD20150105015","xieYiId":"SL0X15013626","WeiXiuSort":"定保","ruChangDate":"2015-1-5 11:54:51","yuChuChangDate":"2015-1-6 11:54:51","fuWuUserId":"陈秋波","busiBillStatus":"财务收款中","cheZhuSort":"普通客户","cheZhuName":"田子良","lianXiRenName":"田子良","lianXiRenTel":"15889757285","lianXiRenMob":"15889757285","chePaiHao":"粤B3A6C3","cheJiaHao":"JTHBW46G1A2015940","faDongJiHao":"2AZ H487085","che":"ES240/ACV40L-BEAGKC","chuChangDate":""},{"keyId":"14","jieSuanDate":"2015-1-5 12:29:41","thisGuid":"11750558-8552-4cf8-9780-225e2a85d35d","billNo":"JDD20150105012","xieYiId":"SL0X15013621","WeiXiuSort":"定保","ruChangDate":"2015-1-5 10:58:58","yuChuChangDate":"2015-1-6 10:58:58","fuWuUserId":"刘杰生","busiBillStatus":"财务收款中","cheZhuSort":"普通客户","cheZhuName":"周锦文","lianXiRenName":"周锦文","lianXiRenTel":"13714577607","lianXiRenMob":"13714577607","chePaiHao":"粤BZ607B","cheJiaHao":"JTJZA11A6C2012113","faDongJiHao":"1AR 0705133","che":"RX270/AGL10L-AWTGKW","chuChangDate":""},{"keyId":"15","jieSuanDate":"","thisGuid":"b359bc0a-c712-404e-9e43-8e6d2e026c6a","billNo":"JDD20150105011","xieYiId":"SL0X15013622","WeiXiuSort":"保险","ruChangDate":"2015-1-5 10:57:50","yuChuChangDate":"2015-1-6 10:57:50","fuWuUserId":"潘景锋","busiBillStatus":"接待中","cheZhuSort":"普通客户","cheZhuName":"周文彪","lianXiRenName":"周文彪","lianXiRenTel":"13823555111","lianXiRenMob":"13823555111","chePaiHao":"粤B9WF55","cheJiaHao":"JTJZA11AXD2038831","faDongJiHao":"1AR1009659","che":"RX270/精英版","chuChangDate":""}]}';
        jsonStrData = $.parseJSON(jsonStr);
        $(function () {
            $('#dg').datagrid({ loadFilter: pagerFilter }).datagrid('loadData', jsonStrData);
        });


        function pagerFilter(data) {
            if (typeof data.length == 'number' && typeof data.splice == 'function') { // is array
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

