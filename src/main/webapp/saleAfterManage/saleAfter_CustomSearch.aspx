<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
    售后接车管理
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<script language="javascript" type="text/javascript">
    $(document).keydown(function (event) {
        //alert(event.keyCode);

        if (event.keyCode == 13) {
            __doPostBack('btnSearch','');
        }
    });
    $(function () { $("#txtKeyWord").focus(); $("#txtKeyWord").select(); });

</script>

<body>
    <form name="form1" method="post" action="saleAfter_CustomSearch.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMzQ2NDkwNzIyZGSIGYRDggjK/MK7pIxoRgef7dC2Eg==" />
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



      <div class="title"> 
        <table border="0" style="width:100%;">
        <tr><td class="titlebg"><span>维修管理</span>
        <span class="titleSpan">(维修接待)</span> 
         </td><td align="right">
          </td></tr>
         </table> 
     </div>
    
    <div style="margin-left:15px;" >
        <table border="0"  cellpadding="0" cellspacing="0">
         <tr>
         <td>
         <select name="dllSearchSort" id="dllSearchSort">
    <option selected="selected" value="按车牌号">按车牌号</option>
    <option value="按车架号">按车架号</option>
    <option value="按联系人">按联系人</option>
    <option value="按联系人手机">按联系人手机</option>
    <option value="按车主名">按车主名</option>

</select> </td>
         <td style="padding-left:5px">
         <input name="txtKeyWord" type="text" value="粤" maxlength="20" id="txtKeyWord" style="width:150px;" />
         </td>
         <td>
         <a id="btnSearch" class="easyui-linkbutton" href="javascript:__doPostBack('btnSearch','')">查询</a>
         <a onclick="return cheLiangInfoShow();" id="LinkButton7" class="easyui-linkbutton" href="javascript:__doPostBack('LinkButton7','')">车辆信息</a>
         <a onclick="return cheLiangWeiXiuLiShiListShow();" id="LinkButton1" class="easyui-linkbutton" href="javascript:__doPostBack('LinkButton1','')">维修历史</a>
         <a onclick="return daoHangShow();" id="LinkButton5" class="easyui-linkbutton" href="javascript:__doPostBack('LinkButton5','')">预约</a>
         <a onclick="return daoHangShow();" id="LinkButton6" class="easyui-linkbutton" href="javascript:__doPostBack('LinkButton6','')">维修接待</a>
         <a onclick="return pdsPdiShow();" id="LinkButton3" class="easyui-linkbutton" href="javascript:__doPostBack('LinkButton3','')">新车检查</a>
         <a onclick="return addCheLiangInfo();" id="LinkButton4" class="easyui-linkbutton" href="javascript:__doPostBack('LinkButton4','')">新增车辆信息</a>
         
         </td>

         </tr>
        </table>
        <!--数据列表 start-->
        <div style="height:3px"></div>
        <table id="dg2"    class="easyui-datagrid"    style="height:380px;"  
         data-options="rownumbers:true,singleSelect:true,
         pagination:true,
         pageNumber:1,
         pageSize:20,
         onDblClickRow:customJieDai"
          >
        <thead>
            <tr>
                <th  data-options="field:'cusId',checkbox:true"></th>
                <th  data-options="field:'vehicleId',hidden:true">车辆Id</th>
                <th  data-options="field:'groupSimpleName',width:60" sortable="true">机构名称</th>
                <th  data-options="field:'chePaiHao',width:80">车牌号码</th>
                <th  data-options="field:'extendField1',width:80">扩展标识</th>               
                
                <th  data-options="field:'changPai',width:80">车辆品牌</th>
                <th  data-options="field:'cheXi',width:70">车系名称</th>
                <th  data-options="field:'cheJiaHao',width:140" >车架号码</th>
                <th  data-options="field:'lianXiRenName',width:120">联系人名称</th>
                <th  data-options="field:'lianXiRenTel',width:120">联系人电话</th>
                <th  data-options="field:'cheZhuName',width:120">车主名称</th>

                <th  data-options="field:'huiYuanHaoMa',width:120">会员号码</th>
                <th  data-options="field:'huiYuanJiBie',width:120">会员级别</th>

                <th  data-options="field:'cSign',width:120">自定义标识</th>
                <th  data-options="field:'deptName2',width:120">销售网点</th>

                           
                
                 
            </tr>
        </thead>
    </table>
        <!--数据列表 end-->
     </div>

     <!--维修历史 接待提醒 预约明细 start-->
     <div>
      
     </div>
     <!--维修历史 接待提醒 预约明细 end--> 

     <input name="txtPageNum" type="text" value="1" id="txtPageNum" style="display:none;" />
     <input name="txtPageSize" type="text" value="20" id="txtPageSize" style="display:none;" />
      
    
