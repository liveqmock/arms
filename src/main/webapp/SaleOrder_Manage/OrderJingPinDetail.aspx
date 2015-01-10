<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	精品明细
</title>
    <base target="_self" />
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=2dfbab1f71764dc182eb87e4e0aad2fc" type="text/javascript"></script><link href="../style/common.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<style type="text/css">
    table
    {
        border-collapse: collapse;
    }
    
    .cssHide
    {
        display: none;
    }
    .cssTd
    {
        width: 33%;
        font-size: large;
        font-weight: normal;
        font-style: normal;
        font-family: 微软雅黑;
    }
    .cssDivStatus
    {
        border: 1px outset #F6F6F6;
        background-color: #E3E3E3;
        color: #0080FF;
        line-height: 20px;
        font-size: small;
        width: 152px;
        text-align: center;
    }
    .main-table .top-dt-a
    {
        background-image: url('../image/SaleOrder/left_a.png');
        background-repeat: no-repeat;
        background-position: right bottom;
        height: 6px;
    }
    .main-table .top-dt-b
    {
        background-image: url('../image/SaleOrder/top_a.png');
        background-repeat: repeat-x;
        background-position: left bottom;
        height: 6px;
    }
    .main-table .top-dt-c
    {
        background-image: url('../image/SaleOrder/right_a.png');
        background-repeat: no-repeat;
        background-position: left bottom;
        height: 6px;
        width: 6px;
    }
    .main-table .left-dt-a
    {
        background-image: url('../image/SaleOrder/left_c.png');
        background-repeat: repeat-y;
        background-position: right top;
        width: 3px;
    }
    .main-table .right-dt-a
    {
        background-image: url('../image/SaleOrder/rigth_c.png');
        background-repeat: repeat-y;
        background-position: left bottom;
        width: 6px;
    }
    .main-table .bottom-dt-a
    {
        background-image: url('../image/SaleOrder/bottom_a.png');
        background-repeat: no-repeat;
        background-position: right top;
        width: 3px;
        height: 7px;
    }
    .main-table .bottom-dt-b
    {
        background-image: url('../image/SaleOrder/bottom_b.png');
        background-repeat: repeat-x;
        background-position: center top;
        height: 7px;
    }
    .main-table .bottom-dt-c
    {
        background-image: url('../image/SaleOrder/bottom_c.png');
        background-repeat: no-repeat;
        background-position: left top;
        width: 6px;
        height: 7px;
    }
