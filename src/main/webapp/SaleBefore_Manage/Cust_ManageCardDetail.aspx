
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>

</title>
    <base target="_self" />
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=2dfbab1f71764dc182eb87e4e0aad2fc" type="text/javascript"></script><link href="../style/common.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<style type="text/css">
    html, body
    {
        overflow: hidden;
    }
    .TdLeft
    {
        width: 30%;
        text-align: center;
    }
    .TdRight
    {
        width: 70%;
        text-align: left;
    }
    .TdCustLeft
    {
        width: 90px;
        text-align: center;
        background-color: Silver;
    }
    .TdCustRight
    {
        width: 135px;
        text-align: left;
        padding-left: 10px;
        background-color: Silver;
    }
    .lblCss
    {
        width: 110px;
    }
    .txtGivCss
    {
        border-width: 0px;
    }
    .ordertable td
    {
        padding: 0px;
        margin: 0px;
        border-bottom-style: dashed;
        border-bottom-width: 1px;
        border-bottom-color: #CCCCCC;
    }
</style>
<script type="text/javascript" language="javascript">

    function imgChange(obj) {



    }
    $(function () {

        $(".linkbutton").linkbutton();
        $("#uploadPic").click(function () {

            var href = "../SaleBefore_Manage/picEditor.aspx?prarentGuid=bb48b67f-fabd-44b6-92ea-5e424a1c79b4";
            //var SizeOpen = 'height=680,width=960,center=yes,toolbar=no,menubar=no,scrollbars=yes, resizable=yes,location=no, status=no';
            // window.open(href, 'win', SizeOpen);
            window.location.href = href;
        });
    });
    function CloseWindow() {
        window.opener = null;
        window.open("", "_self");
        window.close();
    }

    function selectImage() {
        return true;
    }
