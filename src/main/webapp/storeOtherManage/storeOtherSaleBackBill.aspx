 
<html>
<head><title>
	销售退货单
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="storeOtherSaleBackBill.aspx?j=0&amp;d=Thu+Jan+08+2015+11%3a50%3a49+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTIwNjAzMDU2OTkPZBYCAgEPZBYIAgUPDxYCHgRUZXh0BQgyMDE1LTEtOGRkAg0PEA8WBh4ORGF0YVZhbHVlRmllbGQFAXYeDURhdGFUZXh0RmllbGQFAXYeC18hRGF0YUJvdW5kZ2QQFQMM6LSo6YeP6Zeu6aKYDOa7numUgOW6k+WtmAAVAwzotKjph4/pl67popgM5rue6ZSA5bqT5a2YABQrAwNnZ2dkZAIPDxAPFgYfAgUBYh8BBQFhHwNnZBAVAhXkuZ3msZ/kuLDnlLDphY3ku7bku5MAFQIFNjAxMkEAFCsDAmdnZGQCFQ8QZGQWAWZkZF2iDnsy+bR0JPIQa19gDyaH0DCB" />
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


    <div style="margin-left:5px;margin-top:2px;" >
    <div>
    <table border="0" style="width:950px;border-bottom:1px solid #b8b8b8;"">
        <tr><td class="titlebg"><span>配件管理</span>(销售退货单)
         </td><td align="right">
           </td></tr>
         </table> 
    </div> 
    <div id="divMain">
         <table border="0" width="960px" >
         <tr>
         <td style="text-align:right;">退货单号:</td>
         <td>
         <input name="txtGuid" type="hidden" id="txtGuid" value="96a89bac-d0e8-4e99-84b4-ae8fb2c5e84a" />
         <input name="txtBillNo" type="text" value="等待生成中" maxlength="30" readonly="readonly" id="txtBillNo" style="width:138px;" /> </td>
         <td  style="text-align:right;">退货日期:</td>
         <td ><input name="txtTuiHuoDate" type="text" value="2015-1-8" readonly="readonly" id="txtTuiHuoDate" style="width:138px;" /> </td>
         <td  style="text-align:right;"><span class="requireSpan">*&nbsp;</span>客户名:</td>
         <td  style="width:140px;">
          <input name="txtCustId" type="hidden" id="txtCustId" />
          <input name="txtCustName" type="text" maxlength="30" id="txtCustName" style="width:100%;" /> </td>
         <td  style="text-align:right;">经手人:</td>
         <td><input name="txtJingShouRen" type="text" id="txtJingShouRen" /> </td>
         </tr>
         <tr>
         <td  style="text-align:right;"><span class="requireSpan">*&nbsp;</span>退货类型:</td>
         <td>
         <select name="ddlTuiHuoSort" id="ddlTuiHuoSort" style="width:138px;">
	<option value="质量问题">质量问题</option>
	<option value="滞销库存">滞销库存</option>
	<option selected="selected" value=""></option>

</select>
         </td>
        <td  style="text-align:right;"><span class="requireSpan">*&nbsp;</span>所属仓库:</td>
         <td>
         <select name="ddlCangKu" id="ddlCangKu" style="width:138px;">
	<option value="6012A">九江丰田配件仓</option>
	<option selected="selected" value=""></option>

</select>
         </td>
         <td  style="text-align:right;">发票号码:</td>
         <td>
          <input name="txtFaPiaoHao" type="text" maxlength="20" id="txtFaPiaoHao" style="width:100%;" />
         </td>
         </tr>
         <tr>
         <td  style="text-align:right;">单据备注:</td>
         <td colspan="5">
         <input name="txtRemarks" type="text" maxlength="100" id="txtRemarks" style="width:100%;" />
         </td>
         <td></td>
         <td>
         <select name="ddlStatus" id="ddlStatus" disabled="disabled" style="width:138px;">
	<option selected="selected" value="0">待提交审核</option>
	<option value="1">审核中</option>
	<option value="2">审核完毕</option>
	<option value="3">单据已退回</option>
	<option value="4">流程已删除</option>