</style>
<script language="javascript" type="text/javascript">
    var AutiMingXi = [];
    var MingXi = [];  // $("#txtJingPinAutiMingXi").val()
    $(function () {
        var strAuti = $("#txtJingPinAutiMingXi").val();
        var str = $("#txtJinPingMingXi").val();
        if (strAuti != null) {
            AutiMingXi = $.parseJSON(strAuti);
        }
        if (str != null) {
           MingXi= $.parseJSON(str);
        }
        $("#txtJingPinFei").numberbox({
            min: 0,
            precision: 2

        });

        $("#lnkSelectJingPin").click(function () {
            var strOrderId = $('#hidOrderID').val();
            var strJpAddTimes = $('#hidJingPinAddTimes').val();
            var href = "JingPinSevice.aspx?tabdata=12345&type=" +
                    document.getElementById("txtWangDian").value + "&jingPinType=" +
                    document.getElementById("txtJingPinType").value;
            var SizeZ = "dialogWidth:850px;dialogHeight:540px;center:yes;edge:sunken;help:no;resizable:no;scroll:yes;status:no;";
            var returnValue = window.showModalDialog(href, window, SizeZ);
            dggrid();
        });
        $("#txtJingPinFei").change(function () {
            SetJingPin();

        });

        $("#lnkJingPinPrint").click(function () {
            var l = location.href;
            if (l.indexOf("172") > 0) {
                location.href = "http://172.19.139.134:8081/info/NSaleOrderPrintByOrderIdFlag.aspx?orderId=" + $('#hidOrderID').val() + "&flag=0&PiCi=0";

            }

            if (l.indexOf("192") > 0) {
                location.href = "http://192.168.8.15:8081/info/NSaleOrderPrintByOrderIdFlag.aspx?orderId=" + $('#hidOrderID').val() + "&flag=0&PiCi=0";

            }
            if (l.indexOf("183") > 0) {
                location.href = "http://183.62.156.183:8081/info/NSaleOrderPrintByOrderIdFlag.aspx?orderId=" + $('#hidOrderID').val() + "&flag=0&PiCi=0";

            }

            //  location.href = "http://192.168.8.20:8081/info/NSaleOrderPrintByOrderIdFlag.aspx?orderId=" + $('#hidOrderID').val() + "&flag=0&PiCi=0";

        });
        $("#lnkPeiJianPrint").click(function () {

            location.href = "print/saleOrderYuanChangJPPrint.aspx?orderId=" + $('#hidOrderID').val() + "&flag=0&PiCi=0";

        });

        dggrid();
    });

    function Audit() {

        var u = "../FlowBusi/flowBusiBegin.aspx?";
        u = u + "flowType=JingPinChange"; //流程类型
        u = u + "&thisStepId=0"; //当前步骤 代表当前步骤为第一步
        u = u + "&flowTitle=" + $("#lblOrderNum").text();
        u = u + "&busiId=" + $("#txtAutiBillGuid").val() + "&d=" + new Date();

        //弹出对话框

        var SizeZ = "dialogWidth:550px;dialogHeight:350px;center:yes;help:no;resizable:no;scroll:no;status:no;";
        var returnValue = window.showModalDialog(u, "", SizeZ);
        return true;
    }

    function dggrid() {
            $("#dgdata").datagrid("loadData",MingXi);
            $("#dgdata2").datagrid("loadData",AutiMingXi);
    }
    function dgdatarowstyle(index, row) {
        if (AutiMingXi.length!=0) {
            for (var i = 0; i < AutiMingXi.length; i++) {
                if (AutiMingXi[i].accId == row.accId && AutiMingXi[i].regQty == row.regQty) {
                   
                   return '';
               }
               if (AutiMingXi[i].accId == row.accId && AutiMingXi[i].regQty != row.regQty) {

                   return '';
               }

           }
           return 'color:green;';
        }
       return '';
      
    }
     function dgdata2rowstyle(index,row){
       
             for (var i = 0; i <MingXi.length; i++) {
                 if (MingXi[i].accId == row.accId) {
                     if (MingXi[i].regQty == row.regQty) {
                         return "";
                     }
                     return '';
                 }
                  
             }
         return 'color:red;';
     }
     function regqtyformate(value, row, index) {
         for (var i = 0; i < MingXi.length; i++) {
             if (MingXi[i].accId == row.accId) {
                 if (MingXi[i].regQty == row.regQty) {
                     return "";
                 }
                 return 'color:blue;font-weight: bold';
             }

         }
         return '';
     }

    function goodsReturns(tablData, saleValue, costPrice, wangDian, jingPinType, strAccIdDel, strAccIdIns, JPCostPrice) {
        document.getElementById("txtJingPinAutiMingXi").value = tablData;
        document.getElementById("hidMaxJingPinFei").value = saleValue;
        document.getElementById("hidMinJingPinFei").value = costPrice;
       
        $("#lblJingPinFei").text(saleValue);
        $("#hidModifyJPFei").val(saleValue);

        document.getElementById("txtWangDian").value = wangDian;
        document.getElementById("txtJingPinType").value = jingPinType;

        document.getElementById("hidAccIdDel").value = strAccIdDel;
        document.getElementById("hidAccIdIns").value = strAccIdIns;
        var strAuti = $("#txtJingPinAutiMingXi").val();
        
        if (strAuti != null) {
            AutiMingXi = $.parseJSON(strAuti);
        }
    }

    function ShowTitle(title) {
      
        var obj = event.srcElement;
        obj.title = title;
       
    }
   
