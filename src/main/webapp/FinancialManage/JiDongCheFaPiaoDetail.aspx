
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	发票明细
</title>
    <base target="_self" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=ea3f7645249548b0b38c79aef7591385" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=ea3f7645249548b0b38c79aef7591385" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=ea3f7645249548b0b38c79aef7591385" type="text/javascript"></script><link href="../style/common.css?v=ea3f7645249548b0b38c79aef7591385" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<style type="text/css">
    html, body
    {
        overflow: hidden;
    }
    input
    {
       
        line-height: 14px;
    }
    select
    {
      
        line-height: 18px;
    }
    .td_Left
    {
        width: 110px;
        text-align: center;
    }
    .td_right
    {
        width: 140px;
        text-align: left;
    }
    .cssTxt
    {
        width: 120px;
    }
    .cssTxtReadOnly
    {
        width: 120px;
        background-color: Silver;
    }
    .tbDetailForm
    {
        width: 500px;
    }
    .centerBar
    {
        width: 500px;
        border: 1px solid #eee;
        margin: 5px;
    }
    .centerBar div
    {
        background: #eee;
    }
</style>
<script language="javascript" type="text/javascript">
    $(function () {
        $("#txtFaPiaoDaXie").click(function () {

            piliskys();
        });
    });


    function CloseWindow() {
        window.opener = null;
        window.open("", "_self");
        window.returnValue = undefined;
        window.close();
        return false;
    }

    $(document).ready(function () {
       var txtFaPiaoDate = document.getElementById("txtFaPiaoDate")
        if (txtFaPiaoDate!=null) {
            txtFaPiaoDate.readOnly = true;
        }
        var txtKaiPiaoRen = document.getElementById("txtKaiPiaoRen");
        if (txtKaiPiaoRen != null) {
            txtKaiPiaoRen.readOnly = true;
        }
    });

    function ABCDEFG() {
        alert("好友：" + document.getElementById("hidIntro").value + "置换：" + document.getElementById("hidZhiHuan").value);
        //            document.getElementById("lnkbtnSave").click();
        //            document.getElementById("lnkbtnSave").click();
        //            document.getElementById("lnkbtnSave").click();
    }

    function CheckKaiPiao() {
       if (document.getElementById("hidIsWangKuan").value < 0) {
          // alert("已交金额<车身价格+购置税");
           //return false;
        }
        with (document) {
            if (getElementById("txtJinKouZhengShuHao").value == "" && getElementById("txtHeGeZhengHao").value == "") {
                alert("进口证书号和合格证号不能同时为空！");
                return false;
            }
            if ($("#txtFaPiaoDate").datebox('getValue')== "" ) {
                alert("发票日期不能为空！");
                return false;
            }
        }
        
        $('#lnkbtnSave').attr("disable", true);
        return true;
    }