</select>
         </td>
         </tr>
         </table>
    </div>

      <div id="divBtnInfo">
            <table border="0"  style="width:945px;background-color:#e4e4e4;" >
                <tr>  
                   <td>销售退库单明细</td>
                    <td align="right">
                       <a onClick="return printThis();" 
                       id="btnPrint" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-print'"  >打印</a>

                       <a onClick="return historyShow('','');" 
                       id="A1" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"  >审核日志</a>


                      
                      
                      <a onClick="return saveCheck();" id="btnSave" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-save'" href="javascript:__doPostBack('btnSave','')">保存</a>
                                            
                       
                    </td>
                </tr>
            </table>
        </div>
      
      <div>
      <!--退库数据明细 start-->
        <table   width="945px" border="1" cellspacing="1" cellpadding="0"  
        style="word-break:break-all;border-collapse:collapse;border:1px solid gray;" > 
        
        </table>
      <!--退库数据明细 end-->       
      </div>

      </div>

    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="DF158358" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWFAKOtZKCAQK9m8KuBQLa9PCNDgLl4LHtBAK/ntGBCALxmfnCDQKrlqPFBQLduO7ZBgL8zYO/CQKBiNDOCAKasfn9BwKOzeSDBALE0fWUBQKZvM/mBALi8POYBgL98POYBgL88POYBgL/8POYBgL+8POYBgKct7iSDN657MudyEFtROYgZl7VC9x0AUe9" />
</div></form>

     <script language="javascript" type="text/javascript" >

         /*流程专用*/
         function addFlow() {
             var u = "../FlowBusi/flowBusiBegin.aspx?";
             u = u + "flowType=storeOtherSaleBackInsert"; //流程类型
             u = u + "&thisStepId=0"; //当前步骤 代表当前步骤为第一步
             u = u + "&flowTitle=" + $("#txtBillNo").val();
             u = u + "&busiId=&d=" + new Date();

             //弹出对话框
             var SizeZ = "dialogWidth:550px;dialogHeight:350px;center:yes;help:no;resizable:no;scroll:no;status:no;";

             var returnValue;
             if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                 returnValue = window.open(u, "exaInfo", "height=350,width=550,top=130,left=480,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
                 returnValue.focus();
             } else {
                 returnValue = window.showModalDialog(u, "exaInfo", SizeZ);
             }
             if (returnValue == undefined) {
                 returnValue = window.returnValue;
             }
             //关闭当前窗体
             if (returnValue == "1") {
                 location.href = "storeOtherSaleBackBill.aspx?billGuid=&d=" + new Date();
             }
             return false;

         }

         function printThis() {
             window.open("../storeOtherManage/storeOtherSalePrint.aspx?billGuid=&d=" + new Date());

             return false;
         }


         $(function () {
             if ($("#ddlStatus").val() != "0" && $("#ddlStatus").val() != "3" && $("#ddlStatus").val() != "4") {
                 $("span[name='shopMdf']").css("display", "none");
             }

         });

    </script>

    <script language="javascript" type="text/javascript" >


        function mdfInfo(thisDetailGuid) {
            //状态判断
            if ($("#ddlStatus").val() != "0" && $("#ddlStatus").val() != "3" && $("#ddlStatus").val() != "4") {
                return;
            }
            //修改信息
            var u = "storeOtherSaleBackShopMdf.aspx?billGuid=&detailGuid=" + thisDetailGuid + "&d=" + new Date();
            var SizeZ = "dialogWidth:550px;dialogHeight:550px;center:yes;help:no;resizable:no;scroll:yes;status:no;";



            var returnValue;
            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                returnValue = window.open(u, "mdfShopIdInfo", "height=550,width=600,top=130,left=480,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
                returnValue.focus();
            } else {
                returnValue = window.showModalDialog(u, "mdfShopIdInfo", SizeZ);
                //关闭当前窗体
                location.href = "storeOtherSaleBackBill.aspx?operSort=mdf&billGuid=&d=" + new Date();
            } 

            return false;
        }

        //选择商品信息
        function shopChoice() {
            var u = "storeOtherSaleBackChoiceShopId.aspx?billGuid=&d=" + new Date();
            var SizeZ = "dialogWidth:750px;dialogHeight:350px;center:yes;help:no;resizable:no;scroll:yes;status:no;";


            var returnValue;
            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                returnValue = window.open(u, "shopIdChoice", "height=500,width=750,top=130,left=480,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
                returnValue.focus();
            } else {
                returnValue = window.showModalDialog(u, "shopIdChoice", SizeZ);
                //关闭当前窗体
                location.href = "storeOtherSaleBackBill.aspx?operSort=mdf&billGuid=&d=" + new Date();
            } 

            return false;
        }

      


        var btnFlag = "0";
        function saveCheck() {
            //验证必填项
            if (btnFlag != "0") { return false; } else { btnFlag = "1"; $("#btnSave").attr("disabled", "disabled"); }
            var err = "";
            /*必填项验证 start*/
            if ($("#ddlCangKu").val() == "") { err += "仓库必须选择！\n"; }
            if ($("#ddlTuiHuoSort").val() == "") { err += "退货类型必须选择！\n"; }
            if ($("#txtCustName").val() == "") { err += "客户名必须选择！\n"; }
            
            if (err != "") {
                alert(err);
                btnFlag = "0";
                $("#btnSave").attr("disabled", false);
            } else {
                __doPostBack('btnSave', '');
            }

            return false;
        }

    
    </script>


</body>
</html>