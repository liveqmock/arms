
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>

</title><link rel="stylesheet" type="text/css" href="../style/default/flexigrid.pack.css" />
    <style type="text/css">
        .black_overlay
        {
            display: none;
            position: absolute;
            top: 0%;
            left: 0%;
            width: 100%;
            height: 100%;
            background-color: #33001A;
            z-index: 1001;
            -moz-opacity: 0.2;
            opacity: .20;
            filter: alpha(opacity=20);
            
        }
        .white_content
        {
            display: none;
            position: absolute;
            top: 35%;
            left: 35%;
       
            background-color: white;
            z-index: 1002;
            overflow: hidden;
        }
        .dialog_title
        {
            width: 100%;
            height: 20px;
            background-color: #EECEE5;
            position: relative;
        }
        .dialog_content
        {
            height: 280px;
            overflow: scroll;
        }
        #pageDiv
        {
            font-size: 12px;
        }
        .span
        {
            display: block;
            white-space: nowrap;
            width: 100%;
        }
    </style>
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<script type="text/javascript" src="../js/flexigrid.js"></script>

<script type="text/javascript" src="../js/GridPage.js"></script>
<body>
    <form name="form1" method="post" action="CommonReport.aspx?type=saleJiaoCheTongJiFenXi" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTI5MDgwMjczMA9kFgICAw9kFgICAQ9kFgJmD2QWAmYPDxYCHgdWaXNpYmxlZ2RkZB9f9un9FwTyNBQNUdimXa3hCcNb" />
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
        <table border="0" style="width: 100%;">
            <tr>
                <td class="titlebg">
                    <span class="titleSpan">
                        交车统计分析</span>
                </td>
                <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('tmpa1', document.getElementById('form1'));
Sys.WebForms.PageRequestManager.getInstance()._updateControls(['ttmpa2','tUpdatePanel1'], [], [], 90);
//]]>
</script>

                <td align="right" >
               
                
                     <div id="tmpa2">
	
                    
            <a id="lnkExcel" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-excel'" href="javascript:__doPostBack('lnkExcel','')">生成Excel</a>
            
            
</div>
                 </td>
                        <td  style="width:80px;">
                    <a href="#" id="lnkSearchA" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'"
                        onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'" >
                        查询</a>
                        
                </td>
            </tr>
        </table>
    </div>
    <div>   
        <div   id="light" class="white_content"  style="padding:2px;width:450px;height:350px;"  title="saleJiaoCheTongJiFenXi查询"><div class="dialog_title"><div>交车统计分析</div></div><div class="dialog_content"> <table border="0"   cellpadding="3" cellspacing="0" style="margin:10px;width:96%"><tr> <td align="right">机构选择:</td><td><input  type="text"   style="width:90%;"  name="txtgroup"    Id="txtgroup"    MaxLength="200"  onclick="groupselect()"/> </td> <td><input  type="hidden"   style="width:90%;"  name="txtgroupId"    Id="txtgroupId"    MaxLength="200"  /> </td></tr><tr> <td align="right">销售顾问:</td><td><input  type="text"   style="width:90%;"  name="Order_Salor"    Id="Order_Salor"    MaxLength="30"  /> </td></tr><tr> <td align="right">提车时间:</td><td> <span class="span"> <input  type="text"    name="TicheDate1"  class="easyui-datebox"   Id="TicheDate1"    MaxLength="30"  /> 至: <input  type="text"    name="TicheDate2"    class="easyui-datebox" Id="TicheDate2"    MaxLength="30"  /> </span></td></tr><tr> <td align="right">配车时间:</td><td> <span class="span"> <input  type="text"    name="PeicheDate1"  class="easyui-datebox"   Id="PeicheDate1"    MaxLength="30"  /> 至: <input  type="text"    name="PeicheDate2"    class="easyui-datebox" Id="PeicheDate2"    MaxLength="30"  /> </span></td></tr><tr> <td align="right">订单日期:</td><td> <span class="span"> <input  type="text"    name="OrderDate1"  class="easyui-datebox"   Id="OrderDate1"    MaxLength="30"  /> 至: <input  type="text"    name="OrderDate2"    class="easyui-datebox" Id="OrderDate2"    MaxLength="30"  /> </span></td></tr></table></div><div style="text-align:center;margin:10px"><input type="button"   onclick="searchCheck()" value="查询"/> <input type="button"    onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'" value="关闭"/>    </div> </div>
        <div id="fade" class="black_overlay">
        </div>
    </div>
    
    <div id="UpdatePanel1">
	
            <input name="txtPageNum" type="text" value="1" id="txtPageNum" style="display: none;" />
            <input name="txtPageSize" type="text" value="15" id="txtPageSize" style="display: none;" />
            <a id="tmp" href="javascript:__doPostBack('tmp','')"></a>
            <input type="hidden" name="hiddJSON" id="hiddJSON" />
            <a id="lnkSearch" href="javascript:__doPostBack('lnkSearch','')"></a>
            
            <table id="flexdg">
            </table>
        
