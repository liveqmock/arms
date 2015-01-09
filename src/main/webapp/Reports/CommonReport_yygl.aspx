
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
    <form name="form1" method="post" action="CommonReport.aspx?type=customSaleAfterYuYueReport" id="form1">
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
                        客服预约报表</span>
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
        <div   id="light" class="white_content"  style="padding:2px;width:460px;height:350px;"  title="customSaleAfterYuYueReport查询"><div class="dialog_title"><div>客服预约报表</div></div><div class="dialog_content"> <table border="0"   cellpadding="3" cellspacing="0" style="margin:10px;width:96%"><tr> <td align="right">机构选择:</td><td><input  type="text"   style="width:90%;"  name="txtgroup"    Id="txtgroup"    MaxLength="200"  onclick="groupselect()"/> </td> <td><input  type="hidden"   style="width:90%;"  name="txtgroupId"    Id="txtgroupId"    MaxLength="200"  /> </td></tr><tr> <td align="right">联系电话:</td><td><input  type="text"   style="width:90%;"  name="tel"    Id="tel"    MaxLength="30"  /> </td></tr><tr> <td align="right">备注:</td><td><input  type="text"   style="width:90%;"  name="beiZhu"    Id="beiZhu"    MaxLength="30"  /> </td></tr><tr> <td align="right">出厂时间:</td><td> <span class="span"> <input  type="text"    name="chuChangDate1"  class="easyui-datebox"   Id="chuChangDate1"    MaxLength="30"  /> 至: <input  type="text"    name="chuChangDate2"    class="easyui-datebox" Id="chuChangDate2"    MaxLength="30"  /> </span></td></tr><tr> <td align="right">预入厂时间:</td><td> <span class="span"> <input  type="text"    name="yuRuChangDate1"  class="easyui-datebox"   Id="yuRuChangDate1"    MaxLength="30"  /> 至: <input  type="text"    name="yuRuChangDate2"    class="easyui-datebox" Id="yuRuChangDate2"    MaxLength="30"  /> </span></td></tr><tr> <td align="right">车牌号:</td><td><input  type="text"   style="width:90%;"  name="chePaiHao"    Id="chePaiHao"    MaxLength="30"  /> </td></tr><tr> <td align="right">车主陈述:</td><td><input  type="text"   style="width:90%;"  name="cheZhuChenShu"    Id="cheZhuChenShu"    MaxLength="30"  /> </td></tr><tr> <td align="right">车主名称:</td><td><input  type="text"   style="width:90%;"  name="cheZhuName"    Id="cheZhuName"    MaxLength="30"  /> </td></tr><tr> <td align="right">维修类型:</td><td><input  type="text"   style="width:90%;"  name="weiXiuSort"    Id="weiXiuSort"    MaxLength="30"  /> </td></tr><tr> <td align="right">服务顾问:</td><td><input  type="text"   style="width:90%;"  name="sa"    Id="sa"    MaxLength="30"  /> </td></tr></table></div><div style="text-align:center;margin:10px"><input type="button"   onclick="searchCheck()" value="查询"/> <input type="button"    onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'" value="关闭"/>    </div> </div>
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
 var colModel=null;colModel= {colModel:[{display:'NO.',name:'NO.',width:30,resizable : true,sortable:true},{display:'预约状态',name:'预约状态',width:120,resizable : true,sortable:true},{display:'预约单号',name:'预约单号',width:120,resizable : true,sortable:true},{display:'登记日期',name:'登记日期',width:120,resizable : true,sortable:true},{display:'维修类型',name:'维修类型',width:120,resizable : true,sortable:true},{display:'车牌号码',name:'车牌号码',width:120,resizable : true,sortable:true},{display:'车系名称',name:'车系名称',width:120,resizable : true,sortable:true},{display:'联系人',name:'联系人',width:120,resizable : true,sortable:true},{display:'联系人手机',name:'联系人手机',width:120,resizable : true,sortable:true},{display:'服务顾问',name:'服务顾问',width:120,resizable : true,sortable:true},{display:'实际入厂时间',name:'实际入厂时间',width:120,resizable : true,sortable:true},{display:'预计入厂时间',name:'预计入厂时间',width:120,resizable : true,sortable:true},{display:'预计出厂时间',name:'预计出厂时间',width:120,resizable : true,sortable:true},{display:'出厂时间',name:'出厂时间',width:120,resizable : true,sortable:true},{display:'是否有效',name:'是否有效',width:120,resizable : true,sortable:true},{display:'客户陈述',name:'客户陈述',width:120,resizable : true,sortable:true},{display:'预约备注',name:'预约备注',width:120,resizable : true,sortable:true},{display:'机构名称',name:'机构名称',width:120,resizable : true,sortable:true}],dataType:'json',usepager: true,height:500,pagestat : '显示第 {from} 条到 {to} 条,共 {total} 条数据',rpOptions:[15, 25, 50, 100],rp:15};var jsonData={"total":4,"page":1,"rows":[{"NO.":"1","预约状态":"已到店","预约单号":"YYD1300003","登记日期":"2013/09/29","维修类型":"一般维修","车牌号码":"粤BSY621","车系名称":"LS460L","联系人":"刘翔","联系人手机":"13865235412","服务顾问":"陈荣华","实际入厂时间":"","预计入厂时间":"2013-9-24 16:30:40","预计出厂时间":"","出厂时间":"","是否有效":"来厂时间与预计来厂时间对比","客户陈述":"预约原由1234567880-1242424","预约备注":"","机构名称":"深业雷克"},{"NO.":"2","预约状态":"已到店","预约单号":"YYD1400001","登记日期":"2014/08/16","维修类型":"大客户","车牌号码":"粤SDGJX","车系名称":"锐志","联系人":"东莞捷信汽车维修有限公司吴许昌","联系人手机":"13712697971","服务顾问":"陈旭伟","实际入厂时间":"2014-8-16 16:37:57","预计入厂时间":"2014-8-15 16:34:32","预计出厂时间":"","出厂时间":"2014-8-26 18:57:39","是否有效":"来厂时间与预计来厂时间对比","客户陈述":"","预约备注":"","机构名称":"深业雷克"},{"NO.":"3","预约状态":"预约中","预约单号":"YYD1300004","登记日期":"2013/10/27","维修类型":"保险","车牌号码":"粤BS448C","车系名称":"ES350","联系人":"管后双","联系人手机":"13828890058","服务顾问":"潘景锋","实际入厂时间":"","预计入厂时间":"2013-10-27 16:55:04","预计出厂时间":"","出厂时间":"","是否有效":"来厂时间与预计来厂时间对比","客户陈述":"","预约备注":"","机构名称":"深业雷克"},{"NO.":"4","预约状态":"已到店","预约单号":"YYD1300002","登记日期":"2013/09/14","维修类型":"一般维修","车牌号码":"粤B88888","车系名称":"ES300h","联系人":"lexus","联系人手机":"13425315412","服务顾问":"陈荣华","实际入厂时间":"","预计入厂时间":"2013-9-14 18:02:29","预计出厂时间":"","出厂时间":"","是否有效":"来厂时间与预计来厂时间对比","客户陈述":"","预约备注":"","机构名称":"深业雷克"}]};Sys.Application.initialize();
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
