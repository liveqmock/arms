
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
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<script type="text/javascript" src="../JS/flexigrid.js"></script>

<script type="text/javascript" src="../JS/GridPage.js"></script>
<body>
    <form name="form1" method="post" action="CommonReport.aspx?type=storeOtherChuKuTuiKuSea" id="form1">
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
                        配件出库报表</span>
                </td>

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
        <div   id="light" class="white_content"  style="padding:2px;width:460px;height:350px;"  title="storeOtherChuKuTuiKuSea查询"><div class="dialog_title"><div>配件出库报表</div></div><div class="dialog_content"> <table border="0"   cellpadding="3" cellspacing="0" style="margin:10px;width:96%"><tr> <td align="right">机构选择:</td><td><input  type="text"   style="width:90%;"  name="txtgroup"    Id="txtgroup"    MaxLength="200"  onclick="groupselect()"/> </td> <td><input  type="hidden"   style="width:90%;"  name="txtgroupId"    Id="txtgroupId"    MaxLength="200"  /> </td></tr><tr> <td align="right">出入时间:</td><td> <span class="span"> <input  type="text"    name="busiDate1"  class="easyui-datebox"   Id="busiDate1"    MaxLength="30"  /> 至: <input  type="text"    name="busiDate2"    class="easyui-datebox" Id="busiDate2"    MaxLength="30"  /> </span></td></tr><tr> <td align="right">业务单号:</td><td><input  type="text"   style="width:90%;"  name="busiBillNo"    Id="busiBillNo"    MaxLength="30"  /> </td></tr><tr> <td align="right">出入单号:</td><td><input  type="text"   style="width:90%;"  name="chuKuBillNo"    Id="chuKuBillNo"    MaxLength="30"  /> </td></tr><tr> <td align="right">经手人:</td><td><input  type="text"   style="width:90%;"  name="jingShouRen"    Id="jingShouRen"    MaxLength="30"  /> </td></tr><tr> <td align="right">客户名:</td><td><input  type="text"   style="width:90%;"  name="cheZhuName"    Id="cheZhuName"    MaxLength="30"  /> </td></tr><tr> <td align="right">车牌号:</td><td><input  type="text"   style="width:90%;"  name="chePaiHao"    Id="chePaiHao"    MaxLength="30"  /> </td></tr><tr> <td align="right">商品编号:</td><td><input  type="text"   style="width:90%;"  name="shopId"    Id="shopId"    MaxLength="30"  /> </td></tr><tr> <td align="right">商品名称:</td><td><input  type="text"   style="width:90%;"  name="shopName"    Id="shopName"    MaxLength="30"  /> </td></tr><tr> <td align="right">单据:</td><td><span class="span"><input type="checkbox" name="billType" value=""></span></td></tr><tr> <td align="right">查询方式:</td> <td><select   name="seaType"   Id="seaType"><option selected="selected" value="按单">按单 </option><option value="按明细">按明细 </option></select></td></tr></table></div><div style="text-align:center;margin:10px"><input type="button"   onclick="searchCheck()" value="查询"/> <input type="button"    onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'" value="关闭"/>    </div> </div>

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
 var colModel=null;colModel=null ;var jsonData=null;
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
            var href = "../Index/groupSelect.aspx";
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