</script>
<body>
    <form name="form1" method="post" action="Cust_ManageCardDetail.aspx?OrderID=bb48b67f-fabd-44b6-92ea-5e424a1c79b4" id="form1" style="padding: 0px; margin: 0px" enctype="multipart/form-data">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNDE1MTY2NjA4D2QWAgIBDxYCHgdlbmN0eXBlBRNtdWx0aXBhcnQvZm9ybS1kYXRhFiwCDQ8PFgIeBFRleHQFCeabuee6oueOsmRkAg8PDxYCHwEFDOS4quS6uui0rei9pmRkAhEPDxYCHwEFA+Wls2RkAhMPDxYCHwEFEDE5NjktMS04IDA6MDA6MDBkZAIVDw8WAh8BBQnouqvku73or4FkZAIXDw8WAh8BBRIzNjA0MjIxOTY5MDEwODQwMjlkZAIZDw8WAh8BBRfmm7nnuqLnjrIo5r2Y6Iux6b6Z6L2sKWRkAhsPDxYCHwEFCzE1MTc5MjA4NjI4ZGQCHQ8PFgIfAQUq55Ge5piM5biC56CB5aS06ZWH55+z5rK55YyW5bel5YWs5Y+45LmZ5Yy6ZGQCHw8PFgIfAWVkZAIhDw8WAh8BBQsxNTE3OTIwODYyOGRkAiMPDxYCHwFlZGQCJQ8PFgIfAQUG5YW25LuWZGQCKw8PFgIfAWVkZAItDw8WAh8BBQdINDI5ODgzZGQCLw8PFgIfAQUJ6ZOC6Z2S6ZOcZGQCMQ8PFgIfAQUJMjE3ODAwLjAwZGQCMw8PFgIfAQURTEZNSjM0QUY4RTMwNDczNjVkZAI1Dw8WAh8BBQQwLjAwZGQCQQ8PFgIfAWVkZAJDDw8WAh4ISW1hZ2VVcmwFNi4uL1NhbGVCZWZvcmVfTWFuYWdlL1Nob3dQaG9udG9CeUJ5dGUuYXNweD9JbWFnZV9HdWlkPWRkAkcPPCsADQBkGAEFCmdpdkh1aUZhbmcPZ2TB5u0a9iJfDlqxs2jGbZosiOIySQ==" />
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
        <table>
            <tr>
                <td class="titlebg">
                    <span class="titleSpan">用户卡</span>
                </td>
                <td id="fileTd">
                    &nbsp;<input type="file" name="fuloadImage" id="fuloadImage" />
                </td>
                <td>                                            
                    <a onclick="return selectImage();" id="lnkbtnPicture" class="linkbutton" href="javascript:__doPostBack('lnkbtnPicture','')">上传</a>
                                            &nbsp;</td>
                <td>
                    <a id="lnkbtnSave" class="linkbutton" iconCls="icon-save" href="javascript:__doPostBack('lnkbtnSave','')">保存</a>
                </td>
                <td>
                    <a id="lnkbtnFangKuiTable" class="linkbutton" href="javascript:__doPostBack('lnkbtnFangKuiTable','')">反馈表</a>
                </td>
                <td>
                    <a id="lnkbtnZhuangACard" class="linkbutton" href="javascript:__doPostBack('lnkbtnZhuangACard','')">转A卡</a>
                </td>
                <td>
                    <a onclick="CloseWindow();" id="lnkbtnCancel" class="linkbutton" iconCls="icon-cancel" href="javascript:__doPostBack('lnkbtnCancel','')">取消</a>
                </td>
            </tr>
        </table>
    </div>
    <div style="padding: 10px; overflow: auto;">
        <table width="100%">
            <tr>
                <td>
                    <div>
                        <table class="ordertable" style="width: 100%; border-collapse: collapse;" cellpadding="2"
                            cellspacing="5">
                            <tr>
                                <td nowrap="nowrap" width="100px">
                                    客户名称：
                                </td>
                                <td nowrap="nowrap">
                                    <span id="lblCustName" class="lblCss">曹红玲</span>
                                </td>
                                <td nowrap="nowrap" width="100px">
                                    客户性质：
                                </td>
                                <td nowrap="nowrap">
                                    <span id="lblCustXingZhi" class="lblCss">个人购车</span>
                                </td>
                            </tr>
                            <tr>
                                <td nowrap="nowrap">
                                    性 别：
                                </td>
                                <td nowrap="nowrap">
                                    <span id="lblCustSex" class="lblCss">女</span>
                                </td>
                                <td nowrap="nowrap">
                                    出生日期：
                                </td>
                                <td nowrap="nowrap">
                                    <span id="lblCustBirthday" class="lblCss">1969-1-8 0:00:00</span>
                                </td>
                            </tr>
                            <tr>
                                <td nowrap="nowrap">
                                    证件类别：
                                </td>
                                <td nowrap="nowrap">
                                    <span id="lblCustZhengJianSort" class="lblCss">身份证</span>
                                </td>
                                <td nowrap="nowrap">
                                    证件号码：
                                </td>
                                <td nowrap="nowrap">
                                    <span id="lblCustZhengJianHao" class="lblCss">360422196901084029</span>
                                </td>
                            </tr>
                            <tr>
                                <td nowrap="nowrap">
                                    联系人
                                </td>
                                <td nowrap="nowrap">
                                    <span id="lblJBRenName" class="lblCss">曹红玲(潘英龙转)</span>
                                </td>
                                <td nowrap="nowrap">
                                    联系电话：
                                </td>
                                <td nowrap="nowrap">
                                    <span id="lblJBRenTel" class="lblCss">15179208628</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    联系地址：
                                </td>
                                <td nowrap="nowrap" colspan="3">
                                    <span id="lblJBRenAddress">瑞昌市码头镇石油化工公司乙区</span>
                                </td>
                            </tr>
                            <tr>
                                <td nowrap="nowrap">
                                    邮 编：
                                </td>
                                <td nowrap="nowrap">
                                    <span id="lblJBRenYouBian" class="lblCss"></span>
                                </td>
                                <td nowrap="nowrap">
                                    移动电话：
                                </td>
                                <td nowrap="nowrap">
                                    <span id="lblJBRenMobile" class="lblCss">15179208628</span>
                                </td>
                            </tr>
                            <tr>
                                <td nowrap="nowrap">
                                    E－Mail：
                                </td>
                                <td nowrap="nowrap">
                                    <span id="lblJBRenEmail" class="lblCss"></span>
                                </td>
                                <td nowrap="nowrap">
                                    工作/职位：
                                </td>
                                <td nowrap="nowrap">
                                    <span id="lblJBRenJob" class="lblCss">其他</span>
                                </td>
                            </tr>
                            <tr>
                                <td nowrap="nowrap">
                                    兴趣爱好：
                                </td>
                                <td nowrap="nowrap">
                                    <span id="lblJBRenInterest" class="lblCss"></span>
                                </td>
                                <td nowrap="nowrap">
                                    销售日期：
                                </td>
                                <td nowrap="nowrap">
                                    <span id="lblSaleDate" class="lblCss"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    车 型：
                                </td>
                                <td>
                                    <span id="lblCarCheXing" class="lblCss"></span>
                                </td>
                                <td>
                                    发动机号：
                                </td>
                                <td>
                                    <span id="lblCarFaDongJiHao" class="lblCss">H429883</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    颜 色：
                                </td>
                                <td>
                                    <span id="lblCarColor" class="lblCss">铂青铜</span>
                                </td>
                                <td>
                                    车辆价格：
                                </td>
                                <td>
                                    <span id="lblCarPrice" class="lblCss">217800.00</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    车架号：
                                </td>
                                <td>
                                    <span id="lblCarCheJiaHao" class="lblCss">LFMJ34AF8E3047365</span>
                                </td>
                                <td>
                                    精品费：
                                </td>
                                <td>
                                    <span id="lblCarJingPingFei" class="lblCss">0.00</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    车牌号：
                                </td>
                                <td>
                                    <span id="lblCarChePaiHao" class="lblCss"></span>
                                </td>
                                <td>
                                    发票类型：
                                </td>
                                <td>
                                    <span id="lblFaPiaoSort" class="lblCss"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    牌照日期：
                                </td>
                                <td>
                                    <span id="lblPaiZhaoDate" class="lblCss"></span>
                                </td>
                                <td>
                                    注册日期：
                                </td>
                                <td>
                                    <span id="lblZhuCeDate" class="lblCss"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    合同编号：
                                </td>
                                <td>
                                    <span id="lblHeTongBianHao" class="lblCss"></span>
                                </td>
                                <td>
                                    销售顾问：
                                </td>
                                <td>
                                    <span id="lblSalorName" class="lblCss"></span>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td width="320px" text-align:center; vertical-align: top">
                  <input type="button" name="uploadPic" value="裁剪" id="uploadPic" />
                    <img id="PreviewImage" src="../SaleBefore_Manage/ShowPhontoByByte.aspx?Image_Guid=" style="border-color:AliceBlue;border-width:2px;border-style:solid;" />
                </td>
            </tr>
        </table>
        <input name="hidCustID" type="hidden" id="hidCustID" value="AFDCDFE8-074C-48D0-B852-F02FB9146735" />
        <div style="overflow: auto; height: 260px;">
            <div>

</div>
        </div>
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="EF546048" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBwKA8uTTAgL79KneCgKpzvGoAgLYrZqxCQLw7aT0AwKDuN3pBAKa09zHBoSitJn+8GwqDgyw0J+SytogpykD" />
</div></form>
</body>
</html>