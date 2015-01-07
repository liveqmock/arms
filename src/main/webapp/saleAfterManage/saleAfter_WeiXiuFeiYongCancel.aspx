
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	维修单撤销
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="saleAfter_WeiXiuFeiYongCancel.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMjY4NTQ5NDcwD2QWAgIBD2QWAgIDDxAPFgYeDURhdGFUZXh0RmllbGQFAWIeDkRhdGFWYWx1ZUZpZWxkBQFhHgtfIURhdGFCb3VuZGdkEBUDFembt+WFi+iQqOaWr+mFjeS7tuS7kw8qKirmsrnmvIbovoXmlpkAFQMFNjAxOEEFWVEwMDEAFCsDA2dnZ2RkZIC6+UCRaELymNdCY6K3dXa3ccX6" />
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


    <div style="margin-left:5px;">
    <div >
     <table border="0" style="width:960px;border-bottom:1px solid #b8b8b8;"">
        <tr><td class="titlebg"><span>售后管理</span>(维修单撤销)
         </td><td align="right">
           </td></tr>
         </table> 
    </div> 
    <!--按钮区域start-->
    

    <!--按钮区域end-->

    <div>
    <table border="0">
    <tr>
    <td>申请人：</td><td><input name="txtRegMan" type="text" value="陈荣华" id="txtRegMan" style="width:50px;" />
    <input name="txtRegDeptName" type="text" value="深业雷克售后服务部" id="txtRegDeptName" style="width:80px;" /> </td>
    <td>申请时间：</td><td><input name="txtRegDate" type="text" value="2015-01-06 16:13:30" id="txtRegDate" /> </td>
    <td>退货仓库:</td>
    <td style="width:130px;">
    <select name="ddlCangKu" id="ddlCangKu" style="width:100%;">
	<option value="6018A">雷克萨斯配件仓</option>
	<option value="YQ001">***油漆辅料</option>
	<option selected="selected" value=""></option>

</select>
    </td>    
    </tr>
    <tr>
    <td valign="top">申请备注：</td>
    <td valign="top" colspan="5">
     <textarea name="txtRemarks" rows="2" cols="20" id="txtRemarks" style="width:100%;font-weight:bold;color:Blue;">单据撤销：将会清除所有的出库信息,新增维修单</textarea>
    </td>
    </tr>
    <!--维修单明细数据start-->
     <tr>
     <td>维修单号:</td><td>
     <input name="txtSaleAfterGuid" type="text" id="txtSaleAfterGuid" style="display:none;" />
     <input name="txtBillNo" type="text" id="txtBillNo" /> <input type="submit" name="btnSearch" value="S" id="btnSearch" /> </td>
     <td>服务顾问:</td><td><input name="txtFuWuUserId" type="text" readonly="readonly" id="txtFuWuUserId" /></td>
     <td>入厂时间:</td><td><input name="txtRuChangDate" type="text" readonly="readonly" id="txtRuChangDate" style="width:100%;" /></td>
     </tr>

     <tr>
     <td>维修类型:</td><td><input name="txtWeiXiuSort" type="text" readonly="readonly" id="txtWeiXiuSort" /></td>
     <td>实收价格:</td><td><input name="txtShiShou" type="text" readonly="readonly" id="txtShiShou" /></td>
     <td>出厂时间:</td><td><input name="txtChuChangDate" type="text" readonly="readonly" id="txtChuChangDate" style="width:100%;" /></td>
     </tr>



    <!--维修单明细数据end-->

    <!--按钮区域 start-->
    <tr>
    <td colspan="6" style="text-align:right;">
    <a onclick="return historyShow('','');" id="lnkExaLog" class="easyui-linkbutton" >审核日志</a>

     <a onclick="return addFlow();" id="lnkTiJiaoExa" class="easyui-linkbutton" href="javascript:__doPostBack('lnkTiJiaoExa','')">提交审核</a>
     <a onclick="return saveCheck();" id="lnkSave" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSave','')">保存</a>
    </td>
    </tr>
    <!--按钮区域 end-->
    </table>
    
    <!--数据区域start-->

    <!--数据区域end-->
    

    </div>
     

     
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CA70897A" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWEgKEzsT3BAKousz6AwK82r71DwKvh6y6CAKasYGODwKW48CCCAKOzeSDBAKZvM/mBAKvzdfMAQLa9PCNDgKln/PuCgLB84CvCAKD274yAqCpyKEEAqKs2IwEArPx+NkBAv//k98CAqPt7YEIlL+/1QXC47sUE+7ODWvVnpUD1y8=" />
</div></form>

    <script language="javascript" type="text/javascript" >

        //提交流程审核
        function addFlow() {
            var u = "../FlowBusi/flowBusiBegin.aspx?";
            u = u + "flowType=saleAfterWeiXiuCancel"; //流程类型
            u = u + "&thisStepId=0"; //当前步骤 代表当前步骤为第一步
            u = u + "&busiId=&d=" + new Date();
            u = u + "&flowTitle=" + $("#txtBillNo").val();

            //弹出对话框
            var SizeZ = "dialogWidth:550px;dialogHeight:350px;center:yes;help:no;resizable:no;scroll:no;status:no;";
            var returnValue = window.showModalDialog(u, '', SizeZ);

            if (returnValue == "1") {
                location.href = "saleAfter_WeiXiuFeiYongCancel.aspx?saleAFterGuid=&d=" + new Date();
            }
            //关闭当前窗体

            return false;

        }


       

        var btnFlag = "0";
        function saveCheck() {
            if (btnFlag != "0") { return false; } else { btnFlag = "1"; $("#btnSave").css("visibility", "hidden"); }
            var err = "";
            /*必填项验证 start*/
            if ($("#txtRemarks").val() == "") { err += "备注必须填写！\n"; }
            if ($("#txtSaleAfterGuid").val() == "") { err += "单据未选择！\n"; }
            if ($("#ddlCangKu").val() == "") { err += "仓库未选择！\n"; }
            if (err != "") {
                alert(err); btnFlag = "0"; $("#btnSave").attr("visibility", "visible");
                return false;
            }
             
            return true;
        }

    
    </script>

</body>
</html>