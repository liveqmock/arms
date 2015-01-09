<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<script language="javascript" type="text/javascript">

    //加载订单列表数据
    var jsonstr = '{"total":2550,"rows":[{"HeGeZhengHao":"WAS161001066598","ShangJianHao":"","FaDongJiHao":"G341023","CheYaoShi":"4G05","CheJiaHao":"LFMAP22CXE0677788","CheLiangBianHao":"4G05","ChePaiHao":"","ChuKu_Date":"2015-1-7 12:38:10","ChuKu_User":"车友财","billNo":"XSD201501042","Order_Guid":"f198924d-f60d-4199-9d47-b0fe100cce19","Cust_Name":"车友财","Cust_Mobile":"13687925902","Cust_Address":"江西省九江市武宁县","CheXi":"新花冠","CheXing":"1.6卓越版","Car_Color":"黑色","Order_Date":"2015-1-7 9:54:12","TiChe_Remark":"","Order_Salor":"刘星辰","TiCheDate":"2015-1-7 12:51:34"},{"HeGeZhengHao":"WDZ132140074241","ShangJianHao":"","FaDongJiHao":"H469895","CheYaoShi":"4G11","CheJiaHao":"LFMJ34AF8E3056857","CheLiangBianHao":"4G11","ChePaiHao":"赣G17G91","ChuKu_Date":"2015-1-5 10:36:25","ChuKu_User":"范小田","billNo":"XSD201501026","Order_Guid":"63b431ce-36e9-466e-ace4-a8ecb2d00b02","Cust_Name":"范小田","Cust_Mobile":"13870296779","Cust_Address":"江西省九江市浔阳区湖滨东区11栋2单元302室","CheXi":"国产RAV4","CheXing":"2.5L精英版","Car_Color":"白色","Order_Date":"2015-1-4 11:52:42","TiChe_Remark":"","Order_Salor":"陈龙志","TiCheDate":"2015-1-5 10:37:37"},{"HeGeZhengHao":"WAS192000906690","ShangJianHao":"","FaDongJiHao":"F566496","CheYaoShi":"4D39","CheJiaHao":"LFMAP86C1E0055254","CheLiangBianHao":"4D39","ChePaiHao":"","ChuKu_Date":"2015-1-6 12:39:56","ChuKu_User":"秦月红","billNo":"XSD201501025","Order_Guid":"7d1a68a2-7e41-4cf1-b71b-a75476bff443","Cust_Name":"秦月红","Cust_Mobile":"18897922686","Cust_Address":"九江县庐山西路109号","CheXi":"新卡罗拉","CheXing":"1.6 GL","Car_Color":"白色","Order_Date":"2015-1-4 11:04:36","TiChe_Remark":"","Order_Salor":"徐建英","TiCheDate":"2015-1-6 16:47:20"},{"HeGeZhengHao":"WDZ172140114298","ShangJianHao":"","FaDongJiHao":"T120694","CheYaoShi":"4D25","CheJiaHao":"LFMK440FXE3055132","CheLiangBianHao":"4D25","ChePaiHao":"","ChuKu_Date":"2015-1-2 14:08:21","ChuKu_User":"刘欣蕊","billNo":"XSD201501015","Order_Guid":"3e113159-70ce-4fef-b93c-ac1f214d938d","Cust_Name":"刘欣蕊","Cust_Mobile":"13155726333","Cust_Address":"江西省九江市浔阳区沙子墩18号G栋2单元401室","CheXi":"新国产RAV4","CheXing":"2.0风尚版 2WD","Car_Color":"珍珠白色","Order_Date":"2015-1-2 13:19:17","TiChe_Remark":"","Order_Salor":"王晟","TiCheDate":"2015-1-2 14:11:00"},{"HeGeZhengHao":"WAS132000906956","ShangJianHao":"","FaDongJiHao":"F567455","CheYaoShi":"4D37","CheJiaHao":"LFMAP86C5E0055712","CheLiangBianHao":"4D37","ChePaiHao":"","ChuKu_Date":"2015-1-6 16:51:59","ChuKu_User":"张春敏","billNo":"XSD201501011","Order_Guid":"de0a260b-475d-46f8-a153-bd82250a8ad6","Cust_Name":"张春敏","Cust_Mobile":"13507026101","Cust_Address":"江西省九江市浔阳区甘棠南路145号","CheXi":"新卡罗拉","CheXing":"1.6 GL-I","Car_Color":"白色","Order_Date":"2015-1-1 17:00:14","TiChe_Remark":"","Order_Salor":"熊超南","TiCheDate":"2015-1-6 16:52:47"},{"HeGeZhengHao":"WAS112000906039","ShangJianHao":"","FaDongJiHao":"F566090","CheYaoShi":"4D30","CheJiaHao":"LFMAP86C5E0054933","CheLiangBianHao":"4D30","ChePaiHao":"","ChuKu_Date":"2015-1-6 11:03:48","ChuKu_User":"郭显大","billNo":"XSD201501010","Order_Guid":"34387870-17f0-4187-9f44-6b71d7455619","Cust_Name":"郭显大","Cust_Mobile":"18679237903","Cust_Address":"江西省九江市星子县蓼南乡南阳坂村郭左村20号","CheXi":"新卡罗拉","CheXing":"1.6 GL-I","Car_Color":"白色","Order_Date":"2015-1-1 15:25:24","TiChe_Remark":"","Order_Salor":"袁烁","TiCheDate":"2015-1-6 11:05:51"},{"HeGeZhengHao":"WAS103001463794","ShangJianHao":"","FaDongJiHao":"L038049","CheYaoShi":"4A12","CheJiaHao":"LFMA8E2A6E0038367","CheLiangBianHao":"4Y12","ChePaiHao":"","ChuKu_Date":"2015-1-6 15:23:47","ChuKu_User":"梅文桥","billNo":"XSD201501009","Order_Guid":"459b6410-9085-45e4-a33b-b3a73e027a16","Cust_Name":"梅文桥","Cust_Mobile":"13027273188","Cust_Address":"湖北省黄梅县孔垄镇郭湖村十六组","CheXi":"新威驰","CheXing":"1.5智臻版","Car_Color":"橙色","Order_Date":"2015-1-1 15:17:22","TiChe_Remark":"","Order_Salor":"熊超南","TiCheDate":"2015-1-6 15:24:36"},{"HeGeZhengHao":"WAS142000902182","ShangJianHao":"","FaDongJiHao":"F560073","CheYaoShi":"4D16","CheJiaHao":"LFMAP86C1E0051561","CheLiangBianHao":"4D16","ChePaiHao":"","ChuKu_Date":"2015-1-6 9:07:57","ChuKu_User":"刘乐乐（王卫平）","billNo":"XSD201501007","Order_Guid":"47cc81b3-7a6a-4aea-8d16-0a9a252740a3","Cust_Name":"刘乐乐（王卫平）","Cust_Mobile":"18970291456","Cust_Address":"沙河街庐山南路","CheXi":"新卡罗拉","CheXing":"1.6 GL","Car_Color":"白色","Order_Date":"2015-1-1 13:33:52","TiChe_Remark":"","Order_Salor":"徐建英","TiCheDate":"2015-1-6 9:09:57"},{"HeGeZhengHao":"WAS1X3001596819","ShangJianHao":"","FaDongJiHao":"F550032","CheYaoShi":"4N44","CheJiaHao":"LFMAP86C4E0455700","CheLiangBianHao":"4N44","ChePaiHao":"","ChuKu_Date":"2015-1-1 10:13:01","ChuKu_User":"柯冬华","billNo":"XSD201501001","Order_Guid":"06280f5b-0169-4e72-a06b-edfc3fd05613","Cust_Name":"柯冬华","Cust_Mobile":"13520137318","Cust_Address":"瑞昌市乐园乡南庄村黄塘23号","CheXi":"新卡罗拉","CheXing":"1.6 GL-I","Car_Color":"黑色","Order_Date":"2015-1-1 8:58:45","TiChe_Remark":"","Order_Salor":"徐建英","TiCheDate":"2015-1-1 10:18:40"},{"HeGeZhengHao":"WAS142000908086","ShangJianHao":"","FaDongJiHao":"F569468","CheYaoShi":"4D35","CheJiaHao":"LFMAP86C2E0056655","CheLiangBianHao":"4D35","ChePaiHao":"","ChuKu_Date":"2015-1-5 16:48:42","ChuKu_User":"陈独明","billNo":"XSD201412119","Order_Guid":"dc23057a-6911-4d06-9b64-3ef9c05752fd","Cust_Name":"陈独明","Cust_Mobile":"13970238786","Cust_Address":"江西省九江市浔阳区塔岭北路38号4栋1单元602室","CheXi":"新卡罗拉","CheXing":"1.6 GL-I真皮","Car_Color":"白色","Order_Date":"2014-12-30 18:47:54","TiChe_Remark":"","Order_Salor":"王晟","TiCheDate":"2015-1-5 16:52:20"},{"HeGeZhengHao":"WAS193001622179","ShangJianHao":"","FaDongJiHao":"G395484","CheYaoShi":"4D44","CheJiaHao":"LFMAP86C9E0469706","CheLiangBianHao":"4D44","ChePaiHao":"","ChuKu_Date":"2015-1-7 15:56:44","ChuKu_User":"蒋章炎","billNo":"XSD201412118","Order_Guid":"49e43293-21c8-474d-b246-a6660068430a","Cust_Name":"蒋章炎","Cust_Mobile":"13755221682","Cust_Address":"江西省九江市开发区蛟滩村一组","CheXi":"新卡罗拉","CheXing":"1.6 GL-I","Car_Color":"白色","Order_Date":"2014-12-30 18:26:05","TiChe_Remark":"","Order_Salor":"余睿洁","TiCheDate":"2015-1-7 15:57:46"},{"HeGeZhengHao":"WAS171001056451","ShangJianHao":"","FaDongJiHao":"G328750","CheYaoShi":"4L08","CheJiaHao":"LFMAP22C8E0667714","CheLiangBianHao":"4L08","ChePaiHao":"","ChuKu_Date":"2015-1-1 14:06:38","ChuKu_User":"孟令明","billNo":"XSD201412115","Order_Guid":"d00fb674-81f7-4f01-887e-762f644f0658","Cust_Name":"孟令明","Cust_Mobile":"15879291108","Cust_Address":"武宁县东林乡","CheXi":"新花冠","CheXing":"1.6卓越版","Car_Color":"银色","Order_Date":"2014-12-30 15:34:52","TiChe_Remark":"","Order_Salor":"徐建英","TiCheDate":"2015-1-2 9:41:50"},{"HeGeZhengHao":"WDZ152140074813","ShangJianHao":"","FaDongJiHao":"T089243","CheYaoShi":"4G13","CheJiaHao":"LFMJ440F4E3051346","CheLiangBianHao":"4G13","ChePaiHao":"赣G0E797","ChuKu_Date":"2014-12-31 9:14:27","ChuKu_User":"吴汉斌","billNo":"XSD201412112","Order_Guid":"e1062c9c-fc19-4ea2-81a5-b2e0ee1d3a24","Cust_Name":"吴汉斌","Cust_Mobile":"13479893815","Cust_Address":"开发区三角线新村三支巷43号","CheXi":"国产RAV4","CheXing":"2.0L风尚版","Car_Color":"铂青铜","Order_Date":"2014-12-29 16:03:37","TiChe_Remark":"","Order_Salor":"徐建英","TiCheDate":"2014-12-31 9:51:37"},{"HeGeZhengHao":"WDZ172140110566","ShangJianHao":"","FaDongJiHao":"T113224","CheYaoShi":"4D27","CheJiaHao":"LFMK440F0E3052661","CheLiangBianHao":"4D27","ChePaiHao":"赣G12345","ChuKu_Date":"2015-1-6 9:13:22","ChuKu_User":"马少华","billNo":"XSD201412110","Order_Guid":"9b48f3a2-229d-429d-b2b2-2422866a62c1","Cust_Name":"马少华","Cust_Mobile":"15390827895","Cust_Address":"江西省九江市武宁县清江乡罗洞村英家垅42号","CheXi":"新国产RAV4","CheXing":"2.0风尚版 2WD","Car_Color":"珍珠白色","Order_Date":"2014-12-29 13:39:16","TiChe_Remark":"","Order_Salor":"陈龙志","TiCheDate":"2015-1-7 18:27:35"},{"HeGeZhengHao":"WDZ122140058729","ShangJianHao":"","FaDongJiHao":"T078572","CheYaoShi":"4E39","CheJiaHao":"LFMJ44AF2E3043955","CheLiangBianHao":"4E39","ChePaiHao":"","ChuKu_Date":"2015-1-6 16:53:20","ChuKu_User":"高二毛","billNo":"XSD201412109","Order_Guid":"4e81b49f-9172-4599-abd0-9a8685e04c9b","Cust_Name":"高二毛","Cust_Mobile":"15979942014","Cust_Address":"江西省上饶市鄱阳县","CheXi":"国产RAV4","CheXing":"2.0L新锐版","Car_Color":"黑色","Order_Date":"2014-12-29 11:06:20","TiChe_Remark":"","Order_Salor":"刘星辰","TiCheDate":"2015-1-6 16:58:22"}]}';
    jsonStrData = $.parseJSON(jsonstr);

    $(function () {
        $(document).keydown(function () {
            //
            if (event.keyCode == 13) {
                __doPostBack('lnkbtnSearch', '');
            }
        });
        $("#lnkSearch").click(function () {
            $("#SearchDiv").show("slow");

        });
        $('#dg').datagrid({
            onDblClickRow: function (rowIndex, rowdata) {
                if (rowdata.Order_Guid != null) {
                    var href = "../SaleOrder_Manage/OrderTiCheDan.aspx?d=" + new Date() + "&&OrderID=" + rowdata.Order_Guid;

                    var SizeZ = "dialogWidth:1000px;dialogHeight:700px;center:yes;edge:sunken;help:no;resizable:no;scroll:yes;status:no;";
                    var returnValue = window.showModalDialog(href, '', SizeZ);



                }
            },
            onClickRow: function (rowIndex, rowdata) {
                if (rowdata.Order_Guid != null) {
                    var href = "../SaleOrder_Manage/OrderTiCheDan.aspx?d=" + new Date() + "&&OrderID=" + rowdata.Order_Guid;

                    var SizeZ = "dialogWidth:1000px;dialogHeight:700px;center:yes;edge:sunken;help:no;resizable:no;scroll:yes;status:no;";
                    var returnValue = window.showModalDialog(href, '', SizeZ);



                }
            }

        }).datagrid({ loadFilter: pagerFilter }).datagrid('loadData', jsonStrData);
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
                $("#HidPageNum").val(pageNum);
                $("#HidPageSize").val(pageSize);

                //alert("页面尺寸:" + pageSize);

                __doPostBack('LinkButton1', '');
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
<body>
    <form name="form1" method="post" action="OrderJiaoCheList.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTUyMTgxMTQ4MWRkoh/d5tCvXbmB/GFMB6YiB+A3ipg=" />
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
            <table border="0" style="width: 100%;">
                <tr>
                    <td class="titlebg">
                        <span class="titleSpan">交车登记</span>
                    </td>
                                     
         
                    <td align="right">
                        <span id="rdblChangeJiaChe"><input id="rdblChangeJiaChe_0" type="radio" name="rdblChangeJiaChe" value="0" /><label for="rdblChangeJiaChe_0">当天交车</label><input id="rdblChangeJiaChe_1" type="radio" name="rdblChangeJiaChe" value="1" /><label for="rdblChangeJiaChe_1">当月交车</label><input id="rdblChangeJiaChe_2" type="radio" name="rdblChangeJiaChe" value="2" checked="checked" /><label for="rdblChangeJiaChe_2">所有</label></span>
                       
         </td>

           
         
                                    <td align="right" style="width:90px;">
               
               

                     <div id="tmpa2">
	
                    
            <a id="lnkExcel" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-excel'" href="javascript:__doPostBack('lnkExcel','')">生成Excel</a>
            
            
</div>
                 </td>
                </tr>
            </table>
        </div>
        <div class="region">
            <div id="SearchDiv" style="display:none;">
                <div>
                    <table>
                        <tr>
                            <td>
                                客户名称:
                            </td>
                            <td>
                                <input name="txtCustName" type="text" maxlength="10" id="txtCustName" />
                            </td>
                            <td>
                                订单编号:
                            </td>
                            <td>
                                <input name="txtBillNO" type="text" maxlength="15" id="txtBillNO" />
                            </td>
                            <td>
                                车架号:
                            </td>
                            <td>
                                <input name="txtVinCode" type="text" maxlength="20" id="txtVinCode" />
                            </td>
                            <td>
                                SFX:
                            </td>
                            <td>
                                <input name="txtSFX" type="text" maxlength="10" id="txtSFX" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                车系:
                            </td>
                            <td>
                                <input name="txtCheXi" type="text" maxlength="10" id="txtCheXi" />
                            </td>
                            <td>
                                车型:
                            </td>
                            <td>
                                <input name="txtCheXing" type="text" maxlength="10" id="txtCheXing" />
                            </td>
                            <td>
                                车型代码:
                            </td>
                            <td>
                                <input name="txtCheXingDaiMa" type="text" maxlength="10" id="txtCheXingDaiMa" />
                            </td>
                            <td>
                                车身颜色:
                            </td>
                            <td>
                                <input name="txtCarColor" type="text" maxlength="10" id="txtCarColor" />
                            </td>
                        </tr>
                        <tr>
                        <td>联系人手机:</td>
                        <td><input name="txtJBRenMobile" type="text" maxlength="11" id="txtJBRenMobile" /></td>
                        <td>车主手机:</td>
                        <td> <input name="txtCustMobile" type="text" maxlength="11" id="txtCustMobile" /></td>
                        <td> 交车时间：</td>
                        <td><input name="txtJiaoCheDateStart" type="text" id="txtJiaoCheDateStart" class="easyui-datebox" /></td>
                        <td>至</td>
                        <td> <input name="txtJiaoCheDateEnd" type="text" id="txtJiaoCheDateEnd" class="easyui-datebox" /></td>
                        </tr>
                       <tr>
                       <td>销售顾问</td>
                       <td><input name="txtSalor" type="text" id="txtSalor" /></td>
                       <td>车牌号码:</td><td><input name="txtChePaiHao" type="text" maxlength="20" id="txtChePaiHao" /></td>
                           <td colspan="4">
                                <a id="lnkbtnSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkbtnSearch','')">查询</a> <a onclick=" return lnkClearTxt('SearchDiv');" id="lnkbtnCancel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkbtnCancel','')">取消</a>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <input type="hidden" name="HidPageNum" id="HidPageNum" />
            <input type="hidden" name="HidPageSize" id="HidPageSize" />
            <table id="dg" class="easyui-datagrid" toolbar="#SearchDiv"  data-options="
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
                 frozenColumns:[[
                 {field:'billNo',title:'订单编号',width:120},
                {field:'Cust_Name',title:'车主名称',width:150}
                ]],
                columns:[[
                
                {field:'Cust_Mobile',title:'联系电话',width:120},
                {field:'CheXing',title:'车型',width:120},
                 {field:'Car_Color',title:'车辆颜色',width:120},
                {field:'CheJiaHao',title:'车架号',width:120},
                {field:'CheLiangBianHao',title:'车辆编号',width:120},
                {field:'FaDongJiHao',title:'发动机号',width:120},
                 {field:'CheYaoShi',title:'钥匙编号',width:120},
                {field:'ChePaiHao',title:'车牌号',width:120},
                {field:'ChuKu_Date',title:'交车日期',width:120},
                {field:'ChuKu_User',title:'提车人',width:120},
                 {field:'Cust_Address',title:'客户地址',width:120},
                {field:'Order_Salor',title:'销售员',width:120},
                {field:'HeGeZhengHao',title:'合格证号',width:120},
                {field:'ShangJianHao',title:'商检号',width:120},
                 {field:'TiChe_Remark',title:'交车备注',width:200}
              
                
               ] ],
				pagination:true,
                idfield:'OrderGuid',
                remoteSort:false,
                pageList:[10,15,20,30,40,50,100],
                pageNumber:1,
				pageSize:15">
            </table>
        </div>
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="4A71ACD6" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWGAKVsduZAQKj99eMBgK899eMBgK999eMBgKzmP3iCgK87en2BALxmfnCDQK69PCNDgL8v7HKBwKu++6KBALWz/zOAgKW38iDBgKPlOqCAwLsj9ehDAL8u5DjDgKm6szOCgKzxrd1Arq+qeoHAub7pnECpMa9BgKU5vu4AwKDuN3pBAKwppvzCAKjnqOWBUdSHjBna0nLgXr9prrhfnJj+bmS" />
</div>


</form>
</body>
</html>