</script>
<body>
    <form name="form1" method="post" action="JiDongCheFaPiaoDetail.aspx?OrderID=406dcff8-3f9e-4d1c-aae1-d3d0e29f8d59" id="form1" style="padding: 0px; margin: 0px">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTY4NjQxODQzMQ9kFgICAw9kFhACGw8QDxYGHg5EYXRhVmFsdWVGaWVsZAUBZB4NRGF0YVRleHRGaWVsZAUBdh4LXyFEYXRhQm91bmRnZBAVBBXmnLrliqjovabnu5/kuIDlj5HnpagM6L2m6L6G5Y+R56WoD+acuuWKqOi9puWPkeelqAAVBBXmnLrliqjovabnu5/kuIDlj5HnpagkZmVhOTM4M2MtMjMwOC00NjdhLWIzMTItYWRlMjg4NGE2YmE3JDg3ODU3YTFjLTlhY2MtNDgzMC1hODQwLTViYjhmNGVlNWVkZAAUKwMEZ2dnZ2RkAikPDxYCHgRUZXh0BTDkuZ3msZ/mt7HkuJrkuLDnlLDmsb3ovabplIDllK7mnI3liqHmnInpmZDlhazlj7hkZAIrDw8WAh8DBTPmsZ/opb/nnIHkuZ3msZ/luILkuZ3nkZ7lpKfpgZPlm73pmYXmsb3ovabln47opb/kvqdkZAItDw8WAh8DBQwwNzkyLTg1MDIyMjJkZAIvDw8WAh8DZWRkAjEPDxYCHwMFFeW3peihjOWFq+mHjOa5luaUr+ihjGRkAjMPDxYCHwMFEzE1MDcyMDIwMDkyMDAwNjc5NzFkZAJJDw8WAh4HVmlzaWJsZWhkZGQt/7OVMb6Ik8LC6mZeCsTZW3QMrQ==" />
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


   
    <div>
       
        
            <div class="centerBar">
                <div>
                    车主信息
                </div>
                <table class="tbDetailForm">
                    <tr>
                        <td class="td_Left">
                            车主名称：
                        </td>
                        <td class="td_right">
                            <input name="txtCustName" type="text" value="尹秋平" id="txtCustName" class="cssTxtReadOnly" />
                        </td>
                        <td class="td_Left">
                            证件号码：
                        </td>
                        <td class="td_right">
                            <input name="txtCustZhengJianHao" type="text" value="360424197509182350" id="txtCustZhengJianHao" class="cssTxtReadOnly" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Left">
                            联 系人：
                        </td>
                        <td class="td_right">
                            <input name="txtJBRenName" type="text" value="尹秋平" id="txtJBRenName" class="cssTxtReadOnly" />
                        </td>
                        <td class="td_Left">
                            联系电话：
                        </td>
                        <td class="td_right">
                            <input name="txtJBRenMobile" type="text" value="13330036873" id="txtJBRenMobile" class="cssTxtReadOnly" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Left">
                            联系地址：
                        </td>
                        <td colspan="3" style="text-align: left;">
                            <input name="txtJBRenAddress" type="text" value="修水县渣津镇西堰村八组07号" id="txtJBRenAddress" class="cssTxtReadOnly" style="width:376px;" />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="centerBar">
                <div>
                    车辆信息
                </div>
                <table>
                    <tr>
                        <td class="td_Left">
                            车系：
                        </td>
                        <td class="td_right">
                            <input name="txtCheXi" type="text" value="新花冠" id="txtCheXi" class="cssTxtReadOnly" />
                        </td>
                        <td class="td_Left">
                            车型：
                        </td>
                        <td class="td_right">
                            <input name="txtCheXing" type="text" value="1.6卓越版" id="txtCheXing" class="cssTxtReadOnly" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Left">
                            发动机号：
                        </td>
                        <td class="td_right">
                            <input name="txtCheFaDongJiHao" type="text" value="F438205" id="txtCheFaDongJiHao" class="cssTxtReadOnly" />
                        </td>
                        <td class="td_Left">
                            车架号：
                        </td>
                        <td class="td_right">
                            <input name="txtCheJiaHao" type="text" value="LFMAP22C0E0655346" id="txtCheJiaHao" class="cssTxtReadOnly" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Left">
                            车辆编号：
                        </td>
                        <td class="td_right">
                            <input name="txtCheLiangBianHao" type="text" value="4Y46" id="txtCheLiangBianHao" class="cssTxtReadOnly" />
                        </td>
                        <td class="td_Left">
                            商检号：
                        </td>
                        <td class="td_right">
                            <input name="txtShanJianHao" type="text" id="txtShanJianHao" class="cssTxt" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Left">
                            进口证书号：
                        </td>
                        <td class="td_right">
                            <input name="txtJinKouZhengShuHao" type="text" id="txtJinKouZhengShuHao" class="cssTxt" />
                        </td>
                        <td class="td_Left">
                            合格证号：
                        </td>
                        <td class="td_right">
                            <input name="txtHeGeZhengHao" type="text" value="WAS121001044068" id="txtHeGeZhengHao" class="cssTxt" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Left">
                         
                        </td>
                        <td colspan="3" style="text-align: left;">
                          <div style="width:372px;height:1px; border-style:none; visibility:hidden"></div>
                           
                        </td>
                    </tr>
                </table>
            </div>
            <div class="centerBar">
                <div>
                    发票信息(<span style="color:Red; font-size:12px;">发票金额默认=车身价格+特别规格费</span>)
                </div>
                <table>
                    <tr>
                        <td class="td_Left">
                            发票类型：
                        </td>
                        <td class="td_right">
                            <select name="ddlKaiPiaoSort" id="ddlKaiPiaoSort" style="width:124px;">

	<option value="机动车统一发票">机动车统一发票</option>
	<option value="fea9383c-2308-467a-b312-ade2884a6ba7">车辆发票</option>
	<option value="87857a1c-9acc-4830-a840-5bb8f4ee5edd">机动车发票</option>
	<option value=""></option>