</div>
    <input name="txtSearchSet" type="hidden" id="txtSearchSet" />
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="24375021" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCAKIlqOXAQK87en2BAKfluDwDwKa7byuAgKm4eRsAt3T+roGAqmLicEFAo7R3s0GsfKFsPOcm3mDNUExq2eyvCLuw4M=" />
</div>

<script type="text/javascript">
//<![CDATA[
 var colModel=null;colModel= {colModel:[{display:'客户名称',name:'Order_Cust_Name',width:0},{display:'No.',name:'No.',width:0},{display:'车架号',name:'CarRuKu_CheJiaHao',width:140},{display:'车辆编号',name:'CarRuKu_CheLiangBianHao',width:0},{display:'配车时间',name:'Order_PeiCheDate',width:0},{display:'提车时间',name:'Order_TiCheDate',width:0},{display:'交车合影',name:'YiShiHeDui',width:0}],dataType:'json',usepager: true,height:500,pagestat : '显示第 {from} 条到 {to} 条,共 {total} 条数据',rpOptions:[15, 25, 50, 100],rp:15};var jsonData={"total":1841,"page":1,"rows":[{"No.":"1","Order_Cust_Name":"安建新","CarRuKu_CheJiaHao":"JTHKR5BH5E2212725","CarRuKu_CheLiangBianHao":"14S054","Order_PeiCheDate":"2014/09/22","Order_TiCheDate":"2014/09/26","Order_Salor":"杨碧霞","YiShiHeDui":"交车，未合影"},{"No.":"2","Order_Cust_Name":"安琪","CarRuKu_CheJiaHao":"JTHKR5BH0D2171662","CarRuKu_CheLiangBianHao":"13D021","Order_PeiCheDate":"2013/12/09","Order_TiCheDate":"2013/12/17","Order_Salor":"于燕飞","YiShiHeDui":"交车，未合影"},{"No.":"3","Order_Cust_Name":"白桦","CarRuKu_CheJiaHao":"JTJZA11A7D2442959","CarRuKu_CheLiangBianHao":"13G012","Order_PeiCheDate":"2013/09/24","Order_TiCheDate":"2013/10/09","Order_Salor":"肖玮","YiShiHeDui":"交车，未合影"},{"No.":"4","Order_Cust_Name":"北京北广盛世广告有限公司深圳分公司","CarRuKu_CheJiaHao":"JTHKR5BH3E2181586","CarRuKu_CheLiangBianHao":"14M003","Order_PeiCheDate":"2014/03/04","Order_TiCheDate":"2014/06/29","Order_Salor":"赵雅琴","YiShiHeDui":"交车，未合影"},{"No.":"5","Order_Cust_Name":"北京北广盛世广告有限公司深圳分公司","CarRuKu_CheJiaHao":"JTHKR5BH6E2185504","CarRuKu_CheLiangBianHao":"14M120","Order_PeiCheDate":"2014/06/25","Order_TiCheDate":"2014/06/29","Order_Salor":"杜振辉","YiShiHeDui":"交车，未合影"},{"No.":"6","Order_Cust_Name":"北京北广盛世广告有限公司深圳分公司","CarRuKu_CheJiaHao":"JTHKR5BH6E2192193","CarRuKu_CheLiangBianHao":"14A104","Order_PeiCheDate":"2014/06/25","Order_TiCheDate":"2014/06/30","Order_Salor":"杜振辉","YiShiHeDui":"交车，未合影"},{"No.":"7","Order_Cust_Name":"北京北广盛世广告有限公司深圳分公司","CarRuKu_CheJiaHao":"JTHKR5BH8E2182765","CarRuKu_CheLiangBianHao":"14M044","Order_PeiCheDate":"2014/06/25","Order_TiCheDate":"2014/06/29","Order_Salor":"杜振辉","YiShiHeDui":"交车，未合影"},{"No.":"8","Order_Cust_Name":"北京北广盛世广告有限公司深圳分公司","CarRuKu_CheJiaHao":"JTHKR5BH8E2191921","CarRuKu_CheLiangBianHao":"14A103","Order_PeiCheDate":"2014/06/25","Order_TiCheDate":"2014/06/30","Order_Salor":"杜振辉","YiShiHeDui":"交车，未合影"},{"No.":"9","Order_Cust_Name":"北京北广盛世广告有限公司深圳分公司","CarRuKu_CheJiaHao":"JTHKR5BHXE2184033","CarRuKu_CheLiangBianHao":"14M088","Order_PeiCheDate":"2014/06/25","Order_TiCheDate":"2014/06/29","Order_Salor":"杜振辉","YiShiHeDui":"交车，未合影"},{"No.":"10","Order_Cust_Name":"北京中远大昌汽车服务有限公司广州分公司","CarRuKu_CheJiaHao":"JTHKR5BH1E2203374","CarRuKu_CheLiangBianHao":"14L026","Order_PeiCheDate":"2014/08/07","Order_TiCheDate":"2014/08/20","Order_Salor":"陈智聪","YiShiHeDui":"交车，未合影"},{"No.":"11","Order_Cust_Name":"贝旭东","CarRuKu_CheJiaHao":"JTHBJ1GG0E2046517","CarRuKu_CheLiangBianHao":"14M053","Order_PeiCheDate":"2014/04/08","Order_TiCheDate":"2014/04/14","Order_Salor":"丁拱祥","YiShiHeDui":"交车，未合影"},{"No.":"12","Order_Cust_Name":"毕荙俐","CarRuKu_CheJiaHao":"JTJZA11AXD2029854","CarRuKu_CheLiangBianHao":"13L046","Order_PeiCheDate":"2013/08/26","Order_TiCheDate":"2013/09/06","Order_Salor":"陈智聪","YiShiHeDui":"交车，未合影"},{"No.":"13","Order_Cust_Name":"蔡河清LG","CarRuKu_CheJiaHao":"JTJZA11A6E2462024","CarRuKu_CheLiangBianHao":"14E132","Order_PeiCheDate":"2014/07/08","Order_TiCheDate":"2014/07/08","Order_Salor":"杜振辉","YiShiHeDui":"交车，未合影"},{"No.":"14","Order_Cust_Name":"蔡红英","CarRuKu_CheJiaHao":"JTHBJ1GG7E2052539","CarRuKu_CheLiangBianHao":"14Y010","Order_PeiCheDate":"2014/07/22","Order_TiCheDate":"2014/07/24","Order_Salor":"邓小明","YiShiHeDui":"交车，未合影"},{"No.":"15","Order_Cust_Name":"蔡会玲","CarRuKu_CheJiaHao":"JTJZA11A8E2459948","CarRuKu_CheLiangBianHao":"14Y136","Order_PeiCheDate":"2014/06/04","Order_TiCheDate":"2014/06/12","Order_Salor":"陈迎朝","YiShiHeDui":"交车，未合影"}]};Sys.Application.initialize();
