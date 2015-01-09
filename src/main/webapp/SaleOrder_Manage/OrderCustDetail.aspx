
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><title>
	客户信息明细
</title>
    <style type="text/css">
        html, body
        {
            overflow: hidden;
            font-family: 微软雅黑;
        }
        table
        {
            border-collapse: collapse;
        }
        td
        {
        }
        input, select
        {
            font-family: 微软雅黑;
        }
        .vessel
        {
        }
        .main-table .top-dt-a
        {
            background-image: url('../image/SaleOrder/left_a.png');
            background-repeat: no-repeat;
            background-position: right bottom;
            height: 3px;
        }
        .main-table .top-dt-b
        {
            background-image: url('../image/SaleOrder/top_a.png');
            background-repeat: repeat-x;
            background-position: left bottom;
            height: 3px;
        }
        .main-table .top-dt-c
        {
            background-image: url('../image/SaleOrder/right_a.png');
            background-repeat: no-repeat;
            background-position: left bottom;
            height: 3px;
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
            height: 3px;
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
        .main-table .background-picture
        {
            background-image: url('../image/SaleOrder/middle.png');
            background-repeat: repeat-x;
            background-position: center top; /*background-attachment: fixed;*/
        }
        
        .conTaable
        {
            width: 880px;
        }
        .conTaable td
        {
            height: 24px;
            text-align: center;
        }
        .conTaable td input
        {
            text-align: left;
        }
        .conTaable td select
        {
        }
    </style>
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=2dfbab1f71764dc182eb87e4e0aad2fc" type="text/javascript"></script><link href="../style/common.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<base target="_self" />
<script type="text/javascript">
    $(function () {
        $("#lnkbtnSendCustInfo").click(function () {
            var href = "../customManage/customGetBySaleOrderInfoOrderGuid.aspx?custGuid=" + $("#hidCustGuid").val();
            //var SizeZ = "dialogWidth:400px;dialogHeight:" + (200 + heightForIE) + "px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;";
            //var returnValue = window.showModalDialog(href, '', SizeZ);
            var SizeZ = "width=400px,height=" + (200 + heightForIE) + "px,center=yes,edge=sunken,help=no,resizable=no,scroll=no,status=no";
            window.open(href, '', SizeZ);
        });
        $("#lnkbtnSave,#lnkbtnSaveCustInfo").click(function () {
            var carnumber = $("#txtCarChePaiHao").val();
            if (carnumber != "" && !checkCarNumber(carnumber)) {
                alert("请输入正确的车牌号码,例如:粤B12345");
                return false;
            }
        });

    });

</script>
<body>
    <form name="form1" method="post" action="OrderCustDetail.aspx?d=Fri+Jan+09+2015+15%3a12%3a56+GMT+0800&amp;&amp;OrderGuid=de8e81b7-f158-4736-a6ea-c9270bc3509e" id="form1" style="padding: 0px; margin: 0px">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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ZTYtMDExZDE2MGFlNDAzJDMxNzRjZTlhLTYwMDEtNDdhMy05MWFkLTVlYWU4MDg4MDQ4MiRmYTI3NTNiZC05ODZjLTRmODUtYjVmNy04OTMzZjcyYzNhM2EkZmQzNjRmN2ItNGFhZi00ZDU2LTllNDAtZWUwZWY1Njk1NzQyJGZiNWU5MDkwLWU2YTItNGE4OS04ZWE0LTM3ZTkxYTU2YzBiMCQ1MTBiZjdjYi1lNTc5LTRhNGItOGU4Yy0yMTY4OTc4Y2IyYjgkMDUwMTAyMDYtZWQ3My00NzIzLThkNWMtY2U3MzRjODk5M2Y2JDIwNzVkODlkLWE0Y2UtNGU2OS1iMTk0LTEwZDVjMmQ5NTRkYSQyM2E3Yjc3NC0zZmY2LTRmYWQtYTM2ZC03Y2QxYTQ3NTNlOTgkYTNjZjdjM2MtZjIyYi00NjdjLTk2YTYtZWEyMTJhMWZiYjAzJDkzZjcwODFhLTM5NDQtNDM1YS05ZjNjLTE1Njc4ZTJiNDAwZiQ2MGE0YTQ5OS0xYjY4LTRiYTgtYTBhNy01ZTY1YWNiMTRmYzMkYTZmNzhkMjAtZDNjYi00NzE0LWE5ODMtMDM4MWY5Njk3ZmFhJDIzMDEwNTk1LTdmNjMtNDRjYi04ZmQ4LTFkOTI2ZjYwMDVjOCQ1NDg4Yjc1MC0xMTFjLTRhZjEtOGExNC1mZjgzYWI3ZDY4OWUkMDFjZWRiMmEtMjVmNC00YWNhLThhMjUtYzA1NmViNzliYmY3JDYzNjk4OWUxLTIwZDQtNGNlNS04NmU2LWE1MGI0NmJiYTc1MiRmNDFhNDYzZi02MzUzLTQwYjEtODY0OS00YmI5ZjJmMzNkMzIkMmM0ZTk1MjYtZmM2Yy00YjljLThjMDItNzlhNjlmM2MyNjRjJDUyNzkxN2VkLTY3ZmUtNDA4My1iMDQ2LTI2OTE0MDJmYjViNiQwZmMzMThhYy0xNjRiLTRjMmQtOTdiYS04ZjdhOTg2MjI1Y2EUKwMaZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dkZAKlAQ8PFgIfAAUV5Lmd5rGf5Liw55Sw5LiJ5ouT5bGVZGQCqQEPDxYCHwBlZGQYAQUeX19Db250cm9sc1JlcXVpcmVQb3N0QmFja0tleV9fFgEFEGNoa0hhb1lvdUppZVNoYW/hChFdDMljIP7/SLpiqS4MQirgqA==" />
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


    <div style="display: none;">
        <input type="hidden" name="hidCustGuid" id="hidCustGuid" value="724573f0-229b-49fb-a01e-f01645a40a4d" />
        <input name="hidChePaiHao" type="hidden" id="hidChePaiHao" />
        <input name="hidOrderID" type="hidden" id="hidOrderID" value="de8e81b7-f158-4736-a6ea-c9270bc3509e" />
        <input name="hidCarId" type="hidden" id="hidCarId" value="82f1fa08-a2e1-4d8f-b7df-00bbeab3ff29" />
        <input name="hidOrderStatus" type="hidden" id="hidOrderStatus" value="0" />
        <input name="hidOrderStatusBak" type="hidden" id="hidOrderStatusBak" />
        <input name="hidOrderJingPinStatus" type="hidden" id="hidOrderJingPinStatus" />
        <input name="hidYZOrderId" type="hidden" id="hidYZOrderId" />
        <input name="hidCompId" type="hidden" id="hidCompId" />
        <input name="hidFuKuanFangShi" type="hidden" id="hidFuKuanFangShi" />
        <input name="hidOrderNaShuiDate" type="hidden" id="hidOrderNaShuiDate" />
        <input name="hidOrderClZCDate" type="hidden" id="hidOrderClZCDate" />
        <input name="hidGouZhiShui" type="hidden" id="hidGouZhiShui" value="6350.00" />
        <input id="chkHaoYouJieShao" type="checkbox" name="chkHaoYouJieShao" /><label for="chkHaoYouJieShao">好友介绍</label>
        <input name="txtCustSex" type="text" value="性别" id="txtCustSex" />
        <input name="txtCustZanZhuZhengHao" type="text" id="txtCustZanZhuZhengHao" style="width:98%;" />
        <input name="txtCustCity" type="text" id="txtCustCity" />
        <input name="txtCustDistrict" type="text" id="txtCustDistrict" />
        <input name="txtCustProvince" type="text" value="所在省份" id="txtCustProvince" />
    </div>
    <div class="title" style="width: 100%;">
        <table style="width: 100%">
            <tr>
                <td class="titlebg" >
                    <span class="titleSpan">客户信息( 开票确认)</span>
                </td>
               
                <td style="text-align: right;">
                    <a onclick=" return ShowOrderInfo();" id="lnkbtnOrderInfo_Q" class="easyui-linkbutton" href="javascript:__doPostBack('lnkbtnOrderInfo_Q','')">订单</a>
                    
                    
                    
                    <a onclick="return ShowFaPiaoDetail();" id="lnkbtnFaPiao" class="easyui-linkbutton" href="javascript:__doPostBack('lnkbtnFaPiao','')">发票</a>
                    <a onclick="return ShouBaoXiuDengJi();" id="lnkbtnBaoXiu" class="easyui-linkbutton" href="javascript:__doPostBack('lnkbtnBaoXiu','')">保修</a>
                    <a onclick="return ShowBaoXianDengJi();" id="lnkbtnBaoXian" class="easyui-linkbutton" href="javascript:__doPostBack('lnkbtnBaoXian','')">保险</a>
                    <a onclick="return ShowCarJingPin();" id="lnkbtnJingPin" class="easyui-linkbutton" href="javascript:__doPostBack('lnkbtnJingPin','')">用品</a>
                    <a onclick="return ShowCarShangPaiWeiTuoPrint();" id="lnkbtnWeiTuo" class="easyui-linkbutton" href="javascript:__doPostBack('lnkbtnWeiTuo','')">上牌委托</a>
                    <a onclick="return ShowRegister();" id="lnkbtnRegister" class="easyui-linkbutton" href="javascript:__doPostBack('lnkbtnRegister','')">注册登记</a>
                    
                    
                    <a onclick="return ShowCustDetail();" id="lnkbtnUserCard" class="easyui-linkbutton" href="javascript:__doPostBack('lnkbtnUserCard','')">用户卡</a>
                    
                    <a onclick=" return false;" id="lnkbtnSendCustInfo" class="easyui-linkbutton" href="javascript:__doPostBack('lnkbtnSendCustInfo','')">重传客户资料</a>
                    <a onclick="return CheckEMail();" id="lnkbtnSaveCustInfo" class="easyui-linkbutton" href="javascript:__doPostBack('lnkbtnSaveCustInfo','')">保存</a>
                </td>
            </tr>
        </table>
    </div>
    <table class="main-table" style="width: 900px;" border="0" cellpadding="0" cellspacing="0"
        align="center">
        <tr>
            <td class="top-dt-a">
            </td>
            <td class="top-dt-b">
            </td>
            <td class="top-dt-c">
            </td>
        </tr>
        <tr>
            <td class="left-dt-a">
            </td>
            <td>
                <table cellpadding="0" cellspacing="0" class="conTaable" border="0" id="tbCustInfo">
                    <tr>
                        <td style="width: 100px;">
                        </td>
                        <td style="width: 100px;">
                            名 义 人:
                        </td>
                        <td colspan="3" style="width: auto;">
                            <div>
                                <input name="txtCustName" type="text" value="徐俊" readonly="readonly" id="txtCustName" style="width:420px;" /></div>
                        </td>
                        <td style="width: 100px;">
                            客户性质:
                        </td>
                        <td>
                            <input name="txtCustSort" type="text" value="个人购车" id="txtCustSort" style="width:160px;" />
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="3" style="width: 100px;">
                            <img alt="" src="../image/SaleOrder/carmingyi.png" style="width: 50px; height: 48px" />
                        </td>
                        <td style="width: 100px;">
                            户籍地址:
                        </td>
                        <td colspan="3" style="width: auto;">
                            <div>
                                <input name="txtCustHuJiAddress" type="text" id="txtCustHuJiAddress" style="width:420px;" /></div>
                        </td>
                        <td style="width: 100px;">
                            职业类别:
                        </td>
                        <td>
                            <input name="txtCustJob" type="text" id="txtCustJob" style="width:160px;" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;">
                            居住地址:
                        </td>
                        <td colspan="3" style="width: auto;">
                            <div>
                                <input name="txtCustAddress" type="text" value="湖口县文桥乡坝桥村八组010号" id="txtCustAddress" style="width:420px;" /></div>
                        </td>
                        <td style="width: 100px;">
                            证件类别:
                        </td>
                        <td>
                            <input name="txtCustZhengJianSort" type="text" value="身份证" id="txtCustZhengJianSort" style="width:160px;" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;">
                            电子邮箱:
                        </td>
                        <td>
                            
                            <input name="txtCustEMail" type="text" id="txtCustEMail" style="width:159px;" />
                        </td>
                        <td style="width: 100px;">
                            购置类别:
                        </td>
                        <td>
                            <select name="ddlGouZhiLeiBie" id="ddlGouZhiLeiBie" style="width:161px;">
	<option value="新购">新购</option>
	<option value="19b81da2-7200-499e-ac6b-bedb76e5d623">企业购车</option>
	<option value="b8f84288-a6a7-4909-83a0-8b3dcc807177">车辆批发</option>
	<option value="1d2b9a80-d461-454c-b827-683356d0aaf9">个人购车</option>
	<option value="d79223b8-5019-4549-b423-0745983172b3">政府采购</option>
	<option value="df9bf4f4-7926-4b54-9ded-2f88335ec01c">其他</option>
	<option value=""></option>

</select>
                        </td>
                        <td style="width: 100px;">
                            证件号码:
                        </td>
                        <td>
                            <input name="txtCustZhengJianHao" type="text" value="360429198411162358" id="txtCustZhengJianHao" style="width:160px;" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;">
                            名 义 人
                        </td>
                        <td style="width: 100px;">
                            移动电话:
                        </td>
                        <td>
                            <input name="txtCustMobile" type="text" value="18720286462" id="txtCustMobile" style="width:159px;" />
                        </td>
                        <td style="width: 100px;">
                            固定电话:
                        </td>
                        <td>
                            <input name="txtCustTel" type="text" value="18720286462" id="txtCustTel" style="width:157px;" />
                        </td>
                        <td style="width: 100px;">
                            原有车型:
                        </td>
                        <td>
                            <input name="txtCustOldCheXing" type="text" id="txtCustOldCheXing" style="width:160px;" />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="right-dt-a">
            </td>
        </tr>
        <tr>
            <td class="bottom-dt-a">
            </td>
            <td class="bottom-dt-b">
            </td>
            <td class="bottom-dt-c">
            </td>
        </tr>
        <tr>
            <td class="top-dt-a">
            </td>
            <td class="top-dt-b">
            </td>
            <td class="top-dt-c">
            </td>
        </tr>
        <tr>
            <td class="left-dt-a">
            </td>
            <td>
                <table cellpadding="0" cellspacing="0" class="conTaable" border="0">
                    <tr>
                        <td rowspan="2" style="width: 100px;">
                            <img alt="" src="../image/SaleOrder/chezhuinfo.png" style="width: 50px; height: 48px" />
                        </td>
                        <td style="width: 100px;">
                            经 办 人:
                        </td>
                        <td>
                            <input name="txtJBRenName" type="text" value="徐俊" id="txtJBRenName" style="width:160px;" />
                        </td>
                        <td style="width: 100px;">
                            性 别:
                        </td>
                        <td>
                            <input name="txtJBRenSex" type="text" value="男" id="txtJBRenSex" style="width:160px;" />
                        </td>
                        <td style="width: 100px;">
                            电子邮箱:
                        </td>
                        <td>
                            
                            <input name="txtJBRenEMail" type="text" id="txtJBRenEMail" style="width:160px;" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;">
                            联系地址:
                        </td>
                        <td colspan="3" style="">
                            <div>
                                <input name="txtJBRenAddress" type="text" value="湖口县文桥乡坝桥村八组010号" id="txtJBRenAddress" style="width:424px;" />
                            </div>
                        </td>
                        <td style="width: 100px;">
                            证件号码:
                        </td>
                        <td>
                            <input name="txtJBRenZhengJianHao" type="text" value="360429198411162358" id="txtJBRenZhengJianHao" style="width:160px;" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;">
                            经 办 人
                        </td>
                        <td style="width: 100px;">
                            移动电话:
                        </td>
                        <td>
                            <input name="txtJBRenMobile" type="text" value="18720286462" id="txtJBRenMobile" style="width:160px;" />
                        </td>
                        <td style="width: 100px;">
                            固定电话:
                        </td>
                        <td>
                            <input name="txtJBRenTel" type="text" value="18720286462" id="txtJBRenTel" style="width:160px;" />
                        </td>
                        <td style="width: 100px;">
                            出生日期:
                        </td>
                        <td>
                            <input name="txtJBRenBirthday" type="text" value="1984-11-16 0:00:00" id="txtJBRenBirthday" class="easyui-datebox" style="width:164px;" />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="right-dt-a">
            </td>
        </tr>
        <tr>
            <td class="bottom-dt-a">
            </td>
            <td class="bottom-dt-b">
            </td>
            <td class="bottom-dt-c">
            </td>
        </tr>
        <tr>
            <td class="top-dt-a">
            </td>
            <td class="top-dt-b">
            </td>
            <td class="top-dt-c">
            </td>
        </tr>
        <tr>
            <td class="left-dt-a">
            </td>
            <td>
                <table class="conTaable" id="tbCarInfo">
                    <tr>
                        <td rowspan="3" style="width: 100px;">
                            <img alt="" src="../image/SaleOrder/carInfo.png" style="width: 40px; height: 40px" />
                        </td>
                        <td style="width: 100px;">
                            车 架 号:
                        </td>
                        <td>
                            <input name="txtCarCheJiaHao" type="text" value="LFMA7E2A4E0052433" readonly="readonly" id="txtCarCheJiaHao" style="width:160px;" />
                        </td>
                        <td style="width: 100px;">
                            发动机号:
                        </td>
                        <td>
                            <input name="txtCarFaDongJiHao" type="text" value="J052298" readonly="readonly" id="txtCarFaDongJiHao" style="width:160px;" />
                        </td>
                        <td style="width: 100px;">
                            变速箱号:
                        </td>
                        <td>
                            <input name="txtCarBianSuXianHao" type="text" id="txtCarBianSuXianHao" style="width:160px;" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;">
                            车 系:
                        </td>
                        <td>
                            <input name="txtCarCheXi" type="text" value="新威驰" readonly="readonly" id="txtCarCheXi" style="width:160px;" />
                        </td>
                        <td style="width: 100px;">
                            车 型:
                        </td>
                        <td>
                            <input name="txtCarCheXing" type="text" value="1.3型尚版" readonly="readonly" id="txtCarCheXing" style="width:160px;" />
                        </td>
                        <td style="width: 100px;">
                            车辆编号:
                        </td>
                        <td>
                            <input name="txtCarCheLiangBianHao" type="text" value="4G40" readonly="readonly" id="txtCarCheLiangBianHao" style="width:160px;" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;">
                            厂 牌:
                        </td>
                        <td>
                            <input name="txtCarChangPai" type="text" value="一汽丰田" readonly="readonly" id="txtCarChangPai" style="width:160px;" />
                        </td>
                        <td style="width: 100px;">
                            车型代码:
                        </td>
                        <td>
                            <input name="txtCarCheXingDaiMa" type="text" value="W3A2/W3AB" readonly="readonly" id="txtCarCheXingDaiMa" style="width:160px;" />
                        </td>
                        <td style="width: 100px;">
                            车辆类别:
                        </td>
                        <td>
                            <input name="txtCarSort" type="text" value="国产新车" id="txtCarSort" style="width:160px;" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;">
                            车辆信息
                        </td>
                        <td style="width: 100px;">
                            S&nbsp; F&nbsp; X:
                        </td>
                        <td>
                            <input name="txtCarSFX" type="text" value="W3A2/W3AB" readonly="readonly" id="txtCarSFX" style="width:160px;" />
                        </td>
                        <td style="width: 100px;">
                            车身颜色:
                        </td>
                        <td>
                            <input name="txtCarColor" type="text" value="紫色" readonly="readonly" id="txtCarColor" style="width:160px;" />
                        </td>
                        <td style="width: 100px;">
                            内饰颜色:
                        </td>
                        <td>
                            <input name="txtCarNeiShi" type="text" readonly="readonly" id="txtCarNeiShi" style="width:160px;" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;">
                        </td>
                        <td style="width: 100px;">
                            车 牌 号:
                        </td>
                        <td>
                            <input name="txtCarChePaiHao" type="text" id="txtCarChePaiHao" onblur="GetPaiZhaoDate()" style="width:160px;" />
                        </td>
                        <td style="width: 100px;">
                            钥匙编号:
                        </td>
                        <td>
                            <input name="txtCarYaoShiHao" type="text" value="4G40" readonly="readonly" id="txtCarYaoShiHao" style="width:160px;" />
                        </td>
                        <td style="width: 100px;">
                            特别配置:
                        </td>
                        <td>
                            <input name="txtCarTeBiePeiZhi" type="text" id="txtCarTeBiePeiZhi" style="width:160px;" />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="right-dt-a">
            </td>
        </tr>
        <tr>
            <td class="bottom-dt-a">
            </td>
            <td class="bottom-dt-b">
            </td>
            <td class="bottom-dt-c">
            </td>
        </tr>
        <tr>
            <td class="top-dt-a">
            </td>
            <td class="top-dt-b">
            </td>
            <td class="top-dt-c">
            </td>
        </tr>
        <tr>
            <td class="left-dt-a">
            </td>
            <td>
                <table class="conTaable" border="0" cellpadding="0" cellspacing="0" id="tbElseInfo">
                    <tr>
                        <td rowspan="3" style="width: 100px;">
                            <img alt="" src="../image/SaleOrder/beizhu.png" style="width: 40px; height: 40px" />
                        </td>
                        <td style="width: 100px;">
                            定单编号:
                        </td>
                        <td>
                            <input name="txtCarOrderNum" type="text" value="XSD201501050-1" readonly="readonly" id="txtCarOrderNum" style="width:160px;" />
                        </td>
                        <td style="width: 100px;">
                            定单日期:
                        </td>
                        <td>
                            <input name="txtCarOrderDate" type="text" value="2015-1-8 16:28:31" readonly="readonly" id="txtCarOrderDate" style="width:160px;" />
                        </td>
                        <td style="width: 100px;">
                            配车日期:
                        </td>
                        <td>
                            <input name="txtCarPeiCheDate" type="text" value="2015-1-8 16:53:02" readonly="readonly" id="txtCarPeiCheDate" style="width:160px;" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;">
                            开票日期:
                        </td>
                        <td>
                            <input name="txtCarKaiPiaoDate" type="text" value="2015-1-9 0:00:00" readonly="readonly" id="txtCarKaiPiaoDate" style="width:160px;" />
                        </td>
                        <td style="width: 100px;">
                            开票类型:
                        </td>
                        <td>
                            <select name="ddlCarKaiPiaoSort" id="ddlCarKaiPiaoSort" style="width:164px;">
	<option value="机动车统一发票">机动车统一发票</option>
	<option value="fea9383c-2308-467a-b312-ade2884a6ba7">车辆发票</option>
	<option value="87857a1c-9acc-4830-a840-5bb8f4ee5edd">机动车发票</option>
	<option value=""></option>

</select>
                        </td>
                        <td style="width: 100px;">
                            付款方式:
                        </td>
                        <td>
                            <select name="ddlCarFuKuanFangShi" id="ddlCarFuKuanFangShi" style="width:164px;">
	<option value=""></option>
	<option value="一次性付款">一次性付款</option>
	<option value="财政付款">财政付款</option>
	<option value="按揭付款">按揭付款</option>
	<option value="分期付款">分期付款</option>

</select>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;">
                            牌证受理:
                        </td>
                        <td>
                            <input name="txtCarPaiZhengDate" type="text" id="txtCarPaiZhengDate" class="easyui-datebox" style="width:164px;" />
                        </td>
                        <td style="width: 100px;">
                            牌证委托:
                        </td>
                        <td>
                            <select name="ddlPaiZhengWeiTuo" id="ddlPaiZhengWeiTuo" onchange="PaiZhengWeiTuo()" style="width:164px;">
	<option value=""></option>
	<option value="代选号牌">代选号牌</option>
	<option value="自选号牌">自选号牌</option>
	<option value="自行上牌">自行上牌</option>

</select>
                        </td>
                        <td style="width: 100px;">
                            牌照日期:
                        </td>
                        <td>
                            <input name="txtCarPaiZhaoDate" type="text" id="txtCarPaiZhaoDate" style="width:160px;" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;">
                            业务信息
                        </td>
                        <td style="width: 100px;">
                            好友姓名:
                        </td>
                        <td>
                            <input name="txtHaoYouName" type="text" id="txtHaoYouName" style="width:160px;" />
                        </td>
                        <td style="width: 100px;">
                            销售顾问:
                        </td>
                        <td>
                            <select name="ddlCarSalor" onchange="javascript:setTimeout('__doPostBack(\'ddlCarSalor\',\'\')', 0)" id="ddlCarSalor" style="width:164px;">
	<option value="5c9d391f-c6ee-4133-8329-346bb9149714">邹宜芳</option>
	<option value="0bf8106b-1e50-46f0-b792-decb2fa9051c">测试</option>
	<option value="978d068c-70bb-4c57-92a7-082b4623d6bb">胡君</option>
	<option value="7a0c6171-36a4-4a26-9f66-293417b17b52">李建</option>
	<option value="ae8bdf70-e985-4794-b251-6e0ebb85237c">罗小娟</option>
	<option value="94ee58fc-c4c3-4d27-b7e6-011d160ae403">詹欢</option>
	<option value="3174ce9a-6001-47a3-91ad-5eae80880482">钟仕城</option>
	<option value="fa2753bd-986c-4f85-b5f7-8933f72c3a3a">张甜甜</option>
	<option value="fd364f7b-4aaf-4d56-9e40-ee0ef5695742">周宇宾</option>
	<option value="fb5e9090-e6a2-4a89-8ea4-37e91a56c0b0">陈龙志</option>
	<option value="510bf7cb-e579-4a4b-8e8c-2168978cb2b8">胡梦云</option>
	<option value="05010206-ed73-4723-8d5c-ce734c8993f6">柯科</option>
	<option value="2075d89d-a4ce-4e69-b194-10d5c2d954da">王晟</option>
	<option value="23a7b774-3ff6-4fad-a36d-7cd1a4753e98">熊超南</option>
	<option value="a3cf7c3c-f22b-467c-96a6-ea212a1fbb03">余睿洁</option>
	<option value="93f7081a-3944-435a-9f3c-15678e2b400f">高磊</option>
	<option value="60a4a499-1b68-4ba8-a0a7-5e65acb14fc3">123</option>
	<option selected="selected" value="a6f78d20-d3cb-4714-a983-0381f9697faa">刘剑</option>
	<option value="23010595-7f63-44cb-8fd8-1d926f6005c8">刘星辰</option>
	<option value="5488b750-111c-4af1-8a14-ff83ab7d689e">史丽萍</option>
	<option value="01cedb2a-25f4-4aca-8a25-c056eb79bbf7">徐建英</option>
	<option value="636989e1-20d4-4ce5-86e6-a50b46bba752">肖伟</option>
	<option value="f41a463f-6353-40b1-8649-4bb9f2f33d32">余乐平</option>
	<option value="2c4e9526-fc6c-4b9c-8c02-79a69f3c264c">袁烁</option>
	<option value="527917ed-67fe-4083-b046-2691402fb5b6">余思思</option>
	<option value="0fc318ac-164b-4c2d-97ba-8f7a986225ca">邹国旺</option>

</select>
                        </td>
                        <td style="width: 100px;">
                            科 组:
                        </td>
                        <td>
                            <input name="txtSaleDepartment" type="text" value="九江丰田三拓展" readonly="readonly" id="txtSaleDepartment" style="width:160px;" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;">
                        </td>
                        <td style="width: 100px;">
                            备 注:
                        </td>
                        <td colspan="3" style="width: auto;">
                            <div>
                                <input name="txtRemark" type="text" value="丰田金融政策9000，手续费含1000手续费和500车价，" id="txtRemark" style="width:424px;" /></div>
                        </td>
                        <td style="width: 100px;">
                            核讫日期:
                        </td>
                        <td>
                            <input name="txtOrderHeQiDate" type="text" readonly="readonly" id="txtOrderHeQiDate" style="width:160px;" />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="right-dt-a">
            </td>
        </tr>
        <tr>
            <td class="bottom-dt-a">
            </td>
            <td class="bottom-dt-b">
            </td>
            <td class="bottom-dt-c">
            </td>
        </tr>
        <tr>
            <td style="height: 5px;">
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
    </table>
    <script language="javascript" type="text/javascript">
        function CheckEMail() {
            var temp1 = document.getElementById("txtCustEMail");
            //对电子邮件的验证
            var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
            if (!myreg.test(temp1.value) && temp1.value != "") {
                alert('请输入有效的车主E_mail！');
                return false;
            }
            var temp2 = document.getElementById("txtJBRenEMail");
            //对电子邮件的验证
            var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
            if (!myreg.test(temp2.value) && temp2.value != "") {
                alert('请输入有效的经办人E_mail！');
                return false;
            }
        }

        function DelConfirm() {
            if (confirm('确定删除记录并重新配车吗？')) {
                if (document.getElementById("hidOrderJingPinStatus").value == "1") {
                    alert("该精品单已出库，不允许删除配车单！");
                    return false;
                }
                else
                    return true;
            }
            else
                return false;
        }


        $(document).ready(function () {
            document.getElementById("txtCarPaiZhaoDate").readOnly = true;
            if (document.getElementById("txtOrderHeQiDate").value != "") {

                // document.getElementById("lnkbtnConfirm").disabled = true;
                //                document.getElementById("lnkbtnSave").disabled = true;
                //                $("#tbCustInfo").each(function(ctrls) {
                //                    $(ctrls).find("input").attr("disabled", true);
                //                });
                var trCust = $("#tbCustInfo tr");
                var trCar = $("#tbCarInfo tr");
                var trElse = $("#tbElseInfo tr");
                SetDisable(trCust);
                SetDisable(trCar);
                SetDisable(trElse);
            }
        });

        function SetDisable(trInfo) {
            for (var i = 0; i < 5; i++) {
                trInfo.eq(i).find("input").attr("readonly", true);
                trInfo.eq(i).find("select").attr("disabled", "disabled");
            }
        }

        function ChangeSalor() {
            document.getElementById("txtCarSalor").style["display"] = "none";
            document.getElementById("ddlCarSalor").style["display"] = "block";
            $("#lnkbtnChangeSalor span").text("保存");
            return false;
        }        
    </script>
    <script language="javascript" type="text/javascript">

        var heightForIE = 0;
        if (navigator.userAgent.indexOf("MSIE 6.0") > 0)
            heightForIE = 50;

        function PaiZhengWeiTuo() {
            if ($('#hidGouZhiShui').val() != "0.00"&& $('#ddlPaiZhengWeiTuo').val() == "自行上牌") {
                alert('当前客户已买购置税，不可选择“自行上牌”！');
                $('#ddlPaiZhengWeiTuo').val("代选号牌");
            }
        }

        function HeQiConfrim() {
            if (confirm('资料核迄后将不能修改，确定？')) {
                if ($('#ddlPaiZhengWeiTuo').val() != "自行上牌") {
                    if ($('#hidOrderNaShuiDate').val() == "" || $('#hidOrderClZCDate').val() == "") {
                        alert('当前定单的牌证委托方式非“自行上牌”，且无“纳税申报”或“车辆注册”');
                        return false;
                    }
                    if ($('#txtCarPaiZhengDate').val() == "") {
                        alert("当前定单无牌证受理日期！");
                        return false;
                    }
                    if ($('#txtCarChePaiHao').val() == "") {
                        alert("当前定单无车牌号码！");
                        return false;
                    }
                    return true;
                }

                var strOrderId = $('#hidOrderID').val();
                
            }
            else
                return false;
        }

        function GetPaiZhaoDate() {
            var strChePaiHao = document.getElementById("txtCarChePaiHao").value;
            var strYuanPaiHao = document.getElementById("hidChePaiHao").value;
            //            alert(strChePaiHao);
            //            alert(strYuanPaiHao);
            var mydate = new Date();
            if (strChePaiHao != strYuanPaiHao)
                document.getElementById("txtCarPaiZhaoDate").value = mydate.getFullYear() + "-" + (mydate.getMonth() + 1) + "-" + mydate.getDate();
        }
        //打印上牌委托单据
        function ShowCarShangPaiWeiTuoPrint() {
            var OrderID = document.getElementById("hidOrderID").value;
            if (OrderID == "") {
                alert("请选择定单!");
                return false;
            }
            var href = "../SaleOrder_Manage/print/saleOrderShangPaiWeiTuoPrint.aspx?orderId=" + OrderID;

            window.open(href, "上牌委托单据", "", "");
            return false;
        }

        //精品明细
        function ShowCarJingPin() {
            var OrderID = document.getElementById("hidOrderID").value;
            if (OrderID == "") {
                alert("请选择定单!");
                return false;
            }
            //            var CarJingPinJingE = document.getElementById("txtCostYuanChangJP").value;
            var href = "../SaleOrder_Manage/OrderJingPinDetail.aspx?OrderId=" + OrderID;
            var SizeZ = "dialogWidth:900px;dialogHeight:" + (560 + heightForIE) + "px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;";
            var returnValue = window.showModalDialog(href, '', SizeZ);
            return false;
        }

        //获取定单ID
        function GetOrderID() {
            var OrderID = document.getElementById("hidOrderID").value;
            if (OrderID == "") {
                alert("请选择定单ID！");
                return false;
            }
            else
                return OrderID;
        }

        //定车单按钮
        function ShowOrderInfo() {
            var href = "OrderInfoQuery.aspx?Order_Status=40";
            var SizeZ = 'dialogWidth:855px;dialogHeight:530px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;';
            var returnValue = window.showModalDialog(href, '', SizeZ);

           // document.getElementById("hidOrderID").value = returnValue == null ? "" : returnValue;

            if (returnValue != null) {
                document.getElementById("hidOrderID").value = returnValue == null ? "" : returnValue;
            }
            return true;
        }

        //配车按钮
        function ShowPeiChe_Q() {

            var valCheXingDaiMa = document.getElementById("txtCarCheXingDaiMa").value;
            var valColor = document.getElementById("txtCarColor").value;
            if (valCheXingDaiMa == "" || valColor == "") {
                alert("车型代码和车身颜色不能为空!");
                return false;
            }

            var strOrderId = document.getElementById("hidOrderID").value;
            valCheXingDaiMa = encodeURI(valCheXingDaiMa);
            valCheXingDaiMa = valCheXingDaiMa.replace("+", "%2B");
            var valCompId = $('#hidCompId').val();
            valColor = encodeURI(valColor);
            var href = "../SaleOrder_Manage/CarStockQuery.aspx?CheXingDaiMa=" + valCheXingDaiMa + "&Color=" + valColor + "&CarStatus=4&OrderID=" + strOrderId + "&CompId=" + valCompId;
            var SizeZ = 'dialogWidth:760px;dialogHeight:540px;';
            var returnValue = window.showModalDialog(href,window, SizeZ);

            if (returnValue != null && returnValue.Car_ID != "") {

                document.getElementById("hidCarId").value = returnValue.Car_ID;
                $('#hidYZOrderId').val(returnValue.YZOrderId);
                //                alert($('#hidYZOrderId').val());
                return true;
            }
            return false;
        }

        //发票按钮
        function ShowFaPiaoDetail() {
            var OrderID = GetOrderID();
            var href = "../FinancialManage/JiDongCheFaPiaoDetail.aspx?OrderID=" + OrderID;
            var SizeZ = "dialogWidth:520px;dialogHeight:" + (580 + heightForIE) + "px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;";
            var returnValue = window.showModalDialog(href, '', SizeZ);
            return false;
        }

        //保修登记
        function ShouBaoXiuDengJi() {
            var OrderID = GetOrderID();
            var href = "OrderBaoXiuDengJi.aspx?OrderID=" + OrderID;
            var SizeZ = "dialogWidth:640px;dialogHeight:" + (450 + heightForIE) + "px;center:yes;edge:sunken;help:no;resizable:no;scroll:auto;status:no;";
            var returnValue = window.showModalDialog(href, '', SizeZ);
            if (returnValue != undefined && returnValue.length > 0)
                document.getElementById("hidOrderStatus").value = "";
            return false;
        }

        //保险登记
        function ShowBaoXianDengJi() {
            var OrderID = GetOrderID();
            var href = "OrderBaoXianDengJiDetail.aspx?OrderGuid=" + OrderID;
            var SizeZ = "dialogWidth:400px;dialogHeight:" + (400 + heightForIE) + "px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;";
            var returnValue = window.showModalDialog(href, '', SizeZ);
            if (returnValue != undefined && returnValue.length > 0)
                document.getElementById("hidOrderStatus").value = "";
            return false;
        }

        //注册登记
        function ShowRegister() {
            var OrderID = GetOrderID();
            var href = "OrderCarRegFrame.aspx?OrderID=" + OrderID;
            var SizeZ = "dialogWidth:1000px;dialogHeight:" + (heightForIE + 700) + "px;center:yes;edge:sunken;help:no;resizable:no;status:no;";
            var returnValue = window.showModalDialog(href, '', SizeZ);
            if (returnValue != undefined && returnValue.length > 0)
                document.getElementById("hidOrderStatus").value = "";
            return false;
        }

        //提车单
        function ShowTiCheDan() {
            var OrderID = GetOrderID();
            var href = "OrderTiCheDan.aspx?OrderID=" + OrderID;
            var SizeZ = "dialogWidth:1000px;dialogHeight:" + (700 + heightForIE) + "px;center:yes;help:no;resizable:yes;status:no;";
            var returnValue = window.showModalDialog(href, '', SizeZ);
            if (returnValue != undefined && returnValue.length > 0) {
                //                document.getElementById("hidOrderStatus").value = "";
                if (confirm("是否打印交车表？"))
                    ShowJiaoChe();
            }
            else
                return false;
        }

        //交车表
        function ShowJiaoChe() {
            var OrderID = GetOrderID();
            var href = "../SaleOrder_Manage/OrderJiaoCheDetail.aspx?OrderID=" + OrderID;
            var SizeZ = "dialogWidth:1000px;dialogHeight:700px;center:yes;edge:sunken;help:no;resizable:no;status:no;";
            var returnValue = window.showModalDialog(href, '', SizeZ);
            // var returnValue = window.open(href, '', SizeZ);
            if (returnValue != undefined && returnValue.length > 0)
                document.getElementById("hidOrderStatus").value = "";
            return false;
        }

        //用户卡
        function ShowCustDetail() {
            var OrderID = GetOrderID();
            if (OrderID == false)
                return false;
            var href = "../SaleBefore_Manage/Cust_ManageCardDetail.aspx?OrderID=" + OrderID;
            var SizeZ = "dialogWidth:850px;dialogHeight:" + (680 + heightForIE) + "px;center:yes;edge:sunken;help:no;resizable:no;status:no;";
            var returnValue = window.showModalDialog(href, '', SizeZ);
            if (returnValue != undefined && returnValue.length > 0)
                document.getElementById("hidOrderStatus").value = "";
            return false;
        }

        function CloseWindow() {
            window.opener = null;
            window.open("", "_self");
            window.returnValue = undefined;
            window.close();
        }


        //同步精品系统客户资料
        $(document).ready(function () {
            var str = location.href;
            var href = "";
            if (str.indexOf("192.168.8.118") > -1) {
                href = "http://192.168.8.16:8081/tmpServer/default2.aspx";
            }
            if (str.indexOf("192.168.8.10") > -1) {
                href = "http://192.168.8.15:81/tmpServer/default2.aspx";
            }
            if (str.indexOf("172.17") > -1) {
                href = "http://192.17.61.244:81/tmpServer/default2.aspx";
            }
            if (str.indexOf("183.") > -1) {
                href = "http://183.62.156.183:81/tmpServer/default2.aspx";
            }

            document.getElementById("iFrameYongPinServer").src = href;

        });
        
    </script>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="C7118769" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWeQKgtdCaBgLD+eCoBwLBreDeCgL5qtXYBgLUyo2VCAKt7q3LAgKPo/TjAwKqvd6MBgLZvoCIAgLg95uODwLu2LKODQLjsrLRBgLjnZroBgK/n6DcCALLgaTVDALAnulwAqCjxa8MAv304a0DAqjWjMYFAvDWh8gGAvvrsMIDAoLowKgNAuHx04cPAuqN8cwLAtKTl/IFAp7p28QDAtuD4pUEAqPU+qEMArXqlIMHAr2uwbABAvGZ+cINAqCdhpcHAq7gl8kMAraetaUPAu731skHAoHykeYJAtGI8+sOApyG+FwC5Z6j6wMCwqe9fgKu24tJApnw+s8FAoCD8ssOAoyiz9kFAp+TrJQJAqbqzM4KAsCexe8NApmK4dkKAsq/y78MAvTg6YYCAsOC0wMCkcLdkgkCreXxqAsC/LuQ4w4C26iV3gYC25+KmwIC98DNjAUCmtDb0QkC0d37lAkCqK+mzQUC1fz6YgKV8KngAQLlvKX5DAKBi6nPBALGruTqCwKwrsiDAQLsj9ehDALQgpCoDwLP1LHjBwLUwoLkAwKI9sqXBAKxm7ypCwLkjsq2CgLM1+jlCAL17LjFBgKA4pG7AQLc2brXDQKMztLSCwLz9OWgDALmy561BwLa5ZmbBALGhqeZCgKvwprvCgLa4KKICgKkpIyWBwLmg4mrCAKykrCRDQK7gL+RDQLo3pjKAQLDj9k1AtjovMEEAqO215sFAuG54IoPAva2l9EMAvnmj9wDAuuRwuQHAsi69ewGApWX2M8CArju4M0BApTl5JQMAqrNgKYDAszRhsEBAtvmxvMNAv3siK8EApuMja8MAoHWvkECu4+i5gICjZiy8AoCxo2TjgMCkpavvw0CztK42g8CqenF0wkCgebwiwwC5tbR8wQCk6iCvg8C9ZC8ugYCmIbpAQKi2LbYAQLAraW8AQKZvIvlBALl7NSEAWQBD/kM1TBDuA5vGi1wIjeRqwuL" />
</div></form>
    <iframe id="iFrameYongPinServer" src="" style="display: none;"></iframe>
</body>
</html>