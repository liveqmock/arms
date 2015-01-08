
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">


 <head>
    <title>客户声音管理</title>
    <style type="text/css" >
    #searchTb tb {  white-space:nowrap;  }     
    </style>

  <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>


<body>
    <form name="form1" method="post" action="UserSuggestManage.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTEyNDEyNTE0MDlkZCbiqjGOnyjsEuI8ZdlqZuAWiSIS" />
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
        <tr><td class="titlebg"><span>客户声音管理</span> 
         </td><td align="right">      
              <a onclick="return addKeHuShengYin();" id="lnkAdd" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'" href="javascript:__doPostBack('lnkAdd','')">新增</a> 
          <a id="btnRefresh" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" href="javascript:__doPostBack('btnRefresh','')">刷新</a> 
          <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" onclick="searchClick('1');">查询</a>
              
              <a id="btnExcel" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-excel'" href="javascript:__doPostBack('btnExcel','')">导出</a> 
          
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
                <th  data-options="field:'cheZhuSort',width:60" sortable="true">客户类型</th>
                 <th  data-options="field:'lianXiRenName',width:80">联系人</th>
                 <th  data-options="field:'chePaiHao',width:80">车牌号</th> 
                <th  data-options="field:'Suggest',width:280">客户建议</th>                
                <th  data-options="field:'Praise',width:270">客户表扬</th>
                 <th  data-options="field:'cheZhuName',width:70">车主姓名</th>
                  <th  data-options="field:'lianXiRenMob',width:100">联系电话</th>
                 <th  data-options="field:'cheZhuMob',width:100">手机号</th>
                <th  data-options="field:'cheXi',width:80">车系</th>
                 <th  data-options="field:'liCheng',width:80">里程</th>
                <th  data-options="field:'huiYuanSort',width:80">会员等级</th>
                 <th  data-options="field:'huiYuanHao',width:80">会员号码</th>
                <th  data-options="field:'laiChangCiShu',width:80">来厂次数</th>
                 <th  data-options="field:'LastTime',width:80">意见时间</th>
                  
       
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
      <td nowrap="nowrap">车牌号码:</td><td><input name="txtChePaiHaoMa" type="text" maxlength="30" id="txtChePaiHaoMa" /></td>
      <td nowrap="nowrap">车主名称:</td><td><input name="txtCheZhuName" type="text" maxlength="200" id="txtCheZhuName" /></td>
      <td nowrap="nowrap">联系人:  </td><td><input name="txtLianXiRenName" type="text" maxlength="30" id="txtLianXiRenName" /></td>
      

      
    
     </tr>
     <tr>
      <td nowrap="nowrap">客户类型:</td>
      <td>
      <select name="ddlCheZhuSort" id="ddlCheZhuSort">
  <option selected="selected" value="">全部</option>
  <option value="普通客户">普通客户</option>
  <option value="月结客户">月结客户</option>
  <option value="内部员工">内部员工</option>
  <option value="会员">会员</option>

</select> </td>

       <td nowrap="nowrap">声音类型:</td>
     <td nowrap="nowrap">
     <select name="ddlSuggestSort" id="ddlSuggestSort">
  <option selected="selected" value="">全部</option>
  <option value="客户建议">客户建议</option>
  <option value="客户表扬">客户表扬</option>

</select>
     </td>

      <td  nowrap="nowrap">意见时间:</td><td><input name="txtSuggestDate1" type="text" id="txtSuggestDate1" class="easyui-datebox" /> </td>
      <td>至</td>
      <td  nowrap="nowrap"><input name="txtSuggestDate2" type="text" id="txtSuggestDate2" class="easyui-datebox" /> </td>
       
      <td nowrap="nowrap">
       <a onclick="return searchCheck();" id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
     </td>
     
     </tr>
    </table>
    </div>
   <!--查询条件 end-->
    
<div>

  <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="E2C5026F" />
  <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWFQKs19/6CgLB2f+RAQLAn+vmDAKFt7SHCQKfluDwDwKa7byuAgKm4eRsApTI/XICqsfv4gcCsPn1ww8ChM6zkgMCxquyvQsCrK3uzgECucvxygUCsre4wwwCppus3g0CkIrV9wsClvDy5QECkNaLsAYC4ZHl7wQCqYuJwQU4GyWi+fufoEbwFGUUkcOjtCSg+w==" />