</select>
                        </td>
                        <td class="td_Left">
                            发票日期：
                        </td>
                        <td class="td_right">
                            <input name="txtFaPiaoDate" type="text" value="2015-1-11 0:00:00" id="txtFaPiaoDate" class=" easyui-datebox" title="发票日期" style="height:20px;width:124px;" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Left">
                            &nbsp;发票号码：
                        </td>
                        <td class="td_right">
                            <input name="txtFaPiaoHao" type="text" value="00550755" id="txtFaPiaoHao" class="cssTxt check-submit" validType="char" title="发票号" required="true" />
                        </td>
                        <td class="td_Left">
                            发票金额：
                        </td>
                        <td class="td_right">
                            <input name="txtFaPiaoJinE" type="text" value="90800.00" id="txtFaPiaoJinE" class="cssTxt check-submit" validType="float" title="发票金额" required="true" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Left">
                            开票人员：
                        </td>
                        <td class="td_right">
                            <input name="txtKaiPiaoRen" type="text" value="林岚" id="txtKaiPiaoRen" class="cssTxt" />
                        </td>
                        <td class="td_Left">
                            金额大写：
                        </td>
                        <td class="td_right">
                            <input name="txtFaPiaoDaXie" type="text" value="玖万零捌佰元整" id="txtFaPiaoDaXie" class="cssTxt" style="height:16px;" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Left">
                            发票备注：
                        </td>
                        <td colspan="3" style="text-align: left;">
                            <input name="txtFaPiaoRemark" type="text" value="尹秋平" id="txtFaPiaoRemark" style="width:376px;" />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="centerBar">
                <div>
                    公司信息
                </div>
                <table class="tbDetailForm">
                    <tr>
                        <td class="td_Left">
                            销货单位：
                        </td>
                        <td colspan="3" style="text-align: left;">
                            <input name="txtXiaoHuoDanWei" type="text" value="九江深业丰田汽车销售服务有限公司" readonly="readonly" id="txtXiaoHuoDanWei" style="width:376px;" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Left">
                            地 址：
                        </td>
                        <td colspan="3" style="text-align: left;">
                            <input name="txtCompanyAddress" type="text" value="江西省九江市九瑞大道国际汽车城西侧" readonly="readonly" id="txtCompanyAddress" style="width:376px;" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Left">
                            电 话：
                        </td>
                        <td class="td_right">
                            <input name="txtCompanyTel" type="text" value="0792-8502222" readonly="readonly" id="txtCompanyTel" class="cssTxt" />
                        </td>
                        <td class="td_Left">
                            纳税人识别号：
                        </td>
                        <td class="td_right">
                            <input name="txtZuZhiJiGouDaiMa" type="text" readonly="readonly" id="txtZuZhiJiGouDaiMa" class="cssTxt" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_Left">
                            开户银行：
                        </td>
                        <td class="td_right">
                            <input name="txtKaiHuYingHang" type="text" value="工行八里湖支行" readonly="readonly" id="txtKaiHuYingHang" class="cssTxt" />
                        </td>
                        <td class="td_Left">
                            账 号：
                        </td>
                        <td class="td_right">
                            <input name="txtCompanyZhangHao" type="text" value="1507202009200067971" readonly="readonly" id="txtCompanyZhangHao" class="cssTxt" />
                        </td>
                    </tr>
                </table>
            </div>
 <input name="hidCarID" type="hidden" id="hidCarID" />
            <input name="hidOrderID" type="hidden" id="hidOrderID" value="406dcff8-3f9e-4d1c-aae1-d3d0e29f8d59" />
            <input name="hidFaPiaoID" type="hidden" id="hidFaPiaoID" value="39E47C57-E495-45D3-8759-1D6077FB0565" />
            <input name="hidCheXingDaiMa" type="hidden" id="hidCheXingDaiMa" />
            <input name="hidCarColor" type="hidden" id="hidCarColor" />
            <input name="hidIntro" type="hidden" id="hidIntro" />
            <input name="hidZhiHuan" type="hidden" id="hidZhiHuan" />
            <input name="hidFaPiaoManageID" type="hidden" id="hidFaPiaoManageID" value="0D365CFF-76F4-4C87-A09E-FCE01ED44E50" />
        </div>
        <input name="hidIsWangKuan" type="hidden" id="hidIsWangKuan" value="0" />
        <div style="height: 40px; overflow: hidden">
            <div class="Toolbar">
                <table  align="right" cellpadding="2" cellspacing="2" width="100%">
                    <tr>
                        <td style="text-align: center;">
                           
                            <span id="lblHYUserID" style="color:Red;"></span>
                        </td>
                    
                        <td style="width: 80%; text-align: right;">
                            
                            <a onclick="return CloseWindow();" id="lnkbtnCancel" class="easyui-linkbutton" iconCls="icon-cancel" href="javascript:__doPostBack('lnkbtnCancel','')">取 消</a>
                        </td>
                        <td style="width: 5%;">
                            <input name="hidHadClick" type="hidden" id="hidHadClick" value="0" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
   
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="54D56D8D" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWKQKypeaTDQLxmfnCDQKfk6yUCQLKv8u/DAL8u5DjDgKRwt2SCQLWz/zOAgKW38iDBgKUxYjhDQL+8uS9DgKVi9bgCgLBhe+jBwL4pJ7zBgLEnbWDCgLm6ernCQK60sGLBQLqxamOAwKV/578BAKzn96PCQLE0fWUBQLr6Ly4AwKLxpztDQKvn7q9CAK0ic3WBQLu48uSDAKzxrLnDwKCqNTbDAL5gq38DQLhjbzZAwLNs9ijAgLUyo36DgL5qtXYBgKg0qLMBgKplpLZCQK/spLIDQKCsqz+BgKQ1IvyAwKRsZ2XCQKeytDAAgKDuN3pBAKnpoDSDKdljRD89r4b+U0JOyxk43CMrQTG" />
</div></form>
    <script language="javascript" type="text/javascript">
        function lnkbtnConfirms_click() {
            if ($('#hidHadClick').val() == "0") {
                return true;
            }
            else {
                alert("请勿重复点击！");
                return false;
            }
        }
        function piliskys() {
            var test1 = document.getElementById("txtFaPiaoJinE").value;
            if (isNaN(test1)) {
                alert("不是一个有效的数字，请重新输入！");
                return;
            }
            else creat();
        }

        function creat() {
            var test1 = document.getElementById("txtFaPiaoJinE").value;
            var money1 = new Number(test1);
            if (money1 > 1000000000) {
                alert("您输入的数字太大，重新输入！");
                return;
            }
            var monee = Math.round(money1 * 100).toString(10);
            var i, j;
            j = 0;
            var leng = monee.length;
            var monval = "";
            for (i = 0; i < leng; i++) {
                monval = monval + to_upper(monee.charAt(i)) + to_mon(leng - i - 1);
            }
            repace_acc(monval);
        }

        function to_upper(a) {
            switch (a) {
                case '0': return '零'; break;
                case '1': return '壹'; break;
                case '2': return '贰'; break;
                case '3': return '叁'; break;
                case '4': return '肆'; break;
                case '5': return '伍'; break;
                case '6': return '陆'; break;
                case '7': return '柒'; break;
                case '8': return '捌'; break;
                case '9': return '玖'; break;
                default: return '';
            }
        }

        function to_mon(a) {
            if (a > 10) {
                a = a - 8;
                return (to_mon(a));
            }
            switch (a) {
                case 0: return '分'; break;
                case 1: return '角'; break;
                case 2: return '元'; break;
                case 3: return '拾'; break;
                case 4: return '佰'; break;
                case 5: return '仟'; break;
                case 6: return '万'; break;
                case 7: return '拾'; break;
                case 8: return '佰'; break;
                case 9: return '仟'; break;
                case 10: return '亿'; break;
            }
        }

        function repace_acc(Money) {
            Money = Money.replace("零分", "");
            Money = Money.replace("零角", "零");
            var yy;
            var outmoney;
            outmoney = Money;
            yy = 0;
            while (true) {
                var lett = outmoney.length;
                outmoney = outmoney.replace("零元", "元");
                outmoney = outmoney.replace("零万", "万");
                outmoney = outmoney.replace("零亿", "亿");
                outmoney = outmoney.replace("零仟", "零");
                outmoney = outmoney.replace("零佰", "零");
                outmoney = outmoney.replace("零零", "零");
                outmoney = outmoney.replace("零拾", "零");
                outmoney = outmoney.replace("亿万", "亿零");
                outmoney = outmoney.replace("万仟", "万零");
                outmoney = outmoney.replace("仟佰", "仟零");
                yy = outmoney.length;
                if (yy == lett)
                    break;
            }
            yy = outmoney.length;
            if (outmoney.charAt(yy - 1) == '零') {
                outmoney = outmoney.substring(0, yy - 1);
            }
            yy = outmoney.length;
            if (outmoney.charAt(yy - 1) == '元') {
                outmoney = outmoney + '整';
            }
            //            alert(outmoney);
            document.getElementById("txtFaPiaoDaXie").value = outmoney;
        }
    </script>
</body>
</html>