</script>
<body>
    <form name="form1" method="post" action="OrderJingPinDetail.aspx?OrderId=bb48b67f-fabd-44b6-92ea-5e424a1c79b4" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTEzNTE3OTk4Mw9kFgICAQ9kFhYCGw8PFgIeBFRleHQFD+W+heaPkOS6pOWuoeaguGRkAhwPFgIfAGVkAh0PDxYCHwAFDFhTRDIwMTUwMTA1MWRkAh4PDxYCHwAFCeabuee6oueOsmRkAh8PDxYCHwAFBuWImOWJkWRkAiAPDxYCHwAFDTIuNUznsr7oi7HniYhkZAIhDw8WAh8ABQoyMDE1LzAxLzA5ZGQCIw8PFgIfAAUEMC4wMGRkAiYPDxYCHgdWaXNpYmxlZ2RkAioPDxYCHwAFDOS8oOmAgeeyvuWTgWRkAiwPDxYCHwFoZGRk/kf5fBHCb1xfuPa5reNQKt05lYM=" />
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


    <input name="txtAutiBillGuid" type="hidden" id="txtAutiBillGuid" value="41a26fa6-2ef9-44df-b689-74c3e3548b53" />
    <input name="txtLastBillGuid" type="hidden" id="txtLastBillGuid" />
    <input name="txtJinPingChengBen" type="hidden" id="txtJinPingChengBen" />
    <input name="txtJinPingLiRun" type="hidden" id="txtJinPingLiRun" />
    <input name="txtJinPingMingXi" type="hidden" id="txtJinPingMingXi" value="[]" />
    <input name="txtJingPinAutiMingXi" type="hidden" id="txtJingPinAutiMingXi" value="[]" />
    <input name="txtJinPingMingXiOld" type="hidden" id="txtJinPingMingXiOld" />
    <input name="txtWangDian" type="hidden" id="txtWangDian" />
    <input name="txtJingPinType" type="hidden" id="txtJingPinType" />
    <input name="hidAccIdDel" type="hidden" id="hidAccIdDel" />
    <input name="hidAccIdIns" type="hidden" id="hidAccIdIns" />
    <input name="hidJingPinStatus" type="hidden" id="hidJingPinStatus" />
    <input name="hidJingPinStatusBak" type="hidden" id="hidJingPinStatusBak" />
    <input name="hidJingPinAddTimes" type="hidden" id="hidJingPinAddTimes" />
    <input name="hidJPSettlement" type="hidden" id="hidJPSettlement" value="0" />
    <input name="hidOrderID" type="hidden" id="hidOrderID" value="bb48b67f-fabd-44b6-92ea-5e424a1c79b4" />
    <input name="hidVirtualOrderId" type="hidden" id="hidVirtualOrderId" />
    <input name="hidYZJingPinQty" type="hidden" id="hidYZJingPinQty" />
    <input name="hidChuKuJPQty" type="hidden" id="hidChuKuJPQty" />
    <input name="hidCarId" type="hidden" id="hidCarId" />
    <input name="hidTiCheDate" type="hidden" id="hidTiCheDate" />
    <input name="hidMonthLimit" type="hidden" id="hidMonthLimit" value="1" />
    <input type="hidden" name="hidModifyJPFei" id="hidModifyJPFei" />
    <input name="hidBillGuid" type="hidden" id="hidBillGuid" value="b3968c7f-7546-4de8-b798-e6a43f66c2b5" />
    <input type="hidden" name="hidCanChuanSong" id="hidCanChuanSong" />
    <input type="hidden" name="hidMaxJingPinFei" id="hidMaxJingPinFei" value="0.00" />
    <input type="hidden" name="hidMinJingPinFei" id="hidMinJingPinFei" value="0.00" />

                <div class="title">
                    <table style="width: 100%">
                        <tr>
                            <td class="titlebg" style="padding-left: 3%;">
                                <span class="titleSpan">精品明细</span>
                            </td>
                            <td class="cssTd">
                               
                            </td>
                            <td class="cssTd" style="padding-right: 3%; text-align: right;">
                                <div class="cssDivStatus">
                                    <span id="lblJingPinStatus">待提交审核</span>
                                    
                                    </div>
                            </td>
                        </tr>
                    </table>
                </div>
                <table style="width: 100%">
                    <tr>
                        <td colspan="3" style="font-size: small; font-weight: normal; font-style: normal;
                            font-family: 微软雅黑; padding-left: 3%;">
                             定单号：<span id="lblOrderNum" style="color:Red;">XSD201501051</span>
                            &nbsp;车主名：<span id="lblCustName" style="color:Red;">曹红玲</span>
                            &nbsp;销售员：<span id="lblSalor" style="color:Red;">刘剑</span>
                            &nbsp;车辆型号：<span id="lblCheXing" style="color:Red;">2.5L精英版</span>
                            &nbsp;定单日期：<span id="lblOrderDate" style="color:Red;">2015/01/09</span>

                        </td>
                    </tr>
                </table>
               
               <p><span style="color: Green;">"绿色" </span> 表示删除的精品，<span style="color: Red">"红色"</span>表示增加的精品，右侧列表中 <span style="font-weight: bold;">"商品数量"</span><span style="color: blue;font-weight: bold;">加粗深蓝</span>表示数量有改动 </p>
                <div style="width: 920px;style="overflow: auto;">
                    <div style="width: 450px; float:left;" >
                  
                        <table id="dgdata" title='变更前 精品费(0.00)' class="easyui-datagrid" style="height: 380px;" data-options="
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
				pagination:true,
                idfield:'OrderGuid',
                 pagination:false,
                rowStyler:dgdatarowstyle,
                remoteSort:false">
                            <thead>
                                <tr>
                                    <th data-options="field:'accId',width:80" nowrap="nowrap">
                                        商品编号
                                    </th>
                                    <th data-options="field:'accName',width:140" nowrap="nowrap">
                                        商品名称
                                    </th>
                                    <th data-options="field:'unit',width:30" nowrap="nowrap">
                                        单位
                                    </th>
                                    <th data-options="field:'regQty',width:30" nowrap="nowrap">
                                        数量
                                    </th>
                                    <th data-options="field:'salePrice',width:60" nowrap="nowrap">
                                        实际售价
                                    </th>
                                      <th   data-options="field:'isDiscount',width:30,formatter: function (value, rowdata, rowIndex) {
                              
                        return '<input type=\'checkbox\' disabled=\'true\' '+(rowdata.isDiscount=='true'? 'checked=\'checked\'':'')+' onclick=\'chekboxClick(this)\' name=\'PD\' value=\''+rowIndex+'\' >';}">
                            赠送
                                </th>
                                    <th data-options="field:'origPrc',width:50" nowrap="nowrap">
                                        单价
                                    </th>
                                    <th data-options="field:'JPType',width:100 ,hidden:true">
                                        精品类型
                                    </th>
                                    <th data-options="field:'avgCost',width:60 ,hidden:true">
                                        成本
                                    </th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                    <div style="width: 450px; float:left;" title=""  
                        style="overflow: auto;">

                       
                        <table title="变更后 精品费(0) 状态：（待提交审核）" id="dgdata2" class="easyui-datagrid" style="height: 380px;"
                            data-options="
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
				pagination:true,
                idfield:'OrderGuid',
                 pagination:false,
                 rowStyler:dgdata2rowstyle,
                remoteSort:false">
                            <thead>
                                <tr>
                                    <th data-options="field:'accId',width:80" nowrap="nowrap">
                                        商品编号
                                    </th>
                                    <th data-options="field:'accName',width:120" nowrap="nowrap">
                                        商品名称
                                    </th>
                                    <th data-options="field:'unit',width:30" nowrap="nowrap">
                                        单位
                                    </th>
                                    <th data-options="field:'regQty',width:30,styler:regqtyformate" nowrap="nowrap">
                                        数量
                                    </th>
                                      <th data-options="field:'salePrice',width:60" nowrap="nowrap">
                                        实际售价
                                    </th>
                                      <th   data-options="field:'isDiscount',width:30,formatter: function (value, rowdata, rowIndex) {
                              
                        return '<input type=\'checkbox\' disabled=\'true\' '+(rowdata.isDiscount=='true'? 'checked=\'checked\'':'')+' onclick=\'chekboxClick(this)\' name=\'PD\' value=\''+rowIndex+'\' >';}">
                            赠送
                                </th>
                                    <th data-options="field:'origPrc',width:50" nowrap="nowrap">
                                        单价
                                    </th>
                                    <th data-options="field:'JPType',width:100,hidden:true ">
                                        精品类型
                                    </th>
                                    <th data-options="field:'avgCost',width:60 ,hidden:true">
                                        成本
                                    </th>
                                </tr>
                            </thead>
                        </table>
               </div>
               </div>
                <table title='' height="40px" align="right" cellpadding="2" cellspacing="2" width="100%"> 
                 
                    <tr>
                        <td  >
                        
                            原精品费：<input name="txtOldJingPinFei" type="text" value="0.00" readonly="readonly" id="txtOldJingPinFei" style="width:60px;" />
                            <span id="lblJingPinWord" onmousemove="if(window.event.ctrlKey){ ShowTitle(document.getElementById('hidMinJingPinFei').value+'#'+ document.getElementById('hidMaxJingPinFei').value);}">精品费：</span>
                            <input name="txtJingPinFei" type="text" id="txtJingPinFei" class="easyui-numberbox " style="width:70px;" />
                         
                        </td>
                        <td>
                            <a onclick=" return TiShi();" id="lnkSave" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSave','')">保存</a>
                        </td>
                        <td>
                            <a onclick="return Audit();" id="lnkAudit" class="easyui-linkbutton" href="javascript:__doPostBack('lnkAudit','')">提交审核</a>
                             <a id="lnkbtnClearAuti" class="easyui-linkbutton" href="javascript:__doPostBack('lnkbtnClearAuti','')">清除待审</a>
                            <a id="lnkUpStatus" class="easyui-linkbutton" href="javascript:__doPostBack('lnkUpStatus','')">状态更新</a>
                            <a id="lnkSendJingPin" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSendJingPin','')">传送精品</a><a onclick="return false;" id="lnkSelectJingPin" class="easyui-linkbutton" data-options="plain:false,iconCls:'icon-search'" href="javascript:__doPostBack('lnkSelectJingPin','')"></a>
                            
                            <a onclick="return false;" id="lnkPeiJianPrint" class="easyui-linkbutton" href="javascript:__doPostBack('lnkPeiJianPrint','')">配件打印</a>
                        </td>
                        <td id="tdSendJingPin">
                            <a id="lnkbtnUpStatus" href="javascript:__doPostBack('lnkbtnUpStatus','')"></a>
                        </td>

                       
                        
                        
                    </tr>
                </table>
           
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="9EDF361E" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWJgLmwouoBwK6q42DCgL/p93iCgLg9PTUDgLF/JHcCQKW6a+ACwLJrKKWBQKhurweArnc4soDAvSlu7kFApH19sMBApuDsK4EAoSEnMUBAsmT94sGApjvkugLAt6HmusDAvmq1dgGAtqrtJoIAqKEq/8MAtnC85sPAtTKjZUIAtSVhNYEAsqCvqoFAoWfveQEAq/GxNkGAoW1yJIKAo+p7LwFApfppB4CyP+Z4wYCl8CmGwKj7e2BCALLyIbwDgL+8cifAwL9pfyHAgKpseCaAQLKp/DxBgLM+43KCgLi+e/MBaQ19MIinI9NryT7q/BZgrVA/8mS" />
</div></form>
    <script language="javascript" type="text/javascript">

        function SetJingPin() {

            var decOldJingPinFei = parseFloat(document.getElementById("txtOldJingPinFei").value);
            var decChengBen = parseFloat(document.getElementById("hidMinJingPinFei").value);
            var decShouJia = parseFloat(document.getElementById("hidMaxJingPinFei").value);
            var decJingPin = parseFloat(document.getElementById("txtJingPinFei").value);
            if (isNaN(decJingPin)) {
                alert("输入的金额不是有效格式！");
                document.getElementById("txtJingPinFei").focus();

            }
            if (isNaN(decChengBen) || isNaN(decShouJia)) {
                document.getElementById("txtJingPinFei").value = document.getElementById("txtOldJingPinFei").value;

            }

            if (decJingPin < decChengBen) {
                document.getElementById("txtJingPinFei").value = decChengBen.toString();
            }
            if (decJingPin > decShouJia) {
                document.getElementById("txtJingPinFei").value = decShouJia.toString();
            }
        }

        function TiShi() {

            var jpFei = $("#txtJingPinFei").numberbox("getValue");
            jpFei = (jpFei == null || jpFei == '' || jpFei == undefined) ? '0' : jpFei;
            if (parseFloat(jpFei) == 0) {
                return confirm("精品费为0，确定删除所有精品吗？");
            } else {
            return true;
            }
         }


        function ShowDetail() {
            alert(document.getElementById("txtWangDian").value);
            return false;
        }

        function ShowJingPin() {

            return false;
        }

        function SendJingPin() {
            if (confirm("精品清单传送到润昇用品系统后将进行领料安装，请确认？")) {
                if ($('#hidVirtualOrderId').val().length > 10) {
                    alert("该定单含预装精品，请确认！");
                    return true;
                }
            }
            else {
                alert("未传送！");
                return false;
            }
        }
    </script>
</body>
</html>