//]]>
</script>
</form>
    <script language="javascript" type="text/javascript">
        function initData() {
            if (colModel != null) {
                $("#flexdg").flexigrid(colModel);

            }
            if (jsonData != null) {
                $("#flexdg").flexAddData(jsonData);
            }

            $("#lnkExcel,#lnkSearchA").linkbutton();
              $.messager.progress('close');
        }
        var dragfg = false;
        $(function () {
            initData();
           
            var offsetX = 0;
            var offsetY = 0;
            $(".dialog_title").mouseover(function () {
                $(this).css("cursor", "move");
            });
            $(".dialog_title").mousedown(function () {
                dragfg = true;
                offsetX = event.offsetX;
                offsetY = event.offsetY;
                $(this).css("cursor", "move");
            }).mouseup(function () {
                dragfg = false;
            });
            $(document).mousemove(function () {
                if (!dragfg||event.button!=1) {
                    return;
                }
                var x = event.clientX - offsetX;
                var y = event.clientY - offsetY;
                $("#light").css("left", x).css("top", y);
               

            });


        });

        function searchCheck() {
            $("#txtPageNum").val("1");

             $.messager.progress({
                 title: '请稍后',
                 
                  text: '努力加载中...' , 
                 interval: 100
             });

            __doPostBack('lnkSearch', '');
            $("#light,#fade").hide();
            return false;
        }

        function getSelect(obj) {

            $("#txtPageSize").val(obj.value);
          $.messager.progress({
                 title: '请稍后',
                 
                  text: '努力加载中...' , 
                 interval: 100
             });
            __doPostBack('tmp', '');

        }
        function pageClick(page) {

            $("#txtPageNum").val(page);
           $.messager.progress({
                 title: '请稍后',
                 
                  text: '努力加载中...' , 
                 interval: 100
             });
            __doPostBack('tmp', '');
        }
        function sizeClick(pageSize) {

            $("#txtPageNum").val("1");
            $("#txtPageSize").val(pageSize);
          $.messager.progress({
                 title: '请稍后',
                 
                  text: '努力加载中...' , 
                 interval: 100
             });

            __doPostBack('tmp', '');
        }
        function groupselect() {
            var href = "../index/groupSelect.aspx";
            var SizeZ = 'dialogWidth:600px;dialogHeight:450px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;';
            var returnValue = window.showModalDialog(href, '', SizeZ);
            if (returnValue != undefined && returnValue != "") {
                var s = returnValue.split("|");
                $("#txtgroupId").val(s[0]);
                $("#txtgroup").val(s[1]);
            }

        }
    </script>
</body>
</html>
<script type="text/javascript">
    Sys.WebForms.PageRequestManager.getInstance().add_endRequest(initData);
</script>