<div>

    <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="32EB9667" />
    <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWEAL64I2BDgLA0965CQLGqaSyDALfuq+bCAKuqqPuDgKf09jFDQLeipm1AwKln/PuCgKq/cinAgLM9PumDwLgz4TSBgLF5ua8DAKWosD8CgL7uKJnAp+W4PAPAprtvK4ChACcq0R4hcO4CWPhQ8CRXGT/oD8=" />
</div></form>

    <script language="javascript" type="text/javascript" >
        //分页satrt
        var jsonStr = '{"total":4290,"rows":[{"keyId":"1","vehicleId":"814aa971-eb8a-435b-9828-ec458dcc20e7","groupSimpleName":"深业雷克","changPai":"雷克萨斯","cusId":"0b6eccaf-ef23-4403-a469-4320e0d5b273","cSign":"","groupId":"6018","writeDate":"2015-1-6 9:48:11","lianXiRenMob":"13603093620","chePaiHao":"粤B","cheXi":"GX400","cheJiaHao":"JTJJU7FX4E5004159","cheZhuName":"张国兴","lianXiRenName":"张国兴","lianXiRenTel":"13603093620","huiYuanHaoMa":"","huiYuanJiBie":"","extendField1":""},{"keyId":"2","vehicleId":"2673da83-923f-46d0-afc5-778875a99d08","groupSimpleName":"深业雷克","changPai":"Lexus雷克萨斯","cusId":"ad5cbd30-0d40-4131-ae2a-5a4ef0f8a5bf","cSign":"","groupId":"6018","writeDate":"2015-1-5 17:25:16","lianXiRenMob":"13902319524","chePaiHao":"粤B6N5U5","cheXi":"RX270","cheJiaHao":"JTJZA11A3E2470436","cheZhuName":"陈卓成","lianXiRenName":"陈生","lianXiRenTel":"13902319524","huiYuanHaoMa":"","huiYuanJiBie":"","extendField1":""},{"keyId":"3","vehicleId":"94e75fae-690b-4c91-a72a-4e882e3d85e9","groupSimpleName":"深业雷克","changPai":"雷克萨斯","cusId":"84202fdd-fcbe-454c-901b-9a9aed3d8699","cSign":"","groupId":"6018","writeDate":"2015-1-5 16:59:43","lianXiRenMob":"13530106662","chePaiHao":"粤B4N4T2","cheXi":"RX270","cheJiaHao":"JTJZA11A9E2468397","cheZhuName":"王海燕","lianXiRenName":"王海燕","lianXiRenTel":"13530106662","huiYuanHaoMa":"","huiYuanJiBie":"","extendField1":""},{"keyId":"4","vehicleId":"6cffa9db-e765-4fe8-adcd-85e3a7f5f295","groupSimpleName":"深业东本","changPai":"HONDA","cusId":"47baaa21-257b-4716-8d93-ff3f32e58e40","cSign":"","groupId":"6005","writeDate":"2015-1-5 14:34:57","lianXiRenMob":"13602595052","chePaiHao":"粤B","cheXi":"CR-V","cheJiaHao":"LVHRM1818E5051909","cheZhuName":"陆盛真","lianXiRenName":"陆盛真","lianXiRenTel":"13602595052","huiYuanHaoMa":"25019364","huiYuanJiBie":"阳光会员","extendField1":""},{"keyId":"5","vehicleId":"0ccc60b3-e124-41c0-9aa4-dc48cc259acd","groupSimpleName":"深业雷克","changPai":"Lexus雷克萨斯","cusId":"05dde3ab-3f95-486e-9222-7dadf9a833c5","cSign":"","groupId":"6018","writeDate":"2015-1-5 10:53:58","lianXiRenMob":"15218123688","chePaiHao":"粤B8G1C8","cheXi":"RX270","cheJiaHao":"JTJZA11A9E2469131","cheZhuName":"杨小娜","lianXiRenName":"杨明色","lianXiRenTel":"15218123688","huiYuanHaoMa":"","huiYuanJiBie":"","extendField1":""},{"keyId":"6","vehicleId":"b3a58fd0-467d-41b1-8b60-e682224c4519","groupSimpleName":"深业雷克","changPai":"雷克萨斯","cusId":"80e1c393-1e7e-4aed-a87f-298427632abf","cSign":"","groupId":"6018","writeDate":"2015-1-4 18:52:40","lianXiRenMob":"13265821118","chePaiHao":"粤B9E6V9","cheXi":"CT200h","cheJiaHao":"JTHKR5BH1E2214889","cheZhuName":"唐洋","lianXiRenName":"唐洋","lianXiRenTel":"13265821118","huiYuanHaoMa":"","huiYuanJiBie":"","extendField1":""},{"keyId":"7","vehicleId":"e51c0e23-c5b6-4d5c-b236-5bb1894e73fe","groupSimpleName":"深业雷克","changPai":"雷克萨斯","cusId":"267c1056-d193-4b7e-be66-7cb9fbb875cc","cSign":"","groupId":"6018","writeDate":"2015-1-4 17:46:38","lianXiRenMob":"13825713506","chePaiHao":"粤B4G8Y7","cheXi":"ES250","cheJiaHao":"JTHBJ1GG4E2067645","cheZhuName":"郭勇","lianXiRenName":"郭勇","lianXiRenTel":"13825713506","huiYuanHaoMa":"","huiYuanJiBie":"","extendField1":""},{"keyId":"8","vehicleId":"f6890bb0-0eb7-4e11-a585-d0bee9945622","groupSimpleName":"深业雷克","changPai":"Lexus雷克萨斯","cusId":"012e97da-f80d-461d-a9e4-6140b91a3051","cSign":"","groupId":"6018","writeDate":"2015-1-4 16:30:11","lianXiRenMob":"15626990528","chePaiHao":"粤B4G5Y2","cheXi":"CT200h","cheJiaHao":"JTHKR5BH7E2215397","cheZhuName":"吴瑕","lianXiRenName":"吴瑕","lianXiRenTel":"15626990528","huiYuanHaoMa":"","huiYuanJiBie":"","extendField1":""},{"keyId":"9","vehicleId":"4640cfb8-9082-4444-98ea-41e3a4a44540","groupSimpleName":"深业雷克","changPai":"雷克萨斯","cusId":"8739e90e-8c48-41cb-b4cd-b60060d57a7b","cSign":"","groupId":"6018","writeDate":"2015-1-4 16:24:46","lianXiRenMob":"18038082837","chePaiHao":"粤B1N4T3","cheXi":"ES250","cheJiaHao":"JTHBJ1GG8E2072086","cheZhuName":"蔡晓丹","lianXiRenName":"蔡晓丹","lianXiRenTel":"18038082837","huiYuanHaoMa":"","huiYuanJiBie":"","extendField1":""},{"keyId":"10","vehicleId":"61e5b21a-a4f2-4c19-9c62-9b68d7bc7435","groupSimpleName":"深业雷克","changPai":"雷克萨斯","cusId":"4225b461-8dfb-43f2-97f5-c6ca388c9ee8","cSign":"","groupId":"6018","writeDate":"2015-1-4 15:03:56","lianXiRenMob":"1360657344","chePaiHao":"粤B5880Y","cheXi":"RX270","cheJiaHao":"JTJZA116E2470592","cheZhuName":"段频","lianXiRenName":"段频","lianXiRenTel":"1360657344","huiYuanHaoMa":"","huiYuanJiBie":"","extendField1":""},{"keyId":"11","vehicleId":"b6258056-09bc-4bad-b098-f52fc9f1a2cc","groupSimpleName":"深业雷克","changPai":"雷克萨斯","cusId":"bb3fbb86-74ed-4a66-915d-24198003b4e9","cSign":"","groupId":"6018","writeDate":"2015-1-4 15:00:24","lianXiRenMob":"13530288567","chePaiHao":"粤BN090X","cheXi":"LS460L","cheJiaHao":"JTHGM46F785031006","cheZhuName":"邬建华","lianXiRenName":"邬建华","lianXiRenTel":"13530288567","huiYuanHaoMa":"","huiYuanJiBie":"","extendField1":""},{"keyId":"12","vehicleId":"610dca7f-9e40-4912-b7c1-ad56a97f6c96","groupSimpleName":"深业雷克","changPai":"雷克萨斯","cusId":"2e2d3541-f6bb-4f23-ae96-d784ffb814f4","cSign":"","groupId":"6018","writeDate":"2015-1-4 10:17:25","lianXiRenMob":"13510224901","chePaiHao":"粤B5N0U9","cheXi":"IS250","cheJiaHao":"JTHBF1D22E5060895","cheZhuName":"李晓明","lianXiRenName":"李晓明","lianXiRenTel":"13510224901","huiYuanHaoMa":"","huiYuanJiBie":"","extendField1":""},{"keyId":"13","vehicleId":"0bf7d9f2-7402-4030-b72f-cb80053003b3","groupSimpleName":"深业雷克","changPai":"Lexus雷克萨斯","cusId":"627a6fd7-ec6a-4790-905b-37816d89fa52","cSign":"","groupId":"6018","writeDate":"2015-1-3 16:30:54","lianXiRenMob":"13510650765","chePaiHao":"粤BL77A2","cheXi":"ES250","cheJiaHao":"JTHBJ1GG4E2068570","cheZhuName":"黄玮","lianXiRenName":"黄玮","lianXiRenTel":"13510650765","huiYuanHaoMa":"","huiYuanJiBie":"","extendField1":""},{"keyId":"14","vehicleId":"7b4d2763-3ef1-489d-907f-cb42cc837669","groupSimpleName":"深业雷克","changPai":"雷克萨斯","cusId":"f19a7b29-6906-4cc8-8aa8-3d03a5c9ce61","cSign":"","groupId":"6018","writeDate":"2015-1-3 13:39:39","lianXiRenMob":"15627933039","chePaiHao":"粤BG16M7","cheXi":"RX270","cheJiaHao":"JTJZA11AXC2435177","cheZhuName":"蔡爱群","lianXiRenName":"蔡爱群","lianXiRenTel":"15627933039","huiYuanHaoMa":"","huiYuanJiBie":"","extendField1":""},{"keyId":"15","vehicleId":"c9829dc1-760f-4827-ae64-a09eca1574d6","groupSimpleName":"深业雷克","changPai":"雷克萨斯","cusId":"8f08bc9f-2380-4b00-b697-44464593e6ca","cSign":"","groupId":"6018","writeDate":"2015-1-3 10:32:27","lianXiRenMob":"13510269633","chePaiHao":"粤BW9C17","cheXi":"IS250","cheJiaHao":"JTHBK2620C5182988","cheZhuName":"刘利波","lianXiRenName":"刘利波","lianXiRenTel":"13510269633","huiYuanHaoMa":"","huiYuanJiBie":"","extendField1":""},{"keyId":"16","vehicleId":"d5f6101d-cd6f-45d1-ad04-93558f727e01","groupSimpleName":"深业雷克","changPai":"雷克萨斯","cusId":"34c82fa7-5acb-44e2-b21b-0778e9cb858a","cSign":"","groupId":"6018","writeDate":"2015-1-3 9:54:11","lianXiRenMob":"13602546188","chePaiHao":"粤B6A672","cheXi":"ES300h","cheJiaHao":"JTHBW1GG3D2050108","cheZhuName":"黄俊恺","lianXiRenName":"黄俊恺","lianXiRenTel":"13602546188","huiYuanHaoMa":"","huiYuanJiBie":"","extendField1":""},{"keyId":"17","vehicleId":"e3698a9c-23c6-433a-9c71-5992c85cc7b5","groupSimpleName":"深业雷克","changPai":"雷克萨斯","cusId":"8c301289-e0c1-4d9c-a48f-13b369c07034","cSign":"","groupId":"6018","writeDate":"2015-1-2 12:24:11","lianXiRenMob":"18988771899","chePaiHao":"粤B9G9D0","cheXi":"RX270","cheJiaHao":"JTJZA11A3B2417781","cheZhuName":"林冬山","lianXiRenName":"林冬山","lianXiRenTel":"18988771899","huiYuanHaoMa":"","huiYuanJiBie":"","extendField1":""},{"keyId":"18","vehicleId":"3901db63-9379-4ef2-8ace-67bf172a5559","groupSimpleName":"深业雷克","changPai":"雷克萨斯","cusId":"19c8b3ef-2bab-4d7b-a95e-ae1477749847","cSign":"","groupId":"6018","writeDate":"2015-1-2 12:11:38","lianXiRenMob":"13926586569","chePaiHao":"粤B2G1E9","cheXi":"RX270","cheJiaHao":"JTJZA11A9D2029618","cheZhuName":"吴月梅","lianXiRenName":"吴月梅","lianXiRenTel":"13926586569","huiYuanHaoMa":"32003195","huiYuanJiBie":"阳光会员","extendField1":""},{"keyId":"19","vehicleId":"ce2c26e7-cd5e-4bab-a4b6-c307b7b58c53","groupSimpleName":"深业雷克","changPai":"雷克萨斯","cusId":"bf90a7c1-5e40-485f-a16d-90f558d12900","cSign":"","groupId":"6018","writeDate":"2015-1-2 9:57:27","lianXiRenMob":"18818323989","chePaiHao":"粤B380BH","cheXi":"RX450h","cheJiaHao":"JTJBC11A992012031","cheZhuName":"朱风平","lianXiRenName":"朱风平","lianXiRenTel":"18818323989","huiYuanHaoMa":"","huiYuanJiBie":"","extendField1":""},{"keyId":"20","vehicleId":"0c02ee29-b186-495c-86e1-8073edee6e3f","groupSimpleName":"深业雷克","changPai":"东风本田","cusId":"89b5e71a-9141-415a-9898-e912ad2e34c4","cSign":"","groupId":"6018","writeDate":"2015-1-2 9:46:55","lianXiRenMob":"18685653009","chePaiHao":"粤B8J0D0","cheXi":"思域","cheJiaHao":"LVHRM183XE5042047","cheZhuName":"廖秀华","lianXiRenName":"廖秀华","lianXiRenTel":"18685653009","huiYuanHaoMa":"","huiYuanJiBie":"","extendField1":""}]}';
        jsonStrData = $.parseJSON(jsonStr);
        $(function () {
            $('#dg2').datagrid({ loadFilter: pagerFilter }).datagrid('loadData', jsonStrData);
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

                    __doPostBack('btnSearch', '');
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
        //分页end

        function getCheck() {
            var row = $('#dg2').datagrid('getSelected');
            if (row) { return row.vehicleId; }
            else {
                return "";
            }
        }


        //车辆信息查看
        function cheLiangInfoShow() {
            var vehicleId = getCheck();
            if (vehicleId != "") {
                //parent.winopen('../customManage/customAdd.aspx?custId=' + cusId + "&d=" + new Date(), '客户信息修改', 970, 600, true, true, false);
                z = window.open('../customManage/customNewVehicleAdd.action?vehicleId=' + vehicleId + "&d=" + new Date(), '车辆信息修改', 'height=600, width=970, top=' + (screen.availHeight - 620) + ', left=' + screen.availWidth - 720 + ', toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no')
                z.focus();
             }
            return false;
        }

        //车辆信息新增
        function addCheLiangInfo() {
            //parent.winopen('../customManage/customAdd.aspx?&d=' + new Date(),'新增车辆信息', 970, 600, true, true, false);
            z = window.open('../customManage/customNewAdd.action?d=' + new Date(), '新增客户信息', 'height=600,width=970,top=80,left=80,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no, status=no')
            z.focus();
            return false;
        }

        //车辆维修历史列表查询
        function cheLiangWeiXiuLiShiListShow() {
            var row = $('#dg2').datagrid('getSelected');
            var vin = row.cheJiaHao;
            vin = vin.substring(0, 17);//车架号码只去前17位
            if (vin != "") {
                //  parent.winopen('../saleAfterManage/saleAfter_weiXiuLiShiList.aspx?cusId='+cusId+'&d=' + new Date(), '维修历史查看', 970, 600, true, true, false);
                  z = window.open('../saleAfterManage/saleAfter_weiXiuLiShiList.aspx?vin=' + vin + '&d=' + new Date(), '维修历史查看', 'height=600,width=970,top=80,left=80,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=no')
                  z.focus();
              }
            return false;
        }



        //预约
        function daoHangShow() {
         var vehicleId = getCheck();
         if (vehicleId != "") {
            // parent.winopen('../saleAfterManage/saleAfterWeiXiuJieDaiDaoHang.aspx?cusId=' + cusId + '&d=' + new Date(), '系统转向', 990, 600, true, true, false);
             z = window.open('../saleAfterManage/saleAfterWeiXiuJieDaiDaoHang.aspx?vehicleId=' + vehicleId + '&d=' + new Date(), '系统转向', 'height=600, width=990, top=80, left=80, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no')
             z.focus();
         }
            return false;
        }


        function changeMenu() {
            //location.href = "tabTest.htm";
           //parent.winopen('../saleAfterManage/tabTest.htm?cc=.aspx?j=0' + "&d=" + new Date(), '工单制作', 990, 600, true, true, false);
            z = window.open('../saleAfterManage/tabTest.htm?cc=.aspx?j=0' + "&d=" + new Date(), '工单制作', 'height=600, width=990, top=80, left=80, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no');
            z.focus();
        }


        //客户接待
        function customJieDai(index) {
            var vehicleId = $('#dg2').datagrid('getRows')[index]['vehicleId'];
           // parent.winopen('../saleAfterManage/saleAfterWeiXiuJieDaiDaoHang.aspx?cusId='+cusId+'&d=' + new Date(), '系统转向', 990, 600, true, true, false);
            z = window.open('../saleAfterManage/saleAfterWeiXiuJieDaiDaoHang.aspx?vehicleId=' + vehicleId + '&d=' + new Date(), '系统转向', 'height=600, width=990, top=80, left=80, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no');
            z.focus();
            return false;
        }


        //PDS PDI显示
        function pdsPdiShow() {
            //parent.winopen('../saleAfterManage/saleAfter_PDSList.aspx?d=' + new Date(), 'PDS/PDI', 990, 600, true, true, false);
            z = window.open('../saleAfterManage/saleAfter_PDSList.aspx?d=' + new Date(),'PDSPDI','height=600,width=990,top=80,left=80,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=no');
            z.focus();
            return false;       
        }
    </script>

</body>
</html>