</div></form>


    <script language="javascript" type="text/javascript">
        //所有的按钮事件
        function billShow(index) {
            var thisGuid = $('#dg').datagrid('getRows')[index]['thisGuid'];
            if (thisGuid != "" && thisGuid != undefined) {
                 z = window.open('../../customManage/callBackManage/UserSuggestDetail.aspx?suggestId=' + thisGuid + '&d=' + new Date(), '客户声音', 'height=400,width=720,top=100,left=50,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=no');
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

        var jsonStr = '{"total":1162,"rows":[{"keyId":"1","cheZhuSort":"","lianXiRenName":"","chePaiHao":"","Suggest":"","Praise":"客户说在购车之前所有的情况都应提前告知，让消费者心理清楚明白。","FuWuUserID":"","cheZhuName":"","lianXiRenMob":"","cheZhuMob":"","cheXi":"","LiCheng":"","huiYuanSort":"","huiYuanHao":"","laiChangCiShu":"","LastTime":"2015-1-6 10:50:48","thisGuid":"517649f0-6d38-4e3f-beae-fef069566552","saleAfterGuid":"00000000-0000-0000-0000-000000000000"},{"keyId":"2","cheZhuSort":"","lianXiRenName":"","chePaiHao":"","Suggest":"客户说还有一把钥匙没给，搞快点尽快拿给我。","Praise":"","FuWuUserID":"","cheZhuName":"","lianXiRenMob":"","cheZhuMob":"","cheXi":"","LiCheng":"","huiYuanSort":"","huiYuanHao":"","laiChangCiShu":"","LastTime":"2015-1-6 10:39:49","thisGuid":"dba274b2-259a-41a5-8939-157b07623264","saleAfterGuid":"00000000-0000-0000-0000-000000000000"},{"keyId":"3","cheZhuSort":"","lianXiRenName":"","chePaiHao":"","Suggest":"","Praise":"客户点名表扬王晟服务都挺好的。","FuWuUserID":"","cheZhuName":"","lianXiRenMob":"","cheZhuMob":"","cheXi":"","LiCheng":"","huiYuanSort":"","huiYuanHao":"","laiChangCiShu":"","LastTime":"2015-1-2 15:27:37","thisGuid":"55e77782-c2f7-4f0d-b086-aa22354ca658","saleAfterGuid":"00000000-0000-0000-0000-000000000000"},{"keyId":"4","cheZhuSort":"","lianXiRenName":"","chePaiHao":"","Suggest":"客户说马上要下雪了，希望你们店可以免费给我们这些丰田老客户加点防冻液，可以搞些活动啊","Praise":"","FuWuUserID":"","cheZhuName":"","lianXiRenMob":"","cheZhuMob":"","cheXi":"","LiCheng":"","huiYuanSort":"","huiYuanHao":"","laiChangCiShu":"","LastTime":"2014-12-18 16:53:50","thisGuid":"0eaadd0b-92e6-4318-958c-966f29d616ff","saleAfterGuid":"00000000-0000-0000-0000-000000000000"},{"keyId":"5","cheZhuSort":"","lianXiRenName":"","chePaiHao":"","Suggest":"客户说以后应该要给新车客户多加油，以防万一加不到油啊！","Praise":"","FuWuUserID":"","cheZhuName":"","lianXiRenMob":"","cheZhuMob":"","cheXi":"","LiCheng":"","huiYuanSort":"","huiYuanHao":"","laiChangCiShu":"","LastTime":"2014-12-15 15:59:50","thisGuid":"49efd3e9-7c2e-436c-b472-9e326b6ad050","saleAfterGuid":"00000000-0000-0000-0000-000000000000"},{"keyId":"6","cheZhuSort":"","lianXiRenName":"","chePaiHao":"","Suggest":"","Praise":"客户说以后应该要给新车客户多加油，以防万一加不到油啊！","FuWuUserID":"","cheZhuName":"","lianXiRenMob":"","cheZhuMob":"","cheXi":"","LiCheng":"","huiYuanSort":"","huiYuanHao":"","laiChangCiShu":"","LastTime":"2014-12-15 15:58:41","thisGuid":"cdca2971-b51c-4afe-b42a-3a3539024930","saleAfterGuid":"00000000-0000-0000-0000-000000000000"},{"keyId":"7","cheZhuSort":"","lianXiRenName":"","chePaiHao":"","Suggest":"","Praise":"客户说还是希望优惠力度加大。","FuWuUserID":"","cheZhuName":"","lianXiRenMob":"","cheZhuMob":"","cheXi":"","LiCheng":"","huiYuanSort":"","huiYuanHao":"","laiChangCiShu":"","LastTime":"2014-12-15 15:43:19","thisGuid":"1ade15cd-5efb-4342-b151-1b0818e7fc49","saleAfterGuid":"00000000-0000-0000-0000-000000000000"},{"keyId":"8","cheZhuSort":"普通客户","lianXiRenName":"张芳","chePaiHao":"鄂J5T698","Suggest":"","Praise":"客户点名表扬方璐彬服务靠挺好","FuWuUserID":"胡超","cheZhuName":"张芳","lianXiRenMob":"13871978808","cheZhuMob":"13871978808","cheXi":"卡罗拉","LiCheng":"6053","huiYuanSort":"","huiYuanHao":"","laiChangCiShu":"1","LastTime":"2014-12-15 11:02:07","thisGuid":"8b08e15d-eaea-4cdb-aea3-b430f83370a9","saleAfterGuid":"5fd96ab1-01ba-4d90-b692-479e4954db7e"},{"keyId":"9","cheZhuSort":"","lianXiRenName":"","chePaiHao":"","Suggest":"","Praise":"客户说十分感谢熊超楠，服务很好，也有很大的优惠。","FuWuUserID":"","cheZhuName":"","lianXiRenMob":"","cheZhuMob":"","cheXi":"","LiCheng":"","huiYuanSort":"","huiYuanHao":"","laiChangCiShu":"","LastTime":"2014-12-13 16:02:29","thisGuid":"17e58e4a-1d87-4692-9b68-d7eb7038cdda","saleAfterGuid":"00000000-0000-0000-0000-000000000000"},{"keyId":"10","cheZhuSort":"","lianXiRenName":"","chePaiHao":"","Suggest":"","Praise":"客户说要对余睿洁提出表扬，服务很好的。","FuWuUserID":"","cheZhuName":"","lianXiRenMob":"","cheZhuMob":"","cheXi":"","LiCheng":"","huiYuanSort":"","huiYuanHao":"","laiChangCiShu":"","LastTime":"2014-12-12 16:21:38","thisGuid":"e8d65dab-56e1-4b15-94fc-feb6a4ae81ca","saleAfterGuid":"00000000-0000-0000-0000-000000000000"},{"keyId":"11","cheZhuSort":"","lianXiRenName":"","chePaiHao":"","Suggest":"客户说答应给的东西尽快给才行。","Praise":"","FuWuUserID":"","cheZhuName":"","lianXiRenMob":"","cheZhuMob":"","cheXi":"","LiCheng":"","huiYuanSort":"","huiYuanHao":"","laiChangCiShu":"","LastTime":"2014-12-12 10:07:51","thisGuid":"c64fdb2e-73ca-42dc-a22d-2fd66a78346d","saleAfterGuid":"00000000-0000-0000-0000-000000000000"},{"keyId":"12","cheZhuSort":"","lianXiRenName":"","chePaiHao":"","Suggest":"","Praise":"客户说王晟人很好，要提出表扬。","FuWuUserID":"","cheZhuName":"","lianXiRenMob":"","cheZhuMob":"","cheXi":"","LiCheng":"","huiYuanSort":"","huiYuanHao":"","laiChangCiShu":"","LastTime":"2014-12-11 10:33:53","thisGuid":"557f83d9-b49e-494e-ba02-fc35e587aa85","saleAfterGuid":"00000000-0000-0000-0000-000000000000"},{"keyId":"13","cheZhuSort":"","lianXiRenName":"","chePaiHao":"","Suggest":"","Praise":"客户说送的座垫人造革破皮了，希望送的东西也要有质量保障啊！客户多次表扬袁烁很好，对他服务很满意。","FuWuUserID":"","cheZhuName":"","lianXiRenMob":"","cheZhuMob":"","cheXi":"","LiCheng":"","huiYuanSort":"","huiYuanHao":"","laiChangCiShu":"","LastTime":"2014-12-9 15:43:46","thisGuid":"400105c0-2d26-45bd-a685-1c9b61cf1cf3","saleAfterGuid":"00000000-0000-0000-0000-000000000000"},{"keyId":"14","cheZhuSort":"","lianXiRenName":"","chePaiHao":"","Suggest":"客户说应该要把品牌广告做的更大些。","Praise":"","FuWuUserID":"","cheZhuName":"","lianXiRenMob":"","cheZhuMob":"","cheXi":"","LiCheng":"","huiYuanSort":"","huiYuanHao":"","laiChangCiShu":"","LastTime":"2014-12-7 15:08:58","thisGuid":"27af098d-90ae-49c0-a08b-ba448bfbf3df","saleAfterGuid":"00000000-0000-0000-0000-000000000000"},{"keyId":"15","cheZhuSort":"延保客户","lianXiRenName":"李顶金","chePaiHao":"豫RZL895","Suggest":"已短信回访","Praise":"","FuWuUserID":"周蔷","cheZhuName":"李顶金","lianXiRenMob":"13177712538","cheZhuMob":"13177712538","cheXi":"威驰","LiCheng":"15806","huiYuanSort":"阳光会员","huiYuanHao":"30004509","laiChangCiShu":"3","LastTime":"2014-12-7 15:01:30","thisGuid":"947e5a8c-d767-4a3a-8581-18f9facb983a","saleAfterGuid":"b4ff53c2-d7c6-4c87-81a7-240849c76b61"}]}';
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



        //客户声音新增
        function addKeHuShengYin() {
            z = window.open('../../customManage/callBackManage/UserSuggestDetail.aspx?suggestId=0&d=' + new Date(), '客户声音', 'height=400,width=720,top=100,left=50,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=no');
            z.focus();
           return false;
        }


    </script>
 
</body